-- Tronc Commun Sciences (TCS) : nouveau niveau (année avant la 1ère Bac).
-- Une seule filière scientifique au tronc commun (pas de split SE/SM).
-- Contrôle continu → cours + évaluations, pas d'annales.

INSERT INTO filiere (id, slug, nom, ordre) VALUES
 (6, 'tronc-commun-sciences', 'Tronc Commun Sciences', 6);

-- Mathématiques TCS : 15 chapitres
INSERT INTO matiere (slug, nom, coefficient, description, couleur, icone, ordre) VALUES
 ('maths-tcs', 'Mathématiques', 7, 'Ensembles de nombres, calcul vectoriel, polynômes, trigonométrie, fonctions, produit scalaire — Tronc Commun Sciences.', '#2563eb', '📐', 1);

INSERT INTO matiere_filiere (matiere_id, filiere_id)
 SELECT m.id, 6 FROM matiere m WHERE m.slug = 'maths-tcs';

SET @m := (SELECT id FROM matiere WHERE slug = 'maths-tcs');
INSERT INTO lecon (matiere_id, slug, titre, ordre) VALUES
 (@m, 'ensembles-nombres',     'Les ensembles de nombres N, Z, Q, D et R', 1),
 (@m, 'arithmetique-n',        'L''arithmétique dans N',                  2),
 (@m, 'calcul-vectoriel',      'Le calcul vectoriel dans le plan',         3),
 (@m, 'projection',            'La projection dans le plan',               4),
 (@m, 'ordre-dans-r',          'L''ordre dans R',                         5),
 (@m, 'droite-plan',           'La droite dans le plan',                   6),
 (@m, 'polynomes',             'Les polynômes',                            7),
 (@m, 'equations-inequations', 'Équations, inéquations et systèmes',       8),
 (@m, 'trigonometrie-1',       'Trigonométrie 1 : le calcul trigonométrique', 9),
 (@m, 'trigonometrie-2',       'Trigonométrie 2 : équations et inéquations', 10),
 (@m, 'generalites-fonctions', 'Généralités sur les fonctions',           11),
 (@m, 'transformations-plan',  'Les transformations du plan',             12),
 (@m, 'produit-scalaire',      'Le produit scalaire',                     13),
 (@m, 'geometrie-espace',      'La géométrie dans l''espace',             14),
 (@m, 'statistiques',          'Les statistiques',                        15);
