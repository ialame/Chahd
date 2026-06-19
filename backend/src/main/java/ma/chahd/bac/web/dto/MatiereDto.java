package ma.chahd.bac.web.dto;

public record MatiereDto(Long id, String slug, String nom, int coefficient, String description,
                         String couleur, String icone, int ordre, int nbChapitres) {
}
