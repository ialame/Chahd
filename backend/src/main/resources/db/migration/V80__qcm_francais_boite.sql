-- QCM du chapitre Français « La Boîte à merveilles » (Sefrioui). ids 2503/2504.
SET SESSION sql_mode = CONCAT(@@sql_mode, ',NO_BACKSLASH_ESCAPES');
SET @l := (SELECT id FROM lecon WHERE slug = 'boite-a-merveilles'
           AND matiere_id = (SELECT id FROM matiere WHERE slug = 'francais'));

INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
 (2503, NULL, @l, 'QCM — L''œuvre et son cadre', 'Auteur, genre, narrateur, cadre.', 1);

INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES
 (250301,2503,'Qui est l''auteur de La Boîte à merveilles ?','Ahmed Sefrioui.',1),
 (250302,2503,'En quelle année paraît l''œuvre ?','En 1954.',2),
 (250303,2503,'Quel est le genre de l''œuvre ?','Un roman autobiographique.',3),
 (250304,2503,'Qui est le narrateur ?','Sidi Mohammed, un enfant.',4),
 (250305,2503,'Quel âge a environ le narrateur ?','Environ six ans.',5),
 (250306,2503,'Dans quelle ville se déroule le récit ?','À Fès.',6),
 (250307,2503,'À quelle personne le récit est-il mené ?','À la première personne.',7),
 (250308,2503,'Quel type de regard porte le narrateur sur son enfance ?','Un regard rétrospectif.',8);

INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
 (2503011,250301,'Ahmed Sefrioui',TRUE,1),(2503012,250301,'Victor Hugo',FALSE,2),(2503013,250301,'Driss Chraïbi',FALSE,3),(2503014,250301,'Tahar Ben Jelloun',FALSE,4),
 (2503021,250302,'1954',TRUE,1),(2503022,250302,'1829',FALSE,2),(2503023,250302,'1900',FALSE,3),(2503024,250302,'1984',FALSE,4),
 (2503031,250303,'Un roman autobiographique',TRUE,1),(2503032,250303,'Une tragédie',FALSE,2),(2503033,250303,'Un roman policier',FALSE,3),(2503034,250303,'Un conte merveilleux',FALSE,4),
 (2503041,250304,'Sidi Mohammed',TRUE,1),(2503042,250304,'Sidi Abdeslem',FALSE,2),(2503043,250304,'Le Fqih',FALSE,3),(2503044,250304,'Abdellah l''épicier',FALSE,4),
 (2503051,250305,'Environ six ans',TRUE,1),(2503052,250305,'Quinze ans',FALSE,2),(2503053,250305,'Dix ans',FALSE,3),(2503054,250305,'Vingt ans',FALSE,4),
 (2503061,250306,'À Fès',TRUE,1),(2503062,250306,'À Marrakech',FALSE,2),(2503063,250306,'À Paris',FALSE,3),(2503064,250306,'À Casablanca',FALSE,4),
 (2503071,250307,'La première personne',TRUE,1),(2503072,250307,'La deuxième personne',FALSE,2),(2503073,250307,'La troisième personne',FALSE,3),(2503074,250307,'Un narrateur omniscient',FALSE,4),
 (2503081,250308,'Un regard rétrospectif',TRUE,1),(2503082,250308,'Un regard prophétique',FALSE,2),(2503083,250308,'Un regard extérieur neutre',FALSE,3),(2503084,250308,'Aucun souvenir',FALSE,4);

INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
 (2504, NULL, @l, 'QCM — Personnages et thèmes', 'Personnages, thèmes, cadre social.', 2);

INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES
 (250401,2504,'Qui est Lalla Zoubida ?','La mère du narrateur.',1),
 (250402,2504,'Quel est le métier de Sidi Abdeslem ?','Artisan tisserand.',2),
 (250403,2504,'Qu''est-ce que la Boîte à merveilles pour l''enfant ?','Un refuge nourrissant son imaginaire.',3),
 (250404,2504,'Qu''est-ce que le Msid ?','L''école coranique.',4),
 (250405,2504,'Qui dirige le Msid ?','Le Fqih.',5),
 (250406,2504,'Quel thème lié aux croyances traverse l''œuvre ?','Les superstitions populaires.',6),
 (250407,2504,'Quel événement bouleverse la famille ?','Le revers de fortune du père.',7),
 (250408,2504,'Quel sentiment caractérise l''enfant face au monde des adultes ?','La solitude.',8);

INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
 (2504011,250401,'La mère du narrateur',TRUE,1),(2504012,250401,'Sa sœur',FALSE,2),(2504013,250401,'La voisine étrangère',FALSE,3),(2504014,250401,'La maîtresse d''école',FALSE,4),
 (2504021,250402,'Tisserand',TRUE,1),(2504022,250402,'Médecin',FALSE,2),(2504023,250402,'Marin',FALSE,3),(2504024,250402,'Juge',FALSE,4),
 (2504031,250403,'Un refuge pour son imaginaire',TRUE,1),(2504032,250403,'Une arme',FALSE,2),(2504033,250403,'Un cartable d''école',FALSE,3),(2504034,250403,'Un objet sans valeur',FALSE,4),
 (2504041,250404,'L''école coranique',TRUE,1),(2504042,250404,'Un marché',FALSE,2),(2504043,250404,'Un atelier de tissage',FALSE,3),(2504044,250404,'Une mosquée fermée',FALSE,4),
 (2504051,250405,'Le Fqih',TRUE,1),(2504052,250405,'Le père',FALSE,2),(2504053,250405,'L''épicier',FALSE,3),(2504054,250405,'La voyante',FALSE,4),
 (2504061,250406,'Les superstitions populaires',TRUE,1),(2504062,250406,'La science moderne',FALSE,2),(2504063,250406,'La politique',FALSE,3),(2504064,250406,'Le sport',FALSE,4),
 (2504071,250407,'Le revers de fortune du père',TRUE,1),(2504072,250407,'Un héritage soudain',FALSE,2),(2504073,250407,'Un voyage en Europe',FALSE,3),(2504074,250407,'Une guerre',FALSE,4),
 (2504081,250408,'La solitude',TRUE,1),(2504082,250408,'L''indifférence joyeuse',FALSE,2),(2504083,250408,'La colère permanente',FALSE,3),(2504084,250408,'L''ennui des richesses',FALSE,4);
