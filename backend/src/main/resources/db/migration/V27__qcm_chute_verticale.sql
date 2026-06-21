-- QCM du chapitre « Chute verticale dans un fluide » (notions + applications).
SET SESSION sql_mode = CONCAT(@@sql_mode, ',NO_BACKSLASH_ESCAPES');
SET @l := (SELECT id FROM lecon WHERE slug = 'chute-verticale'
           AND matiere_id = (SELECT id FROM matiere WHERE slug = 'physique-chimie'));

-- ===== notions (2121) =====
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
 (2121, NULL, @l, 'QCM — Chute verticale : notions', 'Forces, vitesse limite, chute libre.', 1);

INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES
 (212101,2121,'Un solide en chute dans un fluide subit :','Le poids, la poussée d''Archimède et le frottement fluide.',1),
 (212102,2121,'La poussée d''Archimède est dirigée :','Vers le haut.',2),
 (212103,2121,'La force de frottement fluide est :','Opposée au vecteur vitesse.',3),
 (212104,2121,'La poussée d''Archimède a pour valeur :','$F_A = \rho_{fluide}\,V\,g$.',4),
 (212105,2121,'La vitesse limite est atteinte lorsque :','L''accélération s''annule (les forces se compensent).',5),
 (212106,2121,'À la vitesse limite, le mouvement est :','Rectiligne uniforme.',6),
 (212107,2121,'En chute libre, le solide n''est soumis qu''à :','Son poids.',7),
 (212108,2121,'En chute libre, l''accélération vaut :','$g$ (vers le bas).',8);

INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
 (2121011,212101,'poids, poussée d''Archimède et frottement',TRUE,1),(2121012,212101,'le poids seulement',FALSE,2),(2121013,212101,'une force électrique',FALSE,3),(2121014,212101,'aucune force',FALSE,4),
 (2121021,212102,'vers le haut',TRUE,1),(2121022,212102,'vers le bas',FALSE,2),(2121023,212102,'horizontale',FALSE,3),(2121024,212102,'nulle',FALSE,4),
 (2121031,212103,'opposée à la vitesse',TRUE,1),(2121032,212103,'dans le sens de la vitesse',FALSE,2),(2121033,212103,'verticale vers le bas',FALSE,3),(2121034,212103,'constante',FALSE,4),
 (2121041,212104,'$\rho_{fluide}\,V\,g$',TRUE,1),(2121042,212104,'$m\,g$',FALSE,2),(2121043,212104,'$k\,v$',FALSE,3),(2121044,212104,'$\rho_{fluide}\,V$',FALSE,4),
 (2121051,212105,'l''accélération s''annule',TRUE,1),(2121052,212105,'la vitesse s''annule',FALSE,2),(2121053,212105,'le poids s''annule',FALSE,3),(2121054,212105,'le frottement s''annule',FALSE,4),
 (2121061,212106,'rectiligne uniforme',TRUE,1),(2121062,212106,'uniformément accéléré',FALSE,2),(2121063,212106,'circulaire',FALSE,3),(2121064,212106,'au repos',FALSE,4),
 (2121071,212107,'son poids',TRUE,1),(2121072,212107,'la poussée d''Archimède',FALSE,2),(2121073,212107,'le frottement',FALSE,3),(2121074,212107,'une force motrice',FALSE,4),
 (2121081,212108,'$g$',TRUE,1),(2121082,212108,'$0$',FALSE,2),(2121083,212108,'$2g$',FALSE,3),(2121084,212108,'$\dfrac{g}{2}$',FALSE,4);

-- ===== applications (2122) =====
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
 (2122, NULL, @l, 'QCM — Chute verticale : applications', 'Calculs de forces et de vitesse.', 2);

INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES
 (212201,2122,'Pour $m = 0{,}1~\mathrm{kg}$ et $g = 10~\mathrm{m\cdot s^{-2}}$, le poids vaut :','$P = mg = 0{,}1\times10 = 1~\mathrm{N}$.',1),
 (212202,2122,'Pour $\rho_{fluide} = 1000~\mathrm{kg/m^3}$, $V = 10^{-5}~\mathrm{m^3}$, $g = 10$, la poussée vaut :','$F_A = \rho V g = 1000\times10^{-5}\times10 = 0{,}1~\mathrm{N}$.',2),
 (212203,2122,'Pour un frottement $f = kv$ avec $k = 0{,}5$ et $v = 4~\mathrm{m/s}$ :','$f = kv = 0{,}5\times4 = 2~\mathrm{N}$.',3),
 (212204,2122,'Avec $mg = 2~\mathrm{N}$, $F_A = 0{,}5~\mathrm{N}$, $k = 0{,}5$, la vitesse limite vaut :','$v_{lim} = \dfrac{mg - F_A}{k} = \dfrac{2 - 0{,}5}{0{,}5} = 3~\mathrm{m/s}$.',4),
 (212205,2122,'En chute libre ($v = gt$, $g = 10$), la vitesse après $2~\mathrm{s}$ vaut :','$v = gt = 10\times2 = 20~\mathrm{m/s}$.',5),
 (212206,2122,'À la vitesse limite, la somme des forces est :','Nulle.',6),
 (212207,2122,'À la vitesse limite, l''accélération du solide est :','Nulle.',7),
 (212208,2122,'En chute libre, le mouvement est :','Rectiligne uniformément accéléré.',8);

INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
 (2122011,212201,'$1~\mathrm{N}$',TRUE,1),(2122012,212201,'$10~\mathrm{N}$',FALSE,2),(2122013,212201,'$0{,}01~\mathrm{N}$',FALSE,3),(2122014,212201,'$0{,}1~\mathrm{N}$',FALSE,4),
 (2122021,212202,'$0{,}1~\mathrm{N}$',TRUE,1),(2122022,212202,'$1~\mathrm{N}$',FALSE,2),(2122023,212202,'$0{,}01~\mathrm{N}$',FALSE,3),(2122024,212202,'$100~\mathrm{N}$',FALSE,4),
 (2122031,212203,'$2~\mathrm{N}$',TRUE,1),(2122032,212203,'$0{,}125~\mathrm{N}$',FALSE,2),(2122033,212203,'$8~\mathrm{N}$',FALSE,3),(2122034,212203,'$4{,}5~\mathrm{N}$',FALSE,4),
 (2122041,212204,'$3~\mathrm{m/s}$',TRUE,1),(2122042,212204,'$5~\mathrm{m/s}$',FALSE,2),(2122043,212204,'$0{,}75~\mathrm{m/s}$',FALSE,3),(2122044,212204,'$1{,}5~\mathrm{m/s}$',FALSE,4),
 (2122051,212205,'$20~\mathrm{m/s}$',TRUE,1),(2122052,212205,'$5~\mathrm{m/s}$',FALSE,2),(2122053,212205,'$12~\mathrm{m/s}$',FALSE,3),(2122054,212205,'$40~\mathrm{m/s}$',FALSE,4),
 (2122061,212206,'nulle',TRUE,1),(2122062,212206,'maximale',FALSE,2),(2122063,212206,'égale au poids',FALSE,3),(2122064,212206,'égale à la poussée',FALSE,4),
 (2122071,212207,'nulle',TRUE,1),(2122072,212207,'égale à $g$',FALSE,2),(2122073,212207,'constante non nulle',FALSE,3),(2122074,212207,'maximale',FALSE,4),
 (2122081,212208,'rectiligne uniformément accéléré',TRUE,1),(2122082,212208,'rectiligne uniforme',FALSE,2),(2122083,212208,'circulaire',FALSE,3),(2122084,212208,'avec vitesse limite',FALSE,4);
