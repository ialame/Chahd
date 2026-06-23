package ma.chahd.bac.web;

import ma.chahd.bac.domain.Utilisateur;
import ma.chahd.bac.repository.ActiviteRepository;
import ma.chahd.bac.repository.UtilisateurRepository;
import ma.chahd.bac.security.AuthContext;
import ma.chahd.bac.service.DashboardService;
import ma.chahd.bac.web.dto.ActiviteDto;
import ma.chahd.bac.web.dto.EleveSuiviDto;
import ma.chahd.bac.web.dto.MarquerLeconDto;
import ma.chahd.bac.web.dto.ProgressionLeconDto;
import ma.chahd.bac.web.dto.TableauBordDto;
import ma.chahd.bac.web.dto.UtilisateurDto;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.server.ResponseStatusException;

import java.util.List;

/** Données de l'utilisateur connecté (sa propre progression). */
@RestController
@RequestMapping("/api/me")
public class MeController {

    private final UtilisateurRepository utilisateurs;
    private final ActiviteRepository activites;
    private final DashboardService dashboard;

    public MeController(UtilisateurRepository utilisateurs, ActiviteRepository activites, DashboardService dashboard) {
        this.utilisateurs = utilisateurs;
        this.activites = activites;
        this.dashboard = dashboard;
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

    /** Tableau de bord agrégé : progression par matière, scores QCM, fiches à réviser. */
    @GetMapping("/tableau-de-bord")
    public TableauBordDto tableauDeBord() {
        return dashboard.tableauDeBord(userId());
    }

    /** Historique des scores de QCM (courbe d'évolution dans le temps). */
    @GetMapping("/historique-scores")
    public List<ma.chahd.bac.web.dto.ScorePointDto> historiqueScores() {
        return dashboard.historiqueScores(userId());
    }

    /** Score moyen par chapitre (répartition en barres). */
    @GetMapping("/scores-par-chapitre")
    public List<ma.chahd.bac.web.dto.ChapitreScoreDto> scoresParChapitre() {
        return dashboard.scoresParChapitre(userId());
    }

    /** États de progression des leçons (LU | A_REVOIR) de l'utilisateur. */
    @GetMapping("/progression")
    public List<ProgressionLeconDto> progression() {
        return dashboard.progressionsLecons(userId());
    }

    /** Marque une leçon : statut LU | A_REVOIR, ou null pour effacer. */
    @PutMapping("/progression/lecon/{leconId}")
    public void marquerLecon(@PathVariable Long leconId, @RequestBody MarquerLeconDto body) {
        dashboard.marquerLecon(userId(), leconId, body == null ? null : body.statut());
    }

    private Long userId() {
        Long id = AuthContext.userId();
        if (id == null) {
            throw new ResponseStatusException(HttpStatus.UNAUTHORIZED, "Non connecté");
        }
        return id;
    }
}
