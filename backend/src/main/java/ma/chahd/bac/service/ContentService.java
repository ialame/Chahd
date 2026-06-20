package ma.chahd.bac.service;

import ma.chahd.bac.domain.Annale;
import ma.chahd.bac.repository.AnnaleRepository;
import ma.chahd.bac.repository.ChapitreRepository;
import ma.chahd.bac.repository.MatiereRepository;
import ma.chahd.bac.web.NotFoundException;
import ma.chahd.bac.web.dto.*;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional(readOnly = true)
public class ContentService {

    private final MatiereRepository matiereRepository;
    private final ChapitreRepository chapitreRepository;
    private final AnnaleRepository annaleRepository;
    private final AnnaleContenuService annaleContenuService;
    private final DtoMapper mapper;

    public ContentService(MatiereRepository matiereRepository, ChapitreRepository chapitreRepository,
                          AnnaleRepository annaleRepository, AnnaleContenuService annaleContenuService,
                          DtoMapper mapper) {
        this.matiereRepository = matiereRepository;
        this.chapitreRepository = chapitreRepository;
        this.annaleRepository = annaleRepository;
        this.annaleContenuService = annaleContenuService;
        this.mapper = mapper;
    }

    public List<MatiereDto> listMatieres() {
        return matiereRepository.findAllByOrderByOrdreAsc().stream()
                .map(mapper::toMatiereDto).toList();
    }

    public MatiereDetailDto getMatiere(String slug) {
        return matiereRepository.findBySlug(slug)
                .map(mapper::toMatiereDetailDto)
                .orElseThrow(() -> new NotFoundException("Matière introuvable : " + slug));
    }

    public ChapitreDetailDto getChapitre(String matiereSlug, String chapitreSlug) {
        return chapitreRepository.findByMatiereSlugAndSlug(matiereSlug, chapitreSlug)
                .map(mapper::toChapitreDetailDto)
                .orElseThrow(() -> new NotFoundException(
                        "Chapitre introuvable : " + matiereSlug + "/" + chapitreSlug));
    }

    public List<AnnaleDto> listAnnales() {
        return annaleRepository.findAllByOrderByAnneeDescMatiereOrdreAsc().stream()
                .map(mapper::toAnnaleDto).toList();
    }

    public List<AnnaleDto> listAnnalesByMatiere(String matiereSlug) {
        List<Annale> annales = annaleRepository.findByMatiereSlugOrderByAnneeDesc(matiereSlug);
        return annales.stream().map(mapper::toAnnaleDto).toList();
    }

    public AnnaleContenuDto getAnnaleContenu(Long id) {
        Annale a = annaleRepository.findById(id)
                .orElseThrow(() -> new NotFoundException("Annale introuvable : " + id));
        String sujet = annaleContenuService.getSujet(id).orElse(null);
        String corrige = annaleContenuService.getCorrige(id).orElse(null);
        if (sujet == null && corrige == null) {
            throw new NotFoundException("Aucune transcription disponible pour l'annale : " + id);
        }
        return new AnnaleContenuDto(id, a.getTitre(), a.getSujetUrl(), a.getCorrigeUrl(), sujet, corrige);
    }
}
