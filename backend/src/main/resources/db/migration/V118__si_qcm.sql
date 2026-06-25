-- Sciences de l'Ingenieur : QCM des 10 chapitres (quiz 2901-2910).
SET SESSION sql_mode = CONCAT(@@sql_mode, ',NO_BACKSLASH_ESCAPES');

-- analyse-fonctionnelle
SET @l := (SELECT id FROM lecon WHERE slug = 'analyse-fonctionnelle' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'sciences-ingenieur'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (2901, NULL, @l, 'QCM — Analyse fonctionnelle du besoin', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (290101, 2901, 'Quel outil de l''analyse fonctionnelle sert à valider l''expression du besoin ?', 'La « bête à cornes » répond aux trois questions : à qui le produit rend-il service, sur quoi agit-il, dans quel but. Elle valide le besoin.', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (2901011, 290101, 'La bête à cornes', TRUE, 1),
  (2901012, 290101, 'Le diagramme pieuvre', FALSE, 2),
  (2901013, 290101, 'Le cahier des charges fonctionnel', FALSE, 3),
  (2901014, 290101, 'Le graphe de Gantt', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (290102, 2901, 'Parmi ces questions, laquelle ne fait PAS partie de la bête à cornes ?', 'La bête à cornes pose : À qui rend service ? Sur quoi agit ? Dans quel but ? La question du coût n''en fait pas partie.', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (2901021, 290102, 'Combien le produit coûte-t-il ?', TRUE, 1),
  (2901022, 290102, 'À qui le produit rend-il service ?', FALSE, 2),
  (2901023, 290102, 'Sur quoi le produit agit-il ?', FALSE, 3),
  (2901024, 290102, 'Dans quel but le produit existe-t-il ?', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (290103, 2901, 'Le diagramme pieuvre sert principalement à :', 'Le diagramme pieuvre place le produit au centre, entouré des éléments du milieu extérieur, et identifie les fonctions de service (FP et FC).', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (2901031, 290103, 'Identifier les fonctions de service du produit', TRUE, 1),
  (2901032, 290103, 'Choisir le matériau du produit', FALSE, 2),
  (2901033, 290103, 'Calculer le prix de vente', FALSE, 3),
  (2901034, 290103, 'Dessiner le plan d''assemblage', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (290104, 2901, 'Une fonction qui relie le produit à un seul élément du milieu extérieur est :', 'Une fonction contrainte (FC) relie le produit à un seul EME. Une fonction principale (FP) en relie deux à travers le produit.', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (2901041, 290104, 'Une fonction contrainte (FC)', TRUE, 1),
  (2901042, 290104, 'Une fonction principale (FP)', FALSE, 2),
  (2901043, 290104, 'Une solution technique', FALSE, 3),
  (2901044, 290104, 'Un critère d''appréciation', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (290105, 2901, 'Une fonction principale (FP) d''un produit :', 'La FP exprime la raison d''être du produit : elle met en relation deux éléments du milieu extérieur à travers le produit.', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (2901051, 290105, 'Relie deux éléments du milieu extérieur à travers le produit', TRUE, 1),
  (2901052, 290105, 'Relie le produit à un seul élément extérieur', FALSE, 2),
  (2901053, 290105, 'Impose la technologie à utiliser', FALSE, 3),
  (2901054, 290105, 'Fixe le délai de fabrication', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (290106, 2901, 'On caractérise une fonction par : « temps de séchage : 12 s, à $\pm 2$ s ». La valeur 12 s est :', 'Le niveau est la valeur visée du critère (12 s). Le critère est le temps de séchage ; la flexibilité est $\pm 2$ s.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (2901061, 290106, 'Le niveau', TRUE, 1),
  (2901062, 290106, 'Le critère', FALSE, 2),
  (2901063, 290106, 'La flexibilité', FALSE, 3),
  (2901064, 290106, 'La fonction principale', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (290107, 2901, 'Dans une caractérisation de fonction, la flexibilité représente :', 'La flexibilité est la marge de tolérance acceptée autour du niveau, par exemple $\pm 2$ s ou « max 35 dB ».', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (2901071, 290107, 'La marge de tolérance acceptée autour du niveau', TRUE, 1),
  (2901072, 290107, 'La grandeur qui permet d''apprécier la fonction', FALSE, 2),
  (2901073, 290107, 'La valeur exacte et unique à atteindre', FALSE, 3),
  (2901074, 290107, 'Le coût de fabrication du produit', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (290108, 2901, 'Le cahier des charges fonctionnel (CdCF) :', 'Le CdCF rassemble les fonctions avec leurs critères, niveaux et flexibilités. Il dit ce que le produit doit faire, sans imposer de solution technique.', 8);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (2901081, 290108, 'Décrit ce que le produit doit faire sans imposer de solution technique', TRUE, 1),
  (2901082, 290108, 'Impose les solutions techniques au concepteur', FALSE, 2),
  (2901083, 290108, 'Donne uniquement le plan de fabrication détaillé', FALSE, 3),
  (2901084, 290108, 'Concerne seulement le prix de vente du produit', FALSE, 4);

-- outils-description
SET @l := (SELECT id FROM lecon WHERE slug = 'outils-description' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'sciences-ingenieur'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (2902, NULL, @l, 'QCM — Outils de description (FAST, SADT)', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (290201, 2902, 'Que signifie le sigle FAST ?', 'FAST signifie Function Analysis System Technique : c''est un outil qui relie les fonctions aux solutions techniques.', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (2902011, 290201, 'Function Analysis System Technique', TRUE, 1),
  (2902012, 290201, 'Fast Action System Test', FALSE, 2),
  (2902013, 290201, 'Functional And Structural Tree', FALSE, 3),
  (2902014, 290201, 'Flux Acquisition System Technique', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (290202, 2902, 'Dans un diagramme FAST, pour savoir COMMENT une fonction est réalisée, on lit :', 'Le FAST se lit de gauche à droite : la question « comment ? » déploie vers la droite les fonctions techniques et solutions de niveau inférieur.', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (2902021, 290202, 'vers la droite', TRUE, 1),
  (2902022, 290202, 'vers la gauche', FALSE, 2),
  (2902023, 290202, 'vers le haut', FALSE, 3),
  (2902024, 290202, 'vers le bas', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (290203, 2902, 'Dans un diagramme FAST, la question « pourquoi ? » se lit :', '« Pourquoi cette fonction existe-t-elle ? » se lit vers la gauche, où se trouve la fonction de niveau supérieur.', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (2902031, 290203, 'vers la gauche', TRUE, 1),
  (2902032, 290203, 'vers la droite', FALSE, 2),
  (2902033, 290203, 'vers le bas', FALSE, 3),
  (2902034, 290203, 'de façon simultanée', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (290204, 2902, 'Dans un actigramme SADT, les données de contrôle entrent par :', 'Les contrôles (consignes, ordres, configuration) entrent par le haut de la boîte : ils pilotent la fonction sans être transformés.', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (2902041, 290204, 'le haut', TRUE, 1),
  (2902042, 290204, 'le bas', FALSE, 2),
  (2902043, 290204, 'la gauche', FALSE, 3),
  (2902044, 290204, 'la droite', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (290205, 2902, 'Dans un actigramme SADT, les mécanismes (les moyens) entrent par :', 'Les mécanismes (pièces, énergie, opérateur) entrent par le bas : ce sont les supports matériels qui réalisent la fonction.', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (2902051, 290205, 'le bas', TRUE, 1),
  (2902052, 290205, 'le haut', FALSE, 2),
  (2902053, 290205, 'la gauche', FALSE, 3),
  (2902054, 290205, 'la droite', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (290206, 2902, 'Quelle est la principale différence entre une entrée et un contrôle dans un actigramme ?', 'Une entrée est consommée ou transformée par la fonction, alors qu''un contrôle pilote la fonction sans être modifié.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (2902061, 290206, 'L''entrée est transformée par la fonction, le contrôle pilote sans être transformé', TRUE, 1),
  (2902062, 290206, 'L''entrée pilote la fonction, le contrôle est transformé', FALSE, 2),
  (2902063, 290206, 'L''entrée arrive par le haut, le contrôle par la gauche', FALSE, 3),
  (2902064, 290206, 'Il n''y a aucune différence, ce sont deux noms du même flux', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (290207, 2902, 'Comment nomme-t-on la fonction d''un actigramme SADT ?', 'La fonction d''un actigramme se nomme par un verbe à l''infinitif (transformer, déplacer, chauffer...), car elle décrit une action.', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (2902071, 290207, 'Par un verbe à l''infinitif', TRUE, 1),
  (2902072, 290207, 'Par un nom commun', FALSE, 2),
  (2902073, 290207, 'Par un adjectif', FALSE, 3),
  (2902074, 290207, 'Par un nombre', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (290208, 2902, 'Dans un schéma-blocs fonctionnel, que représente une flèche entre deux blocs ?', 'Une flèche indique le sens de circulation d''un flux (matière, énergie ou information) d''un bloc à l''autre.', 8);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (2902081, 290208, 'Le sens de circulation d''un flux entre les blocs', TRUE, 1),
  (2902082, 290208, 'Le matériau d''un composant', FALSE, 2),
  (2902083, 290208, 'Le coût d''une fonction', FALSE, 3),
  (2902084, 290208, 'L''ordre chronologique de fabrication', FALSE, 4);

-- chaine-energie-information
SET @l := (SELECT id FROM lecon WHERE slug = 'chaine-energie-information' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'sciences-ingenieur'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (2903, NULL, @l, 'QCM — Chaine d''energie et d''information', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (290301, 2903, 'Dans un système automatisé, sur quoi agissent conjointement la chaîne d''énergie et la chaîne d''information ?', 'Le système reçoit une matière d''œuvre dans un état initial et la restitue dans un état final modifié, en lui apportant une valeur ajoutée.', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (2903011, 290301, 'La matière d''œuvre', TRUE, 1),
  (2903012, 290301, 'Le réseau électrique', FALSE, 2),
  (2903013, 290301, 'L''opérateur humain', FALSE, 3),
  (2903014, 290301, 'Le programme de l''automate', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (290302, 2903, 'Quel est l''ordre correct des cinq fonctions de la chaîne d''énergie ?', 'La chaîne d''énergie suit la succession ALIMENTER, DISTRIBUER, CONVERTIR, TRANSMETTRE, AGIR.', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (2903021, 290302, 'ALIMENTER, DISTRIBUER, CONVERTIR, TRANSMETTRE, AGIR', TRUE, 1),
  (2903022, 290302, 'ALIMENTER, CONVERTIR, DISTRIBUER, AGIR, TRANSMETTRE', FALSE, 2),
  (2903023, 290302, 'ACQUERIR, TRAITER, CONVERTIR, TRANSMETTRE, AGIR', FALSE, 3),
  (2903024, 290302, 'DISTRIBUER, ALIMENTER, TRANSMETTRE, CONVERTIR, AGIR', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (290303, 2903, 'Quelles sont les trois fonctions de la chaîne d''information ?', 'La chaîne d''information acquiert les informations, les traite selon un programme, puis communique les résultats.', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (2903031, 290303, 'ACQUERIR, TRAITER, COMMUNIQUER', TRUE, 1),
  (2903032, 290303, 'ALIMENTER, DISTRIBUER, CONVERTIR', FALSE, 2),
  (2903033, 290303, 'CAPTER, CALCULER, AFFICHER', FALSE, 3),
  (2903034, 290303, 'ACQUERIR, CONVERTIR, AGIR', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (290304, 2903, 'Un moteur électrique réalise dans la chaîne d''énergie la fonction :', 'Le moteur transforme l''énergie électrique en énergie mécanique : c''est un actionneur qui assure CONVERTIR.', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (2903041, 290304, 'CONVERTIR', TRUE, 1),
  (2903042, 290304, 'DISTRIBUER', FALSE, 2),
  (2903043, 290304, 'ALIMENTER', FALSE, 3),
  (2903044, 290304, 'TRANSMETTRE', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (290305, 2903, 'Quel constituant assure typiquement la fonction DISTRIBUER ?', 'Le préactionneur (relais, contacteur, distributeur pneumatique) autorise ou interrompt le passage de l''énergie vers l''actionneur.', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (2903051, 290305, 'Un préactionneur (relais, contacteur, distributeur)', TRUE, 1),
  (2903052, 290305, 'Un actionneur (moteur, vérin)', FALSE, 2),
  (2903053, 290305, 'Un capteur de position', FALSE, 3),
  (2903054, 290305, 'Un réducteur à engrenages', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (290306, 2903, 'Comment nomme-t-on l''information envoyée par la chaîne d''information vers la chaîne d''énergie ?', 'La chaîne d''information envoie des ordres, dirigés principalement vers la fonction DISTRIBUER, pour déclencher ou arrêter l''action.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (2903061, 290306, 'Des ordres', TRUE, 1),
  (2903062, 290306, 'Des comptes rendus', FALSE, 2),
  (2903063, 290306, 'Un flux d''énergie', FALSE, 3),
  (2903064, 290306, 'La matière d''œuvre', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (290307, 2903, 'Les comptes rendus reçus par la chaîne d''information proviennent principalement :', 'Les comptes rendus sont les informations prélevées par les capteurs sur l''état réel des actionneurs et de la matière d''œuvre (fonction ACQUERIR).', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (2903071, 290307, 'Des capteurs de la chaîne d''énergie', TRUE, 1),
  (2903072, 290307, 'De la source d''énergie', FALSE, 2),
  (2903073, 290307, 'Du préactionneur uniquement', FALSE, 3),
  (2903074, 290307, 'De l''afficheur de la chaîne d''information', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (290308, 2903, 'Un réducteur à engrenages placé entre le moteur et l''effecteur assure la fonction :', 'Le réducteur adapte vitesse et effort de l''énergie mécanique avant l''effecteur : c''est un transmetteur qui réalise TRANSMETTRE.', 8);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (2903081, 290308, 'TRANSMETTRE', TRUE, 1),
  (2903082, 290308, 'CONVERTIR', FALSE, 2),
  (2903083, 290308, 'AGIR', FALSE, 3),
  (2903084, 290308, 'ACQUERIR', FALSE, 4);

-- alimenter-distribuer
SET @l := (SELECT id FROM lecon WHERE slug = 'alimenter-distribuer' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'sciences-ingenieur'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (2904, NULL, @l, 'QCM — Alimenter et distribuer l''energie', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (290401, 2904, 'Quel appareil sert uniquement à isoler un circuit pour intervenir, et se manœuvre hors charge ?', 'Le sectionneur assure une coupure visible et verrouillable, sans pouvoir de coupure : il se manœuvre hors charge.', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (2904011, 290401, 'Le sectionneur', TRUE, 1),
  (2904012, 290401, 'Le fusible', FALSE, 2),
  (2904013, 290401, 'Le disjoncteur', FALSE, 3),
  (2904014, 290401, 'Le contacteur', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (290402, 2904, 'Quel organe de protection est à usage unique et doit être remplacé après avoir fondu ?', 'Le filament du fusible fond au-delà du courant nominal et ouvre définitivement le circuit : il faut le remplacer.', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (2904021, 290402, 'Le fusible', TRUE, 1),
  (2904022, 290402, 'Le disjoncteur', FALSE, 2),
  (2904023, 290402, 'Le sectionneur', FALSE, 3),
  (2904024, 290402, 'Le relais', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (290403, 2904, 'Dans un disjoncteur, quel déclencheur protège contre les courts-circuits de façon quasi instantanée ?', 'Le déclencheur magnétique (bobine) agit quasi instantanément contre les courts-circuits ; le thermique gère les surcharges lentes.', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (2904031, 290403, 'Le déclencheur magnétique', TRUE, 1),
  (2904032, 290403, 'Le déclencheur thermique', FALSE, 2),
  (2904033, 290403, 'Le bilame', FALSE, 3),
  (2904034, 290403, 'Le ressort de rappel', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (290404, 2904, 'Que vaut la tension moyenne $U_{\text{moy}}$ délivrée par un hacheur sous $U_{\text{alim}} = 24\ \text{V}$ pour un rapport cyclique $\alpha = 0{,}5$ ?', '$U_{\text{moy}} = \alpha\, U_{\text{alim}} = 0{,}5 \times 24 = 12\ \text{V}$.', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (2904041, 290404, '$12\ \text{V}$', TRUE, 1),
  (2904042, 290404, '$24\ \text{V}$', FALSE, 2),
  (2904043, 290404, '$48\ \text{V}$', FALSE, 3),
  (2904044, 290404, '$6\ \text{V}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (290405, 2904, 'Quel distributeur commande un vérin double effet ?', 'Le distributeur 5/2 (pression $P$, utilisations $A$ et $B$, échappements $R$ et $S$) pilote les deux sens d''un vérin double effet.', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (2904051, 290405, 'Un distributeur $5/2$', TRUE, 1),
  (2904052, 290405, 'Un distributeur $3/2$', FALSE, 2),
  (2904053, 290405, 'Un distributeur $2/2$', FALSE, 3),
  (2904054, 290405, 'Un distributeur $1/1$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (290406, 2904, 'Un distributeur qui mémorise sa dernière position, sans rappel par ressort, est dit :', 'Un distributeur bistable possède deux positions stables et conserve sa position après disparition de l''ordre.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (2904061, 290406, 'Bistable', TRUE, 1),
  (2904062, 290406, 'Monostable', FALSE, 2),
  (2904063, 290406, 'Proportionnel', FALSE, 3),
  (2904064, 290406, 'Normalement ouvert', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (290407, 2904, 'Quel pré-actionneur permet de commander un moteur de forte puissance en tout ou rien à partir d''un faible signal ?', 'Le contacteur est un gros relais à électroaimant : un faible courant de bobine ferme des contacts de puissance robustes, avec isolement galvanique.', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (2904071, 290407, 'Le contacteur', TRUE, 1),
  (2904072, 290407, 'Le distributeur $3/2$', FALSE, 2),
  (2904073, 290407, 'Le sectionneur', FALSE, 3),
  (2904074, 290407, 'Le fusible', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (290408, 2904, 'Dans un pont en H, que permet de choisir la fermeture d''une paire d''interrupteurs en diagonale ?', 'Fermer une diagonale fixe le sens du courant dans le moteur, donc son sens de rotation ; le rapport cyclique règle la vitesse.', 8);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (2904081, 290408, 'Le sens de rotation du moteur', TRUE, 1),
  (2904082, 290408, 'La nature de l''énergie d''entrée', FALSE, 2),
  (2904083, 290408, 'La valeur de la fréquence du réseau', FALSE, 3),
  (2904084, 290408, 'Le calibre du fusible', FALSE, 4);

-- convertir
SET @l := (SELECT id FROM lecon WHERE slug = 'convertir' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'sciences-ingenieur'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (2905, NULL, @l, 'QCM — Convertir l''energie', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (290501, 2905, 'Quelle fonction de la chaîne d''énergie un actionneur assure-t-il ?', 'L''actionneur réalise la fonction CONVERTIR : il transforme l''énergie reçue (souvent électrique ou pneumatique) en énergie utile, le plus souvent mécanique.', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (2905011, 290501, 'CONVERTIR', TRUE, 1),
  (2905012, 290501, 'DISTRIBUER', FALSE, 2),
  (2905013, 290501, 'ALIMENTER', FALSE, 3),
  (2905014, 290501, 'ACQUÉRIR', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (290502, 2905, 'Quelle énergie de sortie fournit un moteur électrique ?', 'Un moteur convertit l''énergie électrique en énergie mécanique de rotation (couple et vitesse).', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (2905021, 290502, 'Mécanique (rotation)', TRUE, 1),
  (2905022, 290502, 'Électrique', FALSE, 2),
  (2905023, 290502, 'Pneumatique', FALSE, 3),
  (2905024, 290502, 'Chimique', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (290503, 2905, 'La puissance mécanique d''un moteur tournant est donnée par :', 'La puissance mécanique est le produit du couple par la vitesse angulaire : $P = C \times \Omega$, avec $P$ en W, $C$ en N$\cdot$m et $\Omega$ en rad/s.', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (2905031, 290503, '$P = C \times \Omega$', TRUE, 1),
  (2905032, 290503, '$P = \dfrac{C}{\Omega}$', FALSE, 2),
  (2905033, 290503, '$P = C + \Omega$', FALSE, 3),
  (2905034, 290503, '$P = \dfrac{\Omega}{C}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (290504, 2905, 'Un moteur tourne à $\Omega = 100\ \text{rad/s}$ avec un couple $C = 0{,}5\ \text{N}\cdot\text{m}$. Quelle est sa puissance mécanique ?', '$P = C \times \Omega = 0{,}5 \times 100 = 50\ \text{W}$.', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (2905041, 290504, '$50\ \text{W}$', TRUE, 1),
  (2905042, 290504, '$200\ \text{W}$', FALSE, 2),
  (2905043, 290504, '$0{,}5\ \text{W}$', FALSE, 3),
  (2905044, 290504, '$100{,}5\ \text{W}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (290505, 2905, 'Pour un moteur asynchrone, la vitesse de synchronisme s''écrit (avec $f$ la fréquence et $p$ le nombre de paires de pôles) :', 'La vitesse de synchronisme est $n_s = \dfrac{f}{p}$ (en tr/s) : elle augmente avec la fréquence et diminue avec le nombre de paires de pôles.', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (2905051, 290505, '$n_s = \dfrac{f}{p}$', TRUE, 1),
  (2905052, 290505, '$n_s = f \times p$', FALSE, 2),
  (2905053, 290505, '$n_s = \dfrac{p}{f}$', FALSE, 3),
  (2905054, 290505, '$n_s = f + p$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (290506, 2905, 'Sur le réseau $f = 50\ \text{Hz}$, un moteur asynchrone à $p = 2$ paires de pôles a une vitesse de synchronisme de :', '$n_s = \dfrac{f}{p} = \dfrac{50}{2} = 25\ \text{tr/s} = 1500\ \text{tr/min}$.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (2905061, 290506, '$1500\ \text{tr/min}$', TRUE, 1),
  (2905062, 290506, '$3000\ \text{tr/min}$', FALSE, 2),
  (2905063, 290506, '$750\ \text{tr/min}$', FALSE, 3),
  (2905064, 290506, '$100\ \text{tr/min}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (290507, 2905, 'L''effort développé par un vérin pneumatique de section $S$ alimenté à la pression $p$ vaut :', 'L''effort est $F = p \times S$, avec $F$ en N, $p$ en Pa et $S$ en m$^2$ ; la section vaut $S = \dfrac{\pi D^2}{4}$.', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (2905071, 290507, '$F = p \times S$', TRUE, 1),
  (2905072, 290507, '$F = \dfrac{p}{S}$', FALSE, 2),
  (2905073, 290507, '$F = \dfrac{S}{p}$', FALSE, 3),
  (2905074, 290507, '$F = p + S$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (290508, 2905, 'Un vérin de section $S = 8 \times 10^{-4}\ \text{m}^2$ est alimenté à $p = 5 \times 10^{5}\ \text{Pa}$. Quel effort développe-t-il ?', '$F = p \times S = 5 \times 10^{5} \times 8 \times 10^{-4} = 400\ \text{N}$.', 8);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (2905081, 290508, '$400\ \text{N}$', TRUE, 1),
  (2905082, 290508, '$40\ \text{N}$', FALSE, 2),
  (2905083, 290508, '$4000\ \text{N}$', FALSE, 3),
  (2905084, 290508, '$625\ \text{N}$', FALSE, 4);

-- transmettre
SET @l := (SELECT id FROM lecon WHERE slug = 'transmettre' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'sciences-ingenieur'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (2906, NULL, @l, 'QCM — Transmettre l''energie', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (290601, 2906, 'Comment définit-on le rapport de transmission $r$ d''un transmetteur sans transformation de mouvement ?', 'Par définition, $r = \dfrac{\omega_s}{\omega_e}$ : c''est le quotient de la vitesse angulaire de sortie par celle d''entrée.', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (2906011, 290601, '$r = \dfrac{\omega_s}{\omega_e}$', TRUE, 1),
  (2906012, 290601, '$r = \dfrac{\omega_e}{\omega_s}$', FALSE, 2),
  (2906013, 290601, '$r = \omega_s \times \omega_e$', FALSE, 3),
  (2906014, 290601, '$r = \omega_s - \omega_e$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (290602, 2906, 'Un engrenage simple a une roue menante de $Z_1 = 20$ dents et une roue menée de $Z_2 = 80$ dents. Que vaut le rapport de transmission $r$ ?', '$r = \dfrac{Z_1}{Z_2} = \dfrac{20}{80} = \dfrac{1}{4} = 0{,}25$.', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (2906021, 290602, '$0{,}25$', TRUE, 1),
  (2906022, 290602, '$4$', FALSE, 2),
  (2906023, 290602, '$1{,}25$', FALSE, 3),
  (2906024, 290602, '$0{,}80$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (290603, 2906, 'Pour un engrenage, lorsque $r < 1$, le transmetteur est :', 'Si $r < 1$, la vitesse de sortie est plus faible que la vitesse d''entrée : c''est un réducteur, qui augmente le couple.', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (2906031, 290603, 'un réducteur', TRUE, 1),
  (2906032, 290603, 'un multiplicateur', FALSE, 2),
  (2906033, 290603, 'un accouplement ($r = 1$)', FALSE, 3),
  (2906034, 290603, 'un transformateur de mouvement', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (290604, 2906, 'Quelle est l''expression du rapport de transmission d''un système poulies-courroie de diamètres $D_1$ (menante) et $D_2$ (menée) ?', 'La courroie défile à la même vitesse sur les deux poulies, d''où $D_1\,\omega_1 = D_2\,\omega_2$ et $r = \dfrac{D_1}{D_2}$.', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (2906041, 290604, '$r = \dfrac{D_1}{D_2}$', TRUE, 1),
  (2906042, 290604, '$r = \dfrac{D_2}{D_1}$', FALSE, 2),
  (2906043, 290604, '$r = D_1 \times D_2$', FALSE, 3),
  (2906044, 290604, '$r = \dfrac{D_1 + D_2}{2}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (290605, 2906, 'Un train d''engrenages a deux étages de rapports $r_1 = \dfrac{1}{3}$ et $r_2 = \dfrac{1}{5}$. Que vaut le rapport global $r$ ?', 'Le rapport global est le produit des rapports élémentaires : $r = r_1 \times r_2 = \dfrac{1}{3} \times \dfrac{1}{5} = \dfrac{1}{15}$.', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (2906051, 290605, '$\dfrac{1}{15}$', TRUE, 1),
  (2906052, 290605, '$\dfrac{2}{8}$', FALSE, 2),
  (2906053, 290605, '$\dfrac{1}{8}$', FALSE, 3),
  (2906054, 290605, '$15$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (290606, 2906, 'Dans un système vis-écrou de pas $p$, de combien l''écrou avance-t-il quand la vis fait $N$ tours ?', 'À chaque tour, l''écrou avance d''un pas $p$ ; pour $N$ tours, le déplacement vaut $x = N \times p$.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (2906061, 290606, '$x = N\,p$', TRUE, 1),
  (2906062, 290606, '$x = \dfrac{N}{p}$', FALSE, 2),
  (2906063, 290606, '$x = \dfrac{p}{N}$', FALSE, 3),
  (2906064, 290606, '$x = 2\pi N p$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (290607, 2906, 'Une vis de pas $p = 3\ \text{mm}$ effectue $10$ tours. De combien avance l''écrou ?', '$x = N \times p = 10 \times 3 = 30\ \text{mm}$.', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (2906071, 290607, '$30\ \text{mm}$', TRUE, 1),
  (2906072, 290607, '$13\ \text{mm}$', FALSE, 2),
  (2906073, 290607, '$3{,}3\ \text{mm}$', FALSE, 3),
  (2906074, 290607, '$300\ \text{mm}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (290608, 2906, 'Quel système transforme une rotation continue en un mouvement de translation alternatif (moteur thermique) ?', 'Le système bielle-manivelle transforme la rotation de la manivelle en translation alternative du piston ; la course vaut $2R$.', 8);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (2906081, 290608, 'Le système bielle-manivelle', TRUE, 1),
  (2906082, 290608, 'Le système poulies-courroie', FALSE, 2),
  (2906083, 290608, 'Le train d''engrenages', FALSE, 3),
  (2906084, 290608, 'Le système pignon-chaîne', FALSE, 4);

-- acquerir
SET @l := (SELECT id FROM lecon WHERE slug = 'acquerir' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'sciences-ingenieur'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (2907, NULL, @l, 'QCM — Acquerir l''information (capteurs)', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (290701, 2907, 'Quelle fonction un capteur réalise-t-il dans un système automatisé ?', 'Le capteur réalise la fonction ACQUÉRIR : il prélève une information et la traduit en signal.', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (2907011, 290701, 'ACQUÉRIR', TRUE, 1),
  (2907012, 290701, 'TRAITER', FALSE, 2),
  (2907013, 290701, 'AGIR', FALSE, 3),
  (2907014, 290701, 'ALIMENTER', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (290702, 2907, 'Un signal qui ne possède que deux états (0 ou 1) est dit :', 'Deux états oui/non : c''est un signal logique, dit Tout Ou Rien (TOR).', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (2907021, 290702, 'logique (TOR)', TRUE, 1),
  (2907022, 290702, 'analogique', FALSE, 2),
  (2907023, 290702, 'numérique', FALSE, 3),
  (2907024, 290702, 'continu', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (290703, 2907, 'Un signal qui varie de façon continue et peut prendre une infinité de valeurs est :', 'Une variation continue avec une infinité de valeurs caractérise un signal analogique.', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (2907031, 290703, 'analogique', TRUE, 1),
  (2907032, 290703, 'logique (TOR)', FALSE, 2),
  (2907033, 290703, 'numérique', FALSE, 3),
  (2907034, 290703, 'binaire', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (290704, 2907, 'Quel composant convertit un signal analogique en numérique pour la partie commande ?', 'Le CAN (Convertisseur Analogique-Numérique) transforme l''analogique en numérique.', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (2907041, 290704, 'Le CAN (Convertisseur Analogique-Numérique)', TRUE, 1),
  (2907042, 290704, 'Le capteur', FALSE, 2),
  (2907043, 290704, 'Le moteur', FALSE, 3),
  (2907044, 290704, 'Le préactionneur', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (290705, 2907, 'Pour détecter SANS contact un objet uniquement métallique, on choisit un détecteur :', 'Le détecteur inductif détecte uniquement les objets métalliques.', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (2907051, 290705, 'inductif', TRUE, 1),
  (2907052, 290705, 'capacitif', FALSE, 2),
  (2907053, 290705, 'photoélectrique', FALSE, 3),
  (2907054, 290705, 'de fin de course', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (290706, 2907, 'Pour détecter un objet en plastique ou un liquide, quel(s) détecteur(s) convien(nen)t ?', 'Capacitif et photoélectrique détectent tous les matériaux ; l''inductif est réservé aux métaux.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (2907061, 290706, 'Capacitif ou photoélectrique', TRUE, 1),
  (2907062, 290706, 'Inductif uniquement', FALSE, 2),
  (2907063, 290706, 'Fin de course uniquement', FALSE, 3),
  (2907064, 290706, 'Aucun capteur ne le permet', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (290707, 2907, 'L''interrupteur de fin de course est un capteur :', 'C''est un capteur à contact : l''objet appuie mécaniquement sur un galet ou un levier.', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (2907071, 290707, 'à contact, délivrant un signal logique (TOR)', TRUE, 1),
  (2907072, 290707, 'sans contact, délivrant un signal analogique', FALSE, 2),
  (2907073, 290707, 'sans contact, réservé aux métaux', FALSE, 3),
  (2907074, 290707, 'analogique, mesurant une température', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (290708, 2907, 'La sensibilité d''un capteur est :', 'C''est le rapport entre la variation du signal de sortie et la variation de la grandeur mesurée (ex. mV/°C).', 8);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (2907081, 290708, 'le rapport entre la variation de la sortie et celle de la grandeur mesurée', TRUE, 1),
  (2907082, 290708, 'l''intervalle entre la valeur minimale et la valeur maximale mesurables', FALSE, 2),
  (2907083, 290708, 'le temps de réponse du capteur', FALSE, 3),
  (2907084, 290708, 'la tension d''alimentation du capteur', FALSE, 4);

-- traiter
SET @l := (SELECT id FROM lecon WHERE slug = 'traiter' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'sciences-ingenieur'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (2908, NULL, @l, 'QCM — Traiter (logique et GRAFCET)', 'Vérifiez vos connaissances sur ce chapitre.', 1);

-- communiquer
SET @l := (SELECT id FROM lecon WHERE slug = 'communiquer' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'sciences-ingenieur'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (2909, NULL, @l, 'QCM — Communiquer', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (290901, 2909, 'Dans la chaîne d''information, la fonction COMMUNIQUER se situe :', 'L''ordre est ACQUERIR puis TRAITER puis COMMUNIQUER : COMMUNIQUER clôt la chaîne d''information.', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (2909011, 290901, 'En fin de chaîne, juste après TRAITER', TRUE, 1),
  (2909012, 290901, 'Au tout début, avant ACQUERIR', FALSE, 2),
  (2909013, 290901, 'Entre ACQUERIR et TRAITER', FALSE, 3),
  (2909014, 290901, 'Dans la chaîne d''énergie', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (290902, 2909, 'Quel est le rôle principal de la fonction COMMUNIQUER ?', 'Elle restitue l''information : elle la rend perceptible par l''utilisateur ou transmissible vers un autre système.', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (2909021, 290902, 'Restituer l''information élaborée par le système', TRUE, 1),
  (2909022, 290902, 'Transformer la matière d''œuvre', FALSE, 2),
  (2909023, 290902, 'Mesurer les grandeurs physiques', FALSE, 3),
  (2909024, 290902, 'Fournir l''énergie aux actionneurs', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (290903, 2909, 'Pour restituer un simple état « marche / arrêt » à l''utilisateur, l''organe le plus adapté est :', 'Un voyant lumineux (LED) restitue une information binaire de type tout ou rien : il suffit pour un état.', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (2909031, 290903, 'Un voyant lumineux (LED)', TRUE, 1),
  (2909032, 290903, 'Un écran graphique', FALSE, 2),
  (2909033, 290903, 'Un afficheur LCD alphanumérique', FALSE, 3),
  (2909034, 290903, 'Un bus de terrain', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (290904, 2909, 'Un afficheur 7 segments permet de restituer surtout :', 'Ses sept segments, disposés en huit, forment les chiffres de $0$ à $9$ (et quelques lettres) : il convient aux valeurs numériques simples.', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (2909041, 290904, 'Des chiffres de $0$ à $9$', TRUE, 1),
  (2909042, 290904, 'Des images en couleur', FALSE, 2),
  (2909043, 290904, 'Des courbes et des menus', FALSE, 3),
  (2909044, 290904, 'De longs paragraphes de texte', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (290905, 2909, 'Pour afficher le chiffre $7$ sur un afficheur 7 segments, on allume les segments :', 'Le chiffre $7$ s''obtient en allumant uniquement les segments $a$, $b$ et $c$.', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (2909051, 290905, '$a$, $b$ et $c$', TRUE, 1),
  (2909052, 290905, 'Les sept segments', FALSE, 2),
  (2909053, 290905, '$b$ et $c$ seulement', FALSE, 3),
  (2909054, 290905, '$a$, $d$ et $g$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (290906, 2909, 'Dans une liaison série, les bits d''un mot sont transmis :', 'En série, les bits circulent les uns après les autres sur un même fil : peu de conducteurs, adapté aux longues distances.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (2909061, 290906, 'Les uns après les autres sur un même fil', TRUE, 1),
  (2909062, 290906, 'Tous en même temps, un fil par bit', FALSE, 2),
  (2909063, 290906, 'Sans aucun support physique', FALSE, 3),
  (2909064, 290906, 'Uniquement par ondes lumineuses', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (290907, 2909, 'Pour transmettre un mot de 8 bits en liaison parallèle, il faut :', 'En parallèle, il y a un fil par bit : 8 bits transmis simultanément exigent 8 fils de données.', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (2909071, 290907, '8 fils de données', TRUE, 1),
  (2909072, 290907, '1 seul fil de données', FALSE, 2),
  (2909073, 290907, '2 fils de données', FALSE, 3),
  (2909074, 290907, 'Aucun fil de données', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (290908, 2909, 'Un bus de terrain (CAN, Modbus, Profibus) sert à :', 'C''est un réseau industriel qui relie capteurs, actionneurs et automates sur un même support : il réduit le câblage et facilite le diagnostic.', 8);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (2909081, 290908, 'Relier capteurs, actionneurs et automates sur un même support', TRUE, 1),
  (2909082, 290908, 'Afficher des chiffres pour l''utilisateur', FALSE, 2),
  (2909083, 290908, 'Fournir l''énergie aux moteurs', FALSE, 3),
  (2909084, 290908, 'Mesurer la température ambiante', FALSE, 4);

-- dessin-technique
SET @l := (SELECT id FROM lecon WHERE slug = 'dessin-technique' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'sciences-ingenieur'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (2910, NULL, @l, 'QCM — Lecture de dessin technique', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (291001, 2910, 'En méthode européenne (premier dièdre), où se place la vue de dessus par rapport à la vue de face ?', 'En projection du premier dièdre, chaque vue se place du côté opposé au sens d''observation : la vue de dessus se trouve donc sous la vue de face.', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (2910011, 291001, 'Sous la vue de face', TRUE, 1),
  (2910012, 291001, 'Au-dessus de la vue de face', FALSE, 2),
  (2910013, 291001, 'À droite de la vue de face', FALSE, 3),
  (2910014, 291001, 'À gauche de la vue de face', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (291002, 2910, 'La vue de face et la vue de gauche sont en correspondance par des traits horizontaux. Quelle dimension ont-elles en commun ?', 'Reliées par des traits horizontaux, la vue de face et la vue de gauche ont la même hauteur.', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (2910021, 291002, 'La même hauteur', TRUE, 1),
  (2910022, 291002, 'La même largeur', FALSE, 2),
  (2910023, 291002, 'La même profondeur', FALSE, 3),
  (2910024, 291002, 'Le même diamètre', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (291003, 2910, 'Sur une vue, une arête cachée (non visible depuis l''observateur) est représentée par :', 'Une arête vue est en trait continu fort ; une arête cachée est figurée par un trait interrompu (pointillé).', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (2910031, 291003, 'Un trait interrompu (pointillé)', TRUE, 1),
  (2910032, 291003, 'Un trait continu fort', FALSE, 2),
  (2910033, 291003, 'Un trait mixte fin', FALSE, 3),
  (2910034, 291003, 'Une ligne de cote fléchée', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (291004, 2910, 'Quelle est la différence essentielle entre une coupe et une section ?', 'La coupe dessine la tranche coupée ET ce qui se trouve derrière le plan ; la section ne dessine que la tranche de matière, sans l''arrière-plan.', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (2910041, 291004, 'La coupe montre aussi l''arrière-plan, la section seulement la tranche coupée', TRUE, 1),
  (2910042, 291004, 'La section montre l''arrière-plan, la coupe seulement la tranche', FALSE, 2),
  (2910043, 291004, 'Coupe et section sont deux mots pour la même représentation', FALSE, 3),
  (2910044, 291004, 'La coupe n''utilise pas de hachures, la section oui', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (291005, 2910, 'Sur une coupe, les hachures fines tracées à $45^\circ$ servent à :', 'Les hachures repèrent la matière réellement traversée (coupée) par le plan de coupe ; les zones vides ne sont pas hachurées.', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (2910051, 291005, 'Repérer la matière réellement coupée par le plan', TRUE, 1),
  (2910052, 291005, 'Indiquer les arêtes cachées', FALSE, 2),
  (2910053, 291005, 'Représenter le filetage', FALSE, 3),
  (2910054, 291005, 'Marquer les lignes de cote', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (291006, 2910, 'Dans la perspective cavalière d''un cube, la face avant est dessinée :', 'En perspective cavalière, la face avant est en vraie grandeur (carré exact) ; seules les fuyantes, tracées souvent à $45^\circ$, sont réduites.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (2910061, 291006, 'En vraie grandeur, sans déformation', TRUE, 1),
  (2910062, 291006, 'Réduite de moitié comme les fuyantes', FALSE, 2),
  (2910063, 291006, 'En losange', FALSE, 3),
  (2910064, 291006, 'Inclinée à $30^\circ$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (291007, 2910, 'En perspective isométrique, quel angle les trois axes principaux font-ils entre eux ?', 'Les trois directions principales sont tracées selon trois axes faisant entre eux des angles de $120^\circ$ (arêtes horizontales à $30^\circ$ de l''horizontale).', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (2910071, 291007, '$120^\circ$', TRUE, 1),
  (2910072, 291007, '$90^\circ$', FALSE, 2),
  (2910073, 291007, '$45^\circ$', FALSE, 3),
  (2910074, 291007, '$60^\circ$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (291008, 2910, 'Sur un dessin, le symbole $\varnothing$ placé devant une valeur de cote indique :', 'Le symbole $\varnothing$ désigne un diamètre (cercle, perçage). $R$ indiquerait un rayon, et $\square$ un carré.', 8);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (2910081, 291008, 'Un diamètre', TRUE, 1),
  (2910082, 291008, 'Un rayon', FALSE, 2),
  (2910083, 291008, 'Un angle', FALSE, 3),
  (2910084, 291008, 'Un carré', FALSE, 4);

