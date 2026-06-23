-- QCM du chapitre SVT « La tectonique des plaques ». ids 2215/2216.
SET SESSION sql_mode = CONCAT(@@sql_mode, ',NO_BACKSLASH_ESCAPES');
SET @l := (SELECT id FROM lecon WHERE slug = 'tectonique-plaques'
           AND matiere_id = (SELECT id FROM matiere WHERE slug = 'svt'));

-- ===== notions (2215) =====
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
 (2215, NULL, @l, 'QCM — Tectonique des plaques : notions', 'Structure, preuves, frontières.', 1);

INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES
 (221501,2215,'La couche rigide superficielle du globe est :','La lithosphère.',1),
 (221502,2215,'Les plaques lithosphériques glissent sur :','L''asthénosphère.',2),
 (221503,2215,'La croûte océanique est de nature :','Basaltique.',3),
 (221504,2215,'La théorie proposée par Wegener est :','La dérive des continents.',4),
 (221505,2215,'La lithosphère océanique se crée au niveau des :','Dorsales.',5),
 (221506,2215,'Les anomalies magnétiques océaniques sont :','Symétriques de part et d''autre de la dorsale.',6),
 (221507,2215,'À une frontière divergente, les plaques :','S''écartent.',7),
 (221508,2215,'Le moteur du déplacement des plaques est :','La convection mantellique.',8);

INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
 (2215011,221501,'la lithosphère',TRUE,1),(2215012,221501,'l''asthénosphère',FALSE,2),(2215013,221501,'le noyau',FALSE,3),(2215014,221501,'le manteau inférieur',FALSE,4),
 (2215021,221502,'l''asthénosphère',TRUE,1),(2215022,221502,'le noyau externe',FALSE,2),(2215023,221502,'la croûte',FALSE,3),(2215024,221502,'l''atmosphère',FALSE,4),
 (2215031,221503,'basaltique',TRUE,1),(2215032,221503,'granitique',FALSE,2),(2215033,221503,'calcaire',FALSE,3),(2215034,221503,'métamorphique',FALSE,4),
 (2215041,221504,'la dérive des continents',TRUE,1),(2215042,221504,'l''expansion de l''Univers',FALSE,2),(2215043,221504,'la sélection naturelle',FALSE,3),(2215044,221504,'la convection seule',FALSE,4),
 (2215051,221505,'des dorsales',TRUE,1),(2215052,221505,'des fosses',FALSE,2),(2215053,221505,'des continents',FALSE,3),(2215054,221505,'du noyau',FALSE,4),
 (2215061,221506,'symétriques de part et d''autre de la dorsale',TRUE,1),(2215062,221506,'aléatoires',FALSE,2),(2215063,221506,'concentrées au centre',FALSE,3),(2215064,221506,'absentes',FALSE,4),
 (2215071,221507,'s''écartent',TRUE,1),(2215072,221507,'se rapprochent',FALSE,2),(2215073,221507,'coulissent',FALSE,3),(2215074,221507,'sont immobiles',FALSE,4),
 (2215081,221508,'la convection mantellique',TRUE,1),(2215082,221508,'le vent',FALSE,2),(2215083,221508,'les marées',FALSE,3),(2215084,221508,'la rotation de la Lune',FALSE,4);

-- ===== applications (2216) =====
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
 (2216, NULL, @l, 'QCM — Tectonique des plaques : applications', 'Frontières, subduction, preuves.', 2);

INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES
 (221601,2216,'Au niveau d''une dorsale, il y a :','Création de lithosphère (accrétion).',1),
 (221602,2216,'La subduction est une frontière :','Convergente.',2),
 (221603,2216,'La collision de deux continents forme :','Une chaîne de montagnes.',3),
 (221604,2216,'Une faille transformante correspond à :','Un coulissement des plaques.',4),
 (221605,2216,'L''âge des sédiments océaniques, en s''éloignant de la dorsale :','Augmente.',5),
 (221606,2216,'Lors d''une subduction, la plaque qui plonge est :','La plaque océanique.',6),
 (221607,2216,'La lithosphère comprend la croûte et :','La partie supérieure du manteau.',7),
 (221608,2216,'La complémentarité des côtes de l''Atlantique est un argument de :','La dérive des continents.',8);

INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
 (2216011,221601,'création de lithosphère',TRUE,1),(2216012,221601,'destruction de lithosphère',FALSE,2),(2216013,221601,'collision',FALSE,3),(2216014,221601,'coulissement',FALSE,4),
 (2216021,221602,'convergente',TRUE,1),(2216022,221602,'divergente',FALSE,2),(2216023,221602,'transformante',FALSE,3),(2216024,221602,'stable',FALSE,4),
 (2216031,221603,'une chaîne de montagnes',TRUE,1),(2216032,221603,'une dorsale',FALSE,2),(2216033,221603,'un océan',FALSE,3),(2216034,221603,'une fosse',FALSE,4),
 (2216041,221604,'un coulissement des plaques',TRUE,1),(2216042,221604,'un écartement',FALSE,2),(2216043,221604,'une subduction',FALSE,3),(2216044,221604,'une accrétion',FALSE,4),
 (2216051,221605,'augmente',TRUE,1),(2216052,221605,'diminue',FALSE,2),(2216053,221605,'reste constant',FALSE,3),(2216054,221605,'devient nul',FALSE,4),
 (2216061,221606,'la plaque océanique',TRUE,1),(2216062,221606,'la plaque continentale',FALSE,2),(2216063,221606,'les deux à la fois',FALSE,3),(2216064,221606,'aucune',FALSE,4),
 (2216071,221607,'la partie supérieure du manteau',TRUE,1),(2216072,221607,'le noyau',FALSE,2),(2216073,221607,'toute l''asthénosphère',FALSE,3),(2216074,221607,'le noyau interne',FALSE,4),
 (2216081,221608,'la dérive des continents',TRUE,1),(2216082,221608,'la subduction',FALSE,2),(2216083,221608,'le métamorphisme',FALSE,3),(2216084,221608,'le volcanisme de point chaud',FALSE,4);
