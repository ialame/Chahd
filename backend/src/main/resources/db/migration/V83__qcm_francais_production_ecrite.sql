-- QCM du chapitre Français « Méthodologie : la production écrite ». ids 2509/2510.
SET SESSION sql_mode = CONCAT(@@sql_mode, ',NO_BACKSLASH_ESCAPES');
SET @l := (SELECT id FROM lecon WHERE slug = 'production-ecrite'
           AND matiere_id = (SELECT id FROM matiere WHERE slug = 'francais'));

INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
 (2509, NULL, @l, 'QCM — Structure et méthode', 'Types de sujets, structure, étapes.', 1);

INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES
 (250901,2509,'Combien de parties compte une production écrite ?','Trois : introduction, développement, conclusion.',1),
 (250902,2509,'Que doit faire l''introduction ?','Amener le sujet et annoncer la position.',2),
 (250903,2509,'Que contient un paragraphe du développement ?','Un argument illustré par un exemple.',3),
 (250904,2509,'Que doit-on faire dans la conclusion ?','Résumer et proposer une ouverture.',4),
 (250905,2509,'Quelle est la première étape de la méthode ?','Lire et analyser la consigne.',5),
 (250906,2509,'Quels sont les deux types de sujets ?','Le sujet argumentatif et le sujet sur l''œuvre.',6),
 (250907,2509,'Que vise un sujet argumentatif ?','Défendre une opinion en la justifiant.',7),
 (250908,2509,'Pourquoi garder du temps à la fin ?','Pour relire et corriger la copie.',8);

INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
 (2509011,250901,'Trois',TRUE,1),(2509012,250901,'Deux',FALSE,2),(2509013,250901,'Une seule',FALSE,3),(2509014,250901,'Cinq',FALSE,4),
 (2509021,250902,'Amener le sujet et annoncer la position',TRUE,1),(2509022,250902,'Donner tous les exemples',FALSE,2),(2509023,250902,'Conclure le devoir',FALSE,3),(2509024,250902,'Recopier la consigne',FALSE,4),
 (2509031,250903,'Un argument illustré par un exemple',TRUE,1),(2509032,250903,'Uniquement une opinion sans preuve',FALSE,2),(2509033,250903,'Le résumé final',FALSE,3),(2509034,250903,'La présentation du thème',FALSE,4),
 (2509041,250904,'Résumer et proposer une ouverture',TRUE,1),(2509042,250904,'Introduire un nouvel argument',FALSE,2),(2509043,250904,'Poser la problématique',FALSE,3),(2509044,250904,'Donner le premier exemple',FALSE,4),
 (2509051,250905,'Lire et analyser la consigne',TRUE,1),(2509052,250905,'Rédiger la conclusion',FALSE,2),(2509053,250905,'Compter les lignes',FALSE,3),(2509054,250905,'Choisir un titre',FALSE,4),
 (2509061,250906,'Le sujet argumentatif et le sujet sur l''œuvre',TRUE,1),(2509062,250906,'Le résumé et la dictée',FALSE,2),(2509063,250906,'Le poème et la lettre',FALSE,3),(2509064,250906,'Le conte et la fable',FALSE,4),
 (2509071,250907,'Défendre une opinion en la justifiant',TRUE,1),(2509072,250907,'Raconter une histoire',FALSE,2),(2509073,250907,'Décrire un paysage',FALSE,3),(2509074,250907,'Résumer l''œuvre',FALSE,4),
 (2509081,250908,'Pour relire et corriger la copie',TRUE,1),(2509082,250908,'Pour écrire plus de pages',FALSE,2),(2509083,250908,'Pour changer de sujet',FALSE,3),(2509084,250908,'Pour effacer l''introduction',FALSE,4);

INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
 (2510, NULL, @l, 'QCM — Connecteurs et évaluation', 'Connecteurs logiques, arguments, critères.', 2);

INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES
 (251001,2510,'À quoi servent les connecteurs logiques ?','À relier les idées et assurer la cohérence.',1),
 (251002,2510,'Quel connecteur sert à ajouter une idée ?','De plus.',2),
 (251003,2510,'Quel connecteur sert à opposer deux idées ?','Cependant.',3),
 (251004,2510,'Quel connecteur sert à illustrer ?','Par exemple.',4),
 (251005,2510,'Quel connecteur sert à conclure ?','Enfin.',5),
 (251006,2510,'Quel est le critère le plus sanctionné ?','Le respect de la consigne (pertinence).',6),
 (251007,2510,'Que vérifie le critère de la langue ?','L''orthographe, la grammaire et le vocabulaire.',7),
 (251008,2510,'Comment classer ses arguments ?','Du moins fort au plus fort.',8);

INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
 (2510011,251001,'À relier les idées et assurer la cohérence',TRUE,1),(2510012,251001,'À allonger les phrases',FALSE,2),(2510013,251001,'À remplir les marges',FALSE,3),(2510014,251001,'À décorer le texte',FALSE,4),
 (2510021,251002,'De plus',TRUE,1),(2510022,251002,'Cependant',FALSE,2),(2510023,251002,'Enfin',FALSE,3),(2510024,251002,'Donc',FALSE,4),
 (2510031,251003,'Cependant',TRUE,1),(2510032,251003,'De plus',FALSE,2),(2510033,251003,'Par exemple',FALSE,3),(2510034,251003,'Ensuite',FALSE,4),
 (2510041,251004,'Par exemple',TRUE,1),(2510042,251004,'En revanche',FALSE,2),(2510043,251004,'En conclusion',FALSE,3),(2510044,251004,'Par ailleurs',FALSE,4),
 (2510051,251005,'Enfin',TRUE,1),(2510052,251005,'En outre',FALSE,2),(2510053,251005,'Pourtant',FALSE,3),(2510054,251005,'Ainsi',FALSE,4),
 (2510061,251006,'Le respect de la consigne',TRUE,1),(2510062,251006,'La longueur du texte',FALSE,2),(2510063,251006,'La couleur du stylo',FALSE,3),(2510064,251006,'Le nombre de connecteurs',FALSE,4),
 (2510071,251007,'L''orthographe, la grammaire et le vocabulaire',TRUE,1),(2510072,251007,'Le nombre de paragraphes',FALSE,2),(2510073,251007,'La position du sujet',FALSE,3),(2510074,251007,'L''ordre des arguments',FALSE,4),
 (2510081,251008,'Du moins fort au plus fort',TRUE,1),(2510082,251008,'Au hasard',FALSE,2),(2510083,251008,'Par ordre alphabétique',FALSE,3),(2510084,251008,'Du plus long au plus court',FALSE,4);
