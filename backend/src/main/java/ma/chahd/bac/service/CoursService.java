package ma.chahd.bac.service;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import ma.chahd.bac.domain.Lecon;
import ma.chahd.bac.domain.Quiz;
import ma.chahd.bac.repository.LeconRepository;
import ma.chahd.bac.repository.QuizRepository;
import ma.chahd.bac.web.NotFoundException;
import ma.chahd.bac.web.dto.ExoBacDto;
import ma.chahd.bac.web.dto.FlashcardDto;
import ma.chahd.bac.web.dto.LeconContenuDto;
import ma.chahd.bac.web.dto.LeconDto;
import ma.chahd.bac.web.dto.QuizRefDto;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.Comparator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

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
    private final Path bacDir;
    private final ObjectMapper mapper = new ObjectMapper()
            .configure(com.fasterxml.jackson.databind.DeserializationFeature.FAIL_ON_UNKNOWN_PROPERTIES, false);

    /** Exercices du bac chargés depuis data/bac/<matiere>.json (+ parties-<matiere>.json). */
    private record BacEntry(int annee, String session, String numero, String titre,
                            List<String> chapitres, String enonce, String corrige, boolean extrait) {}
    private final ConcurrentHashMap<String, List<BacEntry>> bacCache = new ConcurrentHashMap<>();

    public CoursService(LeconRepository leconRepository,
                        QuizRepository quizRepository,
                        @Value("${app.cours.dir:./data/cours/}") String dir,
                        @Value("${app.exercices.dir:./data/exercices/}") String exoDir,
                        @Value("${app.problemes.dir:./data/problemes/}") String probDir,
                        @Value("${app.fiches.dir:./data/fiches/}") String fichesDir,
                        @Value("${app.bac.dir:./data/bac/}") String bacDir) {
        this.leconRepository = leconRepository;
        this.quizRepository = quizRepository;
        this.dir = Paths.get(dir);
        this.exoDir = Paths.get(exoDir);
        this.probDir = Paths.get(probDir);
        this.fichesDir = Paths.get(fichesDir);
        this.bacDir = Paths.get(bacDir);
    }

    public List<LeconDto> listCours(String matiereSlug) {
        return listCours(matiereSlug, null);
    }

    /** Une leçon sans tag de filière est visible par tous ; sinon seulement par sa filière. */
    private boolean visiblePour(Lecon l, String filiereSlug) {
        if (l.getFilieres() == null || l.getFilieres().isEmpty() || filiereSlug == null) return true;
        return l.getFilieres().stream().anyMatch(f -> f.getSlug().equals(filiereSlug));
    }

    public List<LeconDto> listCours(String matiereSlug, String filiereSlug) {
        // QCM rattachés à chaque leçon (plusieurs possibles), dans l'ordre.
        java.util.Map<Long, List<QuizRefDto>> quizParLecon = new java.util.HashMap<>();
        for (Quiz q : quizRepository.findByLecon_Matiere_SlugOrderByOrdreAsc(matiereSlug)) {
            if (q.getLecon() != null)
                quizParLecon.computeIfAbsent(q.getLecon().getId(), k -> new java.util.ArrayList<>())
                        .add(new QuizRefDto(q.getId(), q.getTitre()));
        }
        Set<String> bacSlugs = bacChapitres(matiereSlug);
        return leconRepository.findByMatiereSlugOrderByOrdreAsc(matiereSlug).stream()
                .filter(l -> visiblePour(l, filiereSlug))
                .map(l -> {
                    List<QuizRefDto> quizzes = quizParLecon.getOrDefault(l.getId(), List.of());
                    return new LeconDto(l.getId(), l.getSlug(), l.getTitre(), l.getOrdre(),
                            Files.isReadable(file(dir, matiereSlug, l.getSlug())),
                            Files.isReadable(file(exoDir, matiereSlug, l.getSlug())),
                            Files.isReadable(file(probDir, matiereSlug, l.getSlug())),
                            Files.isReadable(fichesFile(matiereSlug, l.getSlug())),
                            quizzes.isEmpty() ? null : quizzes.get(0).id(),
                            bacSlugs.contains(l.getSlug()), quizzes);
                })
                .toList();
    }

    /** Exercices du bac rattachés à une leçon (récents d'abord). */
    public List<ExoBacDto> getBac(Long id) {
        Lecon lecon = leconRepository.findById(id)
                .orElseThrow(() -> new NotFoundException("Leçon introuvable : " + id));
        String slug = lecon.getSlug();
        return bacEntries(lecon.getMatiere().getSlug()).stream()
                .filter(e -> e.chapitres().contains(slug))
                .sorted(Comparator.comparingInt(BacEntry::annee).reversed()
                        .thenComparing(BacEntry::session))
                .map(e -> new ExoBacDto(e.annee(), e.session(), e.numero(), e.titre(),
                        e.enonce(), e.corrige(), e.extrait()))
                .toList();
    }

    private List<BacEntry> bacEntries(String matiereSlug) {
        return bacCache.computeIfAbsent(matiereSlug, m -> {
            List<BacEntry> all = new java.util.ArrayList<>();
            all.addAll(lireBac(bacDir.resolve(m + ".json")));
            all.addAll(lireBac(bacDir.resolve("parties-" + m + ".json")));
            return all;
        });
    }

    private List<BacEntry> lireBac(Path f) {
        if (!Files.isReadable(f)) return List.of();
        try {
            return mapper.readValue(Files.readAllBytes(f), new TypeReference<List<BacEntry>>() {});
        } catch (IOException e) {
            return List.of();
        }
    }

    private Set<String> bacChapitres(String matiereSlug) {
        return bacEntries(matiereSlug).stream()
                .flatMap(e -> e.chapitres().stream())
                .collect(java.util.stream.Collectors.toSet());
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
