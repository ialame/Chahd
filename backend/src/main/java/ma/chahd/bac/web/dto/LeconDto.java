package ma.chahd.bac.web.dto;

public record LeconDto(Long id, String slug, String titre, int ordre, boolean aContenu,
                       boolean aExercices, boolean aProblemes, boolean aFiches, Long quizId,
                       boolean aBac) {
}
