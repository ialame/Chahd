package ma.chahd.bac.web.dto;

import java.util.List;

/** Suivi détaillé d'un élève : profil + toutes ses activités. */
public record EleveSuiviDto(UtilisateurDto eleve, List<ActiviteDto> activites) {
}
