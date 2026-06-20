package ma.chahd.bac.web;

import ma.chahd.bac.domain.Activite;
import ma.chahd.bac.repository.ActiviteRepository;
import ma.chahd.bac.web.dto.ActiviteDto;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.server.ResponseStatusException;

import java.time.Instant;
import java.util.List;

@RestController
@RequestMapping("/api")
public class ActiviteController {

    private final ActiviteRepository repository;
    private final String adminKey;

    public ActiviteController(ActiviteRepository repository,
                              @Value("${app.admin.key:chahd-suivi-dev}") String adminKey) {
        this.repository = repository;
        this.adminKey = adminKey;
    }

    /** Enregistre un événement d'activité (appelé par le navigateur de l'élève). */
    @PostMapping("/activite")
    public void enregistrer(@RequestBody ActiviteDto in) {
        Activite a = new Activite();
        a.setVisiteur(tronquer(in.visiteur(), 64));
        a.setType(in.type() == null ? "ouverture" : tronquer(in.type(), 32));
        a.setMatiere(tronquer(in.matiere(), 64));
        a.setChapitre(tronquer(in.chapitre(), 128));
        a.setItem(tronquer(in.item(), 32));
        a.setLabel(tronquer(in.label(), 255));
        a.setNote(in.note());
        a.setCreeLe(Instant.now());
        repository.save(a);
    }

    /** Fil d'activité récent — réservé au suivi (clé secrète). */
    @GetMapping("/admin/suivi")
    public List<ActiviteDto> suivi(@RequestParam String cle) {
        if (adminKey == null || adminKey.isBlank() || !adminKey.equals(cle)) {
            throw new ResponseStatusException(HttpStatus.FORBIDDEN, "Clé invalide");
        }
        return repository.findTop500ByOrderByCreeLeDesc().stream()
                .map(a -> new ActiviteDto(a.getId(), a.getVisiteur(), a.getType(), a.getMatiere(),
                        a.getChapitre(), a.getItem(), a.getLabel(), a.getNote(), a.getCreeLe()))
                .toList();
    }

    private static String tronquer(String s, int max) {
        if (s == null) return null;
        return s.length() <= max ? s : s.substring(0, max);
    }
}
