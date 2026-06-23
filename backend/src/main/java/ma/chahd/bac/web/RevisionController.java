package ma.chahd.bac.web;

import ma.chahd.bac.security.AuthContext;
import ma.chahd.bac.service.RevisionService;
import ma.chahd.bac.web.dto.NotationDto;
import ma.chahd.bac.web.dto.NotationResultatDto;
import ma.chahd.bac.web.dto.RevisionCarteDto;
import ma.chahd.bac.web.dto.RevisionStatsDto;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.server.ResponseStatusException;

import java.util.List;

/** Révision espacée des fiches (SM-2). */
@RestController
@RequestMapping("/api/revision")
public class RevisionController {

    private final RevisionService revision;

    public RevisionController(RevisionService revision) {
        this.revision = revision;
    }

    /** Toutes les fiches dont l'échéance est atteinte aujourd'hui. */
    @GetMapping("/du-jour")
    public List<RevisionCarteDto> duJour() {
        return revision.fileDuJour(userId());
    }

    /** Les fiches d'une leçon avec leur statut (NOUVELLE | DUE | PLANIFIEE). */
    @GetMapping("/lecon/{leconId}")
    public List<RevisionCarteDto> lecon(@PathVariable Long leconId) {
        return revision.queueLecon(userId(), leconId);
    }

    /** Note une fiche (qualité du rappel 0..5) et planifie la prochaine révision. */
    @PostMapping("/noter")
    public NotationResultatDto noter(@RequestBody NotationDto notation) {
        return revision.noter(userId(), notation);
    }

    @GetMapping("/stats")
    public RevisionStatsDto stats() {
        return revision.stats(userId());
    }

    private Long userId() {
        Long id = AuthContext.userId();
        if (id == null) {
            throw new ResponseStatusException(HttpStatus.UNAUTHORIZED, "Non connecté");
        }
        return id;
    }
}
