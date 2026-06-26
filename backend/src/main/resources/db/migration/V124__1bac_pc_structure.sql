-- 1 Bac — Physique-Chimie (matière partagée SE + SM). ~26 chapitres ; 4 spécifiques
-- Sciences Maths (énergie interne, transfert thermique, champ et énergie électrostatiques)
-- tagués filière 5. SE (filière 4) voit le reste.

INSERT INTO matiere (slug, nom, coefficient, description, couleur, icone, ordre) VALUES
 ('pc-1bac', 'Physique-Chimie', 5, 'Mécanique, magnétisme, optique, chimie des solutions et chimie organique — 1ère année Bac.', '#dc2626', '⚗️', 2);

INSERT INTO matiere_filiere (matiere_id, filiere_id)
 SELECT m.id, f.id FROM matiere m CROSS JOIN filiere f
 WHERE m.slug = 'pc-1bac' AND f.slug IN ('1bac-sciences-experimentales', '1bac-sciences-mathematiques');

SET @m := (SELECT id FROM matiere WHERE slug = 'pc-1bac');
INSERT INTO lecon (matiere_id, slug, titre, ordre) VALUES
 -- Physique
 (@m, 'rotation-solide',                'Rotation d''un solide autour d''un axe fixe',          1),
 (@m, 'travail-puissance',              'Travail et puissance d''une force',                    2),
 (@m, 'travail-energie-cinetique',      'Travail et énergie cinétique',                         3),
 (@m, 'energie-potentielle-mecanique',  'Énergie potentielle de pesanteur et énergie mécanique', 4),
 (@m, 'energie-interne',                'Travail et énergie interne',                           5),
 (@m, 'transfert-thermique',            'Énergie thermique et transfert thermique',             6),
 (@m, 'champ-magnetique',               'Le champ magnétique',                                  7),
 (@m, 'champ-magnetique-courant',       'Le champ magnétique créé par un courant',              8),
 (@m, 'forces-laplace',                 'Les forces électromagnétiques — loi de Laplace',       9),
 (@m, 'conditions-visibilite',          'Les conditions de visibilité d''un objet',            10),
 (@m, 'miroir-plan',                    'Les images formées par un miroir plan',               11),
 (@m, 'lentille-convergente',           'Les images formées par une lentille convergente',     12),
 (@m, 'champ-electrostatique',          'Le champ électrostatique',                            13),
 (@m, 'energie-potentielle-electrique', 'Énergie potentielle électrostatique',                14),
 -- Chimie
 (@m, 'mesure-en-chimie',               'L''importance de la mesure en chimie',                15),
 (@m, 'quantite-de-matiere',            'Grandeurs liées à la quantité de matière',            16),
 (@m, 'solutions-electrolytiques',      'Solutions électrolytiques et concentrations',         17),
 (@m, 'suivi-transformation',           'Suivi temporel d''une transformation chimique',       18),
 (@m, 'conductimetrie',                 'Mesure de quantités de matière par conductimétrie',   19),
 (@m, 'acido-basiques',                 'Les réactions acido-basiques',                        20),
 (@m, 'oxydoreduction',                 'Les réactions d''oxydo-réduction',                    21),
 (@m, 'dosages-directs',                'Les dosages (titrages) directs',                      22),
 -- Chimie organique
 (@m, 'squelettes-carbones',            'La chimie organique et les squelettes carbonés',      23),
 (@m, 'modification-squelette',         'Modification du squelette carboné',                   24),
 (@m, 'groupes-caracteristiques',       'Les groupes caractéristiques',                        25),
 (@m, 'reactivite-alcools',             'La réactivité des alcools',                           26);

-- Chapitres spécifiques Sciences Maths (filière 5)
INSERT INTO lecon_filiere (lecon_id, filiere_id)
 SELECT l.id, 5 FROM lecon l
 WHERE l.matiere_id = @m
   AND l.slug IN ('energie-interne','transfert-thermique','champ-electrostatique','energie-potentielle-electrique');
