-- QCM du chapitre SVT « L'ADN, support de l'information génétique ». ids 2205/2206.
SET SESSION sql_mode = CONCAT(@@sql_mode, ',NO_BACKSLASH_ESCAPES');
SET @l := (SELECT id FROM lecon WHERE slug = 'adn-replication'
           AND matiere_id = (SELECT id FROM matiere WHERE slug = 'svt'));

-- ===== notions (2205) =====
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
 (2205, NULL, @l, 'QCM — L''ADN : notions', 'Structure, complémentarité, réplication.', 1);

INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES
 (220501,2205,'L''ADN porte :','L''information génétique.',1),
 (220502,2205,'L''ADN se trouve dans :','Le noyau (chromosomes).',2),
 (220503,2205,'Un nucléotide est formé de :','Phosphate + désoxyribose + base azotée.',3),
 (220504,2205,'Les quatre bases de l''ADN sont :','A, T, C et G.',4),
 (220505,2205,'L''ADN a la forme d''une :','Double hélice.',5),
 (220506,2205,'La base complémentaire de l''adénine (A) est :','La thymine (T).',6),
 (220507,2205,'La base complémentaire de la cytosine (C) est :','La guanine (G).',7),
 (220508,2205,'La réplication de l''ADN est dite :','Semi-conservative.',8);

INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
 (2205011,220501,'l''information génétique',TRUE,1),(2205012,220501,'l''énergie de la cellule',FALSE,2),(2205013,220501,'le dioxygène',FALSE,3),(2205014,220501,'les lipides',FALSE,4),
 (2205021,220502,'le noyau (chromosomes)',TRUE,1),(2205022,220502,'la mitochondrie seule',FALSE,2),(2205023,220502,'le hyaloplasme',FALSE,3),(2205024,220502,'la membrane',FALSE,4),
 (2205031,220503,'phosphate + désoxyribose + base azotée',TRUE,1),(2205032,220503,'phosphate + ribose + acide aminé',FALSE,2),(2205033,220503,'deux bases azotées',FALSE,3),(2205034,220503,'un acide gras + glycérol',FALSE,4),
 (2205041,220504,'A, T, C et G',TRUE,1),(2205042,220504,'A, U, C et G',FALSE,2),(2205043,220504,'A, T, C et U',FALSE,3),(2205044,220504,'20 acides aminés',FALSE,4),
 (2205051,220505,'double hélice',TRUE,1),(2205052,220505,'simple chaîne linéaire',FALSE,2),(2205053,220505,'sphère',FALSE,3),(2205054,220505,'feuillet plissé',FALSE,4),
 (2205061,220506,'la thymine (T)',TRUE,1),(2205062,220506,'la guanine (G)',FALSE,2),(2205063,220506,'la cytosine (C)',FALSE,3),(2205064,220506,'l''uracile (U)',FALSE,4),
 (2205071,220507,'la guanine (G)',TRUE,1),(2205072,220507,'la thymine (T)',FALSE,2),(2205073,220507,'l''adénine (A)',FALSE,3),(2205074,220507,'la cytosine (C)',FALSE,4),
 (2205081,220508,'semi-conservative',TRUE,1),(2205082,220508,'conservative',FALSE,2),(2205083,220508,'dispersive',FALSE,3),(2205084,220508,'aléatoire',FALSE,4);

-- ===== applications (2206) =====
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
 (2206, NULL, @l, 'QCM — L''ADN : applications', 'Complémentarité, liaisons, réplication.', 2);

INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES
 (220601,2206,'La paire de bases A–T est reliée par :','2 liaisons hydrogène.',1),
 (220602,2206,'La paire de bases C–G est reliée par :','3 liaisons hydrogène.',2),
 (220603,2206,'La réplication de l''ADN se déroule en :','Phase S de l''interphase.',3),
 (220604,2206,'Après réplication, chaque molécule fille contient :','1 brin parental + 1 brin néoformé.',4),
 (220605,2206,'Si un brin a la séquence A-T-G-C, le brin complémentaire est :','T-A-C-G.',5),
 (220606,2206,'L''enzyme qui réalise la réplication est :','L''ADN polymérase.',6),
 (220607,2206,'La structure de l''ADN est qualifiée d'':','Universelle (commune à tous les êtres vivants).',7),
 (220608,2206,'Au cours de la réplication, chaque brin sert de :','Matrice.',8);

INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
 (2206011,220601,'2 liaisons hydrogène',TRUE,1),(2206012,220601,'3 liaisons hydrogène',FALSE,2),(2206013,220601,'1 liaison covalente',FALSE,3),(2206014,220601,'aucune liaison',FALSE,4),
 (2206021,220602,'3 liaisons hydrogène',TRUE,1),(2206022,220602,'2 liaisons hydrogène',FALSE,2),(2206023,220602,'1 liaison hydrogène',FALSE,3),(2206024,220602,'4 liaisons hydrogène',FALSE,4),
 (2206031,220603,'la phase S de l''interphase',TRUE,1),(2206032,220603,'la mitose',FALSE,2),(2206033,220603,'l''anaphase',FALSE,3),(2206034,220603,'la fécondation',FALSE,4),
 (2206041,220604,'1 brin parental + 1 brin néoformé',TRUE,1),(2206042,220604,'2 brins parentaux',FALSE,2),(2206043,220604,'2 brins néoformés',FALSE,3),(2206044,220604,'1 seul brin',FALSE,4),
 (2206051,220605,'T-A-C-G',TRUE,1),(2206052,220605,'A-T-G-C',FALSE,2),(2206053,220605,'U-A-C-G',FALSE,3),(2206054,220605,'G-C-A-T',FALSE,4),
 (2206061,220606,'l''ADN polymérase',TRUE,1),(2206062,220606,'l''ARN polymérase',FALSE,2),(2206063,220606,'l''ATP synthase',FALSE,3),(2206064,220606,'la créatine kinase',FALSE,4),
 (2206071,220607,'universelle',TRUE,1),(2206072,220607,'différente selon les espèces',FALSE,2),(2206073,220607,'propre à l''Homme',FALSE,3),(2206074,220607,'variable selon les cellules',FALSE,4),
 (2206081,220608,'matrice',TRUE,1),(2206082,220608,'enzyme',FALSE,2),(2206083,220608,'déchet',FALSE,3),(2206084,220608,'source d''énergie',FALSE,4);
