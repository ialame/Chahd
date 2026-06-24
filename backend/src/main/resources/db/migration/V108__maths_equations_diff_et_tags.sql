-- Maths : ajout du chapitre Équations différentielles (partagé SP + SM) + tag SP des chapitres
-- non évalués à l'examen Sciences Maths (géométrie dans l'espace, dénombrement, probabilités).
SET @m := (SELECT id FROM matiere WHERE slug = 'maths');

-- Insertion après primitives-integration (décale les chapitres suivants).
SET @o := (SELECT ordre FROM lecon WHERE matiere_id = @m AND slug = 'primitives-integration');
UPDATE lecon SET ordre = ordre + 1 WHERE matiere_id = @m AND ordre > @o;
INSERT INTO lecon (matiere_id, slug, titre, ordre) VALUES
 (@m, 'equations-differentielles', 'Les équations différentielles', @o + 1);
-- (pas de tag de filière => chapitre visible par toutes les filières)

-- Réserver à Sciences Physiques (id 1) les chapitres hors examen SM.
INSERT INTO lecon_filiere (lecon_id, filiere_id)
 SELECT l.id, 1 FROM lecon l
 WHERE l.matiere_id = @m AND l.slug IN ('geometrie-espace', 'denombrement', 'probabilites');
