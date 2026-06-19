package ma.chahd.bac.web;

import ma.chahd.bac.service.ContentService;
import ma.chahd.bac.web.dto.ChapitreDetailDto;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api/matieres/{matiereSlug}/chapitres")
public class ChapitreController {

    private final ContentService contentService;

    public ChapitreController(ContentService contentService) {
        this.contentService = contentService;
    }

    @GetMapping("/{chapitreSlug}")
    public ChapitreDetailDto get(@PathVariable String matiereSlug, @PathVariable String chapitreSlug) {
        return contentService.getChapitre(matiereSlug, chapitreSlug);
    }
}
