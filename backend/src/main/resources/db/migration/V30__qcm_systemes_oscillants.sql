-- QCM du chapitre « Les systèmes mécaniques oscillants » (notions + applications).
SET SESSION sql_mode = CONCAT(@@sql_mode, ',NO_BACKSLASH_ESCAPES');
SET @l := (SELECT id FROM lecon WHERE slug = 'systemes-oscillants'
           AND matiere_id = (SELECT id FROM matiere WHERE slug = 'physique-chimie'));

-- ===== notions (2127) =====
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
 (2127, NULL, @l, 'QCM — Systèmes oscillants : notions', 'Pendules, période propre, énergie.', 1);

INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES
 (212701,2127,'Un oscillateur mécanique oscille autour de :','Sa position d''équilibre stable.',1),
 (212702,2127,'L''équation différentielle du pendule élastique est :','$m\,\dfrac{\mathrm{d}^{2}x}{\mathrm{d}t^{2}} + k\,x = 0$.',2),
 (212703,2127,'La période propre du pendule élastique vaut :','$T_0 = 2\pi\sqrt{\dfrac{m}{k}}$.',3),
 (212704,2127,'La période d''un pendule élastique dépend :','De la masse et de la raideur (pas de l''amplitude).',4),
 (212705,2127,'La période propre du pendule simple vaut :','$T_0 = 2\pi\sqrt{\dfrac{\ell}{g}}$.',5),
 (212706,2127,'La période propre du pendule de torsion vaut :','$T_0 = 2\pi\sqrt{\dfrac{J}{C}}$.',6),
 (212707,2127,'En l''absence de frottements, l''énergie mécanique :','Se conserve.',7),
 (212708,2127,'En présence de frottements, les oscillations sont :','Amorties.',8);

INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
 (2127011,212701,'sa position d''équilibre stable',TRUE,1),(2127012,212701,'un point quelconque',FALSE,2),(2127013,212701,'sa vitesse maximale',FALSE,3),(2127014,212701,'le sol',FALSE,4),
 (2127021,212702,'$m\,x'''' + k\,x = 0$',TRUE,1),(2127022,212702,'$m\,x'' + k\,x = 0$',FALSE,2),(2127023,212702,'$k\,x'''' + m\,x = 0$',FALSE,3),(2127024,212702,'$m\,x'''' = k$',FALSE,4),
 (2127031,212703,'$2\pi\sqrt{\dfrac{m}{k}}$',TRUE,1),(2127032,212703,'$2\pi\sqrt{\dfrac{k}{m}}$',FALSE,2),(2127033,212703,'$2\pi\,mk$',FALSE,3),(2127034,212703,'$\dfrac{1}{2\pi}\sqrt{\dfrac{m}{k}}$',FALSE,4),
 (2127041,212704,'de la masse et de la raideur',TRUE,1),(2127042,212704,'de l''amplitude',FALSE,2),(2127043,212704,'de la vitesse initiale',FALSE,3),(2127044,212704,'de la pesanteur',FALSE,4),
 (2127051,212705,'$2\pi\sqrt{\dfrac{\ell}{g}}$',TRUE,1),(2127052,212705,'$2\pi\sqrt{\dfrac{g}{\ell}}$',FALSE,2),(2127053,212705,'$2\pi\sqrt{\dfrac{m}{k}}$',FALSE,3),(2127054,212705,'$2\pi\,\ell\,g$',FALSE,4),
 (2127061,212706,'$2\pi\sqrt{\dfrac{J}{C}}$',TRUE,1),(2127062,212706,'$2\pi\sqrt{\dfrac{C}{J}}$',FALSE,2),(2127063,212706,'$2\pi\sqrt{\dfrac{\ell}{g}}$',FALSE,3),(2127064,212706,'$2\pi\,JC$',FALSE,4),
 (2127071,212707,'se conserve',TRUE,1),(2127072,212707,'augmente',FALSE,2),(2127073,212707,'diminue',FALSE,3),(2127074,212707,'s''annule',FALSE,4),
 (2127081,212708,'amorties',TRUE,1),(2127082,212708,'entretenues',FALSE,2),(2127083,212708,'sinusoïdales pures',FALSE,3),(2127084,212708,'plus amples',FALSE,4);

-- ===== applications (2128) =====
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
 (2128, NULL, @l, 'QCM — Systèmes oscillants : applications', 'Périodes propres, énergie.', 2);

INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES
 (212801,2128,'Pendule élastique $m = 0{,}1~\mathrm{kg}$, $k = 10~\mathrm{N/m}$ : la période propre vaut environ :','$T_0 = 2\pi\sqrt{\dfrac{0{,}1}{10}} = 2\pi\times0{,}1 \approx 0{,}63~\mathrm{s}$.',1),
 (212802,2128,'Pendule simple $\ell = 1~\mathrm{m}$, $g = 10~\mathrm{m\cdot s^{-2}}$ : la période propre vaut environ :','$T_0 = 2\pi\sqrt{\dfrac{1}{10}} \approx 2~\mathrm{s}$.',2),
 (212803,2128,'Si l''on quadruple la masse d''un pendule élastique, la période propre est :','$T_0 \propto \sqrt{m}$ : multipliée par $2$.',3),
 (212804,2128,'La période propre du pendule simple dépend-elle de la masse ?','Non.',4),
 (212805,2128,'La période d''un pendule élastique dépend-elle de l''amplitude ?','Non (isochronisme).',5),
 (212806,2128,'L''énergie cinétique d''un oscillateur est maximale :','À la position d''équilibre.',6),
 (212807,2128,'L''énergie potentielle élastique est maximale :','Aux élongations extrêmes (amplitude maximale).',7),
 (212808,2128,'Si la longueur d''un pendule simple est multipliée par 4, sa période est :','$T_0 \propto \sqrt{\ell}$ : multipliée par $2$.',8);

INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
 (2128011,212801,'$0{,}63~\mathrm{s}$',TRUE,1),(2128012,212801,'$6{,}3~\mathrm{s}$',FALSE,2),(2128013,212801,'$0{,}1~\mathrm{s}$',FALSE,3),(2128014,212801,'$1~\mathrm{s}$',FALSE,4),
 (2128021,212802,'$2~\mathrm{s}$',TRUE,1),(2128022,212802,'$0{,}63~\mathrm{s}$',FALSE,2),(2128023,212802,'$6{,}3~\mathrm{s}$',FALSE,3),(2128024,212802,'$1~\mathrm{s}$',FALSE,4),
 (2128031,212803,'multipliée par 2',TRUE,1),(2128032,212803,'multipliée par 4',FALSE,2),(2128033,212803,'divisée par 2',FALSE,3),(2128034,212803,'inchangée',FALSE,4),
 (2128041,212804,'non',TRUE,1),(2128042,212804,'oui',FALSE,2),(2128043,212804,'seulement si m est grande',FALSE,3),(2128044,212804,'seulement pour les grandes oscillations',FALSE,4),
 (2128051,212805,'non',TRUE,1),(2128052,212805,'oui',FALSE,2),(2128053,212805,'seulement aux grandes amplitudes',FALSE,3),(2128054,212805,'seulement aux petites amplitudes',FALSE,4),
 (2128061,212806,'à la position d''équilibre',TRUE,1),(2128062,212806,'aux élongations extrêmes',FALSE,2),(2128063,212806,'partout égale',FALSE,3),(2128064,212806,'au repos',FALSE,4),
 (2128071,212807,'aux élongations extrêmes',TRUE,1),(2128072,212807,'à la position d''équilibre',FALSE,2),(2128073,212807,'partout égale',FALSE,3),(2128074,212807,'jamais',FALSE,4),
 (2128081,212808,'multipliée par 2',TRUE,1),(2128082,212808,'multipliée par 4',FALSE,2),(2128083,212808,'divisée par 2',FALSE,3),(2128084,212808,'inchangée',FALSE,4);
