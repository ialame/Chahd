package ma.chahd.bac.domain;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

/** Une fiche de révision (résumé d'un chapitre), contenu en Markdown. */
@Entity
@Table(name = "fiche")
@Getter
@Setter
public class Fiche {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "chapitre_id", nullable = false)
    private Chapitre chapitre;

    @Column(nullable = false, length = 200)
    private String titre;

    /** Contenu Markdown de la fiche. */
    @Lob
    @Column(nullable = false, columnDefinition = "TEXT")
    private String contenu;

    @Column(nullable = false)
    private Integer ordre = 0;
}
