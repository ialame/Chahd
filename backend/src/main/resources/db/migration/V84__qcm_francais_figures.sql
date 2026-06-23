-- QCM du chapitre Français « Les figures de style et les registres ». ids 2511/2512.
SET SESSION sql_mode = CONCAT(@@sql_mode, ',NO_BACKSLASH_ESCAPES');
SET @l := (SELECT id FROM lecon WHERE slug = 'figures-de-style'
           AND matiere_id = (SELECT id FROM matiere WHERE slug = 'francais'));

INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
 (2511, NULL, @l, 'QCM — Les figures de style', 'Analogie, insistance, opposition, atténuation.', 1);

INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES
 (251101,2511,'Quelle figure emploie un outil de comparaison comme ''comme'' ou ''tel'' ?','La comparaison.',1),
 (251102,2511,'Quelle figure rapproche deux réalités sans outil de comparaison ?','La métaphore.',2),
 (251103,2511,'Comment nomme-t-on le fait de prêter des traits humains à une chose ?','La personnification.',3),
 (251104,2511,'Quelle figure exagère pour frapper l''esprit ?','L''hyperbole.',4),
 (251105,2511,'Quelle figure réunit côte à côte deux termes contraires ?','L''oxymore.',5),
 (251106,2511,'Quelle figure ordonne des termes selon une intensité croissante ?','La gradation.',6),
 (251107,2511,'Quelle figure atténue une réalité dure ou désagréable ?','L''euphémisme.',7),
 (251108,2511,'Quelle figure remplace un mot par une expression qui le décrit ?','La périphrase.',8);

INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
 (2511011,251101,'La comparaison',TRUE,1),(2511012,251101,'La métaphore',FALSE,2),(2511013,251101,'La litote',FALSE,3),(2511014,251101,'L''anaphore',FALSE,4),
 (2511021,251102,'La métaphore',TRUE,1),(2511022,251102,'La comparaison',FALSE,2),(2511023,251102,'L''euphémisme',FALSE,3),(2511024,251102,'La gradation',FALSE,4),
 (2511031,251103,'La personnification',TRUE,1),(2511032,251103,'L''hyperbole',FALSE,2),(2511033,251103,'La métonymie',FALSE,3),(2511034,251103,'La litote',FALSE,4),
 (2511041,251104,'L''hyperbole',TRUE,1),(2511042,251104,'La litote',FALSE,2),(2511043,251104,'L''oxymore',FALSE,3),(2511044,251104,'La périphrase',FALSE,4),
 (2511051,251105,'L''oxymore',TRUE,1),(2511052,251105,'L''antithèse',FALSE,2),(2511053,251105,'L''anaphore',FALSE,3),(2511054,251105,'La comparaison',FALSE,4),
 (2511061,251106,'La gradation',TRUE,1),(2511062,251106,'L''anaphore',FALSE,2),(2511063,251106,'La métonymie',FALSE,3),(2511064,251106,'L''euphémisme',FALSE,4),
 (2511071,251107,'L''euphémisme',TRUE,1),(2511072,251107,'L''hyperbole',FALSE,2),(2511073,251107,'La personnification',FALSE,3),(2511074,251107,'L''antithèse',FALSE,4),
 (2511081,251108,'La périphrase',TRUE,1),(2511082,251108,'La métaphore',FALSE,2),(2511083,251108,'La litote',FALSE,3),(2511084,251108,'La gradation',FALSE,4);

INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
 (2512, NULL, @l, 'QCM — Registres et identification', 'Reconnaître figures et registres dans des exemples.', 2);

INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES
 (251201,2512,'Quel registre vise à inspirer la pitié face à la souffrance ?','Le registre pathétique.',1),
 (251202,2512,'Quel registre met en scène un destin inéluctable qui écrase le personnage ?','Le registre tragique.',2),
 (251203,2512,'Quel registre exprime des sentiments personnels intenses ?','Le registre lyrique.',3),
 (251204,2512,'Quel registre attaque vivement une idée pour la dénoncer ?','Le registre polémique.',4),
 (251205,2512,'Identifie la figure : ''Une mer de ble ondulait jusqu''a l''horizon.''','Une métaphore.',5),
 (251206,2512,'Identifie la figure : ''Toute la classe a applaudi.'' (= les eleves)','Une métonymie.',6),
 (251207,2512,'Identifie la figure : ''Ce gateau n''est pas mauvais du tout.'' (= excellent)','Une litote.',7),
 (251208,2512,'Identifie la figure : ''Partir sans bruit, partir sans regret, partir pour toujours.''','Une anaphore.',8);

INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
 (2512011,251201,'Le pathétique',TRUE,1),(2512012,251201,'Le comique',FALSE,2),(2512013,251201,'L''épique',FALSE,3),(2512014,251201,'Le polémique',FALSE,4),
 (2512021,251202,'Le tragique',TRUE,1),(2512022,251202,'Le lyrique',FALSE,2),(2512023,251202,'Le comique',FALSE,3),(2512024,251202,'L''épique',FALSE,4),
 (2512031,251203,'Le lyrique',TRUE,1),(2512032,251203,'Le polémique',FALSE,2),(2512033,251203,'Le tragique',FALSE,3),(2512034,251203,'Le comique',FALSE,4),
 (2512041,251204,'Le polémique',TRUE,1),(2512042,251204,'Le lyrique',FALSE,2),(2512043,251204,'Le pathétique',FALSE,3),(2512044,251204,'L''épique',FALSE,4),
 (2512051,251205,'Une métaphore',TRUE,1),(2512052,251205,'Une comparaison',FALSE,2),(2512053,251205,'Une litote',FALSE,3),(2512054,251205,'Un oxymore',FALSE,4),
 (2512061,251206,'Une métonymie',TRUE,1),(2512062,251206,'Une hyperbole',FALSE,2),(2512063,251206,'Une périphrase',FALSE,3),(2512064,251206,'Une anaphore',FALSE,4),
 (2512071,251207,'Une litote',TRUE,1),(2512072,251207,'Une hyperbole',FALSE,2),(2512073,251207,'Une métaphore',FALSE,3),(2512074,251207,'Un euphémisme',FALSE,4),
 (2512081,251208,'Une anaphore',TRUE,1),(2512082,251208,'Une gradation',FALSE,2),(2512083,251208,'Une antithèse',FALSE,3),(2512084,251208,'Une personnification',FALSE,4);
