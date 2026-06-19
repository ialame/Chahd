package ma.chahd.bac.web;

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

    public MatiereController(ContentService contentService) {
        this.contentService = contentService;
    }

    @GetMapping
    public List<MatiereDto> list() {
        return contentService.listMatieres();
    }

    @GetMapping("/{slug}")
    public MatiereDetailDto get(@PathVariable String slug) {
        return contentService.getMatiere(slug);
    }

    @GetMapping("/{slug}/annales")
    public List<AnnaleDto> annales(@PathVariable String slug) {
        return contentService.listAnnalesByMatiere(slug);
    }
}
