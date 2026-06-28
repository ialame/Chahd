package ma.chahd.bac.repository;

import ma.chahd.bac.domain.AxiomProfil;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface AxiomProfilRepository extends JpaRepository<AxiomProfil, Long> {

    Optional<AxiomProfil> findByUtilisateurId(Long utilisateurId);
}
