-- QCM du chapitre « Modulation d'amplitude » (notions + applications).
SET SESSION sql_mode = CONCAT(@@sql_mode, ',NO_BACKSLASH_ESCAPES');
SET @l := (SELECT id FROM lecon WHERE slug = 'modulation-amplitude'
           AND matiere_id = (SELECT id FROM matiere WHERE slug = 'physique-chimie'));

-- ===== notions (2117) =====
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
 (2117, NULL, @l, 'QCM — Modulation d''amplitude : notions', 'Porteuse, taux de modulation, spectre.', 1);

INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES
 (211701,2117,'La porteuse est un signal de fréquence :','Haute fréquence.',1),
 (211702,2117,'Le signal modulant transporte :','L''information (basse fréquence).',2),
 (211703,2117,'En modulation d''amplitude, ce qui varie est :','L''amplitude de la porteuse.',3),
 (211704,2117,'Le taux de modulation se calcule par :','$m = \dfrac{U_{max} - U_{min}}{U_{max} + U_{min}}$.',4),
 (211705,2117,'Pour une bonne modulation, le taux doit vérifier :','$m < 1$.',5),
 (211706,2117,'La fréquence de la porteuse doit être :','Très supérieure à celle du modulant ($F \gg f$).',6),
 (211707,2117,'Si $m > 1$, on observe :','Une surmodulation (distorsion).',7),
 (211708,2117,'Le spectre d''un signal modulé en amplitude contient :','Trois raies : $F-f$, $F$, $F+f$.',8);

INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
 (2117011,211701,'haute',TRUE,1),(2117012,211701,'basse',FALSE,2),(2117013,211701,'nulle',FALSE,3),(2117014,211701,'variable',FALSE,4),
 (2117021,211702,'l''information',TRUE,1),(2117022,211702,'la porteuse',FALSE,2),(2117023,211702,'l''énergie',FALSE,3),(2117024,211702,'rien',FALSE,4),
 (2117031,211703,'l''amplitude de la porteuse',TRUE,1),(2117032,211703,'la fréquence de la porteuse',FALSE,2),(2117033,211703,'la phase du modulant',FALSE,3),(2117034,211703,'la période du modulant',FALSE,4),
 (2117041,211704,'$\dfrac{U_{max} - U_{min}}{U_{max} + U_{min}}$',TRUE,1),(2117042,211704,'$\dfrac{U_{max} + U_{min}}{U_{max} - U_{min}}$',FALSE,2),(2117043,211704,'$U_{max} - U_{min}$',FALSE,3),(2117044,211704,'$\dfrac{U_{max}}{U_{min}}$',FALSE,4),
 (2117051,211705,'$m < 1$',TRUE,1),(2117052,211705,'$m > 1$',FALSE,2),(2117053,211705,'$m = 0$',FALSE,3),(2117054,211705,'$m > 10$',FALSE,4),
 (2117061,211706,'très supérieure à celle du modulant',TRUE,1),(2117062,211706,'égale à celle du modulant',FALSE,2),(2117063,211706,'très inférieure',FALSE,3),(2117064,211706,'nulle',FALSE,4),
 (2117071,211707,'une surmodulation',TRUE,1),(2117072,211707,'une meilleure transmission',FALSE,2),(2117073,211707,'aucune modulation',FALSE,3),(2117074,211707,'une démodulation',FALSE,4),
 (2117081,211708,'trois raies : $F-f$, $F$, $F+f$',TRUE,1),(2117082,211708,'une seule raie $F$',FALSE,2),(2117083,211708,'deux raies $F$ et $f$',FALSE,3),(2117084,211708,'une infinité de raies',FALSE,4);

-- ===== applications (2118) =====
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
 (2118, NULL, @l, 'QCM — Modulation d''amplitude : applications', 'Taux de modulation, spectre, surmodulation.', 2);

INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES
 (211801,2118,'Une enveloppe d''amplitudes $U_{max} = 8~\mathrm{V}$ et $U_{min} = 2~\mathrm{V}$ donne un taux :','$m = \dfrac{8 - 2}{8 + 2} = \dfrac{6}{10} = 0{,}6$.',1),
 (211802,2118,'Pour $U_{max} = 10~\mathrm{V}$ et $U_{min} = 4~\mathrm{V}$, le taux de modulation vaut :','$m = \dfrac{10 - 4}{10 + 4} = \dfrac{6}{14} \approx 0{,}43$.',2),
 (211803,2118,'Un taux $m = 0{,}6$ correspond à une modulation :','$m < 1$ : bonne modulation.',3),
 (211804,2118,'Un taux $m = 1{,}5$ correspond à :','$m > 1$ : surmodulation.',4),
 (211805,2118,'Porteuse $F = 100~\mathrm{kHz}$, modulant $f = 1~\mathrm{kHz}$ : les raies du spectre sont à :','$F-f$, $F$, $F+f$, soit $99$, $100$, $101~\mathrm{kHz}$.',5),
 (211806,2118,'Le spectre d''un signal AM (modulant sinusoïdal) comporte :','Trois raies.',6),
 (211807,2118,'Porteuse $F = 540~\mathrm{kHz}$, modulant $f = 2~\mathrm{kHz}$ : les raies latérales sont à :','$540 \pm 2$, soit $538$ et $542~\mathrm{kHz}$.',7),
 (211808,2118,'Avec $F = 1~\mathrm{MHz}$ et $f = 1~\mathrm{kHz}$, la condition $F \gg f$ est :','Respectée ($F$ est $1000$ fois plus grande).',8);

INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
 (2118011,211801,'$0{,}6$',TRUE,1),(2118012,211801,'$0{,}25$',FALSE,2),(2118013,211801,'$4$',FALSE,3),(2118014,211801,'$1{,}5$',FALSE,4),
 (2118021,211802,'$0{,}43$',TRUE,1),(2118022,211802,'$0{,}6$',FALSE,2),(2118023,211802,'$2{,}5$',FALSE,3),(2118024,211802,'$1{,}4$',FALSE,4),
 (2118031,211803,'bonne (m < 1)',TRUE,1),(2118032,211803,'une surmodulation',FALSE,2),(2118033,211803,'impossible',FALSE,3),(2118034,211803,'sans porteuse',FALSE,4),
 (2118041,211804,'une surmodulation',TRUE,1),(2118042,211804,'une bonne modulation',FALSE,2),(2118043,211804,'une démodulation',FALSE,3),(2118044,211804,'une porteuse pure',FALSE,4),
 (2118051,211805,'$99$, $100$, $101~\mathrm{kHz}$',TRUE,1),(2118052,211805,'$100~\mathrm{kHz}$ seulement',FALSE,2),(2118053,211805,'$1$, $100$, $200~\mathrm{kHz}$',FALSE,3),(2118054,211805,'$99$ et $101~\mathrm{kHz}$ seulement',FALSE,4),
 (2118061,211806,'trois raies',TRUE,1),(2118062,211806,'une raie',FALSE,2),(2118063,211806,'deux raies',FALSE,3),(2118064,211806,'cinq raies',FALSE,4),
 (2118071,211807,'$538$ et $542~\mathrm{kHz}$',TRUE,1),(2118072,211807,'$540$ et $542~\mathrm{kHz}$',FALSE,2),(2118073,211807,'$2$ et $540~\mathrm{kHz}$',FALSE,3),(2118074,211807,'$270$ et $1080~\mathrm{kHz}$',FALSE,4),
 (2118081,211808,'respectée',TRUE,1),(2118082,211808,'non respectée',FALSE,2),(2118083,211808,'impossible à dire',FALSE,3),(2118084,211808,'inversée',FALSE,4);
