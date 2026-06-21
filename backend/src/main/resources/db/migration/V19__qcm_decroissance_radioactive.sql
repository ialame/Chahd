-- QCM du chapitre « La décroissance radioactive » (notions + applications).
SET SESSION sql_mode = CONCAT(@@sql_mode, ',NO_BACKSLASH_ESCAPES');
SET @l := (SELECT id FROM lecon WHERE slug = 'decroissance-radioactive'
           AND matiere_id = (SELECT id FROM matiere WHERE slug = 'physique-chimie'));

-- ===== notions (2105) =====
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
 (2105, NULL, @l, 'QCM — Décroissance radioactive : notions', 'Noyau, désintégrations, loi de décroissance.', 1);

INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES
 (210501,2105,'Le noyau $^{A}_{Z}X$ contient :','$Z$ protons et $N = A - Z$ neutrons.',1),
 (210502,2105,'Le nombre de masse $A$ représente :','Le nombre de nucléons (protons + neutrons).',2),
 (210503,2105,'Deux noyaux isotopes ont :','Même $Z$, mais $A$ différent.',3),
 (210504,2105,'La radioactivité est une transformation :','Spontanée, aléatoire et inéluctable d''un noyau instable.',4),
 (210505,2105,'Au cours d''une désintégration, on conserve :','Le nombre de masse $A$ et le nombre de charge $Z$ (lois de Soddy).',5),
 (210506,2105,'La radioactivité $\alpha$ correspond à l''émission :','D''un noyau d''hélium $^{4}_{2}He$.',6),
 (210507,2105,'La loi de décroissance radioactive s''écrit :','$N(t) = N_0\,e^{-\lambda t}$.',7),
 (210508,2105,'La demi-vie $t_{1/2}$ est liée à $\lambda$ par :','$t_{1/2} = \dfrac{\ln 2}{\lambda}$.',8);

INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
 (2105011,210501,'$Z$ protons et $A-Z$ neutrons',TRUE,1),(2105012,210501,'$A$ protons et $Z$ neutrons',FALSE,2),(2105013,210501,'$Z$ neutrons et $A$ protons',FALSE,3),(2105014,210501,'$A+Z$ nucléons',FALSE,4),
 (2105021,210502,'le nombre de nucléons',TRUE,1),(2105022,210502,'le nombre de protons',FALSE,2),(2105023,210502,'le nombre de neutrons',FALSE,3),(2105024,210502,'le nombre d''électrons',FALSE,4),
 (2105031,210503,'même $Z$, $A$ différent',TRUE,1),(2105032,210503,'même $A$, $Z$ différent',FALSE,2),(2105033,210503,'même $A$ et même $Z$',FALSE,3),(2105034,210503,'$A$ et $Z$ différents',FALSE,4),
 (2105041,210504,'spontanée et aléatoire',TRUE,1),(2105042,210504,'provoquée et prévisible',FALSE,2),(2105043,210504,'lente et réversible',FALSE,3),(2105044,210504,'chimique',FALSE,4),
 (2105051,210505,'$A$ et $Z$',TRUE,1),(2105052,210505,'la masse uniquement',FALSE,2),(2105053,210505,'le nombre de neutrons',FALSE,3),(2105054,210505,'rien',FALSE,4),
 (2105061,210506,'d''un noyau d''hélium $^{4}_{2}He$',TRUE,1),(2105062,210506,'d''un électron',FALSE,2),(2105063,210506,'d''un proton',FALSE,3),(2105064,210506,'d''un photon',FALSE,4),
 (2105071,210507,'$N(t) = N_0\,e^{-\lambda t}$',TRUE,1),(2105072,210507,'$N(t) = N_0\,e^{\lambda t}$',FALSE,2),(2105073,210507,'$N(t) = N_0\,\lambda t$',FALSE,3),(2105074,210507,'$N(t) = N_0 - \lambda t$',FALSE,4),
 (2105081,210508,'$t_{1/2} = \dfrac{\ln 2}{\lambda}$',TRUE,1),(2105082,210508,'$t_{1/2} = \lambda \ln 2$',FALSE,2),(2105083,210508,'$t_{1/2} = \dfrac{\lambda}{\ln 2}$',FALSE,3),(2105084,210508,'$t_{1/2} = \dfrac{1}{\lambda}$',FALSE,4);

-- ===== applications (2106) =====
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
 (2106, NULL, @l, 'QCM — Décroissance radioactive : applications', 'Équations, demi-vies, activité.', 2);

INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES
 (210601,2106,'Le noyau d''uranium $^{238}_{92}U$ contient combien de neutrons ?','$N = A - Z = 238 - 92 = 146$.',1),
 (210602,2106,'$^{238}_{92}U \rightarrow\, ^{234}_{90}Th + X$. La particule $X$ est :','Conservation : $A=4$, $Z=2$, soit $^{4}_{2}He$ (radioactivité $\alpha$).',2),
 (210603,2106,'$^{14}_{6}C \rightarrow\, ^{14}_{7}N + X$ ($\beta^{-}$). La particule $X$ est :','$A=0$, $Z=-1$ : un électron $^{0}_{-1}e$.',3),
 (210604,2106,'Au bout de 3 demi-vies, la proportion de noyaux restants est :','$\dfrac{N_0}{2^{3}} = \dfrac{N_0}{8}$.',4),
 (210605,2106,'Le carbone 14 a une demi-vie de $5730$ ans. Après $11460$ ans, il reste :','$11460 = 2\times5730$ : 2 demi-vies, soit $\dfrac{1}{4}$ des noyaux.',5),
 (210606,2106,'Un noyau a une demi-vie $t_{1/2} = 8$ jours. Sa constante radioactive vaut :','$\lambda = \dfrac{\ln 2}{t_{1/2}} = \dfrac{0{,}693}{8} \approx 0{,}087~\mathrm{jour^{-1}}$.',6),
 (210607,2106,'L''unité de l''activité d''un échantillon radioactif est :','Le becquerel : $1~\mathrm{Bq} = 1$ désintégration par seconde.',7),
 (210608,2106,'Pour $\lambda = 10^{-2}~\mathrm{s^{-1}}$ et $N = 10^{20}$ noyaux, l''activité vaut :','$a = \lambda N = 10^{-2}\times10^{20} = 10^{18}~\mathrm{Bq}$.',8);

INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
 (2106011,210601,'$146$',TRUE,1),(2106012,210601,'$92$',FALSE,2),(2106013,210601,'$238$',FALSE,3),(2106014,210601,'$330$',FALSE,4),
 (2106021,210602,'$^{4}_{2}He$',TRUE,1),(2106022,210602,'$^{0}_{-1}e$',FALSE,2),(2106023,210602,'$^{1}_{0}n$',FALSE,3),(2106024,210602,'$^{0}_{+1}e$',FALSE,4),
 (2106031,210603,'$^{0}_{-1}e$',TRUE,1),(2106032,210603,'$^{4}_{2}He$',FALSE,2),(2106033,210603,'$^{0}_{+1}e$',FALSE,3),(2106034,210603,'$^{1}_{1}p$',FALSE,4),
 (2106041,210604,'$\dfrac{N_0}{8}$',TRUE,1),(2106042,210604,'$\dfrac{N_0}{6}$',FALSE,2),(2106043,210604,'$\dfrac{N_0}{3}$',FALSE,3),(2106044,210604,'$\dfrac{N_0}{16}$',FALSE,4),
 (2106051,210605,'$\dfrac{1}{4}$',TRUE,1),(2106052,210605,'$\dfrac{1}{2}$',FALSE,2),(2106053,210605,'$\dfrac{1}{8}$',FALSE,3),(2106054,210605,'$\dfrac{1}{3}$',FALSE,4),
 (2106061,210606,'$0{,}087~\mathrm{jour^{-1}}$',TRUE,1),(2106062,210606,'$5{,}5~\mathrm{jour^{-1}}$',FALSE,2),(2106063,210606,'$8~\mathrm{jour^{-1}}$',FALSE,3),(2106064,210606,'$11{,}5~\mathrm{jour^{-1}}$',FALSE,4),
 (2106071,210607,'le becquerel (Bq)',TRUE,1),(2106072,210607,'le hertz (Hz)',FALSE,2),(2106073,210607,'le gray (Gy)',FALSE,3),(2106074,210607,'le joule (J)',FALSE,4),
 (2106081,210608,'$10^{18}~\mathrm{Bq}$',TRUE,1),(2106082,210608,'$10^{22}~\mathrm{Bq}$',FALSE,2),(2106083,210608,'$10^{-18}~\mathrm{Bq}$',FALSE,3),(2106084,210608,'$10^{2}~\mathrm{Bq}$',FALSE,4);
