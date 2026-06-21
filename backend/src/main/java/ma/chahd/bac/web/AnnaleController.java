package ma.chahd.bac.web;

import ma.chahd.bac.service.AnnaleContenuService;
import ma.chahd.bac.service.ContentService;
import ma.chahd.bac.web.dto.AnnaleContenuDto;
import ma.chahd.bac.web.dto.AnnaleDto;
import org.springframework.core.io.FileSystemResource;
import org.springframework.core.io.Resource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.server.ResponseStatusException;

import java.nio.file.Files;
import java.nio.file.Path;
import java.util.List;

@RestController
@RequestMapping("/api/annales")
public class AnnaleController {

    private final ContentService contentService;
    private final AnnaleContenuService annaleContenuService;

    public AnnaleController(ContentService contentService, AnnaleContenuService annaleContenuService) {
        this.contentService = contentService;
        this.annaleContenuService = annaleContenuService;
    }

    @GetMapping
    public List<AnnaleDto> list() {
        return contentService.listAnnales();
    }

    /** Contenu transcrit (Markdown + LaTeX) d'une annale, lorsqu'il est disponible. */
    @GetMapping("/{id}/contenu")
    public AnnaleContenuDto contenu(@PathVariable Long id) {
        return contentService.getAnnaleContenu(id);
    }

    /** PDF original du sujet (affiché inline pour visualisation/impression). */
    @GetMapping("/{id}/sujet.pdf")
    public ResponseEntity<Resource> sujetPdf(@PathVariable Long id) {
        Path pdf = annaleContenuService.sujetPdf(id);
        if (!Files.isReadable(pdf)) {
            throw new ResponseStatusException(HttpStatus.NOT_FOUND, "PDF indisponible pour l'annale " + id);
        }
        // « inline » sans filename : on évite que le navigateur traite le PDF
        // comme un téléchargement (confirmation / fenêtre séparée).
        return ResponseEntity.ok()
                .contentType(MediaType.APPLICATION_PDF)
                .header(HttpHeaders.CONTENT_DISPOSITION, "inline")
                .header(HttpHeaders.CACHE_CONTROL, "public, max-age=86400")
                .body(new FileSystemResource(pdf));
    }
}
