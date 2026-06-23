package ma.chahd.bac.web.dto;

/** Requête de marquage d'une leçon : statut LU | A_REVOIR (null pour effacer). */
public record MarquerLeconDto(String statut) {
}
