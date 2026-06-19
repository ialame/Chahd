package ma.chahd.bac.service;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.Optional;

/** Charge les transcriptions LaTeX/Markdown des annales depuis le disque (annale-{id}.md). */
@Service
public class AnnaleContenuService {

    private final Path dir;

    public AnnaleContenuService(@Value("${app.annales.latex-dir:./data/annales-latex/}") String dir) {
        this.dir = Paths.get(dir);
    }

    public boolean hasContenu(Long id) {
        return Files.isReadable(file(id));
    }

    public Optional<String> getContenu(Long id) {
        Path f = file(id);
        if (!Files.isReadable(f)) return Optional.empty();
        try {
            return Optional.of(Files.readString(f));
        } catch (IOException e) {
            return Optional.empty();
        }
    }

    private Path file(Long id) {
        return dir.resolve("annale-" + id + ".md");
    }
}
