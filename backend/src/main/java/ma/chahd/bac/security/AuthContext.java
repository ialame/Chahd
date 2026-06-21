package ma.chahd.bac.security;

import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

/** Accès à l'utilisateur authentifié de la requête courante (posé par JwtAuthFilter). */
public final class AuthContext {

    private AuthContext() {
    }

    public static Long userId() {
        Object v = attribut(JwtAuthFilter.ATTR_USER_ID);
        return v instanceof Long l ? l : null;
    }

    public static String role() {
        Object v = attribut(JwtAuthFilter.ATTR_ROLE);
        return v instanceof String s ? s : null;
    }

    public static boolean estConnecte() {
        return userId() != null;
    }

    public static boolean estAdmin() {
        return "ADMIN".equals(role());
    }

    private static Object attribut(String nom) {
        if (RequestContextHolder.getRequestAttributes() instanceof ServletRequestAttributes sra) {
            return sra.getRequest().getAttribute(nom);
        }
        return null;
    }
}
