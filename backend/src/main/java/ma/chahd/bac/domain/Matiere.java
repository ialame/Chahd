package ma.chahd.bac.domain;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/** Une matière du Bac scientifique (Maths, Physique-Chimie, SVT, ...). */
@Entity
@Table(name = "matiere")
@Getter
@Setter
public class Matiere {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(nullable = false, unique = true, length = 120)
    private String slug;

    @Column(nullable = false, length = 120)
    private String nom;

    /** Coefficient de la matière au Bac (utilisé pour le calcul de moyenne). */
    @Column(nullable = false)
    private Integer coefficient;

    @Column(length = 600)
    private String description;

    /** Code couleur hex pour l'affichage (ex: #2563eb). */
    @Column(length = 16)
    private String couleur;

    /** Nom d'icône / emoji pour l'affichage. */
    @Column(length = 32)
    private String icone;

    @Column(nullable = false)
    private Integer ordre = 0;

    @OneToMany(mappedBy = "matiere", cascade = CascadeType.ALL, orphanRemoval = true)
    @OrderBy("ordre ASC")
    private List<Chapitre> chapitres = new ArrayList<>();

    @OneToMany(mappedBy = "matiere", cascade = CascadeType.ALL, orphanRemoval = true)
    @OrderBy("annee DESC")
    private List<Annale> annales = new ArrayList<>();

    /** Filières où cette matière est enseignée. */
    @ManyToMany(fetch = FetchType.LAZY)
    @JoinTable(name = "matiere_filiere",
            joinColumns = @JoinColumn(name = "matiere_id"),
            inverseJoinColumns = @JoinColumn(name = "filiere_id"))
    private Set<Filiere> filieres = new HashSet<>();
}
