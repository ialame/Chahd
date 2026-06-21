package ma.chahd.bac.service;

import ma.chahd.bac.domain.Role;
import ma.chahd.bac.domain.Utilisateur;
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

    private final UtilisateurRepository repository;
    private final JwtService jwtService;
    private final PasswordEncoder encoder = new BCryptPasswordEncoder();

    public AuthService(UtilisateurRepository repository, JwtService jwtService) {
        this.repository = repository;
        this.jwtService = jwtService;
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
        u.setCreeLe(Instant.now());
        repository.save(u);
        return reponse(u);
    }

    public AuthResponseDto connecter(LoginDto in) {
        Utilisateur u = repository.findByEmailIgnoreCase(in.email().trim().toLowerCase())
                .filter(x -> encoder.matches(in.motDePasse(), x.getMotDePasseHash()))
                .orElseThrow(() -> new ResponseStatusException(
                        HttpStatus.UNAUTHORIZED, "Email ou mot de passe incorrect."));
        return reponse(u);
    }

    public UtilisateurDto dto(Utilisateur u) {
        return new UtilisateurDto(u.getId(), u.getEmail(), u.getNom(), u.getRole().name());
    }

    private AuthResponseDto reponse(Utilisateur u) {
        return new AuthResponseDto(jwtService.genererToken(u.getId(), u.getRole().name()), dto(u));
    }
}
