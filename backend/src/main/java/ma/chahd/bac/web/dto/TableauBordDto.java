package ma.chahd.bac.web.dto;

import java.util.List;

/** Tableau de bord de l'utilisateur : synthèse globale + par matière. */
public record TableauBordDto(
        long fichesDuesAujourdhui,
        long fichesEnCours,
        int quizFaits,
        Double moyenneGlobaleSur20,
        List<MatiereProgressionDto> matieres) {
}
