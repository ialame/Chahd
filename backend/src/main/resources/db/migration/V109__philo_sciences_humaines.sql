-- Philosophie : ajout de la notion العلوم الإنسانية (3e concept de مجزوءة المعرفة).
SET @p := (SELECT id FROM matiere WHERE slug = 'philosophie');

-- Insertion après la-verite, dans le module المعرفة (décale les notions suivantes).
SET @o := (SELECT ordre FROM lecon WHERE matiere_id = @p AND slug = 'la-verite');
UPDATE lecon SET ordre = ordre + 1 WHERE matiere_id = @p AND ordre > @o;
INSERT INTO lecon (matiere_id, slug, titre, ordre) VALUES
 (@p, 'sciences-humaines', 'العلوم الإنسانية', @o + 1);
