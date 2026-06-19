package ma.chahd.bac.web.dto;

import java.util.List;
import java.util.Map;

/** Réponses envoyées par l'élève : pour chaque question, la liste des choix sélectionnés. */
public record QuizSubmissionDto(Map<Long, List<Long>> reponses) {
}
