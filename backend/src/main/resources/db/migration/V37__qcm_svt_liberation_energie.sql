-- QCM du chapitre SVT « La libération de l'énergie » (notions + applications). ids 2201/2202.
SET SESSION sql_mode = CONCAT(@@sql_mode, ',NO_BACKSLASH_ESCAPES');
SET @l := (SELECT id FROM lecon WHERE slug = 'liberation-energie'
           AND matiere_id = (SELECT id FROM matiere WHERE slug = 'svt'));

-- ===== notions (2201) =====
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
 (2201, NULL, @l, 'QCM — Libération de l''énergie : notions', 'Glycolyse, fermentation, respiration.', 1);

INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES
 (220101,2201,'La glycolyse se déroule dans :','Le hyaloplasme (cytoplasme).',1),
 (220102,2201,'La glycolyse nécessite-t-elle du dioxygène ?','Non (voie commune, anaérobie).',2),
 (220103,2201,'Le bilan de la glycolyse est :','2 pyruvates + 2 ATP + 2 $NADH,H^+$.',3),
 (220104,2201,'La fermentation a lieu en condition :','Anaérobie (sans dioxygène).',4),
 (220105,2201,'La fermentation alcoolique produit :','De l''éthanol et du $CO_2$.',5),
 (220106,2201,'La respiration cellulaire se déroule dans :','La mitochondrie.',6),
 (220107,2201,'L''accepteur final d''électrons de la chaîne respiratoire est :','Le dioxygène ($O_2$).',7),
 (220108,2201,'L''ATP synthase produit l''ATP grâce :','Au gradient de protons $H^+$.',8);

INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
 (2201011,220101,'le hyaloplasme (cytoplasme)',TRUE,1),(2201012,220101,'la matrice mitochondriale',FALSE,2),(2201013,220101,'la membrane interne',FALSE,3),(2201014,220101,'le noyau',FALSE,4),
 (2201021,220102,'non',TRUE,1),(2201022,220102,'oui',FALSE,2),(2201023,220102,'seulement chez les levures',FALSE,3),(2201024,220102,'seulement dans le muscle',FALSE,4),
 (2201031,220103,'2 pyruvates + 2 ATP + 2 $NADH,H^+$',TRUE,1),(2201032,220103,'2 pyruvates + 36 ATP',FALSE,2),(2201033,220103,'$CO_2$ + $H_2O$ + 36 ATP',FALSE,3),(2201034,220103,'1 pyruvate + 1 ATP',FALSE,4),
 (2201041,220104,'anaérobie',TRUE,1),(2201042,220104,'aérobie',FALSE,2),(2201043,220104,'uniquement à la lumière',FALSE,3),(2201044,220104,'dans le noyau',FALSE,4),
 (2201051,220105,'éthanol et $CO_2$',TRUE,1),(2201052,220105,'lactate',FALSE,2),(2201053,220105,'$H_2O$ et $O_2$',FALSE,3),(2201054,220105,'glucose',FALSE,4),
 (2201061,220106,'la mitochondrie',TRUE,1),(2201062,220106,'le hyaloplasme',FALSE,2),(2201063,220106,'le noyau',FALSE,3),(2201064,220106,'la membrane plasmique',FALSE,4),
 (2201071,220107,'le dioxygène',TRUE,1),(2201072,220107,'le glucose',FALSE,2),(2201073,220107,'le $CO_2$',FALSE,3),(2201074,220107,'le $NAD^+$',FALSE,4),
 (2201081,220108,'au gradient de protons $H^+$',TRUE,1),(2201082,220108,'à la lumière',FALSE,2),(2201083,220108,'au dioxygène seul',FALSE,3),(2201084,220108,'au glucose',FALSE,4);

-- ===== applications (2202) =====
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
 (2202, NULL, @l, 'QCM — Libération de l''énergie : applications', 'Bilans, localisations, rendements.', 2);

INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES
 (220201,2202,'Une molécule de glucose donne par glycolyse :','2 molécules d''acide pyruvique.',1),
 (220202,2202,'En l''absence de dioxygène, le pyruvate est transformé pour régénérer :','Le $NAD^+$.',2),
 (220203,2202,'La membrane interne de la mitochondrie est repliée en :','Crêtes.',3),
 (220204,2202,'Le cycle de Krebs se déroule dans :','La matrice mitochondriale.',4),
 (220205,2202,'La respiration libère, par molécule de glucose, environ :','36 ATP.',5),
 (220206,2202,'La fermentation libère, par molécule de glucose :','2 ATP.',6),
 (220207,2202,'La chaîne respiratoire est située dans :','La membrane interne de la mitochondrie.',7),
 (220208,2202,'Comparée à la fermentation, la respiration dégrade le glucose de façon :','Complète (en $CO_2$ et $H_2O$).',8);

INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
 (2202011,220201,'2 molécules d''acide pyruvique',TRUE,1),(2202012,220201,'1 molécule d''éthanol',FALSE,2),(2202013,220201,'6 molécules de $CO_2$',FALSE,3),(2202014,220201,'2 molécules de glucose',FALSE,4),
 (2202021,220202,'le $NAD^+$',TRUE,1),(2202022,220202,'le dioxygène',FALSE,2),(2202023,220202,'l''ATP',FALSE,3),(2202024,220202,'le glucose',FALSE,4),
 (2202031,220203,'crêtes',TRUE,1),(2202032,220203,'villosités',FALSE,2),(2202033,220203,'pores',FALSE,3),(2202034,220203,'cils',FALSE,4),
 (2202041,220204,'la matrice mitochondriale',TRUE,1),(2202042,220204,'le hyaloplasme',FALSE,2),(2202043,220204,'la membrane externe',FALSE,3),(2202044,220204,'le noyau',FALSE,4),
 (2202051,220205,'36 ATP',TRUE,1),(2202052,220205,'2 ATP',FALSE,2),(2202053,220205,'4 ATP',FALSE,3),(2202054,220205,'380 ATP',FALSE,4),
 (2202061,220206,'2 ATP',TRUE,1),(2202062,220206,'36 ATP',FALSE,2),(2202063,220206,'18 ATP',FALSE,3),(2202064,220206,'0 ATP',FALSE,4),
 (2202071,220207,'la membrane interne de la mitochondrie',TRUE,1),(2202072,220207,'le hyaloplasme',FALSE,2),(2202073,220207,'la matrice',FALSE,3),(2202074,220207,'la membrane externe',FALSE,4),
 (2202081,220208,'complète (en $CO_2$ et $H_2O$)',TRUE,1),(2202082,220208,'incomplète',FALSE,2),(2202083,220208,'nulle',FALSE,3),(2202084,220208,'identique',FALSE,4);
