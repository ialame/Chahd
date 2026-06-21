-- QCM du chapitre « Les lois de Newton » (notions + applications).
SET SESSION sql_mode = CONCAT(@@sql_mode, ',NO_BACKSLASH_ESCAPES');
SET @l := (SELECT id FROM lecon WHERE slug = 'lois-newton'
           AND matiere_id = (SELECT id FROM matiere WHERE slug = 'physique-chimie'));

-- ===== notions (2119) =====
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
 (2119, NULL, @l, 'QCM — Lois de Newton : notions', 'Référentiel, vecteurs, les trois lois.', 1);

INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES
 (211901,2119,'Un référentiel galiléen est un référentiel dans lequel :','Le principe d''inertie est vérifié.',1),
 (211902,2119,'Le vecteur vitesse est :','La dérivée du vecteur position : $\vec{v} = \dfrac{\mathrm{d}\overrightarrow{OG}}{\mathrm{d}t}$, tangent à la trajectoire.',2),
 (211903,2119,'Le vecteur accélération est :','La dérivée du vecteur vitesse : $\vec{a} = \dfrac{\mathrm{d}\vec{v}}{\mathrm{d}t}$.',3),
 (211904,2119,'D''après le principe d''inertie, si $\sum \vec{F}_{ext} = \vec{0}$, le centre d''inertie est :','Au repos ou en mouvement rectiligne uniforme.',4),
 (211905,2119,'La relation fondamentale de la dynamique s''écrit :','$\sum \vec{F}_{ext} = m\,\vec{a}_G$.',5),
 (211906,2119,'Le principe des actions réciproques s''écrit :','$\vec{F}_{A/B} = -\,\vec{F}_{B/A}$.',6),
 (211907,2119,'Un mouvement rectiligne uniforme correspond à une accélération :','Nulle.',7),
 (211908,2119,'L''unité de la force est :','Le newton (N).',8);

INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
 (2119011,211901,'le principe d''inertie est vérifié',TRUE,1),(2119012,211901,'tout corps est immobile',FALSE,2),(2119013,211901,'il n''y a aucune force',FALSE,3),(2119014,211901,'la vitesse est nulle',FALSE,4),
 (2119021,211902,'la dérivée du vecteur position',TRUE,1),(2119022,211902,'la dérivée de l''accélération',FALSE,2),(2119023,211902,'l''intégrale de la force',FALSE,3),(2119024,211902,'le produit $m\vec{a}$',FALSE,4),
 (2119031,211903,'la dérivée du vecteur vitesse',TRUE,1),(2119032,211903,'la dérivée de la position',FALSE,2),(2119033,211903,'le produit de la masse par la vitesse',FALSE,3),(2119034,211903,'constante toujours',FALSE,4),
 (2119041,211904,'au repos ou en MRU',TRUE,1),(2119042,211904,'forcément immobile',FALSE,2),(2119043,211904,'en accélération',FALSE,3),(2119044,211904,'en mouvement circulaire',FALSE,4),
 (2119051,211905,'$\sum \vec{F}_{ext} = m\,\vec{a}_G$',TRUE,1),(2119052,211905,'$\sum \vec{F}_{ext} = m\,\vec{v}_G$',FALSE,2),(2119053,211905,'$\sum \vec{F}_{ext} = \vec{0}$',FALSE,3),(2119054,211905,'$\vec{a}_G = m\sum \vec{F}_{ext}$',FALSE,4),
 (2119061,211906,'$\vec{F}_{A/B} = -\,\vec{F}_{B/A}$',TRUE,1),(2119062,211906,'$\vec{F}_{A/B} = \vec{F}_{B/A}$',FALSE,2),(2119063,211906,'$\vec{F}_{A/B} = 2\,\vec{F}_{B/A}$',FALSE,3),(2119064,211906,'$\vec{F}_{A/B} = \vec{0}$',FALSE,4),
 (2119071,211907,'nulle',TRUE,1),(2119072,211907,'constante non nulle',FALSE,2),(2119073,211907,'égale à $g$',FALSE,3),(2119074,211907,'maximale',FALSE,4),
 (2119081,211908,'le newton (N)',TRUE,1),(2119082,211908,'le joule (J)',FALSE,2),(2119083,211908,'le pascal (Pa)',FALSE,3),(2119084,211908,'le watt (W)',FALSE,4);

-- ===== applications (2120) =====
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
 (2120, NULL, @l, 'QCM — Lois de Newton : applications', 'RFD, calculs de force et d''accélération.', 2);

INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES
 (212001,2120,'Un solide de masse $2~\mathrm{kg}$ subit une force résultante de $10~\mathrm{N}$. Son accélération vaut :','$a = \dfrac{\sum F}{m} = \dfrac{10}{2} = 5~\mathrm{m\cdot s^{-2}}$.',1),
 (212002,2120,'Pour $m = 0{,}5~\mathrm{kg}$ et $a = 4~\mathrm{m\cdot s^{-2}}$, la résultante des forces vaut :','$\sum F = m\,a = 0{,}5\times4 = 2~\mathrm{N}$.',2),
 (212003,2120,'Un objet se déplace en mouvement rectiligne uniforme. La somme des forces est :','Nulle ($\vec{a} = \vec{0}$).',3),
 (212004,2120,'Pour $\sum F = 20~\mathrm{N}$ et $m = 4~\mathrm{kg}$, l''accélération vaut :','$a = \dfrac{20}{4} = 5~\mathrm{m\cdot s^{-2}}$.',4),
 (212005,2120,'Le corps $A$ exerce sur $B$ une force de $10~\mathrm{N}$. Le corps $B$ exerce sur $A$ :','Une force de $10~\mathrm{N}$, opposée (3ᵉ loi).',5),
 (212006,2120,'Un objet en chute libre n''est soumis qu''à son poids. Son accélération est :','Égale à $\vec{g}$ (vers le bas).',6),
 (212007,2120,'Si la résultante des forces est nulle, le mouvement du centre d''inertie est :','Rectiligne uniforme (ou repos).',7),
 (212008,2120,'Pour $m = 3~\mathrm{kg}$ et $\sum F = 15~\mathrm{N}$, l''accélération vaut :','$a = \dfrac{15}{3} = 5~\mathrm{m\cdot s^{-2}}$.',8);

INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
 (2120011,212001,'$5~\mathrm{m\cdot s^{-2}}$',TRUE,1),(2120012,212001,'$20~\mathrm{m\cdot s^{-2}}$',FALSE,2),(2120013,212001,'$0{,}2~\mathrm{m\cdot s^{-2}}$',FALSE,3),(2120014,212001,'$12~\mathrm{m\cdot s^{-2}}$',FALSE,4),
 (2120021,212002,'$2~\mathrm{N}$',TRUE,1),(2120022,212002,'$8~\mathrm{N}$',FALSE,2),(2120023,212002,'$0{,}125~\mathrm{N}$',FALSE,3),(2120024,212002,'$4{,}5~\mathrm{N}$',FALSE,4),
 (2120031,212003,'nulle',TRUE,1),(2120032,212003,'constante non nulle',FALSE,2),(2120033,212003,'égale à $m\vec{g}$',FALSE,3),(2120034,212003,'maximale',FALSE,4),
 (2120041,212004,'$5~\mathrm{m\cdot s^{-2}}$',TRUE,1),(2120042,212004,'$80~\mathrm{m\cdot s^{-2}}$',FALSE,2),(2120043,212004,'$0{,}2~\mathrm{m\cdot s^{-2}}$',FALSE,3),(2120044,212004,'$24~\mathrm{m\cdot s^{-2}}$',FALSE,4),
 (2120051,212005,'$10~\mathrm{N}$, opposée',TRUE,1),(2120052,212005,'$10~\mathrm{N}$, même sens',FALSE,2),(2120053,212005,'$0~\mathrm{N}$',FALSE,3),(2120054,212005,'$20~\mathrm{N}$, opposée',FALSE,4),
 (2120061,212006,'égale à $\vec{g}$',TRUE,1),(2120062,212006,'nulle',FALSE,2),(2120063,212006,'dirigée vers le haut',FALSE,3),(2120064,212006,'égale à $m\vec{g}$',FALSE,4),
 (2120071,212007,'rectiligne uniforme',TRUE,1),(2120072,212007,'rectiligne accéléré',FALSE,2),(2120073,212007,'circulaire',FALSE,3),(2120074,212007,'impossible',FALSE,4),
 (2120081,212008,'$5~\mathrm{m\cdot s^{-2}}$',TRUE,1),(2120082,212008,'$45~\mathrm{m\cdot s^{-2}}$',FALSE,2),(2120083,212008,'$0{,}2~\mathrm{m\cdot s^{-2}}$',FALSE,3),(2120084,212008,'$18~\mathrm{m\cdot s^{-2}}$',FALSE,4);
