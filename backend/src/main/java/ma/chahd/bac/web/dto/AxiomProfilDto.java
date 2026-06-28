package ma.chahd.bac.web.dto;

import java.util.List;

/** Profil AXIOM exposé au client. matiere = slug ; matiereNom = libellé affichable. */
public record AxiomProfilDto(
        String prenom,
        String niveau,
        String matiere,
        String matiereNom,
        int sessions,
        int score,
        List<String> pointsForts,
        List<String> pointsFaibles
) {}
