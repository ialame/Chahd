-- QCM du chapitre « Mouvements plans dans des champs uniformes » (notions + applications).
SET SESSION sql_mode = CONCAT(@@sql_mode, ',NO_BACKSLASH_ESCAPES');
SET @l := (SELECT id FROM lecon WHERE slug = 'mouvements-plans'
           AND matiere_id = (SELECT id FROM matiere WHERE slug = 'physique-chimie'));

-- ===== notions (2123) =====
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
 (2123, NULL, @l, 'QCM — Mouvements plans : notions', 'Projectile, champ électrique, force de Lorentz.', 1);

INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES
 (212301,2123,'Dans le champ de pesanteur, la seule force sur un projectile est :','Son poids.',1),
 (212302,2123,'L''accélération d''un projectile vaut :','$\vec{a} = \vec{g}$ (constante, vers le bas).',2),
 (212303,2123,'La trajectoire d''un projectile est :','Une parabole.',3),
 (212304,2123,'Le mouvement horizontal d''un projectile est :','Uniforme.',4),
 (212305,2123,'La force électrique sur une charge $q$ dans un champ $\vec{E}$ est :','$\vec{F} = q\,\vec{E}$.',5),
 (212306,2123,'La force de Lorentz s''écrit :','$\vec{F} = q\,\vec{v}\wedge\vec{B}$.',6),
 (212307,2123,'Dans un champ magnétique uniforme ($\vec{v} \perp \vec{B}$), la trajectoire est :','Circulaire.',7),
 (212308,2123,'La force magnétique :','Ne travaille pas (la vitesse reste constante).',8);

INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
 (2123011,212301,'son poids',TRUE,1),(2123012,212301,'la poussée d''Archimède',FALSE,2),(2123013,212301,'une force électrique',FALSE,3),(2123014,212301,'la force de Lorentz',FALSE,4),
 (2123021,212302,'$\vec{g}$',TRUE,1),(2123022,212302,'$\vec{0}$',FALSE,2),(2123023,212302,'$m\vec{g}$',FALSE,3),(2123024,212302,'$2\vec{g}$',FALSE,4),
 (2123031,212303,'une parabole',TRUE,1),(2123032,212303,'une droite',FALSE,2),(2123033,212303,'un cercle',FALSE,3),(2123034,212303,'une hyperbole',FALSE,4),
 (2123041,212304,'uniforme',TRUE,1),(2123042,212304,'uniformément accéléré',FALSE,2),(2123043,212304,'au repos',FALSE,3),(2123044,212304,'circulaire',FALSE,4),
 (2123051,212305,'$q\,\vec{E}$',TRUE,1),(2123052,212305,'$\dfrac{\vec{E}}{q}$',FALSE,2),(2123053,212305,'$q\,\vec{v}\wedge\vec{E}$',FALSE,3),(2123054,212305,'$m\,\vec{E}$',FALSE,4),
 (2123061,212306,'$q\,\vec{v}\wedge\vec{B}$',TRUE,1),(2123062,212306,'$q\,\vec{B}$',FALSE,2),(2123063,212306,'$q\,\vec{v}\cdot\vec{B}$',FALSE,3),(2123064,212306,'$m\,\vec{v}\wedge\vec{B}$',FALSE,4),
 (2123071,212307,'circulaire',TRUE,1),(2123072,212307,'parabolique',FALSE,2),(2123073,212307,'rectiligne',FALSE,3),(2123074,212307,'elliptique',FALSE,4),
 (2123081,212308,'ne travaille pas',TRUE,1),(2123082,212308,'augmente la vitesse',FALSE,2),(2123083,212308,'diminue la vitesse',FALSE,3),(2123084,212308,'est nulle',FALSE,4);

-- ===== applications (2124) =====
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
 (2124, NULL, @l, 'QCM — Mouvements plans : applications', 'Projectile, champ E, rayon dans un champ B.', 2);

INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES
 (212401,2124,'Projectile lancé à $v_0 = 20~\mathrm{m/s}$ avec $\alpha = 30^\circ$ : la composante horizontale de la vitesse vaut :','$v_{0x} = v_0\cos\alpha = 20\cos 30^\circ \approx 17{,}3~\mathrm{m/s}$.',1),
 (212402,2124,'Pour un projectile, l''accélération vaut (avec $g = 10$) :','$a = g = 10~\mathrm{m\cdot s^{-2}}$ (vers le bas).',2),
 (212403,2124,'Une charge $q = 1~\mu\mathrm{C}$ dans un champ $E = 2000~\mathrm{V/m}$ subit une force :','$F = qE = 10^{-6}\times2000 = 2\times10^{-3}~\mathrm{N}$.',3),
 (212404,2124,'Un proton ($m = 1{,}6\times10^{-27}~\mathrm{kg}$, $q = 1{,}6\times10^{-19}~\mathrm{C}$), $v = 10^{6}~\mathrm{m/s}$, $B = 0{,}1~\mathrm{T}$ : le rayon vaut :','$R = \dfrac{mv}{qB} = \dfrac{1{,}6\times10^{-27}\times10^{6}}{1{,}6\times10^{-19}\times0{,}1} = 0{,}1~\mathrm{m}$.',4),
 (212405,2124,'Dans un champ magnétique uniforme, la vitesse d''une particule chargée :','Reste constante.',5),
 (212406,2124,'Projectile : $x(t) = (v_0\cos\alpha)\,t$. Avec $v_0\cos\alpha = 10~\mathrm{m/s}$ et $t = 2~\mathrm{s}$ :','$x = 10\times2 = 20~\mathrm{m}$.',6),
 (212407,2124,'La trajectoire d''une charge dans un champ électrique uniforme est :','Parabolique.',7),
 (212408,2124,'La force de Lorentz est dirigée :','Perpendiculairement à la vitesse.',8);

INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
 (2124011,212401,'$17{,}3~\mathrm{m/s}$',TRUE,1),(2124012,212401,'$10~\mathrm{m/s}$',FALSE,2),(2124013,212401,'$20~\mathrm{m/s}$',FALSE,3),(2124014,212401,'$34{,}6~\mathrm{m/s}$',FALSE,4),
 (2124021,212402,'$10~\mathrm{m\cdot s^{-2}}$',TRUE,1),(2124022,212402,'$0$',FALSE,2),(2124023,212402,'$20~\mathrm{m\cdot s^{-2}}$',FALSE,3),(2124024,212402,'$5~\mathrm{m\cdot s^{-2}}$',FALSE,4),
 (2124031,212403,'$2\times10^{-3}~\mathrm{N}$',TRUE,1),(2124032,212403,'$2000~\mathrm{N}$',FALSE,2),(2124033,212403,'$2\times10^{-9}~\mathrm{N}$',FALSE,3),(2124034,212403,'$0{,}5\times10^{-3}~\mathrm{N}$',FALSE,4),
 (2124041,212404,'$0{,}1~\mathrm{m}$',TRUE,1),(2124042,212404,'$1~\mathrm{m}$',FALSE,2),(2124043,212404,'$0{,}01~\mathrm{m}$',FALSE,3),(2124044,212404,'$10~\mathrm{m}$',FALSE,4),
 (2124051,212405,'reste constante',TRUE,1),(2124052,212405,'augmente',FALSE,2),(2124053,212405,'diminue',FALSE,3),(2124054,212405,'s''annule',FALSE,4),
 (2124061,212406,'$20~\mathrm{m}$',TRUE,1),(2124062,212406,'$5~\mathrm{m}$',FALSE,2),(2124063,212406,'$12~\mathrm{m}$',FALSE,3),(2124064,212406,'$40~\mathrm{m}$',FALSE,4),
 (2124071,212407,'parabolique',TRUE,1),(2124072,212407,'circulaire',FALSE,2),(2124073,212407,'rectiligne',FALSE,3),(2124074,212407,'hélicoïdale',FALSE,4),
 (2124081,212408,'perpendiculairement à la vitesse',TRUE,1),(2124082,212408,'dans le sens de la vitesse',FALSE,2),(2124083,212408,'opposée à la vitesse',FALSE,3),(2124084,212408,'verticale',FALSE,4);
