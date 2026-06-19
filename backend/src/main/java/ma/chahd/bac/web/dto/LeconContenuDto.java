package ma.chahd.bac.web.dto;

/** Contenu d'une leçon (Markdown + LaTeX délimité par $...$ et $$...$$, avec boîtes <div class="...">). */
public record LeconContenuDto(Long id, String titre, String matiereSlug, String contenu) {
}
