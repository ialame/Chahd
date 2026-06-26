-- SVT 1 Bac : QCM des 12 chapitres (quiz 6301-6312).
SET SESSION sql_mode = CONCAT(@@sql_mode, ',NO_BACKSLASH_ESCAPES');

-- sedimentation-milieux
SET @l := (SELECT id FROM lecon WHERE slug = 'sedimentation-milieux' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'svt-1bac'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (6301, NULL, @l, 'QCM — Sedimentation milieux', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (630101, 6301, 'L''altération mécanique d''une roche se caractérise par :', 'L''altération mécanique (gel-dégel, écarts de température, racines) fragmente la roche sans modifier sa composition chimique. C''est l''altération chimique qui change la composition (dissolution, hydrolyse).', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6301011, 630101, 'une fragmentation de la roche sans changement de composition', TRUE, 1),
  (6301012, 630101, 'une dissolution des minéraux par l''eau acide', FALSE, 2),
  (6301013, 630101, 'la transformation des silicates en argiles', FALSE, 3),
  (6301014, 630101, 'le dépôt des particules au fond de la mer', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (630102, 6301, 'La dissolution d''un calcaire par une eau de pluie chargée en CO2 est un exemple :', 'La dissolution modifie la composition de la roche : il s''agit d''une altération chimique. Elle façonne le modelé karstique (grottes, lapiaz).', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6301021, 630102, 'd''altération chimique', TRUE, 1),
  (6301022, 630102, 'd''altération mécanique', FALSE, 2),
  (6301023, 630102, 'de diagenèse', FALSE, 3),
  (6301024, 630102, 'de cimentation', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (630103, 6301, 'Lors du transport par un cours d''eau, lorsque la vitesse du courant diminue :', 'La capacité de transport dépend de la vitesse : quand le courant ralentit, il ne peut plus porter les éléments les plus grossiers, qui se déposent en premier.', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6301031, 630103, 'les particules les plus grosses se déposent les premières', TRUE, 1),
  (6301032, 630103, 'les particules les plus fines se déposent les premières', FALSE, 2),
  (6301033, 630103, 'toutes les particules sont remises en mouvement', FALSE, 3),
  (6301034, 630103, 'seuls les ions dissous se déposent', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (630104, 6301, 'Le granoclassement désigne :', 'Le granoclassement est le tri des particules selon leur taille au moment du dépôt : les plus grossières d''abord, les plus fines ensuite.', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6301041, 630104, 'le tri des particules selon leur taille au moment du dépôt', TRUE, 1),
  (6301042, 630104, 'la dissolution des roches par l''eau', FALSE, 2),
  (6301043, 630104, 'le durcissement d''un sédiment en roche', FALSE, 3),
  (6301044, 630104, 'le mélange aléatoire des particules dans l''eau', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (630105, 6301, 'Dans une éprouvette où l''on a agité de l''eau avec graviers, sable et argile, après repos on observe du fond vers le haut :', 'Par décantation, les plus grosses particules tombent les premières : graviers au fond, puis sable, enfin argile en surface (granoclassement vertical).', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6301051, 630105, 'graviers, puis sable, puis argile', TRUE, 1),
  (6301052, 630105, 'argile, puis sable, puis graviers', FALSE, 2),
  (6301053, 630105, 'sable, puis graviers, puis argile', FALSE, 3),
  (6301054, 630105, 'un mélange homogène sans tri', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (630106, 6301, 'Un calcaire renfermant de nombreuses coquilles d''animaux marins s''est déposé dans un milieu :', 'Les fossiles d''organismes marins indiquent un dépôt en milieu marin : ce sont des fossiles de faciès, qui renseignent sur le milieu de dépôt.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6301061, 630106, 'marin', TRUE, 1),
  (6301062, 630106, 'continental', FALSE, 2),
  (6301063, 630106, 'désertique', FALSE, 3),
  (6301064, 630106, 'glaciaire', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (630107, 6301, 'La diagenèse fait intervenir principalement :', 'La diagenèse transforme un sédiment meuble en roche par compaction (tassement, expulsion de l''eau) et cimentation (précipitation d''un ciment entre les grains).', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6301071, 630107, 'la compaction et la cimentation', TRUE, 1),
  (6301072, 630107, 'le gel-dégel et l''hydrolyse', FALSE, 2),
  (6301073, 630107, 'la dissolution et l''érosion', FALSE, 3),
  (6301074, 630107, 'le transport et le tri par le vent', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (630108, 6301, 'D''après le principe de superposition, dans une série de strates non bouleversée :', 'Les strates se déposent les unes au-dessus des autres au cours du temps : chaque couche est plus récente que celle située en dessous d''elle.', 8);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6301081, 630108, 'une strate est plus récente que celle qui est en dessous d''elle', TRUE, 1),
  (6301082, 630108, 'une strate est plus ancienne que celle qui est en dessous d''elle', FALSE, 2),
  (6301083, 630108, 'toutes les strates ont le même âge', FALSE, 3),
  (6301084, 630108, 'la strate du sommet est la plus ancienne', FALSE, 4);

-- etude-sediments
SET @l := (SELECT id FROM lecon WHERE slug = 'etude-sediments' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'svt-1bac'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (6302, NULL, @l, 'QCM — Etude sediments', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (630201, 6302, 'Les roches sédimentaires se forment :', 'Les roches sédimentaires se forment à la surface de la Terre par accumulation puis transformation de sédiments (érosion, transport, dépôt, diagenèse), contrairement aux roches magmatiques qui résultent du refroidissement d''un magma en profondeur.', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6302011, 630201, 'à la surface de la Terre, par accumulation de sédiments', TRUE, 1),
  (6302012, 630201, 'en profondeur, par refroidissement d''un magma', FALSE, 2),
  (6302013, 630201, 'par fusion totale des roches du manteau', FALSE, 3),
  (6302014, 630201, 'uniquement par l''activité des volcans', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (630202, 6302, 'Parmi ces roches, laquelle est une roche détritique ?', 'Le grès est formé par accumulation de débris (sable) issus de l''érosion d''autres roches : c''est une roche détritique. Le calcaire à coquilles est biochimique ; le sel gemme et le gypse sont chimiques.', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6302021, 630202, 'le grès', TRUE, 1),
  (6302022, 630202, 'le sel gemme', FALSE, 2),
  (6302023, 630202, 'le gypse', FALSE, 3),
  (6302024, 630202, 'le calcaire à coquilles', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (630203, 6302, 'Le sel gemme et le gypse sont des roches sédimentaires :', 'Le sel gemme (halite) et le gypse résultent de la précipitation de sels dissous lors de l''évaporation de l''eau : ce sont des roches chimiques (évaporites).', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6302031, 630203, 'chimiques, formées par précipitation après évaporation', TRUE, 1),
  (6302032, 630203, 'détritiques, formées par accumulation de galets', FALSE, 2),
  (6302033, 630203, 'biochimiques, formées par des coquilles', FALSE, 3),
  (6302034, 630203, 'magmatiques, formées par refroidissement', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (630204, 6302, 'Le faciès d''une roche sédimentaire correspond :', 'Le faciès est l''ensemble des caractères d''une roche (nature, couleur, taille et forme des grains, structures, fossiles) qui traduisent les conditions de son dépôt.', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6302041, 630204, 'à l''ensemble de ses caractères traduisant son milieu de dépôt', TRUE, 1),
  (6302042, 630204, 'à son âge absolu en millions d''années', FALSE, 2),
  (6302043, 630204, 'à sa profondeur d''enfouissement actuelle', FALSE, 3),
  (6302044, 630204, 'à sa seule couleur', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (630205, 6302, 'Un faciès fait de grains grossiers et anguleux indique un milieu de dépôt :', 'Des grains grossiers et anguleux n''ont pas été transportés loin ni usés : ils traduisent un milieu agité et proche de la source (rivière, plage). Des grains fins et triés indiqueraient un milieu calme et éloigné.', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6302051, 630205, 'agité et proche de la source', TRUE, 1),
  (6302052, 630205, 'calme et profond, loin de la source', FALSE, 2),
  (6302053, 630205, 'évaporitique chaud et aride', FALSE, 3),
  (6302054, 630205, 'glaciaire de haute montagne uniquement', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (630206, 6302, 'La fossilisation d''un organisme est surtout favorisée par :', 'Un enfouissement rapide, à l''abri de l''oxygène et des décomposeurs, conserve les restes ; la fossilisation favorise les parties dures (coquilles, squelettes).', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6302061, 630206, 'un enfouissement rapide à l''abri de l''air et des décomposeurs', TRUE, 1),
  (6302062, 630206, 'une longue exposition à l''air libre', FALSE, 2),
  (6302063, 630206, 'la présence de parties molles uniquement', FALSE, 3),
  (6302064, 630206, 'une forte chaleur volcanique', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (630207, 6302, 'Un fossile stratigraphique est l''espèce qui possède :', 'Un bon fossile stratigraphique a une large répartition géographique et une courte durée d''existence : il permet de dater une couche et de corréler des couches éloignées.', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6302071, 630207, 'une large répartition géographique et une courte durée d''existence', TRUE, 1),
  (6302072, 630207, 'une répartition très limitée et une longue durée d''existence', FALSE, 2),
  (6302073, 630207, 'une vie uniquement continentale', FALSE, 3),
  (6302074, 630207, 'des parties molles facilement conservées', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (630208, 6302, 'Le principe de l''actualisme peut se résumer par la formule :', 'Le principe de l''actualisme affirme que les phénomènes géologiques du passé obéissent aux mêmes lois qu''aujourd''hui : « le présent est la clé du passé ». Il permet de reconstituer les paléoenvironnements.', 8);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6302081, 630208, '« le présent est la clé du passé »', TRUE, 1),
  (6302082, 630208, '« le passé est imprévisible »', FALSE, 2),
  (6302083, 630208, '« rien ne se conserve dans les roches »', FALSE, 3),
  (6302084, 630208, '« chaque couche est plus ancienne que celles du dessous »', FALSE, 4);

-- principes-stratigraphiques
SET @l := (SELECT id FROM lecon WHERE slug = 'principes-stratigraphiques' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'svt-1bac'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (6303, NULL, @l, 'QCM — Principes stratigraphiques', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (630301, 6303, 'Dans une série de couches non déformée, quelle couche est la plus ancienne ?', 'Principe de superposition : le plus ancien est en bas, le plus récent en haut.', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6303011, 630301, 'Celle située tout en bas', TRUE, 1),
  (6303012, 630301, 'Celle située tout en haut', FALSE, 2),
  (6303013, 630301, 'Celle du milieu', FALSE, 3),
  (6303014, 630301, 'Celle qui contient le plus de fossiles', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (630302, 6303, 'Une faille qui recoupe plusieurs couches sédimentaires est :', 'Principe de recoupement : une structure qui en recoupe une autre lui est postérieure.', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6303021, 630302, 'Plus récente que les couches qu''elle recoupe', TRUE, 1),
  (6303022, 630302, 'Plus ancienne que les couches qu''elle recoupe', FALSE, 2),
  (6303023, 630302, 'Du même âge que la couche du bas', FALSE, 3),
  (6303024, 630302, 'Du même âge que la couche du haut', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (630303, 6303, 'Un galet de granite inclus dans un grès est, par rapport au grès :', 'Principe d''inclusion : un élément inclus dans une roche est plus ancien que la roche qui le contient.', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6303031, 630303, 'Plus ancien', TRUE, 1),
  (6303032, 630303, 'Plus récent', FALSE, 2),
  (6303033, 630303, 'Du même âge', FALSE, 3),
  (6303034, 630303, 'Impossible à dater', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (630304, 6303, 'Deux couches éloignées contenant les mêmes fossiles stratigraphiques :', 'Principe d''identité paléontologique : mêmes fossiles stratigraphiques signifie même âge.', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6303041, 630304, 'Ont le même âge', TRUE, 1),
  (6303042, 630304, 'Sont d''âges très différents', FALSE, 2),
  (6303043, 630304, 'Ne peuvent pas être comparées', FALSE, 3),
  (6303044, 630304, 'Sont toujours superposées', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (630305, 6303, 'Quelle propriété fait d''une espèce un bon fossile stratigraphique ?', 'Un bon fossile stratigraphique a une large répartition, une courte durée de vie et une grande abondance.', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6303051, 630305, 'Large répartition et courte durée d''existence', TRUE, 1),
  (6303052, 630305, 'Répartition limitée et longue durée d''existence', FALSE, 2),
  (6303053, 630305, 'Présence dans une seule région', FALSE, 3),
  (6303054, 630305, 'Mauvaise fossilisation', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (630306, 6303, 'La datation absolue (radiochronologie) permet de :', 'La datation absolue attribue un âge chiffré (en années) grâce à la désintégration radioactive.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6303061, 630306, 'Donner un âge en années à une roche', TRUE, 1),
  (6303062, 630306, 'Seulement ordonner les couches sans âge chiffré', FALSE, 2),
  (6303063, 630306, 'Mesurer l''épaisseur des couches', FALSE, 3),
  (6303064, 630306, 'Identifier les fossiles', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (630307, 6303, 'Un élément radioactif a une demi-vie $T$. Après une durée $2T$, la fraction d''atomes père restants est :', 'À chaque demi-vie la quantité est divisée par 2 : après $2T$ il reste $\dfrac{1}{2}\times\dfrac{1}{2}=\dfrac{1}{4}$.', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6303071, 630307, '$\dfrac{1}{4}$', TRUE, 1),
  (6303072, 630307, '$\dfrac{1}{2}$', FALSE, 2),
  (6303073, 630307, '$\dfrac{1}{8}$', FALSE, 3),
  (6303074, 630307, '$0$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (630308, 6303, 'Sur l''échelle des temps géologiques, quelle ère est caractérisée par le règne des dinosaures ?', 'Le Secondaire (Mésozoïque) est l''ère des dinosaures et des ammonites ; ils disparaissent à la limite Secondaire/Tertiaire.', 8);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6303081, 630308, 'Le Secondaire (Mésozoïque)', TRUE, 1),
  (6303082, 630308, 'Le Primaire (Paléozoïque)', FALSE, 2),
  (6303083, 630308, 'Le Quaternaire', FALSE, 3),
  (6303084, 630308, 'Le Précambrien', FALSE, 4);

-- carte-geologique
SET @l := (SELECT id FROM lecon WHERE slug = 'carte-geologique' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'svt-1bac'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (6304, NULL, @l, 'QCM — Carte geologique', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (630401, 6304, 'Sur une carte géologique des terrains sédimentaires, les couleurs indiquent surtout :', 'Pour les terrains sédimentaires, chaque couleur correspond à un étage ou un système stratigraphique : la couleur traduit l''âge de la formation.', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6304011, 630401, 'l''âge des terrains', TRUE, 1),
  (6304012, 630401, 'la dureté des roches', FALSE, 2),
  (6304013, 630401, 'l''altitude du terrain', FALSE, 3),
  (6304014, 630401, 'la densité des roches', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (630402, 6304, 'Une coupe géologique représente la disposition des terrains :', 'La coupe géologique figure la structure du sous-sol dans un plan vertical, le long d''une ligne tracée sur la carte ; elle complète la vue de surface.', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6304021, 630402, 'dans un plan vertical, en profondeur', TRUE, 1),
  (6304022, 630402, 'uniquement en surface', FALSE, 2),
  (6304023, 630402, 'vus depuis un satellite', FALSE, 3),
  (6304024, 630402, 'à l''échelle d''un continent', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (630403, 6304, 'Le pendage d''une couche désigne :', 'Le pendage est l''inclinaison d''une couche par rapport à l''horizontale ; il est caractérisé par sa valeur (angle) et le sens vers lequel la couche plonge.', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6304031, 630403, 'son inclinaison par rapport à l''horizontale', TRUE, 1),
  (6304032, 630403, 'son épaisseur totale', FALSE, 2),
  (6304033, 630403, 'sa longueur d''affleurement', FALSE, 3),
  (6304034, 630403, 'sa teneur en fossiles', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (630404, 6304, 'Au cœur d''un pli affleurent les couches les plus anciennes : il s''agit :', 'Dans un anticlinal (pli en voûte) érodé, l''érosion met à nu le cœur où affleurent les couches les plus anciennes, encadrées de couches de plus en plus récentes.', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6304041, 630404, 'd''un anticlinal', TRUE, 1),
  (6304042, 630404, 'd''un synclinal', FALSE, 2),
  (6304043, 630404, 'd''une faille normale', FALSE, 3),
  (6304044, 630404, 'd''une discordance', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (630405, 6304, 'D''après le principe de superposition, dans une série non déformée, une couche est :', 'Le principe de superposition énonce qu''une couche est plus ancienne que celle qui la recouvre : les dépôts les plus récents se trouvent au sommet.', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6304051, 630405, 'plus ancienne que celle qui la recouvre', TRUE, 1),
  (6304052, 630405, 'plus récente que celle qui la recouvre', FALSE, 2),
  (6304053, 630405, 'du même âge que toutes les autres', FALSE, 3),
  (6304054, 630405, 'toujours horizontale', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (630406, 6304, 'Une faille qui décale des couches sédimentaires est, par rapport à ces couches :', 'Pour décaler des couches, la faille a dû se former après leur dépôt : d''après le principe de recoupement, la structure qui en recoupe une autre lui est postérieure.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6304061, 630406, 'plus récente que les couches qu''elle décale', TRUE, 1),
  (6304062, 630406, 'plus ancienne que les couches qu''elle décale', FALSE, 2),
  (6304063, 630406, 'exactement du même âge que la couche la plus basse', FALSE, 3),
  (6304064, 630406, 'indatable par rapport aux couches', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (630407, 6304, 'Une discordance correspond à des couches récentes horizontales reposant, le long d''une surface d''érosion, sur des couches plus anciennes inclinées. Elle implique successivement :', 'Une discordance suppose le dépôt puis la déformation (inclinaison) des couches anciennes, leur érosion, et enfin le dépôt des couches récentes par-dessus la surface d''érosion.', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6304071, 630407, 'déformation, érosion, puis nouveau dépôt', TRUE, 1),
  (6304072, 630407, 'un dépôt unique et continu sans interruption', FALSE, 2),
  (6304073, 630407, 'une simple superposition de couches horizontales', FALSE, 3),
  (6304074, 630407, 'une fusion des roches en profondeur', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (630408, 6304, 'Une carte paléogéographique sert à reconstituer :', 'La carte paléogéographique restitue la géographie ancienne d''une région à une époque donnée : répartition des terres et des mers, position des rivages et milieux de dépôt.', 8);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6304081, 630408, 'la répartition des terres et des mers à une époque ancienne', TRUE, 1),
  (6304082, 630408, 'le relief actuel de la région', FALSE, 2),
  (6304083, 630408, 'la composition chimique du magma', FALSE, 3),
  (6304084, 630408, 'le réseau routier de la région', FALSE, 4);

-- absorption-eau-sels
SET @l := (SELECT id FROM lecon WHERE slug = 'absorption-eau-sels' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'svt-1bac'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (6305, NULL, @l, 'QCM — Absorption eau sels', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (630501, 6305, 'Dans quelle zone de la racine se fait l''essentiel de l''absorption de l''eau et des sels minéraux ?', 'L''absorption se fait au niveau de la zone pilifère, couverte de poils absorbants.', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6305011, 630501, 'La zone pilifère', TRUE, 1),
  (6305012, 630501, 'La coiffe', FALSE, 2),
  (6305013, 630501, 'La zone de croissance', FALSE, 3),
  (6305014, 630501, 'La zone subéreuse', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (630502, 6305, 'Quel est le rôle des poils absorbants ?', 'Très nombreux, ils augmentent fortement la surface de contact entre la racine et la solution du sol.', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6305021, 630502, 'Augmenter la surface d''échange avec le sol', TRUE, 1),
  (6305022, 630502, 'Protéger l''extrémité de la racine', FALSE, 2),
  (6305023, 630502, 'Produire la matière organique', FALSE, 3),
  (6305024, 630502, 'Allonger la racine', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (630503, 6305, 'L''osmose est le passage de l''eau à travers une membrane hémiperméable :', 'L''eau va de la solution la moins concentrée (hypotonique) vers la plus concentrée (hypertonique).', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6305031, 630503, 'du milieu hypotonique vers le milieu hypertonique', TRUE, 1),
  (6305032, 630503, 'du milieu hypertonique vers le milieu hypotonique', FALSE, 2),
  (6305033, 630503, 'toujours du sol vers l''air', FALSE, 3),
  (6305034, 630503, 'uniquement avec dépense d''énergie', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (630504, 6305, 'Une cellule végétale plongée dans une solution hypertonique (très concentrée) subit :', 'L''eau sort de la cellule, le cytoplasme se rétracte et se décolle de la paroi : c''est la plasmolyse.', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6305041, 630504, 'une plasmolyse', TRUE, 1),
  (6305042, 630504, 'une turgescence', FALSE, 2),
  (6305043, 630504, 'aucun changement', FALSE, 3),
  (6305044, 630504, 'une augmentation de volume', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (630505, 6305, 'La pression osmotique $\pi$ d''une solution est d''autant plus grande que la solution est :', 'Plus une solution est concentrée, plus sa pression osmotique est élevée et plus elle attire l''eau.', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6305051, 630505, 'plus concentrée en solutés', TRUE, 1),
  (6305052, 630505, 'plus diluée', FALSE, 2),
  (6305053, 630505, 'plus chaude', FALSE, 3),
  (6305054, 630505, 'plus colorée', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (630506, 6305, 'Le transport actif des ions par la racine se caractérise par :', 'Il se fait contre le gradient, consomme de l''ATP (respiration) et est sélectif grâce à des transporteurs.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6305061, 630506, 'une dépense d''énergie et une sélectivité', TRUE, 1),
  (6305062, 630506, 'l''absence de toute dépense d''énergie', FALSE, 2),
  (6305063, 630506, 'un déplacement dans le sens du gradient', FALSE, 3),
  (6305064, 630506, 'le passage de l''eau seulement', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (630507, 6305, 'La solution d''eau et de sels minéraux absorbée par les racines s''appelle :', 'La sève brute circule des racines vers les feuilles dans les vaisseaux du xylème.', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6305071, 630507, 'la sève brute', TRUE, 1),
  (6305072, 630507, 'la sève élaborée', FALSE, 2),
  (6305073, 630507, 'le latex', FALSE, 3),
  (6305074, 630507, 'la chlorophylle', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (630508, 6305, 'Quel est le moteur principal de l''ascension de la sève brute ?', 'L''évaporation de l''eau aux stomates crée une aspiration qui tire la colonne d''eau vers le haut dans le xylème.', 8);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6305081, 630508, 'La transpiration au niveau des stomates', TRUE, 1),
  (6305082, 630508, 'La photosynthèse des racines', FALSE, 2),
  (6305083, 630508, 'La pesanteur', FALSE, 3),
  (6305084, 630508, 'La digestion des sels minéraux', FALSE, 4);

-- echanges-gazeux-chlorophylliens
SET @l := (SELECT id FROM lecon WHERE slug = 'echanges-gazeux-chlorophylliens' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'svt-1bac'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (6306, NULL, @l, 'QCM — Echanges gazeux chlorophylliens', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (630601, 6306, 'À la lumière, une plante verte réalise des échanges gazeux chlorophylliens : elle', 'À la lumière, la photosynthèse l''emporte : la plante absorbe du $\text{CO}_2$ et dégage de l''$\text{O}_2$, échanges inverses de ceux de la respiration.', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6306011, 630601, 'absorbe du $\text{CO}_2$ et dégage de l''$\text{O}_2$', TRUE, 1),
  (6306012, 630601, 'absorbe de l''$\text{O}_2$ et dégage du $\text{CO}_2$', FALSE, 2),
  (6306013, 630601, 'absorbe de l''$\text{O}_2$ et du $\text{CO}_2$', FALSE, 3),
  (6306014, 630601, 'ne réalise aucun échange gazeux', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (630602, 6306, 'Dans une expérience ExAO avec une élodée placée à l''obscurité, la concentration en $\text{O}_2$ de l''eau diminue parce que la plante :', 'À l''obscurité, il n''y a pas de photosynthèse : la plante respire seulement et consomme l''$\text{O}_2$ dissous, dont la concentration diminue.', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6306021, 630602, 'respire et consomme de l''$\text{O}_2$', TRUE, 1),
  (6306022, 630602, 'réalise la photosynthèse', FALSE, 2),
  (6306023, 630602, 'dégage de l''$\text{O}_2$', FALSE, 3),
  (6306024, 630602, 'n''échange plus aucun gaz', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (630603, 6306, 'L''équation de la photosynthèse est :', 'La photosynthèse fabrique du glucose à partir de $\text{CO}_2$ et d''eau grâce à l''énergie lumineuse : $6\,\text{CO}_2 + 6\,\text{H}_2\text{O} \rightarrow \text{C}_6\text{H}_{12}\text{O}_6 + 6\,\text{O}_2$.', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6306031, 630603, '$6\,\text{CO}_2 + 6\,\text{H}_2\text{O} \rightarrow \text{C}_6\text{H}_{12}\text{O}_6 + 6\,\text{O}_2$', TRUE, 1),
  (6306032, 630603, '$\text{C}_6\text{H}_{12}\text{O}_6 + 6\,\text{O}_2 \rightarrow 6\,\text{CO}_2 + 6\,\text{H}_2\text{O}$', FALSE, 2),
  (6306033, 630603, '$6\,\text{O}_2 + 6\,\text{H}_2\text{O} \rightarrow \text{C}_6\text{H}_{12}\text{O}_6 + 6\,\text{CO}_2$', FALSE, 3),
  (6306034, 630603, '$\text{C}_6\text{H}_{12}\text{O}_6 \rightarrow 6\,\text{CO}_2 + 6\,\text{O}_2$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (630604, 6306, 'Parmi ces propositions, laquelle distingue correctement photosynthèse et respiration ?', 'La photosynthèse n''a lieu qu''à la lumière, dans les chloroplastes ; la respiration a lieu en permanence (jour et nuit), dans les mitochondries.', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6306041, 630604, 'la photosynthèse n''a lieu qu''à la lumière, la respiration en permanence', TRUE, 1),
  (6306042, 630604, 'les deux n''ont lieu qu''à la lumière', FALSE, 2),
  (6306043, 630604, 'la respiration n''a lieu qu''à la lumière', FALSE, 3),
  (6306044, 630604, 'la photosynthèse a lieu dans les mitochondries', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (630605, 6306, 'L''ouverture centrale d''un stomate, par laquelle se font les échanges gazeux, s''appelle :', 'Le stomate est formé d''une ouverture, l''ostiole, bordée par deux cellules de garde (cellules stomatiques).', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6306051, 630605, 'l''ostiole', TRUE, 1),
  (6306052, 630605, 'le thylakoïde', FALSE, 2),
  (6306053, 630605, 'le stroma', FALSE, 3),
  (6306054, 630605, 'le granum', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (630606, 6306, 'Dans le chloroplaste, la chlorophylle qui capte la lumière est portée par :', 'Le chloroplaste contient un liquide, le stroma, et des sacs aplatis, les thylakoïdes, dont les membranes portent la chlorophylle.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6306061, 630606, 'les membranes des thylakoïdes', TRUE, 1),
  (6306062, 630606, 'le stroma liquide', FALSE, 2),
  (6306063, 630606, 'les cellules de garde', FALSE, 3),
  (6306064, 630606, 'les mitochondries', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (630607, 6306, 'Quand on augmente fortement l''éclairement, l''intensité photosynthétique augmente puis se stabilise. Ce palier traduit le fait que :', 'Au-delà d''un certain éclairement, la lumière n''est plus le facteur limitant : un autre facteur (souvent le $\text{CO}_2$) limite alors la photosynthèse, d''où le palier de saturation.', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6306071, 630607, 'la lumière n''est plus le facteur limitant', TRUE, 1),
  (6306072, 630607, 'la plante a cessé de respirer', FALSE, 2),
  (6306073, 630607, 'la chlorophylle a disparu', FALSE, 3),
  (6306074, 630607, 'la température est devenue nulle', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (630608, 6306, 'L''intensité photosynthétique chute brutalement au-delà d''environ $35\,^{\circ}\text{C}$ car :', 'La photosynthèse dépend d''enzymes ; au-delà de l''optimum ($30$–$35\,^{\circ}\text{C}$), une température trop élevée dénature ces enzymes, ce qui fait chuter l''intensité.', 8);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6306081, 630608, 'les enzymes sont dénaturées par la chaleur excessive', TRUE, 1),
  (6306082, 630608, 'la lumière disparaît à haute température', FALSE, 2),
  (6306083, 630608, 'le $\text{CO}_2$ devient un produit de la réaction', FALSE, 3),
  (6306084, 630608, 'les stomates s''ouvrent davantage', FALSE, 4);

-- photosynthese
SET @l := (SELECT id FROM lecon WHERE slug = 'photosynthese' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'svt-1bac'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (6307, NULL, @l, 'QCM — Photosynthese', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (630701, 6307, 'La photosynthèse se déroule dans :', 'La photosynthèse a lieu dans les chloroplastes des cellules chlorophylliennes des végétaux verts.', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6307011, 630701, 'les chloroplastes', TRUE, 1),
  (6307012, 630701, 'les mitochondries', FALSE, 2),
  (6307013, 630701, 'le noyau', FALSE, 3),
  (6307014, 630701, 'la paroi cellulaire', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (630702, 6307, 'La phase photochimique (phase claire) se déroule :', 'Elle a lieu dans la membrane des thylakoïdes, où se trouve la chlorophylle, et exige la lumière.', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6307021, 630702, 'dans la membrane des thylakoïdes', TRUE, 1),
  (6307022, 630702, 'dans le stroma', FALSE, 2),
  (6307023, 630702, 'dans l''enveloppe du chloroplaste', FALSE, 3),
  (6307024, 630702, 'dans le cytoplasme', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (630703, 6307, 'Le dioxygène $O_2$ dégagé par la photosynthèse provient :', 'Le $O_2$ provient de la photolyse de l''eau : $2\,H_2O \rightarrow O_2 + 4\,H^+ + 4\,e^-$, et non du $CO_2$.', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6307031, 630703, 'de l''eau $H_2O$', TRUE, 1),
  (6307032, 630703, 'du dioxyde de carbone $CO_2$', FALSE, 2),
  (6307033, 630703, 'du glucose $C_6H_{12}O_6$', FALSE, 3),
  (6307034, 630703, 'de l''ATP', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (630704, 6307, 'Le cycle de Calvin (phase non photochimique) se déroule :', 'La fixation du $CO_2$ et la synthèse du glucose ont lieu dans le stroma du chloroplaste.', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6307041, 630704, 'dans le stroma', TRUE, 1),
  (6307042, 630704, 'dans les thylakoïdes', FALSE, 2),
  (6307043, 630704, 'dans la double membrane', FALSE, 3),
  (6307044, 630704, 'dans la vacuole', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (630705, 6307, 'La phase photochimique fournit au cycle de Calvin :', 'L''ATP (énergie) et le transporteur réduit $R''H_2$ (NADPH) produits par la phase claire alimentent la fixation du $CO_2$.', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6307051, 630705, 'de l''ATP et du $R''H_2$', TRUE, 1),
  (6307052, 630705, 'du glucose et du $O_2$', FALSE, 2),
  (6307053, 630705, 'de l''eau et du $CO_2$', FALSE, 3),
  (6307054, 630705, 'de l''amidon et de la cellulose', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (630706, 6307, 'L''équation bilan de la photosynthèse est :', 'Le bilan global est $6\,CO_2 + 6\,H_2O \rightarrow C_6H_{12}O_6 + 6\,O_2$ : la matière minérale devient organique.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6307061, 630706, '$6\,CO_2 + 6\,H_2O \rightarrow C_6H_{12}O_6 + 6\,O_2$', TRUE, 1),
  (6307062, 630706, '$C_6H_{12}O_6 + 6\,O_2 \rightarrow 6\,CO_2 + 6\,H_2O$', FALSE, 2),
  (6307063, 630706, '$6\,CO_2 + 6\,O_2 \rightarrow C_6H_{12}O_6 + 6\,H_2O$', FALSE, 3),
  (6307064, 630706, '$C_6H_{12}O_6 \rightarrow 6\,CO_2 + 6\,H_2O$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (630707, 6307, 'La photosynthèse convertit l''énergie :', 'Elle transforme l''énergie lumineuse en énergie chimique stockée dans l''ATP, le $R''H_2$ puis dans les liaisons du glucose.', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6307071, 630707, 'lumineuse en énergie chimique', TRUE, 1),
  (6307072, 630707, 'chimique en énergie lumineuse', FALSE, 2),
  (6307073, 630707, 'thermique en énergie lumineuse', FALSE, 3),
  (6307074, 630707, 'chimique en énergie mécanique', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (630708, 6307, 'Le glucose produit est notamment mis en réserve sous forme :', 'Le glucose est polymérisé en amidon, glucide de réserve révélé par l''eau iodée (coloration bleu-violet).', 8);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6307081, 630708, 'd''amidon', TRUE, 1),
  (6307082, 630708, 'de dioxygène', FALSE, 2),
  (6307083, 630708, 'de $CO_2$', FALSE, 3),
  (6307084, 630708, 'd''ATP', FALSE, 4);

-- echanges-plantes-sol
SET @l := (SELECT id FROM lecon WHERE slug = 'echanges-plantes-sol' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'svt-1bac'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (6308, NULL, @l, 'QCM — Echanges plantes sol', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (630801, 6308, 'La sève brute est constituée :', 'La sève brute est une solution diluée d''eau et de sels minéraux (ions $NO_3^-$, $K^+$, $Ca^{2+}$\dots) absorbés par les racines. La matière organique caractérise la sève élaborée.', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6308011, 630801, 'd''eau et de sels minéraux', TRUE, 1),
  (6308012, 630801, 'd''eau et de glucides', FALSE, 2),
  (6308013, 630801, 'de matière organique uniquement', FALSE, 3),
  (6308014, 630801, 'd''acides aminés et de saccharose', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (630802, 6308, 'La sève brute circule :', 'La sève brute monte des racines vers les feuilles (sens ascendant) dans les vaisseaux du xylème (bois), constitués de cellules mortes.', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6308021, 630802, 'dans le xylème, des racines vers les feuilles', TRUE, 1),
  (6308022, 630802, 'dans le phloème, des feuilles vers les racines', FALSE, 2),
  (6308023, 630802, 'dans le xylème, des feuilles vers les racines', FALSE, 3),
  (6308024, 630802, 'dans le phloème, des racines vers les feuilles', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (630803, 6308, 'La sève élaborée est riche en :', 'La sève élaborée contient surtout des glucides (saccharose) produits par la photosynthèse ; elle circule dans le phloème.', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6308031, 630803, 'matière organique, surtout des glucides', TRUE, 1),
  (6308032, 630803, 'sels minéraux uniquement', FALSE, 2),
  (6308033, 630803, 'eau pure', FALSE, 3),
  (6308034, 630803, 'dioxyde de carbone dissous', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (630804, 6308, 'L''expérience de l''annélation (retrait d''un anneau d''écorce) prouve que la sève élaborée circule dans :', 'Le bourrelet riche en matière organique se forme au-dessus de l''anneau d''écorce retiré : la sève élaborée circule donc dans le phloème, situé dans l''écorce.', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6308041, 630804, 'le phloème (l''écorce)', TRUE, 1),
  (6308042, 630804, 'le xylème (le bois)', FALSE, 2),
  (6308043, 630804, 'les poils absorbants', FALSE, 3),
  (6308044, 630804, 'les stomates', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (630805, 6308, 'Les stomates sont :', 'Les stomates sont de minuscules ouvertures de l''épiderme des feuilles, délimitées par deux cellules de garde, par lesquelles se font les échanges gazeux et la transpiration.', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6308051, 630805, 'des ouvertures de l''épiderme bordées de deux cellules de garde', TRUE, 1),
  (6308052, 630805, 'des vaisseaux conducteurs de la sève brute', FALSE, 2),
  (6308053, 630805, 'des poils des racines absorbant l''eau', FALSE, 3),
  (6308054, 630805, 'des organes de réserve de l''amidon', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (630806, 6308, 'Le papier au chlorure de cobalt, appliqué sur une feuille, rosit. Il met en évidence :', 'Le chlorure de cobalt, bleu à sec, rosit au contact de l''eau : son rosissement révèle le dégagement de vapeur d''eau, c''est-à-dire la transpiration.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6308061, 630806, 'le dégagement de vapeur d''eau (transpiration)', TRUE, 1),
  (6308062, 630806, 'le rejet de dioxyde de carbone', FALSE, 2),
  (6308063, 630806, 'l''absorption de sels minéraux', FALSE, 3),
  (6308064, 630806, 'la production d''amidon', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (630807, 6308, 'Le rôle principal de la transpiration dans la circulation des sèves est :', 'L''évaporation de l''eau au niveau des feuilles crée une aspiration (force de succion) qui assure la montée de la sève brute dans le xylème.', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6308071, 630807, 'créer une aspiration qui fait monter la sève brute', TRUE, 1),
  (6308072, 630807, 'fabriquer la matière organique des feuilles', FALSE, 2),
  (6308073, 630807, 'transporter la sève élaborée vers les racines', FALSE, 3),
  (6308074, 630807, 'absorber le dioxyde de carbone de l''air', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (630808, 6308, 'Dans le sol, l''humus provient :', 'L''humus est la fraction organique du sol : il résulte de la décomposition des débris d''êtres vivants par les micro-organismes ; sa minéralisation enrichit le sol en sels minéraux.', 8);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6308081, 630808, 'de la décomposition des débris d''êtres vivants par les micro-organismes', TRUE, 1),
  (6308082, 630808, 'de l''altération de la roche mère uniquement', FALSE, 2),
  (6308083, 630808, 'de la transpiration des feuilles', FALSE, 3),
  (6308084, 630808, 'de l''évaporation de l''eau du sol', FALSE, 4);

-- communication-hormonale
SET @l := (SELECT id FROM lecon WHERE slug = 'communication-hormonale' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'svt-1bac'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (6309, NULL, @l, 'QCM — Communication hormonale', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (630901, 6309, 'Une hormone est une substance chimique sécrétée par une glande endocrine et transportée par :', 'Une glande endocrine déverse l''hormone directement dans le sang, qui la transporte jusqu''aux cellules cibles.', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6309011, 630901, 'le sang', TRUE, 1),
  (6309012, 630901, 'un nerf', FALSE, 2),
  (6309013, 630901, 'un canal excréteur', FALSE, 3),
  (6309014, 630901, 'la lymphe uniquement', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (630902, 6309, 'Seules certaines cellules répondent à une hormone donnée : ce sont les cellules cibles. Elles se distinguent par :', 'Une cellule cible possède des récepteurs spécifiques de l''hormone, ce qui lui permet d''y répondre.', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6309021, 630902, 'la présence de récepteurs spécifiques de l''hormone', TRUE, 1),
  (6309022, 630902, 'leur grande taille', FALSE, 2),
  (6309023, 630902, 'leur proximité avec la glande', FALSE, 3),
  (6309024, 630902, 'l''absence de noyau', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (630903, 6309, 'La valeur de référence de la glycémie chez un sujet sain à jeun est voisine de :', 'La glycémie normale à jeun est d''environ $1\ \text{g/L}$ (entre 0,7 et 1,1 g/L).', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6309031, 630903, '$1\ \text{g/L}$', TRUE, 1),
  (6309032, 630903, '$10\ \text{g/L}$', FALSE, 2),
  (6309033, 630903, '$0,1\ \text{g/L}$', FALSE, 3),
  (6309034, 630903, '$5\ \text{g/L}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (630904, 6309, 'Le maintien de la glycémie autour d''une valeur constante malgré les repas et les efforts est un exemple de :', 'L''homéostasie est le maintien de la constance du milieu intérieur, dont la glycémie est un exemple.', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6309041, 630904, 'homéostasie', TRUE, 1),
  (6309042, 630904, 'photosynthèse', FALSE, 2),
  (6309043, 630904, 'diagenèse', FALSE, 3),
  (6309044, 630904, 'glycosurie', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (630905, 6309, 'Dans les îlots de Langerhans du pancréas, les cellules $\beta$ sécrètent :', 'Les cellules $\beta$ sécrètent l''insuline (hypoglycémiante) ; les cellules $\alpha$ sécrètent le glucagon (hyperglycémiant).', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6309051, 630905, 'l''insuline, hormone hypoglycémiante', TRUE, 1),
  (6309052, 630905, 'le glucagon, hormone hyperglycémiante', FALSE, 2),
  (6309053, 630905, 'le glycogène', FALSE, 3),
  (6309054, 630905, 'l''adrénaline', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (630906, 6309, 'En cas d''hyperglycémie, l''insuline agit sur le foie en déclenchant :', 'L''insuline déclenche la glycogénogenèse : le glucose est mis en réserve sous forme de glycogène, ce qui fait baisser la glycémie.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6309061, 630906, 'la glycogénogenèse (stockage du glucose en glycogène)', TRUE, 1),
  (6309062, 630906, 'la glycogénolyse (libération de glucose)', FALSE, 2),
  (6309063, 630906, 'la photosynthèse', FALSE, 3),
  (6309064, 630906, 'la sécrétion de glucagon', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (630907, 6309, 'La régulation de la glycémie repose sur un système de rétroaction négative dans lequel le pancréas joue le rôle de :', 'Le pancréas détecte la glycémie (capteur) et émet les hormones correctrices : il est à la fois capteur et système réglant.', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6309071, 630907, 'capteur et système réglant', TRUE, 1),
  (6309072, 630907, 'effecteur unique', FALSE, 2),
  (6309073, 630907, 'réserve de glycogène', FALSE, 3),
  (6309074, 630907, 'grandeur réglée', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (630908, 6309, 'Dans le diabète de type 1 (insulino-dépendant), l''hyperglycémie chronique est due à :', 'Dans le diabète de type 1, les cellules $\beta$ sont détruites : le pancréas ne produit plus d''insuline, d''où une hyperglycémie traitée par injections d''insuline.', 8);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6309081, 630908, 'l''absence de production d''insuline (destruction des cellules $\beta$)', TRUE, 1),
  (6309082, 630908, 'un excès d''insuline', FALSE, 2),
  (6309083, 630908, 'un excès de glucagon dû au foie', FALSE, 3),
  (6309084, 630908, 'une insulino-résistance des cellules cibles', FALSE, 4);

-- communication-nerveuse
SET @l := (SELECT id FROM lecon WHERE slug = 'communication-nerveuse' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'svt-1bac'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (6310, NULL, @l, 'QCM — Communication nerveuse', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (631001, 6310, 'Le neurone est la cellule de base du système nerveux. Le prolongement qui conduit le message nerveux loin du corps cellulaire est :', 'L''axone conduit le message nerveux à partir du corps cellulaire vers les autres cellules ; les dendrites, elles, reçoivent les messages.', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6310011, 631001, 'l''axone', TRUE, 1),
  (6310012, 631001, 'une dendrite', FALSE, 2),
  (6310013, 631001, 'le noyau', FALSE, 3),
  (6310014, 631001, 'le nœud de Ranvier', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (631002, 6310, 'Au repos, la différence de potentiel entre l''intérieur et l''extérieur de la fibre (potentiel de repos) est voisine de :', 'Le potentiel de repos vaut environ $-70\,\text{mV}$ : la face interne de la membrane est négative par rapport à la face externe ; la membrane est polarisée.', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6310021, 631002, '$-70\,\text{mV}$', TRUE, 1),
  (6310022, 631002, '$+30\,\text{mV}$', FALSE, 2),
  (6310023, 631002, '$0\,\text{mV}$', FALSE, 3),
  (6310024, 631002, '$+70\,\text{mV}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (631003, 6310, 'Lors d''un potentiel d''action, la phase de dépolarisation fait passer le potentiel de membrane de $-70\,\text{mV}$ à environ :', 'Pendant la dépolarisation, le potentiel s''inverse et atteint environ $+30\,\text{mV}$ (la face interne devient positive), avant la repolarisation.', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6310031, 631003, '$+30\,\text{mV}$', TRUE, 1),
  (6310032, 631003, '$-90\,\text{mV}$', FALSE, 2),
  (6310033, 631003, '$0\,\text{mV}$', FALSE, 3),
  (6310034, 631003, '$+100\,\text{mV}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (631004, 6310, 'D''après la loi du tout ou rien, lorsqu''une stimulation dépasse le seuil, l''amplitude du potentiel d''action d''une fibre :', 'Au-dessus du seuil, le potentiel d''action est complet et son amplitude ne dépend pas de l''intensité du stimulus ; en dessous du seuil, aucun potentiel d''action n''apparaît.', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6310041, 631004, 'reste constante, indépendante de l''intensité du stimulus', TRUE, 1),
  (6310042, 631004, 'augmente avec l''intensité du stimulus', FALSE, 2),
  (6310043, 631004, 'diminue quand l''intensité augmente', FALSE, 3),
  (6310044, 631004, 'devient nulle au-delà du seuil', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (631005, 6310, 'Au cours de sa propagation le long de l''axone, l''amplitude du potentiel d''action :', 'Le potentiel d''action se propage de proche en proche, sans diminution d''amplitude : il se régénère tout au long de la fibre.', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6310051, 631005, 'reste constante (pas de diminution)', TRUE, 1),
  (6310052, 631005, 'diminue progressivement', FALSE, 2),
  (6310053, 631005, 'augmente progressivement', FALSE, 3),
  (6310054, 631005, 's''annule à mi-parcours', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (631006, 6310, 'La vitesse de propagation du message nerveux est d''autant plus grande que la fibre est :', 'Une fibre myélinisée conduit l''influx par conduction saltatoire (l''influx saute d''un nœud de Ranvier à l''autre) : la propagation est bien plus rapide ; un grand diamètre l''accélère aussi.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6310061, 631006, 'myélinisée et de grand diamètre', TRUE, 1),
  (6310062, 631006, 'non myélinisée et fine', FALSE, 2),
  (6310063, 631006, 'courte', FALSE, 3),
  (6310064, 631006, 'dépourvue de nœuds de Ranvier', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (631007, 6310, 'Au niveau d''une synapse chimique, la transmission du message d''un neurone à l''autre est assurée par :', 'À l''arrivée du message, les vésicules libèrent un neurotransmetteur (ex. acétylcholine) dans la fente synaptique ; il se fixe sur les récepteurs postsynaptiques et déclenche un nouveau message.', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6310071, 631007, 'un neurotransmetteur (ex. acétylcholine)', TRUE, 1),
  (6310072, 631007, 'un courant électrique qui traverse la fente', FALSE, 2),
  (6310073, 631007, 'le déplacement du noyau', FALSE, 3),
  (6310074, 631007, 'la gaine de myéline', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (631008, 6310, 'Dans un arc réflexe, l''ordre correct du trajet du message nerveux est :', 'Le message suit le trajet : récepteur, puis nerf sensitif (voie afférente), centre nerveux (moelle épinière), nerf moteur (voie efférente), enfin effecteur (muscle).', 8);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6310081, 631008, 'récepteur → nerf sensitif → centre nerveux → nerf moteur → effecteur', TRUE, 1),
  (6310082, 631008, 'effecteur → nerf moteur → centre nerveux → nerf sensitif → récepteur', FALSE, 2),
  (6310083, 631008, 'récepteur → nerf moteur → centre nerveux → nerf sensitif → effecteur', FALSE, 3),
  (6310084, 631008, 'centre nerveux → récepteur → nerf sensitif → effecteur → nerf moteur', FALSE, 4);

-- regulation-reproduction
SET @l := (SELECT id FROM lecon WHERE slug = 'regulation-reproduction' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'svt-1bac'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (6311, NULL, @l, 'QCM — Regulation reproduction', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (631101, 6311, 'Quelle hormone l''hypothalamus libère-t-il pour commander l''hypophyse ?', 'L''hypothalamus libère la GnRH (gonadolibérine), une neurohormone sécrétée de façon pulsatile.', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6311011, 631101, 'La GnRH', TRUE, 1),
  (6311012, 631101, 'La FSH', FALSE, 2),
  (6311013, 631101, 'La testostérone', FALSE, 3),
  (6311014, 631101, 'La progestérone', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (631102, 6311, 'Que sécrète l''hypophyse antérieure sous l''action de la GnRH ?', 'L''hypophyse sécrète deux gonadostimulines : la FSH et la LH.', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6311021, 631102, 'La FSH et la LH', TRUE, 1),
  (6311022, 631102, 'La GnRH et la LH', FALSE, 2),
  (6311023, 631102, 'Les œstrogènes et la progestérone', FALSE, 3),
  (6311024, 631102, 'La testostérone et la FSH', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (631103, 6311, 'Chez l''homme, quelles cellules la LH stimule-t-elle ?', 'La LH stimule les cellules de Leydig, qui sécrètent la testostérone.', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6311031, 631103, 'Les cellules de Leydig', TRUE, 1),
  (6311032, 631103, 'Les cellules de l''endomètre', FALSE, 2),
  (6311033, 631103, 'Les neurones de l''hypothalamus', FALSE, 3),
  (6311034, 631103, 'Les cellules du corps jaune', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (631104, 6311, 'Quel est l''effet d''une augmentation du taux de testostérone sur l''axe hypothalamo-hypophysaire ?', 'À taux élevé, la testostérone freine l''axe : c''est un rétrocontrôle négatif qui fait baisser FSH et LH.', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6311041, 631104, 'Elle freine la sécrétion de FSH et de LH', TRUE, 1),
  (6311042, 631104, 'Elle augmente la sécrétion de FSH et de LH', FALSE, 2),
  (6311043, 631104, 'Elle n''a aucun effet sur l''axe', FALSE, 3),
  (6311044, 631104, 'Elle déclenche un pic de LH', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (631105, 6311, 'Après une castration (ablation des testicules), comment varient les taux de FSH et de LH ?', 'Sans testostérone, le rétrocontrôle négatif est levé : FSH et LH augmentent fortement.', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6311051, 631105, 'Ils augmentent fortement', TRUE, 1),
  (6311052, 631105, 'Ils diminuent fortement', FALSE, 2),
  (6311053, 631105, 'Ils restent inchangés', FALSE, 3),
  (6311054, 631105, 'Ils deviennent nuls', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (631106, 6311, 'Quel événement hormonal déclenche l''ovulation chez la femme ?', 'L''ovulation, vers le 14e jour, est déclenchée par un pic de LH.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6311061, 631106, 'Un pic de LH', TRUE, 1),
  (6311062, 631106, 'Une chute de la progestérone', FALSE, 2),
  (6311063, 631106, 'Un pic de progestérone', FALSE, 3),
  (6311064, 631106, 'Une chute de la FSH', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (631107, 6311, 'Juste avant l''ovulation, le fort taux d''œstrogènes exerce sur l''hypophyse un rétrocontrôle :', 'À fort taux, les œstrogènes stimulent l''hypophyse : c''est un rétrocontrôle positif, responsable du pic de LH.', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6311071, 631107, 'positif', TRUE, 1),
  (6311072, 631107, 'négatif', FALSE, 2),
  (6311073, 631107, 'nul', FALSE, 3),
  (6311074, 631107, 'nerveux', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (631108, 6311, 'Quelle hormone le corps jaune sécrète-t-il principalement pendant la phase lutéale ?', 'Après l''ovulation, le corps jaune sécrète surtout la progestérone, qui prépare l''endomètre à la nidation.', 8);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6311081, 631108, 'La progestérone', TRUE, 1),
  (6311082, 631108, 'La testostérone', FALSE, 2),
  (6311083, 631108, 'La FSH', FALSE, 3),
  (6311084, 631108, 'La GnRH', FALSE, 4);

-- regulation-pression-arterielle
SET @l := (SELECT id FROM lecon WHERE slug = 'regulation-pression-arterielle' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'svt-1bac'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (6312, NULL, @l, 'QCM — Regulation pression arterielle', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (631201, 6312, 'La pression artérielle correspond à :', 'La pression artérielle est la force exercée par le sang sur la paroi des artères. Elle dépend du débit cardiaque, du diamètre des vaisseaux et du volume sanguin.', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6312011, 631201, 'la force exercée par le sang sur la paroi des artères', TRUE, 1),
  (6312012, 631201, 'la quantité de globules rouges dans le sang', FALSE, 2),
  (6312013, 631201, 'la vitesse de circulation du sang dans les veines', FALSE, 3),
  (6312014, 631201, 'la température du sang dans le cœur', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (631202, 6312, 'La pression systolique est la pression mesurée pendant :', 'La pression systolique (maximale, environ 12 cmHg) correspond à la contraction du ventricule (systole) ; la pression diastolique (environ 8 cmHg) correspond à son relâchement.', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6312021, 631202, 'la contraction (systole) du ventricule', TRUE, 1),
  (6312022, 631202, 'le relâchement (diastole) du ventricule', FALSE, 2),
  (6312023, 631202, 'le remplissage des oreillettes', FALSE, 3),
  (6312024, 631202, 'l''arrêt complet du cœur', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (631203, 6312, 'Les barorécepteurs sont des capteurs :', 'Les barorécepteurs, situés dans la crosse de l''aorte et les sinus carotidiens, sont sensibles à l''étirement de la paroi : plus la pression est élevée, plus ils émettent de messages nerveux.', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6312031, 631203, 'sensibles à l''étirement de la paroi des artères', TRUE, 1),
  (6312032, 631203, 'sensibles à la température du sang', FALSE, 2),
  (6312033, 631203, 'sensibles au taux de glucose sanguin', FALSE, 3),
  (6312034, 631203, 'sensibles à la lumière', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (631204, 6312, 'Le centre nerveux qui intègre les informations des barorécepteurs et commande la réponse est :', 'Le bulbe rachidien, dans le tronc cérébral, compare l''information reçue à une valeur de consigne et élabore la réponse transmise par les nerfs sympathique et parasympathique.', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6312041, 631204, 'le bulbe rachidien', TRUE, 1),
  (6312042, 631204, 'le cervelet', FALSE, 2),
  (6312043, 631204, 'la moelle épinière lombaire', FALSE, 3),
  (6312044, 631204, 'l''hypophyse', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (631205, 6312, 'Lorsque la pression artérielle augmente, le bulbe rachidien réagit en :', 'Une hausse de pression stimule fortement les barorécepteurs : le bulbe active le parasympathique (et freine le sympathique), ce qui ralentit le cœur et dilate les vaisseaux ; la pression baisse.', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6312051, 631205, 'activant le parasympathique : le cœur ralentit et les vaisseaux se dilatent', TRUE, 1),
  (6312052, 631205, 'activant le sympathique : le cœur accélère et les vaisseaux se resserrent', FALSE, 2),
  (6312053, 631205, 'arrêtant toute commande nerveuse du cœur', FALSE, 3),
  (6312054, 631205, 'augmentant la production de globules rouges', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (631206, 6312, 'Le nerf sympathique (orthosympathique) a pour effet de :', 'Le sympathique accélère le cœur et resserre les vaisseaux (vasoconstriction), ce qui élève la pression. Il est antagoniste du parasympathique (nerf X), qui ralentit le cœur.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6312061, 631206, 'accélérer le cœur et resserrer les vaisseaux', TRUE, 1),
  (6312062, 631206, 'ralentir le cœur et dilater les vaisseaux', FALSE, 2),
  (6312063, 631206, 'arrêter le cœur en cas d''effort', FALSE, 3),
  (6312064, 631206, 'agir uniquement sur les reins', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (631207, 6312, 'Lorsque la pression artérielle baisse, le système rénine-angiotensine-aldostérone provoque :', 'La baisse de pression déclenche la libération de rénine, puis la formation d''angiotensine (vasoconstriction) et d''aldostérone (réabsorption de sodium et d''eau) : le volume sanguin et la pression augmentent.', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6312071, 631207, 'une vasoconstriction et une rétention d''eau et de sodium ($\text{Na}^+$)', TRUE, 1),
  (6312072, 631207, 'une vasodilatation et une élimination d''eau et de sel', FALSE, 2),
  (6312073, 631207, 'un arrêt de la production d''urine définitif', FALSE, 3),
  (6312074, 631207, 'une baisse du volume sanguin', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (631208, 6312, 'L''hypertension artérielle est favorisée notamment par :', 'Une alimentation trop riche en sel retient l''eau et augmente le volume sanguin, donc la pression. Le surpoids, la sédentarité, le stress et le tabac sont d''autres facteurs de risque.', 8);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6312081, 631208, 'une alimentation trop riche en sel', TRUE, 1),
  (6312082, 631208, 'une activité physique régulière', FALSE, 2),
  (6312083, 631208, 'une alimentation pauvre en sel', FALSE, 3),
  (6312084, 631208, 'une bonne hydratation à l''eau', FALSE, 4);

