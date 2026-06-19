package ma.chahd.bac.web.dto;

import java.util.List;

public record ChapitreDetailDto(Long id, String slug, String titre, String resume, int ordre,
                                String matiereSlug, String matiereNom, String couleur,
                                List<FicheDto> fiches, List<QuizSummaryDto> quizzes) {
}
