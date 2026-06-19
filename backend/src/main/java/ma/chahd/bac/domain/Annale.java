package ma.chahd.bac.domain;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

/** Une annale d'examen : sujet + corrigé d'une session passée. */
@Entity
@Table(name = "annale")
@Getter
@Setter
public class Annale {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "matiere_id", nullable = false)
    private Matiere matiere;

    @Column(nullable = false, length = 200)
    private String titre;

    @Column(nullable = false)
    private Integer annee;

    @Enumerated(EnumType.STRING)
    @Column(nullable = false, length = 20)
    private Session session;

    /** URL du sujet (PDF). */
    @Column(length = 500)
    private String sujetUrl;

    /** URL du corrigé (PDF). */
    @Column(length = 500)
    private String corrigeUrl;
}
