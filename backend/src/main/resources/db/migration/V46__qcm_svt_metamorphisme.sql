-- QCM du chapitre SVT « Le métamorphisme ». ids 2219/2220.
SET SESSION sql_mode = CONCAT(@@sql_mode, ',NO_BACKSLASH_ESCAPES');
SET @l := (SELECT id FROM lecon WHERE slug = 'metamorphisme'
           AND matiere_id = (SELECT id FROM matiere WHERE slug = 'svt'));

-- ===== notions (2219) =====
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
 (2219, NULL, @l, 'QCM — Métamorphisme : notions', 'Définition, minéraux index, faciès.', 1);

INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES
 (221901,2219,'Le métamorphisme transforme la roche :','À l''état solide (sans fusion).',1),
 (221902,2219,'Les deux facteurs du métamorphisme sont :','La pression et la température.',2),
 (221903,2219,'L''orientation des minéraux sous la contrainte donne :','La foliation / schistosité.',3),
 (221904,2219,'Un minéral index renseigne sur :','Les conditions P–T de formation.',4),
 (221905,2219,'Un faciès métamorphique est :','Un domaine de stabilité P–T.',5),
 (221906,2219,'Le métamorphisme de subduction se fait en conditions :','HP / BT (haute pression, basse température).',6),
 (221907,2219,'Le glaucophane est un minéral index de :','Haute pression / basse température.',7),
 (221908,2219,'L''anatexie correspond à :','La fusion partielle des roches.',8);

INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
 (2219011,221901,'à l''état solide',TRUE,1),(2219012,221901,'par fusion totale',FALSE,2),(2219013,221901,'par sédimentation',FALSE,3),(2219014,221901,'par érosion',FALSE,4),
 (2219021,221902,'la pression et la température',TRUE,1),(2219022,221902,'le vent et la pluie',FALSE,2),(2219023,221902,'la lumière et l''eau',FALSE,3),(2219024,221902,'le temps seul',FALSE,4),
 (2219031,221903,'la foliation / schistosité',TRUE,1),(2219032,221903,'la fusion',FALSE,2),(2219033,221903,'la sédimentation',FALSE,3),(2219034,221903,'la cristallisation magmatique',FALSE,4),
 (2219041,221904,'les conditions P–T de formation',TRUE,1),(2219042,221904,'l''âge absolu',FALSE,2),(2219043,221904,'la couleur du sol',FALSE,3),(2219044,221904,'la latitude',FALSE,4),
 (2219051,221905,'un domaine de stabilité P–T',TRUE,1),(2219052,221905,'un type de fossile',FALSE,2),(2219053,221905,'une faille',FALSE,3),(2219054,221905,'un océan',FALSE,4),
 (2219061,221906,'HP / BT',TRUE,1),(2219062,221906,'BP / HT',FALSE,2),(2219063,221906,'HP / HT',FALSE,3),(2219064,221906,'BP / BT',FALSE,4),
 (2219071,221907,'haute pression / basse température',TRUE,1),(2219072,221907,'basse pression / haute température',FALSE,2),(2219073,221907,'surface',FALSE,3),(2219074,221907,'fusion',FALSE,4),
 (2219081,221908,'la fusion partielle des roches',TRUE,1),(2219082,221908,'la cassure des roches',FALSE,2),(2219083,221908,'la sédimentation',FALSE,3),(2219084,221908,'l''altération',FALSE,4);

-- ===== applications (2220) =====
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
 (2220, NULL, @l, 'QCM — Métamorphisme : applications', 'Faciès, contextes, trajet P–T–t.', 2);

INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES
 (222001,2220,'Les schistes bleus et les éclogites se forment lors d''une :','Subduction.',1),
 (222002,2220,'Les migmatites résultent d''un métamorphisme :','BP–HT (anatexie).',2),
 (222003,2220,'Dans le diagramme P–T, le gradient de subduction est :','« Froid » (forte P, faible T).',3),
 (222004,2220,'Le trajet P–T–t décrit :','L''enfouissement puis l''exhumation d''une roche.',4),
 (222005,2220,'La présence de glaucophane dans une chaîne indique :','Une ancienne subduction.',5),
 (222006,2220,'Le solidus dans le diagramme P–T marque :','Le début de la fusion (anatexie).',6),
 (222007,2220,'Le métamorphisme se déroule sans :','Fusion de la roche.',7),
 (222008,2220,'La schistosité d''une roche métamorphique est due :','À l''orientation des minéraux sous la contrainte.',8);

INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
 (2220011,222001,'subduction',TRUE,1),(2220012,222001,'sédimentation',FALSE,2),(2220013,222001,'érosion',FALSE,3),(2220014,222001,'altération de surface',FALSE,4),
 (2220021,222002,'BP–HT (anatexie)',TRUE,1),(2220022,222002,'HP–BT',FALSE,2),(2220023,222002,'de surface',FALSE,3),(2220024,222002,'sans température',FALSE,4),
 (2220031,222003,'« froid » (forte P, faible T)',TRUE,1),(2220032,222003,'« chaud » (forte T)',FALSE,2),(2220033,222003,'nul',FALSE,3),(2220034,222003,'horizontal',FALSE,4),
 (2220041,222004,'l''enfouissement puis l''exhumation',TRUE,1),(2220042,222004,'la dérive des continents',FALSE,2),(2220043,222004,'la réplication de l''ADN',FALSE,3),(2220044,222004,'la sédimentation seule',FALSE,4),
 (2220051,222005,'une ancienne subduction',TRUE,1),(2220052,222005,'un volcan récent',FALSE,2),(2220053,222005,'une dorsale',FALSE,3),(2220054,222005,'un climat aride',FALSE,4),
 (2220061,222006,'le début de la fusion (anatexie)',TRUE,1),(2220062,222006,'la fin du métamorphisme par refroidissement',FALSE,2),(2220063,222006,'la surface',FALSE,3),(2220064,222006,'une faille',FALSE,4),
 (2220071,222007,'fusion de la roche',TRUE,1),(2220072,222007,'changement de pression',FALSE,2),(2220073,222007,'changement de température',FALSE,3),(2220074,222007,'nouveaux minéraux',FALSE,4),
 (2220081,222008,'à l''orientation des minéraux sous la contrainte',TRUE,1),(2220082,222008,'au hasard',FALSE,2),(2220083,222008,'à la fusion',FALSE,3),(2220084,222008,'à l''érosion',FALSE,4);
