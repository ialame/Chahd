package ma.chahd.bac.domain;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

import java.time.Instant;

/**
 * Profil persistant du tuteur IA AXIOM pour un élève (progression).
 * L'historique de conversation n'est PAS stocké ici : il vit côté client (mémoire Vue).
 */
@Entity
@Table(name = "axiom_profil")
@Getter
@Setter
public class AxiomProfil {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "utilisateur_id", nullable = false, unique = true)
    private Long utilisateurId;

    @Column(length = 120)
    private String prenom;

    /** Slug de la matière en cours de travail (ex. "maths-1bac"), ou null si non choisie. */
    @Column(length = 120)
    private String matiere;

    @Column(nullable = false)
    private int sessions = 0;

    /** Score de maîtrise estimé, 0 à 100. */
    @Column(nullable = false)
    private int score = 0;

    /** Tableau JSON de chaînes (ex. ["Dérivation","Limites"]). */
    @Column(name = "points_forts", columnDefinition = "TEXT")
    private String pointsForts;

    @Column(name = "points_faibles", columnDefinition = "TEXT")
    private String pointsFaibles;

    @Column(name = "derniere_session")
    private Instant derniereSession;

    @Column(name = "cree_le", insertable = false, updatable = false)
    private Instant creeLe;

    @Column(name = "maj_le", insertable = false, updatable = false)
    private Instant majLe;
}
