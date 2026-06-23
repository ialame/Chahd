package ma.chahd.bac.web.dto;

/** Score moyen d'un chapitre (leçon) pour la répartition en barres. */
public record ChapitreScoreDto(String matiereSlug, String leconTitre, double noteSur20, int quizFaits) {
}
