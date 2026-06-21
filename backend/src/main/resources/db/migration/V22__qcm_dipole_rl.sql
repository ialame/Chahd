-- QCM du chapitre « Le dipôle RL » (notions + applications).
SET SESSION sql_mode = CONCAT(@@sql_mode, ',NO_BACKSLASH_ESCAPES');
SET @l := (SELECT id FROM lecon WHERE slug = 'dipole-rl'
           AND matiere_id = (SELECT id FROM matiere WHERE slug = 'physique-chimie'));

-- ===== notions (2111) =====
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
 (2111, NULL, @l, 'QCM — Dipôle RL : notions', 'Bobine, établissement/rupture, constante de temps.', 1);

INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES
 (211101,2111,'L''unité de l''inductance $L$ d''une bobine est :','Le henry (H).',1),
 (211102,2111,'La tension aux bornes d''une bobine idéale vaut :','$u_L = L\,\dfrac{\mathrm{d}i}{\mathrm{d}t}$.',2),
 (211103,2111,'Une bobine s''oppose :','Aux variations de l''intensité du courant.',3),
 (211104,2111,'L''équation différentielle de l''établissement du courant est :','$L\,\dfrac{\mathrm{d}i}{\mathrm{d}t} + R\,i = E$.',4),
 (211105,2111,'Pendant l''établissement, le courant est :','$i(t) = \dfrac{E}{R}\left(1 - e^{-t/\tau}\right)$.',5),
 (211106,2111,'La constante de temps d''un dipôle RL vaut :','$\tau = \dfrac{L}{R}$.',6),
 (211107,2111,'En régime permanent, une bobine se comporte comme :','Un simple fil ($u_L = 0$).',7),
 (211108,2111,'L''énergie emmagasinée par une bobine est :','$E_L = \dfrac{1}{2}L\,i^{2}$.',8);

INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
 (2111011,211101,'le henry (H)',TRUE,1),(2111012,211101,'le farad (F)',FALSE,2),(2111013,211101,'l''ohm ($\Omega$)',FALSE,3),(2111014,211101,'le tesla (T)',FALSE,4),
 (2111021,211102,'$u_L = L\,\dfrac{\mathrm{d}i}{\mathrm{d}t}$',TRUE,1),(2111022,211102,'$u_L = L\,i$',FALSE,2),(2111023,211102,'$u_L = \dfrac{i}{L}$',FALSE,3),(2111024,211102,'$u_L = R\,i$',FALSE,4),
 (2111031,211103,'aux variations du courant',TRUE,1),(2111032,211103,'au passage de tout courant',FALSE,2),(2111033,211103,'à la tension constante',FALSE,3),(2111034,211103,'à rien',FALSE,4),
 (2111041,211104,'$L\,\dfrac{\mathrm{d}i}{\mathrm{d}t} + R\,i = E$',TRUE,1),(2111042,211104,'$R\,\dfrac{\mathrm{d}i}{\mathrm{d}t} + L\,i = E$',FALSE,2),(2111043,211104,'$L\,i + R = E$',FALSE,3),(2111044,211104,'$\dfrac{\mathrm{d}i}{\mathrm{d}t} = E$',FALSE,4),
 (2111051,211105,'$\dfrac{E}{R}\left(1 - e^{-t/\tau}\right)$',TRUE,1),(2111052,211105,'$\dfrac{E}{R}\,e^{-t/\tau}$',FALSE,2),(2111053,211105,'$E\left(1 - e^{-t/\tau}\right)$',FALSE,3),(2111054,211105,'$\dfrac{E}{R}\,t$',FALSE,4),
 (2111061,211106,'$\dfrac{L}{R}$',TRUE,1),(2111062,211106,'$RL$',FALSE,2),(2111063,211106,'$\dfrac{R}{L}$',FALSE,3),(2111064,211106,'$L + R$',FALSE,4),
 (2111071,211107,'un simple fil',TRUE,1),(2111072,211107,'un interrupteur ouvert',FALSE,2),(2111073,211107,'un condensateur',FALSE,3),(2111074,211107,'une source de tension',FALSE,4),
 (2111081,211108,'$\dfrac{1}{2}L\,i^{2}$',TRUE,1),(2111082,211108,'$L\,i^{2}$',FALSE,2),(2111083,211108,'$\dfrac{1}{2}L\,i$',FALSE,3),(2111084,211108,'$\dfrac{1}{2}\dfrac{i^{2}}{L}$',FALSE,4);

-- ===== applications (2112) =====
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
 (2112, NULL, @l, 'QCM — Dipôle RL : applications', 'Calculs : constante de temps, courant, énergie.', 2);

INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES
 (211201,2112,'Pour $L = 0{,}1~\mathrm{H}$ et $R = 100~\Omega$, la constante de temps vaut :','$\tau = \dfrac{L}{R} = \dfrac{0{,}1}{100} = 10^{-3}~\mathrm{s} = 1~\mathrm{ms}$.',1),
 (211202,2112,'En régime permanent, pour $E = 10~\mathrm{V}$ et $R = 50~\Omega$, l''intensité $I_0$ vaut :','$I_0 = \dfrac{E}{R} = \dfrac{10}{50} = 0{,}2~\mathrm{A}$.',2),
 (211203,2112,'Une constante de temps $\tau = 2~\mathrm{ms}$ avec $R = 1~\mathrm{k}\Omega$ donne :','$L = \tau R = 2\times10^{-3}\times10^{3} = 2~\mathrm{H}$.',3),
 (211204,2112,'Énergie d''une bobine $L = 0{,}5~\mathrm{H}$ parcourue par $i = 2~\mathrm{A}$ :','$E_L = \dfrac{1}{2}L\,i^{2} = \dfrac{1}{2}\times0{,}5\times2^{2} = 1~\mathrm{J}$.',4),
 (211205,2112,'Établissement avec $I_0 = 0{,}2~\mathrm{A}$ : à $t = \tau$, le courant vaut environ :','$i = 0{,}63\times0{,}2 \approx 0{,}126~\mathrm{A}$.',5),
 (211206,2112,'Pour $L = 20~\mathrm{mH}$ et $R = 10~\Omega$, la constante de temps vaut :','$\tau = \dfrac{L}{R} = \dfrac{20\times10^{-3}}{10} = 2\times10^{-3}~\mathrm{s} = 2~\mathrm{ms}$.',6),
 (211207,2112,'Le régime permanent est pratiquement atteint au bout de :','Environ $5\tau$.',7),
 (211208,2112,'À l''ouverture du circuit, le courant établi $I_0$ :','Décroît selon $i(t) = I_0\,e^{-t/\tau}$.',8);

INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
 (2112011,211201,'$1~\mathrm{ms}$',TRUE,1),(2112012,211201,'$1~\mathrm{s}$',FALSE,2),(2112013,211201,'$10~\mathrm{ms}$',FALSE,3),(2112014,211201,'$1~\mathrm{ks}$',FALSE,4),
 (2112021,211202,'$0{,}2~\mathrm{A}$',TRUE,1),(2112022,211202,'$5~\mathrm{A}$',FALSE,2),(2112023,211202,'$500~\mathrm{A}$',FALSE,3),(2112024,211202,'$0{,}5~\mathrm{A}$',FALSE,4),
 (2112031,211203,'$2~\mathrm{H}$',TRUE,1),(2112032,211203,'$0{,}5~\mathrm{H}$',FALSE,2),(2112033,211203,'$2~\mathrm{mH}$',FALSE,3),(2112034,211203,'$500~\mathrm{H}$',FALSE,4),
 (2112041,211204,'$1~\mathrm{J}$',TRUE,1),(2112042,211204,'$2~\mathrm{J}$',FALSE,2),(2112043,211204,'$0{,}5~\mathrm{J}$',FALSE,3),(2112044,211204,'$4~\mathrm{J}$',FALSE,4),
 (2112051,211205,'$0{,}126~\mathrm{A}$',TRUE,1),(2112052,211205,'$0{,}074~\mathrm{A}$',FALSE,2),(2112053,211205,'$0{,}2~\mathrm{A}$',FALSE,3),(2112054,211205,'$0{,}1~\mathrm{A}$',FALSE,4),
 (2112061,211206,'$2~\mathrm{ms}$',TRUE,1),(2112062,211206,'$0{,}5~\mathrm{ms}$',FALSE,2),(2112063,211206,'$200~\mathrm{ms}$',FALSE,3),(2112064,211206,'$2~\mathrm{s}$',FALSE,4),
 (2112071,211207,'$5\tau$',TRUE,1),(2112072,211207,'$\tau$',FALSE,2),(2112073,211207,'$\dfrac{\tau}{2}$',FALSE,3),(2112074,211207,'$50\tau$',FALSE,4),
 (2112081,211208,'décroît selon $i = I_0\,e^{-t/\tau}$',TRUE,1),(2112082,211208,'reste constant',FALSE,2),(2112083,211208,'augmente',FALSE,3),(2112084,211208,'s''annule instantanément',FALSE,4);
