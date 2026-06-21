package ma.chahd.bac.repository;

import ma.chahd.bac.domain.Activite;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;
import java.util.Optional;

public interface ActiviteRepository extends JpaRepository<Activite, Long> {

    List<Activite> findTop500ByOrderByCreeLeDesc();

    List<Activite> findByUtilisateurIdOrderByCreeLeDesc(Long utilisateurId);

    long countByUtilisateurId(Long utilisateurId);

    Optional<Activite> findFirstByUtilisateurIdOrderByCreeLeDesc(Long utilisateurId);
}
