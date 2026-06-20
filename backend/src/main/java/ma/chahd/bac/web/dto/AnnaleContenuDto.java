package ma.chahd.bac.web.dto;

/** Contenu transcrit d'une annale : sujet et/ou corrigé en Markdown (avec LaTeX et boîtes). */
public record AnnaleContenuDto(Long id, String titre, String sujetUrl, String corrigeUrl,
                               String sujet, String corrige) {
}
