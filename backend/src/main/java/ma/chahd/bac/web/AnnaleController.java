package ma.chahd.bac.web;

import ma.chahd.bac.service.ContentService;
import ma.chahd.bac.web.dto.AnnaleContenuDto;
import ma.chahd.bac.web.dto.AnnaleDto;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/api/annales")
public class AnnaleController {

    private final ContentService contentService;

    public AnnaleController(ContentService contentService) {
        this.contentService = contentService;
    }

    @GetMapping
    public List<AnnaleDto> list() {
        return contentService.listAnnales();
    }

    /** Contenu transcrit (Markdown + LaTeX) d'une annale, lorsqu'il est disponible. */
    @GetMapping("/{id}/contenu")
    public AnnaleContenuDto contenu(@PathVariable Long id) {
        return contentService.getAnnaleContenu(id);
    }
}
