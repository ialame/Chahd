package ma.chahd.bac.web.dto;

public record AnnaleDto(Long id, String titre, int annee, String session,
                        String sujetUrl, String corrigeUrl,
                        String matiereSlug, String matiereNom,
                        boolean aContenu, boolean aPdf) {
}
