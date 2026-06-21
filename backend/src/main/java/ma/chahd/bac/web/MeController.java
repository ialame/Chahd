package ma.chahd.bac.web;

import ma.chahd.bac.domain.Utilisateur;
import ma.chahd.bac.repository.ActiviteRepository;
import ma.chahd.bac.repository.UtilisateurRepository;
import ma.chahd.bac.security.AuthContext;
import ma.chahd.bac.web.dto.ActiviteDto;
import ma.chahd.bac.web.dto.EleveSuiviDto;
import ma.chahd.bac.web.dto.UtilisateurDto;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.server.ResponseStatusException;

import java.util.List;

/** Données de l'utilisateur connecté (sa propre progression). */
@RestController
@RequestMapping("/api/me")
public class MeController {

    private final UtilisateurRepository utilisateurs;
    private final ActiviteRepository activites;

    public MeController(UtilisateurRepository utilisateurs, ActiviteRepository activites) {
        this.utilisateurs = utilisateurs;
        this.activites = activites;
    }

    @GetMapping("/suivi")
    public EleveSuiviDto monSuivi() {
        Long id = AuthContext.userId();
        if (id == null) {
            throw new ResponseStatusException(HttpStatus.UNAUTHORIZED, "Non connecté");
        }
        Utilisateur u = utilisateurs.findById(id)
                .orElseThrow(() -> new ResponseStatusException(HttpStatus.UNAUTHORIZED, "Compte introuvable"));
        List<ActiviteDto> acts = activites.findByUtilisateurIdOrderByCreeLeDesc(id).stream()
                .map(a -> new ActiviteDto(a.getId(), a.getVisiteur(), a.getType(), a.getMatiere(),
                        a.getChapitre(), a.getItem(), a.getLabel(), a.getNote(), a.getCreeLe()))
                .toList();
        return new EleveSuiviDto(
                new UtilisateurDto(u.getId(), u.getEmail(), u.getNom(), u.getRole().name()), acts);
    }
}
