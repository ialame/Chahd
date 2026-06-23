package ma.chahd.bac.repository;

import ma.chahd.bac.domain.QuizTentative;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface QuizTentativeRepository extends JpaRepository<QuizTentative, Long> {

    List<QuizTentative> findByUtilisateurIdOrderByCreeLeDesc(Long utilisateurId);

    List<QuizTentative> findByUtilisateurId(Long utilisateurId);

    void deleteByUtilisateurId(Long utilisateurId);
}
