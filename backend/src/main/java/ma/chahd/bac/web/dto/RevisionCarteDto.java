package ma.chahd.bac.web.dto;

import java.time.LocalDate;

/** Une carte à réviser : contenu de la fiche + contexte (leçon, matière) + état SM-2. */
public record RevisionCarteDto(
        Long leconId,
        int ficheIndex,
        String question,
        String reponse,
        String matiereSlug,
        String leconSlug,
        String leconTitre,
        String statut,            // NOUVELLE | DUE
        LocalDate prochaineRevision) {
}
