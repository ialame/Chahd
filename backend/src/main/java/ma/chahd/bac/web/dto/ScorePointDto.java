package ma.chahd.bac.web.dto;

import java.time.Instant;

/** Un point de la courbe d'évolution : une tentative de QCM datée. */
public record ScorePointDto(Instant date, double noteSur20, String matiereSlug, String quizTitre) {
}
