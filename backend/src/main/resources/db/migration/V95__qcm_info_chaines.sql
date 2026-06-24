-- QCM du chapitre Informatique « Les chaînes de caractères ». ids 2613/2614.
SET SESSION sql_mode = CONCAT(@@sql_mode, ',NO_BACKSLASH_ESCAPES');
SET @l := (SELECT id FROM lecon WHERE slug = 'chaines-caracteres'
           AND matiere_id = (SELECT id FROM matiere WHERE slug = 'informatique'));

INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
 (2613, NULL, @l, 'QCM — Longueur, indices et parcours', 'Accès aux caractères et parcours d''une chaîne.', 1);

INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES
 (261301,2613,'Quel est le type d''une chaîne de caractères ?','`str`.',1),
 (261302,2613,'Que renvoie `len("Maroc")` ?','5 (le nombre de caractères).',2),
 (261303,2613,'À quel indice se trouve le premier caractère ?','À l''indice 0.',3),
 (261304,2613,'Que vaut `s[-1]` pour `s = "Python"` ?','`n`, le dernier caractère.',4),
 (261305,2613,'Quels indices sont valides pour une chaîne de longueur n ?','De 0 à n - 1.',5),
 (261306,2613,'Comment parcourir une chaîne caractère par caractère ?','Avec `for c in s:`.',6),
 (261307,2613,'Que vaut `s[0]` pour `s = "abc"` ?','`a`.',7),
 (261308,2613,'Quelle est la longueur de la chaîne vide `""` ?','0.',8);

INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
 (2613011,261301,'`str`',TRUE,1),(2613012,261301,'`int`',FALSE,2),(2613013,261301,'`char`',FALSE,3),(2613014,261301,'`text`',FALSE,4),
 (2613021,261302,'5',TRUE,1),(2613022,261302,'4',FALSE,2),(2613023,261302,'6',FALSE,3),(2613024,261302,'1',FALSE,4),
 (2613031,261303,'0',TRUE,1),(2613032,261303,'1',FALSE,2),(2613033,261303,'-1',FALSE,3),(2613034,261303,'Cela dépend',FALSE,4),
 (2613041,261304,'`n`',TRUE,1),(2613042,261304,'`P`',FALSE,2),(2613043,261304,'`o`',FALSE,3),(2613044,261304,'Une erreur',FALSE,4),
 (2613051,261305,'De 0 à n - 1',TRUE,1),(2613052,261305,'De 1 à n',FALSE,2),(2613053,261305,'De 0 à n',FALSE,3),(2613054,261305,'De 1 à n - 1',FALSE,4),
 (2613061,261306,'`for c in s:`',TRUE,1),(2613062,261306,'`while s:`',FALSE,2),(2613063,261306,'`for s in c:`',FALSE,3),(2613064,261306,'`loop s`',FALSE,4),
 (2613071,261307,'`a`',TRUE,1),(2613072,261307,'`b`',FALSE,2),(2613073,261307,'`c`',FALSE,3),(2613074,261307,'`abc`',FALSE,4),
 (2613081,261308,'0',TRUE,1),(2613082,261308,'1',FALSE,2),(2613083,261308,'Indéfinie',FALSE,3),(2613084,261308,'-1',FALSE,4);

INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
 (2614, NULL, @l, 'QCM — Concaténation, slicing et méthodes', 'Opérations et méthodes sur les chaînes.', 2);

INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES
 (261401,2614,'Que produit `"bon" + "jour"` ?','La concaténation "bonjour".',1),
 (261402,2614,'Que produit `"ab" * 3` ?','"ababab" (répétition).',2),
 (261403,2614,'Que renvoie `"informatique"[0:4]` ?','"info" (indices 0 inclus à 4 exclu).',3),
 (261404,2614,'Que renvoie `"abc"[::-1]` ?','"cba" (la chaîne inversée).',4),
 (261405,2614,'Que teste l''opérateur `in` ?','La présence d''une sous-chaîne ou d''un caractère.',5),
 (261406,2614,'Que renvoie `"banane".count("a")` ?','3 (le nombre d''occurrences de "a").',6),
 (261407,2614,'Que renvoie `"abc".upper()` ?','"ABC".',7),
 (261408,2614,'Qu''est-ce qu''un palindrome ?','Un mot égal à son inverse (`s == s[::-1]`).',8);

INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
 (2614011,261401,'"bonjour"',TRUE,1),(2614012,261401,'"bon jour"',FALSE,2),(2614013,261401,'"jourbon"',FALSE,3),(2614014,261401,'Une erreur',FALSE,4),
 (2614021,261402,'"ababab"',TRUE,1),(2614022,261402,'"ab3"',FALSE,2),(2614023,261402,'"abababab"',FALSE,3),(2614024,261402,'6',FALSE,4),
 (2614031,261403,'"info"',TRUE,1),(2614032,261403,'"infor"',FALSE,2),(2614033,261403,'"inf"',FALSE,3),(2614034,261403,'"rmat"',FALSE,4),
 (2614041,261404,'"cba"',TRUE,1),(2614042,261404,'"abc"',FALSE,2),(2614043,261404,'"acb"',FALSE,3),(2614044,261404,'Une erreur',FALSE,4),
 (2614051,261405,'La présence d''un caractère',TRUE,1),(2614052,261405,'La longueur',FALSE,2),(2614053,261405,'L''indice',FALSE,3),(2614054,261405,'Le type',FALSE,4),
 (2614061,261406,'3',TRUE,1),(2614062,261406,'2',FALSE,2),(2614063,261406,'1',FALSE,3),(2614064,261406,'6',FALSE,4),
 (2614071,261407,'"ABC"',TRUE,1),(2614072,261407,'"abc"',FALSE,2),(2614073,261407,'"Abc"',FALSE,3),(2614074,261407,'"cba"',FALSE,4),
 (2614081,261408,'Un mot égal à son inverse',TRUE,1),(2614082,261408,'Un mot très long',FALSE,2),(2614083,261408,'Un mot en majuscules',FALSE,3),(2614084,261408,'Un mot sans voyelle',FALSE,4);
