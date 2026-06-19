package ma.chahd.bac.domain;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

/** Un choix de réponse à une question de QCM. */
@Entity
@Table(name = "choix")
@Getter
@Setter
public class Choix {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "question_id", nullable = false)
    private Question question;

    @Column(nullable = false, length = 600)
    private String texte;

    @Column(nullable = false)
    private boolean correct = false;

    @Column(nullable = false)
    private Integer ordre = 0;
}
