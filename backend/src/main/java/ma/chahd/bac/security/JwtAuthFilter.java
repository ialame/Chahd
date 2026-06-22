package ma.chahd.bac.security;

import io.jsonwebtoken.Claims;
import jakarta.servlet.FilterChain;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.springframework.stereotype.Component;
import org.springframework.web.filter.OncePerRequestFilter;

import java.io.IOException;

/**
 * Authentification JWT. Le jeton est lu depuis l'en-tête « Authorization: Bearer … »
 * (appels API du client) OU depuis le cookie {@code chahd_token} (requêtes navigateur
 * natives : balises &lt;img&gt; des pages d'annales, liens PDF — qui n'envoient pas d'en-tête).
 *
 * <p>Le site est entièrement privé : toute requête vers {@code /api/**} exige un jeton
 * valide et renvoie 401 sinon — à l'exception de {@code /api/auth/**} (connexion,
 * inscription) et des pré-vols CORS {@code OPTIONS}.
 */
@Component
public class JwtAuthFilter extends OncePerRequestFilter {

    public static final String ATTR_USER_ID = "authUserId";
    public static final String ATTR_ROLE = "authRole";
    private static final String COOKIE = "chahd_token";

    private final JwtService jwtService;

    public JwtAuthFilter(JwtService jwtService) {
        this.jwtService = jwtService;
    }

    @Override
    protected void doFilterInternal(HttpServletRequest req, HttpServletResponse res, FilterChain chain)
            throws ServletException, IOException {

        // 1. Extraction du jeton : en-tête Authorization, sinon cookie chahd_token.
        String token = null;
        String header = req.getHeader("Authorization");
        if (header != null && header.startsWith("Bearer ")) {
            token = header.substring(7);
        } else if (req.getCookies() != null) {
            for (Cookie c : req.getCookies()) {
                if (COOKIE.equals(c.getName())) {
                    token = c.getValue();
                    break;
                }
            }
        }

        Long userId = null;
        if (token != null && !token.isBlank()) {
            Claims claims = jwtService.lire(token);
            if (claims != null) {
                try {
                    userId = Long.valueOf(claims.getSubject());
                    req.setAttribute(ATTR_USER_ID, userId);
                    req.setAttribute(ATTR_ROLE, claims.get("role", String.class));
                } catch (NumberFormatException ignored) {
                    userId = null; // jeton mal formé : anonyme
                }
            }
        }

        // 2. Verrou global : /api/** exige un compte, sauf /api/auth/** et les pré-vols OPTIONS.
        String path = req.getRequestURI();
        boolean exigeAuth = path.startsWith("/api/")
                && !path.startsWith("/api/auth/")
                && !"OPTIONS".equalsIgnoreCase(req.getMethod());

        if (exigeAuth && userId == null) {
            // En-têtes CORS sur la réponse 401 pour que le navigateur la lise (dev cross-origin).
            String origin = req.getHeader("Origin");
            if (origin != null) {
                res.setHeader("Access-Control-Allow-Origin", origin);
                res.setHeader("Access-Control-Allow-Credentials", "true");
                res.setHeader("Vary", "Origin");
            }
            res.setStatus(HttpServletResponse.SC_UNAUTHORIZED);
            res.setContentType("application/json;charset=UTF-8");
            res.getWriter().write("{\"error\":\"Authentification requise\"}");
            return;
        }

        chain.doFilter(req, res);
    }
}
