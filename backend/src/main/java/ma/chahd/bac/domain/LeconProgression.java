package ma.chahd.bac.domain;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

import java.time.Instant;

/** État de progression d'une leçon pour un utilisateur : « lue » ou « à revoir ». */
@Entity
@Table(name = "lecon_progression",
        uniqueConstraints = @UniqueConstraint(columnNames = {"utilisateur_id", "lecon_id"}))
@Getter
@Setter
public class LeconProgression {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "utilisateur_id", nullable = false)
    private Long utilisateurId;

    @Column(name = "lecon_id", nullable = false)
    private Long leconId;

    /** LU | A_REVOIR */
    @Column(nullable = false, length = 16)
    private String statut;

    @Column(name = "maj_le", nullable = false)
    private Instant majLe;
}
