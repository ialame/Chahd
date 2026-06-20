package ma.chahd.bac.web.dto;

/** Un exercice/problème tombé au bac, rattaché à un chapitre. */
public record ExoBacDto(int annee, String session, String numero, String titre,
                        String enonce, String corrige) {
}
