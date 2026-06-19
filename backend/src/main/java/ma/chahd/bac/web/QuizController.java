package ma.chahd.bac.web;

import ma.chahd.bac.service.QuizService;
import ma.chahd.bac.web.dto.QuizDto;
import ma.chahd.bac.web.dto.QuizResultDto;
import ma.chahd.bac.web.dto.QuizSubmissionDto;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api/quiz")
public class QuizController {

    private final QuizService quizService;

    public QuizController(QuizService quizService) {
        this.quizService = quizService;
    }

    @GetMapping("/{id}")
    public QuizDto get(@PathVariable Long id) {
        return quizService.getQuiz(id);
    }

    @PostMapping("/{id}/correction")
    public QuizResultDto corriger(@PathVariable Long id, @RequestBody QuizSubmissionDto submission) {
        return quizService.corriger(id, submission);
    }
}
