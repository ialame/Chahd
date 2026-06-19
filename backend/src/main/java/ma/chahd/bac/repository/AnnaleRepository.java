package ma.chahd.bac.repository;

import ma.chahd.bac.domain.Annale;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface AnnaleRepository extends JpaRepository<Annale, Long> {

    List<Annale> findByMatiereSlugOrderByAnneeDesc(String matiereSlug);

    List<Annale> findAllByOrderByAnneeDescMatiereOrdreAsc();
}
