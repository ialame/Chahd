-- Chapitre d'approfondissement des nombres complexes, propre au programme Sciences Mathématiques.
SET @m := (SELECT id FROM matiere WHERE slug = 'maths');

INSERT INTO lecon (matiere_id, slug, titre, ordre) VALUES
 (@m, 'nombres-complexes-sm', 'Les nombres complexes (approfondissement)', 13);

INSERT INTO lecon_filiere (lecon_id, filiere_id)
 SELECT l.id, 2 FROM lecon l
 WHERE l.matiere_id = @m AND l.slug = 'nombres-complexes-sm';
