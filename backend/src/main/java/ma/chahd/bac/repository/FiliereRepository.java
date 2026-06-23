package ma.chahd.bac.repository;

import ma.chahd.bac.domain.Filiere;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface FiliereRepository extends JpaRepository<Filiere, Long> {
    Optional<Filiere> findBySlug(String slug);
}
