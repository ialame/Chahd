-- QCM significatifs par chapitre de Maths (connaissances fondamentales).
-- Remplace les quiz maths minces (1001-1004) par 7 QCM complets (1001-1007),
-- un par chapitre (chapitres 101 a 107). Enonces/choix/explications en LaTeX
-- (rendus inline cote frontend). NO_BACKSLASH_ESCAPES : backslashes litteraux.
SET SESSION sql_mode = CONCAT(@@sql_mode, ',NO_BACKSLASH_ESCAPES');

-- Purge des anciens quiz maths (et de leurs questions/choix).
DELETE FROM choix    WHERE question_id IN (SELECT id FROM question WHERE quiz_id BETWEEN 1001 AND 1007);
DELETE FROM question WHERE quiz_id BETWEEN 1001 AND 1007;
DELETE FROM quiz     WHERE id BETWEEN 1001 AND 1007;

INSERT INTO quiz (id, chapitre_id, titre, description, ordre) VALUES
 (1001,101,'QCM — Limites et continuité','Limites de référence, croissances comparées, TVI et asymptotes.',1),
 (1002,102,'QCM — Dérivation et étude de fonctions','Dérivées usuelles, tangente, variations et convexité.',1),
 (1003,103,'QCM — Suites numériques','Suites arithmétiques, géométriques, sommes et convergence.',1),
 (1004,104,'QCM — Logarithme et exponentielle','Propriétés algébriques, dérivées et limites.',1),
 (1005,105,'QCM — Nombres complexes','Module, conjugué, forme exponentielle et équations.',1),
 (1006,106,'QCM — Dénombrement et probabilités','Combinaisons, probabilités, indépendance et loi binomiale.',1),
 (1007,107,'QCM — Calcul intégral','Primitives, intégrales définies et intégration par parties.',1);

-- ===================== 1001 : Limites et continuité =====================
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES
 (100101,1001,'Que vaut $\lim_{x \to 0} \dfrac{\sin x}{x}$ ?','Limite de référence : elle vaut $1$.',1),
 (100102,1001,'Que vaut $\lim_{x \to +\infty} \dfrac{\ln x}{x}$ ?','Croissance comparée : le logarithme est négligeable devant $x$, la limite est $0$.',2),
 (100103,1001,'Que vaut $\lim_{x \to +\infty} \dfrac{3x^2+1}{x^2-2}$ ?','On compare les termes de plus haut degré : $\dfrac{3x^2}{x^2}=3$.',3),
 (100104,1001,'Que vaut $\lim_{x \to +\infty} \dfrac{e^x}{x}$ ?','Croissance comparée : l''exponentielle l''emporte, la limite est $+\infty$.',4),
 (100105,1001,'Si $f$ est continue sur $[a,b]$ et $f(a)\,f(b)<0$, alors l''équation $f(x)=0$ admet sur $]a,b[$ :','Théorème des valeurs intermédiaires : au moins une solution.',5),
 (100106,1001,'Que vaut $\lim_{x \to 0^+} x\ln x$ ?','Croissance comparée en $0^+$ : la limite est $0$.',6),
 (100107,1001,'Si $\lim_{x \to +\infty} f(x)=2$, la courbe de $f$ admet :','Une limite finie en $+\infty$ donne une asymptote horizontale d''équation $y=2$.',7),
 (100108,1001,'Que vaut $\lim_{x \to +\infty} \left(\sqrt{x^2+1}-x\right)$ ?','En multipliant par la quantité conjuguée : $\dfrac{1}{\sqrt{x^2+1}+x}\to 0$.',8);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
 (1001011,100101,'$0$',FALSE,1),(1001012,100101,'$1$',TRUE,2),(1001013,100101,'$+\infty$',FALSE,3),(1001014,100101,'N''existe pas',FALSE,4),
 (1001021,100102,'$0$',TRUE,1),(1001022,100102,'$1$',FALSE,2),(1001023,100102,'$+\infty$',FALSE,3),(1001024,100102,'$e$',FALSE,4),
 (1001031,100103,'$3$',TRUE,1),(1001032,100103,'$1$',FALSE,2),(1001033,100103,'$+\infty$',FALSE,3),(1001034,100103,'$0$',FALSE,4),
 (1001041,100104,'$+\infty$',TRUE,1),(1001042,100104,'$0$',FALSE,2),(1001043,100104,'$1$',FALSE,3),(1001044,100104,'$e$',FALSE,4),
 (1001051,100105,'Au moins une solution',TRUE,1),(1001052,100105,'Aucune solution',FALSE,2),(1001053,100105,'Exactement deux solutions',FALSE,3),(1001054,100105,'Une asymptote',FALSE,4),
 (1001061,100106,'$0$',TRUE,1),(1001062,100106,'$-\infty$',FALSE,2),(1001063,100106,'$+\infty$',FALSE,3),(1001064,100106,'$1$',FALSE,4),
 (1001071,100107,'Une asymptote horizontale $y=2$',TRUE,1),(1001072,100107,'Une asymptote verticale $x=2$',FALSE,2),(1001073,100107,'Une asymptote oblique',FALSE,3),(1001074,100107,'Aucune asymptote',FALSE,4),
 (1001081,100108,'$0$',TRUE,1),(1001082,100108,'$+\infty$',FALSE,2),(1001083,100108,'$1$',FALSE,3),(1001084,100108,'$\dfrac{1}{2}$',FALSE,4);

-- ===================== 1002 : Dérivation =====================
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES
 (100201,1002,'La dérivée de $f(x)=x\ln x$ est :','Produit : $(x)''\ln x + x\cdot\dfrac1x = \ln x + 1$.',1),
 (100202,1002,'La dérivée de $e^{2x}$ est :','$(e^{u})''=u''e^{u}$ avec $u=2x$ : $2e^{2x}$.',2),
 (100203,1002,'Si $f''''(x)>0$ sur un intervalle $I$, alors $f$ est sur $I$ :','Une dérivée seconde positive caractérise la convexité.',3),
 (100204,1002,'La dérivée de $\ln(x^2+1)$ est :','$(\ln u)''=\dfrac{u''}{u}$ : $\dfrac{2x}{x^2+1}$.',4),
 (100205,1002,'L''équation de la tangente à $C_f$ au point d''abscisse $a$ est :','Formule de la tangente : $y=f''(a)(x-a)+f(a)$.',5),
 (100206,1002,'Un point d''inflexion correspond à $f''''$ qui :','En un point d''inflexion la dérivée seconde s''annule en changeant de signe.',6),
 (100207,1002,'La dérivée de $\sqrt{x}$ (pour $x>0$) est :','$(\sqrt x)''=\dfrac{1}{2\sqrt x}$.',7),
 (100208,1002,'Si $f''(x)>0$ sur un intervalle $I$, alors $f$ est sur $I$ :','Une dérivée première strictement positive donne une fonction strictement croissante.',8);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
 (1002011,100201,'$\ln x + 1$',TRUE,1),(1002012,100201,'$\dfrac1x$',FALSE,2),(1002013,100201,'$\ln x$',FALSE,3),(1002014,100201,'$1$',FALSE,4),
 (1002021,100202,'$2e^{2x}$',TRUE,1),(1002022,100202,'$e^{2x}$',FALSE,2),(1002023,100202,'$2e^{x}$',FALSE,3),(1002024,100202,'$e^{2}$',FALSE,4),
 (1002031,100203,'Convexe',TRUE,1),(1002032,100203,'Concave',FALSE,2),(1002033,100203,'Décroissante',FALSE,3),(1002034,100203,'Constante',FALSE,4),
 (1002041,100204,'$\dfrac{2x}{x^2+1}$',TRUE,1),(1002042,100204,'$\dfrac{1}{x^2+1}$',FALSE,2),(1002043,100204,'$\dfrac{2x}{x^2}$',FALSE,3),(1002044,100204,'$2x$',FALSE,4),
 (1002051,100205,'$y=f''(a)(x-a)+f(a)$',TRUE,1),(1002052,100205,'$y=f(a)(x-a)+f''(a)$',FALSE,2),(1002053,100205,'$y=f''(a)\,x+f(a)$',FALSE,3),(1002054,100205,'$y=f''(a)(x-a)$',FALSE,4),
 (1002061,100206,'S''annule en changeant de signe',TRUE,1),(1002062,100206,'Est toujours positive',FALSE,2),(1002063,100206,'Est constante',FALSE,3),(1002064,100206,'Est maximale',FALSE,4),
 (1002071,100207,'$\dfrac{1}{2\sqrt x}$',TRUE,1),(1002072,100207,'$\dfrac{1}{\sqrt x}$',FALSE,2),(1002073,100207,'$\dfrac{1}{2x}$',FALSE,3),(1002074,100207,'$2\sqrt x$',FALSE,4),
 (1002081,100208,'Strictement croissante',TRUE,1),(1002082,100208,'Strictement décroissante',FALSE,2),(1002083,100208,'Constante',FALSE,3),(1002084,100208,'Convexe',FALSE,4);

-- ===================== 1003 : Suites =====================
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES
 (100301,1003,'Une suite géométrique de raison $q$ avec $|q|<1$ converge vers :','$q^n \to 0$ quand $|q|<1$.',1),
 (100302,1003,'La relation $u_{n+1}=u_n+r$ définit une suite :','Ajout d''une raison constante : suite arithmétique.',2),
 (100303,1003,'Pour $q\neq 1$, la somme $1+q+\cdots+q^n$ vaut :','Somme des termes d''une suite géométrique : $\dfrac{1-q^{n+1}}{1-q}$.',3),
 (100304,1003,'Le terme général d''une suite géométrique de premier terme $u_0$ et de raison $q$ est :','$u_n = u_0\, q^{\,n}$.',4),
 (100305,1003,'Le terme général d''une suite arithmétique de premier terme $u_0$ et de raison $r$ est :','$u_n = u_0 + n\,r$.',5),
 (100306,1003,'Une suite croissante et majorée :','Théorème de la convergence monotone : elle converge.',6),
 (100307,1003,'Si $u_{n+1}=f(u_n)$, $f$ continue et $u_n \to \ell$, alors :','La limite vérifie l''équation de point fixe $f(\ell)=\ell$.',7),
 (100308,1003,'La somme $u_0+u_1+\cdots+u_n$ d''une suite arithmétique vaut :','$\dfrac{(n+1)(u_0+u_n)}{2}$ (nombre de termes $\times$ moyenne des extrêmes).',8);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
 (1003011,100301,'$0$',TRUE,1),(1003012,100301,'$1$',FALSE,2),(1003013,100301,'$+\infty$',FALSE,3),(1003014,100301,'$q$',FALSE,4),
 (1003021,100302,'Arithmétique',TRUE,1),(1003022,100302,'Géométrique',FALSE,2),(1003023,100302,'Constante',FALSE,3),(1003024,100302,'Alternée',FALSE,4),
 (1003031,100303,'$\dfrac{1-q^{n+1}}{1-q}$',TRUE,1),(1003032,100303,'$n\,q$',FALSE,2),(1003033,100303,'$\dfrac{1-q^{n}}{1-q}$',FALSE,3),(1003034,100303,'$q^{n+1}$',FALSE,4),
 (1003041,100304,'$u_0\, q^{\,n}$',TRUE,1),(1003042,100304,'$u_0 + n\,q$',FALSE,2),(1003043,100304,'$u_0\, q^{\,n-1}$',FALSE,3),(1003044,100304,'$u_0\, n^{q}$',FALSE,4),
 (1003051,100305,'$u_0 + n\,r$',TRUE,1),(1003052,100305,'$u_0\, r^{\,n}$',FALSE,2),(1003053,100305,'$u_0 + r$',FALSE,3),(1003054,100305,'$n\,r$',FALSE,4),
 (1003061,100306,'Converge',TRUE,1),(1003062,100306,'Diverge vers $+\infty$',FALSE,2),(1003063,100306,'Est constante',FALSE,3),(1003064,100306,'N''a pas de limite',FALSE,4),
 (1003071,100307,'$f(\ell)=\ell$',TRUE,1),(1003072,100307,'$\ell=0$',FALSE,2),(1003073,100307,'$f''(\ell)=0$',FALSE,3),(1003074,100307,'$\ell=u_0$',FALSE,4),
 (1003081,100308,'$\dfrac{(n+1)(u_0+u_n)}{2}$',TRUE,1),(1003082,100308,'$(n+1)\,u_0$',FALSE,2),(1003083,100308,'$\dfrac{n(u_0+u_n)}{2}$',FALSE,3),(1003084,100308,'$\dfrac{u_0+u_n}{2}$',FALSE,4);

-- ===================== 1004 : Logarithme et exponentielle =====================
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES
 (100401,1004,'Pour $a,b>0$, $\ln(ab)$ vaut :','Propriété fondamentale du logarithme : $\ln(ab)=\ln a+\ln b$.',1),
 (100402,1004,'Les valeurs de $\ln(1)$ et $\ln(e)$ sont :','$\ln 1 = 0$ et $\ln e = 1$.',2),
 (100403,1004,'$e^{a+b}$ vaut :','$e^{a+b}=e^a\,e^b$.',3),
 (100404,1004,'L''équation $\ln x = 0$ a pour solution :','$\ln x = 0 \iff x = 1$.',4),
 (100405,1004,'La dérivée de $\ln x$ (pour $x>0$) est :','$(\ln x)'' = \dfrac1x$.',5),
 (100406,1004,'La dérivée de $e^x$ est :','La fonction exponentielle est sa propre dérivée : $(e^x)''=e^x$.',6),
 (100407,1004,'Que vaut $\lim_{x \to -\infty} e^x$ ?','$e^x \to 0$ quand $x\to-\infty$.',7),
 (100408,1004,'Pour $x>0$, $e^{\ln x}$ vaut :','$\ln$ et $\exp$ sont réciproques : $e^{\ln x}=x$.',8);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
 (1004011,100401,'$\ln a+\ln b$',TRUE,1),(1004012,100401,'$\ln a\,\ln b$',FALSE,2),(1004013,100401,'$\ln a-\ln b$',FALSE,3),(1004014,100401,'$a\ln b$',FALSE,4),
 (1004021,100402,'$0$ et $1$',TRUE,1),(1004022,100402,'$1$ et $e$',FALSE,2),(1004023,100402,'$1$ et $0$',FALSE,3),(1004024,100402,'$0$ et $e$',FALSE,4),
 (1004031,100403,'$e^a\,e^b$',TRUE,1),(1004032,100403,'$e^a+e^b$',FALSE,2),(1004033,100403,'$e^{ab}$',FALSE,3),(1004034,100403,'$a\,e^b$',FALSE,4),
 (1004041,100404,'$x=1$',TRUE,1),(1004042,100404,'$x=0$',FALSE,2),(1004043,100404,'$x=e$',FALSE,3),(1004044,100404,'$x=-1$',FALSE,4),
 (1004051,100405,'$\dfrac1x$',TRUE,1),(1004052,100405,'$\ln x$',FALSE,2),(1004053,100405,'$\dfrac{1}{x^2}$',FALSE,3),(1004054,100405,'$x$',FALSE,4),
 (1004061,100406,'$e^x$',TRUE,1),(1004062,100406,'$x\,e^{x-1}$',FALSE,2),(1004063,100406,'$1$',FALSE,3),(1004064,100406,'$e$',FALSE,4),
 (1004071,100407,'$0$',TRUE,1),(1004072,100407,'$-\infty$',FALSE,2),(1004073,100407,'$+\infty$',FALSE,3),(1004074,100407,'$1$',FALSE,4),
 (1004081,100408,'$x$',TRUE,1),(1004082,100408,'$1$',FALSE,2),(1004083,100408,'$\ln x$',FALSE,3),(1004084,100408,'$e$',FALSE,4);

-- ===================== 1005 : Nombres complexes =====================
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES
 (100501,1005,'Que vaut $i^2$ ?','Par définition de l''unité imaginaire : $i^2=-1$.',1),
 (100502,1005,'Le module $|a+ib|$ vaut :','$|a+ib|=\sqrt{a^2+b^2}$.',2),
 (100503,1005,'Le conjugué de $z=a+ib$ est :','$\bar z = a - ib$.',3),
 (100504,1005,'Que vaut $|1+i|$ ?','$|1+i|=\sqrt{1^2+1^2}=\sqrt2$.',4),
 (100505,1005,'Pour tout complexe $z$, $z\,\bar z$ vaut :','$z\bar z = |z|^2$ (réel positif).',5),
 (100506,1005,'Pour deux complexes, $|z_1 z_2|$ vaut :','Le module d''un produit est le produit des modules.',6),
 (100507,1005,'La forme exponentielle d''un complexe de module $r$ et d''argument $\theta$ est :','$z = r\,e^{i\theta}$.',7),
 (100508,1005,'Les solutions dans $\mathbb{C}$ de $z^2+1=0$ sont :','$z^2=-1$ donne $z=i$ ou $z=-i$.',8);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
 (1005011,100501,'$-1$',TRUE,1),(1005012,100501,'$1$',FALSE,2),(1005013,100501,'$i$',FALSE,3),(1005014,100501,'$-i$',FALSE,4),
 (1005021,100502,'$\sqrt{a^2+b^2}$',TRUE,1),(1005022,100502,'$a^2+b^2$',FALSE,2),(1005023,100502,'$a+b$',FALSE,3),(1005024,100502,'$\sqrt{a^2-b^2}$',FALSE,4),
 (1005031,100503,'$a-ib$',TRUE,1),(1005032,100503,'$-a+ib$',FALSE,2),(1005033,100503,'$-a-ib$',FALSE,3),(1005034,100503,'$b+ia$',FALSE,4),
 (1005041,100504,'$\sqrt2$',TRUE,1),(1005042,100504,'$2$',FALSE,2),(1005043,100504,'$1$',FALSE,3),(1005044,100504,'$\sqrt3$',FALSE,4),
 (1005051,100505,'$|z|^2$',TRUE,1),(1005052,100505,'$z^2$',FALSE,2),(1005053,100505,'$2\,\mathrm{Re}(z)$',FALSE,3),(1005054,100505,'$0$',FALSE,4),
 (1005061,100506,'$|z_1|\,|z_2|$',TRUE,1),(1005062,100506,'$|z_1|+|z_2|$',FALSE,2),(1005063,100506,'$|z_1|-|z_2|$',FALSE,3),(1005064,100506,'$|z_1+z_2|$',FALSE,4),
 (1005071,100507,'$r\,e^{i\theta}$',TRUE,1),(1005072,100507,'$r\,e^{\theta}$',FALSE,2),(1005073,100507,'$e^{ir\theta}$',FALSE,3),(1005074,100507,'$r+i\theta$',FALSE,4),
 (1005081,100508,'$i$ et $-i$',TRUE,1),(1005082,100508,'$1$ et $-1$',FALSE,2),(1005083,100508,'$0$',FALSE,3),(1005084,100508,'$2i$',FALSE,4);

-- ===================== 1006 : Dénombrement et probabilités =====================
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES
 (100601,1006,'$P(A\cup B)$ vaut :','Formule du crible : $P(A\cup B)=P(A)+P(B)-P(A\cap B)$.',1),
 (100602,1006,'Deux événements $A$ et $B$ sont indépendants si et seulement si :','Définition de l''indépendance : $P(A\cap B)=P(A)\,P(B)$.',2),
 (100603,1006,'Pour $X \sim \mathcal{B}(n,p)$, $P(X=k)$ vaut :','Loi binomiale : $\binom{n}{k}p^k(1-p)^{n-k}$.',3),
 (100604,1006,'L''espérance d''une loi binomiale $\mathcal{B}(n,p)$ est :','$E(X)=np$.',4),
 (100605,1006,'La probabilité conditionnelle $P(A\mid B)$ vaut :','$P(A\mid B)=\dfrac{P(A\cap B)}{P(B)}$ (avec $P(B)>0$).',5),
 (100606,1006,'La probabilité de l''événement contraire $P(\bar{A})$ vaut :','$P(\bar A)=1-P(A)$.',6),
 (100607,1006,'Que vaut $\dbinom{4}{2}$ ?','$\dbinom{4}{2}=\dfrac{4!}{2!\,2!}=6$.',7),
 (100608,1006,'La variance d''une loi binomiale $\mathcal{B}(n,p)$ est :','$V(X)=np(1-p)$.',8);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
 (1006011,100601,'$P(A)+P(B)-P(A\cap B)$',TRUE,1),(1006012,100601,'$P(A)+P(B)$',FALSE,2),(1006013,100601,'$P(A)\,P(B)$',FALSE,3),(1006014,100601,'$P(A)-P(B)$',FALSE,4),
 (1006021,100602,'$P(A\cap B)=P(A)\,P(B)$',TRUE,1),(1006022,100602,'$P(A\cap B)=0$',FALSE,2),(1006023,100602,'$P(A\cup B)=P(A)+P(B)$',FALSE,3),(1006024,100602,'$P(A)=P(B)$',FALSE,4),
 (1006031,100603,'$\dbinom{n}{k}p^k(1-p)^{n-k}$',TRUE,1),(1006032,100603,'$p^k$',FALSE,2),(1006033,100603,'$\dbinom{n}{k}p^k$',FALSE,3),(1006034,100603,'$\dfrac{n!}{k!}\,p^k$',FALSE,4),
 (1006041,100604,'$np$',TRUE,1),(1006042,100604,'$np(1-p)$',FALSE,2),(1006043,100604,'$p$',FALSE,3),(1006044,100604,'$\dfrac{n}{p}$',FALSE,4),
 (1006051,100605,'$\dfrac{P(A\cap B)}{P(B)}$',TRUE,1),(1006052,100605,'$\dfrac{P(A)}{P(B)}$',FALSE,2),(1006053,100605,'$P(A)\,P(B)$',FALSE,3),(1006054,100605,'$\dfrac{P(B)}{P(A\cap B)}$',FALSE,4),
 (1006061,100606,'$1-P(A)$',TRUE,1),(1006062,100606,'$-P(A)$',FALSE,2),(1006063,100606,'$\dfrac{1}{P(A)}$',FALSE,3),(1006064,100606,'$P(A)$',FALSE,4),
 (1006071,100607,'$6$',TRUE,1),(1006072,100607,'$12$',FALSE,2),(1006073,100607,'$4$',FALSE,3),(1006074,100607,'$8$',FALSE,4),
 (1006081,100608,'$np(1-p)$',TRUE,1),(1006082,100608,'$np$',FALSE,2),(1006083,100608,'$p(1-p)$',FALSE,3),(1006084,100608,'$n\,p^2$',FALSE,4);

-- ===================== 1007 : Calcul intégral =====================
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES
 (100701,1007,'Une primitive de $x^n$ (avec $n\neq -1$) est :','$\displaystyle\int x^n\,dx = \dfrac{x^{n+1}}{n+1}+C$.',1),
 (100702,1007,'Que vaut $\displaystyle\int_1^{e} \dfrac{1}{x}\,dx$ ?','$[\ln x]_1^{e}=\ln e-\ln 1 = 1$.',2),
 (100703,1007,'Une primitive de $e^x$ est :','$e^x$ est sa propre primitive.',3),
 (100704,1007,'Si $F$ est une primitive de $f$, alors $\displaystyle\int_a^b f(x)\,dx$ vaut :','$\displaystyle\int_a^b f = F(b)-F(a)$.',4),
 (100705,1007,'Une primitive de $\dfrac1x$ sur $]0,+\infty[$ est :','$\displaystyle\int \dfrac{1}{x}\,dx = \ln x + C$ (sur $]0,+\infty[$).',5),
 (100706,1007,'Que vaut $\displaystyle\int_a^a f(x)\,dx$ ?','Les bornes sont égales : l''intégrale vaut $0$.',6),
 (100707,1007,'La formule d''intégration par parties $\displaystyle\int_a^b u''v$ vaut :','$\displaystyle\int_a^b u''v = [uv]_a^b - \int_a^b u v''$.',7),
 (100708,1007,'Si $f\geq 0$ sur $[a,b]$, alors $\displaystyle\int_a^b f(x)\,dx$ représente :','L''aire du domaine entre la courbe et l''axe des abscisses.',8);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
 (1007011,100701,'$\dfrac{x^{n+1}}{n+1}$',TRUE,1),(1007012,100701,'$n\,x^{n-1}$',FALSE,2),(1007013,100701,'$x^{n+1}$',FALSE,3),(1007014,100701,'$\dfrac{x^{n}}{n}$',FALSE,4),
 (1007021,100702,'$1$',TRUE,1),(1007022,100702,'$e$',FALSE,2),(1007023,100702,'$e-1$',FALSE,3),(1007024,100702,'$0$',FALSE,4),
 (1007031,100703,'$e^x$',TRUE,1),(1007032,100703,'$\dfrac{e^x}{x}$',FALSE,2),(1007033,100703,'$x\,e^x$',FALSE,3),(1007034,100703,'$e$',FALSE,4),
 (1007041,100704,'$F(b)-F(a)$',TRUE,1),(1007042,100704,'$F(a)-F(b)$',FALSE,2),(1007043,100704,'$F(b)\,F(a)$',FALSE,3),(1007044,100704,'$f(b)-f(a)$',FALSE,4),
 (1007051,100705,'$\ln x$',TRUE,1),(1007052,100705,'$-\dfrac{1}{x^2}$',FALSE,2),(1007053,100705,'$\dfrac1x$',FALSE,3),(1007054,100705,'$\ln(x^2)$',FALSE,4),
 (1007061,100706,'$0$',TRUE,1),(1007062,100706,'$f(a)$',FALSE,2),(1007063,100706,'$1$',FALSE,3),(1007064,100706,'$F(a)$',FALSE,4),
 (1007071,100707,'$[uv]_a^b - \displaystyle\int_a^b u v''$',TRUE,1),(1007072,100707,'$[uv]_a^b + \displaystyle\int_a^b u v''$',FALSE,2),(1007073,100707,'$\displaystyle\int_a^b u v''$',FALSE,3),(1007074,100707,'$[u''v]_a^b$',FALSE,4),
 (1007081,100708,'L''aire entre la courbe et l''axe des abscisses',TRUE,1),(1007082,100708,'La pente de la courbe',FALSE,2),(1007083,100708,'La dérivée de $f$',FALSE,3),(1007084,100708,'Le maximum de $f$',FALSE,4);
