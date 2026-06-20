package ma.chahd.bac.domain;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

import java.time.Instant;

/** Un événement d'activité d'un visiteur (ouverture de contenu ou QCM validé). */
@Entity
@Table(name = "activite")
@Getter
@Setter
public class Activite {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(length = 64)
    private String visiteur;

    @Column(nullable = false, length = 32)
    private String type;

    @Column(length = 64)
    private String matiere;

    @Column(length = 128)
    private String chapitre;

    @Column(length = 32)
    private String item;

    @Column(length = 255)
    private String label;

    private Double note;

    @Column(name = "cree_le", nullable = false)
    private Instant creeLe;
}
