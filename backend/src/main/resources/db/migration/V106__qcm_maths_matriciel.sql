-- QCM du chapitre Mathématiques « Le calcul matriciel ». ids 2707/2708.
SET SESSION sql_mode = CONCAT(@@sql_mode, ',NO_BACKSLASH_ESCAPES');
SET @l := (SELECT id FROM lecon WHERE slug = 'calcul-matriciel'
           AND matiere_id = (SELECT id FROM matiere WHERE slug = 'maths'));

INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
 (2707, NULL, @l, 'QCM — Opérations, déterminant et inverse', 'Calcul dans $M_2(\mathbb{R})$ : produit, déterminant, inverse.', 1);

INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES
 (270701,2707,'Quel est le neutre du produit dans $M_2(\mathbb{R})$ ?','La matrice identité $I_2 = \begin{pmatrix} 1 & 0 \\ 0 & 1 \end{pmatrix}$ vérifie $A\times I_2 = I_2 \times A = A$.',1),
 (270702,2707,'Que vaut $\det\begin{pmatrix} 3 & 1 \\ 2 & 4 \end{pmatrix}$ ?','$\det = 3\times 4 - 1\times 2 = 12 - 2 = 10$.',2),
 (270703,2707,'À quelle condition $A = \begin{pmatrix} a & b \\ c & d \end{pmatrix}$ est-elle inversible ?','$A$ est inversible si et seulement si $\det(A) = ad - bc \neq 0$.',3),
 (270704,2707,'Le produit matriciel dans $M_2(\mathbb{R})$ est :','Il n''est pas commutatif : en général $A\times B \neq B\times A$.',4),
 (270705,2707,'Que vaut $\begin{pmatrix} 1 & 2 \\ 0 & 1 \end{pmatrix} \times \begin{pmatrix} 1 & 0 \\ 3 & 1 \end{pmatrix}$ ?','Règle lignes par colonnes : $\begin{pmatrix} 1+6 & 0+2 \\ 0+3 & 0+1 \end{pmatrix} = \begin{pmatrix} 7 & 2 \\ 3 & 1 \end{pmatrix}$.',5),
 (270706,2707,'Quelle est la transposée de $\begin{pmatrix} 1 & 2 \\ 3 & 4 \end{pmatrix}$ ?','On échange lignes et colonnes : $\begin{pmatrix} 1 & 3 \\ 2 & 4 \end{pmatrix}$.',6),
 (270707,2707,'Si $\det(A) = 1$, alors $A^{-1}$ pour $A = \begin{pmatrix} 2 & 1 \\ 3 & 2 \end{pmatrix}$ vaut :','$A^{-1} = \frac{1}{1}\begin{pmatrix} 2 & -1 \\ -3 & 2 \end{pmatrix}$.',7),
 (270708,2707,'Que vaut $\det(A\times B)$ ?','Le déterminant est multiplicatif : $\det(A\times B) = \det(A)\times\det(B)$.',8);

INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
 (2707011,270701,'$I_2 = \begin{pmatrix} 1 & 0 \\ 0 & 1 \end{pmatrix}$',TRUE,1),(2707012,270701,'$O = \begin{pmatrix} 0 & 0 \\ 0 & 0 \end{pmatrix}$',FALSE,2),(2707013,270701,'$\begin{pmatrix} 1 & 1 \\ 1 & 1 \end{pmatrix}$',FALSE,3),(2707014,270701,'$\begin{pmatrix} 0 & 1 \\ 1 & 0 \end{pmatrix}$',FALSE,4),
 (2707021,270702,'$10$',TRUE,1),(2707022,270702,'$14$',FALSE,2),(2707023,270702,'$12$',FALSE,3),(2707024,270702,'$6$',FALSE,4),
 (2707031,270703,'$ad - bc \neq 0$',TRUE,1),(2707032,270703,'$ad - bc = 0$',FALSE,2),(2707033,270703,'$a + d \neq 0$',FALSE,3),(2707034,270703,'$ab - cd \neq 0$',FALSE,4),
 (2707041,270704,'Non commutatif',TRUE,1),(2707042,270704,'Commutatif',FALSE,2),(2707043,270704,'Toujours nul',FALSE,3),(2707044,270704,'Non associatif',FALSE,4),
 (2707051,270705,'$\begin{pmatrix} 7 & 2 \\ 3 & 1 \end{pmatrix}$',TRUE,1),(2707052,270705,'$\begin{pmatrix} 1 & 2 \\ 3 & 1 \end{pmatrix}$',FALSE,2),(2707053,270705,'$\begin{pmatrix} 2 & 2 \\ 3 & 3 \end{pmatrix}$',FALSE,3),(2707054,270705,'$\begin{pmatrix} 4 & 2 \\ 3 & 2 \end{pmatrix}$',FALSE,4),
 (2707061,270706,'$\begin{pmatrix} 1 & 3 \\ 2 & 4 \end{pmatrix}$',TRUE,1),(2707062,270706,'$\begin{pmatrix} 1 & 2 \\ 3 & 4 \end{pmatrix}$',FALSE,2),(2707063,270706,'$\begin{pmatrix} 4 & 3 \\ 2 & 1 \end{pmatrix}$',FALSE,3),(2707064,270706,'$\begin{pmatrix} 4 & 2 \\ 3 & 1 \end{pmatrix}$',FALSE,4),
 (2707071,270707,'$\begin{pmatrix} 2 & -1 \\ -3 & 2 \end{pmatrix}$',TRUE,1),(2707072,270707,'$\begin{pmatrix} 2 & 1 \\ 3 & 2 \end{pmatrix}$',FALSE,2),(2707073,270707,'$\begin{pmatrix} -2 & 1 \\ 3 & -2 \end{pmatrix}$',FALSE,3),(2707074,270707,'$\begin{pmatrix} 2 & 3 \\ -1 & 2 \end{pmatrix}$',FALSE,4),
 (2707081,270708,'$\det(A)\times\det(B)$',TRUE,1),(2707082,270708,'$\det(A)+\det(B)$',FALSE,2),(2707083,270708,'$\det(A) - \det(B)$',FALSE,3),(2707084,270708,'$1$',FALSE,4);

INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
 (2708, NULL, @l, 'QCM — Structures et puissances', 'Structures algébriques sur les matrices et calcul de $A^n$.', 2);

INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES
 (270801,2708,'Quelle structure est $(M_2(\mathbb{R}), +, \times)$ ?','C''est un anneau unitaire non commutatif (neutre $I_2$).',1),
 (270802,2708,'$(M_2(\mathbb{R}), +)$ est :','Un groupe abélien de neutre la matrice nulle $O$.',2),
 (270803,2708,'L''anneau $M_2(\mathbb{R})$ possède des diviseurs de zéro car :','Il existe $A\neq O$ et $B\neq O$ avec $A\times B = O$.',3),
 (270804,2708,'Pour montrer que $E$ est un sous-groupe de $(M_2(\mathbb{R}),+)$, on vérifie :','$O\in E$ et la stabilité par différence : $A-B\in E$.',4),
 (270805,2708,'Si $N^2 = O$ et $A = I_2 + N$, que vaut $A^n$ ?','Comme $I_2$ et $N$ commutent et $N^2=O$, $A^n = I_2 + nN$.',5),
 (270806,2708,'Que vaut $A^n$ pour $A = \begin{pmatrix} 1 & 1 \\ 0 & 1 \end{pmatrix}$ ?','Avec $N=\begin{pmatrix} 0 & 1 \\ 0 & 0 \end{pmatrix}$, $N^2=O$ donne $A^n=\begin{pmatrix} 1 & n \\ 0 & 1 \end{pmatrix}$.',6),
 (270807,2708,'Pour $D = \begin{pmatrix} a & 0 \\ 0 & d \end{pmatrix}$, que vaut $D^n$ ?','Par récurrence, $D^n = \begin{pmatrix} a^n & 0 \\ 0 & d^n \end{pmatrix}$.',7),
 (270808,2708,'L''ensemble $F=\left\{\begin{pmatrix} a & -b \\ b & a \end{pmatrix}\right\}$ muni de $+$ et $\times$ est :','Isomorphe à $\mathbb{C}$, c''est un corps commutatif.',8);

INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
 (2708011,270801,'Un anneau unitaire non commutatif',TRUE,1),(2708012,270801,'Un corps',FALSE,2),(2708013,270801,'Un anneau commutatif',FALSE,3),(2708014,270801,'Un groupe non abélien pour $+$',FALSE,4),
 (2708021,270802,'Un groupe abélien de neutre $O$',TRUE,1),(2708022,270802,'Un corps',FALSE,2),(2708023,270802,'Un groupe non commutatif',FALSE,3),(2708024,270802,'Pas un groupe',FALSE,4),
 (2708031,270803,'Il existe $A\neq O$, $B\neq O$ avec $A\times B=O$',TRUE,1),(2708032,270803,'Toute matrice est inversible',FALSE,2),(2708033,270803,'$\det$ est toujours nul',FALSE,3),(2708034,270803,'$A\times B = B\times A$ toujours',FALSE,4),
 (2708041,270804,'$O\in E$ et $A-B\in E$',TRUE,1),(2708042,270804,'$I_2\in E$ et $A\times B\in E$',FALSE,2),(2708043,270804,'$E$ est fini',FALSE,3),(2708044,270804,'$\det(A)\neq 0$ pour tout $A\in E$',FALSE,4),
 (2708051,270805,'$I_2 + nN$',TRUE,1),(2708052,270805,'$I_2 + N^n$',FALSE,2),(2708053,270805,'$n I_2 + N$',FALSE,3),(2708054,270805,'$I_2$',FALSE,4),
 (2708061,270806,'$\begin{pmatrix} 1 & n \\ 0 & 1 \end{pmatrix}$',TRUE,1),(2708062,270806,'$\begin{pmatrix} 1 & 1 \\ 0 & 1 \end{pmatrix}$',FALSE,2),(2708063,270806,'$\begin{pmatrix} n & n \\ 0 & n \end{pmatrix}$',FALSE,3),(2708064,270806,'$\begin{pmatrix} 1 & 2^n \\ 0 & 1 \end{pmatrix}$',FALSE,4),
 (2708071,270807,'$\begin{pmatrix} a^n & 0 \\ 0 & d^n \end{pmatrix}$',TRUE,1),(2708072,270807,'$\begin{pmatrix} na & 0 \\ 0 & nd \end{pmatrix}$',FALSE,2),(2708073,270807,'$\begin{pmatrix} a^n & 0 \\ 0 & d \end{pmatrix}$',FALSE,3),(2708074,270807,'$\begin{pmatrix} a & 0 \\ 0 & d \end{pmatrix}$',FALSE,4),
 (2708081,270808,'Un corps commutatif (isomorphe à $\mathbb{C}$)',TRUE,1),(2708082,270808,'Un anneau non commutatif',FALSE,2),(2708083,270808,'Un anneau avec diviseurs de zéro',FALSE,3),(2708084,270808,'Pas stable par produit',FALSE,4);
