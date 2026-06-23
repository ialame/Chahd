package ma.chahd.bac.repository;

import ma.chahd.bac.domain.LeconProgression;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;
import java.util.Optional;

public interface LeconProgressionRepository extends JpaRepository<LeconProgression, Long> {

    List<LeconProgression> findByUtilisateurId(Long utilisateurId);

    Optional<LeconProgression> findByUtilisateurIdAndLeconId(Long utilisateurId, Long leconId);

    void deleteByUtilisateurId(Long utilisateurId);
}
