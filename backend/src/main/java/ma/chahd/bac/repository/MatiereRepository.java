package ma.chahd.bac.repository;

import ma.chahd.bac.domain.Matiere;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;
import java.util.Optional;

public interface MatiereRepository extends JpaRepository<Matiere, Long> {

    List<Matiere> findAllByOrderByOrdreAsc();

    Optional<Matiere> findBySlug(String slug);
}
