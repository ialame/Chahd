-- QCM du chapitre SVT « Le muscle squelettique et la conversion d'énergie ». ids 2203/2204.
SET SESSION sql_mode = CONCAT(@@sql_mode, ',NO_BACKSLASH_ESCAPES');
SET @l := (SELECT id FROM lecon WHERE slug = 'muscle-conversion-energie'
           AND matiere_id = (SELECT id FROM matiere WHERE slug = 'svt'));

-- ===== notions (2203) =====
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
 (2203, NULL, @l, 'QCM — Muscle : notions', 'Sarcomère, contraction, ATP.', 1);

INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES
 (220301,2203,'L''unité contractile du muscle est :','Le sarcomère.',1),
 (220302,2203,'Le sarcomère est compris entre deux :','Stries Z.',2),
 (220303,2203,'Les filaments fins sont constitués de :','Actine.',3),
 (220304,2203,'Les filaments épais sont constitués de :','Myosine.',4),
 (220305,2203,'La contraction résulte du :','Glissement de l''actine entre les filaments de myosine.',5),
 (220306,2203,'La source directe d''énergie de la contraction est :','L''ATP.',6),
 (220307,2203,'La voie de la créatine phosphate est :','Immédiate (anaérobie alactique).',7),
 (220308,2203,'La voie utilisée lors d''un effort d''endurance est :','La respiration (aérobie).',8);

INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
 (2203011,220301,'le sarcomère',TRUE,1),(2203012,220301,'la mitochondrie',FALSE,2),(2203013,220301,'le noyau',FALSE,3),(2203014,220301,'la strie Z',FALSE,4),
 (2203021,220302,'stries Z',TRUE,1),(2203022,220302,'zones H',FALSE,2),(2203023,220302,'bandes sombres',FALSE,3),(2203024,220302,'mitochondries',FALSE,4),
 (2203031,220303,'actine',TRUE,1),(2203032,220303,'myosine',FALSE,2),(2203033,220303,'créatine',FALSE,3),(2203034,220303,'glycogène',FALSE,4),
 (2203041,220304,'myosine',TRUE,1),(2203042,220304,'actine',FALSE,2),(2203043,220304,'ATP',FALSE,3),(2203044,220304,'collagène',FALSE,4),
 (2203051,220305,'glissement de l''actine entre la myosine',TRUE,1),(2203052,220305,'raccourcissement des filaments de myosine',FALSE,2),(2203053,220305,'allongement de l''actine',FALSE,3),(2203054,220305,'disparition des stries Z',FALSE,4),
 (2203061,220306,'l''ATP',TRUE,1),(2203062,220306,'le glucose',FALSE,2),(2203063,220306,'le lactate',FALSE,3),(2203064,220306,'le dioxygène',FALSE,4),
 (2203071,220307,'immédiate (anaérobie alactique)',TRUE,1),(2203072,220307,'lente et aérobie',FALSE,2),(2203073,220307,'la plus lente',FALSE,3),(2203074,220307,'inexistante',FALSE,4),
 (2203081,220308,'la respiration (aérobie)',TRUE,1),(2203082,220308,'la créatine phosphate',FALSE,2),(2203083,220308,'la fermentation lactique',FALSE,3),(2203084,220308,'aucune',FALSE,4);

-- ===== applications (2204) =====
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
 (2204, NULL, @l, 'QCM — Muscle : applications', 'Bandes, voies de régénération de l''ATP.', 2);

INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES
 (220401,2204,'Lors de la contraction, la bande claire (I) :','Se raccourcit.',1),
 (220402,2204,'Lors de la contraction, la bande sombre (A) :','Reste constante.',2),
 (220403,2204,'L''hydrolyse de l''ATP donne :','ADP + Pi + énergie.',3),
 (220404,2204,'La phosphocréatine régénère l''ATP en :','Cédant son phosphate à l''ADP.',4),
 (220405,2204,'La fermentation lactique produit :','Du lactate.',5),
 (220406,2204,'La voie aérobie de régénération de l''ATP se déroule dans :','La mitochondrie.',6),
 (220407,2204,'La voie de régénération de l''ATP la plus rapide est :','La voie de la créatine phosphate.',7),
 (220408,2204,'Le myogramme d''une secousse comporte les phases :','Latence, contraction, relâchement.',8);

INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
 (2204011,220401,'se raccourcit',TRUE,1),(2204012,220401,'s''allonge',FALSE,2),(2204013,220401,'reste constante',FALSE,3),(2204014,220401,'disparaît totalement',FALSE,4),
 (2204021,220402,'reste constante',TRUE,1),(2204022,220402,'se raccourcit',FALSE,2),(2204023,220402,'s''allonge',FALSE,3),(2204024,220402,'double de longueur',FALSE,4),
 (2204031,220403,'ADP + Pi + énergie',TRUE,1),(2204032,220403,'glucose + $O_2$',FALSE,2),(2204033,220403,'lactate + énergie',FALSE,3),(2204034,220403,'créatine + énergie',FALSE,4),
 (2204041,220404,'cédant son phosphate à l''ADP',TRUE,1),(2204042,220404,'libérant du lactate',FALSE,2),(2204043,220404,'consommant du dioxygène',FALSE,3),(2204044,220404,'hydrolysant le glucose',FALSE,4),
 (2204051,220405,'du lactate',TRUE,1),(2204052,220405,'de l''éthanol',FALSE,2),(2204053,220405,'du $CO_2$ et de l''eau',FALSE,3),(2204054,220405,'du dioxygène',FALSE,4),
 (2204061,220406,'la mitochondrie',TRUE,1),(2204062,220406,'le hyaloplasme',FALSE,2),(2204063,220406,'la strie Z',FALSE,3),(2204064,220406,'le noyau',FALSE,4),
 (2204071,220407,'la voie de la créatine phosphate',TRUE,1),(2204072,220407,'la respiration',FALSE,2),(2204073,220407,'la fermentation lactique',FALSE,3),(2204074,220407,'la photosynthèse',FALSE,4),
 (2204081,220408,'latence, contraction, relâchement',TRUE,1),(2204082,220408,'uniquement contraction',FALSE,2),(2204083,220408,'glycolyse, Krebs, chaîne',FALSE,3),(2204084,220408,'systole, diastole',FALSE,4);
