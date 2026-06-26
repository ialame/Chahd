-- 1 Bac — SVT (matière partagée SE + SM, les deux filières étudient la SVT en 1 Bac).
-- 12 chapitres : géologie (phénomènes externes) + biologie (matière organique végétale,
-- communication hormonale/nerveuse, intégration neuro-hormonale). Tous communs.

INSERT INTO matiere (slug, nom, coefficient, description, couleur, icone, ordre) VALUES
 ('svt-1bac', 'SVT', 3, 'Géologie (sédimentation, stratigraphie), nutrition et photosynthèse des plantes, communication hormonale et nerveuse — 1ère année Bac.', '#16a34a', '🧬', 3);

INSERT INTO matiere_filiere (matiere_id, filiere_id)
 SELECT m.id, f.id FROM matiere m CROSS JOIN filiere f
 WHERE m.slug = 'svt-1bac' AND f.slug IN ('1bac-sciences-experimentales', '1bac-sciences-mathematiques');

SET @m := (SELECT id FROM matiere WHERE slug = 'svt-1bac');
INSERT INTO lecon (matiere_id, slug, titre, ordre) VALUES
 -- Géologie : phénomènes géologiques externes
 (@m, 'sedimentation-milieux',        'La sédimentation et les milieux sédimentaires',          1),
 (@m, 'etude-sediments',              'Intérêt et méthodes d''étude des sédiments',             2),
 (@m, 'principes-stratigraphiques',   'Les principes stratigraphiques et l''échelle stratigraphique', 3),
 (@m, 'carte-geologique',             'La carte géologique et la reconstitution de l''histoire géologique', 4),
 -- Biologie : production de la matière organique et flux d'énergie
 (@m, 'absorption-eau-sels',          'L''absorption de l''eau et des sels minéraux chez les plantes', 5),
 (@m, 'echanges-gazeux-chlorophylliens', 'Les échanges gazeux chlorophylliens',                 6),
 (@m, 'photosynthese',                'La photosynthèse et la production de la matière organique', 7),
 (@m, 'echanges-plantes-sol',         'Les échanges entre les plantes et le milieu',            8),
 -- Communication et intégration neuro-hormonale
 (@m, 'communication-hormonale',      'La communication hormonale et la régulation de la glycémie', 9),
 (@m, 'communication-nerveuse',       'La communication nerveuse',                             10),
 (@m, 'regulation-reproduction',      'La régulation de la fonction de reproduction',          11),
 (@m, 'regulation-pression-arterielle', 'La régulation de la pression artérielle',             12);
