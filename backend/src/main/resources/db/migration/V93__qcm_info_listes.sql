-- QCM du chapitre Informatique « Les listes (tableaux à une dimension) ». ids 2609/2610.
SET SESSION sql_mode = CONCAT(@@sql_mode, ',NO_BACKSLASH_ESCAPES');
SET @l := (SELECT id FROM lecon WHERE slug = 'listes'
           AND matiere_id = (SELECT id FROM matiere WHERE slug = 'informatique'));

INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
 (2609, NULL, @l, 'QCM — Création, indices et parcours', 'Créer une liste, accéder aux éléments, parcourir.', 1);

INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES
 (260901,2609,'Comment crée-t-on une liste de trois entiers ?','Entre crochets : `[3, 7, 1]`.',1),
 (260902,2609,'À quel indice se trouve le premier élément d''une liste ?','À l''indice `0`.',2),
 (260903,2609,'Pour la liste `t = [10, 20, 30, 40]`, que vaut `t[2]` ?','30 (les indices commencent à 0).',3),
 (260904,2609,'Que renvoie `len(t)` pour `t = [5, 6, 7]` ?','3 (le nombre d''éléments).',4),
 (260905,2609,'Quels sont les indices valides d''une liste `t` ?','De `0` à `len(t) - 1`.',5),
 (260906,2609,'Quelle boucle parcourt les indices d''une liste `t` ?','`for i in range(len(t))`.',6),
 (260907,2609,'Comment modifier le deuxième élément de `t` en 99 ?','`t[1] = 99`.',7),
 (260908,2609,'Comment écrit-on une liste vide ?','`[]`.',8);

INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
 (2609011,260901,'`[3, 7, 1]`',TRUE,1),(2609012,260901,'`(3, 7, 1)`',FALSE,2),(2609013,260901,'`{3, 7, 1}`',FALSE,3),(2609014,260901,'`<3, 7, 1>`',FALSE,4),
 (2609021,260902,'`0`',TRUE,1),(2609022,260902,'`1`',FALSE,2),(2609023,260902,'`-1`',FALSE,3),(2609024,260902,'Au hasard',FALSE,4),
 (2609031,260903,'30',TRUE,1),(2609032,260903,'20',FALSE,2),(2609033,260903,'40',FALSE,3),(2609034,260903,'10',FALSE,4),
 (2609041,260904,'3',TRUE,1),(2609042,260904,'2',FALSE,2),(2609043,260904,'4',FALSE,3),(2609044,260904,'0',FALSE,4),
 (2609051,260905,'De `0` à `len(t) - 1`',TRUE,1),(2609052,260905,'De `1` à `len(t)`',FALSE,2),(2609053,260905,'De `0` à `len(t)`',FALSE,3),(2609054,260905,'De `1` à `len(t) - 1`',FALSE,4),
 (2609061,260906,'`for i in range(len(t))`',TRUE,1),(2609062,260906,'`for i in t`',FALSE,2),(2609063,260906,'`for i in len(t)`',FALSE,3),(2609064,260906,'`while t`',FALSE,4),
 (2609071,260907,'`t[1] = 99`',TRUE,1),(2609072,260907,'`t[2] = 99`',FALSE,2),(2609073,260907,'`t(1) = 99`',FALSE,3),(2609074,260907,'`t = 99`',FALSE,4),
 (2609081,260908,'`[]`',TRUE,1),(2609082,260908,'`{}`',FALSE,2),(2609083,260908,'`()`',FALSE,3),(2609084,260908,'`0`',FALSE,4);

INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
 (2610, NULL, @l, 'QCM — Opérations sur les listes', 'append, somme, min/max, recherche, slicing.', 2);

INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES
 (261001,2610,'Quelle méthode ajoute un élément à la fin d''une liste ?','`append`.',1),
 (261002,2610,'Que vaut `sum([2, 3, 5])` ?','10.',2),
 (261003,2610,'Comment calcule-t-on la moyenne des éléments de `t` ?','`sum(t) / len(t)`.',3),
 (261004,2610,'Que renvoie `max([4, 9, 2])` ?','9.',4),
 (261005,2610,'Comment tester si la valeur `5` est dans la liste `t` ?','`5 in t`.',5),
 (261006,2610,'Pour `t = [10, 20, 30, 40, 50]`, que vaut `t[1:4]` ?','`[20, 30, 40]` (indice 4 exclu).',6),
 (261007,2610,'Dans la tranche `t[a:b]`, l''indice `b` est :','**exclu**.',7),
 (261008,2610,'Pour `t = [10, 20, 30, 40]`, que vaut `t[:2]` ?','`[10, 20]`.',8);

INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
 (2610011,261001,'`append`',TRUE,1),(2610012,261001,'`add`',FALSE,2),(2610013,261001,'`push`',FALSE,3),(2610014,261001,'`insert_end`',FALSE,4),
 (2610021,261002,'10',TRUE,1),(2610022,261002,'8',FALSE,2),(2610023,261002,'235',FALSE,3),(2610024,261002,'5',FALSE,4),
 (2610031,261003,'`sum(t) / len(t)`',TRUE,1),(2610032,261003,'`sum(t) / 2`',FALSE,2),(2610033,261003,'`sum(t)`',FALSE,3),(2610034,261003,'`len(t) / sum(t)`',FALSE,4),
 (2610041,261004,'9',TRUE,1),(2610042,261004,'4',FALSE,2),(2610043,261004,'2',FALSE,3),(2610044,261004,'15',FALSE,4),
 (2610051,261005,'`5 in t`',TRUE,1),(2610052,261005,'`t == 5`',FALSE,2),(2610053,261005,'`t.has(5)`',FALSE,3),(2610054,261005,'`5 = t`',FALSE,4),
 (2610061,261006,'`[20, 30, 40]`',TRUE,1),(2610062,261006,'`[20, 30, 40, 50]`',FALSE,2),(2610063,261006,'`[10, 20, 30, 40]`',FALSE,3),(2610064,261006,'`[30, 40]`',FALSE,4),
 (2610071,261007,'exclu',TRUE,1),(2610072,261007,'inclus',FALSE,2),(2610073,261007,'ignoré',FALSE,3),(2610074,261007,'obligatoire',FALSE,4),
 (2610081,261008,'`[10, 20]`',TRUE,1),(2610082,261008,'`[10, 20, 30]`',FALSE,2),(2610083,261008,'`[20, 30]`',FALSE,3),(2610084,261008,'`[10]`',FALSE,4);
