package ma.chahd.bac.web.dto;

/** Notation d'une fiche par l'élève : qualité du rappel (0..5, SM-2). */
public record NotationDto(Long leconId, int ficheIndex, int qualite) {
}
