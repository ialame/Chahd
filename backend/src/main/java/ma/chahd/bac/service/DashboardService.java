package ma.chahd.bac.service;

import ma.chahd.bac.domain.FicheRevision;
import ma.chahd.bac.domain.LeconProgression;
import ma.chahd.bac.domain.Matiere;
import ma.chahd.bac.domain.Quiz;
import ma.chahd.bac.domain.QuizTentative;
import ma.chahd.bac.repository.*;
import ma.chahd.bac.web.dto.MatiereProgressionDto;
import ma.chahd.bac.web.dto.ScorePointDto;
import ma.chahd.bac.web.dto.TableauBordDto;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.stream.Collectors;

/** Synthèse de progression de l'utilisateur, agrégée par matière. */
@Service
public class DashboardService {

    private final MatiereRepository matieres;
    private final LeconRepository lecons;
    private final QuizRepository quizzes;
    private final QuizTentativeRepository tentatives;
    private final LeconProgressionRepository progressions;
    private final FicheRevisionRepository revisions;

    public DashboardService(MatiereRepository matieres, LeconRepository lecons, QuizRepository quizzes,
                            QuizTentativeRepository tentatives, LeconProgressionRepository progressions,
                            FicheRevisionRepository revisions) {
        this.matieres = matieres;
        this.lecons = lecons;
        this.quizzes = quizzes;
        this.tentatives = tentatives;
        this.progressions = progressions;
        this.revisions = revisions;
    }

    @Transactional(readOnly = true)
    public TableauBordDto tableauDeBord(Long userId) {
        LocalDate auj = LocalDate.now();

        // Meilleure note /20 par quiz tenté.
        Map<Long, Double> meilleureNote = new HashMap<>();
        for (QuizTentative t : tentatives.findByUtilisateurId(userId)) {
            meilleureNote.merge(t.getQuizId(), t.getNoteSur20(), Math::max);
        }

        // Statut de progression par leçon.
        Map<Long, String> statutLecon = new HashMap<>();
        for (LeconProgression p : progressions.findByUtilisateurId(userId)) {
            statutLecon.put(p.getLeconId(), p.getStatut());
        }

        // Fiches en révision de l'utilisateur, par leçon.
        List<FicheRevision> fiches = revisions.findByUtilisateurId(userId);

        List<MatiereProgressionDto> parMatiere = new ArrayList<>();
        for (Matiere m : matieres.findAllByOrderByOrdreAsc()) {
            Set<Long> leconIds = new HashSet<>();
            lecons.findByMatiereSlugOrderByOrdreAsc(m.getSlug()).forEach(l -> leconIds.add(l.getId()));

            Set<Long> quizIds = new HashSet<>();
            quizzes.findByLecon_Matiere_SlugOrderByOrdreAsc(m.getSlug())
                    .forEach(q -> quizIds.add(q.getId()));

            int lues = 0, aRevoir = 0;
            for (Long id : leconIds) {
                String s = statutLecon.get(id);
                if ("LU".equals(s)) lues++;
                else if ("A_REVOIR".equals(s)) aRevoir++;
            }

            int quizFaits = 0;
            double sommeNotes = 0;
            for (Long qid : quizIds) {
                Double note = meilleureNote.get(qid);
                if (note != null) {
                    quizFaits++;
                    sommeNotes += note;
                }
            }
            Double moyenne = quizFaits == 0 ? null : Math.round((sommeNotes / quizFaits) * 100.0) / 100.0;

            long fichesDues = 0, fichesEnCours = 0;
            for (FicheRevision f : fiches) {
                if (leconIds.contains(f.getLeconId())) {
                    fichesEnCours++;
                    if (!f.getProchaineRevision().isAfter(auj)) fichesDues++;
                }
            }

            parMatiere.add(new MatiereProgressionDto(m.getSlug(), m.getNom(), leconIds.size(),
                    lues, aRevoir, quizFaits, moyenne, fichesDues, fichesEnCours));
        }

        long fichesDuesGlobal = fiches.stream().filter(f -> !f.getProchaineRevision().isAfter(auj)).count();
        int quizFaitsGlobal = meilleureNote.size();
        Double moyenneGlobale = meilleureNote.isEmpty() ? null
                : Math.round((meilleureNote.values().stream().mapToDouble(Double::doubleValue).average().orElse(0)) * 100.0) / 100.0;

        return new TableauBordDto(fichesDuesGlobal, fiches.size(), quizFaitsGlobal, moyenneGlobale, parMatiere);
    }

    /** Historique chronologique des tentatives de QCM (pour la courbe d'évolution des scores). */
    @Transactional(readOnly = true)
    public List<ScorePointDto> historiqueScores(Long userId) {
        List<QuizTentative> tts = new ArrayList<>(tentatives.findByUtilisateurId(userId));
        tts.sort(Comparator.comparing(QuizTentative::getCreeLe));
        Set<Long> quizIds = tts.stream().map(QuizTentative::getQuizId).collect(Collectors.toSet());
        Map<Long, Quiz> quizParId = new HashMap<>();
        quizzes.findAllById(quizIds).forEach(q -> quizParId.put(q.getId(), q));

        List<ScorePointDto> out = new ArrayList<>();
        for (QuizTentative t : tts) {
            Quiz q = quizParId.get(t.getQuizId());
            String slug = (q != null && q.getLecon() != null && q.getLecon().getMatiere() != null)
                    ? q.getLecon().getMatiere().getSlug() : null;
            String titre = q != null ? q.getTitre() : null;
            out.add(new ScorePointDto(t.getCreeLe(), t.getNoteSur20(), slug, titre));
        }
        return out;
    }

    @Transactional(readOnly = true)
    public List<ma.chahd.bac.web.dto.ProgressionLeconDto> progressionsLecons(Long userId) {
        return progressions.findByUtilisateurId(userId).stream()
                .map(p -> new ma.chahd.bac.web.dto.ProgressionLeconDto(p.getLeconId(), p.getStatut()))
                .toList();
    }

    /** Marque une leçon (statut LU | A_REVOIR), ou efface l'état si statut null/vide. */
    @Transactional
    public void marquerLecon(Long userId, Long leconId, String statut) {
        var existant = progressions.findByUtilisateurIdAndLeconId(userId, leconId);
        if (statut == null || statut.isBlank()) {
            existant.ifPresent(progressions::delete);
            return;
        }
        LeconProgression p = existant.orElseGet(() -> {
            LeconProgression np = new LeconProgression();
            np.setUtilisateurId(userId);
            np.setLeconId(leconId);
            return np;
        });
        p.setStatut(statut);
        p.setMajLe(java.time.Instant.now());
        progressions.save(p);
    }
}
