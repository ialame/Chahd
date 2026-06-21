package ma.chahd.bac.security;

import io.jsonwebtoken.Claims;
import jakarta.servlet.FilterChain;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.springframework.stereotype.Component;
import org.springframework.web.filter.OncePerRequestFilter;

import java.io.IOException;

/**
 * Lit le jeton « Authorization: Bearer … » et place l'utilisateur dans la requête.
 * N'impose rien : chaque endpoint décide s'il exige l'authentification.
 */
@Component
public class JwtAuthFilter extends OncePerRequestFilter {

    public static final String ATTR_USER_ID = "authUserId";
    public static final String ATTR_ROLE = "authRole";

    private final JwtService jwtService;

    public JwtAuthFilter(JwtService jwtService) {
        this.jwtService = jwtService;
    }

    @Override
    protected void doFilterInternal(HttpServletRequest req, HttpServletResponse res, FilterChain chain)
            throws ServletException, IOException {
        String header = req.getHeader("Authorization");
        if (header != null && header.startsWith("Bearer ")) {
            Claims claims = jwtService.lire(header.substring(7));
            if (claims != null) {
                try {
                    req.setAttribute(ATTR_USER_ID, Long.valueOf(claims.getSubject()));
                    req.setAttribute(ATTR_ROLE, claims.get("role", String.class));
                } catch (NumberFormatException ignored) {
                    // jeton mal formé : on continue en anonyme
                }
            }
        }
        chain.doFilter(req, res);
    }
}
