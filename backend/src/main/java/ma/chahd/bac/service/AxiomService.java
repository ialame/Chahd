package ma.chahd.bac.service;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import ma.chahd.bac.domain.AxiomProfil;
import ma.chahd.bac.domain.Utilisateur;
import ma.chahd.bac.repository.AxiomProfilRepository;
import ma.chahd.bac.repository.MatiereRepository;
import ma.chahd.bac.repository.UtilisateurRepository;
import ma.chahd.bac.web.dto.AxiomChatRequest;
import ma.chahd.bac.web.dto.AxiomChatResponse;
import ma.chahd.bac.web.dto.AxiomMessage;
import ma.chahd.bac.web.dto.AxiomProfilDto;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestClient;
import org.springframework.web.server.ResponseStatusException;

import java.time.Instant;
import java.util.List;
import java.util.Locale;
import java.util.Map;

/**
 * Tuteur IA AXIOM : proxy vers l'API Anthropic (la clé reste côté serveur) + gestion
 * du profil de progression de l'élève. Le system prompt est nourri du profil réel et
 * de la matière (résolue depuis la filière de l'élève via Chahd).
 */
@Service
public class AxiomService {

    private static final String ANTHROPIC_URL = "https://api.anthropic.com/v1/messages";

    private final UtilisateurRepository utilisateurs;
    private final MatiereRepository matieres;
    private final AxiomProfilRepository profils;
    private final ObjectMapper json;
    private final RestClient http = RestClient.create();

    private final String apiKey;
    private final String model;
    private final int maxTokens;

    public AxiomService(UtilisateurRepository utilisateurs, MatiereRepository matieres,
                        AxiomProfilRepository profils, ObjectMapper json,
                        @Value("${anthropic.api-key:}") String apiKey,
                        @Value("${anthropic.model:claude-sonnet-4-6}") String model,
                        @Value("${anthropic.max-tokens:1000}") int maxTokens) {
        this.utilisateurs = utilisateurs;
        this.matieres = matieres;
        this.profils = profils;
        this.json = json;
        this.apiKey = apiKey;
        this.model = model;
        this.maxTokens = maxTokens;
    }

    /** Récupère (ou crée à la volée) le profil AXIOM de l'élève connecté. */
    public AxiomProfilDto profil(Long userId) {
        Utilisateur u = utilisateur(userId);
        return toDto(chargerOuCreer(userId, u), u);
    }

    /** Met à jour les champs éditables : matière travaillée et points forts/faibles. */
    public AxiomProfilDto majProfil(Long userId, AxiomProfilDto patch) {
        Utilisateur u = utilisateur(userId);
        AxiomProfil p = chargerOuCreer(userId, u);
        if (patch != null) {
            if (patch.matiere() != null) p.setMatiere(patch.matiere().isBlank() ? null : patch.matiere());
            if (patch.pointsForts() != null) p.setPointsForts(ecrireListe(patch.pointsForts()));
            if (patch.pointsFaibles() != null) p.setPointsFaibles(ecrireListe(patch.pointsFaibles()));
        }
        profils.save(p);
        return toDto(p, u);
    }

    /** Échange conversationnel : appelle Claude, met à jour la progression, renvoie la réponse. */
    public AxiomChatResponse chat(Long userId, AxiomChatRequest req) {
        if (apiKey == null || apiKey.isBlank()) {
            throw new ResponseStatusException(HttpStatus.SERVICE_UNAVAILABLE,
                    "AXIOM n'est pas encore configuré (clé API manquante).");
        }
        Utilisateur u = utilisateur(userId);
        AxiomProfil p = chargerOuCreer(userId, u);

        if (req.matiere() != null && !req.matiere().isBlank()) {
            p.setMatiere(req.matiere());
        }
        List<AxiomMessage> msgs = req.messages() == null ? List.of() : req.messages();
        // Une nouvelle session démarre au premier message utilisateur de l'échange.
        long nbUser = msgs.stream().filter(m -> "user".equals(m.role())).count();
        if (nbUser <= 1) p.setSessions(p.getSessions() + 1);

        String system = systemPrompt(p, u, matiereNom(p.getMatiere()), niveau(u));
        String reply = appelClaude(system, msgs);

        boolean isExercice = reply.contains("📝"); // 📝
        String low = reply.toLowerCase(Locale.ROOT);
        boolean isReussite = reply.contains("✅") || low.contains("bravo") || low.contains("exact"); // ✅
        if (isReussite) {
            // Lissage exponentiel vers 90 % à chaque réussite (comme le brief).
            p.setScore((int) Math.round(p.getScore() * 0.8 + 90 * 0.2));
        }
        p.setDerniereSession(Instant.now());
        profils.save(p);

        return new AxiomChatResponse(reply, isExercice, isReussite, toDto(p, u));
    }

    // ----------------------------------------------------------------- internes

    private String appelClaude(String system, List<AxiomMessage> msgs) {
        List<Map<String, String>> apiMsgs = msgs.stream()
                .filter(m -> m.content() != null && !m.content().isBlank())
                .map(m -> Map.of(
                        "role", "assistant".equals(m.role()) ? "assistant" : "user",
                        "content", m.content()))
                .toList();
        if (apiMsgs.isEmpty()) {
            throw new ResponseStatusException(HttpStatus.BAD_REQUEST, "Message vide.");
        }
        Map<String, Object> body = Map.of(
                "model", model,
                "max_tokens", maxTokens,
                "system", system,
                "messages", apiMsgs);
        try {
            String raw = http.post()
                    .uri(ANTHROPIC_URL)
                    .header("x-api-key", apiKey)
                    .header("anthropic-version", "2023-06-01")
                    .contentType(MediaType.APPLICATION_JSON)
                    .body(body)
                    .retrieve()
                    .body(String.class);
            JsonNode root = json.readTree(raw);
            StringBuilder sb = new StringBuilder();
            for (JsonNode block : root.path("content")) {
                if ("text".equals(block.path("type").asText())) {
                    sb.append(block.path("text").asText());
                }
            }
            String text = sb.toString().trim();
            if (text.isEmpty()) {
                throw new ResponseStatusException(HttpStatus.BAD_GATEWAY, "Réponse vide d'AXIOM.");
            }
            return text;
        } catch (ResponseStatusException e) {
            throw e;
        } catch (Exception e) {
            throw new ResponseStatusException(HttpStatus.BAD_GATEWAY, "AXIOM est momentanément indisponible.");
        }
    }

    private String systemPrompt(AxiomProfil p, Utilisateur u, String matiereNom, String niveau) {
        List<String> forts = lireListe(p.getPointsForts());
        List<String> faibles = lireListe(p.getPointsFaibles());
        return """
                Tu es AXIOM, un tuteur IA bienveillant, précis et engagé, intégré à Chahd, \
                une plateforme marocaine de révision du Baccalauréat. Tu donnes un cours particulier à %s.

                PROFIL DE L'ÉLÈVE :
                - Niveau : %s (Baccalauréat marocain, programme officiel)
                - Matière travaillée : %s
                - Sessions déjà effectuées avec toi : %d
                - Score de maîtrise estimé : %d%%
                - Points forts : %s
                - Points à travailler : %s

                RÈGLES PÉDAGOGIQUES :
                1. Adapte ton langage et ta complexité au niveau de l'élève.
                2. Si ce n'est pas la première session, commence par un bref rappel de la dernière notion.
                3. Quand tu poses un exercice, ATTENDS la réponse de l'élève avant de donner la correction.
                4. Ne donne JAMAIS la réponse directement si l'élève peut la trouver seul : guide par questions (méthode socratique).
                5. Encourage toujours les efforts. Explique POURQUOI c'est faux avant de corriger.
                6. À la fin de chaque échange, propose un choix : exercice de consolidation, notion suivante, ou récapitulatif.
                7. Utilise des exemples concrets ; recours au contexte marocain quand c'est pertinent.
                8. Si l'élève semble découragé, change de ton et propose un exercice plus simple.
                9. Respecte le programme marocain et la notation marocaine (ex. combinaisons notées C_n^p, jamais \\binom).

                FORMAT DE RÉPONSE :
                - **gras** pour les termes importants ; listes à puces pour les étapes ou règles.
                - Mathématiques en LaTeX : $...$ en ligne (ex. $x^2$) ou $$...$$ pour une formule centrée.
                - Exercices : commence par "📝 **Exercice :**" puis termine par "💡 *(Prends le temps de réfléchir !)*".
                - Corrections : "✅ **Correction :**" si l'élève a réussi, sinon "🔍 **Voyons ça ensemble :**".
                - Maximum 200 mots par réponse, sauf demande explicite de détail.
                """.formatted(
                u.getNom() == null ? "l'élève" : u.getNom(),
                niveau, matiereNom,
                p.getSessions(), p.getScore(),
                forts.isEmpty() ? "à découvrir" : String.join(", ", forts),
                faibles.isEmpty() ? "à découvrir" : String.join(", ", faibles));
    }

    private String niveau(Utilisateur u) {
        String slug = u.getFiliere() != null ? u.getFiliere().getSlug() : null;
        if (slug == null) return "Baccalauréat";
        if (slug.startsWith("tronc-commun")) return "Tronc Commun";
        if (slug.startsWith("1bac")) return "1ère année Bac";
        return "2ème année Bac";
    }

    private String matiereNom(String slug) {
        if (slug == null || slug.isBlank()) return "à définir";
        return matieres.findBySlug(slug).map(m -> m.getNom()).orElse(slug);
    }

    private AxiomProfil chargerOuCreer(Long userId, Utilisateur u) {
        return profils.findByUtilisateurId(userId).orElseGet(() -> {
            AxiomProfil p = new AxiomProfil();
            p.setUtilisateurId(userId);
            p.setPrenom(u.getNom());
            return profils.save(p);
        });
    }

    private Utilisateur utilisateur(Long userId) {
        return utilisateurs.findById(userId)
                .orElseThrow(() -> new ResponseStatusException(HttpStatus.UNAUTHORIZED, "Compte introuvable"));
    }

    private AxiomProfilDto toDto(AxiomProfil p, Utilisateur u) {
        return new AxiomProfilDto(
                p.getPrenom() != null ? p.getPrenom() : u.getNom(),
                niveau(u),
                p.getMatiere(),
                matiereNom(p.getMatiere()),
                p.getSessions(),
                p.getScore(),
                lireListe(p.getPointsForts()),
                lireListe(p.getPointsFaibles()));
    }

    private List<String> lireListe(String raw) {
        if (raw == null || raw.isBlank()) return List.of();
        try {
            return json.readValue(raw, new TypeReference<List<String>>() {});
        } catch (Exception e) {
            return List.of();
        }
    }

    private String ecrireListe(List<String> l) {
        try {
            return json.writeValueAsString(l == null ? List.of() : l);
        } catch (Exception e) {
            return "[]";
        }
    }
}
