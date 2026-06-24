-- QCM du chapitre Informatique « Les bases de la programmation en Python ». ids 2601/2602.
SET SESSION sql_mode = CONCAT(@@sql_mode, ',NO_BACKSLASH_ESCAPES');
SET @l := (SELECT id FROM lecon WHERE slug = 'bases-python'
           AND matiere_id = (SELECT id FROM matiere WHERE slug = 'informatique'));

INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
 (2601, NULL, @l, 'QCM — Variables, types et opérateurs', 'Les bases du langage Python.', 1);

INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES
 (260101,2601,'En Python, l''opérateur d''affectation est :','`=` affecte une valeur à une variable.',1),
 (260102,2601,'Quel type représente un nombre entier ?','`int`.',2),
 (260103,2601,'Que renvoie la fonction `input()` ?','Une chaîne de caractères (`str`).',3),
 (260104,2601,'Quelle est la valeur de `7 // 2` ?','3 (division entière).',4),
 (260105,2601,'Quelle est la valeur de `7 % 2` ?','1 (le reste).',5),
 (260106,2601,'Quelle est la valeur de `2 ** 3` ?','8 (puissance).',6),
 (260107,2601,'Comment teste-t-on l''égalité de deux valeurs ?','Avec `==`.',7),
 (260108,2601,'Quel est le type de la valeur `3.14` ?','`float`.',8);

INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
 (2601011,260101,'`=`',TRUE,1),(2601012,260101,'`==`',FALSE,2),(2601013,260101,'`:=`',FALSE,3),(2601014,260101,'`->`',FALSE,4),
 (2601021,260102,'`int`',TRUE,1),(2601022,260102,'`float`',FALSE,2),(2601023,260102,'`str`',FALSE,3),(2601024,260102,'`bool`',FALSE,4),
 (2601031,260103,'Une chaîne (`str`)',TRUE,1),(2601032,260103,'Un entier (`int`)',FALSE,2),(2601033,260103,'Un booléen',FALSE,3),(2601034,260103,'Rien',FALSE,4),
 (2601041,260104,'3',TRUE,1),(2601042,260104,'3.5',FALSE,2),(2601043,260104,'1',FALSE,3),(2601044,260104,'4',FALSE,4),
 (2601051,260105,'1',TRUE,1),(2601052,260105,'3',FALSE,2),(2601053,260105,'0',FALSE,3),(2601054,260105,'2',FALSE,4),
 (2601061,260106,'8',TRUE,1),(2601062,260106,'6',FALSE,2),(2601063,260106,'9',FALSE,3),(2601064,260106,'23',FALSE,4),
 (2601071,260107,'`==`',TRUE,1),(2601072,260107,'`=`',FALSE,2),(2601073,260107,'`!`',FALSE,3),(2601074,260107,'`eq`',FALSE,4),
 (2601081,260108,'`float`',TRUE,1),(2601082,260108,'`int`',FALSE,2),(2601083,260108,'`str`',FALSE,3),(2601084,260108,'`double`',FALSE,4);

INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
 (2602, NULL, @l, 'QCM — Entrées/sorties et conversions', 'print, input, conversions, logique.', 2);

INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES
 (260201,2602,'Pour convertir la chaîne "5" en entier, on écrit :','`int("5")`.',1),
 (260202,2602,'Quelle instruction affiche une valeur à l''écran ?','`print(...)`.',2),
 (260203,2602,'Quelle est la valeur de `10 / 4` ?','2.5 (division réelle).',3),
 (260204,2602,'L''opérateur logique « et » s''écrit :','`and`.',4),
 (260205,2602,'Que vaut `not True` ?','`False`.',5),
 (260206,2602,'Quelles sont les deux valeurs possibles d''un booléen ?','`True` et `False`.',6),
 (260207,2602,'Que produit `"2" + "3"` (deux chaînes) ?','La concaténation "23".',7),
 (260208,2602,'Quel opérateur logique inverse une condition ?','`not`.',8);

INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
 (2602011,260201,'`int("5")`',TRUE,1),(2602012,260201,'`str(5)`',FALSE,2),(2602013,260201,'`float("5")`',FALSE,3),(2602014,260201,'`"5"`',FALSE,4),
 (2602021,260202,'`print`',TRUE,1),(2602022,260202,'`input`',FALSE,2),(2602023,260202,'`read`',FALSE,3),(2602024,260202,'`show`',FALSE,4),
 (2602031,260203,'2.5',TRUE,1),(2602032,260203,'2',FALSE,2),(2602033,260203,'3',FALSE,3),(2602034,260203,'2.0',FALSE,4),
 (2602041,260204,'`and`',TRUE,1),(2602042,260204,'`or`',FALSE,2),(2602043,260204,'`not`',FALSE,3),(2602044,260204,'`&`',FALSE,4),
 (2602051,260205,'`False`',TRUE,1),(2602052,260205,'`True`',FALSE,2),(2602053,260205,'`0`',FALSE,3),(2602054,260205,'`None`',FALSE,4),
 (2602061,260206,'`True` et `False`',TRUE,1),(2602062,260206,'`0` et `1` uniquement',FALSE,2),(2602063,260206,'`oui` et `non`',FALSE,3),(2602064,260206,'`yes` et `no`',FALSE,4),
 (2602071,260207,'"23"',TRUE,1),(2602072,260207,'5',FALSE,2),(2602073,260207,'"5"',FALSE,3),(2602074,260207,'Une erreur',FALSE,4),
 (2602081,260208,'`not`',TRUE,1),(2602082,260208,'`and`',FALSE,2),(2602083,260208,'`or`',FALSE,3),(2602084,260208,'`inv`',FALSE,4);
