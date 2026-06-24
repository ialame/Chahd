-- Anglais : ajout des compétences évaluées à l'examen mais non couvertes (commun à toutes filières).
SET @a := (SELECT id FROM matiere WHERE slug = 'anglais');
SET @o := (SELECT MAX(ordre) FROM lecon WHERE matiere_id = @a);

INSERT INTO lecon (matiere_id, slug, titre, ordre) VALUES
 (@a, 'word-formation',     'Word Formation', @o + 1),
 (@a, 'language-functions', 'Language Functions', @o + 2),
 (@a, 'writing-skills',     'Writing Skills', @o + 3);
