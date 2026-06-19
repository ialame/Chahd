package ma.chahd.bac.web.dto;

/** Contenu transcrit d'une annale (Markdown contenant du LaTeX délimité par $...$ et $$...$$). */
public record AnnaleContenuDto(Long id, String titre, String format, String sujetUrl, String contenu) {
}
