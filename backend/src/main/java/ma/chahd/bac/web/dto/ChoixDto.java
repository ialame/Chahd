package ma.chahd.bac.web.dto;

/** Choix de réponse présenté à l'élève (sans révéler s'il est correct). */
public record ChoixDto(Long id, String texte, int ordre) {
}
