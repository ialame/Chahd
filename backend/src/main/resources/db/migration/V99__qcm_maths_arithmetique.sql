-- QCM du chapitre Mathématiques « L'arithmétique dans Z ». ids 2701/2702.
SET SESSION sql_mode = CONCAT(@@sql_mode, ',NO_BACKSLASH_ESCAPES');
SET @l := (SELECT id FROM lecon WHERE slug = 'arithmetique'
           AND matiere_id = (SELECT id FROM matiere WHERE slug = 'maths'));

INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
 (2701, NULL, @l, 'QCM — Divisibilité, division euclidienne et congruences', 'Les bases de l''arithmétique dans $\mathbb{Z}$.', 1);

INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES
 (270101,2701,'On a $b \mid a$ lorsque :','Il existe $k \in \mathbb{Z}$ tel que $a = bk$.',1),
 (270102,2701,'Quel est le reste de la division euclidienne de $47$ par $5$ ?','$47 = 5 \times 9 + 2$, donc le reste est $2$.',2),
 (270103,2701,'Dans la division euclidienne $a = bq + r$, le reste vérifie :','Par définition $0 \le r < |b|$.',3),
 (270104,2701,'On a $a \equiv b \pmod{n}$ signifie que :','$n$ divise $a - b$.',4),
 (270105,2701,'À quoi est congru $17$ modulo $3$ ?','$17 = 3 \times 5 + 2$, donc $17 \equiv 2 \pmod 3$.',5),
 (270106,2701,'Si $a \equiv b \pmod n$ et $c \equiv d \pmod n$, alors :','La congruence est compatible avec $+$ et $\times$.',6),
 (270107,2701,'Le reste de $2^{100}$ modulo $7$ est :','$2^3 \equiv 1 \pmod 7$ et $100 = 3\times 33 + 1$, donc $2^{100} \equiv 2 \pmod 7$.',7),
 (270108,2701,'Combien d''entiers divisent $0$ ?','Tout entier divise $0$ car $0 = b \times 0$.',8);

INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
 (2701011,270101,'Il existe $k \in \mathbb{Z}$ tel que $a = bk$',TRUE,1),(2701012,270101,'$a < b$',FALSE,2),(2701013,270101,'$a + b = 0$',FALSE,3),(2701014,270101,'$a$ et $b$ sont premiers',FALSE,4),
 (2701021,270102,'$2$',TRUE,1),(2701022,270102,'$9$',FALSE,2),(2701023,270102,'$5$',FALSE,3),(2701024,270102,'$7$',FALSE,4),
 (2701031,270103,'$0 \le r < |b|$',TRUE,1),(2701032,270103,'$0 < r \le |b|$',FALSE,2),(2701033,270103,'$r > |b|$',FALSE,3),(2701034,270103,'$r$ quelconque',FALSE,4),
 (2701041,270104,'$n$ divise $a - b$',TRUE,1),(2701042,270104,'$a$ divise $n - b$',FALSE,2),(2701043,270104,'$a + b = n$',FALSE,3),(2701044,270104,'$a = b$',FALSE,4),
 (2701051,270105,'$2$',TRUE,1),(2701052,270105,'$1$',FALSE,2),(2701053,270105,'$0$',FALSE,3),(2701054,270105,'$3$',FALSE,4),
 (2701061,270106,'$a + c \equiv b + d \pmod n$',TRUE,1),(2701062,270106,'$a - c \equiv n \pmod b$',FALSE,2),(2701063,270106,'$ac \equiv b + d \pmod n$',FALSE,3),(2701064,270106,'Rien de général',FALSE,4),
 (2701071,270107,'$2$',TRUE,1),(2701072,270107,'$1$',FALSE,2),(2701073,270107,'$4$',FALSE,3),(2701074,270107,'$0$',FALSE,4),
 (2701081,270108,'Tous',TRUE,1),(2701082,270108,'Aucun',FALSE,2),(2701083,270108,'Seulement $0$',FALSE,3),(2701084,270108,'Seulement $1$',FALSE,4);

INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
 (2702, NULL, @l, 'QCM — PGCD, Bézout, Gauss et nombres premiers', 'PGCD, PPCM, théorèmes de Bézout et Gauss, primalité.', 2);

INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES
 (270201,2702,'Que vaut $\text{pgcd}(252, 105)$ ?','Par l''algorithme d''Euclide, le dernier reste non nul est $21$.',1),
 (270202,2702,'Pour $a, b$ naturels non nuls, $\text{pgcd}(a,b) \times \text{ppcm}(a,b)$ vaut :','La relation fondamentale donne $a \times b$.',2),
 (270203,2702,'Deux entiers sont premiers entre eux lorsque :','Leur PGCD vaut $1$.',3),
 (270204,2702,'Le théorème de Bézout affirme que $\text{pgcd}(a,b)=1$ équivaut à :','Il existe $u, v$ tels que $au + bv = 1$.',4),
 (270205,2702,'Le théorème de Gauss : si $a \mid bc$ et $\text{pgcd}(a,b)=1$, alors :','On peut conclure $a \mid c$.',5),
 (270206,2702,'Lequel de ces entiers est premier ?','$17$ n''a que $1$ et $17$ comme diviseurs.',6),
 (270207,2702,'Quelle est la décomposition en facteurs premiers de $360$ ?','$360 = 2^3 \times 3^2 \times 5$.',7),
 (270208,2702,'Combien existe-t-il de nombres premiers ?','D''après Euclide, il en existe une infinité.',8);

INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
 (2702011,270201,'$21$',TRUE,1),(2702012,270201,'$7$',FALSE,2),(2702013,270201,'$42$',FALSE,3),(2702014,270201,'$3$',FALSE,4),
 (2702021,270202,'$a \times b$',TRUE,1),(2702022,270202,'$a + b$',FALSE,2),(2702023,270202,'$1$',FALSE,3),(2702024,270202,'$|a - b|$',FALSE,4),
 (2702031,270203,'$\text{pgcd}(a,b) = 1$',TRUE,1),(2702032,270203,'$\text{ppcm}(a,b) = 1$',FALSE,2),(2702033,270203,'$a = b$',FALSE,3),(2702034,270203,'$a \mid b$',FALSE,4),
 (2702041,270204,'Il existe $u, v$ tels que $au + bv = 1$',TRUE,1),(2702042,270204,'$a + b = 1$',FALSE,2),(2702043,270204,'$ab = 1$',FALSE,3),(2702044,270204,'$a = b = 1$',FALSE,4),
 (2702051,270205,'$a \mid c$',TRUE,1),(2702052,270205,'$a \mid b$',FALSE,2),(2702053,270205,'$b \mid c$',FALSE,3),(2702054,270205,'$c \mid a$',FALSE,4),
 (2702061,270206,'$17$',TRUE,1),(2702062,270206,'$15$',FALSE,2),(2702063,270206,'$21$',FALSE,3),(2702064,270206,'$1$',FALSE,4),
 (2702071,270207,'$2^3 \times 3^2 \times 5$',TRUE,1),(2702072,270207,'$2^2 \times 3^2 \times 5$',FALSE,2),(2702073,270207,'$2^3 \times 3 \times 5^2$',FALSE,3),(2702074,270207,'$2 \times 3 \times 5 \times 12$',FALSE,4),
 (2702081,270208,'Une infinité',TRUE,1),(2702082,270208,'Exactement $100$',FALSE,2),(2702083,270208,'Un nombre fini',FALSE,3),(2702084,270208,'Aucun au-delà de $1000$',FALSE,4);
