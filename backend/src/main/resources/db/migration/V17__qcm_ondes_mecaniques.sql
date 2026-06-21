-- QCM du chapitre « Ondes mécaniques progressives » (notions + applications).
-- Bonne réponse listée en 1er (le QuizRunner mélange les choix à l'affichage).
SET SESSION sql_mode = CONCAT(@@sql_mode, ',NO_BACKSLASH_ESCAPES'); -- ids 2101/2102
SET @l := (SELECT id FROM lecon WHERE slug = 'ondes-mecaniques-progressives'
           AND matiere_id = (SELECT id FROM matiere WHERE slug = 'physique-chimie'));

-- ===== QCM notions (2101) =====
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
 (2101, NULL, @l, 'QCM — Ondes mécaniques : notions', 'Définitions et propriétés des ondes.', 1);

INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES
 (210101,2101,'Une onde mécanique se propage :','Une onde mécanique a besoin d''un milieu matériel ; elle ne se propage pas dans le vide.',1),
 (210102,2101,'Lors de la propagation d''une onde mécanique, il y a transport :','L''énergie se propage, mais la matière ne fait qu''osciller sur place.',2),
 (210103,2101,'Une onde se propageant le long d''une corde est :','La perturbation est perpendiculaire à la propagation : onde transversale.',3),
 (210104,2101,'L''onde sonore est une onde :','Le son se propage par compressions-dilatations parallèles à la propagation : onde longitudinale.',4),
 (210105,2101,'La célérité d''une onde dépend :','Elle dépend du milieu (nature, température…), pas de l''amplitude.',5),
 (210106,2101,'Le retard d''un point M situé à la distance $d$ de la source vaut :','$\tau = \dfrac{d}{v}$.',6),
 (210107,2101,'La longueur d''onde est donnée par :','$\lambda = v\,T = \dfrac{v}{\nu}$.',7),
 (210108,2101,'La fréquence $\nu$ et la période $T$ sont liées par :','$\nu = \dfrac{1}{T}$.',8);

INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
 (2101011,210101,'dans un milieu matériel',TRUE,1),(2101012,210101,'dans le vide',FALSE,2),(2101013,210101,'sans aucun milieu',FALSE,3),(2101014,210101,'uniquement dans l''air',FALSE,4),
 (2101021,210102,'d''énergie sans transport de matière',TRUE,1),(2101022,210102,'de matière sans énergie',FALSE,2),(2101023,210102,'de matière et d''énergie',FALSE,3),(2101024,210102,'ni matière ni énergie',FALSE,4),
 (2101031,210103,'transversale',TRUE,1),(2101032,210103,'longitudinale',FALSE,2),(2101033,210103,'sonore',FALSE,3),(2101034,210103,'lumineuse',FALSE,4),
 (2101041,210104,'longitudinale',TRUE,1),(2101042,210104,'transversale',FALSE,2),(2101043,210104,'électromagnétique',FALSE,3),(2101044,210104,'lumineuse',FALSE,4),
 (2101051,210105,'du milieu de propagation',TRUE,1),(2101052,210105,'de l''amplitude de l''onde',FALSE,2),(2101053,210105,'de la forme de la source',FALSE,3),(2101054,210105,'de la couleur de l''onde',FALSE,4),
 (2101061,210106,'$\tau = \dfrac{d}{v}$',TRUE,1),(2101062,210106,'$\tau = d\,v$',FALSE,2),(2101063,210106,'$\tau = \dfrac{v}{d}$',FALSE,3),(2101064,210106,'$\tau = \dfrac{d}{v^2}$',FALSE,4),
 (2101071,210107,'$\lambda = v\,T$',TRUE,1),(2101072,210107,'$\lambda = \dfrac{T}{v}$',FALSE,2),(2101073,210107,'$\lambda = \dfrac{v}{T}$',FALSE,3),(2101074,210107,'$\lambda = v + T$',FALSE,4),
 (2101081,210108,'$\nu = \dfrac{1}{T}$',TRUE,1),(2101082,210108,'$\nu = T$',FALSE,2),(2101083,210108,'$\nu = \dfrac{T}{2}$',FALSE,3),(2101084,210108,'$\nu = 2T$',FALSE,4);

-- ===== QCM applications (2102) =====
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
 (2102, NULL, @l, 'QCM — Ondes mécaniques : applications', 'Calculs de célérité, retard, longueur d''onde.', 2);

INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES
 (210201,2102,'Une onde parcourt $3~\mathrm{m}$ en $0{,}02~\mathrm{s}$. Sa célérité vaut :','$v = \dfrac{d}{\Delta t} = \dfrac{3}{0{,}02} = 150~\mathrm{m\cdot s^{-1}}$.',1),
 (210202,2102,'Onde sonore ($v = 340~\mathrm{m\cdot s^{-1}}$) de fréquence $1700~\mathrm{Hz}$. Sa longueur d''onde :','$\lambda = \dfrac{v}{\nu} = \dfrac{340}{1700} = 0{,}2~\mathrm{m}$.',2),
 (210203,2102,'Source à $1{,}5~\mathrm{m}$ d''un point M, célérité $300~\mathrm{m\cdot s^{-1}}$. Le retard vaut :','$\tau = \dfrac{d}{v} = \dfrac{1{,}5}{300} = 5\times10^{-3}~\mathrm{s}$.',3),
 (210204,2102,'Une onde de longueur d''onde $2~\mathrm{cm}$ et de célérité $0{,}5~\mathrm{m\cdot s^{-1}}$ a pour période :','$T = \dfrac{\lambda}{v} = \dfrac{0{,}02}{0{,}5} = 0{,}04~\mathrm{s}$.',4),
 (210205,2102,'Une onde a une période $T = 20~\mathrm{ms}$. Sa fréquence vaut :','$\nu = \dfrac{1}{T} = \dfrac{1}{0{,}02} = 50~\mathrm{Hz}$.',5),
 (210206,2102,'Deux points distants de $3\lambda$ vibrent :','Une distance multiple entier de $\lambda$ : les points sont en phase.',6),
 (210207,2102,'Ultrasons dans l''eau ($v = 1500~\mathrm{m\cdot s^{-1}}$) de fréquence $1~\mathrm{MHz}$. Longueur d''onde :','$\lambda = \dfrac{v}{\nu} = \dfrac{1500}{10^{6}} = 1{,}5\times10^{-3}~\mathrm{m}$.',7),
 (210208,2102,'Onde de période $0{,}5~\mathrm{s}$ et de longueur d''onde $10~\mathrm{cm}$. Célérité :','$v = \dfrac{\lambda}{T} = \dfrac{0{,}1}{0{,}5} = 0{,}2~\mathrm{m\cdot s^{-1}}$.',8);

INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
 (2102011,210201,'$150~\mathrm{m\cdot s^{-1}}$',TRUE,1),(2102012,210201,'$0{,}06~\mathrm{m\cdot s^{-1}}$',FALSE,2),(2102013,210201,'$60~\mathrm{m\cdot s^{-1}}$',FALSE,3),(2102014,210201,'$15~\mathrm{m\cdot s^{-1}}$',FALSE,4),
 (2102021,210202,'$0{,}2~\mathrm{m}$',TRUE,1),(2102022,210202,'$5~\mathrm{m}$',FALSE,2),(2102023,210202,'$2~\mathrm{m}$',FALSE,3),(2102024,210202,'$0{,}5~\mathrm{m}$',FALSE,4),
 (2102031,210203,'$5\times10^{-3}~\mathrm{s}$',TRUE,1),(2102032,210203,'$200~\mathrm{s}$',FALSE,2),(2102033,210203,'$450~\mathrm{s}$',FALSE,3),(2102034,210203,'$0{,}2~\mathrm{s}$',FALSE,4),
 (2102041,210204,'$0{,}04~\mathrm{s}$',TRUE,1),(2102042,210204,'$25~\mathrm{s}$',FALSE,2),(2102043,210204,'$0{,}01~\mathrm{s}$',FALSE,3),(2102044,210204,'$4~\mathrm{s}$',FALSE,4),
 (2102051,210205,'$50~\mathrm{Hz}$',TRUE,1),(2102052,210205,'$20~\mathrm{Hz}$',FALSE,2),(2102053,210205,'$0{,}02~\mathrm{Hz}$',FALSE,3),(2102054,210205,'$2000~\mathrm{Hz}$',FALSE,4),
 (2102061,210206,'en phase',TRUE,1),(2102062,210206,'en opposition de phase',FALSE,2),(2102063,210206,'en quadrature',FALSE,3),(2102064,210206,'au repos',FALSE,4),
 (2102071,210207,'$1{,}5\times10^{-3}~\mathrm{m}$',TRUE,1),(2102072,210207,'$1{,}5~\mathrm{m}$',FALSE,2),(2102073,210207,'$0{,}15~\mathrm{m}$',FALSE,3),(2102074,210207,'$1500~\mathrm{m}$',FALSE,4),
 (2102081,210208,'$0{,}2~\mathrm{m\cdot s^{-1}}$',TRUE,1),(2102082,210208,'$5~\mathrm{m\cdot s^{-1}}$',FALSE,2),(2102083,210208,'$0{,}05~\mathrm{m\cdot s^{-1}}$',FALSE,3),(2102084,210208,'$50~\mathrm{m\cdot s^{-1}}$',FALSE,4);
