package ma.chahd.bac.web.dto;

import java.time.LocalDate;

/** Résultat de la planification SM-2 après notation d'une fiche. */
public record NotationResultatDto(LocalDate prochaineRevision, int intervalle, int repetitions) {
}
