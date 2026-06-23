package ma.chahd.bac.domain;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

import java.time.Instant;

/** Une tentative de QCM d'un utilisateur connecté (score persisté). */
@Entity
@Table(name = "quiz_tentative")
@Getter
@Setter
public class QuizTentative {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "utilisateur_id", nullable = false)
    private Long utilisateurId;

    @Column(name = "quiz_id", nullable = false)
    private Long quizId;

    @Column(nullable = false)
    private int score;

    @Column(nullable = false)
    private int total;

    @Column(name = "note_sur_20", nullable = false)
    private double noteSur20;

    @Column(name = "cree_le", nullable = false)
    private Instant creeLe;
}
