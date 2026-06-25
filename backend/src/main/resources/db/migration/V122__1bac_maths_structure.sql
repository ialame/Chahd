-- 1 Bac — Mathématiques (matière partagée SE + SM). 17 chapitres : 12 communs (non tagués)
-- + 5 spécifiques Sciences Maths (tagués filière 5 = 1bac-sciences-mathematiques).
-- SE (filière 4) voit les 12 communs ; SM (filière 5) voit les 17.

INSERT INTO matiere (slug, nom, coefficient, description, couleur, icone, ordre) VALUES
 ('maths-1bac', 'Mathématiques', 7, 'Logique, fonctions, géométrie, suites, trigonométrie — 1ère année Bac.', '#2563eb', '📐', 1);

-- Visible par les deux filières 1 Bac (la distinction SE/SM se fait au niveau des chapitres)
INSERT INTO matiere_filiere (matiere_id, filiere_id)
 SELECT m.id, f.id FROM matiere m CROSS JOIN filiere f
 WHERE m.slug = 'maths-1bac' AND f.slug IN ('1bac-sciences-experimentales', '1bac-sciences-mathematiques');

SET @m := (SELECT id FROM matiere WHERE slug = 'maths-1bac');
INSERT INTO lecon (matiere_id, slug, titre, ordre) VALUES
 (@m, 'logique',                'Notions de logique',                  1),
 (@m, 'ensembles-applications', 'Ensembles et applications',           2),
 (@m, 'generalites-fonctions',  'Généralités sur les fonctions',       3),
 (@m, 'barycentre',             'Le barycentre dans le plan',          4),
 (@m, 'produit-scalaire-plan',  'Le produit scalaire dans le plan',    5),
 (@m, 'calcul-trigonometrique', 'Calcul trigonométrique',              6),
 (@m, 'suites-numeriques',      'Les suites numériques',               7),
 (@m, 'limites-fonction',       'Limites d''une fonction',             8),
 (@m, 'rotation-plan',          'La rotation dans le plan',            9),
 (@m, 'derivation',             'La dérivation',                      10),
 (@m, 'etude-fonctions',        'Étude et représentation des fonctions', 11),
 (@m, 'vecteurs-espace',        'Vecteurs de l''espace',              12),
 (@m, 'geometrie-espace',       'Géométrie analytique de l''espace',  13),
 (@m, 'denombrement',           'Dénombrement',                       14),
 (@m, 'produit-scalaire-espace','Le produit scalaire dans l''espace', 15),
 (@m, 'arithmetique-z',         'Arithmétique dans Z',                16),
 (@m, 'produit-vectoriel',      'Le produit vectoriel',               17);

-- Chapitres spécifiques Sciences Maths (filière 5)
INSERT INTO lecon_filiere (lecon_id, filiere_id)
 SELECT l.id, 5 FROM lecon l
 WHERE l.matiere_id = @m
   AND l.slug IN ('ensembles-applications','denombrement','produit-scalaire-espace','arithmetique-z','produit-vectoriel');
