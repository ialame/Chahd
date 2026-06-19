package ma.chahd.bac.repository;

import ma.chahd.bac.domain.Chapitre;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface ChapitreRepository extends JpaRepository<Chapitre, Long> {

    Optional<Chapitre> findByMatiereSlugAndSlug(String matiereSlug, String slug);
}
