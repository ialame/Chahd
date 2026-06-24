-- Tag des annales par filière : annale SANS tag = visible par toutes les filières ;
-- annale taguée = visible seulement par sa/ses filière(s).
CREATE TABLE annale_filiere (
    annale_id  BIGINT NOT NULL,
    filiere_id BIGINT NOT NULL,
    PRIMARY KEY (annale_id, filiere_id),
    CONSTRAINT fk_af_annale  FOREIGN KEY (annale_id)  REFERENCES annale (id)  ON DELETE CASCADE,
    CONSTRAINT fk_af_filiere FOREIGN KEY (filiere_id) REFERENCES filiere (id) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Les annales de Maths et Physique-Chimie actuelles sont les sujets Sciences Physiques.
INSERT INTO annale_filiere (annale_id, filiere_id)
 SELECT a.id, 1 FROM annale a JOIN matiere m ON a.matiere_id = m.id
 WHERE m.slug IN ('maths', 'physique-chimie');
