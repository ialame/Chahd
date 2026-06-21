package ma.chahd.bac.web.dto;

import java.util.List;

public record LeconDto(Long id, String slug, String titre, int ordre, boolean aContenu,
                       boolean aExercices, boolean aProblemes, boolean aFiches, Long quizId,
                       boolean aBac, List<QuizRefDto> quizzes) {
}
