-- QCM du chapitre SVT « Déformations tectoniques et chaînes de montagnes ». ids 2217/2218.
SET SESSION sql_mode = CONCAT(@@sql_mode, ',NO_BACKSLASH_ESCAPES');
SET @l := (SELECT id FROM lecon WHERE slug = 'deformations-chaines-montagnes'
           AND matiere_id = (SELECT id FROM matiere WHERE slug = 'svt'));

-- ===== notions (2217) =====
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
 (2217, NULL, @l, 'QCM — Déformations et chaînes : notions', 'Plis, failles, ophiolites, chaînes.', 1);

INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES
 (221701,2217,'Un pli est une déformation :','Souple (ductile).',1),
 (221702,2217,'Une faille est une déformation :','Cassante (fragile).',2),
 (221703,2217,'Un anticlinal est :','Bombé vers le haut.',3),
 (221704,2217,'Une faille normale traduit des contraintes d'' :','Extension.',4),
 (221705,2217,'Une faille inverse traduit des contraintes de :','Compression.',5),
 (221706,2217,'Les ophiolites sont des vestiges de :','Croûte océanique.',6),
 (221707,2217,'La racine crustale correspond à :','Un épaississement de la croûte continentale.',7),
 (221708,2217,'La collision de deux continents forme :','Une chaîne de montagnes (Alpes, Himalaya).',8);

INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
 (2217011,221701,'souple (ductile)',TRUE,1),(2217012,221701,'cassante (fragile)',FALSE,2),(2217013,221701,'chimique',FALSE,3),(2217014,221701,'magmatique',FALSE,4),
 (2217021,221702,'cassante (fragile)',TRUE,1),(2217022,221702,'souple (ductile)',FALSE,2),(2217023,221702,'biologique',FALSE,3),(2217024,221702,'sédimentaire',FALSE,4),
 (2217031,221703,'bombé vers le haut',TRUE,1),(2217032,221703,'en creux',FALSE,2),(2217033,221703,'horizontal',FALSE,3),(2217034,221703,'vertical',FALSE,4),
 (2217041,221704,'extension',TRUE,1),(2217042,221704,'compression',FALSE,2),(2217043,221704,'cisaillement horizontal',FALSE,3),(2217044,221704,'aucune',FALSE,4),
 (2217051,221705,'compression',TRUE,1),(2217052,221705,'extension',FALSE,2),(2217053,221705,'coulissement',FALSE,3),(2217054,221705,'fusion',FALSE,4),
 (2217061,221706,'croûte océanique',TRUE,1),(2217062,221706,'croûte continentale',FALSE,2),(2217063,221706,'noyau',FALSE,3),(2217064,221706,'atmosphère',FALSE,4),
 (2217071,221707,'un épaississement de la croûte continentale',TRUE,1),(2217072,221707,'un amincissement de la croûte',FALSE,2),(2217073,221707,'une dorsale',FALSE,3),(2217074,221707,'une faille normale',FALSE,4),
 (2217081,221708,'une chaîne de montagnes',TRUE,1),(2217082,221708,'une dorsale océanique',FALSE,2),(2217083,221708,'un rift',FALSE,3),(2217084,221708,'une fosse',FALSE,4);

-- ===== applications (2218) =====
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
 (2218, NULL, @l, 'QCM — Déformations et chaînes : applications', 'Reconnaissance, contextes, mécanismes.', 2);

INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES
 (221801,2218,'Un synclinal est :','En creux (concave vers le haut).',1),
 (221802,2218,'Un décrochement correspond à :','Un coulissement horizontal.',2),
 (221803,2218,'Des contraintes de compression produisent :','Des plis et des failles inverses.',3),
 (221804,2218,'La présence d''ophiolites dans une chaîne témoigne :','D''un ancien océan disparu.',4),
 (221805,2218,'La chaîne des Andes résulte d''une :','Subduction.',5),
 (221806,2218,'La chaîne de l''Himalaya résulte d''une :','Collision continentale.',6),
 (221807,2218,'L''obduction est le chevauchement de lithosphère :','Océanique sur continentale.',7),
 (221808,2218,'Les roches métamorphiques d''une chaîne témoignent :','D''une ancienne subduction.',8);

INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
 (2218011,221801,'en creux',TRUE,1),(2218012,221801,'bombé vers le haut',FALSE,2),(2218013,221801,'plat',FALSE,3),(2218014,221801,'vertical',FALSE,4),
 (2218021,221802,'un coulissement horizontal',TRUE,1),(2218022,221802,'un soulèvement',FALSE,2),(2218023,221802,'un effondrement',FALSE,3),(2218024,221802,'un pli',FALSE,4),
 (2218031,221803,'des plis et des failles inverses',TRUE,1),(2218032,221803,'des failles normales seules',FALSE,2),(2218033,221803,'des dorsales',FALSE,3),(2218034,221803,'des rifts',FALSE,4),
 (2218041,221804,'d''un ancien océan disparu',TRUE,1),(2218042,221804,'d''un volcan actif',FALSE,2),(2218043,221804,'d''un climat chaud',FALSE,3),(2218044,221804,'d''une météorite',FALSE,4),
 (2218051,221805,'subduction',TRUE,1),(2218052,221805,'collision',FALSE,2),(2218053,221805,'divergence',FALSE,3),(2218054,221805,'décrochement',FALSE,4),
 (2218061,221806,'collision continentale',TRUE,1),(2218062,221806,'subduction océanique',FALSE,2),(2218063,221806,'divergence',FALSE,3),(2218064,221806,'point chaud',FALSE,4),
 (2218071,221807,'océanique sur continentale',TRUE,1),(2218072,221807,'continentale sur océanique',FALSE,2),(2218073,221807,'continentale sur continentale',FALSE,3),(2218074,221807,'océanique sur océanique',FALSE,4),
 (2218081,221808,'d''une ancienne subduction',TRUE,1),(2218082,221808,'d''une sédimentation',FALSE,2),(2218083,221808,'d''une érosion',FALSE,3),(2218084,221808,'d''une fermentation',FALSE,4);
