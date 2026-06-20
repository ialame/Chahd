package ma.chahd.bac.repository;

import ma.chahd.bac.domain.Activite;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface ActiviteRepository extends JpaRepository<Activite, Long> {

    List<Activite> findTop500ByOrderByCreeLeDesc();
}
