-- PC TCS : QCM des 23 chapitres (quiz 6501-6523).
SET SESSION sql_mode = CONCAT(@@sql_mode, ',NO_BACKSLASH_ESCAPES');

-- gravitation-universelle
SET @l := (SELECT id FROM lecon WHERE slug = 'gravitation-universelle' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'pc-tcs'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (6501, NULL, @l, 'QCM — Gravitation universelle', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (650101, 6501, 'Quelle est l''expression de la valeur de la force de gravitation entre deux corps de masses $m_A$ et $m_B$ séparés d''une distance $d$ ?', 'La loi de Newton s''écrit $F = G\,\dfrac{m_A\,m_B}{d^2}$ : la force est proportionnelle au produit des masses et inversement proportionnelle au carré de la distance.', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6501011, 650101, '$F = G\,\dfrac{m_A\,m_B}{d^2}$', TRUE, 1),
  (6501012, 650101, '$F = G\,\dfrac{m_A\,m_B}{d}$', FALSE, 2),
  (6501013, 650101, '$F = G\,\dfrac{m_A + m_B}{d^2}$', FALSE, 3),
  (6501014, 650101, '$F = G\,\dfrac{d^2}{m_A\,m_B}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (650102, 6501, 'La constante de gravitation universelle vaut $G = 6{,}67\times 10^{-11}$. Quelle est son unité ?', 'Pour que $F$ soit en newtons, $G$ doit s''exprimer en $\text{N}\cdot\text{m}^2\cdot\text{kg}^{-2}$, comme l''impose l''homogénéité de la relation $F = G\,m_A\,m_B/d^2$.', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6501021, 650102, '$\text{N}\cdot\text{m}^2\cdot\text{kg}^{-2}$', TRUE, 1),
  (6501022, 650102, '$\text{N}\cdot\text{kg}^{-1}$', FALSE, 2),
  (6501023, 650102, '$\text{N}\cdot\text{m}^{-2}$', FALSE, 3),
  (6501024, 650102, '$\text{kg}\cdot\text{m}^{-2}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (650103, 6501, 'Si on double la distance $d$ entre deux corps sans changer leurs masses, la force de gravitation est :', 'La force varie en $1/d^2$. En remplaçant $d$ par $2d$, le dénominateur est multiplié par $(2)^2 = 4$, donc la force est divisée par 4.', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6501031, 650103, 'divisée par 4', TRUE, 1),
  (6501032, 650103, 'divisée par 2', FALSE, 2),
  (6501033, 650103, 'multipliée par 2', FALSE, 3),
  (6501034, 650103, 'inchangée', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (650104, 6501, 'Quelle affirmation concernant la masse et le poids est correcte ?', 'La masse (en $\text{kg}$) est une quantité de matière invariable. Le poids $P = m\,g$ (en $\text{N}$) est une force qui dépend du lieu via l''intensité de pesanteur $g$.', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6501041, 650104, 'La masse est invariable, le poids dépend du lieu', TRUE, 1),
  (6501042, 650104, 'Le poids est invariable, la masse dépend du lieu', FALSE, 2),
  (6501043, 650104, 'La masse et le poids s''expriment tous deux en newtons', FALSE, 3),
  (6501044, 650104, 'La masse et le poids sont toujours égaux', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (650105, 6501, 'À la surface d''une planète de masse $M$ et de rayon $R$, l''intensité de pesanteur $g_0$ s''écrit :', 'En identifiant le poids à la force de gravitation, $m\,g_0 = G\,M\,m/R^2$, on simplifie par $m$ et on obtient $g_0 = G\,\dfrac{M}{R^2}$.', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6501051, 650105, '$g_0 = G\,\dfrac{M}{R^2}$', TRUE, 1),
  (6501052, 650105, '$g_0 = G\,\dfrac{M}{R}$', FALSE, 2),
  (6501053, 650105, '$g_0 = G\,\dfrac{R^2}{M}$', FALSE, 3),
  (6501054, 650105, '$g_0 = G\,M\,R^2$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (650106, 6501, 'Lorsque l''altitude $h$ augmente, l''intensité de pesanteur $g_h = g_0\,\dfrac{R_T^2}{(R_T+h)^2}$ :', 'Quand $h$ augmente, le dénominateur $(R_T+h)^2$ augmente, donc $g_h$ diminue : le poids d''un corps diminue avec l''altitude.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6501061, 650106, 'diminue', TRUE, 1),
  (6501062, 650106, 'augmente', FALSE, 2),
  (6501063, 650106, 'reste constante', FALSE, 3),
  (6501064, 650106, 'devient nulle dès $h = R_T$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (650107, 6501, 'Sur la Lune, l''intensité de pesanteur vaut environ $1{,}6\,\text{N}\cdot\text{kg}^{-1}$ contre $9{,}8\,\text{N}\cdot\text{kg}^{-1}$ sur Terre. Un astronaute de masse $70\,\text{kg}$ sur la Lune :', 'La masse reste $70\,\text{kg}$ (invariable). Son poids lunaire vaut $P = 70\times 1{,}6 \approx 112\,\text{N}$, soit environ six fois moins que sur Terre ($686\,\text{N}$).', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6501071, 650107, 'garde une masse de $70\,\text{kg}$ et pèse environ $112\,\text{N}$', TRUE, 1),
  (6501072, 650107, 'a une masse de $70\,\text{kg}$ et pèse $686\,\text{N}$', FALSE, 2),
  (6501073, 650107, 'a une masse réduite à environ $11\,\text{kg}$', FALSE, 3),
  (6501074, 650107, 'n''a plus ni masse ni poids', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (650108, 6501, 'La force de gravitation exercée par la Terre sur un satellite en orbite est dirigée :', 'La force d''attraction est toujours portée par la droite reliant les centres et orientée vers le centre de l''astre attracteur : ici, vers le centre de la Terre. C''est elle qui courbe la trajectoire.', 8);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6501081, 650108, 'vers le centre de la Terre', TRUE, 1),
  (6501082, 650108, 'vers l''extérieur, à l''opposé de la Terre', FALSE, 2),
  (6501083, 650108, 'tangente à la trajectoire, dans le sens du mouvement', FALSE, 3),
  (6501084, 650108, 'dans une direction quelconque', FALSE, 4);

-- actions-mecaniques
SET @l := (SELECT id FROM lecon WHERE slug = 'actions-mecaniques' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'pc-tcs'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (6502, NULL, @l, 'QCM — Actions mecaniques', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (650201, 6502, 'Une action mécanique peut produire l''effet suivant :', 'Une action mécanique peut mettre en mouvement un corps, modifier son mouvement ou le déformer. Elle met toujours en jeu deux corps.', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6502011, 650201, 'Déformer un corps ou modifier son mouvement', TRUE, 1),
  (6502012, 650201, 'Changer la masse d''un corps', FALSE, 2),
  (6502013, 650201, 'Changer la nature chimique d''un corps', FALSE, 3),
  (6502014, 650201, 'Augmenter la température sans contact', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (650202, 6502, 'Le poids exercé par la Terre sur un objet est une action mécanique :', 'La Terre n''a pas besoin de toucher l''objet : le poids est une action à distance, et elle est répartie dans tout le volume (modélisée au centre de gravité).', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6502021, 650202, 'À distance et répartie', TRUE, 1),
  (6502022, 650202, 'De contact et localisée', FALSE, 2),
  (6502023, 650202, 'De contact et répartie', FALSE, 3),
  (6502024, 650202, 'À distance et localisée', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (650203, 6502, 'La tension d''un fil accroché à un objet est une action :', 'Le fil touche l''objet (contact) et n''agit qu''au point d''attache (localisée).', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6502031, 650203, 'De contact et localisée', TRUE, 1),
  (6502032, 650203, 'À distance et localisée', FALSE, 2),
  (6502033, 650203, 'De contact et répartie', FALSE, 3),
  (6502034, 650203, 'À distance et répartie', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (650204, 6502, 'Les quatre caractéristiques d''un vecteur force sont :', 'Un vecteur force est défini par son point d''application, sa direction (droite d''action), son sens et son intensité (norme).', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6502041, 650204, 'Point d''application, direction, sens, intensité', TRUE, 1),
  (6502042, 650204, 'Masse, vitesse, direction, sens', FALSE, 2),
  (6502043, 650204, 'Point d''application, masse, sens, longueur', FALSE, 3),
  (6502044, 650204, 'Direction, sens, durée, intensité', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (650205, 6502, 'L''intensité d''une force se mesure avec :', 'Le dynamomètre, constitué d''un ressort, mesure l''intensité d''une force en newtons.', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6502051, 650205, 'Un dynamomètre', TRUE, 1),
  (6502052, 650205, 'Une balance', FALSE, 2),
  (6502053, 650205, 'Un voltmètre', FALSE, 3),
  (6502054, 650205, 'Un chronomètre', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (650206, 6502, 'L''intensité du poids d''un corps de masse $m = 3\ \text{kg}$, avec $g = 10\ \text{N/kg}$, vaut :', 'On applique $P = m\,g = 3 \times 10 = 30\ \text{N}$.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6502061, 650206, '$30\ \text{N}$', TRUE, 1),
  (6502062, 650206, '$3\ \text{N}$', FALSE, 2),
  (6502063, 650206, '$0{,}3\ \text{N}$', FALSE, 3),
  (6502064, 650206, '$13\ \text{N}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (650207, 6502, 'Une force d''intensité $F = 15\ \text{N}$ est représentée avec l''échelle $1\ \text{cm} \longleftrightarrow 5\ \text{N}$. La longueur de la flèche est :', 'La longueur vaut $\dfrac{15}{5} = 3\ \text{cm}$.', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6502071, 650207, '$3\ \text{cm}$', TRUE, 1),
  (6502072, 650207, '$75\ \text{cm}$', FALSE, 2),
  (6502073, 650207, '$5\ \text{cm}$', FALSE, 3),
  (6502074, 650207, '$10\ \text{cm}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (650208, 6502, 'Un objet est transporté de la Terre vers la Lune. Que devient sa masse ?', 'La masse est une grandeur propre au corps : elle ne dépend pas du lieu. Seul le poids change, car $g$ est plus faible sur la Lune.', 8);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6502081, 650208, 'Elle reste la même', TRUE, 1),
  (6502082, 650208, 'Elle diminue', FALSE, 2),
  (6502083, 650208, 'Elle augmente', FALSE, 3),
  (6502084, 650208, 'Elle devient nulle', FALSE, 4);

-- mouvement
SET @l := (SELECT id FROM lecon WHERE slug = 'mouvement' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'pc-tcs'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (6503, NULL, @l, 'QCM — Mouvement', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (650301, 6503, 'Un passager assis dans un autocar qui roule est :', 'Sa position ne change pas par rapport au conducteur (au repos), mais change par rapport aux arbres du bord de la route (en mouvement) : le mouvement est relatif au référentiel choisi.', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6503011, 650301, 'au repos par rapport au conducteur, en mouvement par rapport aux arbres', TRUE, 1),
  (6503012, 650301, 'en mouvement par rapport au conducteur', FALSE, 2),
  (6503013, 650301, 'au repos par rapport aux arbres du bord de la route', FALSE, 3),
  (6503014, 650301, 'toujours au repos, quel que soit le référentiel', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (650302, 6503, 'Une vitesse de $90\,\text{km/h}$ correspond, en $\text{m/s}$, à :', 'On divise par $3{,}6$ : $90 \div 3{,}6 = 25\,\text{m/s}$.', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6503021, 650302, '$25\,\text{m/s}$', TRUE, 1),
  (6503022, 650302, '$324\,\text{m/s}$', FALSE, 2),
  (6503023, 650302, '$90\,\text{m/s}$', FALSE, 3),
  (6503024, 650302, '$2{,}5\,\text{m/s}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (650303, 6503, 'Une vitesse de $20\,\text{m/s}$ correspond, en $\text{km/h}$, à :', 'On multiplie par $3{,}6$ : $20 \times 3{,}6 = 72\,\text{km/h}$.', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6503031, 650303, '$72\,\text{km/h}$', TRUE, 1),
  (6503032, 650303, '$20\,\text{km/h}$', FALSE, 2),
  (6503033, 650303, '$5{,}6\,\text{km/h}$', FALSE, 3),
  (6503034, 650303, '$200\,\text{km/h}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (650304, 6503, 'Une voiture parcourt $150\,\text{km}$ en $2\,\text{h}$. Sa vitesse moyenne est :', '$v_{moy} = \dfrac{d}{\Delta t} = \dfrac{150}{2} = 75\,\text{km/h}$.', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6503041, 650304, '$75\,\text{km/h}$', TRUE, 1),
  (6503042, 650304, '$300\,\text{km/h}$', FALSE, 2),
  (6503043, 650304, '$152\,\text{km/h}$', FALSE, 3),
  (6503044, 650304, '$37{,}5\,\text{km/h}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (650305, 6503, 'L''indication donnée par le compteur de vitesse d''une voiture est :', 'Le compteur affiche la vitesse à un instant précis : c''est une vitesse instantanée, en général différente de la vitesse moyenne du trajet.', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6503051, 650305, 'la vitesse instantanée', TRUE, 1),
  (6503052, 650305, 'la vitesse moyenne du trajet', FALSE, 2),
  (6503053, 650305, 'la distance parcourue', FALSE, 3),
  (6503054, 650305, 'la vitesse angulaire', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (650306, 6503, 'Pour un point en rotation à la distance $r$ de l''axe, la vitesse linéaire $v$ et la vitesse angulaire $\omega$ sont liées par :', 'La relation entre vitesse linéaire et vitesse angulaire s''écrit $v = r\,\omega$, avec $r$ en mètres et $\omega$ en $\text{rad/s}$.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6503061, 650306, '$v = r\,\omega$', TRUE, 1),
  (6503062, 650306, '$v = \dfrac{\omega}{r}$', FALSE, 2),
  (6503063, 650306, '$v = \dfrac{r}{\omega}$', FALSE, 3),
  (6503064, 650306, '$v = r + \omega$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (650307, 6503, 'Un point situé à $r = 0{,}20\,\text{m}$ de l''axe tourne à $\omega = 5\,\text{rad/s}$. Sa vitesse linéaire est :', '$v = r\,\omega = 0{,}20 \times 5 = 1\,\text{m/s}$.', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6503071, 650307, '$1\,\text{m/s}$', TRUE, 1),
  (6503072, 650307, '$25\,\text{m/s}$', FALSE, 2),
  (6503073, 650307, '$0{,}04\,\text{m/s}$', FALSE, 3),
  (6503074, 650307, '$5{,}2\,\text{m/s}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (650308, 6503, 'Sur une chronophotographie à intervalles de temps égaux, les positions successives sont de plus en plus espacées. Le mouvement est :', 'Un espacement croissant à intervalles de temps égaux signifie que la valeur de la vitesse augmente : le mouvement est accéléré.', 8);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6503081, 650308, 'accéléré', TRUE, 1),
  (6503082, 650308, 'uniforme', FALSE, 2),
  (6503083, 650308, 'ralenti', FALSE, 3),
  (6503084, 650308, 'au repos', FALSE, 4);

-- principe-inertie
SET @l := (SELECT id FROM lecon WHERE slug = 'principe-inertie' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'pc-tcs'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (6504, NULL, @l, 'QCM — Principe inertie', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (650401, 6504, 'Un corps est dit isolé lorsque :', 'Un corps isolé n''est soumis à aucune force. S''il est soumis à plusieurs forces qui se compensent, il est pseudo-isolé.', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6504011, 650401, 'il n''est soumis à aucune force extérieure', TRUE, 1),
  (6504012, 650401, 'il est soumis à plusieurs forces qui se compensent', FALSE, 2),
  (6504013, 650401, 'il est au repos', FALSE, 3),
  (6504014, 650401, 'sa masse est très grande', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (650402, 6504, 'La condition commune à un corps isolé et à un corps pseudo-isolé s''écrit :', 'Dans les deux cas la somme des forces est nulle : $\sum F = 0$. C''est cette condition qui intervient dans le principe d''inertie.', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6504021, 650402, '$\sum F = 0$', TRUE, 1),
  (6504022, 650402, '$\sum F > 0$', FALSE, 2),
  (6504023, 650402, '$\sum F = m\,g$', FALSE, 3),
  (6504024, 650402, '$\sum F = m\,v$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (650403, 6504, 'D''après le principe d''inertie, dans un référentiel galiléen, un corps dont la somme des forces est nulle :', 'Si $\sum F = 0$, le centre d''inertie est au repos ou en mouvement rectiligne uniforme (MRU).', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6504031, 650403, 'reste au repos ou est en mouvement rectiligne uniforme', TRUE, 1),
  (6504032, 650403, 'est nécessairement au repos', FALSE, 2),
  (6504033, 650403, 'ralentit puis s''arrête', FALSE, 3),
  (6504034, 650403, 'a un mouvement circulaire uniforme', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (650404, 6504, 'On observe qu''un solide se déplace en ligne droite à vitesse constante. On peut en déduire que :', 'C''est la réciproque du principe d''inertie : un mouvement rectiligne uniforme implique $\sum F = 0$, les forces se compensent.', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6504041, 650404, 'les forces qui s''exercent sur lui se compensent', TRUE, 1),
  (6504042, 650404, 'une seule force agit sur lui vers l''avant', FALSE, 2),
  (6504043, 650404, 'la somme des forces est dirigée vers l''avant', FALSE, 3),
  (6504044, 650404, 'aucune conclusion n''est possible', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (650405, 6504, 'Sur un enregistrement, les positions successives du centre d''un mobile sont alignées et également espacées. Le mouvement est :', 'Points alignés : trajectoire rectiligne ; points équidistants (à intervalles de temps égaux) : vitesse constante. Le mouvement est rectiligne uniforme.', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6504051, 650405, 'rectiligne uniforme', TRUE, 1),
  (6504052, 650405, 'rectiligne accéléré', FALSE, 2),
  (6504053, 650405, 'rectiligne ralenti', FALSE, 3),
  (6504054, 650405, 'circulaire', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (650406, 6504, 'Sur un enregistrement à intervalles de temps égaux, les points sont alignés mais de plus en plus espacés. On en déduit que :', 'Des points de plus en plus espacés traduisent une vitesse croissante : le mouvement n''est pas uniforme, donc $\sum F \neq 0$.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6504061, 650406, 'la somme des forces n''est pas nulle', TRUE, 1),
  (6504062, 650406, 'le corps est pseudo-isolé', FALSE, 2),
  (6504063, 650406, 'la somme des forces est nulle', FALSE, 3),
  (6504064, 650406, 'le corps est au repos', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (650407, 6504, 'L''inertie d''un corps, c''est-à-dire sa tendance à s''opposer aux changements de son mouvement, est mesurée par :', 'L''inertie est mesurée par la masse : plus la masse est grande, plus le corps s''oppose au changement de son mouvement.', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6504071, 650407, 'sa masse', TRUE, 1),
  (6504072, 650407, 'sa vitesse', FALSE, 2),
  (6504073, 650407, 'son poids', FALSE, 3),
  (6504074, 650407, 'son volume', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (650408, 6504, 'Un référentiel galiléen est un référentiel dans lequel :', 'Un référentiel galiléen est, par définition, un référentiel où le principe d''inertie est vérifié. Le référentiel terrestre l''est approximativement pour des expériences courtes.', 8);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6504081, 650408, 'le principe d''inertie est vérifié', TRUE, 1),
  (6504082, 650408, 'tout corps est au repos', FALSE, 2),
  (6504083, 650408, 'il n''existe aucune force', FALSE, 3),
  (6504084, 650408, 'la masse des corps est nulle', FALSE, 4);

-- equilibre-deux-forces
SET @l := (SELECT id FROM lecon WHERE slug = 'equilibre-deux-forces' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'pc-tcs'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (6505, NULL, @l, 'QCM — Equilibre deux forces', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (650501, 6505, 'Un solide en équilibre sous l''action de deux forces. Ces deux forces ont :', 'Les conditions d''équilibre sous deux forces : même droite d''action, sens opposés, même intensité.', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6505011, 650501, 'La même droite d''action, des sens opposés et la même intensité', TRUE, 1),
  (6505012, 650501, 'Des droites d''action perpendiculaires', FALSE, 2),
  (6505013, 650501, 'Le même sens et la même intensité', FALSE, 3),
  (6505014, 650501, 'Des intensités différentes mais le même sens', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (650502, 6505, 'La condition vectorielle d''équilibre d''un solide soumis à deux forces $\vec{F}_1$ et $\vec{F}_2$ s''écrit :', 'La somme vectorielle des forces est nulle : $\vec{F}_1 + \vec{F}_2 = \vec{0}$.', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6505021, 650502, '$\vec{F}_1 + \vec{F}_2 = \vec{0}$', TRUE, 1),
  (6505022, 650502, '$\vec{F}_1 = \vec{F}_2$', FALSE, 2),
  (6505023, 650502, '$\vec{F}_1 + \vec{F}_2 = 2\,\vec{F}_1$', FALSE, 3),
  (6505024, 650502, '$F_1 - F_2 = m\,g$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (650503, 6505, 'Un solide de masse $m = 0,5\ \text{kg}$ est suspendu à un fil vertical ($g = 9,8\ \text{N/kg}$). La tension du fil vaut :', 'À l''équilibre $T = P = m\,g = 0,5 \times 9,8 = 4,9\ \text{N}$.', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6505031, 650503, '$4,9\ \text{N}$', TRUE, 1),
  (6505032, 650503, '$0,5\ \text{N}$', FALSE, 2),
  (6505033, 650503, '$9,8\ \text{N}$', FALSE, 3),
  (6505034, 650503, '$49\ \text{N}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (650504, 6505, 'Un solide est posé, immobile, sur une table horizontale. La réaction $\vec{R}$ du support est :', 'Le support horizontal exerce une réaction verticale, vers le haut, d''intensité égale au poids.', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6505041, 650504, 'Verticale, vers le haut, d''intensité égale au poids', TRUE, 1),
  (6505042, 650504, 'Horizontale, d''intensité égale au poids', FALSE, 2),
  (6505043, 650504, 'Verticale, vers le bas', FALSE, 3),
  (6505044, 650504, 'Nulle, car le solide ne bouge pas', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (650505, 6505, 'Deux forces ont la même intensité, des sens opposés, mais deux droites d''action parallèles distinctes. Le solide :', 'Les forces forment un couple : elles font tourner le solide, il n''y a pas équilibre.', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6505051, 650505, 'Tourne : les forces forment un couple, il n''y a pas équilibre', TRUE, 1),
  (6505052, 650505, 'Reste en équilibre', FALSE, 2),
  (6505053, 650505, 'Se déplace en ligne droite', FALSE, 3),
  (6505054, 650505, 'Tombe en chute libre', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (650506, 6505, 'Un dynamomètre suspendu verticalement indique $9,8\ \text{N}$ pour un objet ($g = 9,8\ \text{N/kg}$). La masse de l''objet est :', 'Le dynamomètre indique le poids : $m = \dfrac{P}{g} = \dfrac{9,8}{9,8} = 1\ \text{kg}$.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6505061, 650506, '$1\ \text{kg}$', TRUE, 1),
  (6505062, 650506, '$9,8\ \text{kg}$', FALSE, 2),
  (6505063, 650506, '$0,1\ \text{kg}$', FALSE, 3),
  (6505064, 650506, '$96\ \text{kg}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (650507, 6505, 'L''intensité du poids $P$ d''un corps de masse $m$ est donnée par la relation :', 'Le poids vaut $P = m\,g$, avec $g$ l''intensité de la pesanteur.', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6505071, 650507, '$P = m\,g$', TRUE, 1),
  (6505072, 650507, '$P = \dfrac{m}{g}$', FALSE, 2),
  (6505073, 650507, '$P = \dfrac{g}{m}$', FALSE, 3),
  (6505074, 650507, '$P = m + g$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (650508, 6505, 'Pour un ressort qui suit la loi de Hooke, la tension est proportionnelle :', 'La tension du ressort est $T = k\,\Delta L$ : elle est proportionnelle à l''allongement $\Delta L$.', 8);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6505081, 650508, 'À l''allongement $\Delta L$ du ressort', TRUE, 1),
  (6505082, 650508, 'À la longueur à vide $L_0$ du ressort', FALSE, 2),
  (6505083, 650508, 'Au carré de l''allongement', FALSE, 3),
  (6505084, 650508, 'À l''inverse de l''allongement', FALSE, 4);

-- equilibre-trois-forces
SET @l := (SELECT id FROM lecon WHERE slug = 'equilibre-trois-forces' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'pc-tcs'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (6506, NULL, @l, 'QCM — Equilibre trois forces', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (650601, 6506, 'Pour qu''un solide soumis à trois forces soit en équilibre, ces forces doivent être :', 'Les trois conditions sont simultanées : coplanaires, concourantes et de somme vectorielle nulle.', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6506011, 650601, 'coplanaires, concourantes et de somme nulle', TRUE, 1),
  (6506012, 650601, 'uniquement de même valeur', FALSE, 2),
  (6506013, 650601, 'parallèles et de même sens', FALSE, 3),
  (6506014, 650601, 'perpendiculaires deux à deux', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (650602, 6506, 'À l''équilibre sous trois forces $\vec{F_1}$, $\vec{F_2}$, $\vec{F_3}$, la somme vectorielle vaut :', 'La condition d''équilibre s''écrit $\vec{F_1}+\vec{F_2}+\vec{F_3}=\vec{0}$.', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6506021, 650602, '$\vec{0}$', TRUE, 1),
  (6506022, 650602, '$\vec{P}$', FALSE, 2),
  (6506023, 650602, 'une valeur non nulle dirigée vers le bas', FALSE, 3),
  (6506024, 650602, '$2\vec{F_1}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (650603, 6506, 'Sur un plan incliné sans frottement, la réaction $\vec{R}$ du plan est :', 'Sans frottement, la réaction est entièrement normale : $\vec{R}$ est perpendiculaire au plan.', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6506031, 650603, 'perpendiculaire (normale) au plan', TRUE, 1),
  (6506032, 650603, 'parallèle au plan', FALSE, 2),
  (6506033, 650603, 'verticale vers le haut', FALSE, 3),
  (6506034, 650603, 'dirigée le long du fil', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (650604, 6506, 'Solide sur un plan incliné lisse d''angle $\alpha$, retenu par un fil parallèle au plan. La tension du fil vaut :', 'La projection sur l''axe parallèle au plan donne $T=P\sin\alpha=mg\sin\alpha$.', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6506041, 650604, '$T = mg\sin\alpha$', TRUE, 1),
  (6506042, 650604, '$T = mg\cos\alpha$', FALSE, 2),
  (6506043, 650604, '$T = mg\tan\alpha$', FALSE, 3),
  (6506044, 650604, '$T = mg$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (650605, 6506, 'Sur le même plan incliné lisse, la réaction du plan vaut :', 'La projection sur l''axe perpendiculaire au plan donne $R=P\cos\alpha=mg\cos\alpha$.', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6506051, 650605, '$R = mg\cos\alpha$', TRUE, 1),
  (6506052, 650605, '$R = mg\sin\alpha$', FALSE, 2),
  (6506053, 650605, '$R = mg$', FALSE, 3),
  (6506054, 650605, '$R = mg\tan\alpha$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (650606, 6506, 'Un solide de masse $m = 1\ \text{kg}$ est retenu par un fil parallèle à un plan incliné lisse d''angle $\alpha = 30^\circ$ (avec $g = 9{,}8\ \text{N}\cdot\text{kg}^{-1}$). La tension du fil vaut :', '$T = mg\sin\alpha = 1 \times 9{,}8 \times 0{,}5 = 4{,}9\ \text{N}$.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6506061, 650606, '$4{,}9\ \text{N}$', TRUE, 1),
  (6506062, 650606, '$9{,}8\ \text{N}$', FALSE, 2),
  (6506063, 650606, '$8{,}5\ \text{N}$', FALSE, 3),
  (6506064, 650606, '$2{,}5\ \text{N}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (650607, 6506, 'Un solide de masse $m = 2\ \text{kg}$ est sur un plan incliné lisse d''angle $\alpha = 60^\circ$ ($g = 9{,}8\ \text{N}\cdot\text{kg}^{-1}$). La réaction du plan vaut :', '$R = mg\cos\alpha = 2 \times 9{,}8 \times \cos 60^\circ = 19{,}6 \times 0{,}5 = 9{,}8\ \text{N}$.', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6506071, 650607, '$9{,}8\ \text{N}$', TRUE, 1),
  (6506072, 650607, '$17{,}0\ \text{N}$', FALSE, 2),
  (6506073, 650607, '$19{,}6\ \text{N}$', FALSE, 3),
  (6506074, 650607, '$4{,}9\ \text{N}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (650608, 6506, 'Par la méthode du triangle des forces, à l''équilibre les trois vecteurs placés bout à bout forment :', 'Comme $\vec{F_1}+\vec{F_2}+\vec{F_3}=\vec{0}$, l''extrémité du dernier vecteur rejoint l''origine du premier : le triangle est fermé.', 8);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6506081, 650608, 'un triangle fermé', TRUE, 1),
  (6506082, 650608, 'une ligne droite', FALSE, 2),
  (6506083, 650608, 'un triangle ouvert', FALSE, 3),
  (6506084, 650608, 'un carré', FALSE, 4);

-- equilibre-rotation
SET @l := (SELECT id FROM lecon WHERE slug = 'equilibre-rotation' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'pc-tcs'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (6507, NULL, @l, 'QCM — Equilibre rotation', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (650701, 6507, 'Dans le Système international, le moment d''une force s''exprime en :', 'Le moment vaut $F \times d$, soit des newtons multipliés par des mètres : $\text{N}\cdot\text{m}$.', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6507011, 650701, '$\text{N}\cdot\text{m}$', TRUE, 1),
  (6507012, 650701, '$\text{N}$', FALSE, 2),
  (6507013, 650701, '$\text{N}\cdot\text{m}^{-1}$', FALSE, 3),
  (6507014, 650701, '$\text{J}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (650702, 6507, 'Le moment d''une force $\vec{F}$ par rapport à un axe fixe est donné par :', 'Le moment est le produit de l''intensité par le bras de levier, affecté d''un signe : $\mathcal{M} = \pm F \times d$.', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6507021, 650702, '$\mathcal{M} = \pm F \times d$', TRUE, 1),
  (6507022, 650702, '$\mathcal{M} = \dfrac{F}{d}$', FALSE, 2),
  (6507023, 650702, '$\mathcal{M} = F + d$', FALSE, 3),
  (6507024, 650702, '$\mathcal{M} = \dfrac{d}{F}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (650703, 6507, 'Le bras de levier d''une force par rapport à un axe est :', 'C''est la distance, mesurée perpendiculairement, entre l''axe et la droite d''action de la force.', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6507031, 650703, 'la distance perpendiculaire de l''axe à la droite d''action de la force', TRUE, 1),
  (6507032, 650703, 'la distance du point d''application à l''axe, mesurée le long de la force', FALSE, 2),
  (6507033, 650703, 'l''intensité de la force divisée par la distance', FALSE, 3),
  (6507034, 650703, 'la longueur totale du solide', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (650704, 6507, 'Le moment d''une force est nul lorsque :', 'Si la droite d''action rencontre l''axe, le bras de levier est nul, donc $\mathcal{M} = 0$.', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6507041, 650704, 'la droite d''action de la force passe par l''axe', TRUE, 1),
  (6507042, 650704, 'la force est perpendiculaire au solide', FALSE, 2),
  (6507043, 650704, 'l''intensité de la force est maximale', FALSE, 3),
  (6507044, 650704, 'le bras de levier est maximal', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (650705, 6507, 'Une force d''intensité $F = 40\ \text{N}$ a un bras de levier $d = 0{,}25\ \text{m}$. Son moment vaut :', '$\mathcal{M} = F \times d = 40 \times 0{,}25 = 10\ \text{N}\cdot\text{m}$.', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6507051, 650705, '$10\ \text{N}\cdot\text{m}$', TRUE, 1),
  (6507052, 650705, '$100\ \text{N}\cdot\text{m}$', FALSE, 2),
  (6507053, 650705, '$0{,}1\ \text{N}\cdot\text{m}$', FALSE, 3),
  (6507054, 650705, '$1{,}6\ \text{N}\cdot\text{m}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (650706, 6507, 'Un solide mobile autour d''un axe fixe est en équilibre si :', 'C''est le théorème des moments : la somme algébrique des moments des forces extérieures est nulle.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6507061, 650706, '$\sum \mathcal{M}_\Delta(\vec{F}_{\text{ext}}) = 0$', TRUE, 1),
  (6507062, 650706, '$\sum \mathcal{M}_\Delta(\vec{F}_{\text{ext}}) > 0$', FALSE, 2),
  (6507063, 650706, 'tous les moments sont égaux', FALSE, 3),
  (6507064, 650706, 'la plus grande force a le plus petit bras de levier', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (650707, 6507, 'Pour un couple de forces, la somme vectorielle des deux forces est :', 'Les deux forces ont la même intensité et des sens opposés : leur somme est nulle, mais le couple fait néanmoins tourner le solide.', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6507071, 650707, 'nulle, mais le solide tourne tout de même', TRUE, 1),
  (6507072, 650707, 'nulle, donc le solide ne peut pas tourner', FALSE, 2),
  (6507073, 650707, 'égale au double d''une des forces', FALSE, 3),
  (6507074, 650707, 'dirigée selon l''axe de rotation', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (650708, 6507, 'Un couple est formé de deux forces de même intensité $F = 15\ \text{N}$, portées par des droites distantes de $d = 0{,}40\ \text{m}$. Le moment du couple vaut :', '$\mathcal{M} = F \times d = 15 \times 0{,}40 = 6\ \text{N}\cdot\text{m}$.', 8);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6507081, 650708, '$6\ \text{N}\cdot\text{m}$', TRUE, 1),
  (6507082, 650708, '$60\ \text{N}\cdot\text{m}$', FALSE, 2),
  (6507083, 650708, '$0{,}6\ \text{N}\cdot\text{m}$', FALSE, 3),
  (6507084, 650708, '$3{,}75\ \text{N}\cdot\text{m}$', FALSE, 4);

-- courant-continu
SET @l := (SELECT id FROM lecon WHERE slug = 'courant-continu' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'pc-tcs'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (6508, NULL, @l, 'QCM — Courant continu', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (650801, 6508, 'À l''extérieur du générateur, le sens conventionnel du courant est dirigé :', 'Par convention, le courant circule à l''extérieur du générateur de la borne positive $(+)$ vers la borne négative $(-)$.', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6508011, 650801, 'de la borne $(+)$ vers la borne $(-)$', TRUE, 1),
  (6508012, 650801, 'de la borne $(-)$ vers la borne $(+)$', FALSE, 2),
  (6508013, 650801, 'toujours de la gauche vers la droite', FALSE, 3),
  (6508014, 650801, 'dans les deux sens à la fois', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (650802, 6508, 'Dans un fil de cuivre, les porteurs de charge responsables du courant sont :', 'Dans les métaux, le courant est dû au déplacement des électrons libres, de charge négative.', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6508021, 650802, 'les électrons libres', TRUE, 1),
  (6508022, 650802, 'les ions positifs', FALSE, 2),
  (6508023, 650802, 'les protons', FALSE, 3),
  (6508024, 650802, 'les neutrons', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (650803, 6508, 'Pour mesurer l''intensité du courant dans une branche, l''ampèremètre doit être branché :', 'L''ampèremètre mesure le courant qui le traverse : il se branche en série dans la branche, jamais en dérivation aux bornes d''un dipôle.', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6508031, 650803, 'en série dans la branche', TRUE, 1),
  (6508032, 650803, 'en dérivation aux bornes du dipôle', FALSE, 2),
  (6508033, 650803, 'n''importe où dans le circuit', FALSE, 3),
  (6508034, 650803, 'en dehors du circuit', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (650804, 6508, 'L''intensité du courant électrique s''exprime, dans le Système international, en :', 'L''unité de l''intensité est l''ampère, de symbole $\text{A}$.', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6508041, 650804, 'ampère $(\text{A})$', TRUE, 1),
  (6508042, 650804, 'coulomb $(\text{C})$', FALSE, 2),
  (6508043, 650804, 'volt $(\text{V})$', FALSE, 3),
  (6508044, 650804, 'watt $(\text{W})$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (650805, 6508, 'Un courant d''intensité $I = 0{,}4\,\text{A}$ circule pendant $t = 50\,\text{s}$. La quantité d''électricité qui traverse une section du fil est :', 'On applique $Q = I\cdot t = 0{,}4 \times 50 = 20\,\text{C}$.', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6508051, 650805, '$20\,\text{C}$', TRUE, 1),
  (6508052, 650805, '$0{,}008\,\text{C}$', FALSE, 2),
  (6508053, 650805, '$125\,\text{C}$', FALSE, 3),
  (6508054, 650805, '$50{,}4\,\text{C}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (650806, 6508, 'À un nœud arrive un courant $I = 1{,}2\,\text{A}$ qui se partage en deux branches. Si l''une porte $I_1 = 0{,}8\,\text{A}$, l''autre porte :', 'D''après la loi des nœuds, $I = I_1 + I_2$, donc $I_2 = 1{,}2 - 0{,}8 = 0{,}4\,\text{A}$.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6508061, 650806, '$0{,}4\,\text{A}$', TRUE, 1),
  (6508062, 650806, '$2{,}0\,\text{A}$', FALSE, 2),
  (6508063, 650806, '$0{,}8\,\text{A}$', FALSE, 3),
  (6508064, 650806, '$1{,}2\,\text{A}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (650807, 6508, 'Dans un circuit en série, sans nœud, l''intensité du courant est :', 'Un circuit série ne comporte qu''une seule boucle et aucun nœud : l''intensité est la même en tout point.', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6508071, 650807, 'la même en tout point du circuit', TRUE, 1),
  (6508072, 650807, 'plus grande près du générateur', FALSE, 2),
  (6508073, 650807, 'nulle dans la dernière lampe', FALSE, 3),
  (6508074, 650807, 'différente dans chaque dipôle', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (650808, 6508, 'Une quantité d''électricité $Q = 60\,\text{C}$ traverse un conducteur pendant $t = 2\,\text{min}$. L''intensité du courant vaut :', 'On convertit $t = 2\,\text{min} = 120\,\text{s}$, puis $I = \dfrac{Q}{t} = \dfrac{60}{120} = 0{,}5\,\text{A}$.', 8);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6508081, 650808, '$0{,}5\,\text{A}$', TRUE, 1),
  (6508082, 650808, '$30\,\text{A}$', FALSE, 2),
  (6508083, 650808, '$120\,\text{A}$', FALSE, 3),
  (6508084, 650808, '$2\,\text{A}$', FALSE, 4);

-- tension-electrique
SET @l := (SELECT id FROM lecon WHERE slug = 'tension-electrique' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'pc-tcs'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (6509, NULL, @l, 'QCM — Tension electrique', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (650901, 6509, 'La tension $U_{AB}$ entre deux points $A$ et $B$ est définie par :', 'La tension est la différence des potentiels : $U_{AB} = V_A - V_B$.', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6509011, 650901, '$U_{AB} = V_A - V_B$', TRUE, 1),
  (6509012, 650901, '$U_{AB} = V_B - V_A$', FALSE, 2),
  (6509013, 650901, '$U_{AB} = V_A + V_B$', FALSE, 3),
  (6509014, 650901, '$U_{AB} = V_A \times V_B$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (650902, 6509, 'En inversant les deux points, la tension $U_{BA}$ vaut :', 'La tension est algébrique : $U_{BA} = V_B - V_A = -\,U_{AB}$.', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6509021, 650902, '$U_{BA} = -\,U_{AB}$', TRUE, 1),
  (6509022, 650902, '$U_{BA} = U_{AB}$', FALSE, 2),
  (6509023, 650902, '$U_{BA} = 2\,U_{AB}$', FALSE, 3),
  (6509024, 650902, '$U_{BA} = 0$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (650903, 6509, 'On donne $V_A = 7\,\text{V}$ et $V_B = 3\,\text{V}$. La tension $U_{AB}$ vaut :', '$U_{AB} = V_A - V_B = 7 - 3 = 4\,\text{V}$.', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6509031, 650903, '$4\,\text{V}$', TRUE, 1),
  (6509032, 650903, '$10\,\text{V}$', FALSE, 2),
  (6509033, 650903, '$-4\,\text{V}$', FALSE, 3),
  (6509034, 650903, '$21\,\text{V}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (650904, 6509, 'Pour mesurer une tension, le voltmètre se branche :', 'Le voltmètre se branche en dérivation (en parallèle) aux bornes du dipôle, jamais en série.', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6509041, 650904, 'en dérivation (en parallèle)', TRUE, 1),
  (6509042, 650904, 'en série', FALSE, 2),
  (6509043, 650904, 'en court-circuit', FALSE, 3),
  (6509044, 650904, 'à la place du générateur', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (650905, 6509, 'Le potentiel de la masse d''un circuit vaut :', 'La masse est la référence des potentiels : on lui attribue le potentiel nul, $V = 0\,\text{V}$.', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6509051, 650905, '$0\,\text{V}$', TRUE, 1),
  (6509052, 650905, '$220\,\text{V}$', FALSE, 2),
  (6509053, 650905, 'la tension du générateur', FALSE, 3),
  (6509054, 650905, 'une valeur impossible à fixer', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (650906, 6509, 'Une pile $U_{PN} = 4{,}5\,\text{V}$ alimente en série $D_1$ et $D_2$. Si $U_1 = 1{,}8\,\text{V}$, alors $U_2$ vaut :', 'Loi des mailles : $U_2 = U_{PN} - U_1 = 4{,}5 - 1{,}8 = 2{,}7\,\text{V}$.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6509061, 650906, '$2{,}7\,\text{V}$', TRUE, 1),
  (6509062, 650906, '$6{,}3\,\text{V}$', FALSE, 2),
  (6509063, 650906, '$4{,}5\,\text{V}$', FALSE, 3),
  (6509064, 650906, '$1{,}8\,\text{V}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (650907, 6509, 'La tension aux bornes d''un fil de connexion parfait est :', 'Un fil parfait a ses deux extrémités au même potentiel : la tension à ses bornes est nulle.', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6509071, 650907, '$0\,\text{V}$', TRUE, 1),
  (6509072, 650907, 'égale à la tension du générateur', FALSE, 2),
  (6509073, 650907, '$4{,}5\,\text{V}$', FALSE, 3),
  (6509074, 650907, 'toujours négative', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (650908, 6509, 'Trois dipôles en série sous $U = 12\,\text{V}$ : $U_1 = 5\,\text{V}$ et $U_2 = 4\,\text{V}$. La tension $U_3$ vaut :', 'Loi des mailles : $U_3 = U - U_1 - U_2 = 12 - 5 - 4 = 3\,\text{V}$.', 8);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6509081, 650908, '$3\,\text{V}$', TRUE, 1),
  (6509082, 650908, '$9\,\text{V}$', FALSE, 2),
  (6509083, 650908, '$21\,\text{V}$', FALSE, 3),
  (6509084, 650908, '$1\,\text{V}$', FALSE, 4);

-- association-conducteurs
SET @l := (SELECT id FROM lecon WHERE slug = 'association-conducteurs' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'pc-tcs'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (6510, NULL, @l, 'QCM — Association conducteurs', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (651001, 6510, 'La loi d''Ohm relie la tension $U$ aux bornes d''un conducteur ohmique de résistance $R$ à l''intensité $I$ qui le traverse. Elle s''écrit :', 'La tension est proportionnelle à l''intensité : $U = R\cdot I$, avec $U$ en volts, $I$ en ampères et $R$ en ohms.', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6510011, 651001, '$U = R\cdot I$', TRUE, 1),
  (6510012, 651001, '$U = \dfrac{R}{I}$', FALSE, 2),
  (6510013, 651001, '$U = \dfrac{I}{R}$', FALSE, 3),
  (6510014, 651001, '$R = U\cdot I$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (651002, 6510, 'Un conducteur ohmique de résistance $R = 220\ \Omega$ est traversé par un courant d''intensité $I = 0{,}10\ \text{A}$. La tension à ses bornes vaut :', '$U = R\cdot I = 220 \times 0{,}10 = 22\ \text{V}$.', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6510021, 651002, '$22\ \text{V}$', TRUE, 1),
  (6510022, 651002, '$2{,}2\ \text{V}$', FALSE, 2),
  (6510023, 651002, '$2200\ \text{V}$', FALSE, 3),
  (6510024, 651002, '$0{,}10\ \text{V}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (651003, 6510, 'Aux bornes d''un résistor soumis à $U = 6{,}0\ \text{V}$, on mesure une intensité $I = 20\ \text{mA}$. Sa résistance vaut :', 'Avec $I = 0{,}020\ \text{A}$, on a $R = \dfrac{U}{I} = \dfrac{6{,}0}{0{,}020} = 300\ \Omega$.', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6510031, 651003, '$300\ \Omega$', TRUE, 1),
  (6510032, 651003, '$120\ \Omega$', FALSE, 2),
  (6510033, 651003, '$0{,}12\ \Omega$', FALSE, 3),
  (6510034, 651003, '$30\ \Omega$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (651004, 6510, 'Trois résistors $R_1 = 150\ \Omega$, $R_2 = 250\ \Omega$ et $R_3 = 100\ \Omega$ sont associés en série. La résistance équivalente vaut :', 'En série, les résistances s''ajoutent : $R_{eq} = 150 + 250 + 100 = 500\ \Omega$.', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6510041, 651004, '$500\ \Omega$', TRUE, 1),
  (6510042, 651004, '$50\ \Omega$', FALSE, 2),
  (6510043, 651004, '$100\ \Omega$', FALSE, 3),
  (6510044, 651004, '$250\ \Omega$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (651005, 6510, 'Deux conducteurs ohmiques identiques de résistance $R = 100\ \Omega$ chacun sont associés en parallèle. La résistance équivalente vaut :', 'Pour deux résistors égaux en parallèle, $R_{eq} = \dfrac{R}{2} = \dfrac{100}{2} = 50\ \Omega$.', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6510051, 651005, '$50\ \Omega$', TRUE, 1),
  (6510052, 651005, '$200\ \Omega$', FALSE, 2),
  (6510053, 651005, '$100\ \Omega$', FALSE, 3),
  (6510054, 651005, '$150\ \Omega$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (651006, 6510, 'La résistance équivalente d''une association en parallèle est toujours :', 'L''inverse des résistances s''ajoute, ce qui diminue $R_{eq}$ : elle est toujours inférieure à la plus petite des résistances associées.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6510061, 651006, 'inférieure à la plus petite des résistances associées', TRUE, 1),
  (6510062, 651006, 'supérieure à la plus grande des résistances associées', FALSE, 2),
  (6510063, 651006, 'égale à la somme des résistances', FALSE, 3),
  (6510064, 651006, 'égale à la moyenne des résistances', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (651007, 6510, 'Dans un diviseur de tension formé de $R_1$ et $R_2$ en série sous une tension $U$, la tension $U_1$ aux bornes de $R_1$ est donnée par :', 'Le courant commun est $I = \dfrac{U}{R_1 + R_2}$ et $U_1 = R_1 I$, d''où $U_1 = \dfrac{R_1}{R_1 + R_2}\,U$.', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6510071, 651007, '$U_1 = \dfrac{R_1}{R_1 + R_2}\,U$', TRUE, 1),
  (6510072, 651007, '$U_1 = \dfrac{R_2}{R_1 + R_2}\,U$', FALSE, 2),
  (6510073, 651007, '$U_1 = \dfrac{R_1 + R_2}{R_1}\,U$', FALSE, 3),
  (6510074, 651007, '$U_1 = \dfrac{R_1}{R_2}\,U$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (651008, 6510, 'Un résistor de résistance $R = 50\ \Omega$ est traversé par un courant $I = 0{,}20\ \text{A}$. La puissance dissipée par effet Joule vaut :', '$P = R\cdot I^{2} = 50 \times (0{,}20)^{2} = 50 \times 0{,}040 = 2{,}0\ \text{W}$.', 8);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6510081, 651008, '$2{,}0\ \text{W}$', TRUE, 1),
  (6510082, 651008, '$10\ \text{W}$', FALSE, 2),
  (6510083, 651008, '$0{,}40\ \text{W}$', FALSE, 3),
  (6510084, 651008, '$200\ \text{W}$', FALSE, 4);

-- dipoles-passifs
SET @l := (SELECT id FROM lecon WHERE slug = 'dipoles-passifs' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'pc-tcs'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (6511, NULL, @l, 'QCM — Dipoles passifs', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (651101, 6511, 'Un dipôle est un composant qui possède :', 'Par définition, un dipôle possède exactement deux bornes par lesquelles il est relié au reste du circuit. La tension est mesurée entre ces deux bornes et l''intensité le traverse.', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6511011, 651101, 'exactement deux bornes', TRUE, 1),
  (6511012, 651101, 'une seule borne', FALSE, 2),
  (6511013, 651101, 'trois bornes', FALSE, 3),
  (6511014, 651101, 'autant de bornes que de fils', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (651102, 6511, 'La caractéristique d''un dipôle passif passe nécessairement par :', 'Un dipôle passif ne fait jamais circuler de courant par lui-même : si $U = 0$ alors $I = 0$. Sa caractéristique $U = f(I)$ passe donc par l''origine.', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6511021, 651102, 'l''origine du repère', TRUE, 1),
  (6511022, 651102, 'le point $(0\,;\,U_s)$', FALSE, 2),
  (6511023, 651102, 'un point d''ordonnée non nulle', FALSE, 3),
  (6511024, 651102, 'aucun point particulier', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (651103, 6511, 'La caractéristique $U = f(I)$ d''un dipôle ohmique est :', 'Pour un résistor, $U = R\,I$ : la tension est proportionnelle à l''intensité. La caractéristique est donc une droite passant par l''origine.', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6511031, 651103, 'une droite passant par l''origine', TRUE, 1),
  (6511032, 651103, 'une droite ne passant pas par l''origine', FALSE, 2),
  (6511033, 651103, 'une courbe passant par l''origine', FALSE, 3),
  (6511034, 651103, 'une demi-droite partant d''un seuil', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (651104, 6511, 'Pour un résistor, la pente de la caractéristique $U = f(I)$ représente :', 'Comme $U = R\,I$, le coefficient directeur de la droite vaut $R = \dfrac{U}{I}$ : la pente est égale à la résistance du dipôle.', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6511041, 651104, 'la résistance $R$', TRUE, 1),
  (6511042, 651104, 'l''inverse de la résistance $\dfrac{1}{R}$', FALSE, 2),
  (6511043, 651104, 'la tension de seuil', FALSE, 3),
  (6511044, 651104, 'l''intensité maximale', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (651105, 6511, 'Un résistor de résistance $R = 100\,\Omega$ est traversé par un courant $I = 50\,\text{mA}$. La tension à ses bornes vaut :', 'On applique la loi d''Ohm avec $I = 50\,\text{mA} = 0{,}050\,\text{A}$ : $U = R\,I = 100 \times 0{,}050 = 5\,\text{V}$.', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6511051, 651105, '$5\,\text{V}$', TRUE, 1),
  (6511052, 651105, '$5000\,\text{V}$', FALSE, 2),
  (6511053, 651105, '$0{,}5\,\text{V}$', FALSE, 3),
  (6511054, 651105, '$2\,\text{V}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (651106, 6511, 'Une diode au silicium en sens passant laisse passer un courant notable seulement si la tension dépasse :', 'En sens direct, le courant reste pratiquement nul tant que la tension est inférieure à la tension de seuil, voisine de $0{,}6\,\text{V}$ pour une diode au silicium.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6511061, 651106, 'une tension de seuil d''environ $0{,}6\,\text{V}$', TRUE, 1),
  (6511062, 651106, '$0\,\text{V}$ (dès qu''une tension est appliquée)', FALSE, 2),
  (6511063, 651106, '$6\,\text{V}$', FALSE, 3),
  (6511064, 651106, '$230\,\text{V}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (651107, 6511, 'En sens bloqué (polarisation inverse), une diode se comporte comme :', 'En sens bloqué, aucun courant ne traverse la diode : elle se comporte comme un interrupteur ouvert. C''est ce qui la rend non réversible.', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6511071, 651107, 'un interrupteur ouvert ($I = 0$)', TRUE, 1),
  (6511072, 651107, 'un fil de connexion parfait', FALSE, 2),
  (6511073, 651107, 'un résistor de faible résistance', FALSE, 3),
  (6511074, 651107, 'un générateur', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (651108, 6511, 'La caractéristique d''une lampe à incandescence n''est pas une droite parce que :', 'Quand le courant augmente, le filament s''échauffe et sa résistance augmente avec la température. La résistance n''étant pas constante, le dipôle est non linéaire et sa caractéristique s''incurve.', 8);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6511081, 651108, 'sa résistance augmente avec la température du filament', TRUE, 1),
  (6511082, 651108, 'sa résistance est rigoureusement constante', FALSE, 2),
  (6511083, 651108, 'c''est un dipôle actif', FALSE, 3),
  (6511084, 651108, 'elle ne laisse passer le courant que dans un sens', FALSE, 4);

-- dipole-actif
SET @l := (SELECT id FROM lecon WHERE slug = 'dipole-actif' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'pc-tcs'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (6512, NULL, @l, 'QCM — Dipole actif', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (651201, 6512, 'La caractéristique $U = f(I)$ d''un dipôle actif :', 'Un dipôle actif impose une tension entre ses bornes même pour $I = 0$ : sa caractéristique coupe l''axe des tensions en $U = E$, elle ne passe pas par l''origine.', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6512011, 651201, 'ne passe pas par l''origine', TRUE, 1),
  (6512012, 651201, 'passe toujours par l''origine', FALSE, 2),
  (6512013, 651201, 'est une parabole', FALSE, 3),
  (6512014, 651201, 'est une droite horizontale', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (651202, 6512, 'La loi d''Ohm pour un générateur de f.é.m. $E$ et de résistance interne $r$ s''écrit :', 'La tension aux bornes d''un générateur diminue quand l''intensité augmente : $U = E - r\,I$.', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6512021, 651202, '$U = E - r\,I$', TRUE, 1),
  (6512022, 651202, '$U = E + r\,I$', FALSE, 2),
  (6512023, 651202, '$U = r\,I - E$', FALSE, 3),
  (6512024, 651202, '$U = E \times r\,I$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (651203, 6512, 'La force électromotrice $E$ d''un générateur se lit sur sa caractéristique :', 'Pour $I = 0$, la loi $U = E - r\,I$ donne $U = E$ : la f.é.m. est l''ordonnée à l''origine de la caractéristique.', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6512031, 651203, 'à l''ordonnée à l''origine ($I = 0$)', TRUE, 1),
  (6512032, 651203, 'à l''abscisse à l''origine ($U = 0$)', FALSE, 2),
  (6512033, 651203, 'comme la pente de la droite', FALSE, 3),
  (6512034, 651203, 'au point où $U = 0$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (651204, 6512, 'Sur la caractéristique $U = f(I)$ d''un générateur, la résistance interne $r$ correspond :', 'La caractéristique est la droite $U = E - r\,I$ : sa pente vaut $-r$, donc $r$ est l''opposé de la pente.', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6512041, 651204, 'à l''opposé de la pente de la droite', TRUE, 1),
  (6512042, 651204, 'à la pente de la droite', FALSE, 2),
  (6512043, 651204, 'à l''ordonnée à l''origine', FALSE, 3),
  (6512044, 651204, 'à la valeur de $U$ en court-circuit', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (651205, 6512, 'Une pile de f.é.m. $E = 4{,}5$ V et de résistance interne $r = 0{,}5\ \Omega$ débite $I = 2{,}0$ A. La tension à ses bornes vaut :', '$U = E - r\,I = 4{,}5 - 0{,}5 \times 2{,}0 = 4{,}5 - 1{,}0 = 3{,}5$ V.', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6512051, 651205, '$3{,}5$ V', TRUE, 1),
  (6512052, 651205, '$5{,}5$ V', FALSE, 2),
  (6512053, 651205, '$4{,}5$ V', FALSE, 3),
  (6512054, 651205, '$9{,}0$ V', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (651206, 6512, 'Un générateur ($E$, $r$) alimente un résistor $R$. L''intensité du courant qui s''établit vaut :', 'Au point de fonctionnement, $E - r\,I = R\,I$, d''où $I = \dfrac{E}{R + r}$.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6512061, 651206, '$I = \dfrac{E}{R + r}$', TRUE, 1),
  (6512062, 651206, '$I = \dfrac{E}{R - r}$', FALSE, 2),
  (6512063, 651206, '$I = \dfrac{E}{R}$', FALSE, 3),
  (6512064, 651206, '$I = E\,(R + r)$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (651207, 6512, 'Pour un récepteur actif de f.c.é.m. $E''$ et de résistance interne $r''$, la tension à ses bornes vaut :', 'Contrairement au générateur, la tension d''un récepteur actif augmente avec l''intensité : $U = E'' + r''\,I$.', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6512071, 651207, '$U = E'' + r''\,I$', TRUE, 1),
  (6512072, 651207, '$U = E'' - r''\,I$', FALSE, 2),
  (6512073, 651207, '$U = r''\,I - E''$', FALSE, 3),
  (6512074, 651207, '$U = E''\,r''\,I$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (651208, 6512, 'Le rendement d''un générateur de f.é.m. $E$ délivrant une tension $U$ est :', '$\eta = \dfrac{P_{utile}}{P_{totale}} = \dfrac{U\,I}{E\,I} = \dfrac{U}{E}$. Comme $U < E$, on a toujours $\eta < 1$.', 8);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6512081, 651208, '$\eta = \dfrac{U}{E}$', TRUE, 1),
  (6512082, 651208, '$\eta = \dfrac{E}{U}$', FALSE, 2),
  (6512083, 651208, '$\eta = U \times E$', FALSE, 3),
  (6512084, 651208, '$\eta = E - U$', FALSE, 4);

-- transistor
SET @l := (SELECT id FROM lecon WHERE slug = 'transistor' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'pc-tcs'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (6513, NULL, @l, 'QCM — Transistor', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (651301, 6513, 'Combien de bornes possède un transistor bipolaire ?', 'Le transistor bipolaire possède trois bornes : la base $B$, le collecteur $C$ et l''émetteur $E$.', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6513011, 651301, 'Deux', FALSE, 1),
  (6513012, 651301, 'Trois', TRUE, 2),
  (6513013, 651301, 'Quatre', FALSE, 3),
  (6513014, 651301, 'Une seule', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (651302, 6513, 'Quelle borne du transistor commande son fonctionnement ?', 'C''est la base $B$ : un faible courant de base $I_B$ commande le courant de collecteur $I_C$.', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6513021, 651302, 'Le collecteur', FALSE, 1),
  (6513022, 651302, 'L''émetteur', FALSE, 2),
  (6513023, 651302, 'La base', TRUE, 3),
  (6513024, 651302, 'Aucune des trois', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (651303, 6513, 'Quelle relation lie les trois courants du transistor ?', 'Le courant d''émetteur est la somme des deux autres : $I_E = I_B + I_C$.', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6513031, 651303, '$I_B = I_C + I_E$', FALSE, 1),
  (6513032, 651303, '$I_E = I_B + I_C$', TRUE, 2),
  (6513033, 651303, '$I_C = I_B + I_E$', FALSE, 3),
  (6513034, 651303, '$I_E = I_C - I_B$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (651304, 6513, 'Le gain en courant d''un transistor est défini par :', 'Le gain en courant est $\beta = \dfrac{I_C}{I_B}$, un nombre sans unité généralement compris entre $50$ et $500$.', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6513041, 651304, '$\beta = \dfrac{I_B}{I_C}$', FALSE, 1),
  (6513042, 651304, '$\beta = I_C \times I_B$', FALSE, 2),
  (6513043, 651304, '$\beta = \dfrac{I_C}{I_B}$', TRUE, 3),
  (6513044, 651304, '$\beta = I_C - I_B$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (651305, 6513, 'Un transistor de gain $\beta = 200$ reçoit $I_B = 15\ \mu\text{A}$. Le courant de collecteur vaut :', '$I_C = \beta \times I_B = 200 \times 15\ \mu\text{A} = 3000\ \mu\text{A} = 3\ \text{mA}$.', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6513051, 651305, '$3\ \text{mA}$', TRUE, 1),
  (6513052, 651305, '$3\ \mu\text{A}$', FALSE, 2),
  (6513053, 651305, '$0{,}075\ \mu\text{A}$', FALSE, 3),
  (6513054, 651305, '$30\ \text{mA}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (651306, 6513, 'Lorsque le courant de base est nul ($I_B = 0$), le transistor est :', 'Avec $I_B = 0$, on a $I_C = 0$ : le transistor est bloqué et se comporte comme un interrupteur ouvert.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6513061, 651306, 'Saturé (interrupteur fermé)', FALSE, 1),
  (6513062, 651306, 'Bloqué (interrupteur ouvert)', TRUE, 2),
  (6513063, 651306, 'En amplification', FALSE, 3),
  (6513064, 651306, 'Détruit', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (651307, 6513, 'Dans l''état saturé, le transistor se comporte comme :', 'À la saturation, le courant de collecteur est maximal : le transistor se comporte comme un interrupteur fermé.', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6513071, 651307, 'Un interrupteur ouvert', FALSE, 1),
  (6513072, 651307, 'Un interrupteur fermé', TRUE, 2),
  (6513073, 651307, 'Un générateur', FALSE, 3),
  (6513074, 651307, 'Un condensateur', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (651308, 6513, 'Dans un détecteur d''obscurité, on relie la base du transistor à :', 'Une photorésistance placée dans le circuit de base laisse passer un courant $I_B$ quand il fait sombre : le transistor sature et la lampe s''allume automatiquement.', 8);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6513081, 651308, 'Une photorésistance', TRUE, 1),
  (6513082, 651308, 'Une bobine', FALSE, 2),
  (6513083, 651308, 'Un condensateur', FALSE, 3),
  (6513084, 651308, 'Une diode électroluminescente', FALSE, 4);

-- amplificateur-operationnel
SET @l := (SELECT id FROM lecon WHERE slug = 'amplificateur-operationnel' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'pc-tcs'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (6514, NULL, @l, 'QCM — Amplificateur operationnel', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (651401, 6514, 'Pour un amplificateur opérationnel idéal, les courants d''entrée valent :', 'L''AO idéal ne consomme aucun courant par ses entrées : $i^{+} = i^{-} = 0$.', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6514011, 651401, '$i^{+} = i^{-} = 0$', TRUE, 1),
  (6514012, 651401, '$i^{+} = i^{-} = V_{cc}$', FALSE, 2),
  (6514013, 651401, '$i^{+} = -i^{-}$', FALSE, 3),
  (6514014, 651401, '$i^{+} = i^{-} = 1\,\text{A}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (651402, 6514, 'En régime linéaire, un AO idéal vérifie de plus :', 'La rétroaction négative impose $\varepsilon = V^{+} - V^{-} = 0$, donc $V^{+} = V^{-}$.', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6514021, 651402, '$V^{+} = V^{-}$', TRUE, 1),
  (6514022, 651402, '$V^{+} = -V^{-}$', FALSE, 2),
  (6514023, 651402, '$V_s = V_{sat}$', FALSE, 3),
  (6514024, 651402, '$V^{+} - V^{-} = V_{cc}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (651403, 6514, 'Un AO fonctionne en régime linéaire lorsque :', 'Une rétroaction vers l''entrée $-$ assure le régime linéaire, où l''on écrit $V^{+} = V^{-}$.', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6514031, 651403, 'la sortie est reliée à l''entrée inverseuse (rétroaction négative)', TRUE, 1),
  (6514032, 651403, 'la sortie est reliée à l''entrée non inverseuse', FALSE, 2),
  (6514033, 651403, 'il n''y a aucune rétroaction', FALSE, 3),
  (6514034, 651403, 'les deux entrées sont reliées à la masse', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (651404, 6514, 'Dans le montage suiveur, la tension de sortie vaut :', 'Le suiveur a un gain de 1 : la sortie suit l''entrée, $V_s = V_e$.', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6514041, 651404, '$V_s = V_e$', TRUE, 1),
  (6514042, 651404, '$V_s = -V_e$', FALSE, 2),
  (6514043, 651404, '$V_s = 2\,V_e$', FALSE, 3),
  (6514044, 651404, '$V_s = V_{sat}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (651405, 6514, 'Pour un amplificateur inverseur de résistances $R_1$ et $R_2$, la tension de sortie est :', 'Le montage inverseur donne $V_s = -\dfrac{R_2}{R_1}\,V_e$, de gain négatif.', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6514051, 651405, '$V_s = -\dfrac{R_2}{R_1}\,V_e$', TRUE, 1),
  (6514052, 651405, '$V_s = \dfrac{R_2}{R_1}\,V_e$', FALSE, 2),
  (6514053, 651405, '$V_s = \left(1 + \dfrac{R_2}{R_1}\right) V_e$', FALSE, 3),
  (6514054, 651405, '$V_s = -\dfrac{R_1}{R_2}\,V_e$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (651406, 6514, 'Un amplificateur inverseur a $R_1 = 1\,\text{k}\Omega$, $R_2 = 5\,\text{k}\Omega$ et $V_e = 2\,\text{V}$. La tension de sortie vaut :', '$V_s = -\dfrac{R_2}{R_1}\,V_e = -5 \times 2 = -10\,\text{V}$.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6514061, 651406, '$-10\,\text{V}$', TRUE, 1),
  (6514062, 651406, '$+10\,\text{V}$', FALSE, 2),
  (6514063, 651406, '$-2{,}5\,\text{V}$', FALSE, 3),
  (6514064, 651406, '$+12\,\text{V}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (651407, 6514, 'Pour l''amplificateur non inverseur, le gain $A = \dfrac{V_s}{V_e}$ vaut :', 'Le montage non inverseur a un gain positif $A = 1 + \dfrac{R_2}{R_1} > 1$.', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6514071, 651407, '$1 + \dfrac{R_2}{R_1}$', TRUE, 1),
  (6514072, 651407, '$-\dfrac{R_2}{R_1}$', FALSE, 2),
  (6514073, 651407, '$\dfrac{R_2}{R_1}$', FALSE, 3),
  (6514074, 651407, '$1 - \dfrac{R_2}{R_1}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (651408, 6514, 'Dans un comparateur (régime saturé) avec $V^{+} = V_e$ et $V^{-} = V_{ref}$, si $V_e > V_{ref}$ alors :', 'En régime saturé, si $V^{+} > V^{-}$ la sortie bascule à $V_s = +V_{sat}$.', 8);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6514081, 651408, '$V_s = +V_{sat}$', TRUE, 1),
  (6514082, 651408, '$V_s = -V_{sat}$', FALSE, 2),
  (6514083, 651408, '$V_s = 0$', FALSE, 3),
  (6514084, 651408, '$V_s = V_e - V_{ref}$', FALSE, 4);

-- especes-chimiques
SET @l := (SELECT id FROM lecon WHERE slug = 'especes-chimiques' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'pc-tcs'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (6515, NULL, @l, 'QCM — Especes chimiques', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (651501, 6515, 'Un corps pur est un système constitué :', 'Par définition, un corps pur ne contient qu''une seule espèce chimique ; un mélange en contient plusieurs.', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6515011, 651501, 'd''une seule espèce chimique', TRUE, 1),
  (6515012, 651501, 'de plusieurs espèces chimiques', FALSE, 2),
  (6515013, 651501, 'uniquement d''atomes de carbone', FALSE, 3),
  (6515014, 651501, 'toujours de deux phases distinctes', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (651502, 6515, 'Parmi les systèmes suivants, lequel est un mélange homogène ?', 'L''eau salée est homogène (constituants indiscernables). L''eau distillée et le dioxygène pur sont des corps purs ; l''eau boueuse est hétérogène.', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6515021, 651502, 'l''eau salée', TRUE, 1),
  (6515022, 651502, 'l''eau distillée', FALSE, 2),
  (6515023, 651502, 'le dioxygène $O_2$ pur', FALSE, 3),
  (6515024, 651502, 'l''eau boueuse', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (651503, 6515, 'L''aspirine, fabriquée en usine, est une espèce chimique :', 'L''aspirine est produite par synthèse chimique : c''est une espèce synthétique.', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6515031, 651503, 'synthétique', TRUE, 1),
  (6515032, 651503, 'naturelle extraite d''une plante', FALSE, 2),
  (6515033, 651503, 'minérale', FALSE, 3),
  (6515034, 651503, 'qui n''a pas de formule chimique', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (651504, 6515, 'Le glucose, de formule $C_6H_{12}O_6$, est une espèce :', 'Sa molécule est constituée de carbone et d''hydrogène : c''est une espèce organique.', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6515041, 651504, 'organique', TRUE, 1),
  (6515042, 651504, 'minérale', FALSE, 2),
  (6515043, 651504, 'qui ne contient pas de carbone', FALSE, 3),
  (6515044, 651504, 'gazeuse à température ambiante', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (651505, 6515, 'Un corps de masse $m = 50\ \text{g}$ occupe un volume $V = 20\ \text{cm}^3$. Sa masse volumique vaut :', '$\rho = \dfrac{m}{V} = \dfrac{50}{20} = 2{,}5\ \text{g}\cdot\text{cm}^{-3}$.', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6515051, 651505, '$2{,}5\ \text{g}\cdot\text{cm}^{-3}$', TRUE, 1),
  (6515052, 651505, '$0{,}4\ \text{g}\cdot\text{cm}^{-3}$', FALSE, 2),
  (6515053, 651505, '$70\ \text{g}\cdot\text{cm}^{-3}$', FALSE, 3),
  (6515054, 651505, '$1000\ \text{g}\cdot\text{cm}^{-3}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (651506, 6515, 'Un liquide a une masse volumique $\rho = 0{,}8\ \text{g}\cdot\text{cm}^{-3}$. Sachant que $\rho_{eau} = 1{,}0\ \text{g}\cdot\text{cm}^{-3}$, sa densité vaut :', '$d = \dfrac{\rho}{\rho_{eau}} = \dfrac{0{,}8}{1{,}0} = 0{,}8$ (sans unité).', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6515061, 651506, '$0{,}8$', TRUE, 1),
  (6515062, 651506, '$1{,}25$', FALSE, 2),
  (6515063, 651506, '$8$', FALSE, 3),
  (6515064, 651506, '$0{,}08$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (651507, 6515, 'La masse volumique de l''aluminium est $\rho = 2700\ \text{kg}\cdot\text{m}^{-3}$. Exprimée en $\text{g}\cdot\text{cm}^{-3}$, elle vaut :', '$1\ \text{kg} = 1000\ \text{g}$ et $1\ \text{m}^3 = 10^6\ \text{cm}^3$, donc $\rho = \dfrac{2700 \times 1000}{10^6} = 2{,}7\ \text{g}\cdot\text{cm}^{-3}$.', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6515071, 651507, '$2{,}7\ \text{g}\cdot\text{cm}^{-3}$', TRUE, 1),
  (6515072, 651507, '$27\ \text{g}\cdot\text{cm}^{-3}$', FALSE, 2),
  (6515073, 651507, '$270\ \text{g}\cdot\text{cm}^{-3}$', FALSE, 3),
  (6515074, 651507, '$0{,}27\ \text{g}\cdot\text{cm}^{-3}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (651508, 6515, 'Parmi ces caractéristiques physiques, laquelle est une grandeur sans unité ?', 'La densité est un rapport de deux masses volumiques : elle n''a pas d''unité. Les autres s''expriment en $\text{g}\cdot\text{cm}^{-3}$, en $^{\circ}\text{C}$ ou en $\text{g}\cdot\text{L}^{-1}$.', 8);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6515081, 651508, 'la densité', TRUE, 1),
  (6515082, 651508, 'la masse volumique', FALSE, 2),
  (6515083, 651508, 'la température d''ébullition', FALSE, 3),
  (6515084, 651508, 'la solubilité', FALSE, 4);

-- extraction-separation
SET @l := (SELECT id FROM lecon WHERE slug = 'extraction-separation' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'pc-tcs'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (6516, NULL, @l, 'QCM — Extraction separation', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (651601, 6516, 'Un bon solvant pour réaliser une extraction par solvant doit :', 'Il faut deux phases (non miscibilité) et que l''espèce passe dans le solvant (grande solubilité).', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6516011, 651601, 'être non miscible à la phase de départ et bien dissoudre l''espèce à extraire', TRUE, 1),
  (6516012, 651601, 'être miscible à la phase de départ', FALSE, 2),
  (6516013, 651601, 'dissoudre l''espèce moins bien que le solvant de départ', FALSE, 3),
  (6516014, 651601, 'avoir obligatoirement la même densité que l''eau', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (651602, 6516, 'Deux liquides non miscibles de densités $0{,}80$ et $1{,}00$ sont dans une ampoule à décanter. Le liquide de densité $0{,}80$ se trouve :', 'Le moins dense forme la phase supérieure.', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6516021, 651602, 'en haut', TRUE, 1),
  (6516022, 651602, 'en bas', FALSE, 2),
  (6516023, 651602, 'mélangé de façon homogène', FALSE, 3),
  (6516024, 651602, 'au niveau du robinet uniquement', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (651603, 6516, 'L''hydrodistillation (entraînement à la vapeur) permet d''extraire des espèces :', 'La vapeur d''eau entraîne les espèces odorantes volatiles.', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6516031, 651603, 'volatiles, comme les huiles essentielles', TRUE, 1),
  (6516032, 651603, 'non volatiles et très denses', FALSE, 2),
  (6516033, 651603, 'solubles uniquement dans l''eau salée', FALSE, 3),
  (6516034, 651603, 'détruites par la chaleur', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (651604, 6516, 'On distille un mélange d''éthanol ($\theta_{eb}=78\ ^\circ\text{C}$) et d''eau ($\theta_{eb}=100\ ^\circ\text{C}$). La première espèce recueillie est :', 'L''espèce la plus volatile (température d''ébullition la plus basse) distille en premier.', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6516041, 651604, 'l''éthanol', TRUE, 1),
  (6516042, 651604, 'l''eau', FALSE, 2),
  (6516043, 651604, 'les deux en même temps', FALSE, 3),
  (6516044, 651604, 'aucune des deux ne distille', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (651605, 6516, 'Lors d''une CCM, une tache a migré de $d=3{,}0\ \text{cm}$ et le front du solvant de $D=5{,}0\ \text{cm}$. Le rapport frontal vaut :', '$R_f=\frac{d}{D}=\frac{3{,}0}{5{,}0}=0{,}60$.', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6516051, 651605, '$0{,}60$', TRUE, 1),
  (6516052, 651605, '$1{,}7$', FALSE, 2),
  (6516053, 651605, '$0{,}30$', FALSE, 3),
  (6516054, 651605, '$8{,}0$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (651606, 6516, 'Le rapport frontal $R_f$ d''une espèce est :', '$R_f=\frac{d}{D}$ est un rapport de deux longueurs, sans unité, toujours compris entre 0 et 1.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6516061, 651606, 'un nombre sans unité compris entre $0$ et $1$', TRUE, 1),
  (6516062, 651606, 'une longueur exprimée en cm', FALSE, 2),
  (6516063, 651606, 'toujours supérieur à $1$', FALSE, 3),
  (6516064, 651606, 'une masse volumique', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (651607, 6516, 'Sur un chromatogramme, un dépôt qui ne laisse qu''une seule tache correspond à :', 'Une seule tache = corps pur ; plusieurs taches = mélange.', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6516071, 651607, 'un corps pur', TRUE, 1),
  (6516072, 651607, 'un mélange de deux espèces', FALSE, 2),
  (6516073, 651607, 'un mélange de trois espèces', FALSE, 3),
  (6516074, 651607, 'un solvant', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (651608, 6516, 'Sur une même plaque, deux taches issues de deux dépôts différents montent à la même hauteur (même $R_f$). On en déduit que les deux espèces sont :', 'Pour un même éluant et une même phase fixe, un même $R_f$ caractérise une même espèce.', 8);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6516081, 651608, 'identiques', TRUE, 1),
  (6516082, 651608, 'forcément différentes', FALSE, 2),
  (6516083, 651608, 'deux solvants', FALSE, 3),
  (6516084, 651608, 'non comparables', FALSE, 4);

-- synthese-especes
SET @l := (SELECT id FROM lecon WHERE slug = 'synthese-especes' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'pc-tcs'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (6517, NULL, @l, 'QCM — Synthese especes', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (651701, 6517, 'Qu''appelle-t-on « synthèse » d''une espèce chimique ?', 'La synthèse est la fabrication d''une espèce chimique au laboratoire ou dans l''industrie, à partir de réactifs, au cours d''une ou plusieurs transformations chimiques.', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6517011, 651701, 'Sa fabrication à partir de réactifs par une transformation chimique', TRUE, 1),
  (6517012, 651701, 'Son extraction d''un produit naturel par un solvant', FALSE, 2),
  (6517013, 651701, 'Sa séparation d''un mélange par distillation', FALSE, 3),
  (6517014, 651701, 'Son identification par chromatographie', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (651702, 6517, 'Quel est le rôle du chauffage dans une réaction de synthèse ?', 'Le chauffage est un facteur cinétique : en élevant la température, il accélère une réaction qui serait trop lente à température ambiante.', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6517021, 651702, 'Accélérer la réaction (facteur cinétique)', TRUE, 1),
  (6517022, 651702, 'Refroidir le mélange réactionnel', FALSE, 2),
  (6517023, 651702, 'Augmenter le rendement au-delà de $100\ \%$', FALSE, 3),
  (6517024, 651702, 'Purifier le produit obtenu', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (651703, 6517, 'Dans un chauffage à reflux, quel est le rôle du réfrigérant placé au-dessus du ballon ?', 'Le réfrigérant condense les vapeurs issues de l''ébullition ; le liquide formé retombe dans le ballon (reflux), ce qui évite toute perte de matière.', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6517031, 651703, 'Condenser les vapeurs qui retombent dans le ballon', TRUE, 1),
  (6517032, 651703, 'Chauffer le mélange réactionnel', FALSE, 2),
  (6517033, 651703, 'Filtrer le produit solide', FALSE, 3),
  (6517034, 651703, 'Mesurer la température de fusion', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (651704, 6517, 'Quel est l''ordre chronologique correct des étapes d''une synthèse ?', 'On réalise d''abord la transformation chimique, puis l''isolement du produit, ensuite sa purification, et enfin son identification.', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6517041, 651704, 'Transformation, isolement, purification, identification', TRUE, 1),
  (6517042, 651704, 'Identification, purification, isolement, transformation', FALSE, 2),
  (6517043, 651704, 'Isolement, transformation, identification, purification', FALSE, 3),
  (6517044, 651704, 'Purification, transformation, isolement, identification', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (651705, 6517, 'En quoi consiste la recristallisation d''un solide ?', 'On dissout le solide à chaud dans un solvant adapté, puis on refroidit : le produit cristallise tandis que les impuretés restent dissoutes ; on récupère les cristaux purs par filtration.', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6517051, 651705, 'Dissoudre à chaud puis refroidir pour faire cristalliser le produit pur', TRUE, 1),
  (6517052, 651705, 'Chauffer à reflux le mélange réactionnel', FALSE, 2),
  (6517053, 651705, 'Évaporer totalement le solvant à sec', FALSE, 3),
  (6517054, 651705, 'Séparer deux liquides non miscibles', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (651706, 6517, 'En chromatographie sur couche mince, comment calcule-t-on le rapport frontal $R_f$ d''une tache ?', 'Le rapport frontal est le quotient $R_f = \dfrac{d}{D}$ de la distance $d$ parcourue par la tache sur la distance $D$ parcourue par le front du solvant.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6517061, 651706, '$R_f = \dfrac{d}{D}$', TRUE, 1),
  (6517062, 651706, '$R_f = \dfrac{D}{d}$', FALSE, 2),
  (6517063, 651706, '$R_f = d \times D$', FALSE, 3),
  (6517064, 651706, '$R_f = d + D$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (651707, 6517, 'Sur un chromatogramme, le produit synthétisé et la référence pure donnent deux taches à la même hauteur. Que peut-on en conclure ?', 'Deux taches au même rapport frontal (même hauteur) indiquent une même espèce chimique : le produit contient bien l''espèce attendue.', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6517071, 651707, 'Le produit contient bien l''espèce attendue', TRUE, 1),
  (6517072, 651707, 'Le produit est forcément impur', FALSE, 2),
  (6517073, 651707, 'Les deux espèces sont différentes', FALSE, 3),
  (6517074, 651707, 'La synthèse a échoué', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (651708, 6517, 'Un solide synthétisé fond sur un large intervalle de température, plus bas que la valeur tabulée de l''espèce pure. Qu''indique cette observation ?', 'Un corps pur fond à une température précise et caractéristique. Une fusion étalée et abaissée révèle la présence d''impuretés : le solide est impur.', 8);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6517081, 651708, 'Le solide est impur', TRUE, 1),
  (6517082, 651708, 'Le solide est parfaitement pur', FALSE, 2),
  (6517083, 651708, 'Le solide est un liquide', FALSE, 3),
  (6517084, 651708, 'Le rendement de la synthèse est de $100\ \%$', FALSE, 4);

-- modele-atome
SET @l := (SELECT id FROM lecon WHERE slug = 'modele-atome' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'pc-tcs'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (6518, NULL, @l, 'QCM — Modele atome', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (651801, 6518, 'L''atome $^{27}_{13}\text{Al}$ contient :', 'Le nombre de protons est $Z = 13$ et le nombre de neutrons est $N = A - Z = 27 - 13 = 14$.', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6518011, 651801, '$13$ protons et $14$ neutrons', TRUE, 1),
  (6518012, 651801, '$27$ protons et $13$ neutrons', FALSE, 2),
  (6518013, 651801, '$13$ protons et $27$ neutrons', FALSE, 3),
  (6518014, 651801, '$14$ protons et $13$ neutrons', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (651802, 6518, 'Un atome possède $15$ protons et $16$ neutrons. Son nombre de masse $A$ est :', 'Le nombre de masse compte tous les nucléons : $A = Z + N = 15 + 16 = 31$.', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6518021, 651802, '$31$', TRUE, 1),
  (6518022, 651802, '$15$', FALSE, 2),
  (6518023, 651802, '$16$', FALSE, 3),
  (6518024, 651802, '$1$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (651803, 6518, 'Deux atomes isotopes ont :', 'Les isotopes ont le même numéro atomique $Z$ (même nombre de protons) mais des nombres de masse $A$ différents, donc des nombres de neutrons différents.', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6518031, 651803, 'le même $Z$ mais des $A$ différents', TRUE, 1),
  (6518032, 651803, 'le même $A$ mais des $Z$ différents', FALSE, 2),
  (6518033, 651803, 'le même nombre de neutrons', FALSE, 3),
  (6518034, 651803, 'des nombres de protons différents', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (651804, 6518, 'L''atome de magnésium ($Z = 12$) perd $2$ électrons. L''ion formé est :', 'En perdant $2$ électrons négatifs, l''atome devient un cation de charge $+2e$ : c''est l''ion $\text{Mg}^{2+}$.', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6518041, 651804, '$\text{Mg}^{2+}$', TRUE, 1),
  (6518042, 651804, '$\text{Mg}^{2-}$', FALSE, 2),
  (6518043, 651804, '$\text{Mg}^{+}$', FALSE, 3),
  (6518044, 651804, '$\text{Mg}^{12+}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (651805, 6518, 'L''ion $\text{Cl}^{-}$ provient du chlore ($Z = 17$). Il possède :', 'L''ion chlorure a gagné $1$ électron : il garde ses $17$ protons et possède $17 + 1 = 18$ électrons.', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6518051, 651805, '$17$ protons et $18$ électrons', TRUE, 1),
  (6518052, 651805, '$18$ protons et $18$ électrons', FALSE, 2),
  (6518053, 651805, '$17$ protons et $16$ électrons', FALSE, 3),
  (6518054, 651805, '$18$ protons et $17$ électrons', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (651806, 6518, 'La structure électronique de l''atome de soufre ($Z = 16$) est :', 'On remplit $\text{K}$ (max $2$), puis $\text{L}$ (max $8$), puis $\text{M}$ : $16 = 2 + 8 + 6$, soit $\text{K}^{2}\,\text{L}^{8}\,\text{M}^{6}$.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6518061, 651806, '$\text{K}^{2}\,\text{L}^{8}\,\text{M}^{6}$', TRUE, 1),
  (6518062, 651806, '$\text{K}^{2}\,\text{L}^{6}\,\text{M}^{8}$', FALSE, 2),
  (6518063, 651806, '$\text{K}^{8}\,\text{L}^{8}$', FALSE, 3),
  (6518064, 651806, '$\text{K}^{2}\,\text{L}^{8}\,\text{M}^{8}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (651807, 6518, 'L''atome d''aluminium a pour structure $\text{K}^{2}\,\text{L}^{8}\,\text{M}^{3}$. Son nombre d''électrons de valence est :', 'La couche externe est la dernière couche occupée, ici la couche $\text{M}$ qui porte $3$ électrons : il y a donc $3$ électrons de valence.', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6518071, 651807, '$3$', TRUE, 1),
  (6518072, 651807, '$8$', FALSE, 2),
  (6518073, 651807, '$13$', FALSE, 3),
  (6518074, 651807, '$2$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (651808, 6518, 'On donne $m_{\text{nucléon}} \approx 1{,}67 \times 10^{-27}\ \text{kg}$. La masse approchée de l''atome $^{16}_{8}\text{O}$ est :', 'Toute la masse est dans le noyau, qui compte $A = 16$ nucléons : $m \approx 16 \times 1{,}67 \times 10^{-27} \approx 2{,}7 \times 10^{-26}\ \text{kg}$.', 8);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6518081, 651808, '$2{,}7 \times 10^{-26}\ \text{kg}$', TRUE, 1),
  (6518082, 651808, '$1{,}3 \times 10^{-26}\ \text{kg}$', FALSE, 2),
  (6518083, 651808, '$2{,}7 \times 10^{-27}\ \text{kg}$', FALSE, 3),
  (6518084, 651808, '$1{,}67 \times 10^{-27}\ \text{kg}$', FALSE, 4);

-- geometrie-molecules
SET @l := (SELECT id FROM lecon WHERE slug = 'geometrie-molecules' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'pc-tcs'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (6519, NULL, @l, 'QCM — Geometrie molecules', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (651901, 6519, 'D''après la règle du duet, de combien d''électrons l''atome d''hydrogène $\text{H}$ tend-il à s''entourer ?', 'L''hydrogène est proche de l''hélium : il suit la règle du duet et s''entoure de $2$ électrons, ce qui correspond à la formation d''une seule liaison covalente.', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6519011, 651901, '$2$ électrons', TRUE, 1),
  (6519012, 651901, '$8$ électrons', FALSE, 2),
  (6519013, 651901, '$1$ électron', FALSE, 3),
  (6519014, 651901, '$4$ électrons', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (651902, 6519, 'Combien de liaisons covalentes l''atome d''azote $\text{N}$ (qui possède $5$ électrons externes) forme-t-il ?', 'Pour respecter l''octet, l''azote doit gagner $8 - 5 = 3$ électrons par mise en commun : il forme donc $3$ liaisons covalentes (comme dans $\text{NH}_3$).', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6519021, 651902, '$3$ liaisons', TRUE, 1),
  (6519022, 651902, '$2$ liaisons', FALSE, 2),
  (6519023, 651902, '$4$ liaisons', FALSE, 3),
  (6519024, 651902, '$5$ liaisons', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (651903, 6519, 'Dans la représentation de Lewis de l''eau $\text{H}_2\text{O}$, combien de doublets non liants porte l''atome d''oxygène ?', 'L''oxygène ($6$ électrons externes) forme $2$ liaisons $\text{O}-\text{H}$ ; il lui reste $4$ électrons, soit $2$ doublets non liants.', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6519031, 651903, '$2$ doublets non liants', TRUE, 1),
  (6519032, 651903, '$1$ doublet non liant', FALSE, 2),
  (6519033, 651903, '$3$ doublets non liants', FALSE, 3),
  (6519034, 651903, 'aucun doublet non liant', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (651904, 6519, 'Quelle est la géométrie de la molécule de dioxyde de carbone $\text{CO}_2$ ($\text{O}=\text{C}=\text{O}$) ?', 'Le carbone central est entouré de $2$ directions de liaison (deux doubles liaisons) et d''aucun doublet non liant : elles s''écartent au maximum, la molécule est linéaire (angle $180^\circ$).', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6519041, 651904, 'linéaire', TRUE, 1),
  (6519042, 651904, 'coudée', FALSE, 2),
  (6519043, 651904, 'pyramidale', FALSE, 3),
  (6519044, 651904, 'tétraédrique', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (651905, 6519, 'L''atome d''azote de l''ammoniac $\text{NH}_3$ porte $3$ doublets liants et $1$ doublet non liant. Quelle est la géométrie de la molécule ?', 'Les $4$ doublets pointent vers les sommets d''un tétraèdre, mais seuls $3$ portent un atome $\text{H}$ : la molécule est pyramidale à base triangulaire (angle $\approx 107^\circ$).', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6519051, 651905, 'pyramidale', TRUE, 1),
  (6519052, 651905, 'linéaire', FALSE, 2),
  (6519053, 651905, 'coudée', FALSE, 3),
  (6519054, 651905, 'tétraédrique', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (651906, 6519, 'Dans la molécule de méthane $\text{CH}_4$, quel est l''angle approximatif entre deux liaisons $\text{H}-\text{C}-\text{H}$ ?', 'Le carbone porte $4$ doublets liants et aucun doublet non liant : les liaisons pointent vers les sommets d''un tétraèdre régulier, avec des angles de $109{,}5^\circ$.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6519061, 651906, '$109{,}5^\circ$', TRUE, 1),
  (6519062, 651906, '$180^\circ$', FALSE, 2),
  (6519063, 651906, '$90^\circ$', FALSE, 3),
  (6519064, 651906, '$60^\circ$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (651907, 6519, 'Dans la molécule de diazote $\text{N} \equiv \text{N}$, combien de doublets liants relient les deux atomes ?', 'Chaque azote doit former $3$ liaisons : les deux atomes partagent une liaison triple, soit $3$ doublets liants (et chaque azote garde $1$ doublet non liant).', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6519071, 651907, '$3$ doublets liants', TRUE, 1),
  (6519072, 651907, '$1$ doublet liant', FALSE, 2),
  (6519073, 651907, '$2$ doublets liants', FALSE, 3),
  (6519074, 651907, '$4$ doublets liants', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (651908, 6519, 'Pourquoi l''eau $\text{H}_2\text{O}$ est-elle coudée alors que le dioxyde de carbone $\text{CO}_2$ est linéaire ?', 'L''atome central de $\text{CO}_2$ n''a aucun doublet non liant ($2$ directions $\rightarrow$ linéaire), tandis que l''oxygène de l''eau porte $2$ doublets non liants qui repoussent les liaisons et imposent la forme coudée.', 8);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6519081, 651908, 'l''oxygène de l''eau porte $2$ doublets non liants, contrairement au carbone de $\text{CO}_2$', TRUE, 1),
  (6519082, 651908, 'l''eau possède des liaisons doubles, contrairement à $\text{CO}_2$', FALSE, 2),
  (6519083, 651908, 'l''eau contient plus d''atomes que $\text{CO}_2$', FALSE, 3),
  (6519084, 651908, 'l''atome d''oxygène ne respecte pas la règle de l''octet dans l''eau', FALSE, 4);

-- classification-periodique
SET @l := (SELECT id FROM lecon WHERE slug = 'classification-periodique' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'pc-tcs'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (6520, NULL, @l, 'QCM — Classification periodique', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (652001, 6520, 'Dans la classification périodique moderne, les éléments sont rangés par ordre croissant de :', 'La classification moderne range les éléments par numéro atomique $Z$ croissant (nombre de protons), ce qui corrige les anomalies du classement par masse atomique de Mendeleïev.', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6520011, 652001, 'numéro atomique $Z$', TRUE, 1),
  (6520012, 652001, 'masse de l''atome', FALSE, 2),
  (6520013, 652001, 'nombre de neutrons', FALSE, 3),
  (6520014, 652001, 'taille de l''atome', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (652002, 6520, 'Le numéro de la période (ligne) d''un élément est égal :', 'Le numéro de période correspond au nombre de couches électroniques occupées par l''atome. Par exemple le sodium, qui occupe 3 couches, est sur la 3e période.', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6520021, 652002, 'au nombre de couches électroniques occupées', TRUE, 1),
  (6520022, 652002, 'au nombre d''électrons de valence', FALSE, 2),
  (6520023, 652002, 'au numéro atomique $Z$', FALSE, 3),
  (6520024, 652002, 'au nombre de protons du noyau', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (652003, 6520, 'Le chlore $\text{Cl}$ a pour numéro atomique $Z=17$. Sa structure électronique est $(\text{K})^2(\text{L})^8(\text{M})^7$. Il se situe :', 'Il occupe 3 couches (période 3) et possède 7 électrons de valence sur sa dernière couche, donc il appartient au groupe 17 ($7+10$).', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6520031, 652003, '3e période, groupe 17', TRUE, 1),
  (6520032, 652003, '2e période, groupe 17', FALSE, 2),
  (6520033, 652003, '3e période, groupe 7', FALSE, 3),
  (6520034, 652003, '7e période, groupe 3', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (652004, 6520, 'Les éléments d''un même groupe (même colonne) ont en commun :', 'Une colonne regroupe les éléments ayant le même nombre d''électrons de valence (électrons de la dernière couche), ce qui leur donne des propriétés chimiques semblables.', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6520041, 652004, 'le même nombre d''électrons de valence', TRUE, 1),
  (6520042, 652004, 'le même nombre de couches occupées', FALSE, 2),
  (6520043, 652004, 'le même nombre de neutrons', FALSE, 3),
  (6520044, 652004, 'la même masse atomique', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (652005, 6520, 'Le sodium $\text{Na}$ et le potassium $\text{K}$ possèdent tous deux 1 électron de valence. Ils appartiennent à la famille des :', 'Les éléments du groupe 1, qui ont 1 seul électron de valence, sont les alcalins : ce sont des métaux mous et très réactifs.', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6520051, 652005, 'alcalins', TRUE, 1),
  (6520052, 652005, 'halogènes', FALSE, 2),
  (6520053, 652005, 'gaz nobles', FALSE, 3),
  (6520054, 652005, 'métaux nobles', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (652006, 6520, 'Les gaz nobles (groupe 18, dernière colonne) sont chimiquement inertes parce que :', 'Leur dernière couche est saturée (2 électrons pour l''hélium, 8 pour les autres) : ils ont déjà une structure stable et ne cherchent ni à gagner ni à perdre d''électrons.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6520061, 652006, 'leur dernière couche est saturée (duet ou octet)', TRUE, 1),
  (6520062, 652006, 'ils n''ont qu''un seul électron de valence', FALSE, 2),
  (6520063, 652006, 'ils ne possèdent aucun électron', FALSE, 3),
  (6520064, 652006, 'ils captent facilement un électron', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (652007, 6520, 'Le magnésium $\text{Mg}$ a pour structure $(\text{K})^2(\text{L})^8(\text{M})^2$. Quel ion stable forme-t-il ?', 'Avec seulement 2 électrons de valence, le magnésium les perd pour acquérir l''octet du néon : il forme le cation $\text{Mg}^{2+}$.', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6520071, 652007, '$\text{Mg}^{2+}$', TRUE, 1),
  (6520072, 652007, '$\text{Mg}^{2-}$', FALSE, 2),
  (6520073, 652007, '$\text{Mg}^{+}$', FALSE, 3),
  (6520074, 652007, '$\text{Mg}^{6-}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (652008, 6520, 'Le fluor $\text{F}$ ($Z=9$) possède 7 électrons de valence. Pour atteindre la structure d''un gaz noble, il :', 'Il manque 1 électron au fluor pour compléter son octet : il gagne 1 électron et forme l''anion $\text{F}^-$ (structure du néon).', 8);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6520081, 652008, 'gagne 1 électron et forme l''anion $\text{F}^-$', TRUE, 1),
  (6520082, 652008, 'perd 1 électron et forme le cation $\text{F}^+$', FALSE, 2),
  (6520083, 652008, 'perd 7 électrons et forme l''ion $\text{F}^{7+}$', FALSE, 3),
  (6520084, 652008, 'gagne 7 électrons et forme l''anion $\text{F}^{7-}$', FALSE, 4);

-- la-mole
SET @l := (SELECT id FROM lecon WHERE slug = 'la-mole' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'pc-tcs'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (6521, NULL, @l, 'QCM — La mole', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (652101, 6521, 'Le nombre d''Avogadro $N_A$, nombre d''entités contenues dans une mole, vaut :', 'Par définition, une mole contient $N_A = 6{,}02 \times 10^{23}$ entités, soit $N_A = 6{,}02 \times 10^{23}\ \text{mol}^{-1}$.', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6521011, 652101, '$6{,}02 \times 10^{23}\ \text{mol}^{-1}$', TRUE, 1),
  (6521012, 652101, '$6{,}02 \times 10^{-23}\ \text{mol}^{-1}$', FALSE, 2),
  (6521013, 652101, '$9{,}81\ \text{mol}^{-1}$', FALSE, 3),
  (6521014, 652101, '$22{,}4\ \text{mol}^{-1}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (652102, 6521, 'Un échantillon contient $N = 1{,}204 \times 10^{24}$ atomes. Sa quantité de matière est :', 'On applique $n = \dfrac{N}{N_A} = \dfrac{1{,}204 \times 10^{24}}{6{,}02 \times 10^{23}} = 2\ \text{mol}$.', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6521021, 652102, '$2\ \text{mol}$', TRUE, 1),
  (6521022, 652102, '$0{,}5\ \text{mol}$', FALSE, 2),
  (6521023, 652102, '$1{,}2\ \text{mol}$', FALSE, 3),
  (6521024, 652102, '$7{,}2 \times 10^{47}\ \text{mol}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (652103, 6521, 'La relation entre la quantité de matière $n$, le nombre d''entités $N$ et le nombre d''Avogadro $N_A$ est :', 'La quantité de matière est le nombre d''entités divisé par le nombre d''Avogadro : $n = \dfrac{N}{N_A}$.', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6521031, 652103, '$n = \dfrac{N}{N_A}$', TRUE, 1),
  (6521032, 652103, '$n = N \times N_A$', FALSE, 2),
  (6521033, 652103, '$n = \dfrac{N_A}{N}$', FALSE, 3),
  (6521034, 652103, '$n = N + N_A$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (652104, 6521, 'On donne $M(C) = 12$ et $M(O) = 16\ \text{g}\cdot\text{mol}^{-1}$. La masse molaire du dioxyde de carbone $CO_2$ est :', '$M(CO_2) = M(C) + 2 \times M(O) = 12 + 2 \times 16 = 44\ \text{g}\cdot\text{mol}^{-1}$.', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6521041, 652104, '$44\ \text{g}\cdot\text{mol}^{-1}$', TRUE, 1),
  (6521042, 652104, '$28\ \text{g}\cdot\text{mol}^{-1}$', FALSE, 2),
  (6521043, 652104, '$40\ \text{g}\cdot\text{mol}^{-1}$', FALSE, 3),
  (6521044, 652104, '$60\ \text{g}\cdot\text{mol}^{-1}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (652105, 6521, 'Avec $M(H_2O) = 18\ \text{g}\cdot\text{mol}^{-1}$, la quantité de matière contenue dans $36\ \text{g}$ d''eau est :', 'On applique $n = \dfrac{m}{M} = \dfrac{36}{18} = 2\ \text{mol}$.', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6521051, 652105, '$2\ \text{mol}$', TRUE, 1),
  (6521052, 652105, '$0{,}5\ \text{mol}$', FALSE, 2),
  (6521053, 652105, '$18\ \text{mol}$', FALSE, 3),
  (6521054, 652105, '$648\ \text{mol}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (652106, 6521, 'Dans les conditions normales ($V_m = 22{,}4\ \text{L}\cdot\text{mol}^{-1}$), un volume $V = 11{,}2\ \text{L}$ de gaz correspond à :', 'On applique $n = \dfrac{V}{V_m} = \dfrac{11{,}2}{22{,}4} = 0{,}5\ \text{mol}$.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6521061, 652106, '$0{,}5\ \text{mol}$', TRUE, 1),
  (6521062, 652106, '$2\ \text{mol}$', FALSE, 2),
  (6521063, 652106, '$11{,}2\ \text{mol}$', FALSE, 3),
  (6521064, 652106, '$251\ \text{mol}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (652107, 6521, 'Avec $M = 18\ \text{g}\cdot\text{mol}^{-1}$ et $N_A = 6{,}02 \times 10^{23}\ \text{mol}^{-1}$, la masse d''une seule molécule d''eau est environ :', 'La masse d''une molécule est $\dfrac{M}{N_A} = \dfrac{18}{6{,}02 \times 10^{23}} \approx 2{,}99 \times 10^{-23}\ \text{g}$.', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6521071, 652107, '$2{,}99 \times 10^{-23}\ \text{g}$', TRUE, 1),
  (6521072, 652107, '$3{,}3 \times 10^{22}\ \text{g}$', FALSE, 2),
  (6521073, 652107, '$18\ \text{g}$', FALSE, 3),
  (6521074, 652107, '$1{,}08 \times 10^{25}\ \text{g}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (652108, 6521, 'Avec $M(O_2) = 32\ \text{g}\cdot\text{mol}^{-1}$ et $M_{air} = 29\ \text{g}\cdot\text{mol}^{-1}$, la densité du dioxygène par rapport à l''air est environ :', 'La densité d''un gaz vaut $d = \dfrac{M}{M_{air}} = \dfrac{32}{29} \approx 1{,}10$ : le dioxygène est légèrement plus dense que l''air.', 8);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6521081, 652108, '$1{,}10$', TRUE, 1),
  (6521082, 652108, '$0{,}91$', FALSE, 2),
  (6521083, 652108, '$32$', FALSE, 3),
  (6521084, 652108, '$1{,}43$', FALSE, 4);

-- concentration-molaire
SET @l := (SELECT id FROM lecon WHERE slug = 'concentration-molaire' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'pc-tcs'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (6522, NULL, @l, 'QCM — Concentration molaire', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (652201, 6522, 'On dissout $n = 0{,}50\ \text{mol}$ de soluté dans un volume de solution $V = 2{,}0\ \text{L}$. La concentration molaire vaut :', '$C = \dfrac{n}{V} = \dfrac{0{,}50}{2{,}0} = 0{,}25\ \text{mol}\cdot\text{L}^{-1}$.', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6522011, 652201, '$0{,}25\ \text{mol}\cdot\text{L}^{-1}$', TRUE, 1),
  (6522012, 652201, '$1{,}0\ \text{mol}\cdot\text{L}^{-1}$', FALSE, 2),
  (6522013, 652201, '$0{,}50\ \text{mol}\cdot\text{L}^{-1}$', FALSE, 3),
  (6522014, 652201, '$4{,}0\ \text{mol}\cdot\text{L}^{-1}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (652202, 6522, 'Une solution d''hydroxyde de sodium a une concentration $C = 0{,}10\ \text{mol}\cdot\text{L}^{-1}$, avec $M = 40\ \text{g}\cdot\text{mol}^{-1}$. Sa concentration massique vaut :', '$C_m = C \times M = 0{,}10 \times 40 = 4{,}0\ \text{g}\cdot\text{L}^{-1}$.', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6522021, 652202, '$4{,}0\ \text{g}\cdot\text{L}^{-1}$', TRUE, 1),
  (6522022, 652202, '$0{,}40\ \text{g}\cdot\text{L}^{-1}$', FALSE, 2),
  (6522023, 652202, '$40\ \text{g}\cdot\text{L}^{-1}$', FALSE, 3),
  (6522024, 652202, '$400\ \text{g}\cdot\text{L}^{-1}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (652203, 6522, 'Pour préparer $V = 0{,}50\ \text{L}$ de solution de concentration $C = 0{,}20\ \text{mol}\cdot\text{L}^{-1}$ d''un soluté de masse molaire $M = 58{,}5\ \text{g}\cdot\text{mol}^{-1}$, la masse à peser est :', '$m = C \times V \times M = 0{,}20 \times 0{,}50 \times 58{,}5 = 5{,}85\ \text{g}$.', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6522031, 652203, '$5{,}85\ \text{g}$', TRUE, 1),
  (6522032, 652203, '$11{,}7\ \text{g}$', FALSE, 2),
  (6522033, 652203, '$2{,}93\ \text{g}$', FALSE, 3),
  (6522034, 652203, '$58{,}5\ \text{g}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (652204, 6522, 'On prélève $V_1 = 10\ \text{mL}$ d''une solution de concentration $C_1 = 0{,}50\ \text{mol}\cdot\text{L}^{-1}$ que l''on dilue dans une fiole de $V_2 = 100\ \text{mL}$. La concentration de la solution fille est :', '$C_1 V_1 = C_2 V_2$ donne $C_2 = \dfrac{C_1 V_1}{V_2} = \dfrac{0{,}50 \times 10}{100} = 0{,}050\ \text{mol}\cdot\text{L}^{-1}$.', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6522041, 652204, '$0{,}050\ \text{mol}\cdot\text{L}^{-1}$', TRUE, 1),
  (6522042, 652204, '$0{,}50\ \text{mol}\cdot\text{L}^{-1}$', FALSE, 2),
  (6522043, 652204, '$5{,}0\ \text{mol}\cdot\text{L}^{-1}$', FALSE, 3),
  (6522044, 652204, '$0{,}10\ \text{mol}\cdot\text{L}^{-1}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (652205, 6522, 'On passe d''une concentration $C_1 = 0{,}20\ \text{mol}\cdot\text{L}^{-1}$ à $C_2 = 0{,}040\ \text{mol}\cdot\text{L}^{-1}$. Le facteur de dilution vaut :', '$F = \dfrac{C_1}{C_2} = \dfrac{0{,}20}{0{,}040} = 5$.', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6522051, 652205, '$5$', TRUE, 1),
  (6522052, 652205, '$4$', FALSE, 2),
  (6522053, 652205, '$0{,}20$', FALSE, 3),
  (6522054, 652205, '$0{,}040$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (652206, 6522, 'Lors d''une dilution, quelle grandeur reste constante entre la solution mère et la solution fille ?', 'On n''ajoute que du solvant : la quantité de matière de soluté est conservée ($n_1 = n_2$), ce qui justifie $C_1 V_1 = C_2 V_2$.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6522061, 652206, 'La quantité de matière de soluté', TRUE, 1),
  (6522062, 652206, 'La concentration molaire', FALSE, 2),
  (6522063, 652206, 'Le volume de la solution', FALSE, 3),
  (6522064, 652206, 'La concentration massique', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (652207, 6522, 'La solubilité d''un sel dans l''eau est $s = 360\ \text{g}\cdot\text{L}^{-1}$. La masse maximale que l''on peut dissoudre dans $V = 250\ \text{mL}$ est :', '$m_{max} = s \times V = 360 \times 0{,}250 = 90\ \text{g}$.', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6522071, 652207, '$90\ \text{g}$', TRUE, 1),
  (6522072, 652207, '$360\ \text{g}$', FALSE, 2),
  (6522073, 652207, '$36\ \text{g}$', FALSE, 3),
  (6522074, 652207, '$144\ \text{g}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (652208, 6522, 'Une solution de glucose ($M = 180\ \text{g}\cdot\text{mol}^{-1}$) a une concentration massique $C_m = 36\ \text{g}\cdot\text{L}^{-1}$. Sa concentration molaire est :', '$C = \dfrac{C_m}{M} = \dfrac{36}{180} = 0{,}20\ \text{mol}\cdot\text{L}^{-1}$.', 8);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6522081, 652208, '$0{,}20\ \text{mol}\cdot\text{L}^{-1}$', TRUE, 1),
  (6522082, 652208, '$5{,}0\ \text{mol}\cdot\text{L}^{-1}$', FALSE, 2),
  (6522083, 652208, '$0{,}50\ \text{mol}\cdot\text{L}^{-1}$', FALSE, 3),
  (6522084, 652208, '$2{,}0\ \text{mol}\cdot\text{L}^{-1}$', FALSE, 4);

-- transformations-chimiques
SET @l := (SELECT id FROM lecon WHERE slug = 'transformations-chimiques' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'pc-tcs'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (6523, NULL, @l, 'QCM — Transformations chimiques', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (652301, 6523, 'Une fois équilibrée, l''équation $C_3H_8 + \,?\;O_2 \longrightarrow ?\;CO_2 + ?\;H_2O$ admet pour coefficient du dioxygène :', 'L''équation équilibrée est $C_3H_8 + 5\,O_2 \longrightarrow 3\,CO_2 + 4\,H_2O$ : carbone $3=3$, hydrogène $8=8$, oxygène $10 = 6 + 4 = 10$. Le coefficient de $O_2$ vaut donc $5$.', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6523011, 652301, '$5$', TRUE, 1),
  (6523012, 652301, '$3$', FALSE, 2),
  (6523013, 652301, '$4$', FALSE, 3),
  (6523014, 652301, '$7$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (652302, 6523, 'Que représente l''avancement $x$ d''une réaction, et quelle est sa valeur à l''état initial ?', 'L''avancement $x$, exprimé en moles, mesure le degré d''évolution du système. Par convention, à l''état initial le système n''a pas évolué : $x = 0$.', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6523021, 652302, 'Une quantité de matière, en mol, valant $0$ à l''état initial', TRUE, 1),
  (6523022, 652302, 'Une concentration, en mol/L, valant $1$ à l''état initial', FALSE, 2),
  (6523023, 652302, 'Un volume, en L, valant $0$ à l''état initial', FALSE, 3),
  (6523024, 652302, 'Une masse, en g, égale à celle des réactifs', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (652303, 6523, 'Pour la réaction $a\,A + b\,B \longrightarrow c\,C + d\,D$ d''avancement $x$, la quantité de matière du réactif $A$ en cours de réaction s''écrit :', 'Un réactif de coefficient stœchiométrique $a$ est consommé proportionnellement à $a$ : sa quantité diminue de $a\,x$. Elle vaut donc $n_0(A) - a\,x$.', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6523031, 652303, '$n_0(A) - a\,x$', TRUE, 1),
  (6523032, 652303, '$n_0(A) + a\,x$', FALSE, 2),
  (6523033, 652303, '$n_0(A) - c\,x$', FALSE, 3),
  (6523034, 652303, '$a\,x$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (652304, 6523, 'Pour $2\,H_2 + O_2 \longrightarrow 2\,H_2O$, on introduit $n_0(H_2) = 3{,}0\ \text{mol}$ et $n_0(O_2) = 2{,}0\ \text{mol}$. Quel est le réactif limitant ?', 'Le dihydrogène s''annule pour $x = \dfrac{3{,}0}{2} = 1{,}5\ \text{mol}$, le dioxygène pour $x = \dfrac{2{,}0}{1} = 2{,}0\ \text{mol}$. La plus petite valeur, $1{,}5\ \text{mol}$, est imposée par le dihydrogène : c''est le réactif limitant.', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6523041, 652304, 'Le dihydrogène $H_2$', TRUE, 1),
  (6523042, 652304, 'Le dioxygène $O_2$', FALSE, 2),
  (6523043, 652304, 'L''eau $H_2O$', FALSE, 3),
  (6523044, 652304, 'Aucun : le mélange est stœchiométrique', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (652305, 6523, 'Comment calcule-t-on l''avancement maximal $x_{max}$ d''une réaction $a\,A + b\,B \longrightarrow \ldots$ ?', 'La réaction s''arrête dès qu''un réactif est épuisé. On calcule $\dfrac{n_0(A)}{a}$ et $\dfrac{n_0(B)}{b}$, et $x_{max}$ est la plus petite de ces deux valeurs.', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6523051, 652305, '$x_{max} = \min\!\left(\dfrac{n_0(A)}{a}\,;\ \dfrac{n_0(B)}{b}\right)$', TRUE, 1),
  (6523052, 652305, '$x_{max} = \max\!\left(\dfrac{n_0(A)}{a}\,;\ \dfrac{n_0(B)}{b}\right)$', FALSE, 2),
  (6523053, 652305, '$x_{max} = n_0(A) + n_0(B)$', FALSE, 3),
  (6523054, 652305, '$x_{max} = \dfrac{n_0(A)}{a} + \dfrac{n_0(B)}{b}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (652306, 6523, 'Pour la réaction $a\,A + b\,B \longrightarrow \ldots$, à quelle condition le mélange initial est-il stœchiométrique ?', 'Le mélange est stœchiométrique lorsque les réactifs sont dans les proportions des coefficients, c''est-à-dire $\dfrac{n_0(A)}{a} = \dfrac{n_0(B)}{b}$. Ils sont alors tous entièrement consommés à l''état final.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6523061, 652306, '$\dfrac{n_0(A)}{a} = \dfrac{n_0(B)}{b}$', TRUE, 1),
  (6523062, 652306, '$n_0(A) = n_0(B)$', FALSE, 2),
  (6523063, 652306, '$a = b$', FALSE, 3),
  (6523064, 652306, '$\dfrac{n_0(A)}{b} = \dfrac{n_0(B)}{a}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (652307, 6523, 'On fait réagir $3{,}0\ \text{mol}$ de carbone et $2{,}0\ \text{mol}$ de dioxygène selon $C + O_2 \longrightarrow CO_2$. Quel est le bilan de matière à l''état final ?', 'Le dioxygène est limitant : $x_{max} = 2{,}0\ \text{mol}$. À l''état final, $n(C) = 3{,}0 - 2{,}0 = 1{,}0\ \text{mol}$, $n(O_2) = 0$ et $n(CO_2) = 2{,}0\ \text{mol}$.', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6523071, 652307, '$1{,}0\ \text{mol}$ de $C$, $0\ \text{mol}$ de $O_2$, $2{,}0\ \text{mol}$ de $CO_2$', TRUE, 1),
  (6523072, 652307, '$0\ \text{mol}$ de $C$, $1{,}0\ \text{mol}$ de $O_2$, $3{,}0\ \text{mol}$ de $CO_2$', FALSE, 2),
  (6523073, 652307, '$1{,}0\ \text{mol}$ de $C$, $1{,}0\ \text{mol}$ de $O_2$, $1{,}0\ \text{mol}$ de $CO_2$', FALSE, 3),
  (6523074, 652307, '$0\ \text{mol}$ de $C$, $0\ \text{mol}$ de $O_2$, $5{,}0\ \text{mol}$ de $CO_2$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (652308, 6523, 'Une réaction dégage $0{,}50\ \text{mol}$ de dihydrogène gazeux. Quel volume de gaz cela représente-t-il, avec un volume molaire $V_m = 24\ \text{L}\cdot\text{mol}^{-1}$ ?', 'Le volume d''un gaz se calcule par $V = n \times V_m = 0{,}50 \times 24 = 12\ \text{L}$.', 8);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6523081, 652308, '$12\ \text{L}$', TRUE, 1),
  (6523082, 652308, '$24\ \text{L}$', FALSE, 2),
  (6523083, 652308, '$48\ \text{L}$', FALSE, 3),
  (6523084, 652308, '$0{,}021\ \text{L}$', FALSE, 4);

