-- QCM du chapitre Français « Le Dernier Jour d'un condamné » (Hugo). ids 2501/2502.
SET SESSION sql_mode = CONCAT(@@sql_mode, ',NO_BACKSLASH_ESCAPES');
SET @l := (SELECT id FROM lecon WHERE slug = 'dernier-jour-condamne'
           AND matiere_id = (SELECT id FROM matiere WHERE slug = 'francais'));

INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
 (2501, NULL, @l, 'QCM — L''œuvre et sa visée', 'Auteur, genre, visée, narration.', 1);

INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES
 (250101,2501,'Qui est l''auteur du Dernier Jour d''un condamné ?','Victor Hugo.',1),
 (250102,2501,'À quel mouvement littéraire appartient l''auteur ?','Le romantisme.',2),
 (250103,2501,'En quelle année paraît l''œuvre ?','1829 (préface en 1832).',3),
 (250104,2501,'Quel est le genre de l''œuvre ?','Un roman à thèse sous forme de journal intime.',4),
 (250105,2501,'Quelle est la visée de l''œuvre ?','Un réquisitoire contre la peine de mort.',5),
 (250106,2501,'À quelle personne le récit est-il mené ?','À la première personne.',6),
 (250107,2501,'Pourquoi le narrateur est-il anonyme ?','Pour une portée universelle.',7),
 (250108,2501,'Combien de chapitres compte l''œuvre ?','49 chapitres.',8);

INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
 (2501011,250101,'Victor Hugo',TRUE,1),(2501012,250101,'Émile Zola',FALSE,2),(2501013,250101,'Albert Camus',FALSE,3),(2501014,250101,'Jean Anouilh',FALSE,4),
 (2501021,250102,'Le romantisme',TRUE,1),(2501022,250102,'Le réalisme',FALSE,2),(2501023,250102,'Le classicisme',FALSE,3),(2501024,250102,'Le surréalisme',FALSE,4),
 (2501031,250103,'1829',TRUE,1),(2501032,250103,'1862',FALSE,2),(2501033,250103,'1942',FALSE,3),(2501034,250103,'1789',FALSE,4),
 (2501041,250104,'Un roman à thèse (journal intime)',TRUE,1),(2501042,250104,'Une tragédie',FALSE,2),(2501043,250104,'Un conte',FALSE,3),(2501044,250104,'Une autobiographie',FALSE,4),
 (2501051,250105,'Dénoncer la peine de mort',TRUE,1),(2501052,250105,'Faire l''éloge de la justice',FALSE,2),(2501053,250105,'Raconter une histoire d''amour',FALSE,3),(2501054,250105,'Décrire la nature',FALSE,4),
 (2501061,250106,'La première personne',TRUE,1),(2501062,250106,'La deuxième personne',FALSE,2),(2501063,250106,'La troisième personne',FALSE,3),(2501064,250106,'Un narrateur omniscient',FALSE,4),
 (2501071,250107,'Pour une portée universelle',TRUE,1),(2501072,250107,'Par oubli de l''auteur',FALSE,2),(2501073,250107,'Pour le suspense policier',FALSE,3),(2501074,250107,'Parce qu''il est innocent',FALSE,4),
 (2501081,250108,'49',TRUE,1),(2501082,250108,'12',FALSE,2),(2501083,250108,'100',FALSE,3),(2501084,250108,'5',FALSE,4);

INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
 (2502, NULL, @l, 'QCM — Personnages et thèmes', 'Personnages, thèmes, registres.', 2);

INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES
 (250201,2502,'Qui est Marie ?','La fille du condamné.',1),
 (250202,2502,'Que représente le personnage du forçat (le friauche) ?','Le déterminisme social.',2),
 (250203,2502,'Quel thème est au cœur de l''œuvre ?','La peine de mort.',3),
 (250204,2502,'Quel registre domine le récit ?','Le pathétique.',4),
 (250205,2502,'À quel moment le récit s''interrompt-il ?','Au moment de l''exécution.',5),
 (250206,2502,'Dans quelle prison le condamné attend-il d''abord ?','Bicêtre.',6),
 (250207,2502,'Quelle figure rend visite au condamné avant la fin ?','L''aumônier.',7),
 (250208,2502,'Comment Hugo cherche-t-il à convaincre ?','En émouvant le lecteur.',8);

INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
 (2502011,250201,'La fille du condamné',TRUE,1),(2502012,250201,'Sa femme',FALSE,2),(2502013,250201,'Sa sœur',FALSE,3),(2502014,250201,'La gardienne',FALSE,4),
 (2502021,250202,'Le déterminisme social',TRUE,1),(2502022,250202,'La richesse',FALSE,2),(2502023,250202,'L''héroïsme',FALSE,3),(2502024,250202,'La sainteté',FALSE,4),
 (2502031,250203,'La peine de mort',TRUE,1),(2502032,250203,'La guerre',FALSE,2),(2502033,250203,'L''amour courtois',FALSE,3),(2502034,250203,'Le voyage',FALSE,4),
 (2502041,250204,'Le pathétique',TRUE,1),(2502042,250204,'Le comique',FALSE,2),(2502043,250204,'Le burlesque',FALSE,3),(2502044,250204,'Le merveilleux',FALSE,4),
 (2502051,250205,'Au moment de l''exécution',TRUE,1),(2502052,250205,'À sa libération',FALSE,2),(2502053,250205,'À son procès',FALSE,3),(2502054,250205,'À son évasion',FALSE,4),
 (2502061,250206,'Bicêtre',TRUE,1),(2502062,250206,'La Bastille',FALSE,2),(2502063,250206,'Fresnes',FALSE,3),(2502064,250206,'La Santé',FALSE,4),
 (2502071,250207,'L''aumônier',TRUE,1),(2502072,250207,'Un avocat',FALSE,2),(2502073,250207,'Un journaliste',FALSE,3),(2502074,250207,'Un médecin',FALSE,4),
 (2502081,250208,'En émouvant le lecteur',TRUE,1),(2502082,250208,'En menaçant le lecteur',FALSE,2),(2502083,250208,'Par des statistiques',FALSE,3),(2502084,250208,'Par l''humour',FALSE,4);
