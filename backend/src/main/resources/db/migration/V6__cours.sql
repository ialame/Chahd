-- Cours (livre de Mathématiques Terminale) : table des leçons.
-- Le contenu de chaque leçon est servi depuis data/cours/<matiere>/<slug>.md

CREATE TABLE lecon (
    id         BIGINT       NOT NULL AUTO_INCREMENT,
    matiere_id BIGINT       NOT NULL,
    slug       VARCHAR(120) NOT NULL,
    titre      VARCHAR(200) NOT NULL,
    ordre      INT          NOT NULL DEFAULT 0,
    PRIMARY KEY (id),
    UNIQUE KEY uk_lecon_matiere_slug (matiere_id, slug),
    CONSTRAINT fk_lecon_matiere FOREIGN KEY (matiere_id) REFERENCES matiere (id) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Leçons du livre (matiere_id = 1 : Mathématiques), dans l'ordre du livre
INSERT INTO lecon (matiere_id, slug, titre, ordre) VALUES
 (1, 'recurrence-suites',       'Raisonnement par récurrence et suites', 1),
 (1, 'limites-continuite',      'Limites et continuité',                 2),
 (1, 'derivation-convexite',    'Dérivation et convexité',               3),
 (1, 'logarithme',              'Fonction logarithme népérien',          4),
 (1, 'exponentielle',           'Fonction exponentielle',                5),
 (1, 'nombres-complexes',       'Nombres complexes',                     6),
 (1, 'primitives-integration',  'Primitives et calcul intégral',         7),
 (1, 'denombrement',            'Dénombrement',                          8),
 (1, 'geometrie-espace',        'Géométrie dans l''espace',              9),
 (1, 'probabilites',            'Probabilités',                          10);
