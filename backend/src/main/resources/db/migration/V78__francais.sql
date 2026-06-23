-- Français : matière déjà seedée (V2, id 4) mais vide. Programme des filières scientifiques :
-- 3 œuvres au programme + méthodologie + figures de style.
UPDATE matiere
   SET couleur = '#ea580c', icone = 'FR',
       description = 'Les trois œuvres au programme, la méthodologie (étude de texte, production écrite) et les figures de style.'
 WHERE slug = 'francais';

SET @f := (SELECT id FROM matiere WHERE slug = 'francais');

INSERT INTO lecon (matiere_id, slug, titre, ordre) VALUES
 (@f, 'boite-a-merveilles',     'La Boîte à merveilles — Ahmed Sefrioui', 1),
 (@f, 'antigone',               'Antigone — Jean Anouilh', 2),
 (@f, 'dernier-jour-condamne',  'Le Dernier Jour d''un condamné — Victor Hugo', 3),
 (@f, 'etude-de-texte',         'Méthodologie : l''étude de texte', 4),
 (@f, 'production-ecrite',      'Méthodologie : la production écrite', 5),
 (@f, 'figures-de-style',       'Les figures de style et les registres', 6);
