package ma.chahd.bac.web.dto;

import java.util.List;

/** Résultat corrigé d'un quiz : score, note sur 20, et détail par question. */
public record QuizResultDto(Long quizId, int score, int total, double noteSur20,
                            List<QuestionResultDto> details) {
}
