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

    public CoursService(LeconRepository leconRepository,
                        @Value("${app.cours.dir:./data/cours/}") String dir) {
        this.leconRepository = leconRepository;
        this.dir = Paths.get(dir);
    }

    public List<LeconDto> listCours(String matiereSlug) {
        return leconRepository.findByMatiereSlugOrderByOrdreAsc(matiereSlug).stream()
                .map(l -> new LeconDto(l.getId(), l.getSlug(), l.getTitre(), l.getOrdre(),
                        Files.isReadable(file(matiereSlug, l.getSlug()))))
                .toList();
    }

    public LeconContenuDto getContenu(Long id) {
        Lecon lecon = leconRepository.findById(id)
                .orElseThrow(() -> new NotFoundException("Leçon introuvable : " + id));
        String matiereSlug = lecon.getMatiere().getSlug();
        Path f = file(matiereSlug, lecon.getSlug());
        if (!Files.isReadable(f)) {
            throw new NotFoundException("Contenu de cours non disponible pour la leçon : " + id);
        }
        try {
            return new LeconContenuDto(lecon.getId(), lecon.getTitre(), matiereSlug, Files.readString(f));
        } catch (IOException e) {
            throw new NotFoundException("Lecture impossible du cours : " + id);
        }
    }

    private Path file(String matiereSlug, String leconSlug) {
        return dir.resolve(matiereSlug).resolve(leconSlug + ".md");
    }
}
