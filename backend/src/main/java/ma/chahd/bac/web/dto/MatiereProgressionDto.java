package ma.chahd.bac.web.dto;

/** Synthèse de progression d'une matière pour le tableau de bord. */
public record MatiereProgressionDto(
        String slug,
        String nom,
        int lecons,
        int leconsLues,
        int leconsARevoir,
        int quizFaits,
        Double moyenneSur20,
        long fichesDues,
        long fichesEnCours) {
}
