-- STM : QCM des 18 chapitres SI (quiz 6801-6818).
SET SESSION sql_mode = CONCAT(@@sql_mode, ',NO_BACKSLASH_ESCAPES');

-- guidage-rotation
SET @l := (SELECT id FROM lecon WHERE slug = 'guidage-rotation' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'si-stm'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (6801, NULL, @l, 'QCM — Le guidage en rotation', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (680101, 6801, 'Réaliser un guidage en rotation entre deux pièces revient à construire entre elles :', 'Guider en rotation, c''est ne laisser subsister qu''un seul degré de liberté, la rotation autour de l''axe : c''est exactement la définition de la liaison pivot.', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6801011, 680101, 'une liaison glissière', FALSE, 1),
  (6801012, 680101, 'une liaison pivot, ne laissant qu''un seul degré de liberté (la rotation autour de l''axe)', TRUE, 2),
  (6801013, 680101, 'une liaison encastrement, supprimant tous les degrés de liberté', FALSE, 3),
  (6801014, 680101, 'une liaison rotule, laissant trois rotations', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (680102, 6801, 'Dans un guidage par contact direct avec coussinet, le mouvement entre l''arbre et le coussinet est un mouvement de :', 'Dans le contact direct, l''arbre tourne directement dans le coussinet : il y a glissement entre les deux surfaces, d''où un frottement de glissement plus élevé que le frottement de roulement.', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6801021, 680102, 'roulement sans glissement', FALSE, 1),
  (6801022, 680102, 'glissement (frottement de glissement)', TRUE, 2),
  (6801023, 680102, 'pivotement par éléments roulants', FALSE, 3),
  (6801024, 680102, 'translation pure', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (680103, 6801, 'Parmi les roulements suivants, lequel est le plus courant et supporte des charges radiales ainsi que des charges axiales modérées dans les deux sens ?', 'Le roulement à billes à gorge profonde est le plus répandu : économique et rapide, il reprend des charges radiales et des charges axiales modérées dans les deux sens.', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6801031, 680103, 'le roulement à rouleaux cylindriques', FALSE, 1),
  (6801032, 680103, 'le roulement à aiguilles', FALSE, 2),
  (6801033, 680103, 'le roulement à billes à gorge profonde', TRUE, 3),
  (6801034, 680103, 'le roulement à rouleaux coniques', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (680104, 6801, 'On cherche un roulement très compact radialement, capable de supporter de fortes charges radiales dans un faible encombrement. On choisit :', 'Les aiguilles sont des rouleaux très longs et de faible diamètre : le roulement à aiguilles est très compact radialement tout en reprenant de fortes charges radiales.', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6801041, 680104, 'un roulement à aiguilles', TRUE, 1),
  (6801042, 680104, 'un roulement à billes à contact oblique', FALSE, 2),
  (6801043, 680104, 'un coussinet en bronze', FALSE, 3),
  (6801044, 680104, 'un roulement à rouleaux coniques', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (680105, 6801, 'Le roulement à contact oblique (à billes ou à rouleaux coniques) supporte des charges axiales importantes mais dans un seul sens. Pour bloquer l''arbre dans les deux sens, on le monte :', 'Comme il ne reprend l''effort axial que dans un sens, on monte deux roulements à contact oblique en opposition (montage en X ou en O) pour bloquer l''arbre axialement dans les deux sens.', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6801051, 680105, 'seul, avec une bague intérieure glissante', FALSE, 1),
  (6801052, 680105, 'par paire, en opposition', TRUE, 2),
  (6801053, 680105, 'remplacé systématiquement par un coussinet', FALSE, 3),
  (6801054, 680105, 'avec une charge purement radiale', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (680106, 6801, 'Pour un montage à arbre tournant (charge tournante par rapport à la bague intérieure), la règle de l''ajustement impose :', 'La bague soumise à une charge tournante doit être serrée. Arbre tournant : la bague intérieure (charge tournante) est serrée sur l''arbre, l''extérieure est glissante dans le logement.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6801061, 680106, 'bague intérieure serrée sur l''arbre, bague extérieure glissante dans l''alésage', TRUE, 1),
  (6801062, 680106, 'bague extérieure serrée dans l''alésage, bague intérieure glissante sur l''arbre', FALSE, 2),
  (6801063, 680106, 'les deux bagues serrées simultanément', FALSE, 3),
  (6801064, 680106, 'les deux bagues glissantes', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (680107, 6801, 'Concernant la lubrification d''un roulement, quelle affirmation est exacte ?', 'La graisse, simple et répandue, convient aux vitesses faibles à moyennes ; l''huile, qui circule et évacue mieux la chaleur, est réservée aux vitesses élevées et aux fortes charges, mais exige une bonne étanchéité.', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6801071, 680107, 'la graisse est réservée aux très hautes vitesses avec circulation forcée', FALSE, 1),
  (6801072, 680107, 'l''huile est inutile car elle n''évacue pas la chaleur', FALSE, 2),
  (6801073, 680107, 'la lubrification à la graisse convient aux vitesses faibles à moyennes, l''huile aux vitesses élevées et fortes charges', TRUE, 3),
  (6801074, 680107, 'un roulement n''a jamais besoin d''être lubrifié', FALSE, 4);

-- mecanique-fluides
SET @l := (SELECT id FROM lecon WHERE slug = 'mecanique-fluides' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'si-stm'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (6802, NULL, @l, 'QCM — La mecanique des fluides', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (680201, 6802, 'Dans le Système International, l''unité de la pression $p = \dfrac{F}{S}$ est :', 'La pression est une force par unité de surface : $p = \dfrac{F}{S}$. Avec $F$ en newtons et $S$ en $\text{m}^2$, on obtient le pascal : $1\ \text{Pa} = 1\ \text{N/m}^2$. Le bar est une unité usuelle valant $10^{5}\ \text{Pa}$.', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6802011, 680201, 'le pascal $(\text{Pa})$, avec $1\ \text{Pa} = 1\ \text{N/m}^2$', TRUE, 1),
  (6802012, 680201, 'le newton $(\text{N})$', FALSE, 2),
  (6802013, 680201, 'le bar, avec $1\ \text{bar} = 1\ \text{N/m}^2$', FALSE, 3),
  (6802014, 680201, 'le pascal, avec $1\ \text{Pa} = 1\ \text{N}\cdot\text{m}^2$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (680202, 6802, 'Dans une presse hydraulique, deux pistons de surfaces $S_1 = 5\ \text{cm}^2$ et $S_2 = 100\ \text{cm}^2$ communiquent par le fluide. Une force $F_1 = 200\ \text{N}$ sur le petit piston produit sur le grand piston une force $F_2$ valant :', 'Le théorème de Pascal transmet la même pression : $\dfrac{F_1}{S_1} = \dfrac{F_2}{S_2}$, donc $F_2 = F_1\,\dfrac{S_2}{S_1} = 200 \times \dfrac{100}{5} = 4000\ \text{N}$. C''est le principe du multiplicateur d''effort.', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6802021, 680202, '$4000\ \text{N}$', TRUE, 1),
  (6802022, 680202, '$200\ \text{N}$', FALSE, 2),
  (6802023, 680202, '$10\ \text{N}$', FALSE, 3),
  (6802024, 680202, '$1000\ \text{N}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (680203, 6802, 'La pression hydrostatique dans un liquide au repos de masse volumique $\rho$ :', 'D''après la loi de l''hydrostatique $p = p_0 + \rho g h$, la pression n''augmente qu''avec la profondeur $h$. Elle ne dépend ni de la forme ni du volume du récipient : c''est le paradoxe hydrostatique.', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6802031, 680203, 'ne dépend que de la profondeur $h$ (et de $\rho$ et $g$), pas de la forme du récipient', TRUE, 1),
  (6802032, 680203, 'dépend du volume total de liquide contenu dans le récipient', FALSE, 2),
  (6802033, 680203, 'dépend de la forme et de la largeur du récipient', FALSE, 3),
  (6802034, 680203, 'est la même en tout point du liquide quelle que soit la profondeur', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (680204, 6802, 'De l''eau circule dans une conduite passant d''une section $S_1 = 20\ \text{cm}^2$ à une section $S_2 = 4\ \text{cm}^2$. Si $v_1 = 1\ \text{m/s}$, la vitesse $v_2$ vaut :', 'La conservation du débit donne $S_1 v_1 = S_2 v_2$, d''où $v_2 = v_1\,\dfrac{S_1}{S_2} = 1 \times \dfrac{20}{4} = 5\ \text{m/s}$. Un rétrécissement accélère le fluide.', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6802041, 680204, '$5\ \text{m/s}$', TRUE, 1),
  (6802042, 680204, '$0{,}2\ \text{m/s}$', FALSE, 2),
  (6802043, 680204, '$1\ \text{m/s}$', FALSE, 3),
  (6802044, 680204, '$25\ \text{m/s}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (680205, 6802, 'Le théorème de Bernoulli traduit, pour un fluide parfait incompressible en écoulement permanent, la conservation le long d''une ligne de courant de la grandeur :', 'Le théorème de Bernoulli exprime que $p + \dfrac{1}{2}\rho v^{2} + \rho g z = \text{constante}$ le long d''une ligne de courant : c''est un bilan d''énergie (pression, énergie cinétique volumique, énergie potentielle volumique).', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6802051, 680205, '$p + \dfrac{1}{2}\rho v^{2} + \rho g z$', TRUE, 1),
  (6802052, 680205, '$p + \rho v + \rho g z$', FALSE, 2),
  (6802053, 680205, '$p + \dfrac{1}{2}\rho v + g z$', FALSE, 3),
  (6802054, 680205, '$\dfrac{1}{2}\rho v^{2} - \rho g z$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (680206, 6802, 'Dans un tube de Venturi horizontal, au niveau du col où la section diminue et où la vitesse du fluide augmente, la pression :', 'Pour un écoulement horizontal ($z$ constant), Bernoulli donne $p + \dfrac{1}{2}\rho v^{2} = \text{constante}$. Là où $v$ augmente (au col), le terme $\dfrac{1}{2}\rho v^{2}$ croît, donc $p$ diminue : c''est l''effet Venturi.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6802061, 680206, 'diminue', TRUE, 1),
  (6802062, 680206, 'augmente', FALSE, 2),
  (6802063, 680206, 'reste constante', FALSE, 3),
  (6802064, 680206, 'devient nulle', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (680207, 6802, 'Le nombre de Reynolds $Re = \dfrac{\rho v D}{\eta}$ permet de prévoir le régime d''écoulement. Pour un écoulement en conduite, le régime est laminaire lorsque :', 'Le nombre de Reynolds est sans dimension. En pratique, $Re < 2000$ correspond au régime laminaire (filets ordonnés), $Re > 4000$ au régime turbulent (mélange désordonné), et l''intervalle intermédiaire au régime transitoire.', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6802071, 680207, '$Re < 2000$', TRUE, 1),
  (6802072, 680207, '$Re > 4000$', FALSE, 2),
  (6802073, 680207, '$Re = 1$ exactement', FALSE, 3),
  (6802074, 680207, '$Re$ est négatif', FALSE, 4);

-- pompes-compresseurs
SET @l := (SELECT id FROM lecon WHERE slug = 'pompes-compresseurs' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'si-stm'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (6803, NULL, @l, 'QCM — Les pompes et compresseurs', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (680301, 6803, 'Quelle est la différence essentielle entre une pompe et un compresseur ?', 'Tous deux mettent un fluide en mouvement à partir d''une énergie mécanique, mais la pompe traite les **liquides** (fluides incompressibles : eau, huile) tandis que le compresseur traite les **gaz** (fluides compressibles : air). La compressibilité du gaz change les phénomènes mis en jeu.', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6803011, 680301, 'la pompe déplace un liquide (incompressible), le compresseur déplace un gaz (compressible)', TRUE, 1),
  (6803012, 680301, 'la pompe déplace un gaz, le compresseur déplace un liquide', FALSE, 2),
  (6803013, 680301, 'la pompe reçoit de l''énergie hydraulique, le compresseur de l''énergie électrique', FALSE, 3),
  (6803014, 680301, 'il n''y a aucune différence, ce sont deux noms pour la même machine', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (680302, 6803, 'Une pompe volumétrique se caractérise par le fait que :', 'La pompe volumétrique emprisonne le liquide dans un volume qu''elle remplit à l''aspiration puis refoule : le volume transféré par cycle est **bien déterminé** et quasi indépendant de la pression. L''accélération par une roue à aubes correspond, elle, à la pompe **centrifuge**.', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6803021, 680302, 'elle transfère à chaque cycle un volume bien déterminé, presque indépendant de la pression de refoulement', TRUE, 1),
  (6803022, 680302, 'son débit augmente fortement quand la pression de refoulement augmente', FALSE, 2),
  (6803023, 680302, 'elle ne peut déplacer que des gaz', FALSE, 3),
  (6803024, 680302, 'elle accélère le liquide grâce à une roue à aubes tournant à grande vitesse', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (680303, 6803, 'Le débit volumique $Q$ d''une pompe est défini par :', 'Le débit volumique est le volume délivré par unité de temps : $Q = \dfrac{V}{t}$, exprimé en $\text{m}^3\!/\text{s}$ (souvent converti en $\text{L/s}$ ou $\text{m}^3\!/\text{h}$). L''expression $\rho g H$ est une pression, pas un débit.', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6803031, 680303, '$Q = \dfrac{V}{t}$, en $\text{m}^3\!/\text{s}$', TRUE, 1),
  (6803032, 680303, '$Q = V \times t$, en $\text{m}^3\!\cdot\text{s}$', FALSE, 2),
  (6803033, 680303, '$Q = \dfrac{t}{V}$, en $\text{s/m}^3$', FALSE, 3),
  (6803034, 680303, '$Q = \rho \, g \, H$, en $\text{Pa}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (680304, 6803, 'La puissance hydraulique utile transmise au liquide par une pompe s''écrit :', 'La puissance hydraulique vaut $P_h = \rho \, g \, Q \, H$ (en $\text{W}$), avec $\rho$ en $\text{kg/m}^3$, $g \approx 9{,}81\ \text{m/s}^2$, $Q$ en $\text{m}^3\!/\text{s}$ et $H$ en $\text{m}$. On peut aussi l''écrire $P_h = p\,Q$ avec $p = \rho g H$.', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6803041, 680304, '$P_h = \rho \, g \, Q \, H$', TRUE, 1),
  (6803042, 680304, '$P_h = \dfrac{\rho \, g \, H}{Q}$', FALSE, 2),
  (6803043, 680304, '$P_h = \rho \, g \, Q^2 \, H$', FALSE, 3),
  (6803044, 680304, '$P_h = \dfrac{Q \, H}{\rho \, g}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (680305, 6803, 'Le rendement $\eta$ d''une pompe est le rapport :', 'Le rendement compare la puissance **utile** (hydraulique) à la puissance **absorbée** sur l''arbre : $\eta = \dfrac{P_h}{P_{abs}}$. Comme $P_h < P_{abs}$ (pertes), on a toujours $\eta < 1$. On en déduit $P_{abs} = \dfrac{P_h}{\eta}$.', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6803051, 680305, '$\eta = \dfrac{P_h}{P_{abs}} = \dfrac{\rho \, g \, Q \, H}{P_{abs}}$', TRUE, 1),
  (6803052, 680305, '$\eta = \dfrac{P_{abs}}{P_h}$, toujours supérieur à 1', FALSE, 2),
  (6803053, 680305, '$\eta = P_h \times P_{abs}$', FALSE, 3),
  (6803054, 680305, '$\eta = \dfrac{P_{abs} - P_h}{P_{abs}}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (680306, 6803, 'Le point de fonctionnement d''une installation de pompage correspond :', 'Le point de fonctionnement $F$ est l''**intersection** de la courbe décroissante de la pompe $H = f(Q)$ et de la courbe croissante du réseau $H_r(Q)$. En ce point, la hauteur fournie égale la hauteur demandée ; il fixe le débit réel $Q_F$ et la hauteur réelle $H_F$.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6803061, 680306, 'à l''intersection de la courbe de la pompe $H = f(Q)$ et de la courbe du réseau $H_r(Q)$', TRUE, 1),
  (6803062, 680306, 'au sommet (maximum) de la courbe caractéristique de la pompe', FALSE, 2),
  (6803063, 680306, 'au point où le débit de la pompe est nul', FALSE, 3),
  (6803064, 680306, 'au point où le rendement du moteur est maximal', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (680307, 6803, 'La hauteur manométrique $H$ et la pression $p$ créée par une pompe sont liées par :', 'La relation de l''hydrostatique donne $p = \rho \, g \, H$, donc $H = \dfrac{p}{\rho \, g}$. Pour l''eau, $1$ bar ($10^5\ \text{Pa}$) correspond ainsi à environ $10\ \text{m}$ de colonne d''eau.', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6803071, 680307, '$p = \rho \, g \, H$, soit $H = \dfrac{p}{\rho \, g}$', TRUE, 1),
  (6803072, 680307, '$p = \dfrac{\rho \, g}{H}$', FALSE, 2),
  (6803073, 680307, '$p = \rho \, g \, H^2$', FALSE, 3),
  (6803074, 680307, '$p = \dfrac{H}{\rho \, g}$', FALSE, 4);

-- rdm-introduction
SET @l := (SELECT id FROM lecon WHERE slug = 'rdm-introduction' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'si-stm'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (6804, NULL, @l, 'QCM — RDM : generalites', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (680401, 6804, 'Quelle hypothèse de la RDM traduit le fait que le matériau possède les mêmes propriétés mécaniques dans toutes les directions ?', 'Un matériau isotrope a les mêmes propriétés dans toutes les directions. L''homogénéité signifie mêmes propriétés en tout point, la continuité que la matière remplit tout le volume sans vide ni fissure.', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6804011, 680401, 'L''isotropie', TRUE, 1),
  (6804012, 680401, 'L''homogénéité', FALSE, 2),
  (6804013, 680401, 'La continuité', FALSE, 3),
  (6804014, 680401, 'La plasticité', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (680402, 6804, 'D''après l''hypothèse de Navier-Bernoulli, une section droite plane et perpendiculaire à la ligne moyenne avant déformation :', 'L''hypothèse de Navier-Bernoulli postule qu''une section droite reste plane et perpendiculaire à la ligne moyenne après déformation, ce qui simplifie grandement les calculs de RDM.', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6804021, 680402, 'reste plane et perpendiculaire à la ligne moyenne après déformation', TRUE, 1),
  (6804022, 680402, 'se gauchit et devient courbe', FALSE, 2),
  (6804023, 680402, 'tourne de $90^\circ$ par rapport à la ligne moyenne', FALSE, 3),
  (6804024, 680402, 'disparaît au cours de la déformation', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (680403, 6804, 'Un arbre de transmission soumis à ses deux extrémités à deux moments opposés autour de sa ligne moyenne est sollicité en :', 'Deux moments opposés autour de la ligne moyenne tendent à faire pivoter les sections les unes par rapport aux autres : c''est la torsion. La composante associée du torseur de cohésion est le moment de torsion $M_t$.', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6804031, 680403, 'torsion', TRUE, 1),
  (6804032, 680403, 'flexion', FALSE, 2),
  (6804033, 680403, 'traction', FALSE, 3),
  (6804034, 680403, 'cisaillement', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (680404, 6804, 'Dans le torseur de cohésion, la composante de la résultante $\vec{R}$ portée par la ligne moyenne s''appelle :', 'L''effort normal $N$ est la composante de $\vec{R}$ portée par la ligne moyenne ; il correspond à la traction ou à la compression. L''effort tranchant $T$ est la composante de $\vec{R}$ dans le plan de la section.', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6804041, 680404, 'l''effort normal $N$', TRUE, 1),
  (6804042, 680404, 'l''effort tranchant $T$', FALSE, 2),
  (6804043, 680404, 'le moment fléchissant $M_f$', FALSE, 3),
  (6804044, 680404, 'le moment de torsion $M_t$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (680405, 6804, 'Une barre de section $S = 50\ \text{mm}^2$ supporte un effort normal de traction $N = 10\,000\ \text{N}$. La contrainte normale $\sigma$ vaut :', 'La contrainte normale vaut $\sigma = \dfrac{N}{S} = \dfrac{10\,000}{50} = 200\ \text{MPa}$ (avec $N$ en newtons et $S$ en $\text{mm}^2$, on obtient des MPa).', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6804051, 680405, '$200\ \text{MPa}$', TRUE, 1),
  (6804052, 680405, '$2\ \text{MPa}$', FALSE, 2),
  (6804053, 680405, '$500\,000\ \text{MPa}$', FALSE, 3),
  (6804054, 680405, '$0{,}005\ \text{MPa}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (680406, 6804, 'Dans le domaine élastique, la loi de Hooke reliant la contrainte $\sigma$ et la déformation $\varepsilon$ s''écrit :', 'La loi de Hooke s''écrit $\sigma = E\,\varepsilon$, où $E$ est le module d''Young (en MPa). Les autres relations définissent respectivement la contrainte, la déformation et la résistance pratique.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6804061, 680406, '$\sigma = E\,\varepsilon$', TRUE, 1),
  (6804062, 680406, '$\sigma = \dfrac{N}{S}$', FALSE, 2),
  (6804063, 680406, '$\varepsilon = \dfrac{\Delta L}{L_0}$', FALSE, 3),
  (6804064, 680406, '$\sigma = \dfrac{R_e}{s}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (680407, 6804, 'Pour un acier de limite élastique $R_e = 300\ \text{MPa}$ utilisé avec un coefficient de sécurité $s = 3$, la résistance pratique à l''extension $R_{pe}$ vaut :', 'La résistance pratique vaut $R_{pe} = \dfrac{R_e}{s} = \dfrac{300}{3} = 100\ \text{MPa}$. La condition de résistance impose alors $\sigma \le R_{pe}$.', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6804071, 680407, '$100\ \text{MPa}$', TRUE, 1),
  (6804072, 680407, '$900\ \text{MPa}$', FALSE, 2),
  (6804073, 680407, '$300\ \text{MPa}$', FALSE, 3),
  (6804074, 680407, '$3\ \text{MPa}$', FALSE, 4);

-- rdm-traction-compression
SET @l := (SELECT id FROM lecon WHERE slug = 'rdm-traction-compression' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'si-stm'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (6805, NULL, @l, 'QCM — RDM : traction et compression', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (680501, 6805, 'Une poutre est sollicitée en traction (ou compression) lorsque le torseur de cohésion se réduit, dans toute section droite, à :', 'En traction-compression, la seule composante non nulle du torseur de cohésion est l''effort normal $N$, dirigé selon la ligne moyenne de la poutre. On convient $N>0$ en traction et $N<0$ en compression.', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6805011, 680501, 'un effort normal $N$ seul, porté par la ligne moyenne', TRUE, 1),
  (6805012, 680501, 'un effort tranchant $T$ seul', FALSE, 2),
  (6805013, 680501, 'un moment de flexion $M_f$ seul', FALSE, 3),
  (6805014, 680501, 'un moment de torsion $M_t$ seul', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (680502, 6805, 'La contrainte normale $\sigma$ dans une section droite d''aire $S$ soumise à un effort normal $N$ s''écrit :', 'La contrainte normale est uniformément répartie sur la section : $\sigma = N/S$. Avec $N$ en newtons et $S$ en mm$^2$, $\sigma$ s''exprime en MPa ($1\ \text{MPa} = 1\ \text{N/mm}^2$).', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6805021, 680502, '$\sigma = \dfrac{N}{S}$', TRUE, 1),
  (6805022, 680502, '$\sigma = N \times S$', FALSE, 2),
  (6805023, 680502, '$\sigma = \dfrac{S}{N}$', FALSE, 3),
  (6805024, 680502, '$\sigma = \dfrac{N}{S^2}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (680503, 6805, 'Une barre de section $S = 200\ \text{mm}^2$ supporte un effort normal de traction $N = 30\,000\ \text{N}$. La contrainte normale vaut :', '$\sigma = \dfrac{N}{S} = \dfrac{30\,000}{200} = 150\ \text{N/mm}^2 = 150\ \text{MPa}$.', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6805031, 680503, '$150\ \text{MPa}$', TRUE, 1),
  (6805032, 680503, '$15\ \text{MPa}$', FALSE, 2),
  (6805033, 680503, '$6\,000\ \text{MPa}$', FALSE, 3),
  (6805034, 680503, '$1\,500\ \text{MPa}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (680504, 6805, 'Lors d''un essai de traction, la résistance à la rupture $R_m$ désigne :', '$R_m$ est la contrainte maximale (sommet de la courbe) avant rupture. À ne pas confondre avec la limite élastique $R_e$, contrainte qui marque le début des déformations permanentes, ni avec le module de Young $E$ (pente de la zone élastique).', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6805041, 680504, 'la contrainte maximale supportée par le matériau avant rupture', TRUE, 1),
  (6805042, 680504, 'la contrainte au-delà de laquelle apparaissent des déformations permanentes', FALSE, 2),
  (6805043, 680504, 'la pente de la zone élastique de la courbe', FALSE, 3),
  (6805044, 680504, 'l''allongement de l''éprouvette à la rupture', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (680505, 6805, 'La loi de Hooke, valable dans le domaine élastique, relie la contrainte $\sigma$ et la déformation $\varepsilon$ par :', 'En zone élastique, la contrainte est proportionnelle à la déformation : $\sigma = E\,\varepsilon$, où $E$ est le module de Young (en MPa) et $\varepsilon = \Delta L / L$ est sans unité.', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6805051, 680505, '$\sigma = E\,\varepsilon$', TRUE, 1),
  (6805052, 680505, '$\sigma = \dfrac{\varepsilon}{E}$', FALSE, 2),
  (6805053, 680505, '$\varepsilon = E\,\sigma$', FALSE, 3),
  (6805054, 680505, '$\sigma = E + \varepsilon$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (680506, 6805, 'L''allongement $\Delta L$ d''une poutre de longueur $L$, de section $S$, de module de Young $E$, soumise à un effort normal $N$, est donné par :', 'En combinant $\sigma = N/S$, $\sigma = E\varepsilon$ et $\varepsilon = \Delta L/L$, on obtient $\Delta L = \dfrac{N\,L}{E\,S}$. L''allongement augmente avec $N$ et $L$, et diminue avec une section ou un module plus grands.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6805061, 680506, '$\Delta L = \dfrac{N\,L}{E\,S}$', TRUE, 1),
  (6805062, 680506, '$\Delta L = \dfrac{E\,S}{N\,L}$', FALSE, 2),
  (6805063, 680506, '$\Delta L = \dfrac{N\,S}{E\,L}$', FALSE, 3),
  (6805064, 680506, '$\Delta L = \dfrac{E\,L}{N\,S}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (680507, 6805, 'La résistance pratique à l''extension est $R_{pe} = R_e/s$. Pour un effort $N$, la condition de résistance impose pour la section $S$ :', 'La condition de résistance s''écrit $\sigma_{max} = \dfrac{N}{S} \leq R_{pe}$, d''où $S \geq \dfrac{N}{R_{pe}} = \dfrac{N\,s}{R_e}$. Le coefficient de sécurité $s \geq 1$ couvre les incertitudes sur les charges, le matériau et les calculs.', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6805071, 680507, '$S \geq \dfrac{N}{R_{pe}}$', TRUE, 1),
  (6805072, 680507, '$S \leq \dfrac{N}{R_{pe}}$', FALSE, 2),
  (6805073, 680507, '$S \geq N \times R_{pe}$', FALSE, 3),
  (6805074, 680507, '$S \geq \dfrac{R_{pe}}{N}$', FALSE, 4);

-- rdm-cisaillement
SET @l := (SELECT id FROM lecon WHERE slug = 'rdm-cisaillement' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'si-stm'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (6806, NULL, @l, 'QCM — RDM : le cisaillement', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (680601, 6806, 'Une poutre est sollicitée au cisaillement lorsqu''elle est soumise à deux forces $\vec{F}$ et $-\vec{F}$ qui sont :', 'Le cisaillement résulte de deux forces directement opposées, perpendiculaires à la ligne moyenne et dont les supports sont très voisins : elles font glisser une section par rapport à la section voisine selon la section cisaillée. Des forces portées par l''axe donneraient de la traction-compression.', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6806011, 680601, 'directement opposées, perpendiculaires à la ligne moyenne, et très voisines', TRUE, 1),
  (6806012, 680601, 'portées par la ligne moyenne et dirigées vers l''extérieur', FALSE, 2),
  (6806013, 680601, 'parallèles à la ligne moyenne et éloignées l''une de l''autre', FALSE, 3),
  (6806014, 680601, 'deux moments opposés autour de la ligne moyenne', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (680602, 6806, 'La contrainte tangentielle de cisaillement $\tau$ dans une section cisaillée d''aire $S$ soumise à un effort tranchant $T$ s''écrit :', 'On admet une répartition uniforme de l''effort tranchant sur la section : $\tau = T/S$. Avec $T$ en newtons et $S$ en mm$^2$, $\tau$ s''exprime en MPa ($1\ \text{MPa} = 1\ \text{N/mm}^2$).', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6806021, 680602, '$\tau = \dfrac{T}{S}$', TRUE, 1),
  (6806022, 680602, '$\tau = T \times S$', FALSE, 2),
  (6806023, 680602, '$\tau = \dfrac{S}{T}$', FALSE, 3),
  (6806024, 680602, '$\tau = \dfrac{T}{S^2}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (680603, 6806, 'Un organe est cisaillé sur une section $S = 100\ \text{mm}^2$ par un effort tranchant $T = 12\,000\ \text{N}$. La contrainte tangentielle vaut :', '$\tau = \dfrac{T}{S} = \dfrac{12\,000}{100} = 120\ \text{N/mm}^2 = 120\ \text{MPa}$.', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6806031, 680603, '$120\ \text{MPa}$', TRUE, 1),
  (6806032, 680603, '$12\ \text{MPa}$', FALSE, 2),
  (6806033, 680603, '$1\,200\,000\ \text{MPa}$', FALSE, 3),
  (6806034, 680603, '$0{,}008\ \text{MPa}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (680604, 6806, 'Quelle est la différence fondamentale entre la contrainte de cisaillement $\tau$ et la contrainte normale $\sigma$ de la traction ?', 'La contrainte de cisaillement $\tau$ est contenue dans le plan de coupe (elle est tangente à la section), alors que la contrainte normale $\sigma$ est perpendiculaire à la section. Les deux s''expriment en MPa et dépendent de l''aire $S$.', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6806041, 680604, '$\tau$ est tangente à la section, tandis que $\sigma$ lui est perpendiculaire', TRUE, 1),
  (6806042, 680604, '$\tau$ et $\sigma$ sont toutes deux perpendiculaires à la section', FALSE, 2),
  (6806043, 680604, '$\tau$ s''exprime en newtons et $\sigma$ en MPa', FALSE, 3),
  (6806044, 680604, '$\tau$ ne dépend pas de l''aire de la section, contrairement à $\sigma$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (680605, 6806, 'La loi de Hooke en cisaillement relie la contrainte tangentielle $\tau$ à l''angle de glissement $\gamma$ par :', 'Dans le domaine élastique, $\tau = G\,\gamma$ : la contrainte tangentielle est proportionnelle à l''angle de glissement $\gamma$ (en radians). Le coefficient $G$ est le module d''élasticité transversale (ou module de Coulomb), relié à $E$ et au coefficient de Poisson $\nu$ par $G = \dfrac{E}{2(1+\nu)}$.', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6806051, 680605, '$\tau = G \cdot \gamma$, où $G$ est le module d''élasticité transversale', TRUE, 1),
  (6806052, 680605, '$\tau = E \cdot \gamma$, où $E$ est le module de Young', FALSE, 2),
  (6806053, 680605, '$\gamma = G \cdot \tau$', FALSE, 3),
  (6806054, 680605, '$\tau = \dfrac{\gamma}{G}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (680606, 6806, 'La condition de résistance au cisaillement impose que la contrainte tangentielle maximale ne dépasse pas la résistance pratique au glissement $R_{pg}$. Celle-ci s''obtient par :', 'La résistance pratique au glissement vaut $R_{pg} = R_g/s$, et la condition s''écrit $\tau_{max} \leq R_{pg}$. On a généralement $R_g \approx 0{,}5\,R_e$, et le coefficient de sécurité $s$ (de 2 à 5) couvre les incertitudes.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6806061, 680606, '$R_{pg} = \dfrac{R_g}{s}$, avec $R_g$ la résistance au glissement et $s>1$ le coefficient de sécurité', TRUE, 1),
  (6806062, 680606, '$R_{pg} = R_g \times s$', FALSE, 2),
  (6806063, 680606, '$R_{pg} = \dfrac{s}{R_g}$', FALSE, 3),
  (6806064, 680606, '$R_{pg} = R_g + s$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (680607, 6806, 'Un axe monté dans une chape à deux flasques transmet un effort $F$. Il travaille au cisaillement double, donc la contrainte dans chacune des deux sections d''aire $S$ vaut :', 'En cisaillement double, l''effort $F$ se partage sur les deux plans de cisaillement : chaque section ne supporte que $F/2$, d''où $\tau = \dfrac{F}{2\,S}$. Pour $p$ plans, $\tau = \dfrac{F}{p\,S}$. À effort égal, la contrainte est ainsi moitié moindre qu''en cisaillement simple.', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6806071, 680607, '$\tau = \dfrac{F}{2\,S}$', TRUE, 1),
  (6806072, 680607, '$\tau = \dfrac{F}{S}$', FALSE, 2),
  (6806073, 680607, '$\tau = \dfrac{2\,F}{S}$', FALSE, 3),
  (6806074, 680607, '$\tau = \dfrac{F}{4\,S}$', FALSE, 4);

-- rdm-torsion
SET @l := (SELECT id FROM lecon WHERE slug = 'rdm-torsion' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'si-stm'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (6807, NULL, @l, 'QCM — RDM : la torsion', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (680701, 6807, 'Une poutre est sollicitée en torsion lorsqu''elle est soumise à :', 'En torsion, l''effort intérieur est le moment de torsion $M_t$ (en $\text{N·m}$) produit par deux couples opposés dans des plans perpendiculaires à l''axe. Des forces axiales donneraient de la traction/compression, des forces transversales de la flexion.', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6807011, 680701, 'deux couples opposés agissant dans des plans perpendiculaires à sa ligne moyenne', TRUE, 1),
  (6807012, 680701, 'deux forces axiales opposées dirigées selon sa ligne moyenne', FALSE, 2),
  (6807013, 680701, 'deux forces transversales formant un couple de flexion', FALSE, 3),
  (6807014, 680701, 'une pression uniforme répartie sur toute sa surface latérale', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (680702, 6807, 'Pour un arbre de section circulaire pleine de diamètre $d$, la contrainte tangentielle maximale vaut :', 'Le module de torsion d''une section pleine est $\dfrac{I_0}{v} = \dfrac{\pi d^3}{16}$, d''où $\tau_{max} = \dfrac{M_t}{\pi d^3/16} = \dfrac{16\,M_t}{\pi d^3}$.', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6807021, 680702, '$\tau_{max} = \dfrac{16\,M_t}{\pi d^3}$', TRUE, 1),
  (6807022, 680702, '$\tau_{max} = \dfrac{32\,M_t}{\pi d^3}$', FALSE, 2),
  (6807023, 680702, '$\tau_{max} = \dfrac{M_t}{\pi d^2}$', FALSE, 3),
  (6807024, 680702, '$\tau_{max} = \dfrac{16\,M_t}{\pi d^4}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (680703, 6807, 'Dans une section droite soumise à la torsion, la contrainte tangentielle $\tau$ :', 'La répartition est linéaire : $\tau = \dfrac{M_t}{I_0}\,\rho$. Elle est nulle au centre ($\rho = 0$) et atteint son maximum au bord ($\rho = v$, le rayon).', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6807031, 680703, 'est nulle sur l''axe et maximale en périphérie, en variant linéairement avec le rayon $\rho$', TRUE, 1),
  (6807032, 680703, 'est maximale sur l''axe et nulle en périphérie', FALSE, 2),
  (6807033, 680703, 'est uniforme dans toute la section', FALSE, 3),
  (6807034, 680703, 'varie comme le carré de la distance $\rho$ à l''axe', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (680704, 6807, 'Le moment quadratique polaire $I_0$ d''une section circulaire pleine de diamètre $d$ est :', 'Pour une section pleine, $I_0 = \dfrac{\pi d^4}{32}$ (en $\text{mm}^4$). Il ne dépend que de la géométrie. À ne pas confondre avec le module de torsion $\dfrac{I_0}{v} = \dfrac{\pi d^3}{16}$.', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6807041, 680704, '$I_0 = \dfrac{\pi d^4}{32}$', TRUE, 1),
  (6807042, 680704, '$I_0 = \dfrac{\pi d^3}{16}$', FALSE, 2),
  (6807043, 680704, '$I_0 = \dfrac{\pi d^4}{16}$', FALSE, 3),
  (6807044, 680704, '$I_0 = \dfrac{\pi d^2}{4}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (680705, 6807, 'L''angle de torsion $\theta$ d''une poutre de longueur $L$ soumise au moment $M_t$ s''écrit :', 'L''angle de torsion vaut $\theta = \dfrac{M_t\, L}{G\, I_0}$ (en $\text{rad}$), où $G$ est le module de Coulomb et $G\,I_0$ la rigidité de torsion : plus elle est grande, moins l''arbre se déforme.', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6807051, 680705, '$\theta = \dfrac{M_t\, L}{G\, I_0}$', TRUE, 1),
  (6807052, 680705, '$\theta = \dfrac{G\, I_0}{M_t\, L}$', FALSE, 2),
  (6807053, 680705, '$\theta = \dfrac{M_t\, I_0}{G\, L}$', FALSE, 3),
  (6807054, 680705, '$\theta = \dfrac{M_t\, L}{G\, v}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (680706, 6807, 'Un arbre transmet une puissance $P$ en tournant à la vitesse angulaire $\omega$. Le moment de torsion qu''il supporte est :', 'La puissance mécanique vérifie $P = M_t\,\omega$, donc $M_t = \dfrac{P}{\omega}$, avec $\omega = \dfrac{2\pi N}{60}$ ($N$ en tr/min). C''est le point de départ du dimensionnement d''un arbre de transmission.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6807061, 680706, '$M_t = \dfrac{P}{\omega}$', TRUE, 1),
  (6807062, 680706, '$M_t = P\,\omega$', FALSE, 2),
  (6807063, 680706, '$M_t = \dfrac{\omega}{P}$', FALSE, 3),
  (6807064, 680706, '$M_t = \dfrac{P}{2\pi\,\omega}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (680707, 6807, 'La condition de résistance d''un arbre en torsion impose :', 'Pour résister sans danger, la contrainte maximale doit rester sous la résistance pratique au glissement : $\tau_{max} \le R_{pg}$, où $R_{pg} = \dfrac{R_{eg}}{s}$ ($s > 1$ est le coefficient de sécurité).', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6807071, 680707, '$\tau_{max} \le R_{pg}$, avec $R_{pg} = \dfrac{R_{eg}}{s}$', TRUE, 1),
  (6807072, 680707, '$\tau_{max} \ge R_{pg}$, avec $R_{pg} = R_{eg}\times s$', FALSE, 2),
  (6807073, 680707, '$\theta \le R_{pg}$', FALSE, 3),
  (6807074, 680707, '$M_t \le R_{pg}$', FALSE, 4);

-- rdm-flexion
SET @l := (SELECT id FROM lecon WHERE slug = 'rdm-flexion' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'si-stm'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (6808, NULL, @l, 'QCM — RDM : la flexion plane', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (680801, 6808, 'Une poutre est sollicitée en flexion plane lorsqu''elle est soumise à :', 'En flexion plane les actions (forces et couples) sont dans un même plan contenant la ligne moyenne et un axe principal d''inertie. Sous ces charges transversales la poutre se courbe : une face est tendue, l''autre comprimée. Des forces axiales donneraient de la traction/compression, des couples de la torsion.', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6808011, 680801, 'des charges transversales situées dans un plan contenant sa ligne moyenne et un axe principal d''inertie de la section', TRUE, 1),
  (6808012, 680801, 'deux forces axiales opposées dirigées selon sa ligne moyenne', FALSE, 2),
  (6808013, 680801, 'deux couples opposés agissant autour de sa ligne moyenne', FALSE, 3),
  (6808014, 680801, 'une pression uniforme appliquée sur toute sa surface latérale', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (680802, 6808, 'L''effort tranchant $T(x)$ et le moment fléchissant $M_f(x)$ sont reliés par :', 'On a $T(x) = \dfrac{\mathrm{d}M_f(x)}{\mathrm{d}x}$. Conséquence pratique : le moment fléchissant est extrémal (la section est dangereuse) là où l''effort tranchant s''annule ou change de signe.', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6808021, 680802, '$T(x) = \dfrac{\mathrm{d}M_f(x)}{\mathrm{d}x}$', TRUE, 1),
  (6808022, 680802, '$M_f(x) = \dfrac{\mathrm{d}T(x)}{\mathrm{d}x}$', FALSE, 2),
  (6808023, 680802, '$T(x) = M_f(x)\times x$', FALSE, 3),
  (6808024, 680802, '$T(x) = \dfrac{M_f(x)}{x}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (680803, 6808, 'Dans une section droite fléchie, la contrainte normale $\sigma$ en un point situé à la distance $y$ de l''axe neutre vaut :', 'La contrainte normale varie linéairement avec $y$ : $\sigma = \dfrac{M_f}{I_{Gz}}\,y$. Elle est nulle sur l''axe neutre (qui passe par le centre de gravité $G$) et atteint son maximum sur les fibres les plus éloignées ($y = v$).', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6808031, 680803, '$\sigma = \dfrac{M_f}{I_{Gz}}\,y$, nulle sur l''axe neutre et maximale sur les fibres extrêmes', TRUE, 1),
  (6808032, 680803, '$\sigma = \dfrac{M_f}{I_{Gz}}\,y$, maximale sur l''axe neutre et nulle sur les fibres extrêmes', FALSE, 2),
  (6808033, 680803, '$\sigma = \dfrac{I_{Gz}}{M_f}\,y$, uniforme dans toute la section', FALSE, 3),
  (6808034, 680803, '$\sigma = M_f\,I_{Gz}\,y$, constante quel que soit $y$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (680804, 6808, 'Le module de flexion $W$ d''une section rectangulaire de largeur $b$ et de hauteur $h$ (axe neutre horizontal) vaut :', 'Pour un rectangle, $I_{Gz} = \dfrac{b\,h^3}{12}$ et $v = \dfrac{h}{2}$, donc $W = \dfrac{I_{Gz}}{v} = \dfrac{b\,h^2}{6}$ (en $\text{mm}^3$). À ne pas confondre $I_{Gz}$ (en $\text{mm}^4$) et le module $W$ (en $\text{mm}^3$).', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6808041, 680804, '$W = \dfrac{b\,h^2}{6}$', TRUE, 1),
  (6808042, 680804, '$W = \dfrac{b\,h^3}{12}$', FALSE, 2),
  (6808043, 680804, '$W = \dfrac{b\,h^2}{12}$', FALSE, 3),
  (6808044, 680804, '$W = \dfrac{\pi\,h^3}{32}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (680805, 6808, 'La contrainte normale maximale dans la section dangereuse s''écrit :', 'Avec $W = \dfrac{I_{Gz}}{v}$, la contrainte maximale vaut $\sigma_{max} = \dfrac{M_{f\,max}}{I_{Gz}/v} = \dfrac{M_{f\,max}}{W}$ (en $\text{MPa}$). Plus le module de flexion $W$ est grand, plus la poutre résiste.', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6808051, 680805, '$\sigma_{max} = \dfrac{M_{f\,max}}{W}$', TRUE, 1),
  (6808052, 680805, '$\sigma_{max} = \dfrac{W}{M_{f\,max}}$', FALSE, 2),
  (6808053, 680805, '$\sigma_{max} = M_{f\,max}\times W$', FALSE, 3),
  (6808054, 680805, '$\sigma_{max} = \dfrac{M_{f\,max}}{I_{Gz}}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (680806, 6808, 'La condition de résistance à la flexion impose :', 'La poutre résiste si $\sigma_{max} \le R_{pe}$, où $R_{pe} = \dfrac{R_e}{s}$ est la résistance pratique à l''extension ($s > 1$ : coefficient de sécurité). Pour dimensionner, on impose $W \ge \dfrac{M_{f\,max}}{R_{pe}}$.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6808061, 680806, '$\sigma_{max} \le R_{pe}$, avec $R_{pe} = \dfrac{R_e}{s}$', TRUE, 1),
  (6808062, 680806, '$\sigma_{max} \ge R_{pe}$, avec $R_{pe} = R_e \times s$', FALSE, 2),
  (6808063, 680806, '$M_{f\,max} \le R_{pe}$', FALSE, 3),
  (6808064, 680806, '$W \le \dfrac{M_{f\,max}}{R_{pe}}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (680807, 6808, 'Pour une poutre sur deux appuis chargée en son milieu par une force $F$ (portée $L$), la flèche maximale vaut $f = \dfrac{F\,L^3}{48\,E\,I_{Gz}}$. Cette flèche :', 'La flèche varie comme $L^3$ (l''allongement de la portée la fait croître très vite) et comme $\dfrac{1}{E\,I_{Gz}}$ : augmenter la rigidité de flexion $E\,I_{Gz}$ (matériau plus raide ou section plus haute) réduit la flèche. La flèche traduit la déformation, la contrainte traduit la résistance.', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6808071, 680807, 'croît avec le cube de la portée $L$ et diminue quand le moment quadratique $I_{Gz}$ augmente', TRUE, 1),
  (6808072, 680807, 'croît avec le cube de la portée $L$ et augmente quand $I_{Gz}$ augmente', FALSE, 2),
  (6808073, 680807, 'ne dépend pas de la portée mais seulement de la charge $F$', FALSE, 3),
  (6808074, 680807, 'diminue quand le module d''élasticité $E$ diminue', FALSE, 4);

-- accouplements-embrayages
SET @l := (SELECT id FROM lecon WHERE slug = 'accouplements-embrayages' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'si-stm'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (6809, NULL, @l, 'QCM — Accouplements et embrayages', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (680901, 6809, 'La fonction technique ACCOUPLER consiste à transmettre le mouvement de rotation d''un arbre moteur à un arbre récepteur :', 'Accoupler deux arbres, c''est les relier en conservant la même vitesse angulaire : le rapport de transmission vaut $r = 1$ et $\omega_{moteur} = \omega_{r\acute{e}cepteur}$.', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6809011, 680901, 'en multipliant la vitesse, avec un rapport de transmission $r > 1$', FALSE, 1),
  (6809012, 680901, 'en réduisant la vitesse, avec un rapport de transmission $r < 1$', FALSE, 2),
  (6809013, 680901, 'sans modifier la nature ni la vitesse du mouvement, avec un rapport $r = 1$ et $\omega_{moteur} = \omega_{r\acute{e}cepteur}$', TRUE, 3),
  (6809014, 680901, 'en transformant la rotation en translation', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (680902, 6809, 'Quelle est la différence essentielle entre un accouplement permanent et un embrayage ?', 'L''embrayage est débrayable à volonté : il lie ou sépare les arbres pendant la marche. L''accouplement permanent reste lié en permanence et ne se démonte qu''à l''arrêt.', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6809021, 680902, 'L''accouplement permanent modifie la vitesse, l''embrayage non', FALSE, 1),
  (6809022, 680902, 'L''embrayage peut lier ou séparer les deux arbres à volonté pendant le fonctionnement, l''accouplement permanent ne se sépare qu''à l''arrêt par démontage', TRUE, 2),
  (6809023, 680902, 'L''embrayage ne transmet aucun couple', FALSE, 3),
  (6809024, 680902, 'L''accouplement permanent transmet la rotation, l''embrayage la translation', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (680903, 6809, 'Un accouplement rigide (à manchon ou à plateaux) impose comme condition de fonctionnement :', 'L''accouplement rigide ne tolère aucun défaut d''alignement : un désalignement créerait des efforts importants sur les paliers et roulements. Il exige donc un alignement parfait.', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6809031, 680903, 'un alignement parfait des deux arbres', TRUE, 1),
  (6809032, 680903, 'un angle important entre les axes', FALSE, 2),
  (6809033, 680903, 'la présence obligatoire d''un élément en élastomère', FALSE, 3),
  (6809034, 680903, 'un patinage permanent des surfaces', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (680904, 6809, 'Pour transmettre la rotation entre deux arbres dont les axes se coupent en formant un angle variable, on utilise :', 'Le joint de Cardan transmet le couple entre deux arbres concourants formant un angle $\alpha$ non nul, éventuellement variable (par exemple l''arbre de transmission d''une automobile).', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6809041, 680904, 'un accouplement à plateaux boulonnés', FALSE, 1),
  (6809042, 680904, 'un joint de Cardan', TRUE, 2),
  (6809043, 680904, 'un coussinet en bronze', FALSE, 3),
  (6809044, 680904, 'un accouplement à manchon claveté', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (680905, 6809, 'Pourquoi monte-t-on souvent deux joints de Cardan en opposition sur une même transmission ?', 'Un joint de Cardan simple n''est pas homocinétique : la vitesse de sortie n''est pas rigoureusement constante. En montant deux joints en opposition, on obtient une transmission homocinétique (vitesse de sortie égale à la vitesse d''entrée).', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6809051, 680905, 'pour augmenter le couple transmissible', FALSE, 1),
  (6809052, 680905, 'pour réduire le coût de l''ensemble', FALSE, 2),
  (6809053, 680905, 'parce qu''un seul joint n''est pas homocinétique : la vitesse de sortie fluctue à chaque tour', TRUE, 3),
  (6809054, 680905, 'pour transformer la rotation en translation', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (680906, 6809, 'Le couple maximal transmissible par un embrayage à friction est donné par $C = n \cdot f \cdot F \cdot r_{moy}$. Si l''on double le nombre $n$ de surfaces de friction (tous les autres paramètres restant constants), le couple transmissible :', 'Le couple $C = n \cdot f \cdot F \cdot r_{moy}$ est proportionnel à $n$ : doubler le nombre de surfaces de friction double le couple transmissible (principe de l''embrayage multidisque).', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6809061, 680906, 'est divisé par deux', FALSE, 1),
  (6809062, 680906, 'reste inchangé', FALSE, 2),
  (6809063, 680906, 'est doublé', TRUE, 3),
  (6809064, 680906, 'est multiplié par quatre', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (680907, 6809, 'Un limiteur de couple est un accouplement de sécurité. Que se passe-t-il lorsque le couple demandé dépasse la valeur de réglage $C_{max}$ ?', 'Tant que le couple demandé est inférieur à $C_{max}$, l''ensemble tourne d''un bloc. Dès qu''il dépasse $C_{max}$, il y a patinage : le couple transmis est plafonné à $C_{max}$, ce qui protège la transmission.', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6809071, 680907, 'le couple transmis augmente sans limite', FALSE, 1),
  (6809072, 680907, 'les surfaces de friction glissent (patinage) et le couple transmis est plafonné à $C_{max}$', TRUE, 2),
  (6809073, 680907, 'l''accouplement se soude définitivement', FALSE, 3),
  (6809074, 680907, 'la vitesse de sortie double brutalement', FALSE, 4);

-- freins
SET @l := (SELECT id FROM lecon WHERE slug = 'freins' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'si-stm'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (6810, NULL, @l, 'QCM — Les freins', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (681001, 6810, 'Quel est le rôle énergétique d''un frein dans une chaîne d''énergie ?', 'Un frein exerce une action résistante par frottement : il prélève l''énergie cinétique des pièces mobiles et la convertit en chaleur, évacuée vers l''extérieur. Il ne crée pas de mouvement, il l''amortit.', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6810011, 681001, 'transformer, par frottement, l''énergie cinétique du mécanisme en énergie thermique (chaleur)', TRUE, 1),
  (6810012, 681001, 'transformer l''énergie électrique en énergie cinétique pour entraîner l''arbre', FALSE, 2),
  (6810013, 681001, 'stocker l''énergie cinétique du mécanisme pour la restituer plus tard', FALSE, 3),
  (6810014, 681001, 'augmenter la vitesse de rotation de l''arbre sans apport d''énergie', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (681002, 6810, 'Le couple de freinage d''un frein se calcule par la relation :', 'Le couple de freinage vaut $C_f = n\,f\,F\,r$, avec $n$ le nombre de surfaces frottantes, $f$ le coefficient de frottement, $F$ l''effort presseur (en N) et $r$ le rayon moyen de frottement (en m). $C_f$ s''exprime en N·m.', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6810021, 681002, '$C_f = n\,f\,F\,r$', TRUE, 1),
  (6810022, 681002, '$C_f = \dfrac{f\,F}{n\,r}$', FALSE, 2),
  (6810023, 681002, '$C_f = \dfrac{1}{2}\,n\,F\,r^2$', FALSE, 3),
  (6810024, 681002, '$C_f = n\,F\,r^2$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (681003, 6810, 'Par rapport au frein à tambour, le frein à disque présente l''avantage principal :', 'Le disque est exposé à l''air, ce qui limite l''échauffement et offre un freinage progressif. L''effet auto-serreur est au contraire une caractéristique du frein à tambour, dont le refroidissement est moins efficace.', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6810031, 681003, 'd''un meilleur refroidissement, car le disque est largement exposé à l''air', TRUE, 1),
  (6810032, 681003, 'd''un effet auto-serreur qui augmente l''effort presseur', FALSE, 2),
  (6810033, 681003, 'd''une garniture totalement à l''abri des projections et de l''humidité', FALSE, 3),
  (6810034, 681003, 'de l''absence de toute usure des garnitures de friction', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (681004, 6810, 'L''énergie cinétique d''un solide en rotation, de moment d''inertie $J$ et de vitesse angulaire $\omega$, vaut :', 'L''énergie cinétique de rotation vaut $E_c = \dfrac{1}{2}\,J\,\omega^2$, avec $E_c$ en J, $J$ en kg·m² et $\omega$ en rad/s. C''est cette énergie que le frein doit dissiper pour immobiliser le solide.', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6810041, 681004, '$E_c = \dfrac{1}{2}\,J\,\omega^2$', TRUE, 1),
  (6810042, 681004, '$E_c = \dfrac{1}{2}\,J\,\omega$', FALSE, 2),
  (6810043, 681004, '$E_c = J\,\omega^2$', FALSE, 3),
  (6810044, 681004, '$E_c = \dfrac{1}{2}\,J^2\,\omega$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (681005, 6810, 'Un frein à disque possède $n = 2$ surfaces frottantes, $f = 0{,}4$, un rayon moyen $r = 0{,}1\ \text{m}$ et un effort presseur $F = 500\ \text{N}$. Son couple de freinage vaut :', '$C_f = n\,f\,F\,r = 2 \times 0{,}4 \times 500 \times 0{,}1 = 40\ \text{N·m}$.', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6810051, 681005, '$40\ \text{N·m}$', TRUE, 1),
  (6810052, 681005, '$20\ \text{N·m}$', FALSE, 2),
  (6810053, 681005, '$80\ \text{N·m}$', FALSE, 3),
  (6810054, 681005, '$200\ \text{N·m}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (681006, 6810, 'Pourquoi une commande hydraulique permet-elle d''obtenir un grand effort presseur à partir d''un faible effort de l''opérateur ?', 'Le liquide étant incompressible, il transmet intégralement la pression du maître-cylindre vers les cylindres récepteurs. Le rapport des sections permet de démultiplier l''effort tout en le répartissant uniformément.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6810061, 681006, 'parce que le liquide, incompressible, transmet et démultiplie la pression de façon uniforme', TRUE, 1),
  (6810062, 681006, 'parce que le liquide se comprime fortement et restitue ensuite l''effort accumulé', FALSE, 2),
  (6810063, 681006, 'parce que le liquide chauffe et se dilate en augmentant la force', FALSE, 3),
  (6810064, 681006, 'parce que le frottement du liquide sur les parois crée l''effort presseur', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (681007, 6810, 'Lors de freinages répétés et rapprochés, la chaleur n''est pas évacuée assez vite. La conséquence principale est :', 'Si la chaleur dissipée n''est pas évacuée, la température des surfaces frottantes monte fortement : baisse du coefficient de frottement (perte d''efficacité, ou fading), usure accélérée des garnitures et risque de déformation du disque ou du tambour.', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6810071, 681007, 'une forte montée en température qui peut diminuer le coefficient de frottement et user les garnitures', TRUE, 1),
  (6810072, 681007, 'une augmentation automatique du couple de freinage sans risque', FALSE, 2),
  (6810073, 681007, 'un refroidissement progressif du disque qui améliore le freinage', FALSE, 3),
  (6810074, 681007, 'une transformation de la chaleur en énergie cinétique récupérée par l''arbre', FALSE, 4);

-- poulies-courroies-chaines
SET @l := (SELECT id FROM lecon WHERE slug = 'poulies-courroies-chaines' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'si-stm'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (6811, NULL, @l, 'QCM — Poulies-courroies, roues et chaines', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (681101, 6811, 'Le rapport de transmission entre l''arbre menant (indice 1) et l''arbre mené (indice 2) est défini par :', 'Le rapport de transmission compare la vitesse de sortie à la vitesse d''entrée : $r = \dfrac{n_2}{n_1} = \dfrac{\omega_2}{\omega_1}$. C''est un nombre sans unité ($r<1$ : réducteur ; $r>1$ : multiplicateur).', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6811011, 681101, '$r = \dfrac{n_2}{n_1} = \dfrac{\omega_2}{\omega_1}$, nombre sans unité', TRUE, 1),
  (6811012, 681101, '$r = n_1 \times n_2$, exprimé en $\text{tr/min}$', FALSE, 2),
  (6811013, 681101, '$r = \dfrac{n_1}{n_2}$ uniquement, exprimé en $\text{rad/s}$', FALSE, 3),
  (6811014, 681101, '$r = n_1 - n_2$, exprimé en $\text{tr/min}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (681102, 6811, 'Une poulie menante de diamètre $D_1 = 50\text{ mm}$ tourne à $n_1 = 1500\text{ tr/min}$ et entraîne par courroie une poulie menée de diamètre $D_2 = 150\text{ mm}$. La vitesse $n_2$ de la poulie menée vaut :', 'Pour les poulies-courroie, $\dfrac{n_1}{n_2} = \dfrac{D_2}{D_1}$, donc $n_2 = n_1 \times \dfrac{D_1}{D_2} = 1500 \times \dfrac{50}{150} = 500\text{ tr/min}$.', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6811021, 681102, '$n_2 = 500\text{ tr/min}$', TRUE, 1),
  (6811022, 681102, '$n_2 = 4500\text{ tr/min}$', FALSE, 2),
  (6811023, 681102, '$n_2 = 1500\text{ tr/min}$', FALSE, 3),
  (6811024, 681102, '$n_2 = 1000\text{ tr/min}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (681103, 6811, 'Dans une transmission par roue et chaîne, le pignon menant a $Z_1 = 15$ dents et tourne à $n_1 = 600\text{ tr/min}$ ; le pignon mené a $Z_2 = 45$ dents. La vitesse $n_2$ du pignon mené vaut :', 'Pour la roue-chaîne, $\dfrac{n_1}{n_2} = \dfrac{Z_2}{Z_1}$, donc $n_2 = n_1 \times \dfrac{Z_1}{Z_2} = 600 \times \dfrac{15}{45} = 200\text{ tr/min}$.', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6811031, 681103, '$n_2 = 200\text{ tr/min}$', TRUE, 1),
  (6811032, 681103, '$n_2 = 1800\text{ tr/min}$', FALSE, 2),
  (6811033, 681103, '$n_2 = 600\text{ tr/min}$', FALSE, 3),
  (6811034, 681103, '$n_2 = 900\text{ tr/min}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (681104, 6811, 'Quelle transmission n''introduit aucun glissement et garantit donc un rapport de transmission rigoureux ?', 'La roue-chaîne transmet par obstacle (les maillons s''engrènent dans les dents) : il n''y a aucun glissement, donc un rapport rigoureux. Les transmissions par adhérence (friction, courroie plate ou trapézoïdale) peuvent glisser. Seule la courroie crantée, qui engrène, supprime aussi le glissement.', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6811041, 681104, 'la transmission par roue et chaîne (par obstacle)', TRUE, 1),
  (6811042, 681104, 'les roues de friction lisses (par adhérence)', FALSE, 2),
  (6811043, 681104, 'la courroie plate (par adhérence)', FALSE, 3),
  (6811044, 681104, 'la courroie trapézoïdale (par adhérence)', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (681105, 6811, 'Concernant le sens de rotation des arbres, quelle affirmation est exacte ?', 'Avec une courroie ouverte (non croisée) ou une chaîne, les deux arbres tournent dans le même sens. Avec deux roues de friction en contact extérieur, les roues tournent en sens contraires.', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6811051, 681105, 'deux poulies reliées par une courroie ouverte tournent dans le même sens ; deux roues de friction en contact extérieur tournent en sens contraires', TRUE, 1),
  (6811052, 681105, 'les deux poulies d''une courroie ouverte tournent toujours en sens contraires', FALSE, 2),
  (6811053, 681105, 'deux roues de friction en contact extérieur tournent dans le même sens', FALSE, 3),
  (6811054, 681105, 'les deux pignons d''une chaîne tournent en sens contraires', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (681106, 6811, 'Dans un système poulies-courroie, une tension insuffisante de la courroie provoque :', 'La transmission par courroie repose sur l''adhérence : si la courroie n''est pas assez tendue, le brin tendu ne peut plus entraîner correctement la poulie, la courroie glisse et la vitesse réelle chute. On règle la tension par un galet tendeur ou par l''entraxe.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6811061, 681106, 'un glissement de la courroie, donc une perte de vitesse et de couple', TRUE, 1),
  (6811062, 681106, 'une augmentation du couple transmis', FALSE, 2),
  (6811063, 681106, 'une rotation rigoureusement synchrone des deux poulies', FALSE, 3),
  (6811064, 681106, 'une inversion du sens de rotation de la poulie menée', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (681107, 6811, 'La courroie d''un système se déplace à la même vitesse linéaire $v$ sur ses deux poulies. Pour une poulie de diamètre $D$ tournant à la vitesse $n$ (en $\text{tr/min}$), cette vitesse vaut :', 'La vitesse linéaire est $v = \omega R$ avec $\omega = \dfrac{2\pi n}{60}$ et $R = \dfrac{D}{2}$, soit $v = \dfrac{2\pi n}{60}\times\dfrac{D}{2} = \dfrac{\pi D n}{60}$ (en $\text{m/s}$ si $D$ est en mètres).', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6811071, 681107, '$v = \dfrac{\pi\,D\,n}{60}$', TRUE, 1),
  (6811072, 681107, '$v = \dfrac{D\,n}{60}$', FALSE, 2),
  (6811073, 681107, '$v = \pi\,D\,n$', FALSE, 3),
  (6811074, 681107, '$v = \dfrac{60}{\pi\,D\,n}$', FALSE, 4);

-- engrenages
SET @l := (SELECT id FROM lecon WHERE slug = 'engrenages' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'si-stm'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (6812, NULL, @l, 'QCM — Les engrenages', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (681201, 6812, 'Un engrenage dont les deux arbres sont parallèles et qui transmet le mouvement par des dents taillées sur des cylindres est un engrenage :', 'L''engrenage droit (cylindrique) relie deux arbres parallèles ; le conique relie des arbres concourants et la roue et vis sans fin des arbres orthogonaux.', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6812011, 681201, 'conique (arbres concourants)', FALSE, 1),
  (6812012, 681201, 'droit cylindrique (arbres parallèles)', TRUE, 2),
  (6812013, 681201, 'à roue et vis sans fin (arbres orthogonaux)', FALSE, 3),
  (6812014, 681201, 'à crémaillère (rotation transformée en translation)', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (681202, 6812, 'Pour que deux roues dentées puissent engrener correctement, elles doivent impérativement avoir :', 'Le module $m$ définit la taille des dents. Deux roues d''un même engrenage ont obligatoirement le même module, sinon les dents n''ont pas la même forme et ne peuvent pas engrener.', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6812021, 681202, 'le même nombre de dents $Z$', FALSE, 1),
  (6812022, 681202, 'le même diamètre primitif $d$', FALSE, 2),
  (6812023, 681202, 'le même module $m$', TRUE, 3),
  (6812024, 681202, 'la même fréquence de rotation $n$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (681203, 6812, 'Le diamètre primitif d''une roue dentée de module $m$ et de $Z$ dents vaut :', 'Le diamètre primitif est donné par $d = m\,Z$. Par exemple un pignon de module $m = 2\text{ mm}$ et $Z = 18$ dents a un diamètre $d = 2 \times 18 = 36\text{ mm}$.', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6812031, 681203, '$d = \dfrac{m}{Z}$', FALSE, 1),
  (6812032, 681203, '$d = m + Z$', FALSE, 2),
  (6812033, 681203, '$d = m\,Z$', TRUE, 3),
  (6812034, 681203, '$d = m\,Z^2$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (681204, 6812, 'Une roue menante de $Z_1 = 20$ dents engrène avec une roue menée de $Z_2 = 60$ dents. Le rapport de transmission $r = \dfrac{n_2}{n_1}$ vaut :', '$r = \dfrac{Z_1}{Z_2} = \dfrac{20}{60} = \dfrac{1}{3}$. Comme $r < 1$, l''arbre de sortie tourne moins vite que l''entrée : le système est un réducteur.', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6812041, 681204, '$r = 3$ (multiplicateur)', FALSE, 1),
  (6812042, 681204, '$r = \dfrac{1}{3}$ (réducteur)', TRUE, 2),
  (6812043, 681204, '$r = 1$ (prise directe)', FALSE, 3),
  (6812044, 681204, '$r = \dfrac{20}{80}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (681205, 6812, 'Pour un engrenage droit à contact extérieur, les deux roues tournent :', 'À contact extérieur, les deux roues tournent en sens contraires. Le même sens n''est obtenu qu''avec un contact intérieur (roue dans une couronne dentée).', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6812051, 681205, 'dans le même sens', FALSE, 1),
  (6812052, 681205, 'en sens contraires', TRUE, 2),
  (6812053, 681205, 'à la même vitesse angulaire', FALSE, 3),
  (6812054, 681205, 'sans aucune relation de sens', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (681206, 6812, 'Dans un train simple en série, une roue intermédiaire (roue « folle ») qui est à la fois menée puis menante :', 'Le nombre de dents de la roue intermédiaire apparaît au numérateur et au dénominateur : il se simplifie. Elle ne modifie pas la valeur du rapport, mais elle change le sens de rotation et rapproche les arbres.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6812061, 681206, 'double la valeur du rapport de transmission', FALSE, 1),
  (6812062, 681206, 'se simplifie : son $Z$ n''intervient pas dans la valeur du rapport, elle ne change que le sens', TRUE, 2),
  (6812063, 681206, 'impose le module de tout le train', FALSE, 3),
  (6812064, 681206, 'annule la transmission du mouvement', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (681207, 6812, 'Un train d''engrenages à deux étages a pour roues menantes $Z_1 = 15$ et $Z_3 = 20$, et pour roues menées $Z_2 = 45$ et $Z_4 = 60$. Le rapport global $r = \dfrac{Z_1 \, Z_3}{Z_2 \, Z_4}$ vaut :', 'Le rapport global est le produit des rapports : $r = \dfrac{Z_1 \, Z_3}{Z_2 \, Z_4} = \dfrac{15 \times 20}{45 \times 60} = \dfrac{300}{2700} = \dfrac{1}{9}$.', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6812071, 681207, '$r = \dfrac{1}{9}$', TRUE, 1),
  (6812072, 681207, '$r = \dfrac{1}{3}$', FALSE, 2),
  (6812073, 681207, '$r = 9$', FALSE, 3),
  (6812074, 681207, '$r = \dfrac{1}{2}$', FALSE, 4);

-- reducteurs
SET @l := (SELECT id FROM lecon WHERE slug = 'reducteurs' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'si-stm'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (6813, NULL, @l, 'QCM — Les reducteurs de vitesse', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (681301, 6813, 'Quelle est la fonction d''un réducteur de vitesse placé entre un moteur et un récepteur ?', 'Un réducteur réduit $\omega_s$ par rapport à $\omega_e$ tout en augmentant le couple ($C_s > C_e$) : la puissance $P = C\,\omega$ étant conservée, baisser $\omega$ revient à monter $C$. Le mouvement reste une rotation.', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6813011, 681301, 'Augmenter la vitesse de rotation et diminuer le couple disponible', FALSE, 1),
  (6813012, 681301, 'Diminuer la vitesse de rotation tout en augmentant le couple, sans changer la nature du mouvement', TRUE, 2),
  (6813013, 681301, 'Transformer la rotation du moteur en translation du récepteur', FALSE, 3),
  (6813014, 681301, 'Conserver à l''identique la vitesse et le couple du moteur', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (681302, 6813, 'Le rapport de réduction $r$ d''un réducteur est défini par :', 'Le rapport de réduction est le rapport de la vitesse de sortie sur la vitesse d''entrée : $r = \dfrac{\omega_s}{\omega_e} = \dfrac{N_s}{N_e}$. Pour un réducteur, la sortie tourne moins vite que l''entrée, donc $r < 1$.', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6813021, 681302, '$r = \dfrac{\omega_e}{\omega_s}$, et il est toujours supérieur à $1$', FALSE, 1),
  (6813022, 681302, '$r = \dfrac{\omega_s}{\omega_e} = \dfrac{N_s}{N_e}$, avec $r < 1$ pour un réducteur', TRUE, 2),
  (6813023, 681302, '$r = \omega_s \times \omega_e$', FALSE, 3),
  (6813024, 681302, '$r = C_s \times C_e$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (681303, 6813, 'Un réducteur à un seul étage comporte un pignon menant $Z_1 = 15$ dents engrenant avec une roue menée $Z_2 = 45$ dents. La valeur absolue du rapport de réduction vaut :', 'Pour un engrènement, $|r| = \dfrac{Z_{\text{menante}}}{Z_{\text{menée}}} = \dfrac{15}{45} = \dfrac{1}{3}$ : la sortie tourne $3$ fois moins vite que l''entrée.', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6813031, 681303, '$|r| = 3$', FALSE, 1),
  (6813032, 681303, '$|r| = \dfrac{1}{3}$', TRUE, 2),
  (6813033, 681303, '$|r| = \dfrac{1}{45}$', FALSE, 3),
  (6813034, 681303, '$|r| = 45 \times 15 = 675$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (681304, 6813, 'Pour un train d''engrenages à plusieurs étages, la valeur absolue du rapport global se calcule par :', 'Le rapport global est le produit des rapports de chaque étage : $|r| = \dfrac{\text{produit des dents des roues menantes}}{\text{produit des dents des roues menées}}$.', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6813041, 681304, '$|r| = \dfrac{\prod Z_{\text{menées}}}{\prod Z_{\text{menantes}}}$', FALSE, 1),
  (6813042, 681304, '$|r| = \dfrac{\prod Z_{\text{menantes}}}{\prod Z_{\text{menées}}}$', TRUE, 2),
  (6813043, 681304, '$|r| = \sum Z_{\text{menantes}} - \sum Z_{\text{menées}}$', FALSE, 3),
  (6813044, 681304, '$|r| = \prod Z_{\text{menantes}} \times \prod Z_{\text{menées}}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (681305, 6813, 'En tenant compte du rendement $\eta$, le couple de sortie d''un réducteur de rapport $r$ attaqué par un couple $C_e$ vaut :', 'La conservation de puissance avec pertes donne $C_s\,\omega_s = \eta\,C_e\,\omega_e$, d''où $C_s = \dfrac{\eta\,C_e}{r}$. Comme $r < 1$, le couple est multiplié par le facteur $\dfrac{\eta}{r}$.', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6813051, 681305, '$C_s = r\,\eta\,C_e$', FALSE, 1),
  (6813052, 681305, '$C_s = \dfrac{\eta\,C_e}{r}$', TRUE, 2),
  (6813053, 681305, '$C_s = \dfrac{r}{\eta\,C_e}$', FALSE, 3),
  (6813054, 681305, '$C_s = \eta + \dfrac{C_e}{r}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (681306, 6813, 'Dans un train épicycloïdal, la relation de Willis qui lie le planétaire $1$, la couronne $3$ et le porte-satellites $PS$ s''écrit :', 'Les satellites ayant un axe mobile porté par le porte-satellites, on raisonne dans le repère du $PS$ : $\dfrac{\omega_1 - \omega_{PS}}{\omega_3 - \omega_{PS}} = -\dfrac{Z_3}{Z_1} = \lambda$, la raison basique du train.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6813061, 681306, '$\dfrac{\omega_1 - \omega_{PS}}{\omega_3 - \omega_{PS}} = -\dfrac{Z_3}{Z_1}$', TRUE, 1),
  (6813062, 681306, '$\dfrac{\omega_1}{\omega_3} = -\dfrac{Z_3}{Z_1}$', FALSE, 2),
  (6813063, 681306, '$\omega_1 + \omega_3 = \omega_{PS}$', FALSE, 3),
  (6813064, 681306, '$\dfrac{\omega_1 - \omega_{PS}}{\omega_3 - \omega_{PS}} = \dfrac{Z_1}{Z_3}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (681307, 6813, 'Un réducteur à deux étages a des rendements d''étage $\eta_1 = 0{,}97$ et $\eta_2 = 0{,}95$. Son rendement global vaut :', 'Les pertes se cumulent : le rendement global est le produit des rendements d''étage, $\eta = \eta_1 \times \eta_2 = 0{,}97 \times 0{,}95 \approx 0{,}92$. Plus il y a d''engrènements, plus le rendement baisse.', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6813071, 681307, '$\eta = 0{,}97 + 0{,}95 = 1{,}92$', FALSE, 1),
  (6813072, 681307, '$\eta = \eta_1 \times \eta_2 \approx 0{,}92$', TRUE, 2),
  (6813073, 681307, '$\eta = \dfrac{0{,}97 + 0{,}95}{2} = 0{,}96$', FALSE, 3),
  (6813074, 681307, '$\eta = 0{,}97 - 0{,}95 = 0{,}02$', FALSE, 4);

-- boites-vitesses
SET @l := (SELECT id FROM lecon WHERE slug = 'boites-vitesses' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'si-stm'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (6814, NULL, @l, 'QCM — Les boites de vitesses', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (681401, 6814, 'Quel est le rôle principal d''une boîte de vitesses dans la transmission d''un véhicule ?', 'La boîte de vitesses ne crée pas d''énergie : la puissance $P = C \cdot \omega$ reste sensiblement constante. Elle répartit cette puissance entre couple et vitesse en choisissant le rapport de réduction le mieux adapté.', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6814011, 681401, 'Produire l''énergie nécessaire au déplacement du véhicule', FALSE, 1),
  (6814012, 681401, 'Adapter le couple et la vitesse fournis aux roues en sélectionnant un rapport de réduction adapté', TRUE, 2),
  (6814013, 681401, 'Augmenter la puissance délivrée par le moteur', FALSE, 3),
  (6814014, 681401, 'Refroidir le moteur thermique en régime élevé', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (681402, 6814, 'Dans une boîte mécanique, l''arbre relié au moteur par l''embrayage et l''arbre relié à la transmission sont respectivement :', 'L''arbre primaire est l''arbre d''entrée, entraîné par le moteur via l''embrayage. L''arbre secondaire est l''arbre de sortie, relié à la transmission puis aux roues.', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6814021, 681402, 'l''arbre secondaire et l''arbre primaire', FALSE, 1),
  (6814022, 681402, 'l''arbre primaire (entrée) et l''arbre secondaire (sortie)', TRUE, 2),
  (6814023, 681402, 'l''arbre de renvoi et l''arbre de pont', FALSE, 3),
  (6814024, 681402, 'deux arbres primaires montés en parallèle', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (681403, 6814, 'Le rapport de réduction d''une vitesse $i$ obtenue par un couple de pignons s''écrit :', 'Le rapport vaut $r_i = \dfrac{Z_{menant}}{Z_{mene}}$, où $Z_{menant}$ est le nombre de dents du pignon menant (arbre primaire) et $Z_{mene}$ celui du pignon mené (arbre secondaire).', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6814031, 681403, '$r_i = Z_{menant} \times Z_{mene}$', FALSE, 1),
  (6814032, 681403, '$r_i = \dfrac{Z_{mene}}{Z_{menant}}$', FALSE, 2),
  (6814033, 681403, '$r_i = \dfrac{Z_{menant}}{Z_{mene}}$', TRUE, 3),
  (6814034, 681403, '$r_i = Z_{menant} - Z_{mene}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (681404, 6814, 'La première vitesse correspond au rapport le plus réducteur. Elle est donc utilisée pour :', 'Un rapport très réducteur ($r_i$ faible) réduit fortement la vitesse de rotation mais multiplie le couple par $1/r_i$ : c''est ce qu''il faut au démarrage et en côte.', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6814041, 681404, 'obtenir la vitesse maximale du véhicule sur autoroute', FALSE, 1),
  (6814042, 681404, 'obtenir un fort couple aux roues au démarrage et en côte', TRUE, 2),
  (6814043, 681404, 'diminuer le couple disponible aux roues', FALSE, 3),
  (6814044, 681404, 'supprimer toute réduction entre moteur et roues', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (681405, 6814, 'Pour obtenir la marche arrière, on intercale un pignon intermédiaire (pignon de renvoi) entre le pignon menant et le pignon mené. Ce pignon intermédiaire :', 'En ajoutant un troisième pignon, on inverse une fois de plus le sens de rotation : l''arbre de sortie tourne dans l''autre sens. Le rapport ne dépend que des pignons menant et mené : $r_{AR} = \dfrac{Z_{menant}}{Z_{mene}}$.', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6814051, 681405, 'double la valeur du rapport de réduction', FALSE, 1),
  (6814052, 681405, 'inverse le sens de rotation de l''arbre de sortie sans changer la valeur du rapport', TRUE, 2),
  (6814053, 681405, 'supprime la transmission du couple', FALSE, 3),
  (6814054, 681405, 'transforme la rotation en translation', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (681406, 6814, 'Connaissant la vitesse de rotation de la roue $n_{roue}$ (en tr/min) et son rayon $R$, la vitesse d''avancement du véhicule vaut :', 'La vitesse linéaire d''un point de la roue vaut $V = R \cdot \omega_{roue}$, où la vitesse angulaire en rad/s s''obtient à partir du régime en tr/min par $\omega_{roue} = \dfrac{2\pi\,n_{roue}}{60}$.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6814061, 681406, '$V = R \cdot \omega_{roue}$ avec $\omega_{roue} = \dfrac{2\pi\,n_{roue}}{60}$', TRUE, 1),
  (6814062, 681406, '$V = \dfrac{R}{\omega_{roue}}$', FALSE, 2),
  (6814063, 681406, '$V = 2\pi R^2 \cdot n_{roue}$', FALSE, 3),
  (6814064, 681406, '$V = R \cdot n_{roue}$ (en m/s, sans conversion)', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (681407, 6814, 'À vitesse de véhicule donnée, passer d''un rapport supérieur à un rapport plus réducteur (rapport inférieur) a pour effet de :', 'Pour une même vitesse d''avancement, un rapport plus réducteur impose une vitesse de rotation moteur plus élevée. Cela permet de rester dans la plage de fonctionnement optimale du moteur en variant la vitesse.', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6814071, 681407, 'faire baisser le régime moteur', FALSE, 1),
  (6814072, 681407, 'faire monter le régime moteur', TRUE, 2),
  (6814073, 681407, 'laisser le régime moteur inchangé', FALSE, 3),
  (6814074, 681407, 'augmenter le rayon des roues', FALSE, 4);

-- dynamique
SET @l := (SELECT id FROM lecon WHERE slug = 'dynamique' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'si-stm'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (6815, NULL, @l, 'QCM — La dynamique', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (681501, 6815, 'Dans un repère galiléen, le principe fondamental de la dynamique en translation s''écrit :', 'Le PFD en translation relie la résultante des forces extérieures au produit de la masse par l''accélération du centre de gravité : $\sum \vec F_{\text{ext}} = m\,\vec a_G$. La somme nulle correspond au cas particulier de l''équilibre (statique).', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6815011, 681501, '$\sum \vec F_{\text{ext}} = m\,\vec a_G$', TRUE, 1),
  (6815012, 681501, '$\sum \vec F_{\text{ext}} = \vec 0$', FALSE, 2),
  (6815013, 681501, '$\sum \vec F_{\text{ext}} = m\,\vec v_G$', FALSE, 3),
  (6815014, 681501, '$\sum \vec F_{\text{ext}} = J\,\vec a_G$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (681502, 6815, 'Pour un solide en rotation autour d''un axe fixe $\Delta$, le PFD en rotation s''écrit :', 'La somme des moments des forces extérieures par rapport à l''axe est égale au produit du moment d''inertie $J_{\Delta}$ par l''accélération angulaire $\ddot\theta = \dot\omega$ : $\sum M_{\Delta} = J_{\Delta}\,\ddot\theta$. C''est l''analogue de $\sum F = ma$ pour la rotation, $J$ jouant le rôle de la masse (inertie de rotation).', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6815021, 681502, '$\sum M_{\Delta} = J_{\Delta}\,\ddot\theta$', TRUE, 1),
  (6815022, 681502, '$\sum M_{\Delta} = m\,\ddot\theta$', FALSE, 2),
  (6815023, 681502, '$\sum M_{\Delta} = J_{\Delta}\,\omega$', FALSE, 3),
  (6815024, 681502, '$\sum M_{\Delta} = \tfrac{1}{2}J_{\Delta}\,\omega^2$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (681503, 6815, 'L''énergie cinétique d''un solide de masse $m$ en translation à la vitesse $v$ vaut :', 'En translation, l''énergie cinétique est $E_c = \tfrac{1}{2} m v^2$ (en joules, avec $m$ en kg et $v$ en m/s). Elle est proportionnelle au carré de la vitesse : doubler $v$ multiplie $E_c$ par 4.', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6815031, 681503, '$E_c = \tfrac{1}{2} m v^2$', TRUE, 1),
  (6815032, 681503, '$E_c = m v^2$', FALSE, 2),
  (6815033, 681503, '$E_c = \tfrac{1}{2} m v$', FALSE, 3),
  (6815034, 681503, '$E_c = \tfrac{1}{2} J v^2$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (681504, 6815, 'Pour un solide en rotation autour d''un axe à la vitesse angulaire $\omega$, l''énergie cinétique vaut :', 'En rotation, l''énergie cinétique s''écrit $E_c = \tfrac{1}{2} J \omega^2$, où $J$ est le moment d''inertie (en $\mathrm{kg\cdot m^2}$) et $\omega$ la vitesse angulaire (en rad/s). C''est l''analogue de $\tfrac{1}{2} m v^2$.', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6815041, 681504, '$E_c = \tfrac{1}{2} J \omega^2$', TRUE, 1),
  (6815042, 681504, '$E_c = \tfrac{1}{2} m \omega^2$', FALSE, 2),
  (6815043, 681504, '$E_c = J \omega$', FALSE, 3),
  (6815044, 681504, '$E_c = \tfrac{1}{2} J \omega$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (681505, 6815, 'Le théorème de l''énergie cinétique appliqué entre deux instants énonce que :', 'Le théorème de l''énergie cinétique s''écrit $\Delta E_c = E_{c,\text{final}} - E_{c,\text{initial}} = \sum W_{\text{ext}}$ : la variation d''énergie cinétique d''un solide est égale à la somme des travaux des forces (et couples) extérieurs qui lui sont appliqués.', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6815051, 681505, 'la variation d''énergie cinétique $\Delta E_c$ est égale à la somme des travaux des forces extérieures $\sum W$', TRUE, 1),
  (6815052, 681505, 'l''énergie cinétique est toujours constante', FALSE, 2),
  (6815053, 681505, 'la variation d''énergie cinétique est égale à la somme des forces', FALSE, 3),
  (6815054, 681505, 'le travail total est nul en mouvement accéléré', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (681506, 6815, 'Un moteur fournit un couple $C$ à un arbre tournant à la vitesse angulaire $\omega$. La puissance mécanique transmise est :', 'En rotation, la puissance est le produit du couple par la vitesse angulaire : $P = C\,\omega$, avec $C$ en $\mathrm{N\cdot m}$, $\omega$ en rad/s et $P$ en watts. C''est l''analogue de $P = F\,v$ en translation.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6815061, 681506, '$P = C\,\omega$', TRUE, 1),
  (6815062, 681506, '$P = C / \omega$', FALSE, 2),
  (6815063, 681506, '$P = \tfrac{1}{2} C\,\omega^2$', FALSE, 3),
  (6815064, 681506, '$P = C + \omega$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (681507, 6815, 'Un moteur développe un couple $C = 20\ \mathrm{N\cdot m}$ à la vitesse $\omega = 150\ \mathrm{rad/s}$. La puissance utile est :', 'On applique $P = C\,\omega = 20 \times 150 = 3000\ \mathrm{W}$, soit 3 kW. On multiplie le couple par la vitesse angulaire (et non l''inverse ni une somme).', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6815071, 681507, '$3000\ \mathrm{W} = 3\ \mathrm{kW}$', TRUE, 1),
  (6815072, 681507, '$170\ \mathrm{W}$', FALSE, 2),
  (6815073, 681507, '$7{,}5\ \mathrm{W}$', FALSE, 3),
  (6815074, 681507, '$300\ \mathrm{W}$', FALSE, 4);

-- grafcet
SET @l := (SELECT id FROM lecon WHERE slug = 'grafcet' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'si-stm'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (6816, NULL, @l, 'QCM — Automatismes et GRAFCET', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (681601, 6816, 'Dans un système automatisé, la partie qui agit sur la matière d''œuvre à l''aide d''actionneurs, de préactionneurs et de capteurs est :', 'La partie opérative regroupe les actionneurs (moteurs, vérins), les préactionneurs (contacteurs, distributeurs) et les capteurs : c''est elle qui agit physiquement sur la matière d''œuvre. La partie commande, elle, traite les informations et émet les ordres.', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6816011, 681601, 'la partie commande (PC)', FALSE, 1),
  (6816012, 681601, 'la partie opérative (PO)', TRUE, 2),
  (6816013, 681601, 'la partie relation (pupitre)', FALSE, 3),
  (6816014, 681601, 'la matière d''œuvre elle-même', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (681602, 6816, 'Sur un GRAFCET, le dialogue partie commande / partie opérative se traduit par :', 'Le GRAFCET décrit le point de vue de la partie commande : les actions sont les ordres envoyés aux préactionneurs, les réceptivités sont les comptes rendus (signaux des capteurs) attendus en retour de la PO.', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6816021, 681602, 'des ordres (actions) émis par la PC et des comptes rendus (réceptivités) renvoyés par la PO', TRUE, 1),
  (6816022, 681602, 'uniquement des ordres descendants, sans retour', FALSE, 2),
  (6816023, 681602, 'des comptes rendus émis par la PC vers l''opérateur', FALSE, 3),
  (6816024, 681602, 'des efforts mécaniques échangés entre deux solides', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (681603, 6816, 'Une étape initiale d''un GRAFCET se représente par :', 'Une étape ordinaire est un carré ; l''étape initiale, active au début du cycle (règle 1), se distingue par un double carré.', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6816031, 681603, 'un simple carré contenant le numéro de l''étape', FALSE, 1),
  (6816032, 681603, 'un carré doublé (double carré)', TRUE, 2),
  (6816033, 681603, 'un trait horizontal épais', FALSE, 3),
  (6816034, 681603, 'un rectangle relié par une double barre', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (681604, 6816, 'La règle d''alternance du GRAFCET impose que, le long d''une liaison orientée :', 'L''alternance étape / transition est stricte : entre deux étapes il y a toujours une transition, et entre deux transitions il y a toujours une étape.', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6816041, 681604, 'deux étapes puissent se suivre directement', FALSE, 1),
  (6816042, 681604, 'une étape soit toujours séparée d''une autre étape par une transition, et inversement', TRUE, 2),
  (6816043, 681604, 'chaque transition soit suivie de deux étapes', FALSE, 3),
  (6816044, 681604, 'les réceptivités soient placées dans les carrés des étapes', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (681605, 6816, 'Une transition est franchie lorsque :', 'Règle 2 : le franchissement exige deux conditions simultanées, la transition validée (étape(s) amont active(s)) et la réceptivité associée vraie. Le franchissement active alors les étapes aval et désactive les étapes amont (règle 3).', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6816051, 681605, 'sa réceptivité est vraie, indépendamment des étapes amont', FALSE, 1),
  (6816052, 681605, 'elle est validée (toutes les étapes amont actives) ET sa réceptivité est vraie', TRUE, 2),
  (6816053, 681605, 'au moins une de ses étapes amont est active, la réceptivité étant quelconque', FALSE, 3),
  (6816054, 681605, 'son étape aval devient active', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (681606, 6816, 'Une structure dans laquelle une seule transition active simultanément plusieurs branches parallèles, repérée par une double barre horizontale, est :', 'La divergence en ET, symbolisée par une double barre, lance plusieurs branches simultanément. La convergence en ET (double barre également) synchronise : sa transition n''est franchie que lorsque toutes les étapes en fin de branche sont actives. La structure OU, elle, utilise un simple trait.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6816061, 681606, 'une divergence en OU (sélection de séquences)', FALSE, 1),
  (6816062, 681606, 'une divergence en ET (séquences simultanées)', TRUE, 2),
  (6816063, 681606, 'une séquence linéaire', FALSE, 3),
  (6816064, 681606, 'un saut d''étapes', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (681607, 6816, 'Le cycle d''un automate programmable industriel (API) se déroule dans l''ordre :', 'L''API exécute en boucle : acquisition (lecture des entrées / capteurs), traitement (exécution du programme calculant l''évolution du GRAFCET), puis mise à jour (écriture des sorties vers les préactionneurs).', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6816071, 681607, 'traitement, acquisition, mise à jour des sorties', FALSE, 1),
  (6816072, 681607, 'acquisition des entrées, traitement du programme, mise à jour des sorties', TRUE, 2),
  (6816073, 681607, 'mise à jour des sorties, acquisition des entrées, traitement', FALSE, 3),
  (6816074, 681607, 'acquisition des sorties, traitement, écriture des entrées', FALSE, 4);

-- convertisseurs-can-cna
SET @l := (SELECT id FROM lecon WHERE slug = 'convertisseurs-can-cna' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'si-stm'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (6817, NULL, @l, 'QCM — Les convertisseurs CAN et CNA', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (681701, 6817, 'Dans une chaîne d''acquisition, le convertisseur analogique-numérique (CAN) a pour rôle de :', 'Le CAN convertit une tension analogique $V_e$ en un code binaire $N$. L''opération inverse (nombre vers tension) est assurée par le CNA ; l''amplification et le filtrage relèvent du conditionnement.', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6817011, 681701, 'transformer une grandeur analogique (tension) en un nombre binaire exploitable par le calculateur', TRUE, 1),
  (6817012, 681701, 'transformer un mot binaire en une tension analogique destinée à un actionneur', FALSE, 2),
  (6817013, 681701, 'amplifier le signal issu du capteur avant traitement', FALSE, 3),
  (6817014, 681701, 'filtrer les parasites haute fréquence du signal d''entrée', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (681702, 6817, 'Le quantum $q$ d''un convertisseur de résolution $n$ bits et de tension de référence $V_{ref}$ vaut :', 'Le quantum est le plus petit écart de tension discernable : $q = \dfrac{V_{ref}}{2^n}$. C''est la pleine échelle $V_{ref}$ divisée par le nombre de niveaux $2^n$.', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6817021, 681702, '$q = \dfrac{V_{ref}}{2^n}$', TRUE, 1),
  (6817022, 681702, '$q = \dfrac{V_{ref}}{2^n - 1}$', FALSE, 2),
  (6817023, 681702, '$q = V_{ref}\times 2^n$', FALSE, 3),
  (6817024, 681702, '$q = \dfrac{2^n}{V_{ref}}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (681703, 6817, 'Pour un CNA, la tension de sortie associée au mot binaire de valeur décimale $N$ est :', 'La sortie d''un CNA est proportionnelle au nombre appliqué : $V_s = q\,N$, où $q$ est le quantum et $N$ la valeur décimale du mot binaire d''entrée.', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6817031, 681703, '$V_s = q\,N$', TRUE, 1),
  (6817032, 681703, '$V_s = \dfrac{N}{q}$', FALSE, 2),
  (6817033, 681703, '$V_s = q + N$', FALSE, 3),
  (6817034, 681703, '$V_s = \dfrac{q}{N}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (681704, 6817, 'Un convertisseur a une résolution de $n$ bits. Le nombre de niveaux qu''il peut distinguer est :', 'Un mot de $n$ bits prend $2^n$ valeurs (de $0$ à $2^n-1$), soit $2^n$ niveaux distincts. Plus $n$ est grand, plus le quantum est petit et la conversion fine.', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6817041, 681704, '$2^n$', TRUE, 1),
  (6817042, 681704, '$n^2$', FALSE, 2),
  (6817043, 681704, '$2n$', FALSE, 3),
  (6817044, 681704, '$2^n - 1$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (681705, 6817, 'Un CAN reçoit une tension d''entrée $V_e$. Le code décimal $N$ qu''il délivre s''obtient par :', 'Le code est le nombre entier de quanta contenus dans $V_e$ : $N = E\!\left(\dfrac{V_e}{q}\right)$. La tension reconstituée $N\,q$ est alors légèrement inférieure à $V_e$.', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6817051, 681705, '$N = E\!\left(\dfrac{V_e}{q}\right)$, partie entière du rapport', TRUE, 1),
  (6817052, 681705, '$N = E\!\left(\dfrac{q}{V_e}\right)$', FALSE, 2),
  (6817053, 681705, '$N = V_e\times q$', FALSE, 3),
  (6817054, 681705, '$N = E(V_e\times 2^n)$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (681706, 6817, 'L''erreur de quantification maximale d''un convertisseur idéal est de l''ordre de :', 'La discrétisation introduit une incertitude inévitable bornée par un demi-quantum : $|\varepsilon|_{max} = \dfrac{q}{2}$. Diminuer $q$ (augmenter $n$) réduit cette erreur.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6817061, 681706, '$\dfrac{q}{2}$', TRUE, 1),
  (6817062, 681706, '$2q$', FALSE, 2),
  (6817063, 681706, '$q^2$', FALSE, 3),
  (6817064, 681706, '$\dfrac{V_{ref}}{2}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (681707, 6817, 'À tension de référence $V_{ref}$ fixée, la tension de sortie maximale d''un CNA de $n$ bits est :', 'Le plus grand code est $N = 2^n - 1$, d''où $V_s^{max} = q\,(2^n-1) = q\,2^n - q = V_{ref} - q$. La pleine échelle $V_{ref}$ n''est jamais tout à fait atteinte : il manque toujours un quantum.', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6817071, 681707, '$V_s^{max} = q\,(2^n - 1) = V_{ref} - q$', TRUE, 1),
  (6817072, 681707, '$V_s^{max} = q\times 2^n = V_{ref}$', FALSE, 2),
  (6817073, 681707, '$V_s^{max} = V_{ref} + q$', FALSE, 3),
  (6817074, 681707, '$V_s^{max} = \dfrac{V_{ref}}{2}$', FALSE, 4);

-- asservissement
SET @l := (SELECT id FROM lecon WHERE slug = 'asservissement' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'si-stm'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (6818, NULL, @l, 'QCM — L''asservissement', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (681801, 6818, 'Un système est dit en boucle ouverte (BO) lorsque :', 'En boucle ouverte, la commande est appliquée « en aveugle » : la sortie n''est ni mesurée ni comparée à la valeur voulue, donc elle n''agit pas sur la commande. Le système subit les perturbations sans les corriger.', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6818011, 681801, 'la sortie est mesurée puis comparée à la consigne', FALSE, 1),
  (6818012, 681801, 'la grandeur de sortie n''a aucune influence sur la commande', TRUE, 2),
  (6818013, 681801, 'il possède une chaîne de retour et un comparateur', FALSE, 3),
  (6818014, 681801, 'il compense automatiquement les perturbations', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (681802, 6818, 'Dans un système asservi (boucle fermée), le rôle du comparateur est de :', 'Le comparateur (ou soustracteur) réalise la différence entre l''entrée de consigne $E$ et la mesure $M$ issue de la chaîne de retour : il fournit l''écart $\varepsilon = E - M$ qui pilote le correcteur.', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6818021, 681802, 'amplifier la grandeur de sortie', FALSE, 1),
  (6818022, 681802, 'convertir l''énergie électrique en énergie mécanique', FALSE, 2),
  (6818023, 681802, 'calculer l''écart $\varepsilon = E - M$ entre la consigne et la mesure', TRUE, 3),
  (6818024, 681802, 'mesurer la grandeur de sortie', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (681803, 6818, 'La fonction de transfert $H$ d''un bloc relie l''entrée et la sortie par :', 'La fonction de transfert est par définition le rapport de la grandeur de sortie sur la grandeur d''entrée : $H = S/E$. On en déduit $S = H \cdot E$.', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6818031, 681803, '$H = E - S$', FALSE, 1),
  (6818032, 681803, '$H = \dfrac{S}{E}$', TRUE, 2),
  (6818033, 681803, '$H = E \times S$', FALSE, 3),
  (6818034, 681803, '$H = \dfrac{E}{S}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (681804, 6818, 'Pour une boucle fermée à retour $B$ et chaîne directe $A$, la fonction de transfert globale $\dfrac{S}{E}$ vaut :', 'Avec $\varepsilon = E - B\,S$ et $S = A\,\varepsilon$, on obtient $S = A(E - BS)$, soit $S(1 + AB) = AE$, d''où $\dfrac{S}{E} = \dfrac{A}{1 + AB}$. C''est la formule de Black du retour négatif.', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6818041, 681804, '$\dfrac{A}{1 + AB}$', TRUE, 1),
  (6818042, 681804, '$\dfrac{A}{1 - AB}$', FALSE, 2),
  (6818043, 681804, '$\dfrac{1 + AB}{A}$', FALSE, 3),
  (6818044, 681804, '$A \cdot B$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (681805, 6818, 'Lorsque le gain de la chaîne directe $A$ est très grand ($AB \gg 1$), la fonction de transfert en boucle fermée tend vers :', 'Si $AB \gg 1$ alors $1 + AB \approx AB$ et $\dfrac{A}{1+AB} \approx \dfrac{A}{AB} = \dfrac{1}{B}$. La sortie ne dépend plus que de la chaîne de retour $B$, ce qui rend le système robuste vis-à-vis des variations de $A$.', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6818051, 681805, '$A$', FALSE, 1),
  (6818052, 681805, '$AB$', FALSE, 2),
  (6818053, 681805, '$\dfrac{1}{B}$', TRUE, 3),
  (6818054, 681805, '$0$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (681806, 6818, 'Les trois performances principales attendues d''un système asservi sont :', 'Un bon asservissement doit être stable (la sortie converge sans osciller indéfiniment), précis (l''écart résiduel est faible) et rapide (il atteint vite la consigne). Ces trois critères sont souvent en compromis.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6818061, 681806, 'le poids, le coût et l''encombrement', FALSE, 1),
  (6818062, 681806, 'la stabilité, la précision et la rapidité', TRUE, 2),
  (6818063, 681806, 'la tension, le courant et la puissance', FALSE, 3),
  (6818064, 681806, 'la masse, la vitesse et l''accélération', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (681807, 6818, 'Dans un correcteur PID, l''action intégrale (I) sert principalement à :', 'L''action intégrale cumule l''écart dans le temps : tant que l''erreur n''est pas nulle, sa sortie augmente et continue d''agir, ce qui annule l''erreur statique en régime permanent. L''action proportionnelle (P) agit sur la rapidité et l''action dérivée (D) anticipe pour améliorer la stabilité.', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6818071, 681807, 'annuler l''erreur statique en régime permanent', TRUE, 1),
  (6818072, 681807, 'augmenter le frottement mécanique', FALSE, 2),
  (6818073, 681807, 'supprimer la chaîne de retour', FALSE, 3),
  (6818074, 681807, 'transformer l''énergie électrique en chaleur', FALSE, 4);

