package ma.chahd.bac.service;

import ma.chahd.bac.domain.Lecon;
import ma.chahd.bac.repository.LeconRepository;
import ma.chahd.bac.web.NotFoundException;
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
    private final Path dir;
    private final Path exoDir;
    private final Path probDir;

    public CoursService(LeconRepository leconRepository,
                        @Value("${app.cours.dir:./data/cours/}") String dir,
                        @Value("${app.exercices.dir:./data/exercices/}") String exoDir,
                        @Value("${app.problemes.dir:./data/problemes/}") String probDir) {
        this.leconRepository = leconRepository;
        this.dir = Paths.get(dir);
        this.exoDir = Paths.get(exoDir);
        this.probDir = Paths.get(probDir);
    }

    public List<LeconDto> listCours(String matiereSlug) {
        return leconRepository.findByMatiereSlugOrderByOrdreAsc(matiereSlug).stream()
                .map(l -> new LeconDto(l.getId(), l.getSlug(), l.getTitre(), l.getOrdre(),
                        Files.isReadable(file(dir, matiereSlug, l.getSlug())),
                        Files.isReadable(file(exoDir, matiereSlug, l.getSlug())),
                        Files.isReadable(file(probDir, matiereSlug, l.getSlug()))))
                .toList();
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
