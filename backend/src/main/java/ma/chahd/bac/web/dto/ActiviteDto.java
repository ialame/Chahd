package ma.chahd.bac.web.dto;

import java.time.Instant;

/** Événement d'activité — entrée (POST) et sortie (admin) partagent ce format. */
public record ActiviteDto(Long id, String visiteur, String type, String matiere,
                          String chapitre, String item, String label, Double note, Instant creeLe) {
}
