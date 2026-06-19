package ma.chahd.bac.web.dto;

import java.util.List;

public record MatiereDetailDto(Long id, String slug, String nom, int coefficient, String description,
                               String couleur, String icone,
                               List<ChapitreSummaryDto> chapitres, List<AnnaleDto> annales) {
}
