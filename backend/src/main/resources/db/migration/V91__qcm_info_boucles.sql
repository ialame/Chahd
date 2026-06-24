-- QCM du chapitre Informatique « Les structures itératives (boucles) ». ids 2605/2606.
SET SESSION sql_mode = CONCAT(@@sql_mode, ',NO_BACKSLASH_ESCAPES');
SET @l := (SELECT id FROM lecon WHERE slug = 'structures-iteratives'
           AND matiere_id = (SELECT id FROM matiere WHERE slug = 'informatique'));

INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
 (2605, NULL, @l, 'QCM — Boucles for et range', 'La boucle for et la fonction range.', 1);

INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES
 (260501,2605,'À quoi sert une boucle ?','À répéter un bloc d''instructions.',1),
 (260502,2605,'Quelle boucle utilise-t-on quand le nombre de tours est connu ?','La boucle `for`.',2),
 (260503,2605,'Que produit `range(4)` ?','`0, 1, 2, 3` : la borne 4 est exclue.',3),
 (260504,2605,'Combien de valeurs produit `range(2, 6)` ?','4 valeurs : 2, 3, 4, 5.',4),
 (260505,2605,'Que produit `range(0, 10, 2)` ?','Les pairs 0, 2, 4, 6, 8.',5),
 (260506,2605,'À quelle valeur initialise-t-on un accumulateur de somme ?','À `0`.',6),
 (260507,2605,'À quelle valeur initialise-t-on un accumulateur de produit ?','À `1`.',7),
 (260508,2605,'Que vaut la somme `1+2+3+4+5` calculée par une boucle ?','15.',8);

INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
 (2605011,260501,'Répéter un bloc d''instructions',TRUE,1),(2605012,260501,'Tester une condition une fois',FALSE,2),(2605013,260501,'Définir une variable',FALSE,3),(2605014,260501,'Afficher du texte',FALSE,4),
 (2605021,260502,'`for`',TRUE,1),(2605022,260502,'`while`',FALSE,2),(2605023,260502,'`if`',FALSE,3),(2605024,260502,'`def`',FALSE,4),
 (2605031,260503,'`0, 1, 2, 3`',TRUE,1),(2605032,260503,'`0, 1, 2, 3, 4`',FALSE,2),(2605033,260503,'`1, 2, 3, 4`',FALSE,3),(2605034,260503,'`1, 2, 3`',FALSE,4),
 (2605041,260504,'4',TRUE,1),(2605042,260504,'5',FALSE,2),(2605043,260504,'3',FALSE,3),(2605044,260504,'6',FALSE,4),
 (2605051,260505,'`0, 2, 4, 6, 8`',TRUE,1),(2605052,260505,'`0, 2, 4, 6, 8, 10`',FALSE,2),(2605053,260505,'`2, 4, 6, 8`',FALSE,3),(2605054,260505,'`0, 1, 2, ..., 10`',FALSE,4),
 (2605061,260506,'`0`',TRUE,1),(2605062,260506,'`1`',FALSE,2),(2605063,260506,'`-1`',FALSE,3),(2605064,260506,'`None`',FALSE,4),
 (2605071,260507,'`1`',TRUE,1),(2605072,260507,'`0`',FALSE,2),(2605073,260507,'`2`',FALSE,3),(2605074,260507,'`-1`',FALSE,4),
 (2605081,260508,'15',TRUE,1),(2605082,260508,'10',FALSE,2),(2605083,260508,'14',FALSE,3),(2605084,260508,'25',FALSE,4);

INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
 (2606, NULL, @l, 'QCM — Boucle while, break et continue', 'La boucle while et le contrôle du flux.', 2);

INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES
 (260601,2606,'La boucle `while` répète un bloc :','Tant que sa condition est vraie.',1),
 (260602,2606,'Que se passe-t-il si la condition d''un `while` est fausse au départ ?','Le bloc n''est jamais exécuté.',2),
 (260603,2606,'Qu''est-ce qu''une boucle infinie ?','Une boucle dont la condition ne devient jamais fausse.',3),
 (260604,2606,'Que fait l''instruction `break` ?','Elle arrête complètement la boucle.',4),
 (260605,2606,'Que fait l''instruction `continue` ?','Elle passe directement au tour suivant.',5),
 (260606,2606,'Comment éviter une boucle `while` infinie ?','Faire évoluer la condition à chaque tour.',6),
 (260607,2606,'Quelle opération calcule la factorielle dans une boucle ?','Un produit (multiplication).',7),
 (260608,2606,'Que vaut `4!` (factorielle de 4) ?','24 (1*2*3*4).',8);

INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
 (2606011,260601,'Tant que sa condition est vraie',TRUE,1),(2606012,260601,'Exactement 10 fois',FALSE,2),(2606013,260601,'Une seule fois',FALSE,3),(2606014,260601,'Tant que sa condition est fausse',FALSE,4),
 (2606021,260602,'Le bloc n''est jamais exécuté',TRUE,1),(2606022,260602,'Le bloc s''exécute une fois',FALSE,2),(2606023,260602,'Une erreur se produit',FALSE,3),(2606024,260602,'Le bloc tourne sans fin',FALSE,4),
 (2606031,260603,'Une boucle dont la condition reste toujours vraie',TRUE,1),(2606032,260603,'Une boucle très rapide',FALSE,2),(2606033,260603,'Une boucle `for`',FALSE,3),(2606034,260603,'Une boucle qui ne s''exécute jamais',FALSE,4),
 (2606041,260604,'Elle arrête la boucle',TRUE,1),(2606042,260604,'Elle passe au tour suivant',FALSE,2),(2606043,260604,'Elle redémarre la boucle',FALSE,3),(2606044,260604,'Elle ne fait rien',FALSE,4),
 (2606051,260605,'Elle passe au tour suivant',TRUE,1),(2606052,260605,'Elle arrête la boucle',FALSE,2),(2606053,260605,'Elle quitte le programme',FALSE,3),(2606054,260605,'Elle affiche la variable',FALSE,4),
 (2606061,260606,'Faire évoluer la condition à chaque tour',TRUE,1),(2606062,260606,'Utiliser `print`',FALSE,2),(2606063,260606,'Supprimer la condition',FALSE,3),(2606064,260606,'Augmenter le pas',FALSE,4),
 (2606071,260607,'Un produit',TRUE,1),(2606072,260607,'Une somme',FALSE,2),(2606073,260607,'Une division',FALSE,3),(2606074,260607,'Une comparaison',FALSE,4),
 (2606081,260608,'24',TRUE,1),(2606082,260608,'12',FALSE,2),(2606083,260608,'16',FALSE,3),(2606084,260608,'10',FALSE,4);
