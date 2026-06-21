package ma.chahd.bac.service;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.Optional;

/**
 * Charge les transcriptions Markdown des annales depuis le disque.
 * Nouveau format : annale-{id}-sujet.md / annale-{id}-corrige.md
 * Ancien format (repli) : annale-{id}.md (servi comme sujet).
 */
@Service
public class AnnaleContenuService {

    private final Path dir;
    private final Path pdfDir;

    public AnnaleContenuService(@Value("${app.annales.latex-dir:./data/annales-latex/}") String dir,
                                @Value("${app.annales.pdf-dir:./data/annales-pdf/}") String pdfDir) {
        this.dir = Paths.get(dir);
        this.pdfDir = Paths.get(pdfDir);
    }

    public boolean hasContenu(Long id) {
        return Files.isReadable(part(id, "sujet")) || Files.isReadable(legacy(id));
    }

    /** PDF original du sujet, s'il a été déposé. */
    public Path sujetPdf(Long id) {
        return pdfDir.resolve("annale-" + id + "-sujet.pdf");
    }

    public boolean hasSujetPdf(Long id) {
        return Files.isReadable(sujetPdf(id));
    }

    /** Page N (1-indexée) du sujet pré-rendue en PNG. */
    public Path sujetPage(Long id, int n) {
        return pdfDir.resolve("pages").resolve("annale-" + id + "-p" + n + ".png");
    }

    /** Nombre de pages PNG disponibles pour le sujet (0 si aucune). */
    public int sujetPageCount(Long id) {
        int n = 0;
        while (Files.isReadable(sujetPage(id, n + 1))) n++;
        return n;
    }

    public Optional<String> getSujet(Long id) {
        Optional<String> s = read(part(id, "sujet"));
        return s.isPresent() ? s : read(legacy(id));
    }

    public Optional<String> getCorrige(Long id) {
        return read(part(id, "corrige"));
    }

    private Optional<String> read(Path f) {
        if (!Files.isReadable(f)) return Optional.empty();
        try {
            return Optional.of(Files.readString(f));
        } catch (IOException e) {
            return Optional.empty();
        }
    }

    private Path part(Long id, String which) {
        return dir.resolve("annale-" + id + "-" + which + ".md");
    }

    private Path legacy(Long id) {
        return dir.resolve("annale-" + id + ".md");
    }
}
