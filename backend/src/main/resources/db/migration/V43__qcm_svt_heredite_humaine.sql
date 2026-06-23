-- QCM du chapitre SVT « La génétique humaine ». ids 2213/2214.
SET SESSION sql_mode = CONCAT(@@sql_mode, ',NO_BACKSLASH_ESCAPES');
SET @l := (SELECT id FROM lecon WHERE slug = 'heredite-humaine'
           AND matiere_id = (SELECT id FROM matiere WHERE slug = 'svt'));

-- ===== notions (2213) =====
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
 (2213, NULL, @l, 'QCM — Génétique humaine : notions', 'Pédigrée, mode de transmission, maladies.', 1);

INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES
 (221301,2213,'L''hérédité humaine s''étudie surtout par :','Les arbres généalogiques (pédigrées).',1),
 (221302,2213,'Dans un arbre généalogique, un cercle représente :','Une femme.',2),
 (221303,2213,'Un individu atteint est représenté par un symbole :','Rempli (noirci).',3),
 (221304,2213,'Si deux parents sains ont un enfant atteint, l''allèle est :','Récessif.',4),
 (221305,2213,'Si une maladie touche surtout les garçons, le gène est :','Lié au chromosome X.',5),
 (221306,2213,'La femme a pour chromosomes sexuels :','XX.',6),
 (221307,2213,'La drépanocytose est une maladie :','Autosomique récessive.',7),
 (221308,2213,'L''hémophilie est une maladie :','Récessive liée au chromosome X.',8);

INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
 (2213011,221301,'les arbres généalogiques',TRUE,1),(2213012,221301,'des croisements expérimentaux',FALSE,2),(2213013,221301,'le clonage',FALSE,3),(2213014,221301,'la mitose',FALSE,4),
 (2213021,221302,'une femme',TRUE,1),(2213022,221302,'un homme',FALSE,2),(2213023,221302,'un individu atteint',FALSE,3),(2213024,221302,'une union',FALSE,4),
 (2213031,221303,'rempli (noirci)',TRUE,1),(2213032,221303,'vide (blanc)',FALSE,2),(2213033,221303,'en pointillés',FALSE,3),(2213034,221303,'barré',FALSE,4),
 (2213041,221304,'récessif',TRUE,1),(2213042,221304,'dominant',FALSE,2),(2213043,221304,'lié à Y',FALSE,3),(2213044,221304,'absent',FALSE,4),
 (2213051,221305,'lié au chromosome X',TRUE,1),(2213052,221305,'autosomique',FALSE,2),(2213053,221305,'lié au chromosome 21',FALSE,3),(2213054,221305,'dominant',FALSE,4),
 (2213061,221306,'XX',TRUE,1),(2213062,221306,'XY',FALSE,2),(2213063,221306,'YY',FALSE,3),(2213064,221306,'X seul',FALSE,4),
 (2213071,221307,'autosomique récessive',TRUE,1),(2213072,221307,'liée à X',FALSE,2),(2213073,221307,'autosomique dominante',FALSE,3),(2213074,221307,'non héréditaire',FALSE,4),
 (2213081,221308,'récessive liée à X',TRUE,1),(2213082,221308,'autosomique dominante',FALSE,2),(2213083,221308,'autosomique récessive',FALSE,3),(2213084,221308,'liée à Y',FALSE,4);

-- ===== applications (2214) =====
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
 (2214, NULL, @l, 'QCM — Génétique humaine : applications', 'Croisements, probabilités.', 2);

INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES
 (221401,2214,'Femme porteuse (Xᴬ Xᵃ) × homme sain (Xᴬ Y) : la proportion de garçons atteints est :','1/2.',1),
 (221402,2214,'Dans ce même croisement, les filles sont :','Toutes saines (la moitié porteuses).',2),
 (221403,2214,'Un garçon reçoit son chromosome X de :','Sa mère.',3),
 (221404,2214,'Un père atteint (maladie récessive liée à X) transmet l''allèle à :','Toutes ses filles.',4),
 (221405,2214,'Deux parents hétérozygotes (A//a) pour une maladie autosomique récessive : le risque d''enfant atteint est :','1/4.',5),
 (221406,2214,'Un caractère qui touche autant les filles que les garçons est probablement :','Autosomique.',6),
 (221407,2214,'La myopathie de Duchenne est une maladie :','Récessive liée à X.',7),
 (221408,2214,'Pour calculer le risque qu''un enfant soit atteint, on utilise :','L''échiquier de croisement.',8);

INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
 (2214011,221401,'1/2',TRUE,1),(2214012,221401,'1/4',FALSE,2),(2214013,221401,'tous',FALSE,3),(2214014,221401,'aucun',FALSE,4),
 (2214021,221402,'toutes saines (1/2 porteuses)',TRUE,1),(2214022,221402,'toutes atteintes',FALSE,2),(2214023,221402,'1/2 atteintes',FALSE,3),(2214024,221402,'toutes porteuses atteintes',FALSE,4),
 (2214031,221403,'sa mère',TRUE,1),(2214032,221403,'son père',FALSE,2),(2214033,221403,'les deux parents',FALSE,3),(2214034,221403,'aucun parent',FALSE,4),
 (2214041,221404,'toutes ses filles',TRUE,1),(2214042,221404,'tous ses fils',FALSE,2),(2214043,221404,'aucun enfant',FALSE,3),(2214044,221404,'la moitié de ses fils',FALSE,4),
 (2214051,221405,'1/4',TRUE,1),(2214052,221405,'1/2',FALSE,2),(2214053,221405,'3/4',FALSE,3),(2214054,221405,'0',FALSE,4),
 (2214061,221406,'autosomique',TRUE,1),(2214062,221406,'lié à X',FALSE,2),(2214063,221406,'lié à Y',FALSE,3),(2214064,221406,'mitochondrial',FALSE,4),
 (2214071,221407,'récessive liée à X',TRUE,1),(2214072,221407,'autosomique dominante',FALSE,2),(2214073,221407,'autosomique récessive',FALSE,3),(2214074,221407,'non héréditaire',FALSE,4),
 (2214081,221408,'l''échiquier de croisement',TRUE,1),(2214082,221408,'un microscope',FALSE,2),(2214083,221408,'une électrophorèse',FALSE,3),(2214084,221408,'un caryotype seul',FALSE,4);
