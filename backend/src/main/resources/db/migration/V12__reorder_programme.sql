-- Alignement sur le programme officiel : réordonnancement + renommage des
-- chapitres Maths (les slugs restent inchangés -> fichiers de contenu intacts).
-- Ordre : Analyse (1-6), Nombres complexes (7), Géométrie (8),
-- puis Dénombrement (9) et Probabilités (10) conservés en fin (hors liste fournie).
SET @maths := (SELECT id FROM matiere WHERE slug = 'maths');

UPDATE lecon SET ordre = 1,  titre = 'Limites et continuité'                WHERE matiere_id = @maths AND slug = 'limites-continuite';
UPDATE lecon SET ordre = 2,  titre = 'Dérivation et étude de fonctions'     WHERE matiere_id = @maths AND slug = 'derivation-convexite';
UPDATE lecon SET ordre = 3,  titre = 'Suites numériques'                    WHERE matiere_id = @maths AND slug = 'recurrence-suites';
UPDATE lecon SET ordre = 4,  titre = 'Fonctions logarithmes'               WHERE matiere_id = @maths AND slug = 'logarithme';
UPDATE lecon SET ordre = 5,  titre = 'Fonctions exponentielles'           WHERE matiere_id = @maths AND slug = 'exponentielle';
UPDATE lecon SET ordre = 6,  titre = 'Primitives et calcul intégral'      WHERE matiere_id = @maths AND slug = 'primitives-integration';
UPDATE lecon SET ordre = 7,  titre = 'Nombres complexes'                   WHERE matiere_id = @maths AND slug = 'nombres-complexes';
UPDATE lecon SET ordre = 8,  titre = 'Géométrie analytique dans l''espace' WHERE matiere_id = @maths AND slug = 'geometrie-espace';
UPDATE lecon SET ordre = 9,  titre = 'Dénombrement'                        WHERE matiere_id = @maths AND slug = 'denombrement';
UPDATE lecon SET ordre = 10, titre = 'Probabilités'                        WHERE matiere_id = @maths AND slug = 'probabilites';
