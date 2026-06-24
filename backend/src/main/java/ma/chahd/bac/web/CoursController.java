package ma.chahd.bac.web;

import ma.chahd.bac.repository.UtilisateurRepository;
import ma.chahd.bac.security.AuthContext;
import ma.chahd.bac.service.CoursService;
import ma.chahd.bac.web.dto.LeconContenuDto;
import ma.chahd.bac.web.dto.LeconDto;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api")
public class CoursController {

    private final CoursService coursService;
    private final UtilisateurRepository utilisateurRepository;

    public CoursController(CoursService coursService, UtilisateurRepository utilisateurRepository) {
        this.coursService = coursService;
        this.utilisateurRepository = utilisateurRepository;
    }

    /** Filière du compte connecté (null si non connecté → toutes les leçons). */
    private String filiereCourante() {
        Long id = AuthContext.userId();
        if (id == null) return null;
        return utilisateurRepository.findById(id)
                .map(u -> u.getFiliere() != null ? u.getFiliere().getSlug() : null)
                .orElse(null);
    }

    /** Liste des leçons (cours) d'une matière, filtrée par la filière du compte. */
    @GetMapping("/matieres/{slug}/cours")
    public List<LeconDto> list(@PathVariable String slug) {
        return coursService.listCours(slug, filiereCourante());
    }

    /** Contenu Markdown + LaTeX d'une leçon. */
    @GetMapping("/cours/{id}/contenu")
    public LeconContenuDto contenu(@PathVariable Long id) {
        return coursService.getContenu(id);
    }

    /** Exercices résolus d'une leçon (livre). */
    @GetMapping("/cours/{id}/exercices")
    public LeconContenuDto exercices(@PathVariable Long id) {
        return coursService.getExercices(id);
    }

    /** Problèmes résolus d'une leçon (livre). */
    @GetMapping("/cours/{id}/problemes")
    public LeconContenuDto problemes(@PathVariable Long id) {
        return coursService.getProblemes(id);
    }

    /** Fiches de révision (flashcards) d'une leçon (livre). */
    @GetMapping("/cours/{id}/fiches")
    public java.util.List<ma.chahd.bac.web.dto.FlashcardDto> fiches(@PathVariable Long id) {
        return coursService.getFiches(id);
    }

    /** Exercices du bac rattachés à une leçon. */
    @GetMapping("/cours/{id}/bac")
    public java.util.List<ma.chahd.bac.web.dto.ExoBacDto> bac(@PathVariable Long id) {
        return coursService.getBac(id);
    }
}
