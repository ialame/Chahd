-- SVT TCS : QCM des 11 chapitres (quiz 6601-6611).
SET SESSION sql_mode = CONCAT(@@sql_mode, ',NO_BACKSLASH_ESCAPES');

-- techniques-etude-ecologique
SET @l := (SELECT id FROM lecon WHERE slug = 'techniques-etude-ecologique' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'svt-tcs'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (6601, NULL, @l, 'QCM — Techniques etude ecologique', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (660101, 6601, 'Un écosystème est l''ensemble formé par :', 'Un écosystème = biotope (milieu physique et chimique) + biocénose (êtres vivants), en interaction permanente.', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6601011, 660101, 'le biotope et la biocénose en interaction', TRUE, 1),
  (6601012, 660101, 'uniquement les êtres vivants d''un milieu', FALSE, 2),
  (6601013, 660101, 'uniquement le sol et le climat', FALSE, 3),
  (6601014, 660101, 'une seule espèce et son habitat', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (660102, 6601, 'La biocénose d''un milieu désigne :', 'La biocénose regroupe l''ensemble des êtres vivants (végétaux, animaux, micro-organismes). Le milieu physico-chimique est le biotope.', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6601021, 660102, 'l''ensemble des êtres vivants du milieu', TRUE, 1),
  (6601022, 660102, 'le milieu physique et chimique', FALSE, 2),
  (6601023, 660102, 'les individus d''une seule espèce', FALSE, 3),
  (6601024, 660102, 'la place d''une espèce dans le milieu', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (660103, 6601, 'Parmi ces facteurs écologiques, lequel est un facteur biotique ?', 'La compétition entre espèces est une interaction entre êtres vivants : c''est un facteur biotique. Le pH du sol, la température et la lumière sont abiotiques.', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6601031, 660103, 'la compétition entre deux espèces', TRUE, 1),
  (6601032, 660103, 'le pH du sol', FALSE, 2),
  (6601033, 660103, 'la température de l''air', FALSE, 3),
  (6601034, 660103, 'l''intensité de la lumière', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (660104, 6601, 'Le pH du sol et sa teneur en calcaire sont des facteurs abiotiques :', 'Le pH et la teneur en calcaire sont des propriétés du sol : ce sont des facteurs édaphiques (abiotiques).', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6601041, 660104, 'édaphiques', TRUE, 1),
  (6601042, 660104, 'climatiques', FALSE, 2),
  (6601043, 660104, 'topographiques', FALSE, 3),
  (6601044, 660104, 'biotiques', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (660105, 6601, 'Une espèce est présente dans 6 quadrats sur 8. Sa fréquence est :', 'Fréquence = (quadrats de présence / nombre total de quadrats) × 100 = (6/8) × 100 = 75 %.', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6601051, 660105, '$\dfrac{6}{8}\times 100 = 75\,\%$', TRUE, 1),
  (6601052, 660105, '$\dfrac{8}{6}\times 100 \approx 133\,\%$', FALSE, 2),
  (6601053, 660105, '$6 \times 8 = 48\,\%$', FALSE, 3),
  (6601054, 660105, '$6 - 8 = -2\,\%$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (660106, 6601, 'Dans un quadrat divisé en 25 cases égales, une espèce occupe 5 cases. Son recouvrement est :', 'Chaque case vaut 100/25 = 4 %. Pour 5 cases : recouvrement = 5 × 4 = 20 %.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6601061, 660106, '$5 \times \dfrac{100}{25} = 20\,\%$', TRUE, 1),
  (6601062, 660106, '$\dfrac{5}{100} = 5\,\%$', FALSE, 2),
  (6601063, 660106, '$25 - 5 = 80\,\%$', FALSE, 3),
  (6601064, 660106, '$5 \times 25 = 125\,\%$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (660107, 6601, 'Le transect est une technique particulièrement adaptée lorsque le milieu présente :', 'Le transect (ligne à travers le milieu) est adapté quand un facteur varie progressivement, c''est-à-dire un gradient écologique (humidité, altitude…).', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6601071, 660107, 'un gradient d''un facteur écologique', TRUE, 1),
  (6601072, 660107, 'une répartition parfaitement uniforme', FALSE, 2),
  (6601073, 660107, 'une seule espèce végétale', FALSE, 3),
  (6601074, 660107, 'une absence totale d''êtres vivants', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (660108, 6601, 'Sur une courbe d''aire, l''aire minimale correspond :', 'L''aire minimale est la plus petite surface contenant la quasi-totalité des espèces : sur la courbe, c''est le début du palier, là où ajouter de la surface n''apporte presque plus d''espèces nouvelles.', 8);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6601081, 660108, 'au point où la courbe forme un palier', TRUE, 1),
  (6601082, 660108, 'au tout premier point de la courbe', FALSE, 2),
  (6601083, 660108, 'au point le plus pentu de la courbe', FALSE, 3),
  (6601084, 660108, 'à la plus grande surface possible', FALSE, 4);

-- facteurs-edaphiques
SET @l := (SELECT id FROM lecon WHERE slug = 'facteurs-edaphiques' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'svt-tcs'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (6602, NULL, @l, 'QCM — Facteurs edaphiques', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (660201, 6602, 'Dans un profil pédologique, quel horizon est le plus riche en humus ?', 'L''horizon A (humifère) est sombre car riche en humus mélangé à la fraction minérale ; c''est la zone la plus active.', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6602011, 660201, 'L''horizon A (humifère)', TRUE, 1),
  (6602012, 660201, 'L''horizon O (litière)', FALSE, 2),
  (6602013, 660201, 'L''horizon B (d''altération)', FALSE, 3),
  (6602014, 660201, 'L''horizon C (roche mère)', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (660202, 6602, 'On dit qu''un sol est un milieu triphasique car il associe :', 'Le sol associe une phase solide (minéral + humus), une phase liquide (l''eau) et une phase gazeuse (l''air).', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6602021, 660202, 'une phase solide, une phase liquide et une phase gazeuse', TRUE, 1),
  (6602022, 660202, 'trois types de roches mères', FALSE, 2),
  (6602023, 660202, 'trois horizons O, A et B', FALSE, 3),
  (6602024, 660202, 'le sable, le limon et l''argile uniquement', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (660203, 6602, 'Parmi ces particules minérales, laquelle est la plus fine ?', 'L''argile (< 0,002 mm) est la particule la plus fine ; viennent ensuite le limon, le sable puis les graviers.', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6602031, 660203, 'L''argile', TRUE, 1),
  (6602032, 660203, 'Le sable', FALSE, 2),
  (6602033, 660203, 'Le limon', FALSE, 3),
  (6602034, 660203, 'Les graviers', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (660204, 6602, 'Quel sol est le plus perméable mais retient le moins l''eau ?', 'Le sol sableux a de larges pores : il est très perméable, mais l''eau s''y écoule vite et il retient peu l''eau.', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6602041, 660204, 'Le sol sableux', TRUE, 1),
  (6602042, 660204, 'Le sol argileux', FALSE, 2),
  (6602043, 660204, 'Le sol limono-argileux', FALSE, 3),
  (6602044, 660204, 'La terre franche', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (660205, 6602, 'Un sol dont le pH est égal à $8{,}2$ est qualifié de :', 'Un pH supérieur à 7,5 caractérise un sol basique (calcaire).', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6602051, 660205, 'basique (calcaire)', TRUE, 1),
  (6602052, 660205, 'acide', FALSE, 2),
  (6602053, 660205, 'neutre', FALSE, 3),
  (6602054, 660205, 'sableux', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (660206, 6602, 'L''effervescence d''un sol au contact de l''acide chlorhydrique (HCl) révèle la présence de calcaire ($CaCO_3$) et le dégagement de :', 'Le calcaire réagit avec l''acide en libérant du dioxyde de carbone $CO_2$.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6602061, 660206, '$CO_2$ (dioxyde de carbone)', TRUE, 1),
  (6602062, 660206, '$O_2$ (dioxygène)', FALSE, 2),
  (6602063, 660206, '$H_2$ (dihydrogène)', FALSE, 3),
  (6602064, 660206, '$N_2$ (diazote)', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (660207, 6602, 'Parmi les formes de l''eau du sol, laquelle est réellement utile et absorbée par les racines ?', 'L''eau de rétention (capillaire), retenue autour des particules, est l''eau utile. L''eau de gravité s''écoule et l''eau liée reste inaccessible.', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6602071, 660207, 'L''eau de rétention (capillaire)', TRUE, 1),
  (6602072, 660207, 'L''eau de gravité', FALSE, 2),
  (6602073, 660207, 'L''eau liée (de constitution)', FALSE, 3),
  (6602074, 660207, 'La vapeur d''eau de l''air du sol', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (660208, 6602, 'Les plantes calcifuges, comme la bruyère et la fougère, indiquent un sol :', 'Les plantes calcifuges ne tolèrent pas le calcaire et poussent sur les sols acides ; les calcicoles (buis, vigne) poussent sur sols calcaires.', 8);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6602081, 660208, 'acide, sans calcaire', TRUE, 1),
  (6602082, 660208, 'calcaire et basique', FALSE, 2),
  (6602083, 660208, 'riche en $CaCO_3$', FALSE, 3),
  (6602084, 660208, 'de pH supérieur à 7,5', FALSE, 4);

-- facteurs-climatiques
SET @l := (SELECT id FROM lecon WHERE slug = 'facteurs-climatiques' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'svt-tcs'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (6603, NULL, @l, 'QCM — Facteurs climatiques', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (660301, 6603, 'Quel instrument permet de mesurer les précipitations ?', 'Le pluviomètre recueille l''eau tombée et mesure une hauteur en millimètres (mm). Le thermomètre mesure la température, l''hygromètre l''humidité et l''anémomètre la vitesse du vent.', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6603011, 660301, 'Le pluviomètre', TRUE, 1),
  (6603012, 660301, 'Le thermomètre', FALSE, 2),
  (6603013, 660301, 'L''hygromètre', FALSE, 3),
  (6603014, 660301, 'L''anémomètre', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (660302, 6603, 'Dans quelle unité exprime-t-on l''humidité relative de l''air ?', 'L''humidité relative, mesurée à l''hygromètre, s''exprime en pourcentage (%). Le lux mesure la lumière, le mm les précipitations et le °C la température.', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6603021, 660302, 'En pourcentage (%)', TRUE, 1),
  (6603022, 660302, 'En lux', FALSE, 2),
  (6603023, 660302, 'En millimètres (mm)', FALSE, 3),
  (6603024, 660302, 'En degrés Celsius (°C)', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (660303, 6603, 'Sur un diagramme ombrothermique, l''axe des précipitations est gradué :', 'Dans la convention de Bagnouls et Gaussen, l''échelle des précipitations est le double de celle des températures : $P = 2T$. C''est cette relation qui permet de lire directement la période sèche.', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6603031, 660303, 'Au double de l''axe des températures ($P = 2T$)', TRUE, 1),
  (6603032, 660303, 'À la moitié de l''axe des températures', FALSE, 2),
  (6603033, 660303, 'À la même échelle que les températures', FALSE, 3),
  (6603034, 660303, 'Au triple de l''axe des températures', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (660304, 6603, 'Un mois est dit sec sur un diagramme ombrothermique lorsque :', 'La période sèche correspond aux mois où $P < 2T$ : la courbe des températures passe alors au-dessus des barres de précipitations.', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6603041, 660304, '$P < 2T$', TRUE, 1),
  (6603042, 660304, '$P > 2T$', FALSE, 2),
  (6603043, 660304, '$P = T$', FALSE, 3),
  (6603044, 660304, '$T < 0$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (660305, 6603, 'Pour un mois où $T = 24\ ^{\circ}\text{C}$ et $P = 30$ mm, le mois est :', 'On calcule $2T = 48$. Comme $P = 30 < 48$, on a $P < 2T$ : le mois est sec.', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6603051, 660305, 'Sec, car $P = 30 < 2T = 48$', TRUE, 1),
  (6603052, 660305, 'Humide, car $P = 30 > 2T = 48$', FALSE, 2),
  (6603053, 660305, 'Humide, car $P > T$', FALSE, 3),
  (6603054, 660305, 'Indéterminé, il manque la lumière', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (660306, 6603, 'Parmi ces étages bioclimatiques marocains, lequel est le plus sec ?', 'Du plus sec au plus humide on a : saharien, aride, semi-aride, subhumide puis humide. L''étage saharien (désertique) reçoit les précipitations les plus faibles.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6603061, 660306, 'L''étage saharien', TRUE, 1),
  (6603062, 660306, 'L''étage semi-aride', FALSE, 2),
  (6603063, 660306, 'L''étage subhumide', FALSE, 3),
  (6603064, 660306, 'L''étage humide', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (660307, 6603, 'Quelle adaptation est caractéristique d''une plante xérophyte ?', 'Les plantes xérophytes limitent leurs pertes d''eau : feuilles réduites en épines, cuticule épaisse, tiges charnues. Des feuilles larges augmenteraient au contraire la transpiration.', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6603071, 660307, 'Des feuilles réduites transformées en épines', TRUE, 1),
  (6603072, 660307, 'De larges feuilles fines et nombreuses', FALSE, 2),
  (6603073, 660307, 'Une absence totale de racines', FALSE, 3),
  (6603074, 660307, 'Une cuticule très mince', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (660308, 6603, 'Les facteurs climatiques agissent sur les êtres vivants comme :', 'Chaque espèce ne vit que dans un intervalle donné de température, de lumière et d''humidité : les facteurs climatiques sont des facteurs limitants qui contrôlent la répartition des êtres vivants.', 8);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6603081, 660308, 'Des facteurs limitants qui contrôlent leur répartition', TRUE, 1),
  (6603082, 660308, 'Des facteurs sans aucune influence sur la vie', FALSE, 2),
  (6603083, 660308, 'Des facteurs qui suppriment toute adaptation', FALSE, 3),
  (6603084, 660308, 'Des facteurs uniquement liés à la nature du sol', FALSE, 4);

-- flux-matiere-energie
SET @l := (SELECT id FROM lecon WHERE slug = 'flux-matiere-energie' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'svt-tcs'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (6604, NULL, @l, 'QCM — Flux matiere energie', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (660401, 6604, 'Dans une chaîne alimentaire, la flèche signifie :', 'La flèche va du maillon mangé vers celui qui le mange : elle se lit « est mangé par » et indique le sens du transfert de matière et d''énergie.', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6604011, 660401, '« est mangé par »', TRUE, 1),
  (6604012, 660401, '« mange »', FALSE, 2),
  (6604013, 660401, '« vit avec »', FALSE, 3),
  (6604014, 660401, '« se reproduit avec »', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (660402, 6604, 'Les producteurs d''un écosystème sont des organismes :', 'Les producteurs sont les végétaux chlorophylliens, autotrophes : ils fabriquent leur matière organique à partir de matière minérale et de l''énergie lumineuse (photosynthèse). Ils forment le 1er niveau trophique.', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6604021, 660402, 'Autotrophes, qui fabriquent leur matière organique', TRUE, 1),
  (6604022, 660402, 'Hétérotrophes, qui mangent d''autres êtres vivants', FALSE, 2),
  (6604023, 660402, 'Des décomposeurs du sol', FALSE, 3),
  (6604024, 660402, 'Des carnivores de 1er ordre', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (660403, 6604, 'Un herbivore qui mange les producteurs est un consommateur :', 'Les consommateurs de 1er ordre (C I) sont les herbivores : ils se nourrissent directement des producteurs.', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6604031, 660403, 'De 1er ordre (C I)', TRUE, 1),
  (6604032, 660403, 'De 2e ordre (C II)', FALSE, 2),
  (6604033, 660403, 'De 3e ordre (C III)', FALSE, 3),
  (6604034, 660403, 'Producteur', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (660404, 6604, 'À chaque passage d''un niveau trophique au suivant, la part d''énergie transférée est d''environ :', 'Règle des 10 % : seulement $10\,\%$ de l''énergie passe d''un niveau au suivant ; les $90\,\%$ restants sont surtout dissipés en chaleur (respiration) et perdus dans les déchets.', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6604041, 660404, '$10\,\%$', TRUE, 1),
  (6604042, 660404, '$50\,\%$', FALSE, 2),
  (6604043, 660404, '$90\,\%$', FALSE, 3),
  (6604044, 660404, '$100\,\%$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (660405, 6604, 'Les producteurs disposent de $20\,000$ unités d''énergie. D''après la règle des 10 %, les herbivores en récupèrent environ :', 'On applique $10\,\%$ : $20\,000 \times \dfrac{10}{100} = 2\,000$ unités transférées aux herbivores.', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6604051, 660405, '$2\,000$', TRUE, 1),
  (6604052, 660405, '$200$', FALSE, 2),
  (6604053, 660405, '$18\,000$', FALSE, 3),
  (6604054, 660405, '$20\,000$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (660406, 6604, 'Quelle pyramide écologique n''est jamais inversée ?', 'Comme seulement $\approx 10\,\%$ de l''énergie passe d''un niveau au suivant, chaque étage contient moins d''énergie que celui du dessous : la pyramide des énergies est toujours droite. Celles des nombres ou des biomasses peuvent être inversées.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6604061, 660406, 'La pyramide des énergies', TRUE, 1),
  (6604062, 660406, 'La pyramide des nombres', FALSE, 2),
  (6604063, 660406, 'La pyramide des biomasses', FALSE, 3),
  (6604064, 660406, 'Aucune ne peut être inversée', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (660407, 6604, 'Le rôle des décomposeurs (bactéries, champignons) est de :', 'Les décomposeurs minéralisent la matière organique morte : ils la transforment en matière minérale réutilisable par les producteurs, ce qui boucle le cycle de la matière.', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6604071, 660407, 'Transformer la matière organique morte en matière minérale', TRUE, 1),
  (6604072, 660407, 'Produire de la matière organique par photosynthèse', FALSE, 2),
  (6604073, 660407, 'Chasser les herbivores', FALSE, 3),
  (6604074, 660407, 'Capter directement l''énergie solaire', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (660408, 6604, 'Concernant la circulation de la matière et de l''énergie dans l''écosystème :', 'L''énergie, d''origine solaire, traverse l''écosystème en se dégradant : c''est un flux ouvert à sens unique. La matière, recyclée par les décomposeurs, circule en cycle fermé.', 8);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6604081, 660408, 'L''énergie circule à sens unique, la matière est recyclée en cycle', TRUE, 1),
  (6604082, 660408, 'L''énergie est recyclée, la matière circule à sens unique', FALSE, 2),
  (6604083, 660408, 'Les deux sont entièrement recyclées', FALSE, 3),
  (6604084, 660408, 'Les deux circulent à sens unique', FALSE, 4);

-- equilibres-naturels
SET @l := (SELECT id FROM lecon WHERE slug = 'equilibres-naturels' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'svt-tcs'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (6605, NULL, @l, 'QCM — Equilibres naturels', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (660501, 6605, 'Un écosystème est dit en équilibre naturel lorsque :', 'L''équilibre naturel est un état où les effectifs des populations et les caractéristiques du milieu restent globalement stables au cours du temps, malgré de petites variations.', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6605011, 660501, 'les effectifs des populations restent globalement stables dans le temps', TRUE, 1),
  (6605012, 660501, 'aucune naissance ni aucune mort ne s''y produit', FALSE, 2),
  (6605013, 660501, 'une seule espèce y vit', FALSE, 3),
  (6605014, 660501, 'le climat n''y change jamais', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (660502, 6605, 'L''équilibre naturel est qualifié de « dynamique » car :', 'Cet équilibre n''est pas une immobilité : il résulte d''échanges et de relations permanents, et les effectifs oscillent autour d''une valeur moyenne.', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6605021, 660502, 'il résulte d''échanges permanents, les effectifs oscillant autour d''une moyenne', TRUE, 1),
  (6605022, 660502, 'il est totalement figé dans le temps', FALSE, 2),
  (6605023, 660502, 'il ne dépend d''aucun être vivant', FALSE, 3),
  (6605024, 660502, 'il concerne uniquement les milieux artificiels', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (660503, 6605, 'Parmi les éléments suivants, lequel est un facteur de régulation d''une population ?', 'Les ressources alimentaires, la prédation, la compétition, les maladies et le climat contrôlent l''effectif d''une population et le maintiennent dans certaines limites.', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6605031, 660503, 'la prédation', TRUE, 1),
  (6605032, 660503, 'la couleur du sol', FALSE, 2),
  (6605033, 660503, 'le nom de l''espèce', FALSE, 3),
  (6605034, 660503, 'l''altitude de la lune', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (660504, 6605, 'Dans une relation proie–prédateur, la courbe du prédateur :', 'Les oscillations sont couplées et décalées : le prédateur se multiplie après que les proies sont devenues abondantes, sa courbe est donc en retard sur celle de la proie.', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6605041, 660504, 'est en retard sur celle de la proie', TRUE, 1),
  (6605042, 660504, 'est toujours en avance sur celle de la proie', FALSE, 2),
  (6605043, 660504, 'est exactement superposée à celle de la proie', FALSE, 3),
  (6605044, 660504, 'reste constante au cours du temps', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (660505, 6605, 'Lorsque le nombre de proies augmente fortement, on observe ensuite que le nombre de prédateurs :', 'Une nourriture abondante favorise la reproduction et la survie des prédateurs : leur effectif augmente, avec un certain retard.', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6605051, 660505, 'augmente, car ils trouvent davantage de nourriture', TRUE, 1),
  (6605052, 660505, 'diminue immédiatement', FALSE, 2),
  (6605053, 660505, 'ne change pas du tout', FALSE, 3),
  (6605054, 660505, 'devient supérieur à celui des proies', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (660506, 6605, 'Le climax désigne :', 'Le climax est l''état final stable d''une succession écologique, l''écosystème le mieux adapté au milieu (souvent une forêt dans nos régions), qui se maintient tant qu''il n''est pas perturbé.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6605061, 660506, 'l''état final stable atteint au terme d''une succession écologique', TRUE, 1),
  (6605062, 660506, 'le premier organisme installé sur une roche nue', FALSE, 2),
  (6605063, 660506, 'une perturbation brutale d''un écosystème', FALSE, 3),
  (6605064, 660506, 'la disparition totale de la végétation', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (660507, 6605, 'Parmi ces perturbations, laquelle est d''origine humaine ?', 'La déforestation, la pollution et l''usage de pesticides résultent de l''activité humaine, contrairement aux éruptions, inondations ou incendies dus à la foudre, qui sont naturels.', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6605071, 660507, 'la déforestation pour étendre les cultures', TRUE, 1),
  (6605072, 660507, 'une éruption volcanique', FALSE, 2),
  (6605073, 660507, 'une inondation due à de fortes pluies', FALSE, 3),
  (6605074, 660507, 'un incendie déclenché par la foudre', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (660508, 6605, 'Le développement durable consiste à :', 'Le développement durable répond aux besoins des générations présentes sans compromettre la capacité des générations futures à satisfaire les leurs ; il concilie activité humaine et protection de l''environnement.', 8);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6605081, 660508, 'répondre aux besoins actuels sans compromettre ceux des générations futures', TRUE, 1),
  (6605082, 660508, 'exploiter au maximum les ressources sans limite', FALSE, 2),
  (6605083, 660508, 'abandonner toute activité humaine', FALSE, 3),
  (6605084, 660508, 'remplacer toutes les forêts par des cultures', FALSE, 4);

-- reproduction-plantes-fleurs
SET @l := (SELECT id FROM lecon WHERE slug = 'reproduction-plantes-fleurs' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'svt-tcs'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (6606, NULL, @l, 'QCM — Reproduction plantes fleurs', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (660601, 6606, 'Chez une plante à fleurs, l''organe qui porte les structures reproductrices est :', 'Chez les Angiospermes (plantes à fleurs), c''est la fleur qui porte les organes reproducteurs, mâle (androcée) et femelle (gynécée).', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6606011, 660601, 'la fleur', TRUE, 1),
  (6606012, 660601, 'la feuille', FALSE, 2),
  (6606013, 660601, 'la racine', FALSE, 3),
  (6606014, 660601, 'la tige', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (660602, 6606, 'Le calice d''une fleur est l''ensemble :', 'Le calice est formé par l''ensemble des sépales (verts), à l''extérieur de la fleur. L''ensemble des pétales forme la corolle.', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6606021, 660602, 'des sépales', TRUE, 1),
  (6606022, 660602, 'des pétales', FALSE, 2),
  (6606023, 660602, 'des étamines', FALSE, 3),
  (6606024, 660602, 'des ovules', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (660603, 6606, 'L''organe reproducteur mâle de la fleur, qui produit le pollen, est :', 'L''androcée est l''ensemble des étamines (filet + anthère) ; les anthères produisent les grains de pollen contenant les gamètes mâles.', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6606031, 660603, 'l''androcée (les étamines)', TRUE, 1),
  (6606032, 660603, 'le gynécée (le pistil)', FALSE, 2),
  (6606033, 660603, 'la corolle (les pétales)', FALSE, 3),
  (6606034, 660603, 'le calice (les sépales)', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (660604, 6606, 'Les ovules d''une fleur sont contenus dans :', 'Le gynécée comprend le stigmate, le style et l''ovaire ; c''est l''ovaire, à la base du pistil, qui renferme les ovules.', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6606041, 660604, 'l''ovaire', TRUE, 1),
  (6606042, 660604, 'l''anthère', FALSE, 2),
  (6606043, 660604, 'le stigmate', FALSE, 3),
  (6606044, 660604, 'le filet', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (660605, 6606, 'La pollinisation est :', 'La pollinisation est le transport du pollen des anthères jusqu''au stigmate. L''union des gamètes est la fécondation, qui vient ensuite.', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6606051, 660605, 'le transport du pollen de l''anthère jusqu''au stigmate', TRUE, 1),
  (6606052, 660605, 'l''union du gamète mâle et du gamète femelle', FALSE, 2),
  (6606053, 660605, 'la transformation de l''ovaire en fruit', FALSE, 3),
  (6606054, 660605, 'la germination de la graine', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (660606, 6606, 'Une fleur peu colorée, sans odeur, produisant un pollen léger et très abondant, est le plus souvent pollinisée par :', 'Ces caractères sont typiques de la pollinisation par le vent (anémophile) : pas besoin d''attirer d''animaux, le pollen léger est dispersé par le vent.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6606061, 660606, 'le vent', TRUE, 1),
  (6606062, 660606, 'les insectes', FALSE, 2),
  (6606063, 660606, 'les oiseaux attirés par la couleur', FALSE, 3),
  (6606064, 660606, 'elle ne peut pas être pollinisée', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (660607, 6606, 'Après s''être déposé sur le stigmate, le grain de pollen germe en formant un tube pollinique dont le rôle est :', 'Le tube pollinique traverse le style et conduit les gamètes mâles jusqu''à l''ovule, où se produit la fécondation.', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6606071, 660607, 'de conduire les gamètes mâles jusqu''à l''ovule', TRUE, 1),
  (6606072, 660607, 'de fabriquer de nouveaux grains de pollen', FALSE, 2),
  (6606073, 660607, 'de nourrir les pétales de la fleur', FALSE, 3),
  (6606074, 660607, 'de transporter le pollen vers une autre fleur', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (660608, 6606, 'Après la fécondation, l''ovaire et les ovules de la fleur deviennent respectivement :', 'Après la double fécondation, l''ovaire se transforme en fruit et chaque ovule fécondé en graine : c''est le passage de la fleur au fruit.', 8);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6606081, 660608, 'le fruit et les graines', TRUE, 1),
  (6606082, 660608, 'les graines et le fruit', FALSE, 2),
  (6606083, 660608, 'les pétales et les étamines', FALSE, 3),
  (6606084, 660608, 'le stigmate et le style', FALSE, 4);

-- reproduction-plantes-sans-fleurs
SET @l := (SELECT id FROM lecon WHERE slug = 'reproduction-plantes-sans-fleurs' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'svt-tcs'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (6607, NULL, @l, 'QCM — Reproduction plantes sans fleurs', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (660701, 6607, 'Les plantes sans fleurs (mousses, fougères) sont appelées :', 'Les cryptogames sont des plantes sans fleurs, donc sans fruits ni graines.', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6607011, 660701, 'des cryptogames', TRUE, 1),
  (6607012, 660701, 'des phanérogames', FALSE, 2),
  (6607013, 660701, 'des angiospermes', FALSE, 3),
  (6607014, 660701, 'des conifères', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (660702, 6607, 'Une spore est une cellule reproductrice dont la garniture chromosomique est :', 'La spore est une cellule haploïde, à $n$ chromosomes.', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6607021, 660702, '$n$', TRUE, 1),
  (6607022, 660702, '$2n$', FALSE, 2),
  (6607023, 660702, '$3n$', FALSE, 3),
  (6607024, 660702, '$4n$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (660703, 6607, 'Quelle différence essentielle existe-t-il entre une spore et une graine ?', 'La spore est une seule cellule qui germe sans fécondation ; la graine contient un embryon déjà issu d''une fécondation.', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6607031, 660703, 'La spore est une seule cellule et germe sans fécondation, la graine contient un embryon', TRUE, 1),
  (6607032, 660703, 'La spore contient un embryon, la graine est une seule cellule', FALSE, 2),
  (6607033, 660703, 'Les deux contiennent un embryon entouré de réserves', FALSE, 3),
  (6607034, 660703, 'Il n''y a aucune différence', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (660704, 6607, 'Le gamétophyte est l''individu qui produit les gamètes. Sa garniture chromosomique est :', 'Le gamétophyte est haploïde ($n$) et produit les gamètes par mitose.', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6607041, 660704, '$n$ (haploïde)', TRUE, 1),
  (6607042, 660704, '$2n$ (diploïde)', FALSE, 2),
  (6607043, 660704, '$n$ pour les mâles et $2n$ pour les femelles', FALSE, 3),
  (6607044, 660704, 'variable selon le milieu', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (660705, 6607, 'Dans le cycle d''une plante sans fleurs, le sporophyte ($2n$) produit les spores par :', 'Le sporophyte produit les spores haploïdes par méiose.', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6607051, 660705, 'méiose', TRUE, 1),
  (6607052, 660705, 'mitose', FALSE, 2),
  (6607053, 660705, 'fécondation', FALSE, 3),
  (6607054, 660705, 'germination', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (660706, 6607, 'Chez la mousse, la petite plante verte feuillée que l''on observe correspond :', 'Chez la mousse, le gamétophyte ($n$) domine : c''est la plante verte feuillée.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6607061, 660706, 'au gamétophyte ($n$), génération dominante', TRUE, 1),
  (6607062, 660706, 'au sporophyte ($2n$), génération dominante', FALSE, 2),
  (6607063, 660706, 'à la cellule-œuf ($2n$)', FALSE, 3),
  (6607064, 660706, 'au prothalle ($n$)', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (660707, 6607, 'Chez la fougère, la germination d''une spore donne :', 'La spore germe et donne le prothalle, gamétophyte haploïde en forme de cœur, indépendant.', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6607071, 660707, 'un prothalle ($n$), le gamétophyte', TRUE, 1),
  (6607072, 660707, 'une grande fougère ($2n$)', FALSE, 2),
  (6607073, 660707, 'une capsule ($2n$)', FALSE, 3),
  (6607074, 660707, 'une cellule-œuf ($2n$)', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (660708, 6607, 'Pourquoi la fécondation de la mousse et de la fougère nécessite-t-elle de l''eau ?', 'Les gamètes mâles sont mobiles et doivent nager dans un film d''eau pour atteindre le gamète femelle.', 8);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6607081, 660708, 'Les gamètes mâles, mobiles, doivent nager jusqu''au gamète femelle', TRUE, 1),
  (6607082, 660708, 'L''eau apporte les chromosomes manquants', FALSE, 2),
  (6607083, 660708, 'L''eau provoque la méiose', FALSE, 3),
  (6607084, 660708, 'L''eau transporte les graines', FALSE, 4);

-- cycles-developpement
SET @l := (SELECT id FROM lecon WHERE slug = 'cycles-developpement' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'svt-tcs'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (6608, NULL, @l, 'QCM — Cycles developpement', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (660801, 6608, 'Quel événement réduit le nombre de chromosomes de $2n$ à $n$ ?', 'La méiose transforme une cellule diploïde ($2n$) en cellules haploïdes ($n$) : c''est la réduction chromosomique.', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6608011, 660801, 'La méiose', TRUE, 1),
  (6608012, 660801, 'La fécondation', FALSE, 2),
  (6608013, 660801, 'La mitose', FALSE, 3),
  (6608014, 660801, 'Le développement', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (660802, 6608, 'Que produit la fécondation ?', 'La fécondation est l''union de deux gamètes haploïdes ($n + n$) qui donne une cellule-œuf diploïde ($2n$).', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6608021, 660802, 'Une cellule-œuf diploïde ($2n$)', TRUE, 1),
  (6608022, 660802, 'Deux cellules haploïdes ($n$)', FALSE, 2),
  (6608023, 660802, 'Quatre gamètes ($n$)', FALSE, 3),
  (6608024, 660802, 'Une spore haploïde ($n$)', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (660803, 6608, 'La phase haploïde d''un cycle de développement :', 'Entre la méiose ($2n \to n$) et la fécondation ($n + n \to 2n$), toutes les cellules sont haploïdes : la phase haploïde commence à la méiose et finit à la fécondation.', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6608031, 660803, 'Commence à la méiose et se termine à la fécondation', TRUE, 1),
  (6608032, 660803, 'Commence à la fécondation et se termine à la méiose', FALSE, 2),
  (6608033, 660803, 'Ne contient que des cellules à $2n$ chromosomes', FALSE, 3),
  (6608034, 660803, 'Correspond à la cellule-œuf uniquement', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (660804, 6608, 'Pourquoi le nombre de chromosomes de l''espèce reste-t-il constant d''une génération à l''autre ?', 'La méiose divise par deux le nombre de chromosomes ($2n \to n$) et la fécondation le rétablit ($n + n \to 2n$) : leurs effets se compensent exactement.', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6608041, 660804, 'Parce que méiose et fécondation ont des effets qui se compensent', TRUE, 1),
  (6608042, 660804, 'Parce que la mitose double le nombre de chromosomes', FALSE, 2),
  (6608043, 660804, 'Parce que la fécondation réduit le nombre de chromosomes', FALSE, 3),
  (6608044, 660804, 'Parce que la méiose rétablit le nombre $2n$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (660805, 6608, 'Dans un cycle haplophasique :', 'Dans un cycle haplophasique, la phase haploïde ($n$) domine ; la phase diploïde se réduit à la seule cellule-œuf, qui subit aussitôt la méiose.', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6608051, 660805, 'La phase haploïde ($n$) domine', TRUE, 1),
  (6608052, 660805, 'La phase diploïde ($2n$) domine', FALSE, 2),
  (6608053, 660805, 'Les deux phases forment chacune un individu pluricellulaire', FALSE, 3),
  (6608054, 660805, 'La méiose est absente', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (660806, 6608, 'Comment appelle-t-on l''individu diploïde qui produit les spores par méiose ?', 'Le sporophyte est l''individu de la phase diploïde ($2n$) qui produit les spores ; le gamétophyte ($n$) produit les gamètes.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6608061, 660806, 'Le sporophyte', TRUE, 1),
  (6608062, 660806, 'Le gamétophyte', FALSE, 2),
  (6608063, 660806, 'Le prothalle', FALSE, 3),
  (6608064, 660806, 'Le zygote', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (660807, 6608, 'Chez les spermaphytes (plantes à graines), le cycle est :', 'Chez les spermaphytes, la grande plante visible est diploïde et la phase haploïde se réduit aux gamètes : le cycle est diplophasique.', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6608071, 660807, 'Diplophasique : la plante adulte visible est diploïde ($2n$)', TRUE, 1),
  (6608072, 660807, 'Haplophasique : la plante adulte visible est haploïde ($n$)', FALSE, 2),
  (6608073, 660807, 'Haplo-diplophasique : gamétophyte et sporophyte aussi développés', FALSE, 3),
  (6608074, 660807, 'Sans phase diploïde', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (660808, 6608, 'De la mousse à la plante à fleurs, comment évolue le cycle de développement ?', 'La phase haploïde régresse au profit de la phase diploïde, en lien avec l''adaptation à la vie terrestre et le développement de la graine.', 8);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6608081, 660808, 'La phase haploïde régresse au profit de la phase diploïde', TRUE, 1),
  (6608082, 660808, 'La phase diploïde régresse au profit de la phase haploïde', FALSE, 2),
  (6608083, 660808, 'Les deux phases disparaissent progressivement', FALSE, 3),
  (6608084, 660808, 'La méiose est remplacée par la mitose', FALSE, 4);

-- reproduction-asexuee
SET @l := (SELECT id FROM lecon WHERE slug = 'reproduction-asexuee' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'svt-tcs'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (6609, NULL, @l, 'QCM — Reproduction asexuee', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (660901, 6609, 'La reproduction asexuée (multiplication végétative) se fait :', 'Elle produit de nouveaux individus à partir d''une tige, d''une racine ou d''une feuille d''une seule plante mère, sans gamètes ni fécondation.', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6609011, 660901, 'à partir d''un organe végétatif d''une seule plante, sans gamètes ni fécondation', TRUE, 1),
  (6609012, 660901, 'par rencontre de deux gamètes', FALSE, 2),
  (6609013, 660901, 'uniquement à partir de graines', FALSE, 3),
  (6609014, 660901, 'toujours grâce à une fleur', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (660902, 6609, 'Les individus issus par reproduction asexuée d''une même plante mère :', 'Formés par mitoses à partir de la plante mère, ils ont le même patrimoine génétique : ils constituent un clone.', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6609021, 660902, 'sont génétiquement identiques et forment un clone', TRUE, 1),
  (6609022, 660902, 'sont tous génétiquement différents', FALSE, 2),
  (6609023, 660902, 'possèdent deux fois plus de chromosomes', FALSE, 3),
  (6609024, 660902, 'sont stériles', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (660903, 6609, 'La division cellulaire à l''origine de la reproduction asexuée est :', 'La mitose est une division conforme : elle produit des cellules génétiquement identiques à la cellule mère.', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6609031, 660903, 'la mitose', TRUE, 1),
  (6609032, 660903, 'la méiose', FALSE, 2),
  (6609033, 660903, 'la fécondation', FALSE, 3),
  (6609034, 660903, 'la pollinisation', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (660904, 6609, 'Le fraisier se multiplie naturellement grâce à :', 'Le stolon est une tige rampante qui s''enracine à ses nœuds et donne de nouveaux fraisiers.', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6609041, 660904, 'des stolons', TRUE, 1),
  (6609042, 660904, 'des tubercules', FALSE, 2),
  (6609043, 660904, 'des bulbes', FALSE, 3),
  (6609044, 660904, 'le bouturage', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (660905, 6609, 'La pomme de terre se multiplie grâce à un organe portant des « yeux » appelé :', 'Le tubercule est un organe de réserve renflé dont chaque œil (bourgeon) peut germer et donner une nouvelle plante.', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6609051, 660905, 'tubercule', TRUE, 1),
  (6609052, 660905, 'rhizome', FALSE, 2),
  (6609053, 660905, 'drageon', FALSE, 3),
  (6609054, 660905, 'marcotte', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (660906, 6609, 'Parmi ces techniques, laquelle est un mode artificiel de multiplication ?', 'Le greffage, comme le bouturage, le marcottage et la culture in vitro, est réalisé par l''Homme ; rhizome, stolon et drageon sont des modes naturels.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6609061, 660906, 'le greffage', TRUE, 1),
  (6609062, 660906, 'le rhizome', FALSE, 2),
  (6609063, 660906, 'le stolon', FALSE, 3),
  (6609064, 660906, 'le drageon', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (660907, 6609, 'Le principal inconvénient de la reproduction asexuée est :', 'Tous les individus du clone étant identiques, une même maladie peut atteindre toute la population, qui ne peut pas s''adapter.', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6609071, 660907, 'la faible diversité génétique des descendants', TRUE, 1),
  (6609072, 660907, 'sa lenteur', FALSE, 2),
  (6609073, 660907, 'la perte des qualités de la plante mère', FALSE, 3),
  (6609074, 660907, 'le besoin de deux parents', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (660908, 6609, 'Combien de parents interviennent dans la reproduction asexuée ?', 'Un seul parent suffit, sans pollinisation ni fécondation, contrairement à la reproduction sexuée qui en met deux en jeu.', 8);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6609081, 660908, 'un seul', TRUE, 1),
  (6609082, 660908, 'deux', FALSE, 2),
  (6609083, 660908, 'trois', FALSE, 3),
  (6609084, 660908, 'aucun', FALSE, 4);

-- modification-genetique-plantes
SET @l := (SELECT id FROM lecon WHERE slug = 'modification-genetique-plantes' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'svt-tcs'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (6610, NULL, @l, 'QCM — Modification genetique plantes', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (661001, 6610, 'La sélection généalogique consiste à :', 'Dans la sélection généalogique, on suit la descendance de chaque plante choisie individuellement, génération après génération, jusqu''à obtenir une lignée pure stable. La sélection massale, elle, mélange les graines d''un groupe de plantes.', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6610011, 661001, 'Suivre individuellement la descendance des plantes choisies jusqu''à une lignée pure', TRUE, 1),
  (6610012, 661001, 'Mélanger les graines d''un groupe de plantes possédant le caractère recherché', FALSE, 2),
  (6610013, 661001, 'Introduire un gène étranger dans une cellule végétale', FALSE, 3),
  (6610014, 661001, 'Croiser deux espèces différentes pour obtenir un hybride', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (661002, 6610, 'La vigueur hybride (hétérosis) désigne le fait que les hybrides F1 sont :', 'Les hybrides issus du croisement de deux lignées pures différentes sont souvent plus vigoureux, plus productifs et plus résistants que leurs parents. Cet effet se manifeste surtout à la première génération (F1).', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6610021, 661002, 'Plus vigoureux et plus productifs que leurs deux parents', TRUE, 1),
  (6610022, 661002, 'Toujours stériles', FALSE, 2),
  (6610023, 661002, 'Identiques à la plante mère', FALSE, 3),
  (6610024, 661002, 'Moins résistants que les lignées pures', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (661003, 6610, 'Un OGM est un organisme dont le patrimoine génétique :', 'Un organisme génétiquement modifié possède un gène étranger (transgène), provenant d''une autre espèce, introduit par génie génétique.', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6610031, 661003, 'A reçu un gène étranger provenant d''une autre espèce', TRUE, 1),
  (6610032, 661003, 'A été détruit par un agent chimique', FALSE, 2),
  (6610033, 661003, 'Ne contient plus aucun gène', FALSE, 3),
  (6610034, 661003, 'A simplement été sélectionné parmi des variétés existantes', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (661004, 6610, 'Quel est l''ordre correct des étapes de la transgénèse ?', 'On isole d''abord le gène d''intérêt chez le donneur, on l''insère dans une cellule végétale (souvent via une bactérie vecteur), on cultive cette cellule in vitro pour régénérer une plante entière, puis on vérifie le nouveau caractère.', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6610041, 661004, 'Isoler le gène → insérer dans une cellule → cultiver in vitro → vérifier le caractère', TRUE, 1),
  (6610042, 661004, 'Cultiver in vitro → isoler le gène → vérifier le caractère → insérer dans une cellule', FALSE, 2),
  (6610043, 661004, 'Vérifier le caractère → insérer dans une cellule → isoler le gène → cultiver in vitro', FALSE, 3),
  (6610044, 661004, 'Insérer dans une cellule → isoler le gène → cultiver in vitro → vérifier le caractère', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (661005, 6610, 'Dans la transgénèse végétale, la bactérie \textit{Agrobacterium} joue le rôle de :', 'La bactérie sert de vecteur : elle transporte et introduit le gène d''intérêt dans le génome de la cellule végétale.', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6610051, 661005, 'Vecteur qui introduit le gène d''intérêt dans la cellule végétale', TRUE, 1),
  (6610052, 661005, 'Source de nourriture pour la plante', FALSE, 2),
  (6610053, 661005, 'Agent qui détruit le gène d''intérêt', FALSE, 3),
  (6610054, 661005, 'Herbicide protégeant la culture', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (661006, 6610, 'Le maïs Bt est résistant aux insectes ravageurs parce qu''il porte un gène issu de :', 'Le maïs Bt porte un gène de la bactérie Bacillus thuringiensis, qui lui fait produire une protéine toxique pour les insectes ravageurs.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6610061, 661006, 'La bactérie \textit{Bacillus thuringiensis}, produisant une toxine pour les insectes', TRUE, 1),
  (6610062, 661006, 'Un virus rendant la plante résistante à la sécheresse', FALSE, 2),
  (6610063, 661006, 'Un autre maïs enrichi en provitamine A', FALSE, 3),
  (6610064, 661006, 'Un champignon améliorant le goût des grains', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (661007, 6610, 'La culture in vitro permet d''obtenir, à partir d''un fragment de plante :', 'La culture in vitro (micropropagation) produit, à partir d''un seul fragment, un grand nombre de plantes identiques à la plante d''origine : ce sont des clones. Elle permet aussi d''obtenir des plants sains.', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6610071, 661007, 'De nombreux clones identiques à la plante d''origine', TRUE, 1),
  (6610072, 661007, 'Des plantes portant un gène étranger d''une autre espèce', FALSE, 2),
  (6610073, 661007, 'Des hybrides issus de deux parents différents', FALSE, 3),
  (6610074, 661007, 'Des plantes toujours différentes de la plante de départ', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (661008, 6610, 'Parmi les éléments suivants, lequel est un risque environnemental lié aux cultures d''OGM ?', 'La dispersion du transgène vers des plantes sauvages, la perte de biodiversité ou l''apparition d''organismes résistants sont des risques environnementaux. Les brevets relèvent des enjeux éthiques/économiques et les allergies des risques sanitaires.', 8);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6610081, 661008, 'La dispersion du transgène vers les plantes sauvages et la perte de biodiversité', TRUE, 1),
  (6610082, 661008, 'Les brevets sur le vivant', FALSE, 2),
  (6610083, 661008, 'Le risque d''allergies chez le consommateur', FALSE, 3),
  (6610084, 661008, 'La dépendance des agriculteurs vis-à-vis des semenciers', FALSE, 4);

-- classification-plantes
SET @l := (SELECT id FROM lecon WHERE slug = 'classification-plantes' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'svt-tcs'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (6611, NULL, @l, 'QCM — Classification plantes', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (661101, 6611, 'Classer les végétaux, c''est les répartir en groupes (taxons) en se fondant sur :', 'On classe selon des caractères communs : appareil végétatif, vaisseaux, mode de reproduction, fleurs et fruits.', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6611011, 661101, 'des caractères communs', TRUE, 1),
  (6611012, 661101, 'leur taille uniquement', FALSE, 2),
  (6611013, 661101, 'leur couleur', FALSE, 3),
  (6611014, 661101, 'leur lieu de récolte', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (661102, 6611, 'Un végétal dont le corps est un thalle non différencié, sans vaisseaux, est :', 'Le thalle, sans vraies racines, tige ni feuilles et sans vaisseaux, caractérise les thallophytes (algues).', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6611021, 661102, 'une thallophyte (algue)', TRUE, 1),
  (6611022, 661102, 'une bryophyte (mousse)', FALSE, 2),
  (6611023, 661102, 'une ptéridophyte (fougère)', FALSE, 3),
  (6611024, 661102, 'une angiosperme', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (661103, 6611, 'Quel caractère distingue les ptéridophytes (fougères) des bryophytes (mousses) ?', 'Les fougères sont les premières plantes vasculaires : elles possèdent des vaisseaux, contrairement aux mousses.', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6611031, 661103, 'la présence de vaisseaux conducteurs', TRUE, 1),
  (6611032, 661103, 'la présence de graines', FALSE, 2),
  (6611033, 661103, 'la présence de fleurs', FALSE, 3),
  (6611034, 661103, 'la présence d''un thalle', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (661104, 6611, 'Les mousses (bryophytes) se reproduisent par :', 'Les bryophytes, comme les algues et les fougères, se reproduisent par spores, sans graines ni fleurs.', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6611041, 661104, 'des spores', TRUE, 1),
  (6611042, 661104, 'des graines nues', FALSE, 2),
  (6611043, 661104, 'des graines protégées dans un fruit', FALSE, 3),
  (6611044, 661104, 'des fleurs', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (661105, 6611, 'Chez les gymnospermes, les graines sont :', 'Chez les gymnospermes (conifères), les graines sont nues, posées sur les écailles des cônes, sans fruit.', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6611051, 661105, 'nues, portées par des cônes', TRUE, 1),
  (6611052, 661105, 'enfermées dans un fruit', FALSE, 2),
  (6611053, 661105, 'absentes', FALSE, 3),
  (6611054, 661105, 'remplacées par des spores', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (661106, 6611, 'Le caractère propre aux angiospermes, qui les distingue de tous les autres groupes, est :', 'Les angiospermes sont les plantes à fleurs : la graine est protégée dans un fruit issu de la transformation de la fleur.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6611061, 661106, 'la présence de fleurs et de fruits', TRUE, 1),
  (6611062, 661106, 'la présence de vaisseaux', FALSE, 2),
  (6611063, 661106, 'la reproduction par spores', FALSE, 3),
  (6611064, 661106, 'l''absence de racines', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (661107, 6611, 'Une plante à graine possédant un seul cotylédon et des feuilles à nervures parallèles est :', 'Les monocotylédones (blé, maïs, palmier) ont un cotylédon et des nervures parallèles ; les dicotylédones en ont deux et des nervures ramifiées.', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6611071, 661107, 'une monocotylédone', TRUE, 1),
  (6611072, 661107, 'une dicotylédone', FALSE, 2),
  (6611073, 661107, 'un gymnosperme', FALSE, 3),
  (6611074, 661107, 'une ptéridophyte', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (661108, 6611, 'Une clé de détermination est dite « dichotomique » parce qu''à chaque étape :', 'Dichotomique signifie « en deux » : à chaque étape on tranche entre deux propositions (présence ou absence d''un caractère).', 8);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6611081, 661108, 'on choisit entre deux propositions', TRUE, 1),
  (6611082, 661108, 'on choisit entre quatre propositions', FALSE, 2),
  (6611083, 661108, 'on mesure la taille de la plante', FALSE, 3),
  (6611084, 661108, 'on compte le nombre de feuilles', FALSE, 4);

