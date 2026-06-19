package ma.chahd.bac.web;

import ma.chahd.bac.service.CoursService;
import ma.chahd.bac.web.dto.LeconContenuDto;
import ma.chahd.bac.web.dto.LeconDto;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api")
public class CoursController {

    private final CoursService coursService;

    public CoursController(CoursService coursService) {
        this.coursService = coursService;
    }

    /** Liste des leçons (cours) d'une matière. */
    @GetMapping("/matieres/{slug}/cours")
    public List<LeconDto> list(@PathVariable String slug) {
        return coursService.listCours(slug);
    }

    /** Contenu Markdown + LaTeX d'une leçon. */
    @GetMapping("/cours/{id}/contenu")
    public LeconContenuDto contenu(@PathVariable Long id) {
        return coursService.getContenu(id);
    }
}
