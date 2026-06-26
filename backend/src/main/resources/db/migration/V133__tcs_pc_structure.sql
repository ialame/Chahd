-- Tronc Commun Sciences — Physique-Chimie. 23 chapitres : mécanique (gravitation,
-- forces, équilibres) + électricité (courant, tension, dipôles) + chimie (espèces,
-- atome, mole, transformations). Filière unique TCS (id 6).

INSERT INTO matiere (slug, nom, coefficient, description, couleur, icone, ordre) VALUES
 ('pc-tcs', 'Physique-Chimie', 5, 'Mécanique (forces, équilibres), électricité (courant, tension, dipôles) et chimie (espèces, atome, mole) — Tronc Commun Sciences.', '#dc2626', '⚗️', 2);

INSERT INTO matiere_filiere (matiere_id, filiere_id)
 SELECT m.id, 6 FROM matiere m WHERE m.slug = 'pc-tcs';

SET @m := (SELECT id FROM matiere WHERE slug = 'pc-tcs');
INSERT INTO lecon (matiere_id, slug, titre, ordre) VALUES
 -- Physique : mécanique
 (@m, 'gravitation-universelle',     'La gravitation universelle',                          1),
 (@m, 'actions-mecaniques',          'Exemples d''actions mécaniques',                      2),
 (@m, 'mouvement',                   'Le mouvement',                                         3),
 (@m, 'principe-inertie',            'Le principe d''inertie',                              4),
 (@m, 'equilibre-deux-forces',       'Équilibre d''un corps sous l''action de deux forces', 5),
 (@m, 'equilibre-trois-forces',      'Équilibre d''un corps sous l''action de trois forces', 6),
 (@m, 'equilibre-rotation',          'Équilibre d''un solide en rotation autour d''un axe fixe', 7),
 -- Physique : électricité
 (@m, 'courant-continu',             'Le courant électrique continu',                        8),
 (@m, 'tension-electrique',          'La tension électrique',                                9),
 (@m, 'association-conducteurs',     'L''association des conducteurs ohmiques',            10),
 (@m, 'dipoles-passifs',             'Caractéristiques de quelques dipôles passifs',        11),
 (@m, 'dipole-actif',                'Caractéristique d''un dipôle actif',                  12),
 (@m, 'transistor',                  'Le transistor bipolaire',                             13),
 (@m, 'amplificateur-operationnel',  'L''amplificateur opérationnel',                      14),
 -- Chimie
 (@m, 'especes-chimiques',           'Les espèces chimiques',                               15),
 (@m, 'extraction-separation',       'Extraction, séparation et identification des espèces', 16),
 (@m, 'synthese-especes',            'La synthèse des espèces chimiques',                   17),
 (@m, 'modele-atome',                'Le modèle de l''atome',                              18),
 (@m, 'geometrie-molecules',         'La géométrie de quelques molécules',                  19),
 (@m, 'classification-periodique',   'La classification périodique des éléments',           20),
 (@m, 'la-mole',                     'La mole, unité de quantité de matière',               21),
 (@m, 'concentration-molaire',       'La concentration molaire',                            22),
 (@m, 'transformations-chimiques',   'Modélisation des transformations chimiques et bilan de matière', 23);
