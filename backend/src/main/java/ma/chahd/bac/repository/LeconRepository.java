package ma.chahd.bac.repository;

import ma.chahd.bac.domain.Lecon;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface LeconRepository extends JpaRepository<Lecon, Long> {

    List<Lecon> findByMatiereSlugOrderByOrdreAsc(String matiereSlug);
}
