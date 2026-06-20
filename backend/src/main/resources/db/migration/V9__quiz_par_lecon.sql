-- Unification chapitres programme / leçons du livre : les QCM se rattachent
-- désormais aux LEÇONS (et non plus aux « chapitres programme »).
-- Lien additif : on garde chapitre_id (legacy) et on ajoute lecon_id.
ALTER TABLE quiz ADD COLUMN lecon_id BIGINT NULL;
ALTER TABLE quiz ADD CONSTRAINT fk_quiz_lecon FOREIGN KEY (lecon_id) REFERENCES lecon (id);

-- Rattachement des 7 QCM de Maths à la leçon (livre) la plus proche.
SET @maths := (SELECT id FROM matiere WHERE slug = 'maths');
UPDATE quiz SET lecon_id = (SELECT id FROM lecon WHERE matiere_id = @maths AND slug = 'limites-continuite')    WHERE id = 1001;
UPDATE quiz SET lecon_id = (SELECT id FROM lecon WHERE matiere_id = @maths AND slug = 'derivation-convexite')  WHERE id = 1002;
UPDATE quiz SET lecon_id = (SELECT id FROM lecon WHERE matiere_id = @maths AND slug = 'recurrence-suites')     WHERE id = 1003;
UPDATE quiz SET lecon_id = (SELECT id FROM lecon WHERE matiere_id = @maths AND slug = 'logarithme')            WHERE id = 1004;
UPDATE quiz SET lecon_id = (SELECT id FROM lecon WHERE matiere_id = @maths AND slug = 'nombres-complexes')     WHERE id = 1005;
UPDATE quiz SET lecon_id = (SELECT id FROM lecon WHERE matiere_id = @maths AND slug = 'probabilites')          WHERE id = 1006;
UPDATE quiz SET lecon_id = (SELECT id FROM lecon WHERE matiere_id = @maths AND slug = 'primitives-integration') WHERE id = 1007;
