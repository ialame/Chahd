package ma.chahd.bac.repository;

import ma.chahd.bac.domain.Quiz;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface QuizRepository extends JpaRepository<Quiz, Long> {

    /** QCM rattachés aux leçons d'une matière (modèle unifié). */
    List<Quiz> findByLecon_Matiere_SlugOrderByOrdreAsc(String matiereSlug);
}
