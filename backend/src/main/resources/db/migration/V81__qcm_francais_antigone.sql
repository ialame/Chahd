-- QCM du chapitre Français « Antigone » (Anouilh). ids 2505/2506.
SET SESSION sql_mode = CONCAT(@@sql_mode, ',NO_BACKSLASH_ESCAPES');
SET @l := (SELECT id FROM lecon WHERE slug = 'antigone'
           AND matiere_id = (SELECT id FROM matiere WHERE slug = 'francais'));

INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
 (2505, NULL, @l, 'QCM — L''œuvre et son contexte', 'Auteur, genre, source, contexte.', 1);

INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES
 (250501,2505,'Qui est l''auteur d''Antigone ?','Jean Anouilh.',1),
 (250502,2505,'En quelle année la pièce est-elle créée ?','En 1944.',2),
 (250503,2505,'Quel est le genre de l''œuvre ?','Une tragédie moderne.',3),
 (250504,2505,'De quel auteur antique la pièce est-elle la réécriture ?','Sophocle.',4),
 (250505,2505,'Dans quel contexte historique la pièce paraît-elle ?','Sous l''Occupation.',5),
 (250506,2505,'Pourquoi Créon interdit-il d''enterrer Polynice ?','Parce qu''il le considère comme un traître.',6),
 (250507,2505,'Quel frère reçoit des funérailles officielles ?','Étéocle.',7),
 (250508,2505,'Quel personnage annonce d''avance le sort des héros ?','Le Prologue (le Chœur).',8);

INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
 (2505011,250501,'Jean Anouilh',TRUE,1),(2505012,250501,'Victor Hugo',FALSE,2),(2505013,250501,'Albert Camus',FALSE,3),(2505014,250501,'Molière',FALSE,4),
 (2505021,250502,'1944',TRUE,1),(2505022,250502,'1829',FALSE,2),(2505023,250502,'1900',FALSE,3),(2505024,250502,'1962',FALSE,4),
 (2505031,250503,'Une tragédie moderne',TRUE,1),(2505032,250503,'Un roman à thèse',FALSE,2),(2505033,250503,'Une comédie',FALSE,3),(2505034,250503,'Un conte',FALSE,4),
 (2505041,250504,'Sophocle',TRUE,1),(2505042,250504,'Euripide',FALSE,2),(2505043,250504,'Homère',FALSE,3),(2505044,250504,'Racine',FALSE,4),
 (2505051,250505,'Sous l''Occupation',TRUE,1),(2505052,250505,'Sous la Révolution',FALSE,2),(2505053,250505,'Au Moyen Âge',FALSE,3),(2505054,250505,'Sous l''Empire romain',FALSE,4),
 (2505061,250506,'Il le considère comme un traître',TRUE,1),(2505062,250506,'Il était trop pauvre',FALSE,2),(2505063,250506,'Il était étranger',FALSE,3),(2505064,250506,'Il était malade',FALSE,4),
 (2505071,250507,'Étéocle',TRUE,1),(2505072,250507,'Polynice',FALSE,2),(2505073,250507,'Hémon',FALSE,3),(2505074,250507,'Créon',FALSE,4),
 (2505081,250508,'Le Prologue (le Chœur)',TRUE,1),(2505082,250508,'La nourrice',FALSE,2),(2505083,250508,'Les gardes',FALSE,3),(2505084,250508,'Ismène',FALSE,4);

INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
 (2506, NULL, @l, 'QCM — Personnages et thèmes', 'Personnages, thèmes, tragique.', 2);

INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES
 (250601,2506,'Que fait Antigone malgré l''interdit ?','Elle recouvre le corps de Polynice de terre.',1),
 (250602,2506,'Qui est Ismène ?','La sœur d''Antigone.',2),
 (250603,2506,'Qui est Hémon ?','Le fils de Créon et fiancé d''Antigone.',3),
 (250604,2506,'Que représente Créon dans la pièce ?','La raison d''État et le devoir de gouverner.',4),
 (250605,2506,'Quel mot résume l''attitude d''Antigone face au pouvoir ?','Le refus : elle dit non.',5),
 (250606,2506,'Quel registre domine la pièce ?','Le tragique.',6),
 (250607,2506,'Que refuse Antigone en choisissant la mort ?','Le compromis et le bonheur médiocre.',7),
 (250608,2506,'Quelle lecture politique permet le non d''Antigone en 1944 ?','Un appel à la résistance.',8);

INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
 (2506011,250601,'Elle recouvre son corps de terre',TRUE,1),(2506012,250601,'Elle s''enfuit de Thèbes',FALSE,2),(2506013,250601,'Elle tue Créon',FALSE,3),(2506014,250601,'Elle épouse Hémon',FALSE,4),
 (2506021,250602,'La sœur d''Antigone',TRUE,1),(2506022,250602,'La mère de Créon',FALSE,2),(2506023,250602,'Une servante',FALSE,3),(2506024,250602,'La reine de Thèbes',FALSE,4),
 (2506031,250603,'Le fils de Créon et fiancé d''Antigone',TRUE,1),(2506032,250603,'Le frère d''Antigone',FALSE,2),(2506033,250603,'Un garde',FALSE,3),(2506034,250603,'Le roi voisin',FALSE,4),
 (2506041,250604,'La raison d''État et le devoir',TRUE,1),(2506042,250604,'La révolte',FALSE,2),(2506043,250604,'L''enfance',FALSE,3),(2506044,250604,'La pureté',FALSE,4),
 (2506051,250605,'Le refus : elle dit non',TRUE,1),(2506052,250605,'L''obéissance',FALSE,2),(2506053,250605,'L''indifférence',FALSE,3),(2506054,250605,'La fuite',FALSE,4),
 (2506061,250606,'Le tragique',TRUE,1),(2506062,250606,'Le comique',FALSE,2),(2506063,250606,'Le burlesque',FALSE,3),(2506064,250606,'Le merveilleux',FALSE,4),
 (2506071,250607,'Le compromis et le bonheur médiocre',TRUE,1),(2506072,250607,'La richesse',FALSE,2),(2506073,250607,'Le trône',FALSE,3),(2506074,250607,'La gloire',FALSE,4),
 (2506081,250608,'Un appel à la résistance',TRUE,1),(2506082,250608,'Un éloge du pouvoir',FALSE,2),(2506083,250608,'Une satire religieuse',FALSE,3),(2506084,250608,'Une intrigue policière',FALSE,4);
