package ma.chahd.bac.web.dto;

public record ChapitreSummaryDto(Long id, String slug, String titre, String resume, int ordre,
                                 int nbFiches, int nbQuiz) {
}
