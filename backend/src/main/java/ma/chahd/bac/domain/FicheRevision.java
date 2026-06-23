package ma.chahd.bac.domain;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

import java.time.Instant;
import java.time.LocalDate;

/** État de révision espacée (SM-2) d'une fiche, identifiée par (leçon, index dans le JSON). */
@Entity
@Table(name = "fiche_revision",
        uniqueConstraints = @UniqueConstraint(columnNames = {"utilisateur_id", "lecon_id", "fiche_index"}))
@Getter
@Setter
public class FicheRevision {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "utilisateur_id", nullable = false)
    private Long utilisateurId;

    @Column(name = "lecon_id", nullable = false)
    private Long leconId;

    @Column(name = "fiche_index", nullable = false)
    private int ficheIndex;

    @Column(nullable = false)
    private int repetitions;

    /** Intervalle courant en jours. */
    @Column(nullable = false)
    private int intervalle;

    /** Facteur de facilité (ease factor) de l'algorithme SM-2. */
    @Column(nullable = false)
    private double facilite = 2.5;

    @Column(name = "derniere_revision")
    private Instant derniereRevision;

    @Column(name = "prochaine_revision", nullable = false)
    private LocalDate prochaineRevision;
}
