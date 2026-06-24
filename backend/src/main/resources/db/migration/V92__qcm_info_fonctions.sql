-- QCM du chapitre Informatique « Les fonctions et les procédures ». ids 2607/2608.
SET SESSION sql_mode = CONCAT(@@sql_mode, ',NO_BACKSLASH_ESCAPES');
SET @l := (SELECT id FROM lecon WHERE slug = 'fonctions'
           AND matiere_id = (SELECT id FROM matiere WHERE slug = 'informatique'));

INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
 (2607, NULL, @l, 'QCM — Définir et appeler une fonction', 'def, paramètres, return, arguments.', 1);

INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES
 (260701,2607,'Quel mot-clé définit une fonction en Python ?','`def`.',1),
 (260702,2607,'Quelle instruction renvoie une valeur ?','`return`.',2),
 (260703,2607,'Dans `def carre(x):`, que représente `x` ?','Un paramètre de la fonction.',3),
 (260704,2607,'Que vaut `carre(4)` si `def carre(x): return x * x` ?','16.',4),
 (260705,2607,'Comment appelle-t-on la valeur fournie lors de l''appel ?','Un argument.',5),
 (260706,2607,'Que se passe-t-il dès qu''un `return` est exécuté ?','La fonction s''arrête immédiatement.',6),
 (260707,2607,'Que vaut `maximum(4, 9)` si la fonction renvoie le plus grand ?','9.',7),
 (260708,2607,'Comment appelle-t-on la fonction `somme` avec 2 et 5 ?','`somme(2, 5)`.',8);

INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
 (2607011,260701,'`def`',TRUE,1),(2607012,260701,'`func`',FALSE,2),(2607013,260701,'`function`',FALSE,3),(2607014,260701,'`fun`',FALSE,4),
 (2607021,260702,'`return`',TRUE,1),(2607022,260702,'`print`',FALSE,2),(2607023,260702,'`give`',FALSE,3),(2607024,260702,'`out`',FALSE,4),
 (2607031,260703,'Un paramètre',TRUE,1),(2607032,260703,'Une variable globale',FALSE,2),(2607033,260703,'Le nom de la fonction',FALSE,3),(2607034,260703,'Un argument',FALSE,4),
 (2607041,260704,'16',TRUE,1),(2607042,260704,'8',FALSE,2),(2607043,260704,'4',FALSE,3),(2607044,260704,'12',FALSE,4),
 (2607051,260705,'Un argument',TRUE,1),(2607052,260705,'Un paramètre',FALSE,2),(2607053,260705,'Une procédure',FALSE,3),(2607054,260705,'Un return',FALSE,4),
 (2607061,260706,'La fonction s''arrête',TRUE,1),(2607062,260706,'La fonction continue',FALSE,2),(2607063,260706,'Rien',FALSE,3),(2607064,260706,'Une erreur survient',FALSE,4),
 (2607071,260707,'9',TRUE,1),(2607072,260707,'4',FALSE,2),(2607073,260707,'13',FALSE,3),(2607074,260707,'5',FALSE,4),
 (2607081,260708,'`somme(2, 5)`',TRUE,1),(2607082,260708,'`somme = 2, 5`',FALSE,2),(2607083,260708,'`def somme(2, 5)`',FALSE,3),(2607084,260708,'`somme[2, 5]`',FALSE,4);

INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
 (2608, NULL, @l, 'QCM — Procédures et variables locales', 'fonction vs procédure, portée des variables.', 2);

INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES
 (260801,2608,'Qu''est-ce qui distingue une procédure d''une fonction ?','Une procédure n''a pas de `return`.',1),
 (260802,2608,'Quelle instruction affiche une valeur sans la renvoyer ?','`print(...)`.',2),
 (260803,2608,'Une variable créée dans une fonction est :','locale.',3),
 (260804,2608,'Une variable définie hors de toute fonction est :','globale.',4),
 (260805,2608,'Un paramètre de fonction est une variable :','locale.',5),
 (260806,2608,'Que renvoie en réalité une procédure (sans return) ?','`None`.',6),
 (260807,2608,'Que renvoie `est_pair(8)` si elle teste `n % 2 == 0` ?','`True`.',7),
 (260808,2608,'Peut-on utiliser une variable locale en dehors de sa fonction ?','Non, elle n''existe plus.',8);

INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
 (2608011,260801,'Elle n''a pas de `return`',TRUE,1),(2608012,260801,'Elle a un `return`',FALSE,2),(2608013,260801,'Elle n''a pas de paramètres',FALSE,3),(2608014,260801,'Elle n''a pas de nom',FALSE,4),
 (2608021,260802,'`print(...)`',TRUE,1),(2608022,260802,'`return ...`',FALSE,2),(2608023,260802,'`input(...)`',FALSE,3),(2608024,260802,'`def ...`',FALSE,4),
 (2608031,260803,'locale',TRUE,1),(2608032,260803,'globale',FALSE,2),(2608033,260803,'constante',FALSE,3),(2608034,260803,'publique',FALSE,4),
 (2608041,260804,'globale',TRUE,1),(2608042,260804,'locale',FALSE,2),(2608043,260804,'temporaire',FALSE,3),(2608044,260804,'privée',FALSE,4),
 (2608051,260805,'locale',TRUE,1),(2608052,260805,'globale',FALSE,2),(2608053,260805,'inexistante',FALSE,3),(2608054,260805,'partagée',FALSE,4),
 (2608061,260806,'`None`',TRUE,1),(2608062,260806,'`0`',FALSE,2),(2608063,260806,'`False`',FALSE,3),(2608064,260806,'`""`',FALSE,4),
 (2608071,260807,'`True`',TRUE,1),(2608072,260807,'`False`',FALSE,2),(2608073,260807,'`8`',FALSE,3),(2608074,260807,'`None`',FALSE,4),
 (2608081,260808,'Non, elle n''existe plus',TRUE,1),(2608082,260808,'Oui, partout',FALSE,2),(2608083,260808,'Oui, mais seulement après',FALSE,3),(2608084,260808,'Oui, si elle est globale',FALSE,4);
