package ma.chahd.bac.domain;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

/** Filière du tronc scientifique (Sciences Physiques, Sciences Mathématiques). */
@Entity
@Table(name = "filiere")
@Getter
@Setter
public class Filiere {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(nullable = false, unique = true, length = 60)
    private String slug;

    @Column(nullable = false, length = 120)
    private String nom;

    @Column(nullable = false)
    private Integer ordre = 0;
}
