-- QCM du chapitre Français « Méthodologie : l'étude de texte ». ids 2507/2508.
SET SESSION sql_mode = CONCAT(@@sql_mode, ',NO_BACKSLASH_ESCAPES');
SET @l := (SELECT id FROM lecon WHERE slug = 'etude-de-texte'
           AND matiere_id = (SELECT id FROM matiere WHERE slug = 'francais'));

INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
 (2507, NULL, @l, 'QCM — L''épreuve et la méthode', 'Barème, étapes, types de questions.', 1);

INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES
 (250701,2507,'Sur combien de points l''étude de texte est-elle notée ?','Sur 10 points.',1),
 (250702,2507,'Quelle partie de l''épreuve l''étude de texte constitue-t-elle ?','La première partie, avant la rédaction.',2),
 (250703,2507,'Que donne le chapeau introductif ?','Auteur, œuvre et contexte.',3),
 (250704,2507,'Qu''attend-on d''une question de situation du passage ?','Replacer l''extrait dans l''œuvre (avant/après).',4),
 (250705,2507,'Comment répondre à une question de compréhension ?','En reformulant avec ses propres mots.',5),
 (250706,2507,'Que faut-il faire pour appuyer chaque réponse ?','Citer le texte entre guillemets.',6),
 (250707,2507,'Quelle erreur faut-il éviter pour les citations ?','Recopier des phrases entières sans reformuler.',7),
 (250708,2507,'Que faut-il repérer dans la consigne avant de répondre ?','Le verbe consigne (relevez, justifiez, expliquez).',8);

INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
 (2507011,250701,'10 points',TRUE,1),(2507012,250701,'20 points',FALSE,2),(2507013,250701,'5 points',FALSE,3),(2507014,250701,'2 points',FALSE,4),
 (2507021,250702,'La première partie, avant la rédaction',TRUE,1),(2507022,250702,'La dernière partie',FALSE,2),(2507023,250702,'Une partie orale',FALSE,3),(2507024,250702,'Une partie facultative',FALSE,4),
 (2507031,250703,'Auteur, œuvre et contexte',TRUE,1),(2507032,250703,'La note finale',FALSE,2),(2507033,250703,'Le corrigé',FALSE,3),(2507034,250703,'La biographie complète',FALSE,4),
 (2507041,250704,'Replacer l''extrait dans l''œuvre',TRUE,1),(2507042,250704,'Résumer tout le texte',FALSE,2),(2507043,250704,'Donner son avis personnel',FALSE,3),(2507044,250704,'Compter les lignes',FALSE,4),
 (2507051,250705,'Reformuler avec ses propres mots',TRUE,1),(2507052,250705,'Recopier le texte',FALSE,2),(2507053,250705,'Répondre par oui ou non',FALSE,3),(2507054,250705,'Inventer une suite',FALSE,4),
 (2507061,250706,'Citer le texte entre guillemets',TRUE,1),(2507062,250706,'Donner un exemple personnel',FALSE,2),(2507063,250706,'Citer un autre auteur',FALSE,3),(2507064,250706,'Faire un dessin',FALSE,4),
 (2507071,250707,'Recopier des phrases entières',TRUE,1),(2507072,250707,'Reformuler',FALSE,2),(2507073,250707,'Mettre des guillemets',FALSE,3),(2507074,250707,'Numéroter ses réponses',FALSE,4),
 (2507081,250708,'Le verbe consigne',TRUE,1),(2507082,250708,'Le nombre de mots',FALSE,2),(2507083,250708,'La date',FALSE,3),(2507084,250708,'Le titre de l''œuvre',FALSE,4);

INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
 (2508, NULL, @l, 'QCM — Énonciation, figures et registres', 'Énonciation, focalisation, figures, registres.', 2);

INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES
 (250801,2508,'Que désigne l''énonciation dans un texte ?','Qui parle, à qui, avec quelles marques.',1),
 (250802,2508,'Dans la focalisation interne, à travers qui voit-on ?','À travers les yeux d''un personnage.',2),
 (250803,2508,'Comment appelle-t-on un narrateur qui sait tout ?','La focalisation zéro (omnisciente).',3),
 (250804,2508,'Quels sont les trois temps de l''analyse d''une figure de style ?','Citer, nommer, expliquer l''effet.',4),
 (250805,2508,'Quel registre cherche à susciter la pitié ?','Le registre pathétique.',5),
 (250806,2508,'Quel registre repose sur la fatalité et la mort inévitable ?','Le registre tragique.',6),
 (250807,2508,'Quel registre consiste à dire le contraire de ce que l''on pense ?','Le registre ironique.',7),
 (250808,2508,'Quelle figure rapproche deux éléments avec un outil de comparaison ?','La comparaison.',8);

INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
 (2508011,250801,'Qui parle, à qui, avec quelles marques',TRUE,1),(2508012,250801,'Le nombre de paragraphes',FALSE,2),(2508013,250801,'La date de publication',FALSE,3),(2508014,250801,'Le genre de l''auteur',FALSE,4),
 (2508021,250802,'À travers les yeux d''un personnage',TRUE,1),(2508022,250802,'À travers un témoin extérieur',FALSE,2),(2508023,250802,'À travers le lecteur',FALSE,3),(2508024,250802,'À travers personne',FALSE,4),
 (2508031,250803,'La focalisation zéro (omnisciente)',TRUE,1),(2508032,250803,'La focalisation interne',FALSE,2),(2508033,250803,'La focalisation externe',FALSE,3),(2508034,250803,'La focalisation muette',FALSE,4),
 (2508041,250804,'Citer, nommer, expliquer l''effet',TRUE,1),(2508042,250804,'Lire, copier, traduire',FALSE,2),(2508043,250804,'Résumer, noter, conclure',FALSE,3),(2508044,250804,'Compter, classer, ranger',FALSE,4),
 (2508051,250805,'Le pathétique',TRUE,1),(2508052,250805,'Le comique',FALSE,2),(2508053,250805,'Le burlesque',FALSE,3),(2508054,250805,'L''épique',FALSE,4),
 (2508061,250806,'Le tragique',TRUE,1),(2508062,250806,'Le lyrique',FALSE,2),(2508063,250806,'Le comique',FALSE,3),(2508064,250806,'Le didactique',FALSE,4),
 (2508071,250807,'L''ironique',TRUE,1),(2508072,250807,'Le pathétique',FALSE,2),(2508073,250807,'Le lyrique',FALSE,3),(2508074,250807,'Le merveilleux',FALSE,4),
 (2508081,250808,'La comparaison',TRUE,1),(2508082,250808,'La métaphore',FALSE,2),(2508083,250808,'L''anaphore',FALSE,3),(2508084,250808,'La gradation',FALSE,4);
