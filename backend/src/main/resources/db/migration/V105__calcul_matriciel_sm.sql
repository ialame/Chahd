-- Calcul matriciel (M2(R)) — outil des exercices de structures algébriques en Sciences Maths.
SET @m := (SELECT id FROM matiere WHERE slug = 'maths');

INSERT INTO lecon (matiere_id, slug, titre, ordre) VALUES
 (@m, 'calcul-matriciel', 'Le calcul matriciel', 14);

INSERT INTO lecon_filiere (lecon_id, filiere_id)
 SELECT l.id, 2 FROM lecon l
 WHERE l.matiere_id = @m AND l.slug = 'calcul-matriciel';
