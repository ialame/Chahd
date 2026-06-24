-- QCM du chapitre Informatique « Les structures conditionnelles ». ids 2603/2604.
SET SESSION sql_mode = CONCAT(@@sql_mode, ',NO_BACKSLASH_ESCAPES');
SET @l := (SELECT id FROM lecon WHERE slug = 'structures-conditionnelles'
           AND matiere_id = (SELECT id FROM matiere WHERE slug = 'informatique'));

INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
 (2603, NULL, @l, 'QCM — if, else, elif et conditions', 'Tester une condition et choisir un bloc.', 1);

INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES
 (260301,2603,'Quel caractère termine la ligne d''un `if` ?','Le deux-points `:`.',1),
 (260302,2603,'Que vaut la condition `5 > 3` ?','`True`.',2),
 (260303,2603,'Quel mot-clé exécute un bloc quand la condition est fausse ?','`else`.',3),
 (260304,2603,'Quel opérateur teste l''égalité de deux valeurs ?','`==`.',4),
 (260305,2603,'À quoi sert `elif` ?','À tester un autre cas (sinon si).',5),
 (260306,2603,'Qu''est-ce qui délimite le bloc d''un `if` en Python ?','L''indentation.',6),
 (260307,2603,'Que vaut `not True` ?','`False`.',7),
 (260308,2603,'L''opérateur logique « et » s''écrit :','`and`.',8);

INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
 (2603011,260301,'`:`',TRUE,1),(2603012,260301,'`;`',FALSE,2),(2603013,260301,'`.`',FALSE,3),(2603014,260301,'rien',FALSE,4),
 (2603021,260302,'`True`',TRUE,1),(2603022,260302,'`False`',FALSE,2),(2603023,260302,'`5`',FALSE,3),(2603024,260302,'`3`',FALSE,4),
 (2603031,260303,'`else`',TRUE,1),(2603032,260303,'`elif`',FALSE,2),(2603033,260303,'`if`',FALSE,3),(2603034,260303,'`then`',FALSE,4),
 (2603041,260304,'`==`',TRUE,1),(2603042,260304,'`=`',FALSE,2),(2603043,260304,'`!=`',FALSE,3),(2603044,260304,'`eq`',FALSE,4),
 (2603051,260305,'Tester un autre cas',TRUE,1),(2603052,260305,'Terminer le programme',FALSE,2),(2603053,260305,'Répéter un bloc',FALSE,3),(2603054,260305,'Afficher une valeur',FALSE,4),
 (2603061,260306,'L''indentation',TRUE,1),(2603062,260306,'Les accolades `{}`',FALSE,2),(2603063,260306,'Le point-virgule',FALSE,3),(2603064,260306,'Le mot `end`',FALSE,4),
 (2603071,260307,'`False`',TRUE,1),(2603072,260307,'`True`',FALSE,2),(2603073,260307,'`0`',FALSE,3),(2603074,260307,'`None`',FALSE,4),
 (2603081,260308,'`and`',TRUE,1),(2603082,260308,'`or`',FALSE,2),(2603083,260308,'`not`',FALSE,3),(2603084,260308,'`&&`',FALSE,4);

INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
 (2604, NULL, @l, 'QCM — Conditions, logique et exemples', 'Opérateurs logiques, parité, max, mention.', 2);

INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES
 (260401,2604,'Comment teste-t-on qu''un entier `n` est pair ?','`n % 2 == 0`.',1),
 (260402,2604,'Que vaut `True and False` ?','`False`.',2),
 (260403,2604,'Que vaut `False or True` ?','`True`.',3),
 (260404,2604,'Quel opérateur inverse une condition ?','`not`.',4),
 (260405,2604,'Avec `if a >= b:`, que vaut le maximum si la condition est vraie ?','`a`.',5),
 (260406,2604,'`and` est vrai quand :','Les deux conditions sont vraies.',6),
 (260407,2604,'Une condition placée dans le bloc d''une autre est dite :','Imbriquée.',7),
 (260408,2604,'Combien de `elif` peut-on enchaîner après un `if` ?','Autant que nécessaire.',8);

INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
 (2604011,260401,'`n % 2 == 0`',TRUE,1),(2604012,260401,'`n / 2 == 0`',FALSE,2),(2604013,260401,'`n // 2 == 0`',FALSE,3),(2604014,260401,'`n ** 2 == 0`',FALSE,4),
 (2604021,260402,'`False`',TRUE,1),(2604022,260402,'`True`',FALSE,2),(2604023,260402,'`None`',FALSE,3),(2604024,260402,'`0`',FALSE,4),
 (2604031,260403,'`True`',TRUE,1),(2604032,260403,'`False`',FALSE,2),(2604033,260403,'`None`',FALSE,3),(2604034,260403,'`1`',FALSE,4),
 (2604041,260404,'`not`',TRUE,1),(2604042,260404,'`and`',FALSE,2),(2604043,260404,'`or`',FALSE,3),(2604044,260404,'`inv`',FALSE,4),
 (2604051,260405,'`a`',TRUE,1),(2604052,260405,'`b`',FALSE,2),(2604053,260405,'`0`',FALSE,3),(2604054,260405,'`a + b`',FALSE,4),
 (2604061,260406,'Les deux conditions sont vraies',TRUE,1),(2604062,260406,'Au moins une est vraie',FALSE,2),(2604063,260406,'Aucune n''est vraie',FALSE,3),(2604064,260406,'Toujours',FALSE,4),
 (2604071,260407,'Imbriquée',TRUE,1),(2604072,260407,'Parallèle',FALSE,2),(2604073,260407,'Inversée',FALSE,3),(2604074,260407,'Globale',FALSE,4),
 (2604081,260408,'Autant que nécessaire',TRUE,1),(2604082,260408,'Un seul',FALSE,2),(2604083,260408,'Deux au maximum',FALSE,3),(2604084,260408,'Aucun',FALSE,4);
