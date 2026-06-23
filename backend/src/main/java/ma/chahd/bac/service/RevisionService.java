package ma.chahd.bac.service;

import ma.chahd.bac.domain.FicheRevision;
import ma.chahd.bac.domain.Lecon;
import ma.chahd.bac.repository.FicheRevisionRepository;
import ma.chahd.bac.repository.LeconRepository;
import ma.chahd.bac.web.NotFoundException;
import ma.chahd.bac.web.dto.FlashcardDto;
import ma.chahd.bac.web.dto.NotationDto;
import ma.chahd.bac.web.dto.NotationResultatDto;
import ma.chahd.bac.web.dto.RevisionCarteDto;
import ma.chahd.bac.web.dto.RevisionStatsDto;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.time.Instant;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/** Révision espacée des fiches selon l'algorithme SM-2. */
@Service
public class RevisionService {

    private final FicheRevisionRepository revisions;
    private final LeconRepository lecons;
    private final CoursService cours;

    public RevisionService(FicheRevisionRepository revisions, LeconRepository lecons, CoursService cours) {
        this.revisions = revisions;
        this.lecons = lecons;
        this.cours = cours;
    }

    /** File du jour : toutes les fiches planifiées dont l'échéance est atteinte, enrichies de leur contenu. */
    @Transactional(readOnly = true)
    public List<RevisionCarteDto> fileDuJour(Long userId) {
        LocalDate auj = LocalDate.now();
        Map<Long, List<FlashcardDto>> fichesCache = new HashMap<>();
        Map<Long, Lecon> leconCache = new HashMap<>();
        List<RevisionCarteDto> out = new ArrayList<>();
        for (FicheRevision r : revisions
                .findByUtilisateurIdAndProchaineRevisionLessThanEqualOrderByProchaineRevisionAsc(userId, auj)) {
            List<FlashcardDto> fiches = fichesCache.computeIfAbsent(r.getLeconId(), this::fichesSafe);
            if (r.getFicheIndex() < 0 || r.getFicheIndex() >= fiches.size()) continue;
            Lecon l = leconCache.computeIfAbsent(r.getLeconId(), id -> lecons.findById(id).orElse(null));
            if (l == null) continue;
            FlashcardDto f = fiches.get(r.getFicheIndex());
            out.add(new RevisionCarteDto(r.getLeconId(), r.getFicheIndex(), f.question(), f.reponse(),
                    l.getMatiere().getSlug(), l.getSlug(), l.getTitre(), "DUE", r.getProchaineRevision()));
        }
        return out;
    }

    /** File de révision d'une leçon : toutes ses fiches avec leur statut (NOUVELLE | DUE | PLANIFIEE). */
    @Transactional(readOnly = true)
    public List<RevisionCarteDto> queueLecon(Long userId, Long leconId) {
        Lecon l = lecons.findById(leconId)
                .orElseThrow(() -> new NotFoundException("Leçon introuvable : " + leconId));
        List<FlashcardDto> fiches = fichesSafe(leconId);
        LocalDate auj = LocalDate.now();
        Map<Integer, FicheRevision> etats = new HashMap<>();
        for (FicheRevision r : revisions.findByUtilisateurIdAndLeconId(userId, leconId)) {
            etats.put(r.getFicheIndex(), r);
        }
        List<RevisionCarteDto> out = new ArrayList<>();
        for (int i = 0; i < fiches.size(); i++) {
            FicheRevision r = etats.get(i);
            String statut;
            LocalDate prochaine = null;
            if (r == null) {
                statut = "NOUVELLE";
            } else {
                prochaine = r.getProchaineRevision();
                statut = prochaine.isAfter(auj) ? "PLANIFIEE" : "DUE";
            }
            FlashcardDto f = fiches.get(i);
            out.add(new RevisionCarteDto(leconId, i, f.question(), f.reponse(),
                    l.getMatiere().getSlug(), l.getSlug(), l.getTitre(), statut, prochaine));
        }
        return out;
    }

    /** Applique l'algorithme SM-2 selon la qualité du rappel (0..5) et planifie la prochaine révision. */
    @Transactional
    public NotationResultatDto noter(Long userId, NotationDto n) {
        int q = Math.max(0, Math.min(5, n.qualite()));
        FicheRevision r = revisions
                .findByUtilisateurIdAndLeconIdAndFicheIndex(userId, n.leconId(), n.ficheIndex())
                .orElseGet(() -> {
                    FicheRevision nr = new FicheRevision();
                    nr.setUtilisateurId(userId);
                    nr.setLeconId(n.leconId());
                    nr.setFicheIndex(n.ficheIndex());
                    nr.setRepetitions(0);
                    nr.setIntervalle(0);
                    nr.setFacilite(2.5);
                    return nr;
                });

        if (q < 3) {
            // Rappel raté : on recommence le cycle.
            r.setRepetitions(0);
            r.setIntervalle(1);
        } else {
            int rep = r.getRepetitions();
            int intervalle;
            if (rep == 0) {
                intervalle = 1;
            } else if (rep == 1) {
                intervalle = 6;
            } else {
                intervalle = (int) Math.round(r.getIntervalle() * r.getFacilite());
            }
            r.setIntervalle(Math.max(1, intervalle));
            r.setRepetitions(rep + 1);
        }
        // Mise à jour du facteur de facilité (borné à 1,3).
        double ef = r.getFacilite() + (0.1 - (5 - q) * (0.08 + (5 - q) * 0.02));
        r.setFacilite(Math.max(1.3, ef));
        r.setDerniereRevision(Instant.now());
        r.setProchaineRevision(LocalDate.now().plusDays(r.getIntervalle()));
        revisions.save(r);
        return new NotationResultatDto(r.getProchaineRevision(), r.getIntervalle(), r.getRepetitions());
    }

    @Transactional(readOnly = true)
    public RevisionStatsDto stats(Long userId) {
        long due = revisions.countByUtilisateurIdAndProchaineRevisionLessThanEqual(userId, LocalDate.now());
        long enCours = revisions.countByUtilisateurId(userId);
        return new RevisionStatsDto(due, enCours);
    }

    private List<FlashcardDto> fichesSafe(Long leconId) {
        try {
            return cours.getFiches(leconId);
        } catch (RuntimeException e) {
            return List.of();
        }
    }
}
