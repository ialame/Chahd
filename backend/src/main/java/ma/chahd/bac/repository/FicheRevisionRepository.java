package ma.chahd.bac.repository;

import ma.chahd.bac.domain.FicheRevision;
import org.springframework.data.jpa.repository.JpaRepository;

import java.time.LocalDate;
import java.util.List;
import java.util.Optional;

public interface FicheRevisionRepository extends JpaRepository<FicheRevision, Long> {

    Optional<FicheRevision> findByUtilisateurIdAndLeconIdAndFicheIndex(Long utilisateurId, Long leconId, int ficheIndex);

    List<FicheRevision> findByUtilisateurIdAndLeconId(Long utilisateurId, Long leconId);

    List<FicheRevision> findByUtilisateurId(Long utilisateurId);

    List<FicheRevision> findByUtilisateurIdAndProchaineRevisionLessThanEqualOrderByProchaineRevisionAsc(Long utilisateurId, LocalDate date);

    long countByUtilisateurIdAndProchaineRevisionLessThanEqual(Long utilisateurId, LocalDate date);

    long countByUtilisateurId(Long utilisateurId);

    void deleteByUtilisateurId(Long utilisateurId);
}
