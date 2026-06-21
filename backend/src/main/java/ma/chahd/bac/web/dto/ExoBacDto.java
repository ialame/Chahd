package ma.chahd.bac.web.dto;

/** Un exercice/problème tombé au bac, rattaché à un chapitre.
 *  extrait = true pour un sous-exercice issu d'un problème découpé (« D'après Bac… »). */
public record ExoBacDto(int annee, String session, String numero, String titre,
                        String enonce, String corrige, boolean extrait) {
}
