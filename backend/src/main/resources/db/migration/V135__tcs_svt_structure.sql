-- Tronc Commun Sciences — SVT. 11 chapitres : écologie (techniques d'étude, facteurs
-- édaphiques/climatiques, flux de matière/énergie, équilibres naturels) + biologie
-- végétale (reproduction sexuée/asexuée, cycles, modification génétique, classification).
-- Filière unique TCS (id 6).

INSERT INTO matiere (slug, nom, coefficient, description, couleur, icone, ordre) VALUES
 ('svt-tcs', 'SVT', 3, 'Écologie (étude du milieu, facteurs, écosystèmes, équilibres naturels) et biologie végétale (reproduction, cycles, classification des plantes) — Tronc Commun Sciences.', '#16a34a', '🧬', 3);

INSERT INTO matiere_filiere (matiere_id, filiere_id)
 SELECT m.id, 6 FROM matiere m WHERE m.slug = 'svt-tcs';

SET @m := (SELECT id FROM matiere WHERE slug = 'svt-tcs');
INSERT INTO lecon (matiere_id, slug, titre, ordre) VALUES
 -- Écologie
 (@m, 'techniques-etude-ecologique',     'Les techniques d''étude écologique sur le terrain',   1),
 (@m, 'facteurs-edaphiques',             'Les facteurs édaphiques et les êtres vivants',         2),
 (@m, 'facteurs-climatiques',            'Les facteurs climatiques et les êtres vivants',        3),
 (@m, 'flux-matiere-energie',            'Le flux de matière et d''énergie dans l''écosystème', 4),
 (@m, 'equilibres-naturels',             'Les équilibres naturels',                              5),
 -- Biologie végétale : reproduction et classification
 (@m, 'reproduction-plantes-fleurs',     'La reproduction sexuée chez les plantes à fleurs',     6),
 (@m, 'reproduction-plantes-sans-fleurs','La reproduction sexuée chez les plantes sans fleurs',  7),
 (@m, 'cycles-developpement',            'Les cycles de développement des plantes',              8),
 (@m, 'reproduction-asexuee',            'La reproduction asexuée chez les plantes',             9),
 (@m, 'modification-genetique-plantes',  'La modification génétique des plantes',               10),
 (@m, 'classification-plantes',          'La classification des plantes',                       11);
