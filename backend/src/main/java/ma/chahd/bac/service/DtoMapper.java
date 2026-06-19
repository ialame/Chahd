package ma.chahd.bac.service;

import ma.chahd.bac.domain.*;
import ma.chahd.bac.web.dto.*;
import org.springframework.stereotype.Component;

import java.util.List;

/** Conversion des entités JPA vers les DTO exposés par l'API. */
@Component
public class DtoMapper {

    private final AnnaleContenuService annaleContenuService;

    public DtoMapper(AnnaleContenuService annaleContenuService) {
        this.annaleContenuService = annaleContenuService;
    }

    public MatiereDto toMatiereDto(Matiere m) {
        return new MatiereDto(m.getId(), m.getSlug(), m.getNom(), m.getCoefficient(),
                m.getDescription(), m.getCouleur(), m.getIcone(), m.getOrdre(),
                m.getChapitres().size());
    }

    public MatiereDetailDto toMatiereDetailDto(Matiere m) {
        List<ChapitreSummaryDto> chapitres = m.getChapitres().stream()
                .map(this::toChapitreSummaryDto).toList();
        List<AnnaleDto> annales = m.getAnnales().stream()
                .map(this::toAnnaleDto).toList();
        return new MatiereDetailDto(m.getId(), m.getSlug(), m.getNom(), m.getCoefficient(),
                m.getDescription(), m.getCouleur(), m.getIcone(), chapitres, annales);
    }

    public ChapitreSummaryDto toChapitreSummaryDto(Chapitre c) {
        return new ChapitreSummaryDto(c.getId(), c.getSlug(), c.getTitre(), c.getResume(),
                c.getOrdre(), c.getFiches().size(), c.getQuizzes().size());
    }

    public ChapitreDetailDto toChapitreDetailDto(Chapitre c) {
        List<FicheDto> fiches = c.getFiches().stream().map(this::toFicheDto).toList();
        List<QuizSummaryDto> quizzes = c.getQuizzes().stream().map(this::toQuizSummaryDto).toList();
        Matiere m = c.getMatiere();
        return new ChapitreDetailDto(c.getId(), c.getSlug(), c.getTitre(), c.getResume(), c.getOrdre(),
                m.getSlug(), m.getNom(), m.getCouleur(), fiches, quizzes);
    }

    public FicheDto toFicheDto(Fiche f) {
        return new FicheDto(f.getId(), f.getTitre(), f.getContenu(), f.getOrdre());
    }

    public QuizSummaryDto toQuizSummaryDto(Quiz q) {
        return new QuizSummaryDto(q.getId(), q.getTitre(), q.getDescription(), q.getQuestions().size());
    }

    /** Quiz à passer : on n'expose pas le drapeau "correct" des choix. */
    public QuizDto toQuizDto(Quiz q) {
        List<QuestionDto> questions = q.getQuestions().stream()
                .map(question -> new QuestionDto(
                        question.getId(), question.getEnonce(), question.getOrdre(),
                        question.getChoix().stream()
                                .map(ch -> new ChoixDto(ch.getId(), ch.getTexte(), ch.getOrdre()))
                                .toList()))
                .toList();
        return new QuizDto(q.getId(), q.getTitre(), q.getDescription(), questions);
    }

    public AnnaleDto toAnnaleDto(Annale a) {
        return new AnnaleDto(a.getId(), a.getTitre(), a.getAnnee(), a.getSession().name(),
                a.getSujetUrl(), a.getCorrigeUrl(),
                a.getMatiere().getSlug(), a.getMatiere().getNom(),
                annaleContenuService.hasContenu(a.getId()));
    }
}
