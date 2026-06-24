-- QCM du chapitre Mathématiques « Les équations différentielles ». ids 2711/2712.
SET SESSION sql_mode = CONCAT(@@sql_mode, ',NO_BACKSLASH_ESCAPES');
SET @l := (SELECT id FROM lecon WHERE slug = 'equations-differentielles'
           AND matiere_id = (SELECT id FROM matiere WHERE slug = 'maths'));

INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
 (2711, NULL, @l, 'QCM — Équations du premier ordre et conditions initiales', 'Équations $y'' = ay$ et $y'' = ay + b$, primitives et conditions initiales.', 1);

INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES
 (271101,2711,'Qu''est-ce qu''une équation différentielle ?','C''est une équation dont l''inconnue est une fonction reliée à ses dérivées.',1),
 (271102,2711,'Résoudre $y'' = g(x)$ revient à :','Les solutions sont les primitives de $g$, à une constante près.',2),
 (271103,2711,'Quelles sont les solutions de $y'' = ay$ sur $\mathbb{R}$ ?','Ce sont les fonctions $y = K e^{ax}$, $K \in \mathbb{R}$.',3),
 (271104,2711,'Quelle fonction est solution de $y'' = 2y$ ?','$f(x) = 5e^{2x}$ vérifie $f''(x) = 10e^{2x} = 2f(x)$.',4),
 (271105,2711,'Quelle est la solution particulière constante de $y'' = ay + b$ ($a \neq 0$) ?','On pose $y = c$ : $0 = ac + b$, donc $c = -\frac{b}{a}$.',5),
 (271106,2711,'Quelles sont les solutions de $y'' = ay + b$ ($a \neq 0$) ?','La solution générale est $y = K e^{ax} - \frac{b}{a}$.',6),
 (271107,2711,'Combien de conditions initiales faut-il pour déterminer une unique solution de $y'' = ay$ ?','Une seule condition $y(x_0) = y_0$ suffit à fixer la constante $K$.',7),
 (271108,2711,'La solution de $y'' = 3y - 6$ avec $y(0) = 4$ est :','Solution générale $y = K e^{3x} + 2$ ; $y(0) = 4$ donne $K = 2$, d''où $y = 2e^{3x} + 2$.',8);

INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
 (2711011,271101,'Une équation dont l''inconnue est une fonction reliée à ses dérivées',TRUE,1),(2711012,271101,'Une équation du second degré',FALSE,2),(2711013,271101,'Une équation dont l''inconnue est un nombre réel',FALSE,3),(2711014,271101,'Une suite récurrente',FALSE,4),
 (2711021,271102,'Chercher les primitives de $g$',TRUE,1),(2711022,271102,'Dériver $g$',FALSE,2),(2711023,271102,'Factoriser $g$',FALSE,3),(2711024,271102,'Résoudre $g(x) = 0$',FALSE,4),
 (2711031,271103,'$y = K e^{ax}$',TRUE,1),(2711032,271103,'$y = K e^{-ax}$',FALSE,2),(2711033,271103,'$y = ax + K$',FALSE,3),(2711034,271103,'$y = K \cos(ax)$',FALSE,4),
 (2711041,271104,'$f(x) = 5e^{2x}$',TRUE,1),(2711042,271104,'$f(x) = 5e^{-2x}$',FALSE,2),(2711043,271104,'$f(x) = 2x + 5$',FALSE,3),(2711044,271104,'$f(x) = 5x^2$',FALSE,4),
 (2711051,271105,'$-\frac{b}{a}$',TRUE,1),(2711052,271105,'$\frac{b}{a}$',FALSE,2),(2711053,271105,'$-\frac{a}{b}$',FALSE,3),(2711054,271105,'$ab$',FALSE,4),
 (2711061,271106,'$y = K e^{ax} - \frac{b}{a}$',TRUE,1),(2711062,271106,'$y = K e^{ax} + \frac{b}{a}$',FALSE,2),(2711063,271106,'$y = K e^{ax} + b$',FALSE,3),(2711064,271106,'$y = K e^{bx} - a$',FALSE,4),
 (2711071,271107,'Une seule',TRUE,1),(2711072,271107,'Deux',FALSE,2),(2711073,271107,'Aucune',FALSE,3),(2711074,271107,'Trois',FALSE,4),
 (2711081,271108,'$y = 2e^{3x} + 2$',TRUE,1),(2711082,271108,'$y = 4e^{3x} - 2$',FALSE,2),(2711083,271108,'$y = 2e^{3x} - 2$',FALSE,3),(2711084,271108,'$y = 4e^{3x}$',FALSE,4);

INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
 (2712, NULL, @l, 'QCM — Équations du second ordre et applications', 'Équations $y'''' + \omega^2 y = 0$, $y'''' - \omega^2 y = 0$ et applications physiques.', 2);

INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES
 (271201,2712,'Quelles sont les solutions de $y'''' + \omega^2 y = 0$ ($\omega > 0$) ?','Ce sont les fonctions $y = A\cos(\omega x) + B\sin(\omega x)$.',1),
 (271202,2712,'Quelle est la période des solutions de $y'''' + \omega^2 y = 0$ ?','La période est $T = \frac{2\pi}{\omega}$.',2),
 (271203,2712,'Quelles sont les solutions de $y'''' - \omega^2 y = 0$ ($\omega > 0$) ?','Ce sont les fonctions $y = A e^{\omega x} + B e^{-\omega x}$.',3),
 (271204,2712,'Pour $y'''' + 9y = 0$, que vaut $\omega$ ?','Comme $\omega^2 = 9$ et $\omega > 0$, on a $\omega = 3$.',4),
 (271205,2712,'Combien de conditions faut-il pour déterminer une unique solution au second ordre ?','Il faut deux conditions, par exemple $y(x_0)$ et $y''(x_0)$.',5),
 (271206,2712,'La solution de $y'''' + 9y = 0$ avec $y(0) = 1$ et $y''(0) = 6$ est :','$y = A\cos(3x) + B\sin(3x)$ ; $A = 1$ et $3B = 6$ donnent $y = \cos(3x) + 2\sin(3x)$.',6),
 (271207,2712,'Quelle est la solution de la charge d''un condensateur (circuit RC) avec $u(0) = 0$ ?','On obtient $u(t) = E(1 - e^{-t/(RC)})$.',7),
 (271208,2712,'Quelle équation vérifie la charge $q(t)$ dans un circuit LC idéal ?','C''est $q'''' + \omega^2 q = 0$ avec $\omega = \frac{1}{\sqrt{LC}}$.',8);

INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
 (2712011,271201,'$y = A\cos(\omega x) + B\sin(\omega x)$',TRUE,1),(2712012,271201,'$y = A e^{\omega x} + B e^{-\omega x}$',FALSE,2),(2712013,271201,'$y = K e^{\omega x}$',FALSE,3),(2712014,271201,'$y = A\omega x + B$',FALSE,4),
 (2712021,271202,'$T = \frac{2\pi}{\omega}$',TRUE,1),(2712022,271202,'$T = \frac{\pi}{\omega}$',FALSE,2),(2712023,271202,'$T = 2\pi\omega$',FALSE,3),(2712024,271202,'$T = \omega$',FALSE,4),
 (2712031,271203,'$y = A e^{\omega x} + B e^{-\omega x}$',TRUE,1),(2712032,271203,'$y = A\cos(\omega x) + B\sin(\omega x)$',FALSE,2),(2712033,271203,'$y = K e^{-\omega x}$',FALSE,3),(2712034,271203,'$y = A\sin(\omega x)$',FALSE,4),
 (2712041,271204,'$3$',TRUE,1),(2712042,271204,'$9$',FALSE,2),(2712043,271204,'$\sqrt{3}$',FALSE,3),(2712044,271204,'$81$',FALSE,4),
 (2712051,271205,'Deux',TRUE,1),(2712052,271205,'Une',FALSE,2),(2712053,271205,'Trois',FALSE,3),(2712054,271205,'Aucune',FALSE,4),
 (2712061,271206,'$y = \cos(3x) + 2\sin(3x)$',TRUE,1),(2712062,271206,'$y = 2\cos(3x) + \sin(3x)$',FALSE,2),(2712063,271206,'$y = \cos(3x) + 6\sin(3x)$',FALSE,3),(2712064,271206,'$y = e^{3x} + 2e^{-3x}$',FALSE,4),
 (2712071,271207,'$u(t) = E(1 - e^{-t/(RC)})$',TRUE,1),(2712072,271207,'$u(t) = E e^{-t/(RC)}$',FALSE,2),(2712073,271207,'$u(t) = E(1 + e^{-t/(RC)})$',FALSE,3),(2712074,271207,'$u(t) = E t$',FALSE,4),
 (2712081,271208,'$q'''' + \omega^2 q = 0$ avec $\omega = \frac{1}{\sqrt{LC}}$',TRUE,1),(2712082,271208,'$q'' = -\lambda q$',FALSE,2),(2712083,271208,'$q'''' - \omega^2 q = 0$',FALSE,3),(2712084,271208,'$q'' = q + 1$',FALSE,4);
