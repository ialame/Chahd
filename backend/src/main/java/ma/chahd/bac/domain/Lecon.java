package ma.chahd.bac.domain;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

/** Une leçon de cours (chapitre du livre), au contenu Markdown + LaTeX servi depuis le disque. */
@Entity
@Table(name = "lecon", uniqueConstraints = @UniqueConstraint(columnNames = {"matiere_id", "slug"}))
@Getter
@Setter
public class Lecon {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "matiere_id", nullable = false)
    private Matiere matiere;

    @Column(nullable = false, length = 120)
    private String slug;

    @Column(nullable = false, length = 200)
    private String titre;

    @Column(nullable = false)
    private Integer ordre = 0;
}
