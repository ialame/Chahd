-- QCM du chapitre Informatique « Les algorithmes de tri et de recherche ». ids 2615/2616.
SET SESSION sql_mode = CONCAT(@@sql_mode, ',NO_BACKSLASH_ESCAPES');
SET @l := (SELECT id FROM lecon WHERE slug = 'tri-recherche'
           AND matiere_id = (SELECT id FROM matiere WHERE slug = 'informatique'));

INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
 (2615, NULL, @l, 'QCM — Algorithmes de recherche', 'Recherche séquentielle et dichotomique.', 1);

INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES
 (261501,2615,'En quoi consiste la recherche séquentielle ?','Parcourir la liste élément par élément jusqu''à trouver la valeur.',1),
 (261502,2615,'La recherche dichotomique nécessite une liste :','Elle ne fonctionne que sur une liste triée.',2),
 (261503,2615,'Quel est le principe de la recherche dichotomique ?','Comparer au milieu pour diviser en deux à chaque étape.',3),
 (261504,2615,'Comment calcule-t-on l''indice du milieu ?','`milieu = (gauche + droite) // 2`.',4),
 (261505,2615,'Quelle recherche est la plus rapide sur une grande liste triée ?','La dichotomique : elle divise par deux à chaque étape.',5),
 (261506,2615,'Que renvoie une recherche quand la valeur est absente (convention) ?','`-1`.',6),
 (261507,2615,'En dichotomie, si la valeur cherchée est plus grande que le milieu, on garde :','La moitié droite (gauche = milieu + 1).',7),
 (261508,2615,'Que renvoie en général une recherche réussie ?','L''indice (la position) de la valeur trouvée.',8);

INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
 (2615011,261501,'Parcourir la liste élément par élément',TRUE,1),(2615012,261501,'Comparer au milieu',FALSE,2),(2615013,261501,'Trier puis diviser',FALSE,3),(2615014,261501,'Échanger les voisins',FALSE,4),
 (2615021,261502,'Triée',TRUE,1),(2615022,261502,'Vide',FALSE,2),(2615023,261502,'De nombres uniquement',FALSE,3),(2615024,261502,'Inversée',FALSE,4),
 (2615031,261503,'Diviser en deux à chaque étape',TRUE,1),(2615032,261503,'Tout parcourir',FALSE,2),(2615033,261503,'Échanger les voisins',FALSE,3),(2615034,261503,'Trier la liste',FALSE,4),
 (2615041,261504,'`(gauche + droite) // 2`',TRUE,1),(2615042,261504,'`(gauche + droite) / 2`',FALSE,2),(2615043,261504,'`gauche + droite`',FALSE,3),(2615044,261504,'`len(liste) // 2`',FALSE,4),
 (2615051,261505,'La dichotomique',TRUE,1),(2615052,261505,'La séquentielle',FALSE,2),(2615053,261505,'Elles sont égales',FALSE,3),(2615054,261505,'Aucune des deux',FALSE,4),
 (2615061,261506,'`-1`',TRUE,1),(2615062,261506,'`0`',FALSE,2),(2615063,261506,'`None` toujours',FALSE,3),(2615064,261506,'`len(liste)`',FALSE,4),
 (2615071,261507,'La moitié droite',TRUE,1),(2615072,261507,'La moitié gauche',FALSE,2),(2615073,261507,'Toute la liste',FALSE,3),(2615074,261507,'Le milieu seul',FALSE,4),
 (2615081,261508,'L''indice de la valeur',TRUE,1),(2615082,261508,'La valeur elle-même',FALSE,2),(2615083,261508,'`True`',FALSE,3),(2615084,261508,'La liste triée',FALSE,4);

INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
 (2616, NULL, @l, 'QCM — Algorithmes de tri', 'Tri par sélection, à bulles et par insertion.', 2);

INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES
 (261601,2616,'Le tri par sélection cherche à chaque étape :','Le plus petit élément de la partie non triée.',1),
 (261602,2616,'Le tri à bulles compare et échange :','Des éléments voisins (adjacents).',2),
 (261603,2616,'Quel tri insère chaque élément parmi les éléments déjà triés à sa gauche ?','Le tri par insertion.',3),
 (261604,2616,'Dans le tri à bulles, à chaque parcours, le plus grand élément :','Remonte vers la fin de la liste.',4),
 (261605,2616,'Comment échange-t-on deux éléments d''une liste en Python ?','`liste[i], liste[j] = liste[j], liste[i]`.',5),
 (261606,2616,'Le tri par sélection place l''élément choisi à sa position par :','Un échange (swap).',6),
 (261607,2616,'Quel tri ressemble au tri de cartes à jouer dans la main ?','Le tri par insertion.',7),
 (261608,2616,'Sur quoi reposent tous ces tris ?','Des comparaisons et des échanges entre éléments.',8);

INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
 (2616011,261601,'Le plus petit élément non trié',TRUE,1),(2616012,261601,'Le plus grand élément',FALSE,2),(2616013,261601,'Le milieu',FALSE,3),(2616014,261601,'Le dernier élément',FALSE,4),
 (2616021,261602,'Des éléments voisins',TRUE,1),(2616022,261602,'Le premier et le dernier',FALSE,2),(2616023,261602,'L''élément et le milieu',FALSE,3),(2616024,261602,'Deux éléments au hasard',FALSE,4),
 (2616031,261603,'Le tri par insertion',TRUE,1),(2616032,261603,'Le tri par sélection',FALSE,2),(2616033,261603,'Le tri à bulles',FALSE,3),(2616034,261603,'La recherche dichotomique',FALSE,4),
 (2616041,261604,'Remonte vers la fin',TRUE,1),(2616042,261604,'Descend au début',FALSE,2),(2616043,261604,'Disparaît',FALSE,3),(2616044,261604,'Reste au milieu',FALSE,4),
 (2616051,261605,'`liste[i], liste[j] = liste[j], liste[i]`',TRUE,1),(2616052,261605,'`liste[i] = liste[j]`',FALSE,2),(2616053,261605,'`swap(i, j)`',FALSE,3),(2616054,261605,'`liste[i] == liste[j]`',FALSE,4),
 (2616061,261606,'Un échange',TRUE,1),(2616062,261606,'Une copie',FALSE,2),(2616063,261606,'Une suppression',FALSE,3),(2616064,261606,'Un tri imbriqué',FALSE,4),
 (2616071,261607,'Le tri par insertion',TRUE,1),(2616072,261607,'Le tri à bulles',FALSE,2),(2616073,261607,'Le tri par sélection',FALSE,3),(2616074,261607,'La recherche séquentielle',FALSE,4),
 (2616081,261608,'Des comparaisons et des échanges',TRUE,1),(2616082,261608,'Des additions',FALSE,2),(2616083,261608,'Des conversions de type',FALSE,3),(2616084,261608,'Des saisies clavier',FALSE,4);
