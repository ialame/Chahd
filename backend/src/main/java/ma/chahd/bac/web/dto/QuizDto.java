package ma.chahd.bac.web.dto;

import java.util.List;

/** Quiz complet à passer (les bonnes réponses ne sont pas incluses). */
public record QuizDto(Long id, String titre, String description, List<QuestionDto> questions) {
}
