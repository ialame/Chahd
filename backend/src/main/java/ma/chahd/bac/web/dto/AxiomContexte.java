package ma.chahd.bac.web.dto;

/**
 * Contexte d'étude transmis par le client : ce que l'élève regarde au moment du message.
 * Permet à AXIOM un coup de pouce ciblé sur le contenu réellement affiché.
 *
 * @param matiere    slug de la matière
 * @param matiereNom libellé de la matière
 * @param chapitre   chapitre / leçon ouvert
 * @param type       cours | exercices | problemes | fiches | bac | annale | qcm
 * @param titre      titre de l'élément ouvert
 * @param extrait    contenu actuellement affiché (texte, tronqué)
 */
public record AxiomContexte(
        String matiere,
        String matiereNom,
        String chapitre,
        String type,
        String titre,
        String extrait
) {}
