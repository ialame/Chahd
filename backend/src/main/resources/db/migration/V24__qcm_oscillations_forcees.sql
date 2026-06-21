-- QCM du chapitre « Oscillations forcées — résonance » (notions + applications).
SET SESSION sql_mode = CONCAT(@@sql_mode, ',NO_BACKSLASH_ESCAPES');
SET @l := (SELECT id FROM lecon WHERE slug = 'oscillations-forcees-rlc'
           AND matiere_id = (SELECT id FROM matiere WHERE slug = 'physique-chimie'));

-- ===== notions (2115) =====
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
 (2115, NULL, @l, 'QCM — Résonance RLC : notions', 'Régime forcé, impédance, résonance, facteur de qualité.', 1);

INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES
 (211501,2115,'En régime forcé, le circuit RLC oscille à la fréquence :','Celle imposée par le générateur (GBF).',1),
 (211502,2115,'L''impédance d''un circuit est définie par :','$Z = \dfrac{U_m}{I_m}$.',2),
 (211503,2115,'La résonance d''intensité se produit quand la fréquence imposée est :','Égale à la fréquence propre $f_0$.',3),
 (211504,2115,'À la résonance, l''impédance du circuit vaut :','$Z = R$ (minimale).',4),
 (211505,2115,'À la résonance, l''intensité maximale vaut :','$I_m = \dfrac{U_m}{R}$.',5),
 (211506,2115,'À la résonance, le courant et la tension sont :','En phase ($\varphi = 0$).',6),
 (211507,2115,'La fréquence propre d''un circuit RLC vaut :','$f_0 = \dfrac{1}{2\pi\sqrt{LC}}$.',7),
 (211508,2115,'Le facteur de qualité vaut :','$Q = \dfrac{1}{R}\sqrt{\dfrac{L}{C}}$.',8);

INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
 (2115011,211501,'imposée par le générateur',TRUE,1),(2115012,211501,'propre du circuit toujours',FALSE,2),(2115013,211501,'nulle',FALSE,3),(2115014,211501,'double de la fréquence imposée',FALSE,4),
 (2115021,211502,'$Z = \dfrac{U_m}{I_m}$',TRUE,1),(2115022,211502,'$Z = U_m\,I_m$',FALSE,2),(2115023,211502,'$Z = \dfrac{I_m}{U_m}$',FALSE,3),(2115024,211502,'$Z = R\,I_m$',FALSE,4),
 (2115031,211503,'égale à $f_0$',TRUE,1),(2115032,211503,'double de $f_0$',FALSE,2),(2115033,211503,'nulle',FALSE,3),(2115034,211503,'infinie',FALSE,4),
 (2115041,211504,'$Z = R$',TRUE,1),(2115042,211504,'$Z = 0$',FALSE,2),(2115043,211504,'$Z$ maximale',FALSE,3),(2115044,211504,'$Z = L\omega$',FALSE,4),
 (2115051,211505,'$\dfrac{U_m}{R}$',TRUE,1),(2115052,211505,'$U_m\,R$',FALSE,2),(2115053,211505,'$\dfrac{R}{U_m}$',FALSE,3),(2115054,211505,'$0$',FALSE,4),
 (2115061,211506,'en phase',TRUE,1),(2115062,211506,'en opposition de phase',FALSE,2),(2115063,211506,'en quadrature',FALSE,3),(2115064,211506,'déphasés de $\dfrac{\pi}{4}$',FALSE,4),
 (2115071,211507,'$\dfrac{1}{2\pi\sqrt{LC}}$',TRUE,1),(2115072,211507,'$2\pi\sqrt{LC}$',FALSE,2),(2115073,211507,'$\dfrac{1}{\sqrt{LC}}$',FALSE,3),(2115074,211507,'$\dfrac{1}{2\pi LC}$',FALSE,4),
 (2115081,211508,'$\dfrac{1}{R}\sqrt{\dfrac{L}{C}}$',TRUE,1),(2115082,211508,'$R\sqrt{\dfrac{L}{C}}$',FALSE,2),(2115083,211508,'$\dfrac{1}{R}\sqrt{\dfrac{C}{L}}$',FALSE,3),(2115084,211508,'$\dfrac{R}{\sqrt{LC}}$',FALSE,4);

-- ===== applications (2116) =====
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
 (2116, NULL, @l, 'QCM — Résonance RLC : applications', 'Fréquence propre, intensité, facteur de qualité.', 2);

INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES
 (211601,2116,'Pour $L = 0{,}1~\mathrm{H}$ et $C = 10~\mu\mathrm{F}$, la fréquence propre vaut environ :','$f_0 = \dfrac{1}{2\pi\sqrt{LC}} = \dfrac{1}{2\pi\times10^{-3}} \approx 159~\mathrm{Hz}$.',1),
 (211602,2116,'À la résonance, avec $U_m = 5~\mathrm{V}$ et $R = 50~\Omega$, l''intensité maximale vaut :','$I_m = \dfrac{U_m}{R} = \dfrac{5}{50} = 0{,}1~\mathrm{A}$.',2),
 (211603,2116,'Pour $R = 10~\Omega$, $L = 0{,}1~\mathrm{H}$, $C = 10~\mu\mathrm{F}$, le facteur de qualité vaut :','$Q = \dfrac{1}{R}\sqrt{\dfrac{L}{C}} = \dfrac{1}{10}\sqrt{\dfrac{0{,}1}{10^{-5}}} = \dfrac{100}{10} = 10$.',3),
 (211604,2116,'Si l''on augmente la résistance $R$, la courbe de résonance devient :','Plus plate (résonance moins aiguë).',4),
 (211605,2116,'À la résonance, le courant $i$ et la tension $u$ sont :','En phase.',5),
 (211606,2116,'Pour $L = 0{,}1~\mathrm{H}$ et $C = 10~\mu\mathrm{F}$, la pulsation propre $\omega_0$ vaut :','$\omega_0 = \dfrac{1}{\sqrt{LC}} = \dfrac{1}{10^{-3}} = 1000~\mathrm{rad/s}$.',6),
 (211607,2116,'La fréquence propre $f_0$ dépend :','De $L$ et $C$ (pas de $R$).',7),
 (211608,2116,'À la résonance, l''impédance du circuit est :','Minimale (égale à $R$).',8);

INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
 (2116011,211601,'$159~\mathrm{Hz}$',TRUE,1),(2116012,211601,'$1000~\mathrm{Hz}$',FALSE,2),(2116013,211601,'$16~\mathrm{Hz}$',FALSE,3),(2116014,211601,'$6{,}3~\mathrm{Hz}$',FALSE,4),
 (2116021,211602,'$0{,}1~\mathrm{A}$',TRUE,1),(2116022,211602,'$10~\mathrm{A}$',FALSE,2),(2116023,211602,'$250~\mathrm{A}$',FALSE,3),(2116024,211602,'$0{,}5~\mathrm{A}$',FALSE,4),
 (2116031,211603,'$10$',TRUE,1),(2116032,211603,'$1$',FALSE,2),(2116033,211603,'$100$',FALSE,3),(2116034,211603,'$0{,}1$',FALSE,4),
 (2116041,211604,'plus plate',TRUE,1),(2116042,211604,'plus aiguë',FALSE,2),(2116043,211604,'inchangée',FALSE,3),(2116044,211604,'décalée en fréquence',FALSE,4),
 (2116051,211605,'en phase',TRUE,1),(2116052,211605,'en opposition de phase',FALSE,2),(2116053,211605,'en quadrature',FALSE,3),(2116054,211605,'aléatoirement déphasés',FALSE,4),
 (2116061,211606,'$1000~\mathrm{rad/s}$',TRUE,1),(2116062,211606,'$159~\mathrm{rad/s}$',FALSE,2),(2116063,211606,'$10^{-3}~\mathrm{rad/s}$',FALSE,3),(2116064,211606,'$6283~\mathrm{rad/s}$',FALSE,4),
 (2116071,211607,'de $L$ et $C$',TRUE,1),(2116072,211607,'de $R$ seulement',FALSE,2),(2116073,211607,'de $U_m$',FALSE,3),(2116074,211607,'de $L$, $C$ et $R$',FALSE,4),
 (2116081,211608,'minimale (égale à $R$)',TRUE,1),(2116082,211608,'maximale',FALSE,2),(2116083,211608,'nulle',FALSE,3),(2116084,211608,'infinie',FALSE,4);
