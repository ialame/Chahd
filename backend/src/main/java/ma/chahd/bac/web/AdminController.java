package ma.chahd.bac.web;

import ma.chahd.bac.domain.Activite;
import ma.chahd.bac.domain.Role;
import ma.chahd.bac.domain.Utilisateur;
import ma.chahd.bac.repository.ActiviteRepository;
import ma.chahd.bac.repository.UtilisateurRepository;
import ma.chahd.bac.security.AuthContext;
import jakarta.validation.Valid;
import ma.chahd.bac.web.dto.ActiviteDto;
import ma.chahd.bac.web.dto.EleveResumeDto;
import ma.chahd.bac.web.dto.EleveSuiviDto;
import ma.chahd.bac.web.dto.UpdateEleveDto;
import ma.chahd.bac.web.dto.UtilisateurDto;
import org.springframework.http.HttpStatus;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.server.ResponseStatusException;

import java.util.List;

/** Espace admin : liste des élèves et suivi détaillé. Réservé au rôle ADMIN (JWT). */
@RestController
@RequestMapping("/api/admin")
public class AdminController {

    private final UtilisateurRepository utilisateurs;
    private final ActiviteRepository activites;

    public AdminController(UtilisateurRepository utilisateurs, ActiviteRepository activites) {
        this.utilisateurs = utilisateurs;
        this.activites = activites;
    }

    private void exigerAdmin() {
        if (!AuthContext.estAdmin()) {
            throw new ResponseStatusException(HttpStatus.FORBIDDEN, "Accès réservé à l'administrateur.");
        }
    }

    @GetMapping("/eleves")
    public List<EleveResumeDto> eleves() {
        exigerAdmin();
        return utilisateurs.findAllByOrderByCreeLeDesc().stream()
                .filter(u -> u.getRole() == Role.ELEVE)
                .map(u -> new EleveResumeDto(
                        u.getId(), u.getNom(), u.getEmail(), u.getCreeLe(),
                        activites.countByUtilisateurId(u.getId()),
                        activites.findFirstByUtilisateurIdOrderByCreeLeDesc(u.getId())
                                .map(Activite::getCreeLe).orElse(null)))
                .toList();
    }

    @GetMapping("/eleves/{id}/suivi")
    public EleveSuiviDto suiviEleve(@PathVariable Long id) {
        exigerAdmin();
        Utilisateur u = utilisateurs.findById(id)
                .orElseThrow(() -> new ResponseStatusException(HttpStatus.NOT_FOUND, "Élève introuvable"));
        List<ActiviteDto> acts = activites.findByUtilisateurIdOrderByCreeLeDesc(id).stream()
                .map(a -> new ActiviteDto(a.getId(), a.getVisiteur(), a.getType(), a.getMatiere(),
                        a.getChapitre(), a.getItem(), a.getLabel(), a.getNote(), a.getCreeLe()))
                .toList();
        return new EleveSuiviDto(
                new UtilisateurDto(u.getId(), u.getEmail(), u.getNom(), u.getRole().name(),
                        u.getFiliere() != null ? u.getFiliere().getSlug() : null,
                        u.getFiliere() != null ? u.getFiliere().getNom() : null), acts);
    }

    /** Renommer un élève (et éventuellement changer son email). */
    @PutMapping("/eleves/{id}")
    public UtilisateurDto modifier(@PathVariable Long id, @Valid @RequestBody UpdateEleveDto in) {
        exigerAdmin();
        Utilisateur u = utilisateurs.findById(id)
                .orElseThrow(() -> new ResponseStatusException(HttpStatus.NOT_FOUND, "Élève introuvable"));
        u.setNom(in.nom().trim());
        if (in.email() != null && !in.email().isBlank()) {
            String email = in.email().trim().toLowerCase();
            if (!email.equalsIgnoreCase(u.getEmail()) && utilisateurs.existsByEmailIgnoreCase(email)) {
                throw new ResponseStatusException(HttpStatus.CONFLICT, "Cet email est déjà utilisé.");
            }
            u.setEmail(email);
        }
        utilisateurs.save(u);
        return new UtilisateurDto(u.getId(), u.getEmail(), u.getNom(), u.getRole().name(),
                        u.getFiliere() != null ? u.getFiliere().getSlug() : null,
                        u.getFiliere() != null ? u.getFiliere().getNom() : null);
    }

    /** Supprimer un élève et toutes ses activités. Un admin n'est pas supprimable ici. */
    @DeleteMapping("/eleves/{id}")
    @Transactional
    public void supprimer(@PathVariable Long id) {
        exigerAdmin();
        Utilisateur u = utilisateurs.findById(id)
                .orElseThrow(() -> new ResponseStatusException(HttpStatus.NOT_FOUND, "Élève introuvable"));
        if (u.getRole() == Role.ADMIN) {
            throw new ResponseStatusException(HttpStatus.FORBIDDEN, "Impossible de supprimer un administrateur.");
        }
        activites.deleteByUtilisateurId(id);
        utilisateurs.delete(u);
    }
}
