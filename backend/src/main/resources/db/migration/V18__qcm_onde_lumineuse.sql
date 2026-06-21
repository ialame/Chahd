-- QCM du chapitre « Propagation d'une onde lumineuse » (notions + applications).
SET SESSION sql_mode = CONCAT(@@sql_mode, ',NO_BACKSLASH_ESCAPES');
SET @l := (SELECT id FROM lecon WHERE slug = 'onde-lumineuse'
           AND matiere_id = (SELECT id FROM matiere WHERE slug = 'physique-chimie'));

-- ===== notions (2103) =====
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
 (2103, NULL, @l, 'QCM — Onde lumineuse : notions', 'Lumière, indice, diffraction, dispersion.', 1);

INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES
 (210301,2103,'La lumière est une onde :','Onde électromagnétique : elle se propage même dans le vide.',1),
 (210302,2103,'Dans le vide, la lumière se propage à la célérité :','$c \approx 3{,}00\times10^{8}~\mathrm{m\cdot s^{-1}}$.',2),
 (210303,2103,'Une lumière monochromatique est caractérisée par :','Une fréquence unique.',3),
 (210304,2103,'L''indice de réfraction d''un milieu est défini par :','$n = \dfrac{c}{v}$, avec $n \ge 1$.',4),
 (210305,2103,'Quand une radiation passe d''un milieu à un autre, sa fréquence :','La fréquence est invariante ; seule $\lambda$ change.',5),
 (210306,2103,'La diffraction est nette lorsque la dimension de l''ouverture est :','De l''ordre de grandeur de la longueur d''onde.',6),
 (210307,2103,'L''écart angulaire de diffraction par une fente de largeur $a$ vaut :','$\theta = \dfrac{\lambda}{a}$.',7),
 (210308,2103,'La lumière blanche est :','Polychromatique (composée de toutes les radiations visibles).',8);

INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
 (2103011,210301,'électromagnétique',TRUE,1),(2103012,210301,'mécanique',FALSE,2),(2103013,210301,'sonore',FALSE,3),(2103014,210301,'longitudinale',FALSE,4),
 (2103021,210302,'$3\times10^{8}~\mathrm{m\cdot s^{-1}}$',TRUE,1),(2103022,210302,'$340~\mathrm{m\cdot s^{-1}}$',FALSE,2),(2103023,210302,'$3\times10^{6}~\mathrm{m\cdot s^{-1}}$',FALSE,3),(2103024,210302,'$1500~\mathrm{m\cdot s^{-1}}$',FALSE,4),
 (2103031,210303,'une fréquence unique',TRUE,1),(2103032,210303,'plusieurs fréquences',FALSE,2),(2103033,210303,'une vitesse unique',FALSE,3),(2103034,210303,'une amplitude unique',FALSE,4),
 (2103041,210304,'$n = \dfrac{c}{v}$',TRUE,1),(2103042,210304,'$n = \dfrac{v}{c}$',FALSE,2),(2103043,210304,'$n = c\,v$',FALSE,3),(2103044,210304,'$n = c - v$',FALSE,4),
 (2103051,210305,'ne change pas',TRUE,1),(2103052,210305,'double',FALSE,2),(2103053,210305,'est divisée par n',FALSE,3),(2103054,210305,'s''annule',FALSE,4),
 (2103061,210306,'de l''ordre de la longueur d''onde',TRUE,1),(2103062,210306,'très grande devant $\lambda$',FALSE,2),(2103063,210306,'nulle',FALSE,3),(2103064,210306,'infinie',FALSE,4),
 (2103071,210307,'$\theta = \dfrac{\lambda}{a}$',TRUE,1),(2103072,210307,'$\theta = \dfrac{a}{\lambda}$',FALSE,2),(2103073,210307,'$\theta = \lambda\,a$',FALSE,3),(2103074,210307,'$\theta = \dfrac{\lambda}{2a}$',FALSE,4),
 (2103081,210308,'polychromatique',TRUE,1),(2103082,210308,'monochromatique',FALSE,2),(2103083,210308,'invisible',FALSE,3),(2103084,210308,'sans fréquence',FALSE,4);

-- ===== applications (2104) =====
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
 (2104, NULL, @l, 'QCM — Onde lumineuse : applications', 'Calculs : fréquence, indice, diffraction.', 2);

INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES
 (210401,2104,'Radiation de longueur d''onde $\lambda_0 = 600~\mathrm{nm}$ dans le vide. Sa fréquence vaut :','$\nu = \dfrac{c}{\lambda_0} = \dfrac{3\times10^{8}}{600\times10^{-9}} = 5\times10^{14}~\mathrm{Hz}$.',1),
 (210402,2104,'Dans un milieu d''indice $n = 1{,}5$, la vitesse de la lumière vaut :','$v = \dfrac{c}{n} = \dfrac{3\times10^{8}}{1{,}5} = 2\times10^{8}~\mathrm{m\cdot s^{-1}}$.',2),
 (210403,2104,'Une radiation $\lambda_0 = 600~\mathrm{nm}$ entre dans un milieu d''indice $n = 1{,}5$. Sa longueur d''onde devient :','$\lambda = \dfrac{\lambda_0}{n} = \dfrac{600}{1{,}5} = 400~\mathrm{nm}$.',3),
 (210404,2104,'Fente de largeur $a = 0{,}1~\mathrm{mm}$, lumière $\lambda = 500~\mathrm{nm}$. Écart angulaire :','$\theta = \dfrac{\lambda}{a} = \dfrac{500\times10^{-9}}{0{,}1\times10^{-3}} = 5\times10^{-3}~\mathrm{rad}$.',4),
 (210405,2104,'$\lambda = 600~\mathrm{nm}$, $a = 0{,}2~\mathrm{mm}$, écran à $D = 2~\mathrm{m}$. Largeur de la tache centrale :','$L = \dfrac{2\lambda D}{a} = \dfrac{2\times600\times10^{-9}\times2}{0{,}2\times10^{-3}} = 1{,}2\times10^{-2}~\mathrm{m}$.',5),
 (210406,2104,'Si on diminue la largeur $a$ de la fente, la diffraction :','$\theta = \lambda/a$ augmente : la diffraction est plus marquée.',6),
 (210407,2104,'Une radiation de longueur d''onde $\lambda_0 \approx 480~\mathrm{nm}$ est de couleur :','Autour de 480 nm, la lumière est bleue.',7),
 (210408,2104,'En traversant un prisme, quelle radiation est la plus déviée ?','Le verre dévie davantage les petites longueurs d''onde : le violet.',8);

INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
 (2104011,210401,'$5\times10^{14}~\mathrm{Hz}$',TRUE,1),(2104012,210401,'$2\times10^{14}~\mathrm{Hz}$',FALSE,2),(2104013,210401,'$5\times10^{11}~\mathrm{Hz}$',FALSE,3),(2104014,210401,'$1{,}8\times10^{17}~\mathrm{Hz}$',FALSE,4),
 (2104021,210402,'$2\times10^{8}~\mathrm{m\cdot s^{-1}}$',TRUE,1),(2104022,210402,'$4{,}5\times10^{8}~\mathrm{m\cdot s^{-1}}$',FALSE,2),(2104023,210402,'$3\times10^{8}~\mathrm{m\cdot s^{-1}}$',FALSE,3),(2104024,210402,'$2\times10^{6}~\mathrm{m\cdot s^{-1}}$',FALSE,4),
 (2104031,210403,'$400~\mathrm{nm}$',TRUE,1),(2104032,210403,'$900~\mathrm{nm}$',FALSE,2),(2104033,210403,'$600~\mathrm{nm}$',FALSE,3),(2104034,210403,'$450~\mathrm{nm}$',FALSE,4),
 (2104041,210404,'$5\times10^{-3}~\mathrm{rad}$',TRUE,1),(2104042,210404,'$2\times10^{-4}~\mathrm{rad}$',FALSE,2),(2104043,210404,'$5\times10^{-6}~\mathrm{rad}$',FALSE,3),(2104044,210404,'$0{,}5~\mathrm{rad}$',FALSE,4),
 (2104051,210405,'$1{,}2\times10^{-2}~\mathrm{m}$',TRUE,1),(2104052,210405,'$6\times10^{-3}~\mathrm{m}$',FALSE,2),(2104053,210405,'$3\times10^{-3}~\mathrm{m}$',FALSE,3),(2104054,210405,'$2{,}4~\mathrm{m}$',FALSE,4),
 (2104061,210406,'est plus marquée',TRUE,1),(2104062,210406,'est moins marquée',FALSE,2),(2104063,210406,'disparaît',FALSE,3),(2104064,210406,'ne change pas',FALSE,4),
 (2104071,210407,'bleue',TRUE,1),(2104072,210407,'rouge',FALSE,2),(2104073,210407,'verte',FALSE,3),(2104074,210407,'jaune',FALSE,4),
 (2104081,210408,'le violet',TRUE,1),(2104082,210408,'le rouge',FALSE,2),(2104083,210408,'le jaune',FALSE,3),(2104084,210408,'toutes pareil',FALSE,4);
