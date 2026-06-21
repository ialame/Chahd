package ma.chahd.bac.web.dto;

import java.time.Instant;

/** Résumé d'un élève pour la liste admin. */
public record EleveResumeDto(Long id, String nom, String email, Instant creeLe,
                             long nbActivites, Instant derniereActivite) {
}
