package ma.chahd.bac.web.dto;

/** Utilisateur exposé au client (sans le mot de passe). */
public record UtilisateurDto(Long id, String email, String nom, String role) {
}
