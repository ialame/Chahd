-- QCM du chapitre SVT « Le magmatisme ». ids 2221/2222.
SET SESSION sql_mode = CONCAT(@@sql_mode, ',NO_BACKSLASH_ESCAPES');
SET @l := (SELECT id FROM lecon WHERE slug = 'magmatisme'
           AND matiere_id = (SELECT id FROM matiere WHERE slug = 'svt'));

-- ===== notions (2221) =====
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
 (2221, NULL, @l, 'QCM — Magmatisme : notions', 'Genèse des magmas, cristallisation.', 1);

INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES
 (222101,2221,'Les magmas naissent de la fusion partielle :','Des péridotites du manteau.',1),
 (222102,2221,'Aux dorsales, la fusion est provoquée par :','La décompression.',2),
 (222103,2221,'En subduction, la fusion est provoquée par :','L''hydratation (l''eau abaisse le solidus).',3),
 (222104,2221,'Un refroidissement lent en profondeur donne une roche :','Plutonique (grenue).',4),
 (222105,2221,'Un refroidissement rapide en surface donne une roche :','Volcanique (microlitique).',5),
 (222106,2221,'Le granite est une roche :','Plutonique (grenue).',6),
 (222107,2221,'Le basalte est une roche :','Volcanique (microlitique).',7),
 (222108,2221,'Le solidus est la limite à partir de laquelle :','La roche commence à fondre.',8);

INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
 (2221011,222101,'des péridotites du manteau',TRUE,1),(2221012,222101,'des granites',FALSE,2),(2221013,222101,'des calcaires',FALSE,3),(2221014,222101,'des sédiments',FALSE,4),
 (2221021,222102,'la décompression',TRUE,1),(2221022,222102,'l''hydratation',FALSE,2),(2221023,222102,'le refroidissement',FALSE,3),(2221024,222102,'l''érosion',FALSE,4),
 (2221031,222103,'l''hydratation',TRUE,1),(2221032,222103,'la décompression',FALSE,2),(2221033,222103,'la sédimentation',FALSE,3),(2221034,222103,'le métamorphisme seul',FALSE,4),
 (2221041,222104,'plutonique (grenue)',TRUE,1),(2221042,222104,'volcanique (microlitique)',FALSE,2),(2221043,222104,'sédimentaire',FALSE,3),(2221044,222104,'vitreuse pure',FALSE,4),
 (2221051,222105,'volcanique (microlitique)',TRUE,1),(2221052,222105,'plutonique (grenue)',FALSE,2),(2221053,222105,'sédimentaire',FALSE,3),(2221054,222105,'métamorphique',FALSE,4),
 (2221061,222106,'plutonique (grenue)',TRUE,1),(2221062,222106,'volcanique',FALSE,2),(2221063,222106,'sédimentaire',FALSE,3),(2221064,222106,'métamorphique',FALSE,4),
 (2221071,222107,'volcanique (microlitique)',TRUE,1),(2221072,222107,'plutonique',FALSE,2),(2221073,222107,'sédimentaire',FALSE,3),(2221074,222107,'métamorphique',FALSE,4),
 (2221081,222108,'la roche commence à fondre',TRUE,1),(2221082,222108,'la roche se solidifie totalement',FALSE,2),(2221083,222108,'la roche se brise',FALSE,3),(2221084,222108,'la roche s''altère',FALSE,4);

-- ===== applications (2222) =====
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
 (2222, NULL, @l, 'QCM — Magmatisme : applications', 'Textures, contextes, roches.', 2);

INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES
 (222201,2222,'Une structure grenue indique un refroidissement :','Lent, en profondeur.',1),
 (222202,2222,'Une structure microlitique indique un refroidissement :','Rapide, en surface.',2),
 (222203,2222,'Le couple de roches d''une dorsale est :','Basalte / gabbro.',3),
 (222204,2222,'Le magmatisme de subduction produit notamment :','De l''andésite / granodiorite.',4),
 (222205,2222,'Le gabbro et le basalte ont :','La même composition mais des structures différentes.',5),
 (222206,2222,'Le volcanisme de subduction est plutôt :','Explosif (magma visqueux).',6),
 (222207,2222,'L''eau qui déclenche la fusion en subduction provient :','De la plaque océanique plongeante.',7),
 (222208,2222,'La fusion des péridotites aux dorsales est due à :','La baisse de pression (décompression).',8);

INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
 (2222011,222201,'lent, en profondeur',TRUE,1),(2222012,222201,'rapide, en surface',FALSE,2),(2222013,222201,'instantané',FALSE,3),(2222014,222201,'nul',FALSE,4),
 (2222021,222202,'rapide, en surface',TRUE,1),(2222022,222202,'lent, en profondeur',FALSE,2),(2222023,222202,'sous l''eau seulement',FALSE,3),(2222024,222202,'sans cristaux',FALSE,4),
 (2222031,222203,'basalte / gabbro',TRUE,1),(2222032,222203,'andésite / granite',FALSE,2),(2222033,222203,'calcaire / grès',FALSE,3),(2222034,222203,'schiste / gneiss',FALSE,4),
 (2222041,222204,'andésite / granodiorite',TRUE,1),(2222042,222204,'basalte / gabbro',FALSE,2),(2222043,222204,'péridotite',FALSE,3),(2222044,222204,'calcaire',FALSE,4),
 (2222051,222205,'la même composition mais des structures différentes',TRUE,1),(2222052,222205,'des compositions opposées',FALSE,2),(2222053,222205,'la même structure',FALSE,3),(2222054,222205,'aucun rapport',FALSE,4),
 (2222061,222206,'explosif (magma visqueux)',TRUE,1),(2222062,222206,'effusif et calme',FALSE,2),(2222063,222206,'inexistant',FALSE,3),(2222064,222206,'sous-marin uniquement',FALSE,4),
 (2222071,222207,'de la plaque océanique plongeante',TRUE,1),(2222072,222207,'de l''atmosphère',FALSE,2),(2222073,222207,'du noyau',FALSE,3),(2222074,222207,'des pluies',FALSE,4),
 (2222081,222208,'la baisse de pression (décompression)',TRUE,1),(2222082,222208,'l''ajout d''eau',FALSE,2),(2222083,222208,'le refroidissement',FALSE,3),(2222084,222208,'la compression',FALSE,4);
