package ma.chahd.bac.web.dto;

/**
 * Réponse d'AXIOM. isExercice = la réponse pose un exercice ("📝") ;
 * isReussite = la réponse félicite l'élève ("✅", "bravo", "exact").
 */
public record AxiomChatResponse(
        String reply,
        boolean isExercice,
        boolean isReussite,
        AxiomProfilDto profil
) {}
