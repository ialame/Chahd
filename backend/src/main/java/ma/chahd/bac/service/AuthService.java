package ma.chahd.bac.service;

import ma.chahd.bac.domain.Filiere;
import ma.chahd.bac.domain.Role;
import ma.chahd.bac.domain.Utilisateur;
import ma.chahd.bac.repository.FiliereRepository;
import ma.chahd.bac.repository.UtilisateurRepository;
import ma.chahd.bac.security.JwtService;
import ma.chahd.bac.web.dto.AuthResponseDto;
import ma.chahd.bac.web.dto.LoginDto;
import ma.chahd.bac.web.dto.RegisterDto;
import ma.chahd.bac.web.dto.UtilisateurDto;
import org.springframework.http.HttpStatus;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.web.server.ResponseStatusException;

import java.time.Instant;

@Service
public class AuthService {

    private static final String FILIERE_DEFAUT = "sciences-physiques";

    private final UtilisateurRepository repository;
    private final FiliereRepository filiereRepository;
    private final JwtService jwtService;
    private final PasswordEncoder encoder = new BCryptPasswordEncoder();

    public AuthService(UtilisateurRepository repository, FiliereRepository filiereRepository, JwtService jwtService) {
        this.repository = repository;
        this.filiereRepository = filiereRepository;
        this.jwtService = jwtService;
    }

    private Filiere resoudreFiliere(String slug) {
        String s = (slug == null || slug.isBlank()) ? FILIERE_DEFAUT : slug.trim();
        return filiereRepository.findBySlug(s)
                .or(() -> filiereRepository.findBySlug(FILIERE_DEFAUT))
                .orElseThrow(() -> new ResponseStatusException(HttpStatus.BAD_REQUEST, "Filière inconnue."));
    }

    public AuthResponseDto inscrire(RegisterDto in) {
        String email = in.email().trim().toLowerCase();
        if (repository.existsByEmailIgnoreCase(email)) {
            throw new ResponseStatusException(HttpStatus.CONFLICT, "Un compte existe déjà avec cet email.");
        }
        Utilisateur u = new Utilisateur();
        u.setEmail(email);
        u.setNom(in.nom().trim());
        u.setMotDePasseHash(encoder.encode(in.motDePasse()));
        u.setRole(Role.ELEVE);
        u.setFiliere(resoudreFiliere(in.filiere()));
        u.setCreeLe(Instant.now());
        repository.save(u);
        return reponse(u);
    }

    /** Change la filière du compte connecté et renvoie le profil à jour. */
    public UtilisateurDto changerFiliere(Long userId, String slug) {
        Utilisateur u = repository.findById(userId)
                .orElseThrow(() -> new ResponseStatusException(HttpStatus.UNAUTHORIZED, "Compte introuvable"));
        u.setFiliere(resoudreFiliere(slug));
        repository.save(u);
        return dto(u);
    }

    public AuthResponseDto connecter(LoginDto in) {
        Utilisateur u = repository.findByEmailIgnoreCase(in.email().trim().toLowerCase())
                .filter(x -> encoder.matches(in.motDePasse(), x.getMotDePasseHash()))
                .orElseThrow(() -> new ResponseStatusException(
                        HttpStatus.UNAUTHORIZED, "Email ou mot de passe incorrect."));
        return reponse(u);
    }

    public UtilisateurDto dto(Utilisateur u) {
        Filiere f = u.getFiliere();
        return new UtilisateurDto(u.getId(), u.getEmail(), u.getNom(), u.getRole().name(),
                f != null ? f.getSlug() : null, f != null ? f.getNom() : null);
    }

    private AuthResponseDto reponse(Utilisateur u) {
        return new AuthResponseDto(jwtService.genererToken(u.getId(), u.getRole().name()), dto(u));
    }
}
