-- Filières technologiques 2 Bac : STE (Sciences et Technologies Électriques) et
-- STM (Sciences et Technologies Mécaniques). On commence par la matière phare de
-- chacune : Sciences de l'Ingénieur (génie électrique pour STE, génie mécanique pour STM).
-- Distinctes de la SI de SM-B (sciences-ingenieur). Contrôle continu + examen national.

INSERT INTO filiere (id, slug, nom, ordre) VALUES
 (7, 'sciences-technologies-electriques', 'Sciences et Technologies Électriques', 7),
 (8, 'sciences-technologies-mecaniques',  'Sciences et Technologies Mécaniques',  8);

-- ===== SI STE (génie électrique) =====
INSERT INTO matiere (slug, nom, coefficient, description, couleur, icone, ordre) VALUES
 ('si-ste', 'Sciences de l''Ingénieur', 8, 'Génie électrique : énergie (mono/triphasé, transformateurs, moteurs), convertisseurs, traitement du signal (capteurs, AOP, GRAFCET, PIC), transmission — 2ème Bac STE.', '#f59e0b', '⚡', 1);
INSERT INTO matiere_filiere (matiere_id, filiere_id)
 SELECT m.id, 7 FROM matiere m WHERE m.slug = 'si-ste';
SET @e := (SELECT id FROM matiere WHERE slug = 'si-ste');
INSERT INTO lecon (matiere_id, slug, titre, ordre) VALUES
 (@e, 'systeme-monophase',      'Le système monophasé',                         1),
 (@e, 'systeme-triphase',       'Le système triphasé',                          2),
 (@e, 'reseau-electrique',      'Le réseau électrique national',                3),
 (@e, 'transformateurs',        'Les transformateurs',                          4),
 (@e, 'protection-electrique',  'La protection des personnes et des biens',     5),
 (@e, 'convertisseurs-statiques','Les convertisseurs statiques',                6),
 (@e, 'variateurs-vitesse',     'Les variateurs de vitesse industriels',        7),
 (@e, 'machine-synchrone',      'La machine synchrone triphasée',               8),
 (@e, 'moteur-asynchrone',      'Le moteur asynchrone triphasé',                9),
 (@e, 'moteur-pas-a-pas',       'Le moteur pas à pas',                         10),
 (@e, 'verins-hydrauliques',    'Les vérins hydrauliques et pneumatiques',     11),
 (@e, 'capteurs',               'Les capteurs',                                12),
 (@e, 'amplification',          'L''amplification (AOP)',                      13),
 (@e, 'filtrage',               'Le filtrage',                                 14),
 (@e, 'mise-en-forme',          'La mise en forme du signal',                  15),
 (@e, 'conversion-can-cna',     'La conversion CAN et CNA',                    16),
 (@e, 'grafcet',                'Le GRAFCET',                                  17),
 (@e, 'microcontroleur-pic',    'Le microcontrôleur PIC 16F84',                18),
 (@e, 'systemes-asservis',      'Les systèmes asservis',                       19),
 (@e, 'transmettre-energie',    'La transmission de l''énergie mécanique',     20),
 (@e, 'modification-vitesse',   'La transmission avec modification de vitesse', 21),
 (@e, 'transformation-mouvement','La transformation de mouvement',             22);

-- ===== SI STM (génie mécanique) =====
INSERT INTO matiere (slug, nom, coefficient, description, couleur, icone, ordre) VALUES
 ('si-stm', 'Sciences de l''Ingénieur', 8, 'Génie mécanique : mécanique des fluides, pompes, résistance des matériaux (RDM), transmission de puissance (engrenages, embrayages, réducteurs), dynamique, GRAFCET, asservissement — 2ème Bac STM.', '#64748b', '⚙️', 1);
INSERT INTO matiere_filiere (matiere_id, filiere_id)
 SELECT m.id, 8 FROM matiere m WHERE m.slug = 'si-stm';
SET @m := (SELECT id FROM matiere WHERE slug = 'si-stm');
INSERT INTO lecon (matiere_id, slug, titre, ordre) VALUES
 (@m, 'guidage-rotation',          'Le guidage en rotation',                    1),
 (@m, 'mecanique-fluides',         'La mécanique des fluides',                  2),
 (@m, 'pompes-compresseurs',       'Les pompes et les compresseurs',            3),
 (@m, 'rdm-introduction',          'RDM : généralités et hypothèses',           4),
 (@m, 'rdm-traction-compression',  'RDM : traction et compression',             5),
 (@m, 'rdm-cisaillement',          'RDM : le cisaillement',                     6),
 (@m, 'rdm-torsion',               'RDM : la torsion',                          7),
 (@m, 'rdm-flexion',               'RDM : la flexion plane',                    8),
 (@m, 'accouplements-embrayages',  'Les accouplements et les embrayages',       9),
 (@m, 'freins',                    'Les freins',                               10),
 (@m, 'poulies-courroies-chaines', 'Poulies-courroies, roues et chaînes',      11),
 (@m, 'engrenages',                'Les engrenages',                           12),
 (@m, 'reducteurs',                'Les réducteurs de vitesse',                13),
 (@m, 'boites-vitesses',           'Les boîtes de vitesses',                   14),
 (@m, 'dynamique',                 'La dynamique',                             15),
 (@m, 'grafcet',                   'Les automatismes industriels et le GRAFCET', 16),
 (@m, 'convertisseurs-can-cna',    'Les convertisseurs CAN et CNA',            17),
 (@m, 'asservissement',            'L''asservissement',                        18);
