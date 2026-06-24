-- Tag des leçons par filière : une leçon SANS tag est visible par toutes les filières ;
-- une leçon taguée n'est visible que par les filières listées.
CREATE TABLE lecon_filiere (
    lecon_id   BIGINT NOT NULL,
    filiere_id BIGINT NOT NULL,
    PRIMARY KEY (lecon_id, filiere_id),
    CONSTRAINT fk_lf_lecon   FOREIGN KEY (lecon_id)   REFERENCES lecon (id)   ON DELETE CASCADE,
    CONSTRAINT fk_lf_filiere FOREIGN KEY (filiere_id) REFERENCES filiere (id) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Chapitres de maths propres au programme Sciences Mathématiques.
SET @m := (SELECT id FROM matiere WHERE slug = 'maths');

INSERT INTO lecon (matiere_id, slug, titre, ordre) VALUES
 (@m, 'arithmetique',           'L''arithmétique dans Z', 11),
 (@m, 'structures-algebriques', 'Les structures algébriques', 12);

INSERT INTO lecon_filiere (lecon_id, filiere_id)
 SELECT l.id, 2 FROM lecon l
 WHERE l.matiere_id = @m AND l.slug IN ('arithmetique', 'structures-algebriques');
