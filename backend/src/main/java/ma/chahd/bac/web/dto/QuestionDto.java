package ma.chahd.bac.web.dto;

import java.util.List;

public record QuestionDto(Long id, String enonce, int ordre, List<ChoixDto> choix) {
}
