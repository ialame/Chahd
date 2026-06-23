-- Ossature des chapitres de SVT (2 Bac Sciences Physiques). Contenu rempli ensuite.
SET @m := (SELECT id FROM matiere WHERE slug = 'svt');

INSERT INTO lecon (matiere_id, slug, titre, ordre) VALUES
 -- Biologie — Métabolisme et énergie
 (@m, 'liberation-energie',            'La libération de l''énergie (respiration et fermentation)', 1),
 (@m, 'muscle-conversion-energie',     'Le muscle squelettique et la conversion d''énergie', 2),
 -- Génétique moléculaire
 (@m, 'adn-replication',               'L''ADN, support de l''information génétique', 3),
 (@m, 'expression-genetique',          'L''expression de l''information génétique', 4),
 -- Génétique formelle et humaine
 (@m, 'meiose-brassage',               'La méiose et le brassage génétique', 5),
 (@m, 'lois-mendel',                   'Les lois de la transmission des caractères', 6),
 (@m, 'heredite-humaine',              'La génétique humaine', 7),
 -- Géologie
 (@m, 'tectonique-plaques',            'La tectonique des plaques', 8),
 (@m, 'deformations-chaines-montagnes','Déformations tectoniques et chaînes de montagnes', 9),
 (@m, 'metamorphisme',                 'Le métamorphisme', 10),
 (@m, 'magmatisme',                    'Le magmatisme et la granitisation', 11);
