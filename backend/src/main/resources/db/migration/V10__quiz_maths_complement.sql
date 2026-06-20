-- 3 QCM manquants (rattachés directement aux leçons) : exponentielle,
-- dénombrement, géométrie dans l'espace. Ces leçons n'ont pas de « chapitre
-- programme » -> on rend chapitre_id nullable (modèle unifié sur les leçons).
SET SESSION sql_mode = CONCAT(@@sql_mode, ',NO_BACKSLASH_ESCAPES');
ALTER TABLE quiz MODIFY chapitre_id BIGINT NULL;

SET @maths := (SELECT id FROM matiere WHERE slug = 'maths');
SET @lex := (SELECT id FROM lecon WHERE matiere_id = @maths AND slug = 'exponentielle');
SET @lde := (SELECT id FROM lecon WHERE matiere_id = @maths AND slug = 'denombrement');
SET @lge := (SELECT id FROM lecon WHERE matiere_id = @maths AND slug = 'geometrie-espace');

INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
 (1008, NULL, @lex, 'QCM — Fonction exponentielle', 'Propriétés, dérivées et limites de l''exponentielle.', 1),
 (1009, NULL, @lde, 'QCM — Dénombrement', 'Permutations, arrangements et combinaisons.', 1),
 (1010, NULL, @lge, 'QCM — Géométrie dans l''espace', 'Produit scalaire, vectoriel, plans et sphères.', 1);

-- ===================== 1008 : Fonction exponentielle =====================
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES
 (100801,1008,'La dérivée de $e^x$ est :','La fonction exponentielle est sa propre dérivée : $(e^x)''=e^x$.',1),
 (100802,1008,'$e^{a+b}$ vaut :','Relation fonctionnelle : $e^{a+b}=e^a\,e^b$.',2),
 (100803,1008,'Que vaut $e^0$ ?','$e^0=1$.',3),
 (100804,1008,'Que vaut $\lim_{x \to -\infty} e^x$ ?','$e^x \to 0$ quand $x\to-\infty$.',4),
 (100805,1008,'Que vaut $\lim_{x \to +\infty} \dfrac{e^x}{x}$ ?','Croissance comparée : l''exponentielle l''emporte, la limite est $+\infty$.',5),
 (100806,1008,'La dérivée de $e^{x^2}$ est :','$(e^{u})''=u''e^{u}$ avec $u=x^2$ : $2x\,e^{x^2}$.',6),
 (100807,1008,'Pour tout réel $x$, $e^x$ est :','L''exponentielle est strictement positive sur $\mathbb{R}$.',7),
 (100808,1008,'$e^{-x}$ est égal à :','$e^{-x}=\dfrac{1}{e^x}$.',8);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
 (1008011,100801,'$e^x$',TRUE,1),(1008012,100801,'$x\,e^{x-1}$',FALSE,2),(1008013,100801,'$1$',FALSE,3),(1008014,100801,'$e$',FALSE,4),
 (1008021,100802,'$e^a\,e^b$',TRUE,1),(1008022,100802,'$e^a+e^b$',FALSE,2),(1008023,100802,'$e^{ab}$',FALSE,3),(1008024,100802,'$a\,e^b$',FALSE,4),
 (1008031,100803,'$1$',TRUE,1),(1008032,100803,'$0$',FALSE,2),(1008033,100803,'$e$',FALSE,3),(1008034,100803,'$+\infty$',FALSE,4),
 (1008041,100804,'$0$',TRUE,1),(1008042,100804,'$-\infty$',FALSE,2),(1008043,100804,'$+\infty$',FALSE,3),(1008044,100804,'$1$',FALSE,4),
 (1008051,100805,'$+\infty$',TRUE,1),(1008052,100805,'$0$',FALSE,2),(1008053,100805,'$1$',FALSE,3),(1008054,100805,'$e$',FALSE,4),
 (1008061,100806,'$2x\,e^{x^2}$',TRUE,1),(1008062,100806,'$e^{x^2}$',FALSE,2),(1008063,100806,'$2x\,e^{2x}$',FALSE,3),(1008064,100806,'$x^2 e^{x^2-1}$',FALSE,4),
 (1008071,100807,'Strictement positif',TRUE,1),(1008072,100807,'Strictement négatif',FALSE,2),(1008073,100807,'Positif ou nul',FALSE,3),(1008074,100807,'De signe variable',FALSE,4),
 (1008081,100808,'$\dfrac{1}{e^x}$',TRUE,1),(1008082,100808,'$-e^x$',FALSE,2),(1008083,100808,'$e^x$',FALSE,3),(1008084,100808,'$1-e^x$',FALSE,4);

-- ===================== 1009 : Dénombrement =====================
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES
 (100901,1009,'Le nombre de permutations (ordres) de $n$ objets distincts est :','C''est $n!$ (factorielle de $n$).',1),
 (100902,1009,'$\dbinom{n}{k}$ vaut :','Nombre de combinaisons : $\dbinom{n}{k}=\dfrac{n!}{k!\,(n-k)!}$.',2),
 (100903,1009,'Que vaut $\dbinom{5}{2}$ ?','$\dbinom{5}{2}=\dfrac{5!}{2!\,3!}=10$.',3),
 (100904,1009,'Le nombre d''arrangements de $k$ parmi $n$ (avec ordre), noté $A_n^k$, vaut :','$A_n^k=\dfrac{n!}{(n-k)!}$.',4),
 (100905,1009,'Que vaut $\dbinom{n}{0}$ ?','Il y a une seule partie vide : $\dbinom{n}{0}=1$.',5),
 (100906,1009,'Les nombres $\dbinom{n}{k}$ et $\dbinom{n}{n-k}$ sont :','Propriété de symétrie du triangle de Pascal : ils sont égaux.',6),
 (100907,1009,'Le nombre de parties (sous-ensembles) d''un ensemble à $n$ éléments est :','Chaque élément est pris ou non : $2^n$.',7),
 (100908,1009,'Pour un tirage simultané (sans ordre) de $k$ boules parmi $n$, on dénombre avec :','Sans ordre et sans répétition : les combinaisons $\dbinom{n}{k}$.',8);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
 (1009011,100901,'$n!$',TRUE,1),(1009012,100901,'$n^2$',FALSE,2),(1009013,100901,'$2^n$',FALSE,3),(1009014,100901,'$n$',FALSE,4),
 (1009021,100902,'$\dfrac{n!}{k!\,(n-k)!}$',TRUE,1),(1009022,100902,'$\dfrac{n!}{(n-k)!}$',FALSE,2),(1009023,100902,'$n!\,k!$',FALSE,3),(1009024,100902,'$\dfrac{n!}{k!}$',FALSE,4),
 (1009031,100903,'$10$',TRUE,1),(1009032,100903,'$20$',FALSE,2),(1009033,100903,'$25$',FALSE,3),(1009034,100903,'$7$',FALSE,4),
 (1009041,100904,'$\dfrac{n!}{(n-k)!}$',TRUE,1),(1009042,100904,'$\dfrac{n!}{k!\,(n-k)!}$',FALSE,2),(1009043,100904,'$k!$',FALSE,3),(1009044,100904,'$\dfrac{n!}{k!}$',FALSE,4),
 (1009051,100905,'$1$',TRUE,1),(1009052,100905,'$0$',FALSE,2),(1009053,100905,'$n$',FALSE,3),(1009054,100905,'$n!$',FALSE,4),
 (1009061,100906,'Égaux',TRUE,1),(1009062,100906,'Opposés',FALSE,2),(1009063,100906,'Inverses',FALSE,3),(1009064,100906,'Sans relation',FALSE,4),
 (1009071,100907,'$2^n$',TRUE,1),(1009072,100907,'$n^2$',FALSE,2),(1009073,100907,'$n!$',FALSE,3),(1009074,100907,'$2n$',FALSE,4),
 (1009081,100908,'Les combinaisons $\dbinom{n}{k}$',TRUE,1),(1009082,100908,'Les arrangements $A_n^k$',FALSE,2),(1009083,100908,'Les permutations $n!$',FALSE,3),(1009084,100908,'$n^k$',FALSE,4);

-- ===================== 1010 : Géométrie dans l'espace =====================
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES
 (101001,1010,'Le produit scalaire $\vec{u}(x,y,z)\cdot\vec{v}(x'',y'',z'')$ vaut :','En base orthonormée : $xx''+yy''+zz''$.',1),
 (101002,1010,'Deux vecteurs $\vec{u}$ et $\vec{v}$ sont orthogonaux si et seulement si :','$\vec{u}\perp\vec{v} \iff \vec{u}\cdot\vec{v}=0$.',2),
 (101003,1010,'La norme $\lVert\vec{u}(x,y,z)\rVert$ vaut :','$\lVert\vec{u}\rVert=\sqrt{x^2+y^2+z^2}$.',3),
 (101004,1010,'L''équation de la sphère de centre $\Omega(a,b,c)$ et de rayon $R$ est :','$(x-a)^2+(y-b)^2+(z-c)^2=R^2$.',4),
 (101005,1010,'Un vecteur normal au plan d''équation $ax+by+cz+d=0$ est :','Les coefficients donnent le vecteur normal $(a,b,c)$.',5),
 (101006,1010,'La distance d''un point $M_0(x_0,y_0,z_0)$ au plan $ax+by+cz+d=0$ vaut :','$d=\dfrac{|ax_0+by_0+cz_0+d|}{\sqrt{a^2+b^2+c^2}}$.',6),
 (101007,1010,'Le produit vectoriel $\vec{u}\wedge\vec{v}$ est :','Il est orthogonal à la fois à $\vec{u}$ et à $\vec{v}$.',7),
 (101008,1010,'Si $\vec{u}$ et $\vec{v}$ sont colinéaires, alors $\vec{u}\wedge\vec{v}$ vaut :','Le produit vectoriel de vecteurs colinéaires est nul.',8);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
 (1010011,101001,'$xx''+yy''+zz''$',TRUE,1),(1010012,101001,'$x+y+z$',FALSE,2),(1010013,101001,'$xyz$',FALSE,3),(1010014,101001,'$xx''-yy''-zz''$',FALSE,4),
 (1010021,101002,'$\vec{u}\cdot\vec{v}=0$',TRUE,1),(1010022,101002,'$\vec{u}\cdot\vec{v}=1$',FALSE,2),(1010023,101002,'$\vec{u}\wedge\vec{v}=\vec{0}$',FALSE,3),(1010024,101002,'$\lVert\vec{u}\rVert=\lVert\vec{v}\rVert$',FALSE,4),
 (1010031,101003,'$\sqrt{x^2+y^2+z^2}$',TRUE,1),(1010032,101003,'$x^2+y^2+z^2$',FALSE,2),(1010033,101003,'$|x|+|y|+|z|$',FALSE,3),(1010034,101003,'$\sqrt{x+y+z}$',FALSE,4),
 (1010041,101004,'$(x-a)^2+(y-b)^2+(z-c)^2=R^2$',TRUE,1),(1010042,101004,'$(x-a)^2+(y-b)^2+(z-c)^2=R$',FALSE,2),(1010043,101004,'$x^2+y^2+z^2=R^2$',FALSE,3),(1010044,101004,'$(x+a)^2+(y+b)^2+(z+c)^2=R^2$',FALSE,4),
 (1010051,101005,'$(a,b,c)$',TRUE,1),(1010052,101005,'$(x,y,z)$',FALSE,2),(1010053,101005,'$(-d,-d,-d)$',FALSE,3),(1010054,101005,'$(b,c,a)$',FALSE,4),
 (1010061,101006,'$\dfrac{|ax_0+by_0+cz_0+d|}{\sqrt{a^2+b^2+c^2}}$',TRUE,1),(1010062,101006,'$|ax_0+by_0+cz_0+d|$',FALSE,2),(1010063,101006,'$\dfrac{ax_0+by_0+cz_0+d}{a^2+b^2+c^2}$',FALSE,3),(1010064,101006,'$\sqrt{x_0^2+y_0^2+z_0^2}$',FALSE,4),
 (1010071,101007,'Orthogonal à $\vec{u}$ et à $\vec{v}$',TRUE,1),(1010072,101007,'Colinéaire à $\vec{u}$',FALSE,2),(1010073,101007,'Un nombre réel',FALSE,3),(1010074,101007,'Parallèle au plan $(\vec{u},\vec{v})$',FALSE,4),
 (1010081,101008,'$\vec{0}$',TRUE,1),(1010082,101008,'$\vec{u}+\vec{v}$',FALSE,2),(1010083,101008,'$1$',FALSE,3),(1010084,101008,'$\lVert\vec{u}\rVert\,\lVert\vec{v}\rVert$',FALSE,4);
