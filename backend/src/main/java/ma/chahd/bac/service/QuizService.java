package ma.chahd.bac.service;

import ma.chahd.bac.domain.Question;
import ma.chahd.bac.domain.Quiz;
import ma.chahd.bac.repository.QuizRepository;
import ma.chahd.bac.web.NotFoundException;
import ma.chahd.bac.web.dto.*;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Service
@Transactional(readOnly = true)
public class QuizService {

    private final QuizRepository quizRepository;
    private final DtoMapper mapper;

    public QuizService(QuizRepository quizRepository, DtoMapper mapper) {
        this.quizRepository = quizRepository;
        this.mapper = mapper;
    }

    public QuizDto getQuiz(Long id) {
        return quizRepository.findById(id)
                .map(mapper::toQuizDto)
                .orElseThrow(() -> new NotFoundException("Quiz introuvable : " + id));
    }

    /** Corrige les réponses de l'élève et calcule le score. */
    public QuizResultDto corriger(Long quizId, QuizSubmissionDto submission) {
        Quiz quiz = quizRepository.findById(quizId)
                .orElseThrow(() -> new NotFoundException("Quiz introuvable : " + quizId));

        var reponses = submission.reponses() != null ? submission.reponses() : java.util.Map.<Long, List<Long>>of();
        List<QuestionResultDto> details = new ArrayList<>();
        int score = 0;

        for (Question question : quiz.getQuestions()) {
            Set<Long> bonsChoix = new HashSet<>();
            for (var choix : question.getChoix()) {
                if (choix.isCorrect()) {
                    bonsChoix.add(choix.getId());
                }
            }

            List<Long> selectionListe = reponses.getOrDefault(question.getId(), List.of());
            Set<Long> selection = new HashSet<>(selectionListe);

            boolean correcte = selection.equals(bonsChoix);
            if (correcte) {
                score++;
            }

            details.add(new QuestionResultDto(
                    question.getId(), correcte,
                    new ArrayList<>(bonsChoix), new ArrayList<>(selection),
                    question.getExplication()));
        }

        int total = quiz.getQuestions().size();
        double noteSur20 = total == 0 ? 0.0 : Math.round((score * 20.0 / total) * 100.0) / 100.0;
        return new QuizResultDto(quizId, score, total, noteSur20, details);
    }
}
