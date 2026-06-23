-- Filières du tronc scientifique : l'élève choisit, et ne voit que les matières de sa filière.
CREATE TABLE filiere (
    id      BIGINT NOT NULL AUTO_INCREMENT,
    slug    VARCHAR(60)  NOT NULL UNIQUE,
    nom     VARCHAR(120) NOT NULL,
    ordre   INT NOT NULL DEFAULT 0,
    PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO filiere (id, slug, nom, ordre) VALUES
 (1, 'sciences-physiques',     'Sciences Physiques', 1),
 (2, 'sciences-mathematiques', 'Sciences Mathématiques', 2);

-- Matière Informatique (propre à Sciences Math) — vide pour l'instant.
INSERT INTO matiere (slug, nom, coefficient, description, couleur, icone, ordre) VALUES
 ('informatique', 'Informatique', 2, 'Algorithmique et programmation (Python) — filière Sciences Mathématiques.', '#4f46e5', 'IT', 7);

-- Association matière <-> filière.
CREATE TABLE matiere_filiere (
    matiere_id BIGINT NOT NULL,
    filiere_id BIGINT NOT NULL,
    PRIMARY KEY (matiere_id, filiere_id),
    CONSTRAINT fk_mf_matiere FOREIGN KEY (matiere_id) REFERENCES matiere (id) ON DELETE CASCADE,
    CONSTRAINT fk_mf_filiere FOREIGN KEY (filiere_id) REFERENCES filiere (id) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO matiere_filiere (matiere_id, filiere_id)
 SELECT m.id, 1 FROM matiere m
 WHERE m.slug IN ('maths','physique-chimie','svt','anglais','philosophie','francais');
INSERT INTO matiere_filiere (matiere_id, filiere_id)
 SELECT m.id, 2 FROM matiere m
 WHERE m.slug IN ('maths','physique-chimie','informatique','anglais','philosophie','francais');

-- Filière du compte élève (par défaut Sciences Physiques pour les comptes existants).
ALTER TABLE utilisateur ADD COLUMN filiere_id BIGINT NOT NULL DEFAULT 1;
ALTER TABLE utilisateur ADD CONSTRAINT fk_utilisateur_filiere FOREIGN KEY (filiere_id) REFERENCES filiere (id);
