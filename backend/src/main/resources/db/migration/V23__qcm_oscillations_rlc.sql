-- QCM du chapitre « Oscillations libres dans un circuit RLC » (notions + applications).
SET SESSION sql_mode = CONCAT(@@sql_mode, ',NO_BACKSLASH_ESCAPES');
SET @l := (SELECT id FROM lecon WHERE slug = 'oscillations-libres-rlc'
           AND matiere_id = (SELECT id FROM matiere WHERE slug = 'physique-chimie'));

-- ===== notions (2113) =====
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
 (2113, NULL, @l, 'QCM — Oscillations RLC : notions', 'Régimes, période propre, énergie.', 1);

INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES
 (211301,2113,'Dans un circuit RLC en oscillations libres, le condensateur chargé se décharge dans :','La bobine (et le résistor) : l''énergie oscille.',1),
 (211302,2113,'L''équation différentielle des oscillations libres est :','$LC\,\dfrac{\mathrm{d}^{2}u_C}{\mathrm{d}t^{2}} + RC\,\dfrac{\mathrm{d}u_C}{\mathrm{d}t} + u_C = 0$.',2),
 (211303,2113,'Le régime pseudo-périodique s''observe pour :','Une faible résistance (oscillations amorties).',3),
 (211304,2113,'Le régime apériodique s''observe pour :','Une grande résistance (retour lent sans oscillation).',4),
 (211305,2113,'Dans le cas idéal $R = 0$, les oscillations sont :','Sinusoïdales et non amorties.',5),
 (211306,2113,'La période propre d''un oscillateur LC vaut :','$T_0 = 2\pi\sqrt{LC}$.',6),
 (211307,2113,'L''amortissement des oscillations est dû à :','L''effet Joule dans le résistor.',7),
 (211308,2113,'Pendant les oscillations, l''énergie s''échange entre :','Le condensateur et la bobine.',8);

INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
 (2113011,211301,'la bobine',TRUE,1),(2113012,211301,'un autre condensateur',FALSE,2),(2113013,211301,'le générateur',FALSE,3),(2113014,211301,'le vide',FALSE,4),
 (2113021,211302,'$LC\,u_C'''' + RC\,u_C'' + u_C = 0$',TRUE,1),(2113022,211302,'$LC\,u_C'' + u_C = 0$',FALSE,2),(2113023,211302,'$RC\,u_C'' + u_C = E$',FALSE,3),(2113024,211302,'$u_C = 0$',FALSE,4),
 (2113031,211303,'une faible résistance',TRUE,1),(2113032,211303,'une grande résistance',FALSE,2),(2113033,211303,'une résistance infinie',FALSE,3),(2113034,211303,'une tension nulle',FALSE,4),
 (2113041,211304,'une grande résistance',TRUE,1),(2113042,211304,'une faible résistance',FALSE,2),(2113043,211304,'une résistance nulle',FALSE,3),(2113044,211304,'une inductance nulle',FALSE,4),
 (2113051,211305,'sinusoïdales non amorties',TRUE,1),(2113052,211305,'amorties',FALSE,2),(2113053,211305,'apériodiques',FALSE,3),(2113054,211305,'constantes',FALSE,4),
 (2113061,211306,'$2\pi\sqrt{LC}$',TRUE,1),(2113062,211306,'$\dfrac{1}{2\pi\sqrt{LC}}$',FALSE,2),(2113063,211306,'$2\pi\sqrt{\dfrac{L}{C}}$',FALSE,3),(2113064,211306,'$2\pi LC$',FALSE,4),
 (2113071,211307,'l''effet Joule dans le résistor',TRUE,1),(2113072,211307,'la charge du condensateur',FALSE,2),(2113073,211307,'l''inductance de la bobine',FALSE,3),(2113074,211307,'la fréquence du générateur',FALSE,4),
 (2113081,211308,'le condensateur et la bobine',TRUE,1),(2113082,211308,'le résistor et le générateur',FALSE,2),(2113083,211308,'deux condensateurs',FALSE,3),(2113084,211308,'la bobine et le résistor',FALSE,4);

-- ===== applications (2114) =====
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
 (2114, NULL, @l, 'QCM — Oscillations RLC : applications', 'Période propre, régimes, énergie.', 2);

INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES
 (211401,2114,'Pour $L = 0{,}1~\mathrm{H}$ et $C = 10~\mu\mathrm{F}$, la période propre vaut environ :','$T_0 = 2\pi\sqrt{LC} = 2\pi\sqrt{10^{-6}} = 2\pi\times10^{-3} \approx 6{,}3~\mathrm{ms}$.',1),
 (211402,2114,'Pour $L = 0{,}4~\mathrm{H}$ et $C = 2{,}5~\mu\mathrm{F}$, la période propre vaut environ :','$\sqrt{LC} = \sqrt{10^{-6}} = 10^{-3}$, donc $T_0 \approx 6{,}3~\mathrm{ms}$.',2),
 (211403,2114,'Combien de régimes libres différents un circuit RLC peut-il présenter ?','Trois : pseudo-périodique, critique, apériodique.',3),
 (211404,2114,'Le régime critique correspond à :','Le retour à l''équilibre le plus rapide, sans oscillation.',4),
 (211405,2114,'Dans un circuit LC idéal, l''énergie totale :','Reste constante (pas de dissipation).',5),
 (211406,2114,'Si l''on augmente la résistance $R$, l''amortissement :','Augmente (les oscillations s''éteignent plus vite).',6),
 (211407,2114,'La pseudo-période $T$ d''un régime amorti est :','Légèrement supérieure à la période propre $T_0$.',7),
 (211408,2114,'La période propre $T_0 = 2\pi\sqrt{LC}$ dépend :','De $L$ et $C$ seulement (pas de $R$).',8);

INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
 (2114011,211401,'$6{,}3~\mathrm{ms}$',TRUE,1),(2114012,211401,'$1~\mathrm{ms}$',FALSE,2),(2114013,211401,'$63~\mathrm{ms}$',FALSE,3),(2114014,211401,'$0{,}63~\mathrm{ms}$',FALSE,4),
 (2114021,211402,'$6{,}3~\mathrm{ms}$',TRUE,1),(2114022,211402,'$12{,}6~\mathrm{ms}$',FALSE,2),(2114023,211402,'$3{,}1~\mathrm{ms}$',FALSE,3),(2114024,211402,'$1~\mathrm{ms}$',FALSE,4),
 (2114031,211403,'trois',TRUE,1),(2114032,211403,'deux',FALSE,2),(2114033,211403,'un seul',FALSE,3),(2114034,211403,'une infinité',FALSE,4),
 (2114041,211404,'le retour le plus rapide sans oscillation',TRUE,1),(2114042,211404,'des oscillations entretenues',FALSE,2),(2114043,211404,'un retour très lent',FALSE,3),(2114044,211404,'une résistance nulle',FALSE,4),
 (2114051,211405,'reste constante',TRUE,1),(2114052,211405,'décroît',FALSE,2),(2114053,211405,'augmente',FALSE,3),(2114054,211405,'s''annule',FALSE,4),
 (2114061,211406,'augmente',TRUE,1),(2114062,211406,'diminue',FALSE,2),(2114063,211406,'ne change pas',FALSE,3),(2114064,211406,'devient nul',FALSE,4),
 (2114071,211407,'légèrement supérieure à $T_0$',TRUE,1),(2114072,211407,'égale à $T_0$',FALSE,2),(2114073,211407,'très inférieure à $T_0$',FALSE,3),(2114074,211407,'nulle',FALSE,4),
 (2114081,211408,'de $L$ et $C$ seulement',TRUE,1),(2114082,211408,'de $R$ seulement',FALSE,2),(2114083,211408,'de $L$, $C$ et $R$',FALSE,3),(2114084,211408,'de la charge initiale',FALSE,4);
