-- Découpage notions/applications pour tous les chapitres de maths.
-- QCM existants renommés « : notions » + un 2e QCM « : applications » par chapitre.
SET SESSION sql_mode = CONCAT(@@sql_mode, ',NO_BACKSLASH_ESCAPES');

UPDATE quiz SET titre = 'QCM — Limites et continuité : notions' WHERE id = 1001;
UPDATE quiz SET titre = 'QCM — Dérivation et étude de fonctions : notions' WHERE id = 1002;
UPDATE quiz SET titre = 'QCM — Suites numériques : notions' WHERE id = 1003;
UPDATE quiz SET titre = 'QCM — Logarithme : notions' WHERE id = 1004;
UPDATE quiz SET titre = 'QCM — Fonction exponentielle : notions' WHERE id = 1008;
UPDATE quiz SET titre = 'QCM — Calcul intégral : notions' WHERE id = 1007;
UPDATE quiz SET titre = 'QCM — Nombres complexes : notions' WHERE id = 1005;
UPDATE quiz SET titre = 'QCM — Géométrie dans l''espace : notions' WHERE id = 1010;
UPDATE quiz SET titre = 'QCM — Probabilités : notions' WHERE id = 1006;

SET @l := (SELECT id FROM lecon WHERE slug = 'limites-continuite' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'maths'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
 (1012, NULL, @l, 'QCM — Limites et continuité : applications', 'Exercices d''application directe.', 2);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES
 (101201,1012,'$\displaystyle\lim_{x\to+\infty}\frac{3x^2-x}{x^2+1}$ vaut :','On compare les termes de plus haut degré : $\frac{3x^2}{x^2}=3$.',1),
 (101202,1012,'$\displaystyle\lim_{x\to 2}\frac{x^2-4}{x-2}$ vaut :','$\frac{x^2-4}{x-2}=x+2\to 4$.',2),
 (101203,1012,'$\displaystyle\lim_{x\to+\infty}\frac{e^x}{x}$ vaut :','Croissance comparée : l''exponentielle l''emporte, la limite est $+\infty$.',3),
 (101204,1012,'$\displaystyle\lim_{x\to+\infty}\frac{\ln x}{x}$ vaut :','Croissance comparée : $\frac{\ln x}{x}\to 0$.',4),
 (101205,1012,'$\displaystyle\lim_{x\to 0^+} x\ln x$ vaut :','Croissance comparée : $x\ln x\to 0$.',5),
 (101206,1012,'$\displaystyle\lim_{x\to+\infty}\big(\sqrt{x^2+1}-x\big)$ vaut :','On multiplie par le conjugué : $\frac{1}{\sqrt{x^2+1}+x}\to 0$.',6),
 (101207,1012,'$\displaystyle\lim_{x\to+\infty}\frac{2x+1}{x-3}$ vaut :','Quotient de termes de plus haut degré : $\frac{2x}{x}=2$.',7),
 (101208,1012,'Si $f$ est continue sur $[a,b]$ et $f(a)\,f(b)<0$, alors d''après le T.V.I. :','Le théorème des valeurs intermédiaires garantit une solution de $f(x)=0$.',8);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
 (1012011,101201,'$3$',TRUE,1),
 (1012012,101201,'$+\infty$',FALSE,2),
 (1012013,101201,'$0$',FALSE,3),
 (1012014,101201,'$1$',FALSE,4),
 (1012021,101202,'$4$',TRUE,1),
 (1012022,101202,'$0$',FALSE,2),
 (1012023,101202,'$2$',FALSE,3),
 (1012024,101202,'$+\infty$',FALSE,4),
 (1012031,101203,'$+\infty$',TRUE,1),
 (1012032,101203,'$0$',FALSE,2),
 (1012033,101203,'$1$',FALSE,3),
 (1012034,101203,'$e$',FALSE,4),
 (1012041,101204,'$0$',TRUE,1),
 (1012042,101204,'$+\infty$',FALSE,2),
 (1012043,101204,'$1$',FALSE,3),
 (1012044,101204,'$-\infty$',FALSE,4),
 (1012051,101205,'$0$',TRUE,1),
 (1012052,101205,'$-\infty$',FALSE,2),
 (1012053,101205,'$+\infty$',FALSE,3),
 (1012054,101205,'$1$',FALSE,4),
 (1012061,101206,'$0$',TRUE,1),
 (1012062,101206,'$+\infty$',FALSE,2),
 (1012063,101206,'$1$',FALSE,3),
 (1012064,101206,'$\tfrac12$',FALSE,4),
 (1012071,101207,'$2$',TRUE,1),
 (1012072,101207,'$1$',FALSE,2),
 (1012073,101207,'$+\infty$',FALSE,3),
 (1012074,101207,'$0$',FALSE,4),
 (1012081,101208,'l''équation $f(x)=0$ admet au moins une solution dans $]a,b[$',TRUE,1),
 (1012082,101208,'$f$ est croissante sur $[a,b]$',FALSE,2),
 (1012083,101208,'$f$ est constante',FALSE,3),
 (1012084,101208,'$f$ n''a pas de solution',FALSE,4);

SET @l := (SELECT id FROM lecon WHERE slug = 'derivation-convexite' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'maths'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
 (1013, NULL, @l, 'QCM — Dérivation et étude de fonctions : applications', 'Exercices d''application directe.', 2);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES
 (101301,1013,'La dérivée de $f(x)=x^3$ est :','$(x^n)''=n x^{n-1}$ donc $3x^2$.',1),
 (101302,1013,'La dérivée de $f(x)=e^{2x}$ est :','$(e^{u})''=u''e^{u}$ avec $u=2x$ : $2e^{2x}$.',2),
 (101303,1013,'La dérivée de $f(x)=\ln(x^2+1)$ est :','$(\ln u)''=\frac{u''}{u}$ avec $u=x^2+1$ : $\frac{2x}{x^2+1}$.',3),
 (101304,1013,'La dérivée de $f(x)=x\,e^{x}$ est :','Produit : $(uv)''=u''v+uv''=(x+1)e^{x}$.',4),
 (101305,1013,'L''équation de la tangente à $f(x)=x^2$ au point d''abscisse $1$ est :','$y=f''(1)(x-1)+f(1)=2(x-1)+1=2x-1$.',5),
 (101306,1013,'La dérivée de $f(x)=\dfrac{1}{x}$ est :','$\left(x^{-1}\right)''=-x^{-2}=-\frac{1}{x^2}$.',6),
 (101307,1013,'La dérivée de $f(x)=\sqrt{x}$ (sur $]0,+\infty[$) est :','$(\sqrt{x})''=\frac{1}{2\sqrt{x}}$.',7),
 (101308,1013,'Une fonction dont la dérivée seconde vérifie $f''''(x)>0$ sur un intervalle y est :','$f''''>0$ caractérise la convexité.',8);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
 (1013011,101301,'$3x^2$',TRUE,1),
 (1013012,101301,'$x^2$',FALSE,2),
 (1013013,101301,'$3x$',FALSE,3),
 (1013014,101301,'$\tfrac{x^4}{4}$',FALSE,4),
 (1013021,101302,'$2e^{2x}$',TRUE,1),
 (1013022,101302,'$e^{2x}$',FALSE,2),
 (1013023,101302,'$2e^{x}$',FALSE,3),
 (1013024,101302,'$2x\,e^{2x}$',FALSE,4),
 (1013031,101303,'$\dfrac{2x}{x^2+1}$',TRUE,1),
 (1013032,101303,'$\dfrac{1}{x^2+1}$',FALSE,2),
 (1013033,101303,'$\dfrac{2x}{x^2}$',FALSE,3),
 (1013034,101303,'$2x$',FALSE,4),
 (1013041,101304,'$(x+1)e^{x}$',TRUE,1),
 (1013042,101304,'$e^{x}$',FALSE,2),
 (1013043,101304,'$x\,e^{x}$',FALSE,3),
 (1013044,101304,'$(x-1)e^{x}$',FALSE,4),
 (1013051,101305,'$y=2x-1$',TRUE,1),
 (1013052,101305,'$y=2x+1$',FALSE,2),
 (1013053,101305,'$y=x^2$',FALSE,3),
 (1013054,101305,'$y=x-1$',FALSE,4),
 (1013061,101306,'$-\dfrac{1}{x^2}$',TRUE,1),
 (1013062,101306,'$\dfrac{1}{x^2}$',FALSE,2),
 (1013063,101306,'$\ln x$',FALSE,3),
 (1013064,101306,'$-\dfrac{1}{x}$',FALSE,4),
 (1013071,101307,'$\dfrac{1}{2\sqrt{x}}$',TRUE,1),
 (1013072,101307,'$\dfrac{1}{\sqrt{x}}$',FALSE,2),
 (1013073,101307,'$2\sqrt{x}$',FALSE,3),
 (1013074,101307,'$\dfrac{1}{2}x$',FALSE,4),
 (1013081,101308,'convexe',TRUE,1),
 (1013082,101308,'concave',FALSE,2),
 (1013083,101308,'décroissante',FALSE,3),
 (1013084,101308,'constante',FALSE,4);

SET @l := (SELECT id FROM lecon WHERE slug = 'recurrence-suites' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'maths'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
 (1014, NULL, @l, 'QCM — Suites numériques : applications', 'Exercices d''application directe.', 2);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES
 (101401,1014,'Suite arithmétique de premier terme $u_0=2$ et de raison $r=3$ : $u_5$ vaut :','$u_n=u_0+nr=2+3n$, donc $u_5=17$.',1),
 (101402,1014,'Suite géométrique $u_0=1$, raison $q=2$ : $u_4$ vaut :','$u_n=u_0 q^n=2^n$, donc $u_4=16$.',2),
 (101403,1014,'La somme $1+2+3+\cdots+10$ vaut :','$\frac{n(n+1)}{2}=\frac{10\cdot 11}{2}=55$.',3),
 (101404,1014,'$\displaystyle\lim_{n\to+\infty}\left(\tfrac12\right)^n$ vaut :','Suite géométrique de raison $|q|<1$ : limite $0$.',4),
 (101405,1014,'$\displaystyle\lim_{n\to+\infty}\frac{2n+1}{n+3}$ vaut :','Quotient des termes dominants : $\frac{2n}{n}=2$.',5),
 (101406,1014,'La somme $1+q+q^2+\cdots+q^{n}$ (avec $q\neq 1$) vaut :','Somme géométrique : $\frac{1-q^{n+1}}{1-q}$.',6),
 (101407,1014,'La suite définie par $u_{n+1}=u_n+2$, $u_0=1$ est :','L''écart constant $+2$ caractérise une suite arithmétique de raison $2$.',7),
 (101408,1014,'Une suite croissante et majorée est nécessairement :','Théorème de convergence monotone.',8);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
 (1014011,101401,'$17$',TRUE,1),
 (1014012,101401,'$15$',FALSE,2),
 (1014013,101401,'$11$',FALSE,3),
 (1014014,101401,'$243$',FALSE,4),
 (1014021,101402,'$16$',TRUE,1),
 (1014022,101402,'$8$',FALSE,2),
 (1014023,101402,'$9$',FALSE,3),
 (1014024,101402,'$32$',FALSE,4),
 (1014031,101403,'$55$',TRUE,1),
 (1014032,101403,'$45$',FALSE,2),
 (1014033,101403,'$100$',FALSE,3),
 (1014034,101403,'$50$',FALSE,4),
 (1014041,101404,'$0$',TRUE,1),
 (1014042,101404,'$1$',FALSE,2),
 (1014043,101404,'$+\infty$',FALSE,3),
 (1014044,101404,'$\tfrac12$',FALSE,4),
 (1014051,101405,'$2$',TRUE,1),
 (1014052,101405,'$1$',FALSE,2),
 (1014053,101405,'$0$',FALSE,3),
 (1014054,101405,'$+\infty$',FALSE,4),
 (1014061,101406,'$\dfrac{1-q^{n+1}}{1-q}$',TRUE,1),
 (1014062,101406,'$\dfrac{1-q^{n}}{1-q}$',FALSE,2),
 (1014063,101406,'$\dfrac{q^{n+1}-1}{q}$',FALSE,3),
 (1014064,101406,'$n q^{n}$',FALSE,4),
 (1014071,101407,'arithmétique de raison $2$',TRUE,1),
 (1014072,101407,'géométrique de raison $2$',FALSE,2),
 (1014073,101407,'constante',FALSE,3),
 (1014074,101407,'non monotone',FALSE,4),
 (1014081,101408,'convergente',TRUE,1),
 (1014082,101408,'divergente',FALSE,2),
 (1014083,101408,'géométrique',FALSE,3),
 (1014084,101408,'de limite $+\infty$',FALSE,4);

SET @l := (SELECT id FROM lecon WHERE slug = 'logarithme' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'maths'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
 (1015, NULL, @l, 'QCM — Logarithme : applications', 'Exercices d''application directe.', 2);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES
 (101501,1015,'$\ln(1)$ vaut :','$\ln 1=0$.',1),
 (101502,1015,'La solution de $\ln x = 2$ est :','$x=e^{2}$.',2),
 (101503,1015,'$\ln 2+\ln 3$ vaut :','$\ln a+\ln b=\ln(ab)$ donc $\ln 6$.',3),
 (101504,1015,'$\dfrac{\ln 8}{\ln 2}$ vaut :','$\ln 8=3\ln 2$ donc le quotient vaut $3$.',4),
 (101505,1015,'Le domaine de définition de $x\mapsto \ln(x-3)$ est :','Il faut $x-3>0$.',5),
 (101506,1015,'La solution de $\ln x = -1$ est :','$x=e^{-1}=\frac{1}{e}$.',6),
 (101507,1015,'$\displaystyle\lim_{x\to 0^+}\ln x$ vaut :','Le logarithme tend vers $-\infty$ en $0^+$.',7),
 (101508,1015,'$\ln\!\left(e^{3}\right)$ vaut :','$\ln(e^{x})=x$.',8);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
 (1015011,101501,'$0$',TRUE,1),
 (1015012,101501,'$1$',FALSE,2),
 (1015013,101501,'$e$',FALSE,3),
 (1015014,101501,'$+\infty$',FALSE,4),
 (1015021,101502,'$e^{2}$',TRUE,1),
 (1015022,101502,'$2$',FALSE,2),
 (1015023,101502,'$2e$',FALSE,3),
 (1015024,101502,'$\ln 2$',FALSE,4),
 (1015031,101503,'$\ln 6$',TRUE,1),
 (1015032,101503,'$\ln 5$',FALSE,2),
 (1015033,101503,'$6$',FALSE,3),
 (1015034,101503,'$\ln 2\cdot \ln 3$',FALSE,4),
 (1015041,101504,'$3$',TRUE,1),
 (1015042,101504,'$4$',FALSE,2),
 (1015043,101504,'$\ln 4$',FALSE,3),
 (1015044,101504,'$6$',FALSE,4),
 (1015051,101505,'$]3,+\infty[$',TRUE,1),
 (1015052,101505,'$]-\infty,3[$',FALSE,2),
 (1015053,101505,'$\mathbb{R}$',FALSE,3),
 (1015054,101505,'$[3,+\infty[$',FALSE,4),
 (1015061,101506,'$\dfrac{1}{e}$',TRUE,1),
 (1015062,101506,'$-e$',FALSE,2),
 (1015063,101506,'$-1$',FALSE,3),
 (1015064,101506,'$e$',FALSE,4),
 (1015071,101507,'$-\infty$',TRUE,1),
 (1015072,101507,'$+\infty$',FALSE,2),
 (1015073,101507,'$0$',FALSE,3),
 (1015074,101507,'$1$',FALSE,4),
 (1015081,101508,'$3$',TRUE,1),
 (1015082,101508,'$e^{3}$',FALSE,2),
 (1015083,101508,'$3e$',FALSE,3),
 (1015084,101508,'$\ln 3$',FALSE,4);

SET @l := (SELECT id FROM lecon WHERE slug = 'exponentielle' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'maths'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
 (1016, NULL, @l, 'QCM — Fonction exponentielle : applications', 'Exercices d''application directe.', 2);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES
 (101601,1016,'$e^{0}$ vaut :','$e^{0}=1$.',1),
 (101602,1016,'La solution de $e^{x}=1$ est :','$e^{x}=1\iff x=0$.',2),
 (101603,1016,'La solution de $e^{x}=e^{2}$ est :','L''exponentielle est injective : $x=2$.',3),
 (101604,1016,'$e^{x}\cdot e^{y}$ est égal à :','Propriété : $e^{x}e^{y}=e^{x+y}$.',4),
 (101605,1016,'$\displaystyle\lim_{x\to-\infty}e^{x}$ vaut :','L''exponentielle tend vers $0$ en $-\infty$.',5),
 (101606,1016,'$e^{\ln 5}$ vaut :','$e^{\ln a}=a$.',6),
 (101607,1016,'La solution de $e^{2x}=e^{x+1}$ est :','$2x=x+1\iff x=1$.',7),
 (101608,1016,'$\dfrac{e^{5}}{e^{2}}$ est égal à :','$\frac{e^{a}}{e^{b}}=e^{a-b}=e^{3}$.',8);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
 (1016011,101601,'$1$',TRUE,1),
 (1016012,101601,'$0$',FALSE,2),
 (1016013,101601,'$e$',FALSE,3),
 (1016014,101601,'$+\infty$',FALSE,4),
 (1016021,101602,'$0$',TRUE,1),
 (1016022,101602,'$1$',FALSE,2),
 (1016023,101602,'$e$',FALSE,3),
 (1016024,101602,'$\ln 1$ n''existe pas',FALSE,4),
 (1016031,101603,'$2$',TRUE,1),
 (1016032,101603,'$e^{2}$',FALSE,2),
 (1016033,101603,'$\ln 2$',FALSE,3),
 (1016034,101603,'$0$',FALSE,4),
 (1016041,101604,'$e^{x+y}$',TRUE,1),
 (1016042,101604,'$e^{xy}$',FALSE,2),
 (1016043,101604,'$e^{x}+e^{y}$',FALSE,3),
 (1016044,101604,'$e^{x-y}$',FALSE,4),
 (1016051,101605,'$0$',TRUE,1),
 (1016052,101605,'$-\infty$',FALSE,2),
 (1016053,101605,'$+\infty$',FALSE,3),
 (1016054,101605,'$1$',FALSE,4),
 (1016061,101606,'$5$',TRUE,1),
 (1016062,101606,'$\ln 5$',FALSE,2),
 (1016063,101606,'$e^{5}$',FALSE,3),
 (1016064,101606,'$1$',FALSE,4),
 (1016071,101607,'$1$',TRUE,1),
 (1016072,101607,'$0$',FALSE,2),
 (1016073,101607,'$2$',FALSE,3),
 (1016074,101607,'$\tfrac12$',FALSE,4),
 (1016081,101608,'$e^{3}$',TRUE,1),
 (1016082,101608,'$e^{7}$',FALSE,2),
 (1016083,101608,'$e^{5/2}$',FALSE,3),
 (1016084,101608,'$e^{2{,}5}$',FALSE,4);

SET @l := (SELECT id FROM lecon WHERE slug = 'primitives-integration' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'maths'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
 (1017, NULL, @l, 'QCM — Calcul intégral : applications', 'Exercices d''application directe.', 2);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES
 (101701,1017,'$\displaystyle\int_0^1 x\,\mathrm{d}x$ vaut :','$\left[\frac{x^2}{2}\right]_0^1=\frac12$.',1),
 (101702,1017,'Une primitive de $x\mapsto e^{x}$ est :','$\int e^{x}\,\mathrm{d}x=e^{x}+C$.',2),
 (101703,1017,'$\displaystyle\int_1^{e}\frac{1}{x}\,\mathrm{d}x$ vaut :','$[\ln x]_1^{e}=\ln e-\ln 1=1$.',3),
 (101704,1017,'Une primitive de $x\mapsto x^{2}$ est :','$\int x^2\,\mathrm{d}x=\frac{x^3}{3}+C$.',4),
 (101705,1017,'$\displaystyle\int_0^1 e^{x}\,\mathrm{d}x$ vaut :','$[e^{x}]_0^1=e-1$.',5),
 (101706,1017,'Une primitive de $x\mapsto \cos x$ est :','$\int\cos x\,\mathrm{d}x=\sin x+C$.',6),
 (101707,1017,'$\displaystyle\int_0^2 3\,\mathrm{d}x$ vaut :','$\int_a^b k\,\mathrm{d}x=k(b-a)=3\times 2=6$.',7),
 (101708,1017,'Si $F$ est une primitive de $f$ sur $[a,b]$, alors $\displaystyle\int_a^b f(x)\,\mathrm{d}x$ vaut :','Théorème fondamental : $F(b)-F(a)$.',8);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
 (1017011,101701,'$\tfrac12$',TRUE,1),
 (1017012,101701,'$1$',FALSE,2),
 (1017013,101701,'$0$',FALSE,3),
 (1017014,101701,'$2$',FALSE,4),
 (1017021,101702,'$e^{x}$',TRUE,1),
 (1017022,101702,'$x e^{x}$',FALSE,2),
 (1017023,101702,'$\tfrac{e^{x}}{x}$',FALSE,3),
 (1017024,101702,'$\ln x$',FALSE,4),
 (1017031,101703,'$1$',TRUE,1),
 (1017032,101703,'$e-1$',FALSE,2),
 (1017033,101703,'$0$',FALSE,3),
 (1017034,101703,'$e$',FALSE,4),
 (1017041,101704,'$\dfrac{x^{3}}{3}$',TRUE,1),
 (1017042,101704,'$2x$',FALSE,2),
 (1017043,101704,'$x^{3}$',FALSE,3),
 (1017044,101704,'$\dfrac{x^{3}}{2}$',FALSE,4),
 (1017051,101705,'$e-1$',TRUE,1),
 (1017052,101705,'$e$',FALSE,2),
 (1017053,101705,'$1-e$',FALSE,3),
 (1017054,101705,'$1$',FALSE,4),
 (1017061,101706,'$\sin x$',TRUE,1),
 (1017062,101706,'$-\sin x$',FALSE,2),
 (1017063,101706,'$-\cos x$',FALSE,3),
 (1017064,101706,'$\tan x$',FALSE,4),
 (1017071,101707,'$6$',TRUE,1),
 (1017072,101707,'$3$',FALSE,2),
 (1017073,101707,'$5$',FALSE,3),
 (1017074,101707,'$0$',FALSE,4),
 (1017081,101708,'$F(b)-F(a)$',TRUE,1),
 (1017082,101708,'$F(a)-F(b)$',FALSE,2),
 (1017083,101708,'$f(b)-f(a)$',FALSE,3),
 (1017084,101708,'$F(b)+F(a)$',FALSE,4);

SET @l := (SELECT id FROM lecon WHERE slug = 'nombres-complexes' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'maths'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
 (1018, NULL, @l, 'QCM — Nombres complexes : applications', 'Exercices d''application directe.', 2);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES
 (101801,1018,'$i^{2}$ vaut :','Par définition $i^2=-1$.',1),
 (101802,1018,'Le module $|3+4i|$ vaut :','$|a+ib|=\sqrt{a^2+b^2}=\sqrt{9+16}=5$.',2),
 (101803,1018,'Le conjugué de $2-3i$ est :','$\overline{a+ib}=a-ib$.',3),
 (101804,1018,'$(1+i)^{2}$ vaut :','$(1+i)^2=1+2i+i^2=2i$.',4),
 (101805,1018,'Le module $|i|$ vaut :','$|i|=\sqrt{0^2+1^2}=1$.',5),
 (101806,1018,'Une forme exponentielle de $i$ est :','$i$ a pour module $1$ et argument $\frac{\pi}{2}$.',6),
 (101807,1018,'La partie réelle de $2+5i$ est :','$\mathrm{Re}(a+ib)=a$.',7),
 (101808,1018,'Les solutions de $z^{2}=-1$ sont :','$z^2=-1\iff z=\pm i$.',8);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
 (1018011,101801,'$-1$',TRUE,1),
 (1018012,101801,'$1$',FALSE,2),
 (1018013,101801,'$i$',FALSE,3),
 (1018014,101801,'$-i$',FALSE,4),
 (1018021,101802,'$5$',TRUE,1),
 (1018022,101802,'$7$',FALSE,2),
 (1018023,101802,'$\sqrt{7}$',FALSE,3),
 (1018024,101802,'$25$',FALSE,4),
 (1018031,101803,'$2+3i$',TRUE,1),
 (1018032,101803,'$-2+3i$',FALSE,2),
 (1018033,101803,'$-2-3i$',FALSE,3),
 (1018034,101803,'$3-2i$',FALSE,4),
 (1018041,101804,'$2i$',TRUE,1),
 (1018042,101804,'$2$',FALSE,2),
 (1018043,101804,'$1+2i$',FALSE,3),
 (1018044,101804,'$-2i$',FALSE,4),
 (1018051,101805,'$1$',TRUE,1),
 (1018052,101805,'$0$',FALSE,2),
 (1018053,101805,'$i$',FALSE,3),
 (1018054,101805,'$-1$',FALSE,4),
 (1018061,101806,'$e^{i\pi/2}$',TRUE,1),
 (1018062,101806,'$e^{i\pi}$',FALSE,2),
 (1018063,101806,'$e^{i\pi/4}$',FALSE,3),
 (1018064,101806,'$e^{-i\pi/2}$',FALSE,4),
 (1018071,101807,'$2$',TRUE,1),
 (1018072,101807,'$5$',FALSE,2),
 (1018073,101807,'$2+5i$',FALSE,3),
 (1018074,101807,'$7$',FALSE,4),
 (1018081,101808,'$i$ et $-i$',TRUE,1),
 (1018082,101808,'$1$ et $-1$',FALSE,2),
 (1018083,101808,'$i$ seulement',FALSE,3),
 (1018084,101808,'aucune solution',FALSE,4);

SET @l := (SELECT id FROM lecon WHERE slug = 'geometrie-espace' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'maths'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
 (1019, NULL, @l, 'QCM — Géométrie dans l''espace : applications', 'Exercices d''application directe.', 2);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES
 (101901,1019,'Le produit scalaire $\vec{u}(1,0,0)\cdot\vec{v}(0,1,0)$ vaut :','$x x''+y y''+z z''=0$ : les vecteurs sont orthogonaux.',1),
 (101902,1019,'La norme du vecteur $\vec{u}(1,2,2)$ vaut :','$\|\vec u\|=\sqrt{1+4+4}=3$.',2),
 (101903,1019,'Un vecteur normal au plan d''équation $x+2y+3z-1=0$ est :','Les coefficients donnent $\vec n(1,2,3)$.',3),
 (101904,1019,'L''équation de la sphère de centre $O$ et de rayon $2$ est :','$x^2+y^2+z^2=R^2=4$.',4),
 (101905,1019,'Deux plans sont parallèles si leurs vecteurs normaux sont :','Plans parallèles $\iff$ normaux colinéaires.',5),
 (101906,1019,'$\vec{u}\cdot\vec{v}=0$ (vecteurs non nuls) signifie que $\vec{u}$ et $\vec{v}$ sont :','Produit scalaire nul $\iff$ orthogonaux.',6),
 (101907,1019,'Le milieu $I$ de $A(2,0,4)$ et $B(0,2,0)$ a pour coordonnées :','$I=\left(\frac{2+0}{2},\frac{0+2}{2},\frac{4+0}{2}\right)=(1,1,2)$.',7),
 (101908,1019,'Les coordonnées du vecteur $\vec{AB}$ avec $A(1,2,3)$ et $B(4,2,1)$ sont :','$\vec{AB}=(x_B-x_A,\,y_B-y_A,\,z_B-z_A)=(3,0,-2)$.',8);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
 (1019011,101901,'$0$',TRUE,1),
 (1019012,101901,'$1$',FALSE,2),
 (1019013,101901,'$3$',FALSE,3),
 (1019014,101901,'$\sqrt2$',FALSE,4),
 (1019021,101902,'$3$',TRUE,1),
 (1019022,101902,'$5$',FALSE,2),
 (1019023,101902,'$\sqrt5$',FALSE,3),
 (1019024,101902,'$9$',FALSE,4),
 (1019031,101903,'$(1,2,3)$',TRUE,1),
 (1019032,101903,'$(1,2,3,-1)$',FALSE,2),
 (1019033,101903,'$(-1,-2,-3)$ uniquement',FALSE,3),
 (1019034,101903,'$(0,0,1)$',FALSE,4),
 (1019041,101904,'$x^2+y^2+z^2=4$',TRUE,1),
 (1019042,101904,'$x^2+y^2+z^2=2$',FALSE,2),
 (1019043,101904,'$x^2+y^2+z^2=16$',FALSE,3),
 (1019044,101904,'$x+y+z=2$',FALSE,4),
 (1019051,101905,'colinéaires',TRUE,1),
 (1019052,101905,'orthogonaux',FALSE,2),
 (1019053,101905,'de norme $1$',FALSE,3),
 (1019054,101905,'opposés uniquement',FALSE,4),
 (1019061,101906,'orthogonaux',TRUE,1),
 (1019062,101906,'colinéaires',FALSE,2),
 (1019063,101906,'égaux',FALSE,3),
 (1019064,101906,'de même norme',FALSE,4),
 (1019071,101907,'$(1,1,2)$',TRUE,1),
 (1019072,101907,'$(2,2,4)$',FALSE,2),
 (1019073,101907,'$(1,1,4)$',FALSE,3),
 (1019074,101907,'$(-1,1,-2)$',FALSE,4),
 (1019081,101908,'$(3,0,-2)$',TRUE,1),
 (1019082,101908,'$(-3,0,2)$',FALSE,2),
 (1019083,101908,'$(5,4,4)$',FALSE,3),
 (1019084,101908,'$(3,0,2)$',FALSE,4);

SET @l := (SELECT id FROM lecon WHERE slug = 'probabilites' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'maths'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
 (1020, NULL, @l, 'QCM — Probabilités : applications', 'Exercices d''application directe.', 2);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES
 (102001,1020,'On lance un dé équilibré à 6 faces. La probabilité d''obtenir $6$ est :','Un cas favorable sur six équiprobables : $\frac{1}{6}$.',1),
 (102002,1020,'Si $P(A)=0{,}3$, alors $P(\overline{A})$ vaut :','$P(\overline A)=1-P(A)=0{,}7$.',2),
 (102003,1020,'On lance deux pièces équilibrées. La probabilité d''obtenir « deux faces » est :','$\frac12\times\frac12=\frac14$.',3),
 (102004,1020,'Pour deux événements quelconques, $P(A\cup B)$ vaut :','Formule du crible : $P(A)+P(B)-P(A\cap B)$.',4),
 (102005,1020,'Deux événements $A$ et $B$ sont indépendants si :','Indépendance $\iff P(A\cap B)=P(A)\,P(B)$.',5),
 (102006,1020,'On tire une carte d''un jeu de 52. La probabilité qu''elle soit rouge est :','$\frac{26}{52}=\frac12$.',6),
 (102007,1020,'La probabilité conditionnelle $P(A\mid B)$ (avec $P(B)>0$) vaut :','$P(A\mid B)=\dfrac{P(A\cap B)}{P(B)}$.',7),
 (102008,1020,'L''espérance du nombre obtenu avec un dé équilibré à 6 faces est :','$E=\frac{1+2+3+4+5+6}{6}=3{,}5$.',8);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
 (1020011,102001,'$\dfrac{1}{6}$',TRUE,1),
 (1020012,102001,'$\dfrac{1}{2}$',FALSE,2),
 (1020013,102001,'$\dfrac{1}{3}$',FALSE,3),
 (1020014,102001,'$6$',FALSE,4),
 (1020021,102002,'$0{,}7$',TRUE,1),
 (1020022,102002,'$0{,}3$',FALSE,2),
 (1020023,102002,'$1$',FALSE,3),
 (1020024,102002,'$0$',FALSE,4),
 (1020031,102003,'$\dfrac{1}{4}$',TRUE,1),
 (1020032,102003,'$\dfrac{1}{2}$',FALSE,2),
 (1020033,102003,'$\dfrac{1}{3}$',FALSE,3),
 (1020034,102003,'$1$',FALSE,4),
 (1020041,102004,'$P(A)+P(B)-P(A\cap B)$',TRUE,1),
 (1020042,102004,'$P(A)+P(B)$',FALSE,2),
 (1020043,102004,'$P(A)\,P(B)$',FALSE,3),
 (1020044,102004,'$P(A\cap B)$',FALSE,4),
 (1020051,102005,'$P(A\cap B)=P(A)\,P(B)$',TRUE,1),
 (1020052,102005,'$P(A\cap B)=0$',FALSE,2),
 (1020053,102005,'$P(A)=P(B)$',FALSE,3),
 (1020054,102005,'$P(A\cup B)=1$',FALSE,4),
 (1020061,102006,'$\dfrac{1}{2}$',TRUE,1),
 (1020062,102006,'$\dfrac{1}{4}$',FALSE,2),
 (1020063,102006,'$\dfrac{1}{13}$',FALSE,3),
 (1020064,102006,'$\dfrac{1}{26}$',FALSE,4),
 (1020071,102007,'$\dfrac{P(A\cap B)}{P(B)}$',TRUE,1),
 (1020072,102007,'$\dfrac{P(B)}{P(A)}$',FALSE,2),
 (1020073,102007,'$P(A)\,P(B)$',FALSE,3),
 (1020074,102007,'$P(A\cap B)$',FALSE,4),
 (1020081,102008,'$3{,}5$',TRUE,1),
 (1020082,102008,'$3$',FALSE,2),
 (1020083,102008,'$6$',FALSE,3),
 (1020084,102008,'$1$',FALSE,4);

