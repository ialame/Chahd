package ma.chahd.bac.service;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import ma.chahd.bac.domain.Lecon;
import ma.chahd.bac.domain.Quiz;
import ma.chahd.bac.repository.LeconRepository;
import ma.chahd.bac.repository.QuizRepository;
import ma.chahd.bac.web.NotFoundException;
import ma.chahd.bac.web.dto.FlashcardDto;
import ma.chahd.bac.web.dto.LeconContenuDto;
import ma.chahd.bac.web.dto.LeconDto;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

/** Cours (livre) : liste les leçons et sert leur contenu Markdown+LaTeX depuis le disque. */
@Service
@Transactional(readOnly = true)
public class CoursService {

    private final LeconRepository leconRepository;
    private final QuizRepository quizRepository;
    private final Path dir;
    private final Path exoDir;
    private final Path probDir;
    private final Path fichesDir;
    private final ObjectMapper mapper = new ObjectMapper();

    public CoursService(LeconRepository leconRepository,
                        QuizRepository quizRepository,
                        @Value("${app.cours.dir:./data/cours/}") String dir,
                        @Value("${app.exercices.dir:./data/exercices/}") String exoDir,
                        @Value("${app.problemes.dir:./data/problemes/}") String probDir,
                        @Value("${app.fiches.dir:./data/fiches/}") String fichesDir) {
        this.leconRepository = leconRepository;
        this.quizRepository = quizRepository;
        this.dir = Paths.get(dir);
        this.exoDir = Paths.get(exoDir);
        this.probDir = Paths.get(probDir);
        this.fichesDir = Paths.get(fichesDir);
    }

    public List<LeconDto> listCours(String matiereSlug) {
        // 1er QCM rattaché à chaque leçon (modèle unifié).
        java.util.Map<Long, Long> quizParLecon = new java.util.HashMap<>();
        for (Quiz q : quizRepository.findByLecon_Matiere_SlugOrderByOrdreAsc(matiereSlug)) {
            if (q.getLecon() != null) quizParLecon.putIfAbsent(q.getLecon().getId(), q.getId());
        }
        return leconRepository.findByMatiereSlugOrderByOrdreAsc(matiereSlug).stream()
                .map(l -> new LeconDto(l.getId(), l.getSlug(), l.getTitre(), l.getOrdre(),
                        Files.isReadable(file(dir, matiereSlug, l.getSlug())),
                        Files.isReadable(file(exoDir, matiereSlug, l.getSlug())),
                        Files.isReadable(file(probDir, matiereSlug, l.getSlug())),
                        Files.isReadable(fichesFile(matiereSlug, l.getSlug())),
                        quizParLecon.get(l.getId())))
                .toList();
    }

    /** Fiches de révision (flashcards Q/R) d'une leçon. */
    public List<FlashcardDto> getFiches(Long id) {
        Lecon lecon = leconRepository.findById(id)
                .orElseThrow(() -> new NotFoundException("Leçon introuvable : " + id));
        Path f = fichesFile(lecon.getMatiere().getSlug(), lecon.getSlug());
        if (!Files.isReadable(f)) {
            throw new NotFoundException("Fiches non disponibles pour la leçon : " + id);
        }
        try {
            return mapper.readValue(Files.readAllBytes(f), new TypeReference<List<FlashcardDto>>() {});
        } catch (IOException e) {
            throw new NotFoundException("Lecture impossible des fiches : " + id);
        }
    }

    private Path fichesFile(String matiereSlug, String leconSlug) {
        return fichesDir.resolve(matiereSlug).resolve(leconSlug + ".json");
    }

    public LeconContenuDto getContenu(Long id) {
        return read(id, dir, "Contenu de cours");
    }

    /** Exercices résolus d'une leçon (livre). */
    public LeconContenuDto getExercices(Long id) {
        return read(id, exoDir, "Exercices");
    }

    /** Problèmes résolus d'une leçon (livre). */
    public LeconContenuDto getProblemes(Long id) {
        return read(id, probDir, "Problèmes");
    }

    private LeconContenuDto read(Long id, Path baseDir, String label) {
        Lecon lecon = leconRepository.findById(id)
                .orElseThrow(() -> new NotFoundException("Leçon introuvable : " + id));
        String matiereSlug = lecon.getMatiere().getSlug();
        Path f = file(baseDir, matiereSlug, lecon.getSlug());
        if (!Files.isReadable(f)) {
            throw new NotFoundException(label + " non disponible pour la leçon : " + id);
        }
        try {
            return new LeconContenuDto(lecon.getId(), lecon.getTitre(), matiereSlug, Files.readString(f));
        } catch (IOException e) {
            throw new NotFoundException("Lecture impossible : " + id);
        }
    }

    private Path file(Path baseDir, String matiereSlug, String leconSlug) {
        return baseDir.resolve(matiereSlug).resolve(leconSlug + ".md");
    }
}
