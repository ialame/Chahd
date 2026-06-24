package ma.chahd.bac.domain;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

import java.util.HashSet;
import java.util.Set;

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

    /** Filières où cette annale apparaît. Vide = visible par toutes les filières. */
    @ManyToMany(fetch = FetchType.EAGER)
    @JoinTable(name = "annale_filiere",
            joinColumns = @JoinColumn(name = "annale_id"),
            inverseJoinColumns = @JoinColumn(name = "filiere_id"))
    private Set<Filiere> filieres = new HashSet<>();
}
