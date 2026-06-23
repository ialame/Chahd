-- QCM du chapitre SVT « Les lois de la transmission des caractères ». ids 2211/2212.
SET SESSION sql_mode = CONCAT(@@sql_mode, ',NO_BACKSLASH_ESCAPES');
SET @l := (SELECT id FROM lecon WHERE slug = 'lois-mendel'
           AND matiere_id = (SELECT id FROM matiere WHERE slug = 'svt'));

-- ===== notions (2211) =====
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
 (2211, NULL, @l, 'QCM — Lois de Mendel : notions', 'Vocabulaire, monohybridisme, dihybridisme.', 1);

INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES
 (221101,2211,'Un allèle est :','Une version d''un gène.',1),
 (221102,2211,'Un individu homozygote possède :','Deux allèles identiques.',2),
 (221103,2211,'Un allèle récessif s''exprime :','Seulement à l''état homozygote.',3),
 (221104,2211,'Le phénotype se note :','Entre crochets [ ].',4),
 (221105,2211,'La 1ʳᵉ loi de Mendel concerne :','L''uniformité de la F1.',5),
 (221106,2211,'En cas de dominance, la F2 du monohybridisme donne :','3 : 1.',6),
 (221107,2211,'En dihybridisme avec gènes indépendants, la F2 donne :','9 : 3 : 3 : 1.',7),
 (221108,2211,'Le croisement-test croise l''hybride avec :','Un homozygote récessif.',8);

INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
 (2211011,221101,'une version d''un gène',TRUE,1),(2211012,221101,'un chromosome entier',FALSE,2),(2211013,221101,'une protéine',FALSE,3),(2211014,221101,'un nucléotide',FALSE,4),
 (2211021,221102,'deux allèles identiques',TRUE,1),(2211022,221102,'deux allèles différents',FALSE,2),(2211023,221102,'un seul allèle',FALSE,3),(2211024,221102,'aucun allèle',FALSE,4),
 (2211031,221103,'seulement à l''état homozygote',TRUE,1),(2211032,221103,'à l''état hétérozygote',FALSE,2),(2211033,221103,'toujours',FALSE,3),(2211034,221103,'jamais',FALSE,4),
 (2211041,221104,'entre crochets [ ]',TRUE,1),(2211042,221104,'entre barres //',FALSE,2),(2211043,221104,'en majuscules',FALSE,3),(2211044,221104,'entre parenthèses',FALSE,4),
 (2211051,221105,'l''uniformité de la F1',TRUE,1),(2211052,221105,'la disjonction des allèles',FALSE,2),(2211053,221105,'le crossing-over',FALSE,3),(2211054,221105,'la fécondation',FALSE,4),
 (2211061,221106,'3 : 1',TRUE,1),(2211062,221106,'1 : 1',FALSE,2),(2211063,221106,'9 : 3 : 3 : 1',FALSE,3),(2211064,221106,'100 % identique',FALSE,4),
 (2211071,221107,'9 : 3 : 3 : 1',TRUE,1),(2211072,221107,'3 : 1',FALSE,2),(2211073,221107,'1 : 2 : 1',FALSE,3),(2211074,221107,'1 : 1 : 1 : 1',FALSE,4),
 (2211081,221108,'un homozygote récessif',TRUE,1),(2211082,221108,'un homozygote dominant',FALSE,2),(2211083,221108,'un autre hybride',FALSE,3),(2211084,221108,'une race pure dominante',FALSE,4);

-- ===== applications (2212) =====
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
 (2212, NULL, @l, 'QCM — Lois de Mendel : applications', 'Croisements, génotypes, proportions.', 2);

INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES
 (221201,2212,'Le croisement A//A × a//a donne une F1 :','A//a, tous de phénotype [A].',1),
 (221202,2212,'Le croisement F1 × F1 (A//a × A//a) donne :','3/4 [A] et 1/4 [a].',2),
 (221203,2212,'Un individu de phénotype récessif [a] a pour génotype :','a//a.',3),
 (221204,2212,'En l''absence de dominance, la F2 donne le rapport :','1 : 2 : 1.',4),
 (221205,2212,'Une proportion 9 : 3 : 3 : 1 en F2 indique des gènes :','Indépendants.',5),
 (221206,2212,'Des phénotypes recombinés minoritaires indiquent des gènes :','Liés (sur le même chromosome).',6),
 (221207,2212,'La distance génétique entre deux gènes liés se mesure en :','Centimorgans (cM).',7),
 (221208,2212,'Un hybride de génotype A//a a pour gamètes :','A et a (en proportions égales).',8);

INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
 (2212011,221201,'A//a, tous [A]',TRUE,1),(2212012,221201,'moitié [A], moitié [a]',FALSE,2),(2212013,221201,'tous [a]',FALSE,3),(2212014,221201,'A//A et a//a',FALSE,4),
 (2212021,221202,'3/4 [A] et 1/4 [a]',TRUE,1),(2212022,221202,'tous [A]',FALSE,2),(2212023,221202,'1/2 [A] et 1/2 [a]',FALSE,3),(2212024,221202,'tous [a]',FALSE,4),
 (2212031,221203,'a//a',TRUE,1),(2212032,221203,'A//a',FALSE,2),(2212033,221203,'A//A',FALSE,3),(2212034,221203,'indéterminé',FALSE,4),
 (2212041,221204,'1 : 2 : 1',TRUE,1),(2212042,221204,'3 : 1',FALSE,2),(2212043,221204,'9 : 3 : 3 : 1',FALSE,3),(2212044,221204,'1 : 1',FALSE,4),
 (2212051,221205,'indépendants',TRUE,1),(2212052,221205,'liés',FALSE,2),(2212053,221205,'identiques',FALSE,3),(2212054,221205,'portés par X',FALSE,4),
 (2212061,221206,'liés (même chromosome)',TRUE,1),(2212062,221206,'indépendants',FALSE,2),(2212063,221206,'absents',FALSE,3),(2212064,221206,'dominants',FALSE,4),
 (2212071,221207,'centimorgans (cM)',TRUE,1),(2212072,221207,'grammes',FALSE,2),(2212073,221207,'mètres',FALSE,3),(2212074,221207,'degrés',FALSE,4),
 (2212081,221208,'A et a en proportions égales',TRUE,1),(2212082,221208,'uniquement A',FALSE,2),(2212083,221208,'uniquement a',FALSE,3),(2212084,221208,'Aa uniquement',FALSE,4);
