-- QCM du chapitre Mathématiques « Le calcul matriciel ». Matrices d'ordre 3 et structures. id 2709.
SET SESSION sql_mode = CONCAT(@@sql_mode, ',NO_BACKSLASH_ESCAPES');
SET @l := (SELECT id FROM lecon WHERE slug = 'calcul-matriciel'
           AND matiere_id = (SELECT id FROM matiere WHERE slug = 'maths'));

INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
 (2709, NULL, @l, 'QCM — Matrices d''ordre 3 et structures', 'Déterminant d''ordre 3, puissances et structures algébriques dans $M_3(\mathbb{R})$.', 3);

INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES
 (270901,2709,'Pour quel ordre de déterminant la règle de Sarrus est-elle valable ?','La règle de Sarrus ne s''applique qu''aux déterminants d''**ordre 3**.',1),
 (270902,2709,'Que vaut $\det\begin{pmatrix} 1 & 0 & 2 \\ 0 & 1 & 0 \\ 2 & 0 & 1 \end{pmatrix}$ ?','Par développement : $1\times(1\times1-0) - 0 + 2\times(0-2) = 1 - 4 = -3$.',2),
 (270903,2709,'Quelle est la matrice identité d''ordre 3 ?','$I_3$ a des $1$ sur la diagonale principale et des $0$ ailleurs.',3),
 (270904,2709,'À quelle condition une matrice $A\in M_3(\mathbb{R})$ est-elle inversible ?','$A$ est inversible si et seulement si $\det(A)\neq 0$.',4),
 (270905,2709,'Quelle est la dimension de l''espace vectoriel $M_3(\mathbb{R})$ ?','La dimension de $M_n(\mathbb{R})$ est $n^2$, donc $9$ pour $n=3$.',5),
 (270906,2709,'Si $N=\begin{pmatrix} 0 & 1 & 0 \\ 0 & 0 & 1 \\ 0 & 0 & 0 \end{pmatrix}$ et $A=I_3+N$, que vaut $A^n$ ?','Comme $N^3=O$ : $A^n = I_3 + nN + \binom{n}{2}N^2 = \begin{pmatrix} 1 & n & \frac{n(n-1)}{2} \\ 0 & 1 & n \\ 0 & 0 & 1 \end{pmatrix}$.',6),
 (270907,2709,'Pour montrer qu''un ensemble $E$ de matrices d''ordre 3 est un sous-espace vectoriel et trouver sa dimension, on :','On écrit l''élément générique comme combinaison linéaire de matrices fixes $B_i$ ; si elles sont libres, elles forment une base et $\dim E$ est leur nombre.',7),
 (270908,2709,'Pour prouver qu''un ensemble $E$ de matrices muni de $+$ et $\times$ est un corps, on montre souvent qu''il est :','On exhibe un **isomorphisme** entre $E$ et un corps connu (comme $\mathbb{C}$), qui transporte toute la structure.',8);

INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
 (2709011,270901,'Ordre 3 uniquement',TRUE,1),(2709012,270901,'Tout ordre',FALSE,2),(2709013,270901,'Ordre 2 uniquement',FALSE,3),(2709014,270901,'Ordre 4 uniquement',FALSE,4),
 (2709021,270902,'$-3$',TRUE,1),(2709022,270902,'$3$',FALSE,2),(2709023,270902,'$5$',FALSE,3),(2709024,270902,'$1$',FALSE,4),
 (2709031,270903,'$\begin{pmatrix} 1 & 0 & 0 \\ 0 & 1 & 0 \\ 0 & 0 & 1 \end{pmatrix}$',TRUE,1),(2709032,270903,'$\begin{pmatrix} 0 & 0 & 0 \\ 0 & 0 & 0 \\ 0 & 0 & 0 \end{pmatrix}$',FALSE,2),(2709033,270903,'$\begin{pmatrix} 1 & 1 & 1 \\ 1 & 1 & 1 \\ 1 & 1 & 1 \end{pmatrix}$',FALSE,3),(2709034,270903,'$\begin{pmatrix} 1 & 0 \\ 0 & 1 \end{pmatrix}$',FALSE,4),
 (2709041,270904,'$\det(A)\neq 0$',TRUE,1),(2709042,270904,'$\det(A)=0$',FALSE,2),(2709043,270904,'$A$ est symétrique',FALSE,3),(2709044,270904,'$A$ est diagonale',FALSE,4),
 (2709051,270905,'$9$',TRUE,1),(2709052,270905,'$3$',FALSE,2),(2709053,270905,'$6$',FALSE,3),(2709054,270905,'$27$',FALSE,4),
 (2709061,270906,'$\begin{pmatrix} 1 & n & \frac{n(n-1)}{2} \\ 0 & 1 & n \\ 0 & 0 & 1 \end{pmatrix}$',TRUE,1),(2709062,270906,'$\begin{pmatrix} 1 & n & 0 \\ 0 & 1 & n \\ 0 & 0 & 1 \end{pmatrix}$',FALSE,2),(2709063,270906,'$I_3 + nN$',FALSE,3),(2709064,270906,'$\begin{pmatrix} 1 & n^2 & n \\ 0 & 1 & n^2 \\ 0 & 0 & 1 \end{pmatrix}$',FALSE,4),
 (2709071,270907,'écrit l''élément générique comme combinaison linéaire de matrices fixes libres',TRUE,1),(2709072,270907,'vérifie seulement que $E$ est fini',FALSE,2),(2709073,270907,'calcule $\det(A)$ pour tout $A\in E$',FALSE,3),(2709074,270907,'montre que $E$ est commutatif',FALSE,4),
 (2709081,270908,'isomorphe à un corps connu (comme $\mathbb{C}$)',TRUE,1),(2709082,270908,'un anneau avec diviseurs de zéro',FALSE,2),(2709083,270908,'non stable par produit',FALSE,3),(2709084,270908,'de dimension $9$',FALSE,4);
