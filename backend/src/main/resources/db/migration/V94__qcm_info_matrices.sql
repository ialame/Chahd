-- QCM du chapitre Informatique « Les matrices (tableaux à deux dimensions) ». ids 2611/2612.
SET SESSION sql_mode = CONCAT(@@sql_mode, ',NO_BACKSLASH_ESCAPES');
SET @l := (SELECT id FROM lecon WHERE slug = 'matrices'
           AND matiere_id = (SELECT id FROM matiere WHERE slug = 'informatique'));

INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
 (2611, NULL, @l, 'QCM — Matrices : accès et dimensions', 'Liste de listes, indices, dimensions.', 1);

INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES
 (261101,2611,'En Python, une matrice est représentée par :','Une **liste de listes**.',1),
 (261102,2611,'Que désigne `M[i][j]` ?','L''élément de la ligne `i`, colonne `j`.',2),
 (261103,2611,'Pour `M = [[1, 2, 3], [4, 5, 6]]`, que vaut `M[1][2]` ?','6.',3),
 (261104,2611,'Comment obtenir le nombre de lignes ?','Avec `len(M)`.',4),
 (261105,2611,'Comment obtenir le nombre de colonnes ?','Avec `len(M[0])`.',5),
 (261106,2611,'À quel indice commencent les lignes et colonnes ?','À 0.',6),
 (261107,2611,'Que désigne `M[i]` seul ?','La ligne entière numéro `i` (une liste).',7),
 (261108,2611,'Pour `M = [[1, 2, 3], [4, 5, 6]]`, que vaut `M[0][0]` ?','1.',8);

INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
 (2611011,261101,'Une liste de listes',TRUE,1),(2611012,261101,'Un entier',FALSE,2),(2611013,261101,'Une chaîne',FALSE,3),(2611014,261101,'Un booléen',FALSE,4),
 (2611021,261102,'L''élément ligne `i`, colonne `j`',TRUE,1),(2611022,261102,'L''élément ligne `j`, colonne `i`',FALSE,2),(2611023,261102,'La ligne `i` entière',FALSE,3),(2611024,261102,'La colonne `j` entière',FALSE,4),
 (2611031,261103,'6',TRUE,1),(2611032,261103,'3',FALSE,2),(2611033,261103,'5',FALSE,3),(2611034,261103,'4',FALSE,4),
 (2611041,261104,'`len(M)`',TRUE,1),(2611042,261104,'`len(M[0])`',FALSE,2),(2611043,261104,'`M.lignes`',FALSE,3),(2611044,261104,'`size(M)`',FALSE,4),
 (2611051,261105,'`len(M[0])`',TRUE,1),(2611052,261105,'`len(M)`',FALSE,2),(2611053,261105,'`M.colonnes`',FALSE,3),(2611054,261105,'`width(M)`',FALSE,4),
 (2611061,261106,'À 0',TRUE,1),(2611062,261106,'À 1',FALSE,2),(2611063,261106,'À -1',FALSE,3),(2611064,261106,'Au choix',FALSE,4),
 (2611071,261107,'La ligne `i` (une liste)',TRUE,1),(2611072,261107,'Un seul élément',FALSE,2),(2611073,261107,'La colonne `i`',FALSE,3),(2611074,261107,'La matrice entière',FALSE,4),
 (2611081,261108,'1',TRUE,1),(2611082,261108,'0',FALSE,2),(2611083,261108,'4',FALSE,3),(2611084,261108,'2',FALSE,4);

INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
 (2612, NULL, @l, 'QCM — Matrices : parcours et opérations', 'Double boucle, création, somme, transposée.', 2);

INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES
 (261201,2612,'Pour parcourir tous les éléments, on utilise :','Une **double boucle** imbriquée.',1),
 (261202,2612,'Quelle expression crée une matrice 2x3 de zéros ?','`[[0 for j in range(3)] for i in range(2)]`.',2),
 (261203,2612,'Pourquoi éviter `[[0] * 3] * 2` ?','Toutes les lignes seraient la même liste.',3),
 (261204,2612,'Pour sommer la colonne `j`, on parcourt :','Les lignes `i`.',4),
 (261205,2612,'Dans la transposée, `M[i][j]` devient :','`T[j][i]`.',5),
 (261206,2612,'La transposée d''une matrice 2x3 a pour dimensions :','3 lignes et 2 colonnes.',6),
 (261207,2612,'Dans `for i in range(len(M))`, `i` parcourt :','Les indices de lignes.',7),
 (261208,2612,'Quelle valeur renvoie une recherche infructueuse de `x` ?','`False`.',8);

INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
 (2612011,261201,'Une double boucle imbriquée',TRUE,1),(2612012,261201,'Une seule boucle',FALSE,2),(2612013,261201,'Aucune boucle',FALSE,3),(2612014,261201,'Une boucle `while` seule',FALSE,4),
 (2612021,261202,'`[[0 for j in range(3)] for i in range(2)]`',TRUE,1),(2612022,261202,'`[0, 0, 0, 0, 0, 0]`',FALSE,2),(2612023,261202,'`[[0] * 2] * 3`',FALSE,3),(2612024,261202,'`matrix(2, 3)`',FALSE,4),
 (2612031,261203,'Toutes les lignes seraient la même liste',TRUE,1),(2612032,261203,'C''est trop lent',FALSE,2),(2612033,261203,'La syntaxe est invalide',FALSE,3),(2612034,261203,'Cela crée trop de colonnes',FALSE,4),
 (2612041,261204,'Les lignes `i`',TRUE,1),(2612042,261204,'Les colonnes `j`',FALSE,2),(2612043,261204,'La diagonale',FALSE,3),(2612044,261204,'Rien',FALSE,4),
 (2612051,261205,'`T[j][i]`',TRUE,1),(2612052,261205,'`T[i][j]`',FALSE,2),(2612053,261205,'`T[i]`',FALSE,3),(2612054,261205,'`T[0][0]`',FALSE,4),
 (2612061,261206,'3 lignes et 2 colonnes',TRUE,1),(2612062,261206,'2 lignes et 3 colonnes',FALSE,2),(2612063,261206,'3 lignes et 3 colonnes',FALSE,3),(2612064,261206,'2 lignes et 2 colonnes',FALSE,4),
 (2612071,261207,'Les indices de lignes',TRUE,1),(2612072,261207,'Les indices de colonnes',FALSE,2),(2612073,261207,'Les valeurs des éléments',FALSE,3),(2612074,261207,'Les lignes elles-mêmes',FALSE,4),
 (2612081,261208,'`False`',TRUE,1),(2612082,261208,'`True`',FALSE,2),(2612083,261208,'`0`',FALSE,3),(2612084,261208,'`None`',FALSE,4);
