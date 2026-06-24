-- QCM du chapitre Informatique « La récursivité ». ids 2617/2618.
SET SESSION sql_mode = CONCAT(@@sql_mode, ',NO_BACKSLASH_ESCAPES');
SET @l := (SELECT id FROM lecon WHERE slug = 'recursivite'
           AND matiere_id = (SELECT id FROM matiere WHERE slug = 'informatique'));

INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
 (2617, NULL, @l, 'QCM — Fonctions récursives', 'Cas de base, cas récursif, récursion infinie.', 1);

INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES
 (261701,2617,'Une fonction récursive est une fonction qui :','Elle s''appelle elle-même.',1),
 (261702,2617,'Comment appelle-t-on la condition d''arrêt d''une fonction récursive ?','Le cas de base.',2),
 (261703,2617,'Que se passe-t-il si le cas de base est absent ?','Récursion infinie, puis `RecursionError`.',3),
 (261704,2617,'Dans `factorielle`, quel est le cas de base ?','`0! = 1`, donc `n == 0`.',4),
 (261705,2617,'Combien de cas de base a la fonction récursive de Fibonacci ?','Deux : `F(0)=0` et `F(1)=1`.',5),
 (261706,2617,'Le cas récursif doit toujours :','Se rapprocher du cas de base.',6),
 (261707,2617,'Que vaut `factorielle(3)` ?','3 * 2 * 1 = 6.',7),
 (261708,2617,'Quelle erreur Python signale une récursion infinie ?','`RecursionError`.',8);

INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
 (2617011,261701,'S''appelle elle-même',TRUE,1),(2617012,261701,'N''a pas de paramètre',FALSE,2),(2617013,261701,'Renvoie toujours `None`',FALSE,3),(2617014,261701,'Ne contient pas de `return`',FALSE,4),
 (2617021,261702,'Le cas de base',TRUE,1),(2617022,261702,'Le cas récursif',FALSE,2),(2617023,261702,'La boucle `while`',FALSE,3),(2617024,261702,'Le paramètre',FALSE,4),
 (2617031,261703,'Une récursion infinie',TRUE,1),(2617032,261703,'Le résultat 0',FALSE,2),(2617033,261703,'Rien de spécial',FALSE,3),(2617034,261703,'Une division par zéro',FALSE,4),
 (2617041,261704,'`n == 0`',TRUE,1),(2617042,261704,'`n == 1` seulement',FALSE,2),(2617043,261704,'`n < 0`',FALSE,3),(2617044,261704,'Il n''y en a pas',FALSE,4),
 (2617051,261705,'Deux',TRUE,1),(2617052,261705,'Un',FALSE,2),(2617053,261705,'Trois',FALSE,3),(2617054,261705,'Zéro',FALSE,4),
 (2617061,261706,'Se rapprocher du cas de base',TRUE,1),(2617062,261706,'S''en éloigner',FALSE,2),(2617063,261706,'Rester identique',FALSE,3),(2617064,261706,'Doubler le paramètre',FALSE,4),
 (2617071,261707,'6',TRUE,1),(2617072,261707,'3',FALSE,2),(2617073,261707,'9',FALSE,3),(2617074,261707,'1',FALSE,4),
 (2617081,261708,'`RecursionError`',TRUE,1),(2617082,261708,'`ValueError`',FALSE,2),(2617083,261708,'`TypeError`',FALSE,3),(2617084,261708,'`IndexError`',FALSE,4);

INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
 (2618, NULL, @l, 'QCM — Exemples et récursif vs itératif', 'Puissance, somme, PGCD, comparaison.', 2);

INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES
 (261801,2618,'Quelle est la définition récursive de la puissance `x**n` ?','`x * x**(n-1)`, cas de base `x**0 = 1`.',1),
 (261802,2618,'Pour la somme de 1 à n, le cas récursif est :','`n + somme(n-1)`.',2),
 (261803,2618,'Le cas de base de la somme de 1 à n est :','`somme(0) = 0`.',3),
 (261804,2618,'Quelle est la formule récursive du PGCD (Euclide) ?','`pgcd(b, a % b)`.',4),
 (261805,2618,'Le cas de base du PGCD est :','`pgcd(a, 0) = a`.',5),
 (261806,2618,'Quel avantage a la version itérative ?','Elle ne sature pas la pile d''appels.',6),
 (261807,2618,'La version récursive consomme surtout :','La pile d''appels.',7),
 (261808,2618,'Tout algorithme récursif peut aussi s''écrire :','De façon itérative, avec une boucle.',8);

INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
 (2618011,261801,'`x * x**(n-1)`',TRUE,1),(2618012,261801,'`n * x**(n-1)`',FALSE,2),(2618013,261801,'`x + x**(n-1)`',FALSE,3),(2618014,261801,'`x**(n+1)`',FALSE,4),
 (2618021,261802,'`n + somme(n-1)`',TRUE,1),(2618022,261802,'`n * somme(n-1)`',FALSE,2),(2618023,261802,'`somme(n-1)`',FALSE,3),(2618024,261802,'`n + n-1`',FALSE,4),
 (2618031,261803,'`somme(0) = 0`',TRUE,1),(2618032,261803,'`somme(0) = 1`',FALSE,2),(2618033,261803,'`somme(1) = 0`',FALSE,3),(2618034,261803,'Il n''y en a pas',FALSE,4),
 (2618041,261804,'`pgcd(b, a % b)`',TRUE,1),(2618042,261804,'`pgcd(a, b - a)`',FALSE,2),(2618043,261804,'`pgcd(a % b, b)`',FALSE,3),(2618044,261804,'`pgcd(a, b)`',FALSE,4),
 (2618051,261805,'`pgcd(a, 0) = a`',TRUE,1),(2618052,261805,'`pgcd(0, b) = 0`',FALSE,2),(2618053,261805,'`pgcd(a, 0) = 0`',FALSE,3),(2618054,261805,'`pgcd(1, 1) = 1`',FALSE,4),
 (2618061,261806,'Elle ne sature pas la pile',TRUE,1),(2618062,261806,'Elle est toujours plus lente',FALSE,2),(2618063,261806,'Elle n''a pas de boucle',FALSE,3),(2618064,261806,'Elle n''a pas besoin de variables',FALSE,4),
 (2618071,261807,'La pile d''appels',TRUE,1),(2618072,261807,'Le disque dur',FALSE,2),(2618073,261807,'Le réseau',FALSE,3),(2618074,261807,'Aucune ressource',FALSE,4),
 (2618081,261808,'De façon itérative (boucle)',TRUE,1),(2618082,261808,'Uniquement en récursif',FALSE,2),(2618083,261808,'Sans aucune fonction',FALSE,3),(2618084,261808,'Seulement en C',FALSE,4);
