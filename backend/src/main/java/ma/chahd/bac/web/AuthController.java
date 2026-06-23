package ma.chahd.bac.web;

import jakarta.validation.Valid;
import ma.chahd.bac.repository.UtilisateurRepository;
import ma.chahd.bac.security.AuthContext;
import ma.chahd.bac.service.AuthService;
import ma.chahd.bac.web.dto.AuthResponseDto;
import ma.chahd.bac.web.dto.LoginDto;
import ma.chahd.bac.web.dto.RegisterDto;
import ma.chahd.bac.web.dto.UtilisateurDto;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.server.ResponseStatusException;

@RestController
@RequestMapping("/api/auth")
public class AuthController {

    private final AuthService authService;
    private final UtilisateurRepository repository;

    public AuthController(AuthService authService, UtilisateurRepository repository) {
        this.authService = authService;
        this.repository = repository;
    }

    @PostMapping("/register")
    public AuthResponseDto register(@Valid @RequestBody RegisterDto in) {
        return authService.inscrire(in);
    }

    @PostMapping("/login")
    public AuthResponseDto login(@Valid @RequestBody LoginDto in) {
        return authService.connecter(in);
    }

    /** Profil de l'utilisateur connecté (via le jeton). */
    @GetMapping("/me")
    public UtilisateurDto me() {
        Long id = AuthContext.userId();
        if (id == null) {
            throw new ResponseStatusException(HttpStatus.UNAUTHORIZED, "Non connecté");
        }
        return repository.findById(id).map(authService::dto)
                .orElseThrow(() -> new ResponseStatusException(HttpStatus.UNAUTHORIZED, "Compte introuvable"));
    }

    /** Change la filière du compte connecté. */
    @PutMapping("/me/filiere")
    public UtilisateurDto changerFiliere(@RequestBody java.util.Map<String, String> body) {
        Long id = AuthContext.userId();
        if (id == null) {
            throw new ResponseStatusException(HttpStatus.UNAUTHORIZED, "Non connecté");
        }
        return authService.changerFiliere(id, body.get("filiere"));
    }
}
