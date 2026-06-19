-- Données initiales : programme du Bac scientifique marocain (session de rattrapage)
-- Les coefficients sont indicatifs (filière Sciences). Ajustez selon votre filière exacte.

-- ============================ MATIERES ============================
INSERT INTO matiere (id, slug, nom, coefficient, description, couleur, icone, ordre) VALUES
 (1, 'maths',           'Mathématiques',   7, 'Analyse, suites, nombres complexes, probabilités et calcul intégral.', '#2563eb', '📐', 1),
 (2, 'physique-chimie', 'Physique-Chimie', 7, 'Ondes, électricité, mécanique, transformations nucléaires et chimie.', '#dc2626', '⚗️', 2),
 (3, 'svt',             'SVT',             5, 'Génétique, immunologie, géologie et métabolisme cellulaire.', '#16a34a', '🧬', 3),
 (4, 'francais',        'Français',        4, 'Œuvres au programme et techniques de rédaction.', '#7c3aed', '📖', 4),
 (5, 'anglais',         'Anglais',         2, 'Grammaire, compréhension et expression écrite.', '#ea580c', '🗣️', 5),
 (6, 'philosophie',     'Philosophie',     2, 'Notions du programme et méthodologie de la dissertation.', '#0891b2', '🤔', 6);

-- ============================ CHAPITRES ============================
INSERT INTO chapitre (id, matiere_id, slug, titre, resume, ordre) VALUES
 (101, 1, 'limites-continuite',        'Limites et continuité',              'Calcul de limites, formes indéterminées, théorème des valeurs intermédiaires.', 1),
 (102, 1, 'derivation-etude-fonctions','Dérivation et étude de fonctions',   'Dérivées, sens de variation, convexité, points d''inflexion.', 2),
 (103, 1, 'suites-numeriques',         'Suites numériques',                  'Suites arithmétiques, géométriques, convergence et récurrence.', 3),
 (104, 1, 'logarithme-exponentielle',  'Logarithme et exponentielle',        'Fonctions ln et exp, équations et limites de référence.', 4),
 (105, 1, 'nombres-complexes',         'Nombres complexes',                  'Forme algébrique, module, argument, forme trigonométrique.', 5),
 (106, 1, 'probabilites',              'Probabilités',                       'Dénombrement, probabilité conditionnelle, loi binomiale.', 6),
 (107, 1, 'calcul-integral',           'Calcul intégral',                    'Primitives, intégration par parties, calcul d''aires.', 7),

 (201, 2, 'ondes',                     'Les ondes',                          'Ondes mécaniques, célérité, longueur d''onde, diffraction.', 1),
 (202, 2, 'transformations-nucleaires','Transformations nucléaires',         'Radioactivité, décroissance, demi-vie, énergie de liaison.', 2),
 (203, 2, 'dipole-rc-rl-rlc',          'Dipôles RC, RL et RLC',              'Charge/décharge, constante de temps, oscillations électriques.', 3),
 (204, 2, 'mecanique-newton',          'Lois de Newton',                     'Référentiels galiléens, les trois lois, applications.', 4),
 (205, 2, 'cinetique-chimique',        'Cinétique chimique',                 'Vitesse de réaction, facteurs cinétiques, temps de demi-réaction.', 5),
 (206, 2, 'acide-base',                'Réactions acide-base',               'pH, couples acide/base, constante d''acidité, dosages.', 6),

 (301, 3, 'genetique',                 'Génétique humaine',                  'Allèles, dominance, hérédité liée au sexe, arbres généalogiques.', 1),
 (302, 3, 'immunologie',               'Immunologie',                        'Immunité innée et adaptative, lymphocytes, réponse immunitaire.', 2),
 (303, 3, 'geologie',                  'Phénomènes géologiques',             'Tectonique des plaques, chaînes de montagnes, magmatisme.', 3),
 (304, 3, 'metabolisme',               'Métabolisme cellulaire',             'Respiration, fermentation, production d''énergie.', 4),

 (401, 4, 'antigone',                  'Antigone — Jean Anouilh',            'Personnages, thèmes, registre tragique, le conflit Antigone/Créon.', 1),
 (402, 4, 'dernier-jour-condamne',     'Le Dernier Jour d''un Condamné',     'Hugo, plaidoyer contre la peine de mort, le narrateur.', 2),
 (403, 4, 'boite-a-merveilles',        'La Boîte à Merveilles',              'Sefrioui, récit autobiographique, le monde de Sidi Mohammed.', 3),
 (404, 4, 'methodologie-fr',           'Méthodologie (français)',            'Résumé, compte rendu, production écrite, questions de compréhension.', 4),

 (501, 5, 'grammar',                   'Grammar essentials',                 'Tenses, conditionals, passive voice, reported speech.', 1),
 (502, 5, 'reading',                   'Reading comprehension',              'Strategies, vocabulary in context, main idea.', 2),
 (503, 5, 'writing',                   'Writing',                            'Paragraph and essay structure, linking words.', 3),

 (601, 6, 'la-personne',               'La personne humaine',                'Conscience, inconscient, identité, autrui.', 1),
 (602, 6, 'la-politique',              'La politique',                       'État, droit, justice, violence et légitimité.', 2),
 (603, 6, 'la-morale',                 'La morale',                          'Devoir, liberté, bonheur.', 3),
 (604, 6, 'methodologie-philo',        'Méthodologie de la dissertation',    'Analyse du sujet, problématique, plan, argumentation.', 4);

-- ============================ FICHES DE REVISION ============================
INSERT INTO fiche (id, chapitre_id, titre, contenu, ordre) VALUES
 (1, 101, 'L''essentiel sur les limites',
  '## Limites — points clés\n\n- **Limites de référence** : `lim(x→0) sin(x)/x = 1`, `lim(x→+∞) ln(x)/x = 0`, `lim(x→+∞) e^x/x = +∞`.\n- **Formes indéterminées** : `∞ − ∞`, `0 × ∞`, `0/0`, `∞/∞`. Lever par factorisation, conjugué, ou croissances comparées.\n- **Asymptotes** : verticale si la limite est infinie en a ; horizontale si limite finie en ±∞.\n\n### Théorème des valeurs intermédiaires (TVI)\nSi f est **continue** sur [a,b] et k entre f(a) et f(b), alors il existe c ∈ [a,b] tel que f(c)=k. Si f est **strictement monotone**, ce c est **unique**.', 1),
 (2, 102, 'Dérivation et étude de fonctions',
  '## Dérivation\n\n- `(u·v)'' = u''v + uv''`, `(u/v)'' = (u''v − uv'')/v²`, `(ln u)'' = u''/u`, `(e^u)'' = u''·e^u`.\n- **Signe de f''** → sens de variation de f.\n- **Signe de f''''** → convexité : f''''>0 ⇒ **convexe**, f''''<0 ⇒ **concave**.\n- **Point d''inflexion** : f'''' s''annule en **changeant de signe**.', 1),
 (3, 103, 'Suites numériques',
  '## Suites\n\n- **Arithmétique** : `u(n+1) = u(n) + r`, terme général `u(n) = u(0) + n·r`.\n- **Géométrique** : `u(n+1) = q·u(n)`, terme général `u(n) = u(0)·q^n`.\n- **Somme géométrique** (q ≠ 1) : `1 + q + ... + q^n = (1 − q^(n+1))/(1 − q)`.\n- **Convergence** : une suite géométrique converge vers 0 si `|q| < 1`.\n- **Récurrence** : initialisation + hérédité.', 1),
 (4, 105, 'Nombres complexes',
  '## Nombres complexes\n\n- `i² = −1`. Forme algébrique : `z = a + ib`.\n- **Module** : `|z| = √(a² + b²)`. Pour z = 3 + 4i, |z| = 5.\n- **Conjugué** : `z̄ = a − ib`, et `z·z̄ = |z|²`.\n- **Argument** : angle θ tel que `z = |z|(cos θ + i sin θ)`.\n- **Forme exponentielle** : `z = r·e^(iθ)`. Pratique pour les puissances (Moivre).', 1),
 (5, 201, 'Les ondes',
  '## Ondes mécaniques\n\n- Une onde mécanique se propage dans un **milieu matériel** (pas dans le vide).\n- **Célérité** : `v = λ / T = λ·f`.\n- **Longueur d''onde** : `λ = v·T`.\n- **Diffraction** : d''autant plus marquée que l''ouverture est **petite** devant λ.\n- Onde **transversale** (perpendiculaire) vs **longitudinale** (parallèle au déplacement).', 1),
 (6, 203, 'Dipôle RC',
  '## Dipôle RC\n\n- **Constante de temps** : `τ = R·C` (en secondes).\n- À la **charge**, la tension du condensateur croît puis se stabilise à E ; à `t = 5τ` la charge est quasi complète.\n- **Énergie stockée** : `E = ½·C·u²`.\n- Unité de capacité : le **farad (F)**.', 1),
 (7, 204, 'Lois de Newton',
  '## Lois de Newton\n\n1. **Principe d''inertie** : dans un référentiel galiléen, un solide isolé ou pseudo-isolé garde un mouvement rectiligne uniforme (ou reste au repos).\n2. **Principe fondamental** : `ΣF = m·a` (la somme des forces = masse × accélération).\n3. **Actions réciproques** : `F(A→B) = −F(B→A)`.', 1),
 (8, 301, 'Génétique humaine',
  '## Génétique\n\n- Cellule somatique humaine : **46 chromosomes** (23 paires).\n- **Allèle dominant** : s''exprime à l''état hétérozygote ; **récessif** : seulement à l''état homozygote.\n- **Hérédité liée à l''X récessive** : touche surtout les **garçons** (XY).\n- Outils : échiquier de croisement, arbre généalogique.', 1),
 (9, 401, 'Antigone — repères',
  '## Antigone (Jean Anouilh, 1944)\n\n- **Genre** : tragédie moderne réécrivant le mythe de Sophocle.\n- **Conflit** : Antigone veut enterrer son frère **Polynice**, malgré l''interdiction de **Créon**.\n- **Thèmes** : devoir, révolte, loi des hommes vs loi divine, pureté.\n- **Registre** : **tragique** (fatalité, mort, dilemme).', 1),
 (10, 601, 'La personne humaine',
  '## La personne\n\n- **Conscience** (Descartes) : « Je pense donc je suis » — fondement du sujet.\n- **Inconscient** (Freud) : une partie du psychisme échappe à la conscience.\n- **Identité personnelle** : permanence du moi à travers le temps.\n- **Autrui** : autre que moi, mais aussi condition de ma conscience de moi.', 1);

-- ============================ QUIZ ============================
INSERT INTO quiz (id, chapitre_id, titre, description, ordre) VALUES
 (1001, 101, 'QCM — Limites et continuité', 'Teste tes bases sur les limites et le TVI.', 1),
 (1002, 102, 'QCM — Dérivation',           'Dérivées, variations et convexité.', 1),
 (1003, 103, 'QCM — Suites numériques',    'Arithmétique, géométrique et convergence.', 1),
 (1004, 105, 'QCM — Nombres complexes',    'Module, argument et calcul de base.', 1),
 (2001, 201, 'QCM — Les ondes',            'Propagation, célérité et diffraction.', 1),
 (2002, 203, 'QCM — Dipôle RC',            'Constante de temps et charge du condensateur.', 1),
 (2003, 204, 'QCM — Lois de Newton',       'Les trois lois et leurs applications.', 1),
 (3001, 301, 'QCM — Génétique',            'Allèles, chromosomes et hérédité.', 1),
 (4001, 401, 'QCM — Antigone',             'Personnages, thèmes et registre.', 1),
 (6001, 601, 'QCM — La personne',          'Conscience et inconscient.', 1);

-- ============================ QUESTIONS & CHOIX ============================
-- Quiz 1001 : Limites
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES
 (100101, 1001, 'Que vaut lim(x→0) sin(x)/x ?', 'C''est une limite de référence : elle vaut 1.', 1),
 (100102, 1001, 'Si f est continue sur [a,b] et change de signe, alors f admet sur [a,b] :', 'Conséquence du théorème des valeurs intermédiaires.', 2),
 (100103, 1001, 'Que vaut lim(x→+∞) (3x²+1)/(x²−2) ?', 'On compare les termes de plus haut degré : 3x²/x² = 3.', 3),
 (100104, 1001, 'Que vaut lim(x→+∞) ln(x)/x ?', 'Croissance comparée : le logarithme l''emporte, la limite est 0.', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
 (1001011, 100101, '0', FALSE, 1), (1001012, 100101, '1', TRUE, 2), (1001013, 100101, '+∞', FALSE, 3), (1001014, 100101, 'N''existe pas', FALSE, 4),
 (1001021, 100102, 'Au moins une racine', TRUE, 1), (1001022, 100102, 'Aucune racine', FALSE, 2), (1001023, 100102, 'Exactement deux racines', FALSE, 3), (1001024, 100102, 'Une asymptote', FALSE, 4),
 (1001031, 100103, '3', TRUE, 1), (1001032, 100103, '1', FALSE, 2), (1001033, 100103, '+∞', FALSE, 3), (1001034, 100103, '0', FALSE, 4),
 (1001041, 100104, '0', TRUE, 1), (1001042, 100104, '1', FALSE, 2), (1001043, 100104, '+∞', FALSE, 3), (1001044, 100104, 'e', FALSE, 4);

-- Quiz 1002 : Dérivation
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES
 (100201, 1002, 'La dérivée de f(x) = x·ln(x) est :', 'Produit : (x)''·ln(x) + x·(1/x) = ln(x) + 1.', 1),
 (100202, 1002, 'Si f''''(x) > 0 sur un intervalle I, alors f est sur I :', 'Une dérivée seconde positive caractérise la convexité.', 2),
 (100203, 1002, 'Un point où f'''' s''annule en changeant de signe est un point :', 'C''est la définition d''un point d''inflexion.', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
 (1002011, 100201, 'ln(x) + 1', TRUE, 1), (1002012, 100201, '1/x', FALSE, 2), (1002013, 100201, 'ln(x)', FALSE, 3), (1002014, 100201, 'x', FALSE, 4),
 (1002021, 100202, 'Convexe', TRUE, 1), (1002022, 100202, 'Concave', FALSE, 2), (1002023, 100202, 'Décroissante', FALSE, 3), (1002024, 100202, 'Constante', FALSE, 4),
 (1002031, 100203, 'D''inflexion', TRUE, 1), (1002032, 100203, 'Anguleux', FALSE, 2), (1002033, 100203, 'Maximum', FALSE, 3), (1002034, 100203, 'Minimum', FALSE, 4);

-- Quiz 1003 : Suites
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES
 (100301, 1003, 'Une suite géométrique de raison q avec |q| < 1 converge vers :', 'q^n tend vers 0 quand |q| < 1.', 1),
 (100302, 1003, 'La relation u(n+1) = u(n) + r définit une suite :', 'Ajout d''une raison constante : suite arithmétique.', 2),
 (100303, 1003, 'La somme 1 + q + ... + q^n (q ≠ 1) vaut :', 'Formule de la somme des termes d''une suite géométrique.', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
 (1003011, 100301, '0', TRUE, 1), (1003012, 100301, '1', FALSE, 2), (1003013, 100301, '+∞', FALSE, 3), (1003014, 100301, 'q', FALSE, 4),
 (1003021, 100302, 'Arithmétique', TRUE, 1), (1003022, 100302, 'Géométrique', FALSE, 2), (1003023, 100302, 'Constante', FALSE, 3), (1003024, 100302, 'Alternée', FALSE, 4),
 (1003031, 100303, '(1 − q^(n+1)) / (1 − q)', TRUE, 1), (1003032, 100303, 'n·q', FALSE, 2), (1003033, 100303, '(1 − q^n) / (1 − q)', FALSE, 3), (1003034, 100303, 'q^(n+1)', FALSE, 4);

-- Quiz 1004 : Nombres complexes
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES
 (100401, 1004, 'Le module de z = 3 + 4i est :', '|z| = √(3² + 4²) = √25 = 5.', 1),
 (100402, 1004, 'i² vaut :', 'Par définition de l''unité imaginaire.', 2),
 (100403, 1004, 'Un argument de i est :', 'i est sur l''axe imaginaire positif : θ = π/2.', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
 (1004011, 100401, '5', TRUE, 1), (1004012, 100401, '7', FALSE, 2), (1004013, 100401, '25', FALSE, 3), (1004014, 100401, '1', FALSE, 4),
 (1004021, 100402, '−1', TRUE, 1), (1004022, 100402, '1', FALSE, 2), (1004023, 100402, 'i', FALSE, 3), (1004024, 100402, '−i', FALSE, 4),
 (1004031, 100403, 'π/2', TRUE, 1), (1004032, 100403, '0', FALSE, 2), (1004033, 100403, 'π', FALSE, 3), (1004034, 100403, '−π/2', FALSE, 4);

-- Quiz 2001 : Ondes
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES
 (200101, 2001, 'Une onde mécanique se propage dans :', 'Elle a besoin d''un support matériel.', 1),
 (200102, 2001, 'La relation entre λ, célérité v et période T est :', 'La longueur d''onde est la distance parcourue en une période.', 2),
 (200103, 2001, 'La diffraction est d''autant plus marquée que l''ouverture est :', 'Effet visible quand l''ouverture est de l''ordre de λ, donc petite.', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
 (2001011, 200101, 'Un milieu matériel', TRUE, 1), (2001012, 200101, 'Le vide', FALSE, 2), (2001013, 200101, 'Uniquement l''air', FALSE, 3), (2001014, 200101, 'Uniquement l''eau', FALSE, 4),
 (2001021, 200102, 'λ = v·T', TRUE, 1), (2001022, 200102, 'λ = v/T', FALSE, 2), (2001023, 200102, 'λ = T/v', FALSE, 3), (2001024, 200102, 'v = λ·T', FALSE, 4),
 (2001031, 200103, 'Petite', TRUE, 1), (2001032, 200103, 'Grande', FALSE, 2), (2001033, 200103, 'Carrée', FALSE, 3), (2001034, 200103, 'Sans importance', FALSE, 4);

-- Quiz 2002 : Dipôle RC
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES
 (200201, 2002, 'La constante de temps d''un dipôle RC est :', 'τ = R·C, homogène à un temps.', 1),
 (200202, 2002, 'Lors de la charge, la tension aux bornes du condensateur :', 'Elle croît exponentiellement puis se stabilise à E.', 2),
 (200203, 2002, 'L''unité de la capacité C est :', 'La capacité se mesure en farads.', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
 (2002011, 200201, 'τ = R·C', TRUE, 1), (2002012, 200201, 'τ = R/C', FALSE, 2), (2002013, 200201, 'τ = C/R', FALSE, 3), (2002014, 200201, 'τ = R·C²', FALSE, 4),
 (2002021, 200202, 'Augmente puis se stabilise', TRUE, 1), (2002022, 200202, 'Diminue', FALSE, 2), (2002023, 200202, 'Reste nulle', FALSE, 3), (2002024, 200202, 'Oscille', FALSE, 4),
 (2002031, 200203, 'Le farad', TRUE, 1), (2002032, 200203, 'L''ohm', FALSE, 2), (2002033, 200203, 'Le henry', FALSE, 3), (2002034, 200203, 'Le volt', FALSE, 4);

-- Quiz 2003 : Lois de Newton
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES
 (200301, 2003, 'La deuxième loi de Newton s''écrit :', 'La somme des forces égale masse fois accélération.', 1),
 (200302, 2003, 'Dans un référentiel galiléen, un solide isolé :', 'Principe d''inertie : mouvement rectiligne uniforme.', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
 (2003011, 200301, 'ΣF = m·a', TRUE, 1), (2003012, 200301, 'ΣF = m/a', FALSE, 2), (2003013, 200301, 'F = m·v', FALSE, 3), (2003014, 200301, 'a = m·F', FALSE, 4),
 (2003021, 200302, 'Garde un mouvement rectiligne uniforme', TRUE, 1), (2003022, 200302, 'Accélère', FALSE, 2), (2003023, 200302, 'S''arrête toujours', FALSE, 3), (2003024, 200302, 'Tourne', FALSE, 4);

-- Quiz 3001 : Génétique
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES
 (300101, 3001, 'Un allèle qui s''exprime à l''état hétérozygote est dit :', 'Un allèle dominant masque l''allèle récessif.', 1),
 (300102, 3001, 'Combien de chromosomes contient une cellule somatique humaine ?', '23 paires soit 46 chromosomes.', 2),
 (300103, 3001, 'Une maladie récessive liée à l''X touche surtout :', 'Les garçons n''ont qu''un seul X, pas de second allèle compensateur.', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
 (3001011, 300101, 'Dominant', TRUE, 1), (3001012, 300101, 'Récessif', FALSE, 2), (3001013, 300101, 'Muté', FALSE, 3), (3001014, 300101, 'Lié au sexe', FALSE, 4),
 (3001021, 300102, '46', TRUE, 1), (3001022, 300102, '23', FALSE, 2), (3001023, 300102, '44', FALSE, 3), (3001024, 300102, '92', FALSE, 4),
 (3001031, 300103, 'Les garçons', TRUE, 1), (3001032, 300103, 'Les filles', FALSE, 2), (3001033, 300103, 'Personne', FALSE, 3), (3001034, 300103, 'Tous également', FALSE, 4);

-- Quiz 4001 : Antigone
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES
 (400101, 4001, 'Antigone est une pièce de :', 'Jean Anouilh, 1944.', 1),
 (400102, 4001, 'Antigone veut enterrer son frère :', 'Polynice, laissé sans sépulture par Créon.', 2),
 (400103, 4001, 'Le registre dominant de la pièce est :', 'La fatalité et le dilemme tragique.', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
 (4001011, 400101, 'Jean Anouilh', TRUE, 1), (4001012, 400101, 'Victor Hugo', FALSE, 2), (4001013, 400101, 'Molière', FALSE, 3), (4001014, 400101, 'Ahmed Sefrioui', FALSE, 4),
 (4001021, 400102, 'Polynice', TRUE, 1), (4001022, 400102, 'Étéocle', FALSE, 2), (4001023, 400102, 'Créon', FALSE, 3), (4001024, 400102, 'Hémon', FALSE, 4),
 (4001031, 400103, 'Tragique', TRUE, 1), (4001032, 400103, 'Comique', FALSE, 2), (4001033, 400103, 'Épique', FALSE, 3), (4001034, 400103, 'Didactique', FALSE, 4);

-- Quiz 6001 : La personne
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES
 (600101, 6001, 'Pour Descartes, le fondement du sujet est :', '« Je pense donc je suis » : la conscience.', 1),
 (600102, 6001, 'La notion d''inconscient a été développée par :', 'Sigmund Freud, fondateur de la psychanalyse.', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
 (6001011, 600101, 'La conscience / la pensée', TRUE, 1), (6001012, 600101, 'Le corps', FALSE, 2), (6001013, 600101, 'La société', FALSE, 3), (6001014, 600101, 'L''habitude', FALSE, 4),
 (6001021, 600102, 'Freud', TRUE, 1), (6001022, 600102, 'Kant', FALSE, 2), (6001023, 600102, 'Platon', FALSE, 3), (6001024, 600102, 'Sartre', FALSE, 4);

-- ============================ ANNALES ============================
-- Références des sessions (normale & rattrapage). Ajoutez les URLs des PDF officiels.
INSERT INTO annale (id, matiere_id, titre, annee, session, sujet_url, corrige_url) VALUES
 (1, 1, 'Bac Maths — Session de rattrapage 2024',           2024, 'RATTRAPAGE', NULL, NULL),
 (2, 1, 'Bac Maths — Session normale 2024',                 2024, 'NORMALE',    NULL, NULL),
 (3, 1, 'Bac Maths — Session de rattrapage 2023',           2023, 'RATTRAPAGE', NULL, NULL),
 (4, 2, 'Bac Physique-Chimie — Session de rattrapage 2024', 2024, 'RATTRAPAGE', NULL, NULL),
 (5, 2, 'Bac Physique-Chimie — Session normale 2024',       2024, 'NORMALE',    NULL, NULL),
 (6, 2, 'Bac Physique-Chimie — Session de rattrapage 2023', 2023, 'RATTRAPAGE', NULL, NULL),
 (7, 3, 'Bac SVT — Session de rattrapage 2024',             2024, 'RATTRAPAGE', NULL, NULL),
 (8, 3, 'Bac SVT — Session normale 2024',                   2024, 'NORMALE',    NULL, NULL),
 (9, 4, 'Bac Français — Session de rattrapage 2024',        2024, 'RATTRAPAGE', NULL, NULL),
 (10, 6, 'Bac Philosophie — Session de rattrapage 2024',    2024, 'RATTRAPAGE', NULL, NULL);
