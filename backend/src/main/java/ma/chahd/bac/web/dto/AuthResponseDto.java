package ma.chahd.bac.web.dto;

/** Réponse d'inscription/connexion : jeton JWT + profil utilisateur. */
public record AuthResponseDto(String token, UtilisateurDto utilisateur) {
}
