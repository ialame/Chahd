-- QCM du chapitre « Noyaux, masse et énergie » (notions + applications).
SET SESSION sql_mode = CONCAT(@@sql_mode, ',NO_BACKSLASH_ESCAPES');
SET @l := (SELECT id FROM lecon WHERE slug = 'noyaux-masse-energie'
           AND matiere_id = (SELECT id FROM matiere WHERE slug = 'physique-chimie'));

-- ===== notions (2107) =====
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
 (2107, NULL, @l, 'QCM — Noyaux, masse et énergie : notions', 'Équivalence masse-énergie, liaison, fission/fusion.', 1);

INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES
 (210701,2107,'La relation d''équivalence masse-énergie s''écrit :','$E = m\,c^{2}$.',1),
 (210702,2107,'Le défaut de masse $\Delta m$ d''un noyau est :','Positif : le noyau est plus léger que ses nucléons séparés.',2),
 (210703,2107,'L''énergie de liaison d''un noyau vaut :','$E_\ell = \Delta m\,c^{2}$.',3),
 (210704,2107,'Un noyau est d''autant plus stable que :','Son énergie de liaison par nucléon $E_\ell/A$ est grande.',4),
 (210705,2107,'La courbe d''Aston représente :','$E_\ell/A$ en fonction de $A$.',5),
 (210706,2107,'La fission nucléaire concerne :','Les noyaux lourds (qui se divisent).',6),
 (210707,2107,'La fusion nucléaire concerne :','Les noyaux légers (qui s''unissent).',7),
 (210708,2107,'L''énergie libérée par une réaction nucléaire vaut :','$E_{lib} = |\Delta m|\,c^{2}$.',8);

INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
 (2107011,210701,'$E = m\,c^{2}$',TRUE,1),(2107012,210701,'$E = \dfrac{1}{2}m\,c^{2}$',FALSE,2),(2107013,210701,'$E = m\,c$',FALSE,3),(2107014,210701,'$E = \dfrac{m}{c^{2}}$',FALSE,4),
 (2107021,210702,'positif',TRUE,1),(2107022,210702,'négatif',FALSE,2),(2107023,210702,'nul',FALSE,3),(2107024,210702,'variable',FALSE,4),
 (2107031,210703,'$E_\ell = \Delta m\,c^{2}$',TRUE,1),(2107032,210703,'$E_\ell = \Delta m\,c$',FALSE,2),(2107033,210703,'$E_\ell = \dfrac{\Delta m}{c^{2}}$',FALSE,3),(2107034,210703,'$E_\ell = m\,c^{2}$',FALSE,4),
 (2107041,210704,'$E_\ell/A$ est grande',TRUE,1),(2107042,210704,'$E_\ell/A$ est petite',FALSE,2),(2107043,210704,'$A$ est grand',FALSE,3),(2107044,210704,'$Z$ est petit',FALSE,4),
 (2107051,210705,'$E_\ell/A$ en fonction de $A$',TRUE,1),(2107052,210705,'$E_\ell$ en fonction de $Z$',FALSE,2),(2107053,210705,'$m$ en fonction de $t$',FALSE,3),(2107054,210705,'$N$ en fonction de $Z$',FALSE,4),
 (2107061,210706,'les noyaux lourds',TRUE,1),(2107062,210706,'les noyaux légers',FALSE,2),(2107063,210706,'les électrons',FALSE,3),(2107064,210706,'les photons',FALSE,4),
 (2107071,210707,'les noyaux légers',TRUE,1),(2107072,210707,'les noyaux lourds',FALSE,2),(2107073,210707,'les neutrons seuls',FALSE,3),(2107074,210707,'les atomes ionisés',FALSE,4),
 (2107081,210708,'$|\Delta m|\,c^{2}$',TRUE,1),(2107082,210708,'$\Delta m\,c$',FALSE,2),(2107083,210708,'$\dfrac{\Delta m}{c^{2}}$',FALSE,3),(2107084,210708,'$m_{\text{noyau}}\,c^{2}$',FALSE,4);

-- ===== applications (2108) =====
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
 (2108, NULL, @l, 'QCM — Noyaux, masse et énergie : applications', 'Conversions, énergie de liaison, fission/fusion.', 2);

INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES
 (210801,2108,'Un défaut de masse $\Delta m = 1~\mathrm{u}$ correspond à une énergie d''environ :','$1~\mathrm{u} \to 931{,}5~\mathrm{MeV}$.',1),
 (210802,2108,'Pour $\Delta m = 0{,}5~\mathrm{u}$, l''énergie de liaison vaut environ :','$E_\ell = 0{,}5\times931{,}5 \approx 466~\mathrm{MeV}$.',2),
 (210803,2108,'Énergie associée à $m = 1~\mathrm{g}$ de matière ($c = 3\times10^{8}$) :','$E = mc^{2} = 10^{-3}\times(3\times10^{8})^{2} = 9\times10^{13}~\mathrm{J}$.',3),
 (210804,2108,'Un noyau ($A = 16$) a une énergie de liaison $E_\ell = 128~\mathrm{MeV}$. Son $E_\ell/A$ vaut :','$\dfrac{128}{16} = 8~\mathrm{MeV/nucléon}$.',4),
 (210805,2108,'Les noyaux les plus stables ont un nombre de masse $A$ voisin de :','Le maximum de la courbe d''Aston est vers $A \approx 60$ (fer).',5),
 (210806,2108,'La réaction $^{235}_{92}U + ^{1}_{0}n \rightarrow\, ^{94}_{38}Sr + ^{140}_{54}Xe + 2\,^{1}_{0}n$ est :','Un noyau lourd se divise : c''est une fission.',6),
 (210807,2108,'La réaction $^{2}_{1}H + ^{3}_{1}H \rightarrow\, ^{4}_{2}He + ^{1}_{0}n$ est :','Deux noyaux légers s''unissent : c''est une fusion.',7),
 (210808,2108,'Une réaction nucléaire libère de l''énergie lorsque :','La masse des produits est inférieure à celle des réactifs.',8);

INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
 (2108011,210801,'$931{,}5~\mathrm{MeV}$',TRUE,1),(2108012,210801,'$1{,}66~\mathrm{MeV}$',FALSE,2),(2108013,210801,'$9\times10^{16}~\mathrm{MeV}$',FALSE,3),(2108014,210801,'$3\times10^{8}~\mathrm{MeV}$',FALSE,4),
 (2108021,210802,'$466~\mathrm{MeV}$',TRUE,1),(2108022,210802,'$1863~\mathrm{MeV}$',FALSE,2),(2108023,210802,'$0{,}5~\mathrm{MeV}$',FALSE,3),(2108024,210802,'$931{,}5~\mathrm{MeV}$',FALSE,4),
 (2108031,210803,'$9\times10^{13}~\mathrm{J}$',TRUE,1),(2108032,210803,'$3\times10^{5}~\mathrm{J}$',FALSE,2),(2108033,210803,'$9\times10^{16}~\mathrm{J}$',FALSE,3),(2108034,210803,'$10^{-3}~\mathrm{J}$',FALSE,4),
 (2108041,210804,'$8~\mathrm{MeV/nucléon}$',TRUE,1),(2108042,210804,'$2048~\mathrm{MeV/nucléon}$',FALSE,2),(2108043,210804,'$16~\mathrm{MeV/nucléon}$',FALSE,3),(2108044,210804,'$0{,}125~\mathrm{MeV/nucléon}$',FALSE,4),
 (2108051,210805,'$60$',TRUE,1),(2108052,210805,'$2$',FALSE,2),(2108053,210805,'$238$',FALSE,3),(2108054,210805,'$120$',FALSE,4),
 (2108061,210806,'une fission',TRUE,1),(2108062,210806,'une fusion',FALSE,2),(2108063,210806,'une désintégration $\alpha$',FALSE,3),(2108064,210806,'une réaction chimique',FALSE,4),
 (2108071,210807,'une fusion',TRUE,1),(2108072,210807,'une fission',FALSE,2),(2108073,210807,'une désintégration $\beta$',FALSE,3),(2108074,210807,'une ionisation',FALSE,4),
 (2108081,210808,'la masse des produits est inférieure à celle des réactifs',TRUE,1),(2108082,210808,'la masse augmente',FALSE,2),(2108083,210808,'la masse est conservée',FALSE,3),(2108084,210808,'le nombre de nucléons diminue',FALSE,4);
