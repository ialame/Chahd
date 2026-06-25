-- Sciences de l'Ingénieur — chapitres (cours), filière Sciences Mathématiques B.
-- Couvre les 4 modules : analyse fonctionnelle, chaîne d'énergie, chaîne d'information, dessin technique.
SET @si := (SELECT id FROM matiere WHERE slug = 'sciences-ingenieur');

INSERT INTO lecon (matiere_id, slug, titre, ordre) VALUES
 (@si, 'analyse-fonctionnelle',       'Analyse fonctionnelle du besoin',                 1),
 (@si, 'outils-description',          'Outils de description (FAST, SADT, schéma-blocs)', 2),
 (@si, 'chaine-energie-information',  'Chaîne d''énergie et chaîne d''information',       3),
 (@si, 'alimenter-distribuer',        'Alimenter et distribuer l''énergie',              4),
 (@si, 'convertir',                   'Convertir l''énergie (actionneurs)',              5),
 (@si, 'transmettre',                 'Transmettre l''énergie (transmetteurs)',          6),
 (@si, 'acquerir',                    'Acquérir l''information (capteurs)',              7),
 (@si, 'traiter',                     'Traiter l''information (logique et GRAFCET)',      8),
 (@si, 'communiquer',                 'Communiquer et restituer l''information',         9),
 (@si, 'dessin-technique',            'Lecture de dessin technique',                     10);
