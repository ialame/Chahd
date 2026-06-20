package ma.chahd.bac.domain;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

import java.util.ArrayList;
import java.util.List;

/** Un quiz (QCM) d'entraînement rattaché à un chapitre. */
@Entity
@Table(name = "quiz")
@Getter
@Setter
public class Quiz {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "chapitre_id")
    private Chapitre chapitre;

    /** Leçon (livre) à laquelle le QCM est rattaché — modèle unifié des chapitres. */
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "lecon_id")
    private Lecon lecon;

    @Column(nullable = false, length = 200)
    private String titre;

    @Column(length = 600)
    private String description;

    @Column(nullable = false)
    private Integer ordre = 0;

    @OneToMany(mappedBy = "quiz", cascade = CascadeType.ALL, orphanRemoval = true)
    @OrderBy("ordre ASC")
    private List<Question> questions = new ArrayList<>();
}
