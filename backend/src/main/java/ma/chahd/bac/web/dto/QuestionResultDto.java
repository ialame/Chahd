package ma.chahd.bac.web.dto;

import java.util.List;

public record QuestionResultDto(Long questionId, boolean correcte, List<Long> bonsChoix,
                                List<Long> choixSelectionnes, String explication) {
}
