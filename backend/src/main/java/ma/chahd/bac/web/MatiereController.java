package ma.chahd.bac.web;

import ma.chahd.bac.repository.UtilisateurRepository;
import ma.chahd.bac.security.AuthContext;
import ma.chahd.bac.service.ContentService;
import ma.chahd.bac.web.dto.AnnaleDto;
import ma.chahd.bac.web.dto.MatiereDetailDto;
import ma.chahd.bac.web.dto.MatiereDto;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/matieres")
public class MatiereController {

    private final ContentService contentService;
    private final UtilisateurRepository utilisateurRepository;

    public MatiereController(ContentService contentService, UtilisateurRepository utilisateurRepository) {
        this.contentService = contentService;
        this.utilisateurRepository = utilisateurRepository;
    }

    /** Filière du compte connecté (null si non connecté → toutes les matières). */
    private String filiereCourante() {
        Long id = AuthContext.userId();
        if (id == null) return null;
        return utilisateurRepository.findById(id)
                .map(u -> u.getFiliere() != null ? u.getFiliere().getSlug() : null)
                .orElse(null);
    }

    @GetMapping
    public List<MatiereDto> list() {
        return contentService.listMatieres(filiereCourante());
    }

    @GetMapping("/{slug}")
    public MatiereDetailDto get(@PathVariable String slug) {
        return contentService.getMatiere(slug, filiereCourante());
    }

    @GetMapping("/{slug}/annales")
    public List<AnnaleDto> annales(@PathVariable String slug) {
        return contentService.listAnnalesByMatiere(slug, filiereCourante());
    }
}
