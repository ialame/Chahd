-- QCM du chapitre « Le dipôle RC » (notions + applications).
SET SESSION sql_mode = CONCAT(@@sql_mode, ',NO_BACKSLASH_ESCAPES');
SET @l := (SELECT id FROM lecon WHERE slug = 'dipole-rc'
           AND matiere_id = (SELECT id FROM matiere WHERE slug = 'physique-chimie'));

-- ===== notions (2109) =====
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
 (2109, NULL, @l, 'QCM — Dipôle RC : notions', 'Condensateur, charge/décharge, constante de temps.', 1);

INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES
 (210901,2109,'La charge d''un condensateur est liée à sa tension par :','$q = C\,u_C$.',1),
 (210902,2109,'L''unité de la capacité $C$ est :','Le farad (F).',2),
 (210903,2109,'L''intensité traversant un condensateur vaut :','$i = C\,\dfrac{\mathrm{d}u_C}{\mathrm{d}t}$.',3),
 (210904,2109,'L''équation différentielle de la charge d''un dipôle RC est :','$RC\,\dfrac{\mathrm{d}u_C}{\mathrm{d}t} + u_C = E$.',4),
 (210905,2109,'Pendant la charge, la tension aux bornes du condensateur est :','$u_C(t) = E\left(1 - e^{-t/\tau}\right)$.',5),
 (210906,2109,'La constante de temps d''un dipôle RC vaut :','$\tau = RC$.',6),
 (210907,2109,'À l''instant $t = \tau$ pendant la charge, $u_C$ vaut environ :','$0{,}63\,E$.',7),
 (210908,2109,'L''énergie emmagasinée par un condensateur est :','$E_C = \dfrac{1}{2}C\,u_C^{2}$.',8);

INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
 (2109011,210901,'$q = C\,u_C$',TRUE,1),(2109012,210901,'$q = \dfrac{u_C}{C}$',FALSE,2),(2109013,210901,'$q = C + u_C$',FALSE,3),(2109014,210901,'$q = \dfrac{C}{u_C}$',FALSE,4),
 (2109021,210902,'le farad (F)',TRUE,1),(2109022,210902,'le volt (V)',FALSE,2),(2109023,210902,'l''ohm ($\Omega$)',FALSE,3),(2109024,210902,'le coulomb (C)',FALSE,4),
 (2109031,210903,'$i = C\,\dfrac{\mathrm{d}u_C}{\mathrm{d}t}$',TRUE,1),(2109032,210903,'$i = \dfrac{u_C}{C}$',FALSE,2),(2109033,210903,'$i = C\,u_C$',FALSE,3),(2109034,210903,'$i = \dfrac{\mathrm{d}u_C}{\mathrm{d}t}$',FALSE,4),
 (2109041,210904,'$RC\,\dfrac{\mathrm{d}u_C}{\mathrm{d}t} + u_C = E$',TRUE,1),(2109042,210904,'$\dfrac{\mathrm{d}u_C}{\mathrm{d}t} + RC\,u_C = E$',FALSE,2),(2109043,210904,'$u_C = E$',FALSE,3),(2109044,210904,'$RC\,u_C = E$',FALSE,4),
 (2109051,210905,'$E\left(1 - e^{-t/\tau}\right)$',TRUE,1),(2109052,210905,'$E\,e^{-t/\tau}$',FALSE,2),(2109053,210905,'$E\,e^{t/\tau}$',FALSE,3),(2109054,210905,'$E\,t$',FALSE,4),
 (2109061,210906,'$\tau = RC$',TRUE,1),(2109062,210906,'$\tau = \dfrac{R}{C}$',FALSE,2),(2109063,210906,'$\tau = \dfrac{C}{R}$',FALSE,3),(2109064,210906,'$\tau = R + C$',FALSE,4),
 (2109071,210907,'$0{,}63\,E$',TRUE,1),(2109072,210907,'$0{,}37\,E$',FALSE,2),(2109073,210907,'$E$',FALSE,3),(2109074,210907,'$0{,}5\,E$',FALSE,4),
 (2109081,210908,'$\dfrac{1}{2}C\,u_C^{2}$',TRUE,1),(2109082,210908,'$C\,u_C^{2}$',FALSE,2),(2109083,210908,'$\dfrac{1}{2}C\,u_C$',FALSE,3),(2109084,210908,'$\dfrac{1}{2}\dfrac{u_C^{2}}{C}$',FALSE,4);

-- ===== applications (2110) =====
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
 (2110, NULL, @l, 'QCM — Dipôle RC : applications', 'Calculs : constante de temps, charge, énergie.', 2);

INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES
 (211001,2110,'Pour $R = 1~\mathrm{k}\Omega$ et $C = 1~\mu\mathrm{F}$, la constante de temps vaut :','$\tau = RC = 10^{3}\times10^{-6} = 10^{-3}~\mathrm{s} = 1~\mathrm{ms}$.',1),
 (211002,2110,'Une constante de temps $\tau = 4~\mathrm{ms}$ avec $R = 2~\mathrm{k}\Omega$ donne :','$C = \dfrac{\tau}{R} = \dfrac{4\times10^{-3}}{2\times10^{3}} = 2~\mu\mathrm{F}$.',2),
 (211003,2110,'Un condensateur $C = 10~\mu\mathrm{F}$ sous $u_C = 10~\mathrm{V}$ porte la charge :','$q = C\,u_C = 10\times10^{-6}\times10 = 10^{-4}~\mathrm{C}$.',3),
 (211004,2110,'Énergie d''un condensateur $C = 2~\mu\mathrm{F}$ chargé sous $u_C = 100~\mathrm{V}$ :','$E_C = \dfrac{1}{2}C\,u_C^{2} = \dfrac{1}{2}\times2\times10^{-6}\times100^{2} = 0{,}01~\mathrm{J}$.',4),
 (211005,2110,'Charge sous $E = 12~\mathrm{V}$ : à $t = \tau$, la tension $u_C$ vaut environ :','$u_C = 0{,}63\times12 \approx 7{,}6~\mathrm{V}$.',5),
 (211006,2110,'Le régime permanent est pratiquement atteint au bout de :','Environ $5\tau$.',6),
 (211007,2110,'Décharge : à $t = \tau$, la tension $u_C$ vaut environ :','$u_C = 0{,}37\,E$.',7),
 (211008,2110,'Pour $\tau = 2~\mathrm{ms}$, le condensateur est quasiment chargé au bout de :','$5\tau = 10~\mathrm{ms}$.',8);

INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
 (2110011,211001,'$1~\mathrm{ms}$',TRUE,1),(2110012,211001,'$1~\mathrm{s}$',FALSE,2),(2110013,211001,'$10^{3}~\mathrm{s}$',FALSE,3),(2110014,211001,'$1~\mu\mathrm{s}$',FALSE,4),
 (2110021,211002,'$2~\mu\mathrm{F}$',TRUE,1),(2110022,211002,'$8~\mu\mathrm{F}$',FALSE,2),(2110023,211002,'$0{,}5~\mu\mathrm{F}$',FALSE,3),(2110024,211002,'$2~\mathrm{mF}$',FALSE,4),
 (2110031,211003,'$10^{-4}~\mathrm{C}$',TRUE,1),(2110032,211003,'$10^{-6}~\mathrm{C}$',FALSE,2),(2110033,211003,'$1~\mathrm{C}$',FALSE,3),(2110034,211003,'$100~\mathrm{C}$',FALSE,4),
 (2110041,211004,'$0{,}01~\mathrm{J}$',TRUE,1),(2110042,211004,'$0{,}02~\mathrm{J}$',FALSE,2),(2110043,211004,'$1~\mathrm{J}$',FALSE,3),(2110044,211004,'$10^{-4}~\mathrm{J}$',FALSE,4),
 (2110051,211005,'$7{,}6~\mathrm{V}$',TRUE,1),(2110052,211005,'$4{,}4~\mathrm{V}$',FALSE,2),(2110053,211005,'$12~\mathrm{V}$',FALSE,3),(2110054,211005,'$6~\mathrm{V}$',FALSE,4),
 (2110061,211006,'$5\tau$',TRUE,1),(2110062,211006,'$\tau$',FALSE,2),(2110063,211006,'$\dfrac{\tau}{2}$',FALSE,3),(2110064,211006,'$100\tau$',FALSE,4),
 (2110071,211007,'$0{,}37\,E$',TRUE,1),(2110072,211007,'$0{,}63\,E$',FALSE,2),(2110073,211007,'$0$',FALSE,3),(2110074,211007,'$E$',FALSE,4),
 (2110081,211008,'$10~\mathrm{ms}$',TRUE,1),(2110082,211008,'$2~\mathrm{ms}$',FALSE,2),(2110083,211008,'$1~\mathrm{s}$',FALSE,3),(2110084,211008,'$0{,}4~\mathrm{ms}$',FALSE,4);
