-- PC 1 Bac : QCM des 26 chapitres (quiz 6201-6226).
SET SESSION sql_mode = CONCAT(@@sql_mode, ',NO_BACKSLASH_ESCAPES');

-- rotation-solide
SET @l := (SELECT id FROM lecon WHERE slug = 'rotation-solide' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'pc-1bac'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (6201, NULL, @l, 'QCM — Rotation solide', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (620101, 6201, 'Dans un mouvement de rotation, l''abscisse angulaire $\theta$ s''exprime en :', 'L''abscisse angulaire est un angle, mesuré en radians (rad) dans le Système international.', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6201011, 620101, 'radian (rad)', TRUE, 1),
  (6201012, 620101, 'mètre (m)', FALSE, 2),
  (6201013, 620101, 'mètre par seconde ($\text{m/s}$)', FALSE, 3),
  (6201014, 620101, 'hertz (Hz)', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (620102, 6201, 'Un point situé à $r = 0{,}50\ \text{m}$ de l''axe a tourné d''un angle $\theta = 2\ \text{rad}$. La longueur de l''arc parcouru est :', 'L''abscisse curviligne vérifie $s = r\,\theta = 0{,}50 \times 2 = 1{,}0\ \text{m}$.', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6201021, 620102, '$1{,}0\ \text{m}$', TRUE, 1),
  (6201022, 620102, '$0{,}25\ \text{m}$', FALSE, 2),
  (6201023, 620102, '$4{,}0\ \text{m}$', FALSE, 3),
  (6201024, 620102, '$2{,}5\ \text{m}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (620103, 6201, 'Pour un solide en rotation autour d''un axe fixe, la vitesse angulaire $\omega$ :', 'Tous les points tournent du même angle pendant la même durée : $\omega$ est la même pour tout le solide. C''est la vitesse linéaire qui dépend du rayon.', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6201031, 620103, 'est la même pour tous les points du solide', TRUE, 1),
  (6201032, 620103, 'est plus grande pour les points proches de l''axe', FALSE, 2),
  (6201033, 620103, 'augmente avec la distance à l''axe', FALSE, 3),
  (6201034, 620103, 'est nulle pour les points du bord', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (620104, 6201, 'Un disque tourne à $\omega = 10\ \text{rad/s}$. La vitesse linéaire d''un point situé à $r = 0{,}20\ \text{m}$ de l''axe est :', 'La vitesse linéaire vaut $v = r\,\omega = 0{,}20 \times 10 = 2{,}0\ \text{m/s}$.', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6201041, 620104, '$2{,}0\ \text{m/s}$', TRUE, 1),
  (6201042, 620104, '$50\ \text{m/s}$', FALSE, 2),
  (6201043, 620104, '$0{,}02\ \text{m/s}$', FALSE, 3),
  (6201044, 620104, '$5{,}0\ \text{m/s}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (620105, 6201, 'La vitesse angulaire $\omega$ et la période $T$ d''une rotation uniforme sont liées par :', 'Pendant une période, le solide balaie un tour complet, soit $2\pi$ rad : $\omega = \dfrac{2\pi}{T}$.', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6201051, 620105, '$\omega = \dfrac{2\pi}{T}$', TRUE, 1),
  (6201052, 620105, '$\omega = \dfrac{T}{2\pi}$', FALSE, 2),
  (6201053, 620105, '$\omega = 2\pi T$', FALSE, 3),
  (6201054, 620105, '$\omega = \dfrac{\pi}{T}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (620106, 6201, 'Un moteur tourne à $60\ \text{tr/min}$. Sa vitesse angulaire est :', '$60\ \text{tr/min} = 1\ \text{tr/s}$, donc $\omega = 2\pi N = 2\pi \approx 6{,}3\ \text{rad/s}$.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6201061, 620106, '$2\pi \approx 6{,}3\ \text{rad/s}$', TRUE, 1),
  (6201062, 620106, '$60\ \text{rad/s}$', FALSE, 2),
  (6201063, 620106, '$\pi \approx 3{,}1\ \text{rad/s}$', FALSE, 3),
  (6201064, 620106, '$120\pi \approx 377\ \text{rad/s}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (620107, 6201, 'Un mouvement de rotation est dit uniforme lorsque :', 'La rotation est uniforme quand la vitesse angulaire $\omega$ reste constante au cours du temps.', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6201071, 620107, 'la vitesse angulaire $\omega$ est constante', TRUE, 1),
  (6201072, 620107, 'l''abscisse angulaire $\theta$ est constante', FALSE, 2),
  (6201073, 620107, 'le rayon du solide est constant', FALSE, 3),
  (6201074, 620107, 'la période $T$ augmente avec le temps', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (620108, 6201, 'La fréquence $N$ et la période $T$ sont liées par $N = \dfrac{1}{T}$. Si $T = 0{,}25\ \text{s}$, alors :', '$N = \dfrac{1}{T} = \dfrac{1}{0{,}25} = 4\ \text{Hz}$ : le solide fait 4 tours par seconde.', 8);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6201081, 620108, '$N = 4\ \text{Hz}$', TRUE, 1),
  (6201082, 620108, '$N = 0{,}25\ \text{Hz}$', FALSE, 2),
  (6201083, 620108, '$N = 2{,}5\ \text{Hz}$', FALSE, 3),
  (6201084, 620108, '$N = 0{,}5\ \text{Hz}$', FALSE, 4);

-- travail-puissance
SET @l := (SELECT id FROM lecon WHERE slug = 'travail-puissance' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'pc-1bac'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (6202, NULL, @l, 'QCM — Travail puissance', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (620201, 6202, 'Le travail d''une force constante de valeur $F$ dont le point d''application se déplace de $A$ vers $B$ s''écrit :', 'Le travail vaut $W = F \times AB \times \cos\alpha$, où $\alpha$ est l''angle entre la force et le déplacement.', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6202011, 620201, '$W = F \times AB \times \cos\alpha$', TRUE, 1),
  (6202012, 620201, '$W = F \times AB \times \sin\alpha$', FALSE, 2),
  (6202013, 620201, '$W = \dfrac{F}{AB}$', FALSE, 3),
  (6202014, 620201, '$W = F \times AB^2$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (620202, 6202, 'Dans le Système international, le travail d''une force s''exprime en :', 'Le travail est une énergie : il s''exprime en joules (J), avec $1\,\text{J} = 1\,\text{N}\times\text{m}$.', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6202021, 620202, 'joule (J)', TRUE, 1),
  (6202022, 620202, 'watt (W)', FALSE, 2),
  (6202023, 620202, 'newton (N)', FALSE, 3),
  (6202024, 620202, 'pascal (Pa)', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (620203, 6202, 'Une force est constamment perpendiculaire au déplacement ($\alpha = 90^\circ$). Son travail est :', 'Comme $\cos 90^\circ = 0$, le travail est nul : $W = F \times AB \times 0 = 0$.', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6202031, 620203, 'nul', TRUE, 1),
  (6202032, 620203, 'moteur (positif)', FALSE, 2),
  (6202033, 620203, 'résistant (négatif)', FALSE, 3),
  (6202034, 620203, 'égal à $F \times AB$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (620204, 6202, 'Une force de frottement, toujours opposée au mouvement, effectue un travail :', 'L''angle vaut $\alpha = 180^\circ$, donc $\cos\alpha = -1$ et $W = -f \times AB < 0$ : le travail est résistant.', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6202041, 620204, 'résistant (négatif)', TRUE, 1),
  (6202042, 620204, 'moteur (positif)', FALSE, 2),
  (6202043, 620204, 'nul', FALSE, 3),
  (6202044, 620204, 'toujours supérieur à celui du poids', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (620205, 6202, 'Une force $F = 10\,\text{N}$ tire un objet dans le sens du déplacement sur $AB = 5{,}0\,\text{m}$. Son travail vaut :', 'Ici $\alpha = 0$, donc $W = F \times AB \times \cos 0 = 10 \times 5 \times 1 = 50\,\text{J}$.', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6202051, 620205, '$50\,\text{J}$', TRUE, 1),
  (6202052, 620205, '$2{,}0\,\text{J}$', FALSE, 2),
  (6202053, 620205, '$15\,\text{J}$', FALSE, 3),
  (6202054, 620205, '$0\,\text{J}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (620206, 6202, 'Un corps de masse $m = 2{,}0\,\text{kg}$ descend d''une hauteur $h = 10\,\text{m}$ ($g = 9{,}8\,\text{N}\cdot\text{kg}^{-1}$). Le travail de son poids vaut :', 'Le corps descend, donc $W(P) = +m\,g\,h = 2{,}0 \times 9{,}8 \times 10 = 196\,\text{J}$.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6202061, 620206, '$196\,\text{J}$', TRUE, 1),
  (6202062, 620206, '$-196\,\text{J}$', FALSE, 2),
  (6202063, 620206, '$20\,\text{J}$', FALSE, 3),
  (6202064, 620206, '$98\,\text{J}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (620207, 6202, 'Le travail d''un couple de moment constant $M$ qui fait tourner un solide d''un angle $\theta$ est $W = M \times \theta$. L''angle $\theta$ doit être exprimé en :', 'Dans la formule $W = M\,\theta$, l''angle de rotation doit être en radians (rad).', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6202071, 620207, 'radians (rad)', TRUE, 1),
  (6202072, 620207, 'degrés', FALSE, 2),
  (6202073, 620207, 'tours', FALSE, 3),
  (6202074, 620207, 'newton-mètres', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (620208, 6202, 'Une force motrice $F = 100\,\text{N}$ s''exerce dans le sens du mouvement d''un véhicule qui avance à $v = 5{,}0\,\text{m}\cdot\text{s}^{-1}$. La puissance instantanée vaut :', 'La puissance instantanée est $P = F \times v \times \cos\alpha$. Ici $\alpha = 0$, donc $P = 100 \times 5{,}0 = 500\,\text{W}$.', 8);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6202081, 620208, '$500\,\text{W}$', TRUE, 1),
  (6202082, 620208, '$20\,\text{W}$', FALSE, 2),
  (6202083, 620208, '$105\,\text{W}$', FALSE, 3),
  (6202084, 620208, '$2500\,\text{W}$', FALSE, 4);

-- travail-energie-cinetique
SET @l := (SELECT id FROM lecon WHERE slug = 'travail-energie-cinetique' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'pc-1bac'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (6203, NULL, @l, 'QCM — Travail energie cinetique', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (620301, 6203, 'L''énergie cinétique d''un solide en translation de masse $m$ à la vitesse $v$ s''écrit :', 'Par définition, $E_c = \dfrac{1}{2}\,m\,v^2$, avec $E_c$ en joules.', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6203011, 620301, '$\dfrac{1}{2}\,m\,v^2$', TRUE, 1),
  (6203012, 620301, '$m\,g\,h$', FALSE, 2),
  (6203013, 620301, '$\dfrac{1}{2}\,m\,v$', FALSE, 3),
  (6203014, 620301, '$m\,v^2$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (620302, 6203, 'Si la vitesse d''un solide double, son énergie cinétique est multipliée par :', '$E_c$ dépend du carré de la vitesse : si $v$ double, $E_c$ est multipliée par $2^2 = 4$.', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6203021, 620302, '$4$', TRUE, 1),
  (6203022, 620302, '$2$', FALSE, 2),
  (6203023, 620302, '$8$', FALSE, 3),
  (6203024, 620302, '$\sqrt{2}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (620303, 6203, 'L''énergie cinétique d''un solide en rotation autour d''un axe fixe, de moment d''inertie $J_\Delta$ et de vitesse angulaire $\omega$, vaut :', 'Par analogie avec la translation, $E_c = \dfrac{1}{2}\,J_\Delta\,\omega^2$.', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6203031, 620303, '$\dfrac{1}{2}\,J_\Delta\,\omega^2$', TRUE, 1),
  (6203032, 620303, '$\dfrac{1}{2}\,J_\Delta\,\omega$', FALSE, 2),
  (6203033, 620303, '$\dfrac{1}{2}\,m\,\omega^2$', FALSE, 3),
  (6203034, 620303, '$J_\Delta\,\omega^2$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (620304, 6203, 'Le théorème de l''énergie cinétique, dans un référentiel galiléen, s''énonce :', 'La variation d''énergie cinétique est égale à la somme des travaux des forces extérieures : $\Delta E_c = \sum W(\vec{F}_{ext})$.', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6203041, 620304, '$\Delta E_c = \sum W(\vec{F}_{ext})$', TRUE, 1),
  (6203042, 620304, '$\Delta E_c = \sum \vec{F}_{ext}$', FALSE, 2),
  (6203043, 620304, '$E_c = \sum W(\vec{F}_{ext})$', FALSE, 3),
  (6203044, 620304, '$\Delta E_c = 0$ toujours', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (620305, 6203, 'Un corps est lâché sans vitesse initiale d''une hauteur $h$ ; on néglige les frottements. Sa vitesse juste avant le sol vaut :', 'Le théorème de l''énergie cinétique donne $\dfrac{1}{2}m v^2 = m\,g\,h$, soit $v = \sqrt{2\,g\,h}$.', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6203051, 620305, '$\sqrt{2\,g\,h}$', TRUE, 1),
  (6203052, 620305, '$2\,g\,h$', FALSE, 2),
  (6203053, 620305, '$\sqrt{g\,h}$', FALSE, 3),
  (6203054, 620305, '$g\,h$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (620306, 6203, 'Une voiture de masse $m = 1000\ \text{kg}$ roule à $v = 20\ \text{m}\cdot\text{s}^{-1}$. Son énergie cinétique vaut :', '$E_c = \dfrac{1}{2}\times 1000 \times 20^2 = 2{,}0\times 10^5\ \text{J}$.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6203061, 620306, '$2{,}0\times 10^5\ \text{J}$', TRUE, 1),
  (6203062, 620306, '$2{,}0\times 10^4\ \text{J}$', FALSE, 2),
  (6203063, 620306, '$1{,}0\times 10^4\ \text{J}$', FALSE, 3),
  (6203064, 620306, '$4{,}0\times 10^5\ \text{J}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (620307, 6203, 'Toutes choses égales par ailleurs, si la vitesse initiale d''un véhicule double, sa distance de freinage est multipliée par :', '$d = \dfrac{m v^2}{2F}$ : la distance varie comme le carré de la vitesse, donc $\times 4$.', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6203071, 620307, '$4$', TRUE, 1),
  (6203072, 620307, '$2$', FALSE, 2),
  (6203073, 620307, '$3$', FALSE, 3),
  (6203074, 620307, '$1$ (inchangée)', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (620308, 6203, 'Lors du glissement d''un solide sur un plan incliné, le travail de la réaction normale $\vec{R}_N$ du support est :', 'La réaction normale est perpendiculaire au déplacement : son travail est nul.', 8);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6203081, 620308, 'nul', TRUE, 1),
  (6203082, 620308, 'moteur', FALSE, 2),
  (6203083, 620308, 'résistant', FALSE, 3),
  (6203084, 620308, 'égal à $m\,g\,h$', FALSE, 4);

-- energie-potentielle-mecanique
SET @l := (SELECT id FROM lecon WHERE slug = 'energie-potentielle-mecanique' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'pc-1bac'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (6204, NULL, @l, 'QCM — Energie potentielle mecanique', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (620401, 6204, 'L''énergie potentielle de pesanteur d''un corps de masse $m$ à l''altitude $z$ s''exprime :', 'Par définition $E_{pp} = m\,g\,z$, où $z$ est l''altitude par rapport à la référence choisie.', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6204011, 620401, '$E_{pp} = m\,g\,z$', TRUE, 1),
  (6204012, 620401, '$E_{pp} = \frac{1}{2}\,m\,v^{2}$', FALSE, 2),
  (6204013, 620401, '$E_{pp} = m\,g\,z^{2}$', FALSE, 3),
  (6204014, 620401, '$E_{pp} = \frac{m\,g}{z}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (620402, 6204, 'L''énergie mécanique d''un système est égale à :', 'L''énergie mécanique est la somme de l''énergie cinétique et de l''énergie potentielle : $E_m = E_c + E_{pp}$.', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6204021, 620402, '$E_m = E_c + E_{pp}$', TRUE, 1),
  (6204022, 620402, '$E_m = E_c - E_{pp}$', FALSE, 2),
  (6204023, 620402, '$E_m = E_c \times E_{pp}$', FALSE, 3),
  (6204024, 620402, '$E_m = E_{pp} - E_c$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (620403, 6204, 'Le choix de l''origine (référence) de l''énergie potentielle de pesanteur :', 'La référence $z = 0$ est arbitraire : on la choisit librement. Seules les variations $\Delta E_{pp}$ ont un sens physique.', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6204031, 620403, 'est libre : on peut la choisir où l''on veut', TRUE, 1),
  (6204032, 620403, 'est toujours imposée au centre de la Terre', FALSE, 2),
  (6204033, 620403, 'doit obligatoirement être le sol', FALSE, 3),
  (6204034, 620403, 'doit être le point le plus haut du mouvement', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (620404, 6204, 'En l''absence de frottements, lorsqu''un corps n''est soumis qu''à son poids, son énergie mécanique :', 'Le poids seul (frottements négligés) conserve l''énergie mécanique : $E_m = \text{constante}$.', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6204041, 620404, 'se conserve', TRUE, 1),
  (6204042, 620404, 'augmente sans cesse', FALSE, 2),
  (6204043, 620404, 'diminue régulièrement', FALSE, 3),
  (6204044, 620404, 's''annule au point le plus bas', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (620405, 6204, 'Lors d''une chute libre, à mesure que l''altitude $z$ diminue :', '$E_{pp}$ diminue et, l''énergie mécanique se conservant, $E_c$ augmente d''autant : $\Delta E_c = -\Delta E_{pp}$.', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6204051, 620405, '$E_{pp}$ diminue et $E_c$ augmente', TRUE, 1),
  (6204052, 620405, '$E_{pp}$ et $E_c$ augmentent toutes les deux', FALSE, 2),
  (6204053, 620405, '$E_{pp}$ et $E_c$ diminuent toutes les deux', FALSE, 3),
  (6204054, 620405, '$E_c$ diminue et $E_{pp}$ augmente', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (620406, 6204, 'Un corps lâché sans vitesse d''une hauteur $h$ (chute libre) arrive au sol avec la vitesse :', 'La conservation $\frac{1}{2}m v^{2} = m g h$ donne $v = \sqrt{2\,g\,h}$, indépendante de la masse.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6204061, 620406, '$v = \sqrt{2\,g\,h}$', TRUE, 1),
  (6204062, 620406, '$v = 2\,g\,h$', FALSE, 2),
  (6204063, 620406, '$v = \sqrt{g\,h}$', FALSE, 3),
  (6204064, 620406, '$v = \sqrt{\frac{2\,h}{g}}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (620407, 6204, 'En présence de frottements, la variation d''énergie mécanique vérifie :', 'Le théorème donne $\Delta E_m = W_{\text{frottements}}$, qui est négatif car les frottements dissipent de l''énergie.', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6204071, 620407, '$\Delta E_m = W_{\text{frottements}} < 0$', TRUE, 1),
  (6204072, 620407, '$\Delta E_m = 0$', FALSE, 2),
  (6204073, 620407, '$\Delta E_m = W_{\text{frottements}} > 0$', FALSE, 3),
  (6204074, 620407, '$E_m$ se conserve quand même', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (620408, 6204, 'Un corps de masse $m = 1~\text{kg}$ est à l''altitude $z = 10~\text{m}$ ($g = 9{,}8~\text{N}\cdot\text{kg}^{-1}$, référence au sol). Son énergie potentielle de pesanteur vaut :', '$E_{pp} = m\,g\,z = 1 \times 9{,}8 \times 10 = 98~\text{J}$.', 8);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6204081, 620408, '$98~\text{J}$', TRUE, 1),
  (6204082, 620408, '$9{,}8~\text{J}$', FALSE, 2),
  (6204083, 620408, '$980~\text{J}$', FALSE, 3),
  (6204084, 620408, '$10~\text{J}$', FALSE, 4);

-- energie-interne
SET @l := (SELECT id FROM lecon WHERE slug = 'energie-interne' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'pc-1bac'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (6205, NULL, @l, 'QCM — Energie interne', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (620501, 6205, 'L''énergie interne $U$ d''un système est :', '$U$ est la somme de l''énergie cinétique microscopique et de l''énergie potentielle d''interaction microscopique de toutes les particules.', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6205011, 620501, 'la somme de l''énergie cinétique et de l''énergie potentielle microscopiques des particules', TRUE, 1),
  (6205012, 620501, 'l''énergie cinétique du centre d''inertie du système', FALSE, 2),
  (6205013, 620501, 'l''énergie mécanique $E_c + E_{pp}$ macroscopique', FALSE, 3),
  (6205014, 620501, 'uniquement l''énergie potentielle de pesanteur', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (620502, 6205, 'Dans le Système international, l''énergie interne $U$ s''exprime en :', '$U$ est une énergie : elle se mesure en joules ($\mathrm{J}$).', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6205021, 620502, 'joule ($\mathrm{J}$)', TRUE, 1),
  (6205022, 620502, 'watt ($\mathrm{W}$)', FALSE, 2),
  (6205023, 620502, 'kelvin ($\mathrm{K}$)', FALSE, 3),
  (6205024, 620502, 'newton ($\mathrm{N}$)', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (620503, 6205, 'Le premier principe de la thermodynamique s''écrit :', 'La variation d''énergie interne est égale à la somme du travail et du transfert thermique reçus.', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6205031, 620503, '$\Delta U = W + Q$', TRUE, 1),
  (6205032, 620503, '$\Delta U = W - Q$', FALSE, 2),
  (6205033, 620503, '$\Delta U = W \times Q$', FALSE, 3),
  (6205034, 620503, '$\Delta U = \dfrac{W}{Q}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (620504, 6205, 'Lorsqu''un système reçoit de l''énergie du milieu extérieur, le travail $W$ et le transfert thermique $Q$ correspondants sont :', 'Convention : une énergie reçue est comptée positivement.', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6205041, 620504, 'positifs', TRUE, 1),
  (6205042, 620504, 'négatifs', FALSE, 2),
  (6205043, 620504, 'nuls', FALSE, 3),
  (6205044, 620504, 'toujours opposés', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (620505, 6205, 'Un transfert thermique $Q < 0$ signifie que le système :', 'Le signe négatif indique que le système cède de la chaleur au milieu extérieur.', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6205051, 620505, 'cède de la chaleur au milieu extérieur', TRUE, 1),
  (6205052, 620505, 'reçoit de la chaleur du milieu extérieur', FALSE, 2),
  (6205053, 620505, 'n''échange aucune énergie', FALSE, 3),
  (6205054, 620505, 'reçoit un travail', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (620506, 6205, 'Dans la relation $\Delta U = m\,c\,\Delta T$, la capacité thermique massique $c$ s''exprime en :', '$c$ est en $\mathrm{J\cdot kg^{-1}\cdot K^{-1}}$.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6205061, 620506, '$\mathrm{J\cdot kg^{-1}\cdot K^{-1}}$', TRUE, 1),
  (6205062, 620506, '$\mathrm{J\cdot kg\cdot K}$', FALSE, 2),
  (6205063, 620506, '$\mathrm{J\cdot K^{-1}}$', FALSE, 3),
  (6205064, 620506, '$\mathrm{kg\cdot K^{-1}}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (620507, 6205, 'Lorsqu''on chauffe un corps (sans changement d''état) et que sa température augmente, sa variation d''énergie interne est :', 'Dans $\Delta U = m\,c\,\Delta T$, $\Delta T > 0$ donc $\Delta U > 0$.', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6205071, 620507, 'positive : $\Delta U > 0$', TRUE, 1),
  (6205072, 620507, 'négative : $\Delta U < 0$', FALSE, 2),
  (6205073, 620507, 'nulle : $\Delta U = 0$', FALSE, 3),
  (6205074, 620507, 'indéterminée', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (620508, 6205, 'On chauffe $m = 0{,}50\ \mathrm{kg}$ d''eau ($c = 4185\ \mathrm{J\cdot kg^{-1}\cdot K^{-1}}$) en élevant sa température de $\Delta T = 10\ \mathrm{K}$. La variation d''énergie interne vaut environ :', '$\Delta U = m\,c\,\Delta T = 0{,}50 \times 4185 \times 10 = 20\,925\ \mathrm{J} \approx 2{,}1 \times 10^{4}\ \mathrm{J}$.', 8);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6205081, 620508, '$2{,}1 \times 10^{4}\ \mathrm{J}$', TRUE, 1),
  (6205082, 620508, '$2{,}1 \times 10^{3}\ \mathrm{J}$', FALSE, 2),
  (6205083, 620508, '$4{,}2 \times 10^{4}\ \mathrm{J}$', FALSE, 3),
  (6205084, 620508, '$8{,}4 \times 10^{2}\ \mathrm{J}$', FALSE, 4);

-- transfert-thermique
SET @l := (SELECT id FROM lecon WHERE slug = 'transfert-thermique' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'pc-1bac'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (6206, NULL, @l, 'QCM — Transfert thermique', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (620601, 6206, 'Le Soleil chauffe la Terre à travers le vide spatial. Le mode de transfert thermique mis en jeu est :', 'Seul le rayonnement (ondes électromagnétiques) peut se propager dans le vide.', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6206011, 620601, 'le rayonnement', TRUE, 1),
  (6206012, 620601, 'la conduction', FALSE, 2),
  (6206013, 620601, 'la convection', FALSE, 3),
  (6206014, 620601, 'la conduction et la convection', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (620602, 6206, 'L''unité de la capacité thermique massique $c$ dans le Système international est :', '$c$ s''exprime en $\text{J}\cdot\text{kg}^{-1}\cdot\text{K}^{-1}$ (énergie par unité de masse et de température).', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6206021, 620602, '$\text{J}\cdot\text{kg}^{-1}\cdot\text{K}^{-1}$', TRUE, 1),
  (6206022, 620602, '$\text{J}\cdot\text{K}^{-1}$', FALSE, 2),
  (6206023, 620602, '$\text{J}\cdot\text{kg}^{-1}$', FALSE, 3),
  (6206024, 620602, '$\text{W}\cdot\text{kg}^{-1}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (620603, 6206, 'Pendant un changement d''état d''un corps pur (fusion, vaporisation), la température :', 'L''énergie reçue sert à transformer la matière, pas à l''échauffer : la température reste constante.', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6206031, 620603, 'reste constante', TRUE, 1),
  (6206032, 620603, 'augmente toujours', FALSE, 2),
  (6206033, 620603, 'diminue toujours', FALSE, 3),
  (6206034, 620603, 'double', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (620604, 6206, 'Quelle quantité de chaleur faut-il pour chauffer $2\,\text{kg}$ d''eau de $20\,^\circ\text{C}$ à $30\,^\circ\text{C}$ ? ($c_{\text{eau}}=4185\,\text{J}\cdot\text{kg}^{-1}\cdot\text{K}^{-1}$)', '$Q=mc\Delta T = 2\times 4185\times 10 = 8{,}37\times 10^{4}\,\text{J}$.', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6206041, 620604, '$8{,}37\times 10^{4}\,\text{J}$', TRUE, 1),
  (6206042, 620604, '$4{,}19\times 10^{4}\,\text{J}$', FALSE, 2),
  (6206043, 620604, '$8{,}37\times 10^{3}\,\text{J}$', FALSE, 3),
  (6206044, 620604, '$1{,}67\times 10^{5}\,\text{J}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (620605, 6206, 'La capacité thermique $C$ d''un corps de masse $m$ et de capacité thermique massique $c$ vaut :', '$C = m\,c$, en $\text{J}\cdot\text{K}^{-1}$.', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6206051, 620605, '$C = m\,c$', TRUE, 1),
  (6206052, 620605, '$C = \dfrac{c}{m}$', FALSE, 2),
  (6206053, 620605, '$C = \dfrac{m}{c}$', FALSE, 3),
  (6206054, 620605, '$C = m\,c\,\Delta T$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (620606, 6206, 'La température $\theta = 27\,^\circ\text{C}$ correspond, en kelvins, à :', '$T = \theta + 273 = 27 + 273 = 300\,\text{K}$.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6206061, 620606, '$300\,\text{K}$', TRUE, 1),
  (6206062, 620606, '$246\,\text{K}$', FALSE, 2),
  (6206063, 620606, '$27\,\text{K}$', FALSE, 3),
  (6206064, 620606, '$273\,\text{K}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (620607, 6206, 'Dans un calorimètre supposé isolé (adiabatique), le bilan des quantités de chaleur échangées s''écrit :', 'Le système étant isolé, la somme des chaleurs échangées est nulle : $\sum Q_i = 0$.', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6206071, 620607, '$\sum Q_i = 0$', TRUE, 1),
  (6206072, 620607, '$\sum Q_i > 0$', FALSE, 2),
  (6206073, 620607, '$\sum Q_i < 0$', FALSE, 3),
  (6206074, 620607, '$\sum Q_i = m c \Delta T$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (620608, 6206, 'L''énergie échangée lors du changement d''état d''une masse $m$, de chaleur latente massique $L$, est :', '$Q = m\,L$, indépendante de toute variation de température.', 8);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6206081, 620608, '$Q = m\,L$', TRUE, 1),
  (6206082, 620608, '$Q = m\,L\,\Delta T$', FALSE, 2),
  (6206083, 620608, '$Q = \dfrac{L}{m}$', FALSE, 3),
  (6206084, 620608, '$Q = m\,c\,L$', FALSE, 4);

-- champ-magnetique
SET @l := (SELECT id FROM lecon WHERE slug = 'champ-magnetique' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'pc-1bac'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (6207, NULL, @l, 'QCM — Champ magnetique', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (620701, 6207, 'Le vecteur champ magnétique $\vec{B}$ en un point est repéré à l''aide :', 'On place une petite aiguille aimantée : son axe à l''équilibre donne la direction de $\vec{B}$, et le sens $S\rightarrow N$ de l''aiguille donne le sens de $\vec{B}$.', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6207011, 620701, 'd''une petite aiguille aimantée', TRUE, 1),
  (6207012, 620701, 'd''un ampèremètre', FALSE, 2),
  (6207013, 620701, 'd''un voltmètre', FALSE, 3),
  (6207014, 620701, 'd''un pendule électrique', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (620702, 6207, 'L''intensité d''un champ magnétique se mesure avec un teslamètre et s''exprime en :', 'L''unité du champ magnétique dans le Système international est le tesla, de symbole $\text{T}$.', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6207021, 620702, 'tesla $(\text{T})$', TRUE, 1),
  (6207022, 620702, 'ampère $(\text{A})$', FALSE, 2),
  (6207023, 620702, 'weber $(\text{Wb})$', FALSE, 3),
  (6207024, 620702, 'newton $(\text{N})$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (620703, 6207, 'Une ligne de champ magnétique est une courbe :', 'Une ligne de champ est tangente en chacun de ses points au vecteur $\vec{B}$ et orientée dans le sens de $\vec{B}$.', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6207031, 620703, 'tangente en chaque point au vecteur $\vec{B}$', TRUE, 1),
  (6207032, 620703, 'perpendiculaire en chaque point à $\vec{B}$', FALSE, 2),
  (6207033, 620703, 'toujours rectiligne', FALSE, 3),
  (6207034, 620703, 'qui relie deux pôles de même nom', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (620704, 6207, 'Un champ magnétique est uniforme dans une région si le vecteur $\vec{B}$ y a :', 'Un champ uniforme a partout la même direction, le même sens et la même intensité ; ses lignes de champ sont des droites parallèles et équidistantes.', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6207041, 620704, 'partout même direction, même sens et même intensité', TRUE, 1),
  (6207042, 620704, 'une intensité qui augmente avec la distance', FALSE, 2),
  (6207043, 620704, 'des lignes de champ circulaires', FALSE, 3),
  (6207044, 620704, 'un sens qui change d''un point à l''autre', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (620705, 6207, 'À l''extérieur d''un aimant droit, les lignes de champ sont orientées :', 'À l''extérieur d''un aimant, les lignes de champ sortent du pôle Nord et entrent par le pôle Sud : elles vont du pôle $N$ vers le pôle $S$.', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6207051, 620705, 'du pôle Nord vers le pôle Sud', TRUE, 1),
  (6207052, 620705, 'du pôle Sud vers le pôle Nord', FALSE, 2),
  (6207053, 620705, 'du Nord vers le Nord', FALSE, 3),
  (6207054, 620705, 'toujours parallèlement à l''aimant', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (620706, 6207, 'En un point, deux champs perpendiculaires d''intensités $B_1 = 3\,\text{mT}$ et $B_2 = 4\,\text{mT}$ se superposent. L''intensité du champ résultant vaut :', 'Pour deux champs perpendiculaires, $B=\sqrt{B_1^{2}+B_2^{2}}=\sqrt{3^{2}+4^{2}}=\sqrt{25}=5\,\text{mT}$.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6207061, 620706, '$5\,\text{mT}$', TRUE, 1),
  (6207062, 620706, '$7\,\text{mT}$', FALSE, 2),
  (6207063, 620706, '$1\,\text{mT}$', FALSE, 3),
  (6207064, 620706, '$12\,\text{mT}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (620707, 6207, 'Deux champs de même direction et de sens opposés ont pour intensités $B_1 = 7\,\text{mT}$ et $B_2 = 2\,\text{mT}$. L''intensité du champ résultant est :', 'Pour deux champs colinéaires de sens opposés, $B=|B_1-B_2|=|7-2|=5\,\text{mT}$, dans le sens du champ le plus intense.', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6207071, 620707, '$5\,\text{mT}$', TRUE, 1),
  (6207072, 620707, '$9\,\text{mT}$', FALSE, 2),
  (6207073, 620707, '$14\,\text{mT}$', FALSE, 3),
  (6207074, 620707, '$\sqrt{53}\,\text{mT}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (620708, 6207, 'Une aiguille aimantée libre de tourner dans le plan horizontal s''oriente approximativement selon la direction :', 'La Terre se comporte comme un aimant : la composante horizontale du champ terrestre oriente la boussole selon la direction Sud–Nord géographique.', 8);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6207081, 620708, 'Sud–Nord géographique', TRUE, 1),
  (6207082, 620708, 'Est–Ouest', FALSE, 2),
  (6207083, 620708, 'verticale', FALSE, 3),
  (6207084, 620708, 'perpendiculaire au méridien', FALSE, 4);

-- champ-magnetique-courant
SET @l := (SELECT id FROM lecon WHERE slug = 'champ-magnetique-courant' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'pc-1bac'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (6208, NULL, @l, 'QCM — Champ magnetique courant', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (620801, 6208, 'L''expérience d''Œrsted (1820) met en évidence que :', 'Une aiguille aimantée dévie au voisinage d''un fil parcouru par un courant : un courant électrique crée un champ magnétique.', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6208011, 620801, 'un courant électrique crée un champ magnétique', TRUE, 1),
  (6208012, 620801, 'un aimant crée un courant électrique', FALSE, 2),
  (6208013, 620801, 'un champ magnétique chauffe un conducteur', FALSE, 3),
  (6208014, 620801, 'le courant ne produit aucun effet magnétique', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (620802, 6208, 'Dans le Système international, l''intensité du champ magnétique $B$ s''exprime en :', 'L''unité du champ magnétique est le tesla ($\mathrm{T}$).', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6208021, 620802, 'tesla ($\mathrm{T}$)', TRUE, 1),
  (6208022, 620802, 'ampère ($\mathrm{A}$)', FALSE, 2),
  (6208023, 620802, 'weber ($\mathrm{Wb}$)', FALSE, 3),
  (6208024, 620802, 'newton ($\mathrm{N}$)', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (620803, 6208, 'L''intensité du champ magnétique créé par un fil rectiligne à la distance $d$ est :', 'Pour un fil rectiligne, $B = \dfrac{\mu_0\, I}{2\pi\, d}$ : $B$ est proportionnel à $I$ et inversement proportionnel à $d$.', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6208031, 620803, '$B = \dfrac{\mu_0\, I}{2\pi\, d}$', TRUE, 1),
  (6208032, 620803, '$B = \dfrac{\mu_0\, I\, d}{2\pi}$', FALSE, 2),
  (6208033, 620803, '$B = \dfrac{2\pi\, d}{\mu_0\, I}$', FALSE, 3),
  (6208034, 620803, '$B = \mu_0\, I\, d$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (620804, 6208, 'À l''intérieur d''un solénoïde, l''intensité du champ magnétique est donnée par :', 'Pour un solénoïde, $B = \mu_0\, n\, I$, où $n = N/L$ est le nombre de spires par mètre.', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6208041, 620804, '$B = \mu_0\, n\, I$', TRUE, 1),
  (6208042, 620804, '$B = \dfrac{\mu_0\, I}{2\pi\, n}$', FALSE, 2),
  (6208043, 620804, '$B = \dfrac{n\, I}{\mu_0}$', FALSE, 3),
  (6208044, 620804, '$B = \mu_0\, \dfrac{I}{n}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (620805, 6208, 'À l''intérieur d''un solénoïde parcouru par un courant continu, le champ magnétique est :', 'Loin des extrémités, le champ est uniforme à l''intérieur du solénoïde (même direction, même sens, même intensité).', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6208051, 620805, 'uniforme', TRUE, 1),
  (6208052, 620805, 'nul', FALSE, 2),
  (6208053, 620805, 'radial (dirigé vers l''axe)', FALSE, 3),
  (6208054, 620805, 'd''autant plus grand qu''on s''approche des spires', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (620806, 6208, 'Un fil rectiligne est parcouru par $I = 20\ \mathrm{A}$. L''intensité du champ à $d = 10\ \mathrm{cm}$ vaut (avec $\mu_0 = 4\pi \times 10^{-7}\ \mathrm{S.I.}$) :', '$B = \dfrac{\mu_0 I}{2\pi d} = \dfrac{4\pi \times 10^{-7} \times 20}{2\pi \times 0{,}10} = 4 \times 10^{-5}\ \mathrm{T}$.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6208061, 620806, '$4 \times 10^{-5}\ \mathrm{T}$', TRUE, 1),
  (6208062, 620806, '$4 \times 10^{-4}\ \mathrm{T}$', FALSE, 2),
  (6208063, 620806, '$2 \times 10^{-5}\ \mathrm{T}$', FALSE, 3),
  (6208064, 620806, '$8 \times 10^{-5}\ \mathrm{T}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (620807, 6208, 'Un solénoïde comporte $n = 1000$ spires par mètre et est parcouru par $I = 3\ \mathrm{A}$. L''intensité du champ à l''intérieur vaut environ :', '$B = \mu_0 n I = 4\pi \times 10^{-7} \times 1000 \times 3 \approx 3{,}8 \times 10^{-3}\ \mathrm{T}$.', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6208071, 620807, '$3{,}8 \times 10^{-3}\ \mathrm{T}$', TRUE, 1),
  (6208072, 620807, '$3{,}8 \times 10^{-6}\ \mathrm{T}$', FALSE, 2),
  (6208073, 620807, '$1{,}3 \times 10^{-3}\ \mathrm{T}$', FALSE, 3),
  (6208074, 620807, '$7{,}5 \times 10^{-3}\ \mathrm{T}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (620808, 6208, 'Deux fils parallèles voisins sont parcourus par des courants de même intensité et de même sens. Au milieu du segment qui les joint, le champ magnétique résultant est :', 'Au milieu, les deux champs ont la même intensité et des sens opposés : ils se compensent, donc $B = 0$.', 8);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6208081, 620808, 'nul', TRUE, 1),
  (6208082, 620808, 'le double du champ d''un seul fil', FALSE, 2),
  (6208083, 620808, 'égal au champ d''un seul fil', FALSE, 3),
  (6208084, 620808, 'dirigé selon les fils', FALSE, 4);

-- forces-laplace
SET @l := (SELECT id FROM lecon WHERE slug = 'forces-laplace' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'pc-1bac'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (6209, NULL, @l, 'QCM — Forces laplace', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (620901, 6209, 'L''expression vectorielle de la force de Laplace exercée sur une portion rectiligne de conducteur est :', 'La force de Laplace s''écrit $\vec{F} = I\,\vec{l}\wedge\vec{B}$, où $\vec{l}$ est orienté dans le sens du courant.', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6209011, 620901, '$\vec{F} = I\,\vec{l}\wedge\vec{B}$', TRUE, 1),
  (6209012, 620901, '$\vec{F} = I\,\vec{B}\wedge\vec{l}$', FALSE, 2),
  (6209013, 620901, '$\vec{F} = \vec{l}\wedge\vec{B}$', FALSE, 3),
  (6209014, 620901, '$\vec{F} = I\,\vec{l}\cdot\vec{B}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (620902, 6209, 'La valeur de la force de Laplace, quand le conducteur fait un angle $\alpha$ avec le champ, est :', 'On a $F = B\,I\,l\,\sin\alpha$ : la force dépend du sinus de l''angle entre $\vec{l}$ et $\vec{B}$.', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6209021, 620902, '$F = B\,I\,l\,\sin\alpha$', TRUE, 1),
  (6209022, 620902, '$F = B\,I\,l\,\cos\alpha$', FALSE, 2),
  (6209023, 620902, '$F = \dfrac{B\,I}{l}$', FALSE, 3),
  (6209024, 620902, '$F = B\,I\,l^{2}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (620903, 6209, 'Dans le Système international, l''intensité du champ magnétique $B$ s''exprime en :', 'L''unité du champ magnétique est le tesla, de symbole $\text{T}$.', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6209031, 620903, 'tesla $(\text{T})$', TRUE, 1),
  (6209032, 620903, 'ampère $(\text{A})$', FALSE, 2),
  (6209033, 620903, 'newton $(\text{N})$', FALSE, 3),
  (6209034, 620903, 'weber $(\text{Wb})$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (620904, 6209, 'La force de Laplace est maximale lorsque le conducteur est :', 'La force vaut $F = B\,I\,l\,\sin\alpha$ ; elle est maximale pour $\sin\alpha = 1$, soit $\alpha = 90^\circ$ ($\vec{l}\perp\vec{B}$).', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6209041, 620904, 'perpendiculaire au champ $\vec{B}$ ($\alpha = 90^\circ$)', TRUE, 1),
  (6209042, 620904, 'parallèle au champ $\vec{B}$ ($\alpha = 0^\circ$)', FALSE, 2),
  (6209043, 620904, 'incliné de $45^\circ$ par rapport à $\vec{B}$', FALSE, 3),
  (6209044, 620904, 'incliné de $180^\circ$ par rapport à $\vec{B}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (620905, 6209, 'La force de Laplace est nulle lorsque le conducteur est :', 'Si $\vec{l}\parallel\vec{B}$ alors $\alpha = 0^\circ$ et $\sin\alpha = 0$ : la force est nulle.', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6209051, 620905, 'parallèle au champ $\vec{B}$', TRUE, 1),
  (6209052, 620905, 'perpendiculaire au champ $\vec{B}$', FALSE, 2),
  (6209053, 620905, 'incliné de $45^\circ$ par rapport à $\vec{B}$', FALSE, 3),
  (6209054, 620905, 'vertical', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (620906, 6209, 'La direction de la force de Laplace $\vec{F}$ est :', 'Le produit vectoriel $\vec{F} = I\,\vec{l}\wedge\vec{B}$ est perpendiculaire au plan formé par $\vec{l}$ et $\vec{B}$, donc à la fois au conducteur et au champ.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6209061, 620906, 'perpendiculaire à la fois au conducteur et au champ $\vec{B}$', TRUE, 1),
  (6209062, 620906, 'perpendiculaire au conducteur seulement', FALSE, 2),
  (6209063, 620906, 'perpendiculaire au champ $\vec{B}$ seulement', FALSE, 3),
  (6209064, 620906, 'parallèle au champ $\vec{B}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (620907, 6209, 'Un conducteur de longueur $l = 0{,}10\ \text{m}$, parcouru par $I = 2{,}0\ \text{A}$, est placé perpendiculairement à un champ $B = 0{,}50\ \text{T}$. La valeur de la force de Laplace est :', 'Avec $\alpha = 90^\circ$ : $F = B\,I\,l = 0{,}50 \times 2{,}0 \times 0{,}10 = 0{,}10\ \text{N}$.', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6209071, 620907, '$0{,}10\ \text{N}$', TRUE, 1),
  (6209072, 620907, '$1{,}0\ \text{N}$', FALSE, 2),
  (6209073, 620907, '$0{,}010\ \text{N}$', FALSE, 3),
  (6209074, 620907, '$0{,}25\ \text{N}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (620908, 6209, 'Sur un rail de Laplace, si l''on inverse à la fois le sens du courant et celui du champ magnétique, la force de Laplace :', 'Inverser le courant inverse $\vec{F}$ ; inverser le champ l''inverse à nouveau : les deux effets se compensent, donc $\vec{F}$ garde le même sens.', 8);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6209081, 620908, 'garde le même sens', TRUE, 1),
  (6209082, 620908, 'change de sens', FALSE, 2),
  (6209083, 620908, 'devient nulle', FALSE, 3),
  (6209084, 620908, 'double de valeur', FALSE, 4);

-- conditions-visibilite
SET @l := (SELECT id FROM lecon WHERE slug = 'conditions-visibilite' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'pc-1bac'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (6210, NULL, @l, 'QCM — Conditions visibilite', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (621001, 6210, 'Parmi ces corps, lequel est une source primaire de lumière ?', 'Une source primaire produit elle-même sa lumière ; le Soleil en est une.', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6210011, 621001, 'Le Soleil', TRUE, 1),
  (6210012, 621001, 'La Lune', FALSE, 2),
  (6210013, 621001, 'Un miroir', FALSE, 3),
  (6210014, 621001, 'Un mur blanc éclairé', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (621002, 6210, 'Pourquoi voit-on la Lune dans le ciel nocturne ?', 'La Lune est une source secondaire : elle diffuse la lumière reçue du Soleil.', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6210021, 621002, 'Elle diffuse la lumière du Soleil', TRUE, 1),
  (6210022, 621002, 'Elle produit sa propre lumière', FALSE, 2),
  (6210023, 621002, 'Elle est en feu', FALSE, 3),
  (6210024, 621002, 'Elle reçoit la lumière des étoiles uniquement', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (621003, 6210, 'Un milieu translucide est un milieu qui :', 'Il laisse passer la lumière mais ne permet pas de voir nettement à travers (image floue).', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6210031, 621003, 'Laisse passer la lumière mais ne permet pas de voir nettement', TRUE, 1),
  (6210032, 621003, 'Laisse voir nettement les objets à travers lui', FALSE, 2),
  (6210033, 621003, 'Ne laisse pas du tout passer la lumière', FALSE, 3),
  (6210034, 621003, 'Produit sa propre lumière', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (621004, 6210, 'Dans un milieu transparent et homogène, la lumière se propage :', 'C''est le principe de propagation rectiligne : la lumière suit des lignes droites.', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6210041, 621004, 'En ligne droite', TRUE, 1),
  (6210042, 621004, 'En contournant les obstacles', FALSE, 2),
  (6210043, 621004, 'En zigzag', FALSE, 3),
  (6210044, 621004, 'En cercles', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (621005, 6210, 'Quelle est la valeur approchée de la vitesse de la lumière dans le vide ?', 'On retient $c = 3{,}00\times10^{8}\ \text{m}\cdot\text{s}^{-1}$.', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6210051, 621005, '$3{,}00\times10^{8}\ \text{m}\cdot\text{s}^{-1}$', TRUE, 1),
  (6210052, 621005, '$340\ \text{m}\cdot\text{s}^{-1}$', FALSE, 2),
  (6210053, 621005, '$3{,}00\times10^{6}\ \text{m}\cdot\text{s}^{-1}$', FALSE, 3),
  (6210054, 621005, '$1{,}5\times10^{11}\ \text{m}\cdot\text{s}^{-1}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (621006, 6210, 'La distance Terre–Soleil vaut $1{,}5\times10^{11}\ \text{m}$. Combien de temps la lumière met-elle pour la parcourir ?', '$t = \dfrac{D}{c} = \dfrac{1{,}5\times10^{11}}{3{,}0\times10^{8}} = 500\ \text{s}$, soit environ 8 min 20 s.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6210061, 621006, 'Environ $500\ \text{s}$', TRUE, 1),
  (6210062, 621006, 'Environ $1\ \text{s}$', FALSE, 2),
  (6210063, 621006, 'Environ $8\ \text{s}$', FALSE, 3),
  (6210064, 621006, 'Environ $3\times10^{8}\ \text{s}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (621007, 6210, 'L''année-lumière est une unité de :', 'C''est la distance parcourue par la lumière en un an, soit environ $9{,}5\times10^{15}\ \text{m}$.', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6210071, 621007, 'Distance, valant environ $9{,}5\times10^{15}\ \text{m}$', TRUE, 1),
  (6210072, 621007, 'Durée, valant un an', FALSE, 2),
  (6210073, 621007, 'Vitesse, valant $3\times10^{8}\ \text{m}\cdot\text{s}^{-1}$', FALSE, 3),
  (6210074, 621007, 'Distance, valant exactement $1\ \text{m}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (621008, 6210, 'Une source ponctuelle éclaire une balle opaque de diamètre $d = 4\ \text{cm}$ placée à $0{,}5\ \text{m}$ de la source ; l''écran est à $2\ \text{m}$. Quel est le diamètre de l''ombre portée ?', 'Par Thalès, $D'' = d\,\dfrac{D_2}{D_1} = 4\times\dfrac{2}{0{,}5} = 16\ \text{cm}$.', 8);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6210081, 621008, '$16\ \text{cm}$', TRUE, 1),
  (6210082, 621008, '$4\ \text{cm}$', FALSE, 2),
  (6210083, 621008, '$8\ \text{cm}$', FALSE, 3),
  (6210084, 621008, '$1\ \text{cm}$', FALSE, 4);

-- miroir-plan
SET @l := (SELECT id FROM lecon WHERE slug = 'miroir-plan' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'pc-1bac'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (6211, NULL, @l, 'QCM — Miroir plan', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (621101, 6211, 'Que dit la deuxième loi de la réflexion sur les angles mesurés par rapport à la normale ?', 'L''angle de réflexion est égal à l''angle d''incidence : $r = i$.', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6211011, 621101, '$r = i$', TRUE, 1),
  (6211012, 621101, '$r = 2i$', FALSE, 2),
  (6211013, 621101, '$r = 90^\circ - i$', FALSE, 3),
  (6211014, 621101, '$r = 0$ toujours', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (621102, 6211, 'Un rayon arrive sur un miroir plan avec un angle d''incidence $i = 25^\circ$. Quel est l''angle de réflexion ?', 'Loi de la réflexion : $r = i = 25^\circ$.', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6211021, 621102, '$25^\circ$', TRUE, 1),
  (6211022, 621102, '$50^\circ$', FALSE, 2),
  (6211023, 621102, '$65^\circ$', FALSE, 3),
  (6211024, 621102, '$12{,}5^\circ$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (621103, 6211, 'L''image d''un objet réel donnée par un miroir plan est :', 'Elle est virtuelle, droite, de même taille et symétrique de l''objet par rapport au plan du miroir.', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6211031, 621103, 'virtuelle, droite et de même taille', TRUE, 1),
  (6211032, 621103, 'réelle et renversée', FALSE, 2),
  (6211033, 621103, 'virtuelle et plus petite', FALSE, 3),
  (6211034, 621103, 'réelle et de même taille', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (621104, 6211, 'Une personne se tient à $2$ m devant un miroir plan. Quelle distance la sépare de son image ?', 'L''image est symétrique : à $2$ m derrière le miroir. Distance $= 2 + 2 = 4$ m.', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6211041, 621104, '$4$ m', TRUE, 1),
  (6211042, 621104, '$2$ m', FALSE, 2),
  (6211043, 621104, '$1$ m', FALSE, 3),
  (6211044, 621104, '$8$ m', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (621105, 6211, 'Le rayon incident étant fixe, on fait tourner le miroir d''un angle $\alpha = 15^\circ$. De quel angle tourne le rayon réfléchi ?', 'Le rayon réfléchi tourne de $2\alpha = 30^\circ$.', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6211051, 621105, '$30^\circ$', TRUE, 1),
  (6211052, 621105, '$15^\circ$', FALSE, 2),
  (6211053, 621105, '$7{,}5^\circ$', FALSE, 3),
  (6211054, 621105, '$45^\circ$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (621106, 6211, 'Un rayon a un angle d''incidence $i = 30^\circ$. Quel est l''angle entre le rayon incident et le rayon réfléchi ?', 'Les deux rayons sont de part et d''autre de la normale : angle $= 2i = 60^\circ$.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6211061, 621106, '$60^\circ$', TRUE, 1),
  (6211062, 621106, '$30^\circ$', FALSE, 2),
  (6211063, 621106, '$90^\circ$', FALSE, 3),
  (6211064, 621106, '$120^\circ$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (621107, 6211, 'Deux miroirs plans sont perpendiculaires. Après deux réflexions, le rayon émergent est :', 'La déviation vaut $2\theta = 180^\circ$ : le rayon repart antiparallèle au rayon incident.', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6211071, 621107, 'antiparallèle au rayon incident', TRUE, 1),
  (6211072, 621107, 'perpendiculaire au rayon incident', FALSE, 2),
  (6211073, 621107, 'confondu avec le rayon incident', FALSE, 3),
  (6211074, 621107, 'dévié de $90^\circ$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (621108, 6211, 'Pour se voir en entier, la hauteur minimale d''un miroir plan vertical vaut, pour une personne de taille $H$ :', 'Par symétrie des rayons, la hauteur minimale est $H/2$, indépendante de la distance au miroir.', 8);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6211081, 621108, '$H/2$', TRUE, 1),
  (6211082, 621108, '$H$', FALSE, 2),
  (6211083, 621108, '$H/4$', FALSE, 3),
  (6211084, 621108, '$2H$', FALSE, 4);

-- lentille-convergente
SET @l := (SELECT id FROM lecon WHERE slug = 'lentille-convergente' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'pc-1bac'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (6212, NULL, @l, 'QCM — Lentille convergente', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (621201, 6212, 'La vergence d''une lentille convergente de distance focale $f'' = 25\,\text{cm}$ vaut :', 'On convertit en mètres : $f'' = 0{,}25\,\text{m}$, puis $C = \dfrac{1}{f''} = \dfrac{1}{0{,}25} = 4\,\delta$.', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6212011, 621201, '$4\,\delta$', TRUE, 1),
  (6212012, 621201, '$25\,\delta$', FALSE, 2),
  (6212013, 621201, '$0{,}25\,\delta$', FALSE, 3),
  (6212014, 621201, '$40\,\delta$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (621202, 6212, 'La vergence d''une lentille convergente est toujours :', 'Pour une lentille convergente, $f'' > 0$, donc $C = \dfrac{1}{f''} > 0$. Elle se mesure en dioptries.', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6212021, 621202, 'positive', TRUE, 1),
  (6212022, 621202, 'négative', FALSE, 2),
  (6212023, 621202, 'nulle', FALSE, 3),
  (6212024, 621202, 'sans unité', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (621203, 6212, 'La relation de conjugaison d''une lentille mince s''écrit :', 'La relation de conjugaison au centre optique est $\dfrac{1}{\overline{OA''}} - \dfrac{1}{\overline{OA}} = \dfrac{1}{f''}$.', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6212031, 621203, '$\dfrac{1}{\overline{OA''}} - \dfrac{1}{\overline{OA}} = \dfrac{1}{f''}$', TRUE, 1),
  (6212032, 621203, '$\dfrac{1}{\overline{OA''}} + \dfrac{1}{\overline{OA}} = \dfrac{1}{f''}$', FALSE, 2),
  (6212033, 621203, '$\overline{OA''} - \overline{OA} = f''$', FALSE, 3),
  (6212034, 621203, '$\dfrac{1}{\overline{OA}} - \dfrac{1}{\overline{OA''}} = \dfrac{1}{f''}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (621204, 6212, 'Le grandissement d''une lentille est donné par :', 'Le grandissement est $\gamma = \dfrac{\overline{A''B''}}{\overline{AB}} = \dfrac{\overline{OA''}}{\overline{OA}}$ ; c''est un nombre sans unité.', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6212041, 621204, '$\gamma = \dfrac{\overline{OA''}}{\overline{OA}}$', TRUE, 1),
  (6212042, 621204, '$\gamma = \dfrac{\overline{OA}}{\overline{OA''}}$', FALSE, 2),
  (6212043, 621204, '$\gamma = \overline{OA''} \times \overline{OA}$', FALSE, 3),
  (6212044, 621204, '$\gamma = \dfrac{1}{f''}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (621205, 6212, 'Un objet réel donne une image de grandissement $\gamma = -3$. Cette image est :', '$\gamma < 0$ donne une image renversée et $|\gamma| = 3 > 1$ une image agrandie.', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6212051, 621205, 'renversée et agrandie', TRUE, 1),
  (6212052, 621205, 'droite et agrandie', FALSE, 2),
  (6212053, 621205, 'renversée et réduite', FALSE, 3),
  (6212054, 621205, 'droite et réduite', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (621206, 6212, 'Un objet est à $\overline{OA} = -30\,\text{cm}$ d''une lentille de distance focale $f'' = 12\,\text{cm}$. La position de l''image est :', '$\dfrac{1}{\overline{OA''}} = \dfrac{1}{12} + \dfrac{1}{-30} = \dfrac{5}{60} - \dfrac{2}{60} = \dfrac{3}{60} = \dfrac{1}{20}$, donc $\overline{OA''} = 20\,\text{cm}$.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6212061, 621206, '$\overline{OA''} = 20\,\text{cm}$', TRUE, 1),
  (6212062, 621206, '$\overline{OA''} = -20\,\text{cm}$', FALSE, 2),
  (6212063, 621206, '$\overline{OA''} = 42\,\text{cm}$', FALSE, 3),
  (6212064, 621206, '$\overline{OA''} = 8{,}6\,\text{cm}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (621207, 6212, 'Une image est réelle (recueillie sur un écran) lorsque :', 'L''image réelle se forme après la lentille : $\overline{OA''} > 0$. Si $\overline{OA''} < 0$, l''image est virtuelle.', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6212071, 621207, '$\overline{OA''} > 0$', TRUE, 1),
  (6212072, 621207, '$\overline{OA''} < 0$', FALSE, 2),
  (6212073, 621207, '$\overline{OA} > 0$', FALSE, 3),
  (6212074, 621207, '$\gamma > 0$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (621208, 6212, 'Lorsqu''un objet réel est placé entre le foyer $F$ et le centre optique $O$ (cas de la loupe), l''image est :', 'Dans ce cas l''image est virtuelle, droite et agrandie : c''est le principe de la loupe.', 8);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6212081, 621208, 'virtuelle, droite et agrandie', TRUE, 1),
  (6212082, 621208, 'réelle, renversée et agrandie', FALSE, 2),
  (6212083, 621208, 'réelle, renversée et réduite', FALSE, 3),
  (6212084, 621208, 'virtuelle, renversée et réduite', FALSE, 4);

-- champ-electrostatique
SET @l := (SELECT id FROM lecon WHERE slug = 'champ-electrostatique' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'pc-1bac'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (6213, NULL, @l, 'QCM — Champ electrostatique', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (621301, 6213, 'L''expression de la valeur de la force d''interaction entre deux charges ponctuelles $q_A$ et $q_B$ distantes de $r$ est :', 'C''est la loi de Coulomb : la force varie comme l''inverse du carré de la distance.', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6213011, 621301, '$F = k\,\dfrac{|q_A\,q_B|}{r^{2}}$', TRUE, 1),
  (6213012, 621301, '$F = k\,\dfrac{|q_A\,q_B|}{r}$', FALSE, 2),
  (6213013, 621301, '$F = k\,\dfrac{r^{2}}{|q_A\,q_B|}$', FALSE, 3),
  (6213014, 621301, '$F = k\,\dfrac{|q_A + q_B|}{r^{2}}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (621302, 6213, 'Deux charges électriques de même signe :', 'Mêmes signes : répulsion ; signes contraires : attraction.', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6213021, 621302, 'se repoussent', TRUE, 1),
  (6213022, 621302, 's''attirent', FALSE, 2),
  (6213023, 621302, 'n''exercent aucune force l''une sur l''autre', FALSE, 3),
  (6213024, 621302, 's''attirent puis se repoussent', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (621303, 6213, 'Une charge ponctuelle $q = +2\times 10^{-6}\,\text{C}$ crée, à la distance $r = 0{,}3\,\text{m}$, un champ de valeur (avec $k = 9\times 10^{9}$) :', '$E = k\,|q|/r^{2} = 9\times 10^{9}\times 2\times 10^{-6}/0{,}09 = 2\times 10^{5}\ \text{N}\cdot\text{C}^{-1}$.', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6213031, 621303, '$2\times 10^{5}\ \text{N}\cdot\text{C}^{-1}$', TRUE, 1),
  (6213032, 621303, '$6\times 10^{5}\ \text{N}\cdot\text{C}^{-1}$', FALSE, 2),
  (6213033, 621303, '$2\times 10^{4}\ \text{N}\cdot\text{C}^{-1}$', FALSE, 3),
  (6213034, 621303, '$1{,}8\times 10^{4}\ \text{N}\cdot\text{C}^{-1}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (621304, 6213, 'Le vecteur champ électrostatique créé par une charge ponctuelle positive en un point $M$ est :', 'Pour une charge positive, le champ est centrifuge : il s''éloigne de la charge.', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6213041, 621304, 'dirigé en s''éloignant de la charge (centrifuge)', TRUE, 1),
  (6213042, 621304, 'dirigé vers la charge (centripète)', FALSE, 2),
  (6213043, 621304, 'nul en tout point', FALSE, 3),
  (6213044, 621304, 'tangent à un cercle centré sur la charge', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (621305, 6213, 'Entre les deux plaques d''un condensateur plan distantes de $d = 2\,\text{cm}$ et soumises à une tension $U = 100\,\text{V}$, le champ uniforme vaut :', '$E = U/d = 100 / 0{,}02 = 5\times 10^{3}\ \text{V}\cdot\text{m}^{-1}$.', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6213051, 621305, '$5\times 10^{3}\ \text{V}\cdot\text{m}^{-1}$', TRUE, 1),
  (6213052, 621305, '$5\times 10^{4}\ \text{V}\cdot\text{m}^{-1}$', FALSE, 2),
  (6213053, 621305, '$2\times 10^{3}\ \text{V}\cdot\text{m}^{-1}$', FALSE, 3),
  (6213054, 621305, '$50\ \text{V}\cdot\text{m}^{-1}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (621306, 6213, 'Quelle est l''unité du champ électrostatique dans le Système international ?', 'Le champ s''exprime en $\text{N}\cdot\text{C}^{-1}$, unité équivalente au $\text{V}\cdot\text{m}^{-1}$.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6213061, 621306, '$\text{N}\cdot\text{C}^{-1}$', TRUE, 1),
  (6213062, 621306, '$\text{N}$', FALSE, 2),
  (6213063, 621306, '$\text{C}$', FALSE, 3),
  (6213064, 621306, '$\text{N}\cdot\text{m}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (621307, 6213, 'Concernant les lignes de champ électrostatique, quelle affirmation est exacte ?', 'Les lignes de champ ne se coupent jamais et sont tangentes au vecteur $\vec{E}$ en chaque point.', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6213071, 621307, 'elles ne se coupent jamais', TRUE, 1),
  (6213072, 621307, 'elles se coupent au niveau des charges', FALSE, 2),
  (6213073, 621307, 'elles sont toujours des cercles', FALSE, 3),
  (6213074, 621307, 'elles sont perpendiculaires au vecteur $\vec{E}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (621308, 6213, 'Une charge $q = -2\times 10^{-6}\,\text{C}$ placée dans un champ uniforme $E = 10^{3}\ \text{N}\cdot\text{C}^{-1}$ subit une force de valeur :', '$F = |q|\,E = 2\times 10^{-6}\times 10^{3} = 2\times 10^{-3}\,\text{N}$ ; comme $q<0$, $\vec{F}$ est de sens opposé à $\vec{E}$.', 8);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6213081, 621308, '$2\times 10^{-3}\,\text{N}$', TRUE, 1),
  (6213082, 621308, '$5\times 10^{-3}\,\text{N}$', FALSE, 2),
  (6213083, 621308, '$2\times 10^{-9}\,\text{N}$', FALSE, 3),
  (6213084, 621308, '$0\,\text{N}$', FALSE, 4);

-- energie-potentielle-electrique
SET @l := (SELECT id FROM lecon WHERE slug = 'energie-potentielle-electrique' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'pc-1bac'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (6214, NULL, @l, 'QCM — Energie potentielle electrique', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (621401, 6214, 'Une charge $q = 2{,}0 \times 10^{-6}\ \text{C}$ est placée en un point de potentiel $V = 50\ \text{V}$. Son énergie potentielle électrostatique $E_p = qV$ vaut :', '$E_p = qV = 2{,}0 \times 10^{-6} \times 50 = 1{,}0 \times 10^{-4}\ \text{J}$.', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6214011, 621401, '$1{,}0 \times 10^{-4}\ \text{J}$', TRUE, 1),
  (6214012, 621401, '$1{,}0 \times 10^{-2}\ \text{J}$', FALSE, 2),
  (6214013, 621401, '$25\ \text{J}$', FALSE, 3),
  (6214014, 621401, '$2{,}5 \times 10^{-8}\ \text{J}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (621402, 6214, 'Une charge $q = e = 1{,}6 \times 10^{-19}\ \text{C}$ traverse une tension $U = 100\ \text{V}$. Le travail de la force électrique $W = qU$ vaut :', '$W = qU = 1{,}6 \times 10^{-19} \times 100 = 1{,}6 \times 10^{-17}\ \text{J}$.', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6214021, 621402, '$1{,}6 \times 10^{-17}\ \text{J}$', TRUE, 1),
  (6214022, 621402, '$1{,}6 \times 10^{-19}\ \text{J}$', FALSE, 2),
  (6214023, 621402, '$100\ \text{J}$', FALSE, 3),
  (6214024, 621402, '$1{,}6 \times 10^{-21}\ \text{J}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (621403, 6214, 'Deux plaques parallèles, distantes de $d = 2{,}0\ \text{cm}$, sont soumises à une tension $U = 600\ \text{V}$. La valeur du champ uniforme $E = \dfrac{U}{d}$ vaut :', '$E = \dfrac{U}{d} = \dfrac{600}{2{,}0 \times 10^{-2}} = 3{,}0 \times 10^{4}\ \text{V} \cdot \text{m}^{-1}$.', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6214031, 621403, '$3{,}0 \times 10^{4}\ \text{V} \cdot \text{m}^{-1}$', TRUE, 1),
  (6214032, 621403, '$12\ \text{V} \cdot \text{m}^{-1}$', FALSE, 2),
  (6214033, 621403, '$1{,}2 \times 10^{3}\ \text{V} \cdot \text{m}^{-1}$', FALSE, 3),
  (6214034, 621403, '$3{,}0 \times 10^{2}\ \text{V} \cdot \text{m}^{-1}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (621404, 6214, 'Un proton de charge $q = e = 1{,}6 \times 10^{-19}\ \text{C}$ est dans un champ uniforme $E = 2{,}0 \times 10^{4}\ \text{V} \cdot \text{m}^{-1}$. La valeur de la force électrique $F = qE$ vaut :', '$F = qE = 1{,}6 \times 10^{-19} \times 2{,}0 \times 10^{4} = 3{,}2 \times 10^{-15}\ \text{N}$.', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6214041, 621404, '$3{,}2 \times 10^{-15}\ \text{N}$', TRUE, 1),
  (6214042, 621404, '$3{,}2 \times 10^{-23}\ \text{N}$', FALSE, 2),
  (6214043, 621404, '$2{,}0 \times 10^{4}\ \text{N}$', FALSE, 3),
  (6214044, 621404, '$8{,}0 \times 10^{-24}\ \text{N}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (621405, 6214, 'Une particule de charge $q$ et de masse $m$, partant du repos, est accélérée par une tension $U$. Sa vitesse finale est :', 'Le théorème de l''énergie cinétique donne $\tfrac{1}{2}mv^2 = |qU|$, d''où $v = \sqrt{\dfrac{2|qU|}{m}}$.', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6214051, 621405, '$v = \sqrt{\dfrac{2|qU|}{m}}$', TRUE, 1),
  (6214052, 621405, '$v = \dfrac{2qU}{m}$', FALSE, 2),
  (6214053, 621405, '$v = \sqrt{\dfrac{|qU|}{2m}}$', FALSE, 3),
  (6214054, 621405, '$v = \sqrt{2m|qU|}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (621406, 6214, 'Sur un trajet fermé (la charge revient à son point de départ), le travail de la force électrique est :', 'Le travail ne dépend que de la tension entre départ et arrivée. Sur un trajet fermé, départ et arrivée coïncident : $U = 0$, donc $W = 0$. La force électrique est conservative.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6214061, 621406, 'nul', TRUE, 1),
  (6214062, 621406, 'maximal', FALSE, 2),
  (6214063, 621406, 'égal à $qU$ avec $U \neq 0$', FALSE, 3),
  (6214064, 621406, 'toujours négatif', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (621407, 6214, 'Entre deux plaques parallèles, le vecteur champ électrique $\vec{E}$ est dirigé :', 'Le champ pointe de la plaque de potentiel le plus élevé vers celle de potentiel le plus bas.', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6214071, 621407, 'de la plaque de potentiel le plus élevé vers celle de potentiel le plus bas', TRUE, 1),
  (6214072, 621407, 'de la plaque de potentiel le plus bas vers celle de potentiel le plus élevé', FALSE, 2),
  (6214073, 621407, 'toujours de la plaque de gauche vers celle de droite', FALSE, 3),
  (6214074, 621407, 'parallèlement aux plaques', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (621408, 6214, 'Un proton ($q = e = 1{,}6 \times 10^{-19}\ \text{C}$) partant du repos est accéléré sous une tension $U = 1000\ \text{V}$. L''énergie cinétique qu''il acquiert vaut :', '$E_c = |qU| = 1{,}6 \times 10^{-19} \times 1000 = 1{,}6 \times 10^{-16}\ \text{J}$.', 8);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6214081, 621408, '$1{,}6 \times 10^{-16}\ \text{J}$', TRUE, 1),
  (6214082, 621408, '$1{,}6 \times 10^{-19}\ \text{J}$', FALSE, 2),
  (6214083, 621408, '$1000\ \text{J}$', FALSE, 3),
  (6214084, 621408, '$1{,}6 \times 10^{-22}\ \text{J}$', FALSE, 4);

-- mesure-en-chimie
SET @l := (SELECT id FROM lecon WHERE slug = 'mesure-en-chimie' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'pc-1bac'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (6215, NULL, @l, 'QCM — Mesure en chimie', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (621501, 6215, 'La masse volumique $\rho$ d''une espèce chimique est définie par :', 'La masse volumique est le quotient de la masse par le volume : $\rho = \dfrac{m}{V}$.', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6215011, 621501, '$\rho = \dfrac{m}{V}$', TRUE, 1),
  (6215012, 621501, '$\rho = \dfrac{V}{m}$', FALSE, 2),
  (6215013, 621501, '$\rho = m \times V$', FALSE, 3),
  (6215014, 621501, '$\rho = m + V$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (621502, 6215, 'La masse volumique de l''eau vaut $\rho_{eau} = 1\,\mathrm{g\cdot cm^{-3}}$. Cela correspond à :', '$1\,\mathrm{g\cdot cm^{-3}} = 1000\,\mathrm{kg\cdot m^{-3}}$.', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6215021, 621502, '$1000\,\mathrm{kg\cdot m^{-3}}$', TRUE, 1),
  (6215022, 621502, '$1\,\mathrm{kg\cdot m^{-3}}$', FALSE, 2),
  (6215023, 621502, '$100\,\mathrm{kg\cdot m^{-3}}$', FALSE, 3),
  (6215024, 621502, '$10\,000\,\mathrm{kg\cdot m^{-3}}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (621503, 6215, 'La densité $d$ d''un liquide est :', 'La densité est le rapport $d = \dfrac{\rho}{\rho_{eau}}$, sans unité.', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6215031, 621503, 'le rapport $\dfrac{\rho}{\rho_{eau}}$, sans unité', TRUE, 1),
  (6215032, 621503, 'égale à la masse volumique en $\mathrm{kg\cdot m^{-3}}$', FALSE, 2),
  (6215033, 621503, 'le produit $\rho \times \rho_{eau}$', FALSE, 3),
  (6215034, 621503, 'exprimée en $\mathrm{g\cdot L^{-1}}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (621504, 6215, 'Pour préparer avec précision $100\,\mathrm{mL}$ d''une solution, on utilise :', 'La fiole jaugée définit avec précision un volume unique grâce à son trait de jauge.', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6215041, 621504, 'une fiole jaugée', TRUE, 1),
  (6215042, 621504, 'une éprouvette graduée', FALSE, 2),
  (6215043, 621504, 'un bécher', FALSE, 3),
  (6215044, 621504, 'une burette graduée', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (621505, 6215, 'Un échantillon de $250\,\mathrm{g}$ contient $240\,\mathrm{g}$ de produit pur. Son degré de pureté est :', '$p = \dfrac{m_{pure}}{m_{total}} \times 100 = \dfrac{240}{250} \times 100 = 96\,\%$.', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6215051, 621505, '$96\,\%$', TRUE, 1),
  (6215052, 621505, '$90\,\%$', FALSE, 2),
  (6215053, 621505, '$104\,\%$', FALSE, 3),
  (6215054, 621505, '$24\,\%$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (621506, 6215, 'On dissout $6\,\mathrm{g}$ de sel dans de l''eau pour obtenir $0{,}5\,\mathrm{L}$ de solution. La concentration massique est :', '$C_m = \dfrac{m}{V} = \dfrac{6}{0{,}5} = 12\,\mathrm{g\cdot L^{-1}}$.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6215061, 621506, '$12\,\mathrm{g\cdot L^{-1}}$', TRUE, 1),
  (6215062, 621506, '$3\,\mathrm{g\cdot L^{-1}}$', FALSE, 2),
  (6215063, 621506, '$6\,\mathrm{g\cdot L^{-1}}$', FALSE, 3),
  (6215064, 621506, '$0{,}5\,\mathrm{g\cdot L^{-1}}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (621507, 6215, 'Un volume $V = 250\,\mathrm{cm^{3}}$ est égal à :', '$1\,\mathrm{L} = 1000\,\mathrm{cm^{3}}$, donc $250\,\mathrm{cm^{3}} = 0{,}250\,\mathrm{L}$.', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6215071, 621507, '$0{,}250\,\mathrm{L}$', TRUE, 1),
  (6215072, 621507, '$2{,}50\,\mathrm{L}$', FALSE, 2),
  (6215073, 621507, '$25{,}0\,\mathrm{L}$', FALSE, 3),
  (6215074, 621507, '$2500\,\mathrm{L}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (621508, 6215, 'Un corps de densité $d = 0{,}8$ placé dans l''eau :', 'Si $d < 1$, le corps est moins dense que l''eau : il flotte.', 8);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6215081, 621508, 'flotte, car $d < 1$', TRUE, 1),
  (6215082, 621508, 'coule, car $d < 1$', FALSE, 2),
  (6215083, 621508, 'flotte, car $d > 1$', FALSE, 3),
  (6215084, 621508, 'reste en suspension au milieu', FALSE, 4);

-- quantite-de-matiere
SET @l := (SELECT id FROM lecon WHERE slug = 'quantite-de-matiere' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'pc-1bac'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (6216, NULL, @l, 'QCM — Quantite de matiere', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (621601, 6216, 'Le nombre d''Avogadro $N_A$ vaut environ :', 'Une mole contient $N_A = 6{,}02 \times 10^{23}$ entités élémentaires. C''est le nombre d''atomes contenus dans $12\ \text{g}$ de carbone 12.', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6216011, 621601, '$6{,}02 \times 10^{23}\ \text{mol}^{-1}$', TRUE, 1),
  (6216012, 621601, '$6{,}02 \times 10^{-23}\ \text{mol}^{-1}$', FALSE, 2),
  (6216013, 621601, '$3{,}00 \times 10^{8}\ \text{mol}^{-1}$', FALSE, 3),
  (6216014, 621601, '$1{,}60 \times 10^{-19}\ \text{mol}^{-1}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (621602, 6216, 'Un échantillon contient $1{,}204 \times 10^{24}$ atomes. Sa quantité de matière vaut :', 'On utilise $n = \dfrac{N}{N_A} = \dfrac{1{,}204 \times 10^{24}}{6{,}02 \times 10^{23}} = 2{,}0\ \text{mol}$.', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6216021, 621602, '$2{,}0\ \text{mol}$', TRUE, 1),
  (6216022, 621602, '$0{,}50\ \text{mol}$', FALSE, 2),
  (6216023, 621602, '$20\ \text{mol}$', FALSE, 3),
  (6216024, 621602, '$0{,}20\ \text{mol}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (621603, 6216, 'La masse molaire du dioxyde de carbone $CO_2$ vaut (avec $M(C) = 12$ et $M(O) = 16\ \text{g}\cdot\text{mol}^{-1}$) :', 'On somme les masses molaires atomiques : $M(CO_2) = 12 + 2 \times 16 = 44\ \text{g}\cdot\text{mol}^{-1}$.', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6216031, 621603, '$44\ \text{g}\cdot\text{mol}^{-1}$', TRUE, 1),
  (6216032, 621603, '$28\ \text{g}\cdot\text{mol}^{-1}$', FALSE, 2),
  (6216033, 621603, '$56\ \text{g}\cdot\text{mol}^{-1}$', FALSE, 3),
  (6216034, 621603, '$16\ \text{g}\cdot\text{mol}^{-1}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (621604, 6216, 'Quelle quantité de matière y a-t-il dans $m = 18\ \text{g}$ d''eau, de masse molaire $M = 18\ \text{g}\cdot\text{mol}^{-1}$ ?', 'On applique $n = \dfrac{m}{M} = \dfrac{18}{18} = 1{,}0\ \text{mol}$.', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6216041, 621604, '$1{,}0\ \text{mol}$', TRUE, 1),
  (6216042, 621604, '$18\ \text{mol}$', FALSE, 2),
  (6216043, 621604, '$0{,}50\ \text{mol}$', FALSE, 3),
  (6216044, 621604, '$324\ \text{mol}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (621605, 6216, 'Avec un volume molaire $V_m = 24\ \text{L}\cdot\text{mol}^{-1}$, quel volume occupe $0{,}50\ \text{mol}$ de gaz ?', 'Le volume d''un gaz vaut $V = n \times V_m = 0{,}50 \times 24 = 12\ \text{L}$.', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6216051, 621605, '$12\ \text{L}$', TRUE, 1),
  (6216052, 621605, '$48\ \text{L}$', FALSE, 2),
  (6216053, 621605, '$24\ \text{L}$', FALSE, 3),
  (6216054, 621605, '$0{,}02\ \text{L}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (621606, 6216, 'Dans la relation des gaz parfaits $PV = nRT$, quelles sont les unités du Système international ?', 'Il faut $P$ en pascals, $V$ en mètres cubes et $T$ en kelvins ($T = \theta + 273$) pour utiliser $R = 8{,}314\ \text{J}\cdot\text{mol}^{-1}\cdot\text{K}^{-1}$.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6216061, 621606, '$P$ en $\text{Pa}$, $V$ en $\text{m}^{3}$, $T$ en $\text{K}$', TRUE, 1),
  (6216062, 621606, '$P$ en $\text{hPa}$, $V$ en $\text{L}$, $T$ en $^{\circ}\text{C}$', FALSE, 2),
  (6216063, 621606, '$P$ en $\text{Pa}$, $V$ en $\text{L}$, $T$ en $^{\circ}\text{C}$', FALSE, 3),
  (6216064, 621606, '$P$ en $\text{atm}$, $V$ en $\text{m}^{3}$, $T$ en $\text{K}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (621607, 6216, 'La densité d''un gaz de masse molaire $M$ par rapport à l''air ($M_{air} = 29\ \text{g}\cdot\text{mol}^{-1}$) se calcule par :', 'La densité d''un gaz est $d = \dfrac{M}{M_{air}} = \dfrac{M}{29}$ : c''est un nombre sans unité.', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6216071, 621607, '$d = \dfrac{M}{29}$', TRUE, 1),
  (6216072, 621607, '$d = 29 \times M$', FALSE, 2),
  (6216073, 621607, '$d = \dfrac{29}{M}$', FALSE, 3),
  (6216074, 621607, '$d = \dfrac{M}{18}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (621608, 6216, 'On dissout $0{,}20\ \text{mol}$ de soluté dans un volume $V = 0{,}50\ \text{L}$ de solution. La concentration molaire vaut :', 'On applique $C = \dfrac{n}{V} = \dfrac{0{,}20}{0{,}50} = 0{,}40\ \text{mol}\cdot\text{L}^{-1}$.', 8);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6216081, 621608, '$0{,}40\ \text{mol}\cdot\text{L}^{-1}$', TRUE, 1),
  (6216082, 621608, '$0{,}10\ \text{mol}\cdot\text{L}^{-1}$', FALSE, 2),
  (6216083, 621608, '$2{,}5\ \text{mol}\cdot\text{L}^{-1}$', FALSE, 3),
  (6216084, 621608, '$0{,}04\ \text{mol}\cdot\text{L}^{-1}$', FALSE, 4);

-- solutions-electrolytiques
SET @l := (SELECT id FROM lecon WHERE slug = 'solutions-electrolytiques' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'pc-1bac'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (6217, NULL, @l, 'QCM — Solutions electrolytiques', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (621701, 6217, 'Une solution électrolytique est une solution qui :', 'La conduction du courant est assurée par les ions mobiles libérés lors de la dissolution.', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6217011, 621701, 'conduit le courant électrique grâce aux ions qu''elle contient', TRUE, 1),
  (6217012, 621701, 'ne contient que des molécules neutres', FALSE, 2),
  (6217013, 621701, 'ne conduit jamais le courant électrique', FALSE, 3),
  (6217014, 621701, 'est forcément colorée', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (621702, 6217, 'L''équation de dissolution du chlorure de calcium $\mathrm{CaCl_2}$ dans l''eau est :', 'Une mole de $\mathrm{CaCl_2}$ libère un ion $\mathrm{Ca^{2+}}$ et deux ions $\mathrm{Cl^-}$ ; la charge est conservée.', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6217021, 621702, '$\mathrm{CaCl_2 \longrightarrow Ca^{2+} + 2\,Cl^-}$', TRUE, 1),
  (6217022, 621702, '$\mathrm{CaCl_2 \longrightarrow Ca^{2+} + Cl^-}$', FALSE, 2),
  (6217023, 621702, '$\mathrm{CaCl_2 \longrightarrow Ca^+ + 2\,Cl^-}$', FALSE, 3),
  (6217024, 621702, '$\mathrm{CaCl_2 \longrightarrow 2\,Ca^{2+} + Cl^-}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (621703, 6217, 'La concentration molaire apportée d''un soluté est définie par :', '$C = n/V$ : quantité de matière de soluté dissous rapportée au volume de solution.', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6217031, 621703, '$C = \dfrac{n}{V}$', TRUE, 1),
  (6217032, 621703, '$C = n \times V$', FALSE, 2),
  (6217033, 621703, '$C = \dfrac{V}{n}$', FALSE, 3),
  (6217034, 621703, '$C = \dfrac{m}{V}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (621704, 6217, 'On dissout $0{,}20\ \mathrm{mol}$ de soluté dans $500\ \mathrm{mL}$ de solution. La concentration apportée vaut :', '$C = n/V = 0{,}20 / 0{,}500 = 0{,}40\ \mathrm{mol\cdot L^{-1}}$.', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6217041, 621704, '$0{,}40\ \mathrm{mol\cdot L^{-1}}$', TRUE, 1),
  (6217042, 621704, '$0{,}10\ \mathrm{mol\cdot L^{-1}}$', FALSE, 2),
  (6217043, 621704, '$4{,}0\ \mathrm{mol\cdot L^{-1}}$', FALSE, 3),
  (6217044, 621704, '$0{,}20\ \mathrm{mol\cdot L^{-1}}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (621705, 6217, 'Pour une solution de $\mathrm{FeCl_3}$ de concentration apportée $C$, la concentration effective en ions chlorure est :', 'Le coefficient stœchiométrique de $\mathrm{Cl^-}$ est 3, donc $[\mathrm{Cl^-}] = 3C$.', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6217051, 621705, '$[\mathrm{Cl^-}] = 3\,C$', TRUE, 1),
  (6217052, 621705, '$[\mathrm{Cl^-}] = C$', FALSE, 2),
  (6217053, 621705, '$[\mathrm{Cl^-}] = \dfrac{C}{3}$', FALSE, 3),
  (6217054, 621705, '$[\mathrm{Cl^-}] = 2\,C$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (621706, 6217, 'Pour une solution de chlorure de sodium $\mathrm{NaCl}$ de concentration apportée $C$, on a :', 'Les coefficients stœchiométriques valent 1 : $[\mathrm{Na^+}] = [\mathrm{Cl^-}] = C$, ce qui assure l''électroneutralité.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6217061, 621706, '$[\mathrm{Na^+}] = [\mathrm{Cl^-}] = C$', TRUE, 1),
  (6217062, 621706, '$[\mathrm{Na^+}] = 2\,[\mathrm{Cl^-}]$', FALSE, 2),
  (6217063, 621706, '$[\mathrm{Cl^-}] = 2\,C$', FALSE, 3),
  (6217064, 621706, '$[\mathrm{Na^+}] = \dfrac{C}{2}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (621707, 6217, 'Lors d''une dilution, la grandeur qui se conserve est :', 'On ajoute du solvant : la quantité de matière de soluté ne change pas, d''où $C_1 V_1 = C_2 V_2$.', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6217071, 621707, 'la quantité de matière de soluté', TRUE, 1),
  (6217072, 621707, 'la concentration de la solution', FALSE, 2),
  (6217073, 621707, 'le volume de la solution', FALSE, 3),
  (6217074, 621707, 'la masse volumique de l''eau', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (621708, 6217, 'On dilue 10 fois une solution de concentration $C_1 = 0{,}50\ \mathrm{mol\cdot L^{-1}}$. La concentration de la solution fille est :', 'Le facteur de dilution est 10, donc $C_2 = C_1 / 10 = 0{,}050\ \mathrm{mol\cdot L^{-1}}$.', 8);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6217081, 621708, '$0{,}050\ \mathrm{mol\cdot L^{-1}}$', TRUE, 1),
  (6217082, 621708, '$5{,}0\ \mathrm{mol\cdot L^{-1}}$', FALSE, 2),
  (6217083, 621708, '$0{,}50\ \mathrm{mol\cdot L^{-1}}$', FALSE, 3),
  (6217084, 621708, '$0{,}10\ \mathrm{mol\cdot L^{-1}}$', FALSE, 4);

-- suivi-transformation
SET @l := (SELECT id FROM lecon WHERE slug = 'suivi-transformation' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'pc-1bac'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (6218, NULL, @l, 'QCM — Suivi transformation', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (621801, 6218, 'Une équation de réaction est correctement équilibrée lorsqu''il y a :', 'L''équilibrage traduit la conservation des éléments (même nombre d''atomes de chaque côté) et la conservation de la charge électrique.', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6218011, 621801, 'conservation des éléments et de la charge électrique', TRUE, 1),
  (6218012, 621801, 'conservation du nombre de molécules', FALSE, 2),
  (6218013, 621801, 'conservation du volume des gaz', FALSE, 3),
  (6218014, 621801, 'autant de réactifs que de produits', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (621802, 6218, 'L''avancement de réaction $x$ s''exprime en :', 'L''avancement mesure une quantité de matière qui a réagi : il s''exprime en mole ($\mathrm{mol}$).', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6218021, 621802, 'mole ($\mathrm{mol}$)', TRUE, 1),
  (6218022, 621802, 'gramme ($\mathrm{g}$)', FALSE, 2),
  (6218023, 621802, 'mole par litre ($\mathrm{mol/L}$)', FALSE, 3),
  (6218024, 621802, 'litre ($\mathrm{L}$)', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (621803, 6218, 'Pour la réaction $a\,A + b\,B \rightarrow c\,C$, la quantité du réactif $A$ à l''avancement $x$ vaut :', 'Un réactif est consommé proportionnellement à son coefficient stœchiométrique : $n(A) = n_0(A) - a\,x$.', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6218031, 621803, '$n_0(A) - a\,x$', TRUE, 1),
  (6218032, 621803, '$n_0(A) + a\,x$', FALSE, 2),
  (6218033, 621803, '$n_0(A) - x$', FALSE, 3),
  (6218034, 621803, '$a\,x$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (621804, 6218, 'Le réactif limitant d''une transformation totale est le réactif :', 'Le réactif limitant est celui qui est entièrement consommé ($n = 0$) à l''avancement maximal : il arrête la réaction.', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6218041, 621804, 'entièrement consommé à l''état final', TRUE, 1),
  (6218042, 621804, 'présent en plus grande quantité au départ', FALSE, 2),
  (6218043, 621804, 'qui reste en excès à l''état final', FALSE, 3),
  (6218044, 621804, 'ayant le plus grand coefficient stœchiométrique', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (621805, 6218, 'Pour $a\,A + b\,B \rightarrow$ produits, l''avancement maximal est donné par :', 'On compare les quotients $n_0/coefficient$ ; $x_{max}$ est le plus petit d''entre eux, atteint pour le réactif limitant.', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6218051, 621805, '$x_{max} = \min\left(\dfrac{n_0(A)}{a},\ \dfrac{n_0(B)}{b}\right)$', TRUE, 1),
  (6218052, 621805, '$x_{max} = \max\left(\dfrac{n_0(A)}{a},\ \dfrac{n_0(B)}{b}\right)$', FALSE, 2),
  (6218053, 621805, '$x_{max} = n_0(A) + n_0(B)$', FALSE, 3),
  (6218054, 621805, '$x_{max} = \dfrac{n_0(A)}{a} + \dfrac{n_0(B)}{b}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (621806, 6218, 'Un mélange est stœchiométrique lorsque, pour $a\,A + b\,B \rightarrow$ produits :', 'Les réactifs sont introduits dans les proportions des coefficients : $\dfrac{n_0(A)}{a} = \dfrac{n_0(B)}{b}$. Tous les réactifs sont alors limitants.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6218061, 621806, '$\dfrac{n_0(A)}{a} = \dfrac{n_0(B)}{b}$', TRUE, 1),
  (6218062, 621806, '$n_0(A) = n_0(B)$', FALSE, 2),
  (6218063, 621806, '$a = b$', FALSE, 3),
  (6218064, 621806, '$\dfrac{n_0(A)}{b} = \dfrac{n_0(B)}{a}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (621807, 6218, 'On considère $2\,H_2 + O_2 \rightarrow 2\,H_2O$ avec $n_0(H_2) = 3{,}0\ \mathrm{mol}$ et $n_0(O_2) = 2{,}0\ \mathrm{mol}$. Le réactif limitant et l''avancement maximal sont :', '$x_{H_2} = 3{,}0/2 = 1{,}5\ \mathrm{mol}$ et $x_{O_2} = 2{,}0/1 = 2{,}0\ \mathrm{mol}$. Le minimum est $1{,}5\ \mathrm{mol}$, donc $H_2$ est limitant.', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6218071, 621807, '$H_2$ limitant, $x_{max} = 1{,}5\ \mathrm{mol}$', TRUE, 1),
  (6218072, 621807, '$O_2$ limitant, $x_{max} = 2{,}0\ \mathrm{mol}$', FALSE, 2),
  (6218073, 621807, '$H_2$ limitant, $x_{max} = 3{,}0\ \mathrm{mol}$', FALSE, 3),
  (6218074, 621807, '$O_2$ limitant, $x_{max} = 1{,}0\ \mathrm{mol}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (621808, 6218, 'Une réaction dégage $n(H_2) = 1{,}0 \times 10^{-2}\ \mathrm{mol}$ de dihydrogène. Avec un volume molaire $V_m = 24\ \mathrm{L/mol}$, le volume de gaz dégagé est :', '$V = n \times V_m = 1{,}0 \times 10^{-2} \times 24 = 0{,}24\ \mathrm{L} = 240\ \mathrm{mL}$.', 8);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6218081, 621808, '$0{,}24\ \mathrm{L}$', TRUE, 1),
  (6218082, 621808, '$2{,}4\ \mathrm{L}$', FALSE, 2),
  (6218083, 621808, '$24\ \mathrm{L}$', FALSE, 3),
  (6218084, 621808, '$4{,}2 \times 10^{-4}\ \mathrm{L}$', FALSE, 4);

-- conductimetrie
SET @l := (SELECT id FROM lecon WHERE slug = 'conductimetrie' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'pc-1bac'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (6219, NULL, @l, 'QCM — Conductimetrie', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (621901, 6219, 'La conductance $G$ d''une portion de solution s''exprime en :', 'La conductance est l''inverse d''une résistance ; son unité est le siemens (S), avec $1\ \text{S} = 1\ \Omega^{-1}$.', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6219011, 621901, 'siemens (S)', TRUE, 1),
  (6219012, 621901, 'ohm ($\Omega$)', FALSE, 2),
  (6219013, 621901, 'siemens par mètre ($\text{S}\cdot\text{m}^{-1}$)', FALSE, 3),
  (6219014, 621901, 'volt (V)', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (621902, 6219, 'Dans la relation $G = \sigma\,\dfrac{S}{L}$, la conductivité $\sigma$ s''exprime en :', '$\sigma$ est une conductivité : elle se mesure en siemens par mètre ($\text{S}\cdot\text{m}^{-1}$).', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6219021, 621902, '$\text{S}\cdot\text{m}^{-1}$', TRUE, 1),
  (6219022, 621902, '$\text{S}$', FALSE, 2),
  (6219023, 621902, '$\text{S}\cdot\text{m}^{2}\cdot\text{mol}^{-1}$', FALSE, 3),
  (6219024, 621902, '$\text{mol}\cdot\text{m}^{-3}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (621903, 6219, 'La conductivité molaire ionique $\lambda_i$ d''un ion s''exprime en :', 'Dans la loi de Kohlrausch $\sigma = \sum_i \lambda_i [X_i]$, avec $\sigma$ en $\text{S}\cdot\text{m}^{-1}$ et $[X_i]$ en $\text{mol}\cdot\text{m}^{-3}$, $\lambda_i$ se mesure en $\text{S}\cdot\text{m}^{2}\cdot\text{mol}^{-1}$.', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6219031, 621903, '$\text{S}\cdot\text{m}^{2}\cdot\text{mol}^{-1}$', TRUE, 1),
  (6219032, 621903, '$\text{S}\cdot\text{m}^{-1}$', FALSE, 2),
  (6219033, 621903, '$\text{S}$', FALSE, 3),
  (6219034, 621903, '$\text{mol}\cdot\text{L}^{-1}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (621904, 6219, 'Une cellule a deux plaques de surface $S = 2{,}0\ \text{cm}^2$ distantes de $L = 1{,}0\ \text{cm}$. Sa constante de cellule $k = \dfrac{S}{L}$ vaut :', '$S = 2{,}0\times10^{-4}\ \text{m}^2$ et $L = 1{,}0\times10^{-2}\ \text{m}$, donc $k = \dfrac{2{,}0\times10^{-4}}{1{,}0\times10^{-2}} = 2{,}0\times10^{-2}\ \text{m}$.', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6219041, 621904, '$2{,}0\times10^{-2}\ \text{m}$', TRUE, 1),
  (6219042, 621904, '$2{,}0\ \text{m}$', FALSE, 2),
  (6219043, 621904, '$5{,}0\times10^{-3}\ \text{m}$', FALSE, 3),
  (6219044, 621904, '$2{,}0\times10^{-4}\ \text{m}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (621905, 6219, 'Avec une cellule de constante $k = 2{,}0\times10^{-2}\ \text{m}$, on mesure $G = 4{,}0\ \text{mS}$. La conductivité de la solution est :', '$\sigma = \dfrac{G}{k} = \dfrac{4{,}0\times10^{-3}}{2{,}0\times10^{-2}} = 0{,}20\ \text{S}\cdot\text{m}^{-1}$.', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6219051, 621905, '$0{,}20\ \text{S}\cdot\text{m}^{-1}$', TRUE, 1),
  (6219052, 621905, '$8{,}0\times10^{-5}\ \text{S}\cdot\text{m}^{-1}$', FALSE, 2),
  (6219053, 621905, '$5{,}0\ \text{S}\cdot\text{m}^{-1}$', FALSE, 3),
  (6219054, 621905, '$2{,}0\ \text{S}\cdot\text{m}^{-1}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (621906, 6219, 'La loi de Kohlrausch relie la conductivité d''une solution à ses ions par :', 'La conductivité est la somme des contributions de chaque ion : $\sigma = \sum_i \lambda_i\,[X_i]$.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6219061, 621906, '$\sigma = \sum_i \lambda_i\,[X_i]$', TRUE, 1),
  (6219062, 621906, '$\sigma = \dfrac{\sum_i \lambda_i}{[X_i]}$', FALSE, 2),
  (6219063, 621906, '$\sigma = \sum_i \dfrac{\lambda_i}{[X_i]}$', FALSE, 3),
  (6219064, 621906, '$\sigma = \prod_i \lambda_i\,[X_i]$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (621907, 6219, 'Une solution de $NaCl$ a une concentration $C = 1{,}0\times10^{-2}\ \text{mol}\cdot\text{L}^{-1}$. Avec $\lambda_{Na^{+}} = 5{,}0\times10^{-3}$ et $\lambda_{Cl^{-}} = 7{,}6\times10^{-3}\ \text{S}\cdot\text{m}^{2}\cdot\text{mol}^{-1}$, sa conductivité vaut :', '$C = 10\ \text{mol}\cdot\text{m}^{-3}$ et $[Na^{+}] = [Cl^{-}] = C$, donc $\sigma = (5{,}0 + 7{,}6)\times10^{-3}\times 10 = 0{,}13\ \text{S}\cdot\text{m}^{-1}$.', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6219071, 621907, '$0{,}13\ \text{S}\cdot\text{m}^{-1}$', TRUE, 1),
  (6219072, 621907, '$1{,}3\ \text{S}\cdot\text{m}^{-1}$', FALSE, 2),
  (6219073, 621907, '$0{,}063\ \text{S}\cdot\text{m}^{-1}$', FALSE, 3),
  (6219074, 621907, '$12{,}6\ \text{S}\cdot\text{m}^{-1}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (621908, 6219, 'La droite d''étalonnage $\sigma = f(C)$ d''un dosage conductimétrique passe par l''origine. On en déduit que :', 'Passer par l''origine signifie que $\sigma$ est proportionnelle à $C$ : pour une solution sans soluté ($C = 0$), il n''y a pas d''ions et $\sigma = 0$.', 8);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6219081, 621908, 'la conductivité est proportionnelle à la concentration', TRUE, 1),
  (6219082, 621908, 'la conductivité est inversement proportionnelle à la concentration', FALSE, 2),
  (6219083, 621908, 'la conductivité ne dépend pas de la concentration', FALSE, 3),
  (6219084, 621908, 'la conductivité augmente quand la concentration diminue', FALSE, 4);

-- acido-basiques
SET @l := (SELECT id FROM lecon WHERE slug = 'acido-basiques' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'pc-1bac'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (6220, NULL, @l, 'QCM — Acido basiques', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (622001, 6220, 'Selon Brønsted, un acide est une espèce chimique capable de :', 'Un acide cède (donne) un proton $\text{H}^+$ ; une base le capte.', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6220011, 622001, 'céder un proton $\text{H}^+$', TRUE, 1),
  (6220012, 622001, 'capter un proton $\text{H}^+$', FALSE, 2),
  (6220013, 622001, 'céder un électron', FALSE, 3),
  (6220014, 622001, 'capter un ion $\text{HO}^-$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (622002, 6220, 'La base conjuguée de l''ion ammonium $\text{NH}_4^+$ est :', 'On retire un proton $\text{H}^+$ à l''acide $\text{NH}_4^+$ pour obtenir sa base conjuguée $\text{NH}_3$.', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6220021, 622002, '$\text{NH}_3$', TRUE, 1),
  (6220022, 622002, '$\text{NH}_4^{2+}$', FALSE, 2),
  (6220023, 622002, '$\text{NH}_2^-$', FALSE, 3),
  (6220024, 622002, '$\text{HO}^-$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (622003, 6220, 'La demi-équation acido-basique d''un couple $\text{AH}/\text{A}^-$ s''écrit :', 'L''acide $\text{AH}$ cède un proton $\text{H}^+$ et donne sa base conjuguée : $\text{AH} = \text{A}^- + \text{H}^+$.', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6220031, 622003, '$\text{AH} = \text{A}^- + \text{H}^+$', TRUE, 1),
  (6220032, 622003, '$\text{AH} = \text{A}^+ + \text{H}^-$', FALSE, 2),
  (6220033, 622003, '$\text{A}^- = \text{AH} + \text{H}^+$', FALSE, 3),
  (6220034, 622003, '$\text{AH} + \text{H}^+ = \text{A}^-$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (622004, 6220, 'Une réaction acido-basique correspond à un transfert de :', 'Une réaction acido-basique est un transfert de proton $\text{H}^+$ entre l''acide d''un couple et la base d''un autre couple.', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6220041, 622004, 'proton $\text{H}^+$', TRUE, 1),
  (6220042, 622004, 'électron', FALSE, 2),
  (6220043, 622004, 'ion oxonium $\text{H}_3\text{O}^+$', FALSE, 3),
  (6220044, 622004, 'molécule d''eau', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (622005, 6220, 'Le pH d''une solution aqueuse est relié à $[\text{H}_3\text{O}^+]$ par la relation :', 'Par définition $\text{pH} = -\log[\text{H}_3\text{O}^+]$, soit $[\text{H}_3\text{O}^+] = 10^{-\text{pH}}$.', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6220051, 622005, '$\text{pH} = -\log[\text{H}_3\text{O}^+]$', TRUE, 1),
  (6220052, 622005, '$\text{pH} = \log[\text{H}_3\text{O}^+]$', FALSE, 2),
  (6220053, 622005, '$\text{pH} = 10^{-[\text{H}_3\text{O}^+]}$', FALSE, 3),
  (6220054, 622005, '$\text{pH} = -\ln[\text{H}_3\text{O}^+]$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (622006, 6220, 'Une solution a $[\text{H}_3\text{O}^+] = 10^{-3}\ \text{mol}\cdot\text{L}^{-1}$. Son pH vaut :', '$\text{pH} = -\log(10^{-3}) = 3$ : comme $\text{pH} < 7$, la solution est acide.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6220061, 622006, '$3$ (solution acide)', TRUE, 1),
  (6220062, 622006, '$-3$ (solution acide)', FALSE, 2),
  (6220063, 622006, '$11$ (solution basique)', FALSE, 3),
  (6220064, 622006, '$3$ (solution basique)', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (622007, 6220, 'L''acide chlorhydrique est un acide fort. Pour une solution de concentration $C = 10^{-2}\ \text{mol}\cdot\text{L}^{-1}$, on a $[\text{H}_3\text{O}^+] = C$. Son pH vaut :', 'L''acide étant fort, $[\text{H}_3\text{O}^+] = C = 10^{-2}$, donc $\text{pH} = -\log(10^{-2}) = 2$.', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6220071, 622007, '$2$', TRUE, 1),
  (6220072, 622007, '$12$', FALSE, 2),
  (6220073, 622007, '$7$', FALSE, 3),
  (6220074, 622007, '$0{,}02$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (622008, 6220, 'On dilue 100 fois une solution d''acide fort de $\text{pH} = 3$. Le pH de la solution diluée vaut :', '$[\text{H}_3\text{O}^+]$ passe de $10^{-3}$ à $10^{-5}\ \text{mol}\cdot\text{L}^{-1}$, donc $\text{pH} = -\log(10^{-5}) = 5$ : le pH augmente de $\log 100 = 2$.', 8);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6220081, 622008, '$5$', TRUE, 1),
  (6220082, 622008, '$1$', FALSE, 2),
  (6220083, 622008, '$300$', FALSE, 3),
  (6220084, 622008, '$3$ (inchangé)', FALSE, 4);

-- oxydoreduction
SET @l := (SELECT id FROM lecon WHERE slug = 'oxydoreduction' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'pc-1bac'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (6221, NULL, @l, 'QCM — Oxydoreduction', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (622101, 6221, 'Un réducteur est une espèce chimique capable de :', 'Un réducteur est un donneur d''électrons ; un oxydant est un accepteur d''électrons.', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6221011, 622101, 'céder un ou plusieurs électrons $e^{-}$', TRUE, 1),
  (6221012, 622101, 'capter un ou plusieurs électrons $e^{-}$', FALSE, 2),
  (6221013, 622101, 'céder un ou plusieurs protons $\text{H}^{+}$', FALSE, 3),
  (6221014, 622101, 'capter un ou plusieurs protons $\text{H}^{+}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (622102, 6221, 'L''oxydation d''une espèce chimique correspond à :', 'L''oxydation est une perte d''électrons (subie par un réducteur) ; la réduction est un gain d''électrons.', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6221021, 622102, 'une perte d''électrons', TRUE, 1),
  (6221022, 622102, 'un gain d''électrons', FALSE, 2),
  (6221023, 622102, 'un gain de protons', FALSE, 3),
  (6221024, 622102, 'une perte de neutrons', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (622103, 6221, 'Quelle est la demi-équation électronique du couple $\text{Cu}^{2+}/\text{Cu}$ ?', 'L''oxydant $\text{Cu}^{2+}$ capte 2 électrons pour donner le réducteur $\text{Cu}$ : $\text{Cu}^{2+} + 2\,e^{-} \rightleftharpoons \text{Cu}$.', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6221031, 622103, '$\text{Cu}^{2+} + 2\,e^{-} \rightleftharpoons \text{Cu}$', TRUE, 1),
  (6221032, 622103, '$\text{Cu} + 2\,e^{-} \rightleftharpoons \text{Cu}^{2+}$', FALSE, 2),
  (6221033, 622103, '$\text{Cu}^{2+} \rightleftharpoons \text{Cu} + 2\,e^{-}$', FALSE, 3),
  (6221034, 622103, '$\text{Cu}^{2+} + e^{-} \rightleftharpoons \text{Cu}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (622104, 6221, 'Dans la demi-équation $\text{MnO}_4^{-} + a\,\text{H}^{+} + b\,e^{-} \rightarrow \text{Mn}^{2+} + 4\,\text{H}_2\text{O}$, les coefficients $a$ et $b$ valent :', 'On équilibre l''oxygène avec $\text{H}_2\text{O}$, l''hydrogène avec $8\,\text{H}^{+}$, puis les charges avec $5\,e^{-}$ : à gauche $-1+8-5 = +2$, comme à droite.', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6221041, 622104, '$a = 8$ et $b = 5$', TRUE, 1),
  (6221042, 622104, '$a = 4$ et $b = 2$', FALSE, 2),
  (6221043, 622104, '$a = 8$ et $b = 4$', FALSE, 3),
  (6221044, 622104, '$a = 2$ et $b = 5$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (622105, 6221, 'Lorsqu''on plonge une lame de fer dans une solution d''ions cuivre $\text{Cu}^{2+}$, l''équation bilan est :', 'Le fer s''oxyde ($\text{Fe} \rightarrow \text{Fe}^{2+} + 2\,e^{-}$) et l''ion cuivre se réduit ($\text{Cu}^{2+} + 2\,e^{-} \rightarrow \text{Cu}$).', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6221051, 622105, '$\text{Fe} + \text{Cu}^{2+} \rightarrow \text{Fe}^{2+} + \text{Cu}$', TRUE, 1),
  (6221052, 622105, '$\text{Fe}^{2+} + \text{Cu} \rightarrow \text{Fe} + \text{Cu}^{2+}$', FALSE, 2),
  (6221053, 622105, '$\text{Fe} + \text{Cu} \rightarrow \text{Fe}^{2+} + \text{Cu}^{2+}$', FALSE, 3),
  (6221054, 622105, '$\text{Fe}^{2+} + \text{Cu}^{2+} \rightarrow \text{Fe} + \text{Cu}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (622106, 6221, 'Dans le couple $\text{Zn}^{2+}/\text{Zn}$, l''oxydant est :', 'Dans un couple $\text{Ox}/\text{Red}$, l''oxydant est écrit à gauche : ici $\text{Zn}^{2+}$ qui peut capter des électrons.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6221061, 622106, 'l''ion $\text{Zn}^{2+}$', TRUE, 1),
  (6221062, 622106, 'le métal $\text{Zn}$', FALSE, 2),
  (6221063, 622106, 'l''électron $e^{-}$', FALSE, 3),
  (6221064, 622106, 'il n''y a pas d''oxydant', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (622107, 6221, 'Dans la réaction $\text{Zn} + \text{Cu}^{2+} \rightarrow \text{Zn}^{2+} + \text{Cu}$, le nombre d''électrons échangés entre le réducteur et l''oxydant est :', 'Chaque demi-équation met en jeu 2 électrons : $\text{Zn} \rightarrow \text{Zn}^{2+} + 2\,e^{-}$ et $\text{Cu}^{2+} + 2\,e^{-} \rightarrow \text{Cu}$.', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6221071, 622107, '$2$', TRUE, 1),
  (6221072, 622107, '$1$', FALSE, 2),
  (6221073, 622107, '$3$', FALSE, 3),
  (6221074, 622107, '$4$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (622108, 6221, 'Au cours d''une réaction, il se dépose $0{,}040$ mol de cuivre (avec $M(\text{Cu}) = 63{,}5$ g/mol). La masse de cuivre déposée vaut :', '$m = n \times M = 0{,}040 \times 63{,}5 = 2{,}54$ g.', 8);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6221081, 622108, '$2{,}54$ g', TRUE, 1),
  (6221082, 622108, '$63{,}5$ g', FALSE, 2),
  (6221083, 622108, '$1{,}59$ g', FALSE, 3),
  (6221084, 622108, '$25{,}4$ g', FALSE, 4);

-- dosages-directs
SET @l := (SELECT id FROM lecon WHERE slug = 'dosages-directs' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'pc-1bac'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (6222, NULL, @l, 'QCM — Dosages directs', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (622201, 6222, 'Doser (ou titrer) une espèce chimique en solution, c''est :', 'Le dosage a pour but de déterminer la concentration (ou la quantité de matière) de l''espèce titrée.', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6222011, 622201, 'déterminer sa concentration en la faisant réagir avec une espèce de concentration connue', TRUE, 1),
  (6222012, 622201, 'mesurer sa masse volumique', FALSE, 2),
  (6222013, 622201, 'mesurer son volume', FALSE, 3),
  (6222014, 622201, 'déterminer sa température de fusion', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (622202, 6222, 'Pour qu''un dosage soit exploitable, la réaction de titrage doit être :', 'La réaction doit être totale, rapide et unique (sélective).', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6222021, 622202, 'totale, rapide et unique', TRUE, 1),
  (6222022, 622202, 'limitée, lente et multiple', FALSE, 2),
  (6222023, 622202, 'totale mais lente', FALSE, 3),
  (6222024, 622202, 'rapide mais limitée', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (622203, 6222, 'À l''équivalence d''un dosage, les réactifs sont :', 'À l''équivalence, le titré et le titrant sont mélangés dans les proportions stœchiométriques : ils sont totalement consommés.', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6222031, 622203, 'mélangés dans les proportions stœchiométriques et totalement consommés', TRUE, 1),
  (6222032, 622203, 'tous deux en large excès', FALSE, 2),
  (6222033, 622203, 'tels que le titrant reste limitant', FALSE, 3),
  (6222034, 622203, 'sans rapport avec les coefficients de l''équation', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (622204, 6222, 'Pour une réaction de titrage $a\,A + b\,B \rightarrow$ produits ($A$ titré, $B$ titrant), la relation à l''équivalence est :', 'L''équivalence se traduit par l''égalité des rapports stœchiométriques des quantités de matière.', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6222041, 622204, '$\dfrac{n_A}{a} = \dfrac{n_{B,E}}{b}$', TRUE, 1),
  (6222042, 622204, '$a\,n_A = b\,n_{B,E}$', FALSE, 2),
  (6222043, 622204, '$n_A = n_{B,E}$ toujours', FALSE, 3),
  (6222044, 622204, '$\dfrac{n_A}{b} = \dfrac{n_{B,E}}{a}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (622205, 6222, 'Pour un dosage acide fort–base forte d''équation $H_3O^{+} + HO^{-} \rightarrow 2\,H_2O$, la relation à l''équivalence s''écrit :', 'Comme $a = b = 1$, on a $n(H_3O^{+}) = n(HO^{-})$ versé, soit $C_A V_A = C_B V_{B,E}$.', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6222051, 622205, '$C_A V_A = C_B V_{B,E}$', TRUE, 1),
  (6222052, 622205, '$C_A V_A = 2\,C_B V_{B,E}$', FALSE, 2),
  (6222053, 622205, '$C_A V_{B,E} = C_B V_A$', FALSE, 3),
  (6222054, 622205, '$5\,C_A V_A = C_B V_{B,E}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (622206, 6222, 'On dose $V_A = 20{,}0\ \mathrm{mL}$ d''acide chlorhydrique par une base de concentration $C_B = 0{,}10\ \mathrm{mol\cdot L^{-1}}$ ; l''équivalence a lieu pour $V_{B,E} = 16{,}0\ \mathrm{mL}$. La concentration $C_A$ vaut :', '$C_A = \dfrac{C_B V_{B,E}}{V_A} = \dfrac{0{,}10 \times 16{,}0}{20{,}0} = 8{,}0\times 10^{-2}\ \mathrm{mol\cdot L^{-1}}$.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6222061, 622206, '$8{,}0\times 10^{-2}\ \mathrm{mol\cdot L^{-1}}$', TRUE, 1),
  (6222062, 622206, '$1{,}25\times 10^{-1}\ \mathrm{mol\cdot L^{-1}}$', FALSE, 2),
  (6222063, 622206, '$1{,}6\times 10^{-1}\ \mathrm{mol\cdot L^{-1}}$', FALSE, 3),
  (6222064, 622206, '$3{,}2\times 10^{-3}\ \mathrm{mol\cdot L^{-1}}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (622207, 6222, 'Dans le dosage des ions $Fe^{2+}$ par les ions $MnO_4^{-}$ ($MnO_4^{-} + 5\,Fe^{2+} + 8\,H^{+} \rightarrow Mn^{2+} + 5\,Fe^{3+} + 4\,H_2O$), l''équivalence à $V_{B,E}$ vérifie :', 'Les coefficients sont $a = 5$ pour $Fe^{2+}$ et $b = 1$ pour $MnO_4^{-}$, d''où $\dfrac{n(Fe^{2+})}{5} = n(MnO_4^{-})_{\text{versé}}$.', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6222071, 622207, '$\dfrac{n(Fe^{2+})}{5} = n(MnO_4^{-})_{\text{versé}}$', TRUE, 1),
  (6222072, 622207, '$n(Fe^{2+}) = n(MnO_4^{-})_{\text{versé}}$', FALSE, 2),
  (6222073, 622207, '$n(Fe^{2+}) = \dfrac{n(MnO_4^{-})_{\text{versé}}}{5}$', FALSE, 3),
  (6222074, 622207, '$\dfrac{n(Fe^{2+})}{8} = n(MnO_4^{-})_{\text{versé}}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (622208, 6222, 'Dans un dosage suivi par pH-métrie, l''équivalence correspond :', 'Une grandeur du mélange varie brutalement à l''équivalence : pour la pH-métrie, c''est le saut de pH.', 8);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6222081, 622208, 'au saut de pH (variation brutale du pH)', TRUE, 1),
  (6222082, 622208, 'au pH le plus faible mesuré', FALSE, 2),
  (6222083, 622208, 'à un pH constant tout au long du dosage', FALSE, 3),
  (6222084, 622208, 'au moment où l''on verse la première goutte de titrant', FALSE, 4);

-- squelettes-carbones
SET @l := (SELECT id FROM lecon WHERE slug = 'squelettes-carbones' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'pc-1bac'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (6223, NULL, @l, 'QCM — Squelettes carbones', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (622301, 6223, 'Quelle est la formule brute générale des alcanes ?', 'Un alcane à $n$ atomes de carbone possède $2n+2$ atomes d''hydrogène : sa formule brute générale est $\text{C}_n\text{H}_{2n+2}$.', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6223011, 622301, '$\text{C}_n\text{H}_{2n+2}$', TRUE, 1),
  (6223012, 622301, '$\text{C}_n\text{H}_{2n}$', FALSE, 2),
  (6223013, 622301, '$\text{C}_n\text{H}_{2n-2}$', FALSE, 3),
  (6223014, 622301, '$\text{C}_n\text{H}_{n+2}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (622302, 6223, 'Quelle est la formule brute de l''octane (alcane à 8 atomes de carbone) ?', 'Avec $n=8$ dans $\text{C}_n\text{H}_{2n+2}$ : $2\times 8+2 = 18$, donc l''octane est $\text{C}_8\text{H}_{18}$.', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6223021, 622302, '$\text{C}_8\text{H}_{18}$', TRUE, 1),
  (6223022, 622302, '$\text{C}_8\text{H}_{16}$', FALSE, 2),
  (6223023, 622302, '$\text{C}_8\text{H}_{8}$', FALSE, 3),
  (6223024, 622302, '$\text{C}_8\text{H}_{10}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (622303, 6223, 'Un alcane possède 14 atomes d''hydrogène. Combien d''atomes de carbone contient-il ?', 'On résout $2n+2 = 14$, soit $n = 6$ : l''alcane possède 6 atomes de carbone (c''est l''hexane $\text{C}_6\text{H}_{14}$).', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6223031, 622303, '$6$', TRUE, 1),
  (6223032, 622303, '$7$', FALSE, 2),
  (6223033, 622303, '$12$', FALSE, 3),
  (6223034, 622303, '$14$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (622304, 6223, 'Combien d''isomères de constitution possède la formule brute $\text{C}_5\text{H}_{12}$ ?', '$\text{C}_5\text{H}_{12}$ a trois isomères : le pentane, le 2-méthylbutane et le 2,2-diméthylpropane.', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6223041, 622304, '$3$', TRUE, 1),
  (6223042, 622304, '$2$', FALSE, 2),
  (6223043, 622304, '$4$', FALSE, 3),
  (6223044, 622304, '$5$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (622305, 6223, 'Comment se nomme le groupe alkyle $-\text{C}_2\text{H}_5$ ?', 'Le groupe $-\text{C}_2\text{H}_5$ provient de l''éthane $\text{C}_2\text{H}_6$ ; en remplaçant le suffixe -ane par -yle, on obtient le groupe éthyle.', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6223051, 622305, 'éthyle', TRUE, 1),
  (6223052, 622305, 'méthyle', FALSE, 2),
  (6223053, 622305, 'propyle', FALSE, 3),
  (6223054, 622305, 'éthane', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (622306, 6223, 'Quel est le nom de la molécule $\text{CH}_3-\text{CH}(\text{CH}_3)-\text{CH}_2-\text{CH}_3$ ?', 'La chaîne principale compte 4 carbones (butane) ; un groupe méthyle est porté par le carbone n°2. Le nom est donc 2-méthylbutane.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6223061, 622306, '2-méthylbutane', TRUE, 1),
  (6223062, 622306, '3-méthylbutane', FALSE, 2),
  (6223063, 622306, '2-méthylpropane', FALSE, 3),
  (6223064, 622306, 'pentane', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (622307, 6223, 'Dans une formule topologique (ligne brisée en zigzag), que représente chaque sommet ou extrémité ?', 'Dans une formule topologique, chaque sommet et chaque extrémité de la ligne brisée correspond à un atome de carbone ; les atomes d''hydrogène ne sont pas écrits.', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6223071, 622307, 'un atome de carbone', TRUE, 1),
  (6223072, 622307, 'un atome d''hydrogène', FALSE, 2),
  (6223073, 622307, 'une liaison double', FALSE, 3),
  (6223074, 622307, 'un groupe méthyle', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (622308, 6223, 'Deux molécules sont des isomères de constitution lorsqu''elles ont :', 'Deux isomères de constitution ont la même formule brute mais des formules développées (ou semi-développées) différentes, donc des propriétés différentes.', 8);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6223081, 622308, 'la même formule brute mais des structures différentes', TRUE, 1),
  (6223082, 622308, 'la même formule développée', FALSE, 2),
  (6223083, 622308, 'des formules brutes différentes', FALSE, 3),
  (6223084, 622308, 'le même nom et les mêmes propriétés', FALSE, 4);

-- modification-squelette
SET @l := (SELECT id FROM lecon WHERE slug = 'modification-squelette' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'pc-1bac'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (6224, NULL, @l, 'QCM — Modification squelette', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (622401, 6224, 'Le craquage d''un hydrocarbure consiste à :', 'Le craquage rompt les chaînes carbonées longues des coupes lourdes en molécules plus courtes (alcanes et alcènes).', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6224011, 622401, 'rompre une chaîne longue en molécules plus courtes', TRUE, 1),
  (6224012, 622401, 'souder deux molécules en une chaîne plus longue', FALSE, 2),
  (6224013, 622401, 'transformer une chaîne linéaire en chaîne ramifiée sans la couper', FALSE, 3),
  (6224014, 622401, 'ajouter un groupe d''atomes à une molécule', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (622402, 6224, 'Le vapocraquage est réalisé à haute température ($800$ à $900\ ^{\circ}\text{C}$) avec de la vapeur d''eau et sans catalyseur. Il produit surtout :', 'Le vapocraquage vise la production d''alcènes (éthène, propène), matières premières des plastiques.', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6224021, 622402, 'des alcènes comme l''éthène et le propène', TRUE, 1),
  (6224022, 622402, 'uniquement des alcanes ramifiés', FALSE, 2),
  (6224023, 622402, 'des hydrocarbures aromatiques cycliques', FALSE, 3),
  (6224024, 622402, 'des polymères', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (622403, 6224, 'Au cours d''un reformage, le nombre d''atomes de carbone de la molécule :', 'Le reformage transforme un alcane linéaire en alcane ramifié ou en cycle sans changer le nombre d''atomes de carbone.', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6224031, 622403, 'reste inchangé', TRUE, 1),
  (6224032, 622403, 'diminue de moitié', FALSE, 2),
  (6224033, 622403, 'augmente', FALSE, 3),
  (6224034, 622403, 'devient toujours égal à 6', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (622404, 6224, 'Compléter le craquage : $C_{10}H_{22} \longrightarrow C_8H_{18} + \ldots$', 'Conservation des atomes : carbone $10-8=2$ et hydrogène $22-18=4$, le second produit est l''alcène $C_2H_4$.', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6224041, 622404, '$C_2H_4$', TRUE, 1),
  (6224042, 622404, '$C_2H_6$', FALSE, 2),
  (6224043, 622404, '$C_2H_2$', FALSE, 3),
  (6224044, 622404, '$C_4H_8$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (622405, 6224, 'Lors d''une polyaddition, la double liaison $C=C$ du monomère :', 'La double liaison s''ouvre : dans le polymère, tous les carbones du squelette sont reliés par des liaisons simples.', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6224051, 622405, 's''ouvre et disparaît dans le polymère', TRUE, 1),
  (6224052, 622405, 'se conserve à l''identique dans le polymère', FALSE, 2),
  (6224053, 622405, 'se transforme en triple liaison', FALSE, 3),
  (6224054, 622405, 'est remplacée par un atome d''oxygène', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (622406, 6224, 'Le motif du polyéthylène a une masse molaire $M_{\text{motif}} = 28\ \text{g/mol}$. Pour un degré de polymérisation $n = 1000$, la masse molaire du polymère est :', 'On applique $M_{\text{polymère}} = n \times M_{\text{motif}} = 1000 \times 28 = 28\,000\ \text{g/mol}$.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6224061, 622406, '$28\,000\ \text{g/mol}$', TRUE, 1),
  (6224062, 622406, '$2800\ \text{g/mol}$', FALSE, 2),
  (6224063, 622406, '$280\ \text{g/mol}$', FALSE, 3),
  (6224064, 622406, '$56\,000\ \text{g/mol}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (622407, 6224, 'Le motif d''un polymère est $-CH_2-CHCl-$. Le monomère dont il provient est :', 'En rétablissant la double liaison entre les deux carbones, on retrouve le chlorure de vinyle $CH_2=CHCl$.', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6224071, 622407, '$CH_2=CHCl$', TRUE, 1),
  (6224072, 622407, '$CH_3-CH_2Cl$', FALSE, 2),
  (6224073, 622407, '$CH_2=CH_2$', FALSE, 3),
  (6224074, 622407, '$CHCl=CHCl$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (622408, 6224, 'La transformation $n\,(CH_2=CH_2) \longrightarrow {-\!\!\left(CH_2-CH_2\right)\!\!-}_{n}$ est :', 'Un grand nombre de monomères à double liaison s''enchaînent en une macromolécule : c''est une polymérisation (polyaddition).', 8);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6224081, 622408, 'une polymérisation (polyaddition)', TRUE, 1),
  (6224082, 622408, 'un craquage', FALSE, 2),
  (6224083, 622408, 'un vapocraquage', FALSE, 3),
  (6224084, 622408, 'un reformage', FALSE, 4);

-- groupes-caracteristiques
SET @l := (SELECT id FROM lecon WHERE slug = 'groupes-caracteristiques' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'pc-1bac'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (6225, NULL, @l, 'QCM — Groupes caracteristiques', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (622501, 6225, 'Le groupe caractéristique d''un alcool est :', 'Un alcool porte le groupe hydroxyle $-OH$ sur un carbone tétragonal : $R-OH$.', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6225011, 622501, '$-OH$', TRUE, 1),
  (6225012, 622501, '$-COOH$', FALSE, 2),
  (6225013, 622501, '$-CHO$', FALSE, 3),
  (6225014, 622501, '$-NH_2$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (622502, 6225, 'Quelle famille possède le groupe carboxyle $-COOH$ ?', 'Le carboxyle $-COOH$ (carbonyle + hydroxyle) caractérise les acides carboxyliques.', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6225021, 622502, 'Acide carboxylique', TRUE, 1),
  (6225022, 622502, 'Ester', FALSE, 2),
  (6225023, 622502, 'Cétone', FALSE, 3),
  (6225024, 622502, 'Alcool', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (622503, 6225, 'La molécule $CH_3-CO-CH_3$ appartient à la famille des :', 'Le carbonyle $C=O$ est porté par un carbone intérieur lié à deux carbones : c''est une cétone (la propanone).', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6225031, 622503, 'cétones', TRUE, 1),
  (6225032, 622503, 'aldéhydes', FALSE, 2),
  (6225033, 622503, 'acides carboxyliques', FALSE, 3),
  (6225034, 622503, 'esters', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (622504, 6225, 'Quel est le nom de l''alcool $CH_3-CHOH-CH_3$ ?', 'Chaîne à 3 carbones, $-OH$ sur le carbone central (plus petit indice) : propan-2-ol.', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6225041, 622504, 'propan-2-ol', TRUE, 1),
  (6225042, 622504, 'propan-1-ol', FALSE, 2),
  (6225043, 622504, 'propanone', FALSE, 3),
  (6225044, 622504, 'propanal', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (622505, 6225, 'Comment nomme-t-on le composé $CH_3-CH_2-COOH$ ?', 'Acide à 3 carbones (le carbone du $-COOH$ compte) : acide propanoïque.', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6225051, 622505, 'acide propanoïque', TRUE, 1),
  (6225052, 622505, 'acide éthanoïque', FALSE, 2),
  (6225053, 622505, 'propanal', FALSE, 3),
  (6225054, 622505, 'propan-1-ol', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (622506, 6225, 'L''ester $CH_3-COO-CH_3$ se nomme :', 'Partie -oate de l''acide éthanoïque (éthanoate), partie -yle de l''alcool méthanol (méthyle) : éthanoate de méthyle.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6225061, 622506, 'éthanoate de méthyle', TRUE, 1),
  (6225062, 622506, 'méthanoate d''éthyle', FALSE, 2),
  (6225063, 622506, 'acide éthanoïque', FALSE, 3),
  (6225064, 622506, 'propanone', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (622507, 6225, 'En spectroscopie IR, une bande fine et intense vers $1700\ \text{cm}^{-1}$ révèle la liaison :', 'La région 1650–1750 $\text{cm}^{-1}$ correspond au carbonyle $C=O$ (aldéhyde, cétone, acide ou ester).', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6225071, 622507, '$C=O$ (carbonyle)', TRUE, 1),
  (6225072, 622507, '$O-H$ (alcool)', FALSE, 2),
  (6225073, 622507, '$N-H$ (amine)', FALSE, 3),
  (6225074, 622507, '$C-H$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (622508, 6225, 'Un spectre IR montre une bande $O-H$ large vers 3300 mais aucune bande vers 1700. Le composé est probablement :', 'Une bande $O-H$ sans carbonyle $C=O$ oriente vers un alcool ; un acide aurait en plus une bande $C=O$ et une bande $O-H$ très large dès 2500.', 8);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6225081, 622508, 'un alcool', TRUE, 1),
  (6225082, 622508, 'un acide carboxylique', FALSE, 2),
  (6225083, 622508, 'une cétone', FALSE, 3),
  (6225084, 622508, 'un aldéhyde', FALSE, 4);

-- reactivite-alcools
SET @l := (SELECT id FROM lecon WHERE slug = 'reactivite-alcools' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'pc-1bac'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (6226, NULL, @l, 'QCM — Reactivite alcools', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (622601, 6226, 'La classe d''un alcool est déterminée par :', 'On compte le nombre d''atomes de carbone liés au carbone fonctionnel (celui qui porte le groupe $\mathrm{-OH}$).', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6226011, 622601, 'le nombre de carbones liés au carbone portant le groupe $\mathrm{-OH}$', TRUE, 1),
  (6226012, 622601, 'le nombre total d''atomes de carbone de la molécule', FALSE, 2),
  (6226013, 622601, 'le nombre de groupes $\mathrm{-OH}$ présents', FALSE, 3),
  (6226014, 622601, 'la longueur de la chaîne carbonée', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (622602, 6226, 'L''alcool $\mathrm{CH_3-CHOH-CH_3}$ (propan-2-ol) est un alcool :', 'Le carbone fonctionnel est lié à deux atomes de carbone : c''est un alcool secondaire.', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6226021, 622602, 'secondaire', TRUE, 1),
  (6226022, 622602, 'primaire', FALSE, 2),
  (6226023, 622602, 'tertiaire', FALSE, 3),
  (6226024, 622602, 'aromatique', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (622603, 6226, 'Par oxydation ménagée modérée (oxydant en défaut), un alcool primaire donne d''abord :', 'Un alcool primaire s''oxyde en aldéhyde ($\mathrm{-CHO}$), puis en acide carboxylique si l''oxydant est en excès.', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6226031, 622603, 'un aldéhyde', TRUE, 1),
  (6226032, 622603, 'une cétone', FALSE, 2),
  (6226033, 622603, 'un alcène', FALSE, 3),
  (6226034, 622603, 'un ester', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (622604, 6226, 'L''oxydation ménagée d''un alcool secondaire conduit à :', 'Un alcool secondaire donne une cétone ($\mathrm{>C=O}$) ; l''oxydation s''arrête là.', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6226041, 622604, 'une cétone', TRUE, 1),
  (6226042, 622604, 'un aldéhyde puis un acide', FALSE, 2),
  (6226043, 622604, 'un acide carboxylique', FALSE, 3),
  (6226044, 622604, 'aucune réaction', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (622605, 6226, 'Un alcool tertiaire soumis à une oxydation ménagée :', 'Le carbone fonctionnel ne porte aucun atome d''hydrogène : l''alcool tertiaire n''est pas oxydable, l''oxydant garde sa couleur.', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6226051, 622605, 'ne réagit pas', TRUE, 1),
  (6226052, 622605, 'donne une cétone', FALSE, 2),
  (6226053, 622605, 'donne un aldéhyde', FALSE, 3),
  (6226054, 622605, 'donne un acide carboxylique', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (622606, 6226, 'Quel réactif permet de distinguer un aldéhyde d''une cétone ?', 'La liqueur de Fehling (et le réactif de Tollens) est positive avec l''aldéhyde mais négative avec la cétone ; la 2,4-DNPH réagit avec les deux.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6226061, 622606, 'la liqueur de Fehling', TRUE, 1),
  (6226062, 622606, 'la 2,4-DNPH', FALSE, 2),
  (6226063, 622606, 'le papier pH', FALSE, 3),
  (6226064, 622606, 'l''eau de chaux', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (622607, 6226, 'La déshydratation d''un alcool, par chauffage avec un catalyseur acide, produit :', 'On élimine une molécule d''eau $\mathrm{H_2O}$ et on obtient un alcène (double liaison $\mathrm{C=C}$).', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6226071, 622607, 'un alcène et de l''eau', TRUE, 1),
  (6226072, 622607, 'un aldéhyde et du dihydrogène', FALSE, 2),
  (6226073, 622607, 'une cétone et de l''eau', FALSE, 3),
  (6226074, 622607, 'un acide carboxylique', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (622608, 6226, 'L''équation de la combustion complète de l''éthanol $\mathrm{C_2H_6O}$ est :', 'La combustion complète donne $\mathrm{CO_2}$ et $\mathrm{H_2O}$ ; l''équilibrage donne $\mathrm{C_2H_6O + 3\,O_2 \rightarrow 2\,CO_2 + 3\,H_2O}$.', 8);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6226081, 622608, '$\mathrm{C_2H_6O + 3\,O_2 \rightarrow 2\,CO_2 + 3\,H_2O}$', TRUE, 1),
  (6226082, 622608, '$\mathrm{C_2H_6O + 2\,O_2 \rightarrow 2\,CO_2 + 3\,H_2O}$', FALSE, 2),
  (6226083, 622608, '$\mathrm{C_2H_6O + O_2 \rightarrow 2\,CO_2 + 3\,H_2O}$', FALSE, 3),
  (6226084, 622608, '$\mathrm{C_2H_6O + 3\,O_2 \rightarrow 2\,CO + 3\,H_2O}$', FALSE, 4);

