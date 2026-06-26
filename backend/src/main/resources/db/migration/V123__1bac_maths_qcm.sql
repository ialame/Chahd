-- Maths 1 Bac : QCM des 17 chapitres (quiz 3001-3017).
SET SESSION sql_mode = CONCAT(@@sql_mode, ',NO_BACKSLASH_ESCAPES');

-- logique
SET @l := (SELECT id FROM lecon WHERE slug = 'logique' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'maths-1bac'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (3001, NULL, @l, 'QCM — Notions de logique', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (300101, 3001, 'Laquelle de ces phrases est une proposition mathématique (vraie ou fausse) ?', 'Une proposition est un énoncé qui est soit vrai, soit faux. « $7$ est un nombre premier » est vraie. Une question, un ordre ou un prédicat dont la valeur dépend d''une variable libre ($x>0$) ne sont pas des propositions.', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (3001011, 300101, '$7$ est un nombre premier', TRUE, 1),
  (3001012, 300101, '$x > 0$', FALSE, 2),
  (3001013, 300101, 'Quel est le plus grand entier ?', FALSE, 3),
  (3001014, 300101, 'Trace une droite.', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (300102, 3001, 'Pour quelles valeurs de $P$ et $Q$ la conjonction $P \wedge Q$ est-elle vraie ?', 'La conjonction « $P$ et $Q$ » est vraie uniquement lorsque $P$ et $Q$ sont toutes les deux vraies.', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (3001021, 300102, 'Lorsque $P$ et $Q$ sont toutes les deux vraies', TRUE, 1),
  (3001022, 300102, 'Lorsque l''une au moins est vraie', FALSE, 2),
  (3001023, 300102, 'Lorsque $P$ est vraie', FALSE, 3),
  (3001024, 300102, 'Lorsque $P$ et $Q$ sont toutes les deux fausses', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (300103, 3001, 'L''implication $P \Rightarrow Q$ est fausse :', 'Une implication n''est fausse que dans un seul cas : hypothèse vraie et conclusion fausse, c''est-à-dire $P$ vraie et $Q$ fausse. Dans tous les autres cas elle est vraie.', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (3001031, 300103, 'uniquement lorsque $P$ est vraie et $Q$ est fausse', TRUE, 1),
  (3001032, 300103, 'uniquement lorsque $P$ est fausse et $Q$ est vraie', FALSE, 2),
  (3001033, 300103, 'lorsque $P$ et $Q$ sont fausses', FALSE, 3),
  (3001034, 300103, 'lorsque $P$ et $Q$ sont vraies', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (300104, 3001, 'Quelle est la négation de la proposition « $\forall x \in \mathbb{R},\ x^2 \ge 1$ » ?', 'Pour nier une proposition quantifiée, on échange le quantificateur ($\forall$ devient $\exists$) et on nie le prédicat : $x^2 \ge 1$ devient $x^2 < 1$.', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (3001041, 300104, '$\exists x \in \mathbb{R},\ x^2 < 1$', TRUE, 1),
  (3001042, 300104, '$\forall x \in \mathbb{R},\ x^2 < 1$', FALSE, 2),
  (3001043, 300104, '$\exists x \in \mathbb{R},\ x^2 \ge 1$', FALSE, 3),
  (3001044, 300104, '$\forall x \in \mathbb{R},\ x^2 \le 1$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (300105, 3001, 'D''après les lois de De Morgan, la négation de « $P$ ou $Q$ » est :', 'La négation transforme la disjonction en conjonction des négations : $\overline{P \vee Q} = \overline{P} \wedge \overline{Q}$.', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (3001051, 300105, '$\overline{P} \wedge \overline{Q}$', TRUE, 1),
  (3001052, 300105, '$\overline{P} \vee \overline{Q}$', FALSE, 2),
  (3001053, 300105, '$P \wedge Q$', FALSE, 3),
  (3001054, 300105, '$\overline{P} \Rightarrow \overline{Q}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (300106, 3001, 'Quelle est la contraposée de l''implication « $P \Rightarrow Q$ » ?', 'La contraposée de $P \Rightarrow Q$ est $\overline{Q} \Rightarrow \overline{P}$ ; elle a toujours la même valeur de vérité que l''implication initiale. À ne pas confondre avec la réciproque $Q \Rightarrow P$.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (3001061, 300106, '$\overline{Q} \Rightarrow \overline{P}$', TRUE, 1),
  (3001062, 300106, '$Q \Rightarrow P$', FALSE, 2),
  (3001063, 300106, '$\overline{P} \Rightarrow \overline{Q}$', FALSE, 3),
  (3001064, 300106, '$P \Rightarrow \overline{Q}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (300107, 3001, 'Pour montrer qu''une proposition « $\forall x \in E,\ P(x)$ » est fausse, il suffit de :', 'Il suffit d''exhiber un seul élément $x_0$ pour lequel $P(x_0)$ est fausse : c''est un contre-exemple. Inutile de tester tous les éléments.', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (3001071, 300107, 'trouver un contre-exemple, c''est-à-dire un $x_0$ tel que $P(x_0)$ est fausse', TRUE, 1),
  (3001072, 300107, 'vérifier que $P(x)$ est fausse pour tous les $x$ de $E$', FALSE, 2),
  (3001073, 300107, 'trouver un $x_0$ tel que $P(x_0)$ est vraie', FALSE, 3),
  (3001074, 300107, 'faire une démonstration par récurrence', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (300108, 3001, 'Dans une démonstration par récurrence, l''étape d''hérédité consiste à :', 'L''hérédité consiste à supposer $P(n)$ vraie pour un entier $n$ fixé (hypothèse de récurrence) et à en déduire $P(n+1)$. L''initialisation, elle, vérifie le premier rang.', 8);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (3001081, 300108, 'supposer $P(n)$ vraie et démontrer $P(n+1)$', TRUE, 1),
  (3001082, 300108, 'vérifier que $P(n_0)$ est vraie au premier rang', FALSE, 2),
  (3001083, 300108, 'supposer $P(n+1)$ vraie et démontrer $P(n)$', FALSE, 3),
  (3001084, 300108, 'vérifier $P(n)$ pour toutes les valeurs de $n$', FALSE, 4);

-- ensembles-applications
SET @l := (SELECT id FROM lecon WHERE slug = 'ensembles-applications' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'maths-1bac'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (3002, NULL, @l, 'QCM — Ensembles et applications', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (300201, 3002, 'Avec $A = \{1, 2, 3\}$ et $B = \{2, 3, 4, 5\}$, l''intersection $A \cap B$ vaut :', '$A \cap B$ contient les éléments communs aux deux ensembles : $2$ et $3$.', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (3002011, 300201, '$\{2, 3\}$', TRUE, 1),
  (3002012, 300201, '$\{1, 2, 3, 4, 5\}$', FALSE, 2),
  (3002013, 300201, '$\{1\}$', FALSE, 3),
  (3002014, 300201, '$\{4, 5\}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (300202, 3002, 'Si un ensemble $E$ possède $4$ éléments, alors $\mathcal{P}(E)$ possède :', 'Pour un ensemble fini à $n$ éléments, $\operatorname{card}(\mathcal{P}(E)) = 2^n = 2^4 = 16$.', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (3002021, 300202, '$16$ éléments', TRUE, 1),
  (3002022, 300202, '$8$ éléments', FALSE, 2),
  (3002023, 300202, '$4$ éléments', FALSE, 3),
  (3002024, 300202, '$2$ éléments', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (300203, 3002, 'Pour deux parties $A$ et $B$ de $E$, la loi de De Morgan donne $\overline{A \cap B} =$ :', 'Le complémentaire d''une intersection est la réunion des complémentaires.', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (3002031, 300203, '$\overline{A} \cup \overline{B}$', TRUE, 1),
  (3002032, 300203, '$\overline{A} \cap \overline{B}$', FALSE, 2),
  (3002033, 300203, '$A \cup B$', FALSE, 3),
  (3002034, 300203, '$\overline{A} \setminus \overline{B}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (300204, 3002, 'Si $E$ a $3$ éléments et $F$ a $5$ éléments, alors $E \times F$ a :', 'Le produit cartésien a $\operatorname{card}(E) \times \operatorname{card}(F) = 3 \times 5 = 15$ couples.', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (3002041, 300204, '$15$ éléments', TRUE, 1),
  (3002042, 300204, '$8$ éléments', FALSE, 2),
  (3002043, 300204, '$2$ éléments', FALSE, 3),
  (3002044, 300204, '$125$ éléments', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (300205, 3002, 'Pour deux parties $A$ et $B$ de $E$, la différence $A \setminus B$ est égale à :', '$A \setminus B$ regroupe les éléments de $A$ qui ne sont pas dans $B$, soit $A \cap \overline{B}$.', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (3002051, 300205, '$A \cap \overline{B}$', TRUE, 1),
  (3002052, 300205, '$A \cup \overline{B}$', FALSE, 2),
  (3002053, 300205, '$\overline{A} \cap B$', FALSE, 3),
  (3002054, 300205, '$A \cap B$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (300206, 3002, 'L''application $f : \mathbb{R} \to \mathbb{R}$, $f(x) = 2x - 3$ est bijective. Sa réciproque est :', 'On résout $y = 2x - 3$, d''où $x = \dfrac{y + 3}{2}$.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (3002061, 300206, '$f^{-1}(y) = \dfrac{y + 3}{2}$', TRUE, 1),
  (3002062, 300206, '$f^{-1}(y) = \dfrac{y - 3}{2}$', FALSE, 2),
  (3002063, 300206, '$f^{-1}(y) = 2y + 3$', FALSE, 3),
  (3002064, 300206, '$f^{-1}(y) = \dfrac{1}{2x - 3}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (300207, 3002, 'L''application $g : \mathbb{R} \to \mathbb{R}$ définie par $g(x) = x^2$ est :', '$g(-1) = g(1) = 1$ : non injective ; $-1$ n''a aucun antécédent : non surjective.', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (3002071, 300207, 'ni injective ni surjective', TRUE, 1),
  (3002072, 300207, 'injective et surjective', FALSE, 2),
  (3002073, 300207, 'injective mais non surjective', FALSE, 3),
  (3002074, 300207, 'surjective mais non injective', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (300208, 3002, 'Avec $f(x) = x + 2$ et $g(x) = 3x$, la composée $(g \circ f)(x)$ vaut :', '$(g \circ f)(x) = g(f(x)) = g(x + 2) = 3(x + 2) = 3x + 6$.', 8);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (3002081, 300208, '$3x + 6$', TRUE, 1),
  (3002082, 300208, '$3x + 2$', FALSE, 2),
  (3002083, 300208, '$3x + 5$', FALSE, 3),
  (3002084, 300208, '$x + 6$', FALSE, 4);

-- generalites-fonctions
SET @l := (SELECT id FROM lecon WHERE slug = 'generalites-fonctions' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'maths-1bac'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (3003, NULL, @l, 'QCM — Generalites sur les fonctions', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (300301, 3003, 'Quel est l''ensemble de définition de la fonction $f(x) = \dfrac{\sqrt{x-2}}{x-5}$ ?', 'Il faut $x - 2 \ge 0$ (donc $x \ge 2$) pour la racine, et $x - 5 \neq 0$ (donc $x \neq 5$) pour le dénominateur. On obtient $[2, 5[ \cup \,]5, +\infty[$.', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (3003011, 300301, '$[2, 5[ \,\cup\, ]5, +\infty[$', TRUE, 1),
  (3003012, 300301, '$[2, +\infty[$', FALSE, 2),
  (3003013, 300301, '$\mathbb{R} \setminus \{5\}$', FALSE, 3),
  (3003014, 300301, '$]2, 5[ \,\cup\, ]5, +\infty[$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (300302, 3003, 'La fonction définie sur $\mathbb{R}$ par $f(x) = x^3 - 4x$ est :', 'Le domaine $\mathbb{R}$ est symétrique. $f(-x) = (-x)^3 - 4(-x) = -x^3 + 4x = -(x^3 - 4x) = -f(x)$ : la fonction est impaire.', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (3003021, 300302, 'impaire', TRUE, 1),
  (3003022, 300302, 'paire', FALSE, 2),
  (3003023, 300302, 'à la fois paire et impaire', FALSE, 3),
  (3003024, 300302, 'ni paire ni impaire', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (300303, 3003, 'Quelle est la plus petite période strictement positive de la fonction $f(x) = \cos(2x)$ ?', 'On cherche $T > 0$ tel que $2(x + T) = 2x + 2\pi$, ce qui donne $T = \pi$. On vérifie : $\cos(2(x+\pi)) = \cos(2x + 2\pi) = \cos(2x)$.', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (3003031, 300303, '$\pi$', TRUE, 1),
  (3003032, 300303, '$2\pi$', FALSE, 2),
  (3003033, 300303, '$\dfrac{\pi}{2}$', FALSE, 3),
  (3003034, 300303, '$4\pi$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (300304, 3003, 'Pour $a \neq b$ dans $]0, +\infty[$, le taux d''accroissement de $g(x) = \dfrac{1}{x}$ vaut $-\dfrac{1}{ab}$. On en déduit que $g$ est, sur $]0, +\infty[$ :', 'Pour $a, b > 0$, le produit $ab > 0$, donc le taux $-\dfrac{1}{ab}$ est strictement négatif : la fonction renverse l''ordre, elle est strictement décroissante.', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (3003041, 300304, 'strictement décroissante', TRUE, 1),
  (3003042, 300304, 'strictement croissante', FALSE, 2),
  (3003043, 300304, 'constante', FALSE, 3),
  (3003044, 300304, 'croissante puis décroissante', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (300305, 3003, 'La fonction $f(x) = (x - 3)^2 + 2$ admet sur $\mathbb{R}$ :', 'Comme $(x-3)^2 \ge 0$, on a $f(x) \ge 2$ pour tout $x$, avec égalité en $x = 3$. La fonction admet donc un minimum égal à $2$, atteint en $x = 3$.', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (3003051, 300305, 'un minimum égal à $2$, atteint en $x = 3$', TRUE, 1),
  (3003052, 300305, 'un maximum égal à $2$, atteint en $x = 3$', FALSE, 2),
  (3003053, 300305, 'un minimum égal à $3$, atteint en $x = 2$', FALSE, 3),
  (3003054, 300305, 'aucun extremum', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (300306, 3003, 'Pour tout réel $x$, laquelle des inégalités suivantes est toujours vraie ?', 'On a $x^2 + 1 - 2x = (x - 1)^2 \ge 0$, donc $x^2 + 1 \ge 2x$ pour tout réel $x$, avec égalité en $x = 1$.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (3003061, 300306, '$x^2 + 1 \ge 2x$', TRUE, 1),
  (3003062, 300306, '$x^2 + 1 \le 2x$', FALSE, 2),
  (3003063, 300306, '$x^2 \ge 2x + 1$', FALSE, 3),
  (3003064, 300306, '$x^2 + 1 \ge 2x^2$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (300307, 3003, 'Que peut-on affirmer de la fonction $f(x) = \sin x$ sur $\mathbb{R}$ ?', 'Pour tout réel $x$, $-1 \le \sin x \le 1$ : la fonction est minorée par $-1$ et majorée par $1$, donc bornée.', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (3003071, 300307, 'elle est bornée', TRUE, 1),
  (3003072, 300307, 'elle est majorée mais non minorée', FALSE, 2),
  (3003073, 300307, 'elle est minorée mais non majorée', FALSE, 3),
  (3003074, 300307, 'elle n''est ni majorée ni minorée', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (300308, 3003, 'On pose $f(x) = x^2$ et $g(x) = x + 1$. Quelle est l''expression de $(f \circ g)(x)$ ?', 'Par définition $(f \circ g)(x) = f(g(x)) = f(x + 1) = (x + 1)^2$. À ne pas confondre avec $(g \circ f)(x) = x^2 + 1$.', 8);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (3003081, 300308, '$(x + 1)^2$', TRUE, 1),
  (3003082, 300308, '$x^2 + 1$', FALSE, 2),
  (3003083, 300308, '$x^2 (x + 1)$', FALSE, 3),
  (3003084, 300308, '$x^2 + x + 1$', FALSE, 4);

-- barycentre
SET @l := (SELECT id FROM lecon WHERE slug = 'barycentre' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'maths-1bac'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (3004, NULL, @l, 'QCM — Le barycentre dans le plan', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (300401, 3004, 'Soit $G$ le barycentre de $\{(A,1),(B,3)\}$. Alors $\vec{AG}$ est égal à :', 'On a $\vec{AG}=\dfrac{\beta}{\alpha+\beta}\,\vec{AB}=\dfrac{3}{1+3}\,\vec{AB}=\dfrac{3}{4}\,\vec{AB}$.', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (3004011, 300401, '$\dfrac{3}{4}\,\vec{AB}$', TRUE, 1),
  (3004012, 300401, '$\dfrac{1}{4}\,\vec{AB}$', FALSE, 2),
  (3004013, 300401, '$\dfrac{1}{3}\,\vec{AB}$', FALSE, 3),
  (3004014, 300401, '$3\,\vec{AB}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (300402, 3004, 'Le barycentre du système $\{(A,\alpha),(B,\beta)\}$ existe si et seulement si :', 'L''existence et l''unicité du barycentre sont garanties par la condition $\alpha+\beta\neq 0$.', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (3004021, 300402, '$\alpha+\beta\neq 0$', TRUE, 1),
  (3004022, 300402, '$\alpha\neq 0$ et $\beta\neq 0$', FALSE, 2),
  (3004023, 300402, '$\alpha=\beta$', FALSE, 3),
  (3004024, 300402, '$\alpha\times\beta\neq 0$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (300403, 3004, 'Soit $G$ le barycentre de $\{(A,2),(B,3)\}$. Pour tout point $M$ du plan, $2\,\vec{MA}+3\,\vec{MB}$ est égal à :', 'La relation fondamentale de réduction donne $\alpha\,\vec{MA}+\beta\,\vec{MB}=(\alpha+\beta)\,\vec{MG}=5\,\vec{MG}$.', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (3004031, 300403, '$5\,\vec{MG}$', TRUE, 1),
  (3004032, 300403, '$\vec{MG}$', FALSE, 2),
  (3004033, 300403, '$6\,\vec{MG}$', FALSE, 3),
  (3004034, 300403, '$5\,\vec{GM}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (300404, 3004, 'Dans un repère, $A(2,3)$ et $B(4,7)$. Les coordonnées du barycentre $G$ de $\{(A,1),(B,3)\}$ sont :', '$x_G=\dfrac{1\cdot 2+3\cdot 4}{4}=\dfrac{14}{4}=\dfrac{7}{2}$ et $y_G=\dfrac{1\cdot 3+3\cdot 7}{4}=\dfrac{24}{4}=6$.', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (3004041, 300404, '$\left(\dfrac{7}{2},\,6\right)$', TRUE, 1),
  (3004042, 300404, '$(3,\,5)$', FALSE, 2),
  (3004043, 300404, '$\left(\dfrac{7}{2},\,5\right)$', FALSE, 3),
  (3004044, 300404, '$(6,\,10)$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (300405, 3004, 'Soit $H$ le barycentre de $\{(A,1),(B,2)\}$. Le barycentre $G$ de $\{(A,1),(B,2),(C,3)\}$ est égal à :', 'Par associativité, on remplace $A$ et $B$ par $H$ affecté du poids $1+2=3$ : $G=\text{bar}\,\{(H,3),(C,3)\}$.', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (3004051, 300405, '$\text{bar}\,\{(H,3),(C,3)\}$', TRUE, 1),
  (3004052, 300405, '$\text{bar}\,\{(H,1),(C,3)\}$', FALSE, 2),
  (3004053, 300405, '$\text{bar}\,\{(H,2),(C,3)\}$', FALSE, 3),
  (3004054, 300405, '$\text{bar}\,\{(H,3),(C,1)\}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (300406, 3004, 'Soit $G$ le centre de gravité du triangle $ABC$ et $A''$ le milieu de $[BC]$. Alors $\vec{AG}$ est égal à :', 'Le centre de gravité se situe aux deux tiers de la médiane à partir du sommet : $\vec{AG}=\dfrac{2}{3}\,\vec{AA''}$.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (3004061, 300406, '$\dfrac{2}{3}\,\vec{AA''}$', TRUE, 1),
  (3004062, 300406, '$\dfrac{1}{2}\,\vec{AA''}$', FALSE, 2),
  (3004063, 300406, '$\dfrac{1}{3}\,\vec{AA''}$', FALSE, 3),
  (3004064, 300406, '$\dfrac{3}{2}\,\vec{AA''}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (300407, 3004, 'L''isobarycentre de deux points distincts $A$ et $B$ est :', 'L''isobarycentre de $A$ et $B$ est $\text{bar}\,\{(A,1),(B,1)\}$, c''est-à-dire le milieu de $[AB]$.', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (3004071, 300407, 'le milieu de $[AB]$', TRUE, 1),
  (3004072, 300407, 'le point $A$', FALSE, 2),
  (3004073, 300407, 'un point situé hors de la droite $(AB)$', FALSE, 3),
  (3004074, 300407, 'le point tel que $\vec{AG}=\dfrac{1}{3}\,\vec{AB}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (300408, 3004, 'Dans un repère, $A(0,0)$, $B(3,0)$ et $C(0,6)$. Les coordonnées du centre de gravité du triangle $ABC$ sont :', 'Le centre de gravité est l''isobarycentre : $x_G=\dfrac{0+3+0}{3}=1$ et $y_G=\dfrac{0+0+6}{3}=2$.', 8);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (3004081, 300408, '$(1,\,2)$', TRUE, 1),
  (3004082, 300408, '$(3,\,6)$', FALSE, 2),
  (3004083, 300408, '$\left(\dfrac{3}{2},\,3\right)$', FALSE, 3),
  (3004084, 300408, '$(1,\,3)$', FALSE, 4);

-- produit-scalaire-plan
SET @l := (SELECT id FROM lecon WHERE slug = 'produit-scalaire-plan' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'maths-1bac'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (3005, NULL, @l, 'QCM — Le produit scalaire dans le plan', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (300501, 3005, 'Dans un repère orthonormé, $\vec{u}(3\,;-1)$ et $\vec{v}(2\,;4)$. Le produit scalaire $\vec{u}\cdot\vec{v}$ vaut :', '$\vec{u}\cdot\vec{v} = 3\times 2 + (-1)\times 4 = 6 - 4 = 2$.', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (3005011, 300501, '$2$', TRUE, 1),
  (3005012, 300501, '$10$', FALSE, 2),
  (3005013, 300501, '$-2$', FALSE, 3),
  (3005014, 300501, '$8$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (300502, 3005, 'On a $\|\vec{u}\| = 4$, $\|\vec{v}\| = 3$ et l''angle $(\vec{u},\vec{v}) = 60°$. Alors $\vec{u}\cdot\vec{v}$ vaut :', '$\vec{u}\cdot\vec{v} = 4\times 3\times \cos(60°) = 12\times \tfrac{1}{2} = 6$.', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (3005021, 300502, '$6$', TRUE, 1),
  (3005022, 300502, '$12$', FALSE, 2),
  (3005023, 300502, '$3$', FALSE, 3),
  (3005024, 300502, '$24$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (300503, 3005, 'Pour quelle valeur de $k$ les vecteurs $\vec{u}(2\,;3)$ et $\vec{v}(k\,;-2)$ sont-ils orthogonaux ?', 'Orthogonaux $\iff 2k + 3\times(-2) = 0 \iff 2k - 6 = 0 \iff k = 3$.', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (3005031, 300503, '$k = 3$', TRUE, 1),
  (3005032, 300503, '$k = -3$', FALSE, 2),
  (3005033, 300503, '$k = 6$', FALSE, 3),
  (3005034, 300503, '$k = 4$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (300504, 3005, 'Dans un repère orthonormé, $A(1\,;1)$ et $B(4\,;5)$. La distance $AB$ vaut :', '$AB = \sqrt{(4-1)^2 + (5-1)^2} = \sqrt{9 + 16} = \sqrt{25} = 5$.', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (3005041, 300504, '$5$', TRUE, 1),
  (3005042, 300504, '$7$', FALSE, 2),
  (3005043, 300504, '$25$', FALSE, 3),
  (3005044, 300504, '$\sqrt{7}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (300505, 3005, 'Dans un triangle $ABC$, $AB = 3$, $AC = 5$ et $\widehat{A} = 60°$. La longueur $BC$ vaut :', 'Al-Kashi : $BC^2 = 3^2 + 5^2 - 2\times 3\times 5\times \cos(60°) = 9 + 25 - 15 = 19$, donc $BC = \sqrt{19}$.', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (3005051, 300505, '$\sqrt{19}$', TRUE, 1),
  (3005052, 300505, '$\sqrt{34}$', FALSE, 2),
  (3005053, 300505, '$7$', FALSE, 3),
  (3005054, 300505, '$8$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (300506, 3005, 'Dans un triangle $ABC$, $AB = 4$, $AC = 6$, $BC = 8$ et $I$ est le milieu de $[BC]$. La longueur $AI$ vaut :', 'Théorème de la médiane : $AI^2 = \dfrac{AB^2 + AC^2}{2} - \dfrac{BC^2}{4} = \dfrac{16+36}{2} - \dfrac{64}{4} = 26 - 16 = 10$, donc $AI = \sqrt{10}$.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (3005061, 300506, '$\sqrt{10}$', TRUE, 1),
  (3005062, 300506, '$\sqrt{26}$', FALSE, 2),
  (3005063, 300506, '$10$', FALSE, 3),
  (3005064, 300506, '$\sqrt{6}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (300507, 3005, 'Une équation cartésienne de la droite passant par $A(1\,;2)$ et de vecteur normal $\vec{n}(2\,;-1)$ est :', '$2(x-1) - 1(y-2) = 0 \iff 2x - y = 0$.', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (3005071, 300507, '$2x - y = 0$', TRUE, 1),
  (3005072, 300507, '$2x + y = 0$', FALSE, 2),
  (3005073, 300507, '$x + 2y = 0$', FALSE, 3),
  (3005074, 300507, '$2x - y - 4 = 0$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (300508, 3005, 'L''équation du cercle de centre $\Omega(2\,;-3)$ et de rayon $4$ est :', '$(x-\alpha)^2 + (y-\beta)^2 = r^2$ donne $(x-2)^2 + (y+3)^2 = 16$.', 8);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (3005081, 300508, '$(x-2)^2 + (y+3)^2 = 16$', TRUE, 1),
  (3005082, 300508, '$(x+2)^2 + (y-3)^2 = 16$', FALSE, 2),
  (3005083, 300508, '$(x-2)^2 + (y-3)^2 = 4$', FALSE, 3),
  (3005084, 300508, '$(x-2)^2 + (y+3)^2 = 4$', FALSE, 4);

-- calcul-trigonometrique
SET @l := (SELECT id FROM lecon WHERE slug = 'calcul-trigonometrique' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'maths-1bac'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (3006, NULL, @l, 'QCM — Calcul trigonometrique', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (300601, 3006, 'La mesure en radians de l''angle $60°$ est :', 'On multiplie par $\frac{\pi}{180}$ : $60 \times \frac{\pi}{180} = \frac{\pi}{3}$.', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (3006011, 300601, '$\frac{\pi}{3}$', TRUE, 1),
  (3006012, 300601, '$\frac{\pi}{6}$', FALSE, 2),
  (3006013, 300601, '$\frac{\pi}{2}$', FALSE, 3),
  (3006014, 300601, '$\frac{2\pi}{3}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (300602, 3006, 'La mesure en degrés de l''angle $\frac{5\pi}{6}$ est :', 'On multiplie par $\frac{180}{\pi}$ : $\frac{5\pi}{6} \times \frac{180}{\pi} = 5 \times 30 = 150°$.', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (3006021, 300602, '$150°$', TRUE, 1),
  (3006022, 300602, '$120°$', FALSE, 2),
  (3006023, 300602, '$135°$', FALSE, 3),
  (3006024, 300602, '$300°$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (300603, 3006, 'La valeur de $\cos\left(\frac{\pi}{6}\right)$ est :', 'C''est une valeur remarquable : $\cos\left(\frac{\pi}{6}\right) = \frac{\sqrt{3}}{2}$.', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (3006031, 300603, '$\frac{\sqrt{3}}{2}$', TRUE, 1),
  (3006032, 300603, '$\frac{1}{2}$', FALSE, 2),
  (3006033, 300603, '$\frac{\sqrt{2}}{2}$', FALSE, 3),
  (3006034, 300603, '$\frac{\sqrt{3}}{3}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (300604, 3006, 'La valeur de $\tan\left(\frac{\pi}{4}\right)$ est :', '$\tan\left(\frac{\pi}{4}\right) = \frac{\sin(\pi/4)}{\cos(\pi/4)} = \frac{\sqrt{2}/2}{\sqrt{2}/2} = 1$.', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (3006041, 300604, '$1$', TRUE, 1),
  (3006042, 300604, '$\sqrt{3}$', FALSE, 2),
  (3006043, 300604, '$\frac{\sqrt{3}}{3}$', FALSE, 3),
  (3006044, 300604, '$0$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (300605, 3006, 'Pour tout réel $x$, $\sin\left(\frac{\pi}{2} - x\right)$ est égal à :', 'C''est une formule des angles complémentaires : $\sin\left(\frac{\pi}{2} - x\right) = \cos x$.', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (3006051, 300605, '$\cos x$', TRUE, 1),
  (3006052, 300605, '$\sin x$', FALSE, 2),
  (3006053, 300605, '$-\cos x$', FALSE, 3),
  (3006054, 300605, '$-\sin x$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (300606, 3006, 'Pour tout réel $x$, $\sin(\pi + x)$ est égal à :', 'Angle associé : $\sin(\pi + x) = -\sin x$.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (3006061, 300606, '$-\sin x$', TRUE, 1),
  (3006062, 300606, '$\sin x$', FALSE, 2),
  (3006063, 300606, '$\cos x$', FALSE, 3),
  (3006064, 300606, '$-\cos x$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (300607, 3006, 'La formule d''addition du cosinus donne $\cos(a + b) = $ :', '$\cos(a + b) = \cos a \cos b - \sin a \sin b$ (attention au signe « moins »).', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (3006071, 300607, '$\cos a \cos b - \sin a \sin b$', TRUE, 1),
  (3006072, 300607, '$\cos a \cos b + \sin a \sin b$', FALSE, 2),
  (3006073, 300607, '$\sin a \cos b + \cos a \sin b$', FALSE, 3),
  (3006074, 300607, '$\cos a \sin b - \sin a \cos b$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (300608, 3006, 'Les solutions dans $\mathbb{R}$ de l''équation $\cos x = \frac{\sqrt{2}}{2}$ sont :', 'Comme $\frac{\sqrt{2}}{2} = \cos\frac{\pi}{4}$, on a $x = \frac{\pi}{4} + 2k\pi$ ou $x = -\frac{\pi}{4} + 2k\pi$, avec $k \in \mathbb{Z}$.', 8);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (3006081, 300608, '$x = \pm\frac{\pi}{4} + 2k\pi,\ k \in \mathbb{Z}$', TRUE, 1),
  (3006082, 300608, '$x = \frac{\pi}{4} + k\pi,\ k \in \mathbb{Z}$', FALSE, 2),
  (3006083, 300608, '$x = \pm\frac{\pi}{3} + 2k\pi,\ k \in \mathbb{Z}$', FALSE, 3),
  (3006084, 300608, '$x = \frac{\pi}{4} + 2k\pi$ ou $x = \frac{3\pi}{4} + 2k\pi,\ k \in \mathbb{Z}$', FALSE, 4);

-- suites-numeriques
SET @l := (SELECT id FROM lecon WHERE slug = 'suites-numeriques' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'maths-1bac'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (3007, NULL, @l, 'QCM — Les suites numeriques', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (300701, 3007, 'Soit $(u_n)$ une suite arithmétique de premier terme $u_0 = 3$ et de raison $r = 4$. Que vaut $u_5$ ?', 'On applique $u_n = u_0 + nr$, donc $u_5 = 3 + 5 \times 4 = 23$.', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (3007011, 300701, '$23$', TRUE, 1),
  (3007012, 300701, '$19$', FALSE, 2),
  (3007013, 300701, '$20$', FALSE, 3),
  (3007014, 300701, '$47$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (300702, 3007, 'Une suite arithmétique $(u_n)$ vérifie $u_2 = 5$ et $u_6 = 17$. Quelle est sa raison $r$ ?', 'On a $u_6 = u_2 + (6-2)r$, donc $17 = 5 + 4r$, d''où $r = \frac{17 - 5}{4} = 3$.', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (3007021, 300702, '$r = 3$', TRUE, 1),
  (3007022, 300702, '$r = 4$', FALSE, 2),
  (3007023, 300702, '$r = 6$', FALSE, 3),
  (3007024, 300702, '$r = 12$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (300703, 3007, 'Soit $(v_n)$ une suite géométrique de premier terme $v_0 = 2$ et de raison $q = 3$. Que vaut $v_4$ ?', 'On applique $v_n = v_0 \times q^n$, donc $v_4 = 2 \times 3^4 = 2 \times 81 = 162$.', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (3007031, 300703, '$162$', TRUE, 1),
  (3007032, 300703, '$54$', FALSE, 2),
  (3007033, 300703, '$96$', FALSE, 3),
  (3007034, 300703, '$486$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (300704, 3007, 'Que vaut la somme $S = 1 + 2 + 3 + \cdots + 100$ ?', 'C''est une somme arithmétique de $100$ termes : $S = 100 \times \frac{1 + 100}{2} = 50 \times 101 = 5050$.', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (3007041, 300704, '$5050$', TRUE, 1),
  (3007042, 300704, '$5000$', FALSE, 2),
  (3007043, 300704, '$10100$', FALSE, 3),
  (3007044, 300704, '$4950$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (300705, 3007, 'Que vaut la somme $S = 1 + 2 + 4 + 8 + \cdots + 2^9$ ?', 'C''est une somme géométrique de premier terme $1$, de raison $2$ et de $10$ termes : $S = 1 \times \frac{1 - 2^{10}}{1 - 2} = 2^{10} - 1 = 1023$.', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (3007051, 300705, '$1023$', TRUE, 1),
  (3007052, 300705, '$1024$', FALSE, 2),
  (3007053, 300705, '$511$', FALSE, 3),
  (3007054, 300705, '$2047$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (300706, 3007, 'Comment varie la suite définie par $u_n = \left(\frac{1}{2}\right)^n$ ?', 'C''est une suite géométrique de raison $q = \frac{1}{2}$, comprise entre $0$ et $1$, avec un premier terme positif : elle est strictement décroissante.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (3007061, 300706, 'Strictement décroissante', TRUE, 1),
  (3007062, 300706, 'Strictement croissante', FALSE, 2),
  (3007063, 300706, 'Constante', FALSE, 3),
  (3007064, 300706, 'Non monotone', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (300707, 3007, 'Soit la suite définie pour $n \in \mathbb{N}$ par $u_n = \frac{n}{n+1}$. Laquelle de ces affirmations est correcte ?', 'Pour tout $n$, $n < n+1$ donc $0 \le u_n < 1$ : la suite est minorée par $0$ et majorée par $1$, donc bornée.', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (3007071, 300707, 'La suite est majorée par $1$', TRUE, 1),
  (3007072, 300707, 'La suite n''est pas minorée', FALSE, 2),
  (3007073, 300707, 'La suite est majorée par $\frac{1}{2}$', FALSE, 3),
  (3007074, 300707, 'La suite est décroissante', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (300708, 3007, 'On définit $(u_n)$ par $u_0 = 2$ et $u_{n+1} = u_n + 5$. Quelle est la nature de cette suite ?', 'Comme $u_{n+1} - u_n = 5$ est constant, la suite est arithmétique de raison $5$.', 8);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (3007081, 300708, 'Arithmétique de raison $5$', TRUE, 1),
  (3007082, 300708, 'Géométrique de raison $5$', FALSE, 2),
  (3007083, 300708, 'Arithmétique de raison $2$', FALSE, 3),
  (3007084, 300708, 'Géométrique de raison $2$', FALSE, 4);

-- limites-fonction
SET @l := (SELECT id FROM lecon WHERE slug = 'limites-fonction' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'maths-1bac'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (3008, NULL, @l, 'QCM — Limites d''une fonction', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (300801, 3008, 'Que vaut $\displaystyle\lim_{x \to +\infty} \frac{1}{x^2}$ ?', 'Pour tout entier $n \ge 1$, $\dfrac{1}{x^n} \to 0$ quand $x \to +\infty$. Ici $n = 2$, la limite vaut donc $0$.', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (3008011, 300801, '$0$', TRUE, 1),
  (3008012, 300801, '$+\infty$', FALSE, 2),
  (3008013, 300801, '$1$', FALSE, 3),
  (3008014, 300801, '$-\infty$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (300802, 3008, 'Parmi les expressions suivantes, laquelle n''est PAS une forme indéterminée ?', 'Les quatre formes indéterminées sont $\infty - \infty$, $0 \times \infty$, $\frac{0}{0}$ et $\frac{\infty}{\infty}$. En revanche $\frac{\ell}{\infty} = 0$ est parfaitement déterminé.', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (3008021, 300802, '$\dfrac{\ell}{\infty}$ (avec $\ell$ fini)', TRUE, 1),
  (3008022, 300802, '$\dfrac{0}{0}$', FALSE, 2),
  (3008023, 300802, '$\infty - \infty$', FALSE, 3),
  (3008024, 300802, '$0 \times \infty$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (300803, 3008, 'Que vaut $\displaystyle\lim_{x \to +\infty} \frac{3x^2 - x + 1}{x^2 + 5}$ ?', 'En $\pm\infty$, une fonction rationnelle se comporte comme le quotient des termes de plus haut degré : $\dfrac{3x^2}{x^2} = 3$.', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (3008031, 300803, '$3$', TRUE, 1),
  (3008032, 300803, '$0$', FALSE, 2),
  (3008033, 300803, '$+\infty$', FALSE, 3),
  (3008034, 300803, '$\dfrac{1}{5}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (300804, 3008, 'Que vaut $\displaystyle\lim_{x \to 2} \frac{x^2 - 4}{x - 2}$ ?', 'C''est une forme indéterminée $\frac{0}{0}$. On factorise : $x^2 - 4 = (x-2)(x+2)$, donc le quotient vaut $x + 2 \to 4$.', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (3008041, 300804, '$4$', TRUE, 1),
  (3008042, 300804, '$0$', FALSE, 2),
  (3008043, 300804, '$2$', FALSE, 3),
  (3008044, 300804, 'n''existe pas', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (300805, 3008, 'Pour lever l''indétermination de $\displaystyle\lim_{x \to +\infty} \left(\sqrt{x^2 + 1} - x\right)$, on multiplie par :', 'Face à une F.I. $\infty - \infty$ contenant une racine, on multiplie et divise par la quantité conjuguée $\sqrt{x^2 + 1} + x$, ce qui élimine la racine au numérateur.', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (3008051, 300805, '$\sqrt{x^2 + 1} + x$', TRUE, 1),
  (3008052, 300805, '$\sqrt{x^2 + 1} - x$', FALSE, 2),
  (3008053, 300805, '$x^2 + 1$', FALSE, 3),
  (3008054, 300805, '$\dfrac{1}{x}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (300806, 3008, 'Si $\displaystyle\lim_{x \to 2^+} f(x) = +\infty$, que peut-on affirmer pour la courbe $(C_f)$ ?', 'Une limite infinie lorsque $x$ tend vers une valeur finie $a$ traduit une asymptote verticale d''équation $x = a$. Ici $a = 2$.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (3008061, 300806, 'la droite $x = 2$ est une asymptote verticale', TRUE, 1),
  (3008062, 300806, 'la droite $y = 2$ est une asymptote horizontale', FALSE, 2),
  (3008063, 300806, 'la droite $y = x + 2$ est une asymptote oblique', FALSE, 3),
  (3008064, 300806, '$(C_f)$ coupe l''axe des abscisses en $2$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (300807, 3008, 'Si $\displaystyle\lim_{x \to +\infty} f(x) = 3$, alors $(C_f)$ admet en $+\infty$ :', 'Une limite finie $\ell$ en $+\infty$ signifie que la courbe se rapproche de la droite $y = \ell$ : c''est une asymptote horizontale d''équation $y = 3$.', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (3008071, 300807, 'une asymptote horizontale d''équation $y = 3$', TRUE, 1),
  (3008072, 300807, 'une asymptote verticale d''équation $x = 3$', FALSE, 2),
  (3008073, 300807, 'une asymptote oblique d''équation $y = 3x$', FALSE, 3),
  (3008074, 300807, 'aucune asymptote', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (300808, 3008, 'La droite $y = ax + b$ ($a \neq 0$) est asymptote oblique à $(C_f)$ en $+\infty$ lorsque :', 'Par définition, $y = ax + b$ est asymptote oblique en $+\infty$ si $\displaystyle\lim_{x \to +\infty} \big[f(x) - (ax + b)\big] = 0$ : l''écart entre la courbe et la droite tend vers $0$.', 8);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (3008081, 300808, '$\displaystyle\lim_{x \to +\infty} \big[f(x) - (ax + b)\big] = 0$', TRUE, 1),
  (3008082, 300808, '$\displaystyle\lim_{x \to +\infty} f(x) = ax + b$', FALSE, 2),
  (3008083, 300808, '$\displaystyle\lim_{x \to +\infty} \big[f(x) - (ax + b)\big] = +\infty$', FALSE, 3),
  (3008084, 300808, '$\displaystyle\lim_{x \to +\infty} \frac{f(x)}{ax + b} = 0$', FALSE, 4);

-- rotation-plan
SET @l := (SELECT id FROM lecon WHERE slug = 'rotation-plan' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'maths-1bac'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (3009, NULL, @l, 'QCM — La rotation dans le plan', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (300901, 3009, 'Une rotation du plan est entièrement déterminée par :', 'Une rotation est définie par son centre $O$ et son angle $\theta$ (l''angle est orienté, donc son signe fixe le sens).', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (3009011, 300901, 'son centre et son angle', TRUE, 1),
  (3009012, 300901, 'son centre seulement', FALSE, 2),
  (3009013, 300901, 'son angle seulement', FALSE, 3),
  (3009014, 300901, 'deux points et une longueur', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (300902, 3009, 'Par la rotation $r(O,\theta)$, l''image du centre $O$ est :', 'Le centre d''une rotation est un point invariant : son image est lui-même.', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (3009021, 300902, 'le point $O$ lui-même', TRUE, 1),
  (3009022, 300902, 'le symétrique de $O$', FALSE, 2),
  (3009023, 300902, 'un point à distance $\theta$ de $O$', FALSE, 3),
  (3009024, 300902, 'le milieu de $[OO'']$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (300903, 3009, 'Soit $M''$ l''image de $M$ par $r(O,\theta)$ avec $M \neq O$. On a toujours :', 'Par définition, la rotation conserve la distance au centre : $OM'' = OM$, et l''angle orienté entre $\vec{OM}$ et $\vec{OM''}$ vaut $\theta$.', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (3009031, 300903, '$OM'' = OM$', TRUE, 1),
  (3009032, 300903, '$OM'' = 2\,OM$', FALSE, 2),
  (3009033, 300903, '$OM'' = \theta \times OM$', FALSE, 3),
  (3009034, 300903, '$OM'' = 0$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (300904, 3009, 'Une rotation conserve les distances. On dit que c''est :', 'Une transformation qui conserve les distances est appelée une isométrie ; la rotation en est une.', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (3009041, 300904, 'une isométrie', TRUE, 1),
  (3009042, 300904, 'une homothétie de rapport $2$', FALSE, 2),
  (3009043, 300904, 'une projection', FALSE, 3),
  (3009044, 300904, 'une similitude de rapport $3$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (300905, 3009, 'Si $A''B''C''$ est l''image du triangle $ABC$ par une rotation, alors :', 'Une rotation conserve les longueurs, les angles et les aires : les deux triangles sont superposables et de même orientation.', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (3009051, 300905, '$A''B''C''$ est superposable à $ABC$', TRUE, 1),
  (3009052, 300905, '$A''B''C''$ est deux fois plus grand', FALSE, 2),
  (3009053, 300905, '$A''B''C''$ a une orientation inversée', FALSE, 3),
  (3009054, 300905, '$A''B''C''$ a une aire différente', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (300906, 3009, 'La rotation de centre $O$ et d''angle $\pi$ est :', 'La rotation d''angle $\pi$ est la symétrie centrale de centre $O$ : $O$ est alors le milieu de $[MM'']$.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (3009061, 300906, 'la symétrie centrale de centre $O$', TRUE, 1),
  (3009062, 300906, 'l''identité', FALSE, 2),
  (3009063, 300906, 'une symétrie axiale', FALSE, 3),
  (3009064, 300906, 'une translation', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (300907, 3009, 'La composée $r(O,\theta_2) \circ r(O,\theta_1)$ de deux rotations de même centre est :', 'La composée de deux rotations de même centre est la rotation de ce centre dont l''angle est la somme $\theta_1 + \theta_2$.', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (3009071, 300907, 'la rotation $r(O,\theta_1+\theta_2)$', TRUE, 1),
  (3009072, 300907, 'la rotation $r(O,\theta_1\times\theta_2)$', FALSE, 2),
  (3009073, 300907, 'une translation', FALSE, 3),
  (3009074, 300907, 'la rotation $r(O,\theta_1-\theta_2)$ uniquement', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (300908, 3009, 'La transformation réciproque de la rotation $r(O,\theta)$ est :', 'La réciproque d''une rotation est la rotation de même centre et d''angle opposé : $r(O,-\theta)$.', 8);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (3009081, 300908, '$r(O,-\theta)$', TRUE, 1),
  (3009082, 300908, '$r(O,\theta)$', FALSE, 2),
  (3009083, 300908, '$r(O,2\theta)$', FALSE, 3),
  (3009084, 300908, 'la symétrie centrale de centre $O$', FALSE, 4);

-- derivation
SET @l := (SELECT id FROM lecon WHERE slug = 'derivation' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'maths-1bac'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (3010, NULL, @l, 'QCM — La derivation', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (301001, 3010, 'La dérivée de $f(x) = x^4$ est :', 'On applique $(x^n)'' = n\,x^{n-1}$ avec $n = 4$, donc $f''(x) = 4x^3$.', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (3010011, 301001, '$4x^3$', TRUE, 1),
  (3010012, 301001, '$x^3$', FALSE, 2),
  (3010013, 301001, '$4x^4$', FALSE, 3),
  (3010014, 301001, '$\frac{x^5}{5}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (301002, 3010, 'La dérivée de $f(x) = \frac{1}{x}$ (sur $\mathbb{R}^*$) est :', 'On a $(x^{-1})'' = -x^{-2}$, soit $f''(x) = -\frac{1}{x^2}$.', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (3010021, 301002, '$-\frac{1}{x^2}$', TRUE, 1),
  (3010022, 301002, '$\frac{1}{x^2}$', FALSE, 2),
  (3010023, 301002, '$-\frac{1}{x}$', FALSE, 3),
  (3010024, 301002, '$\ln x$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (301003, 3010, 'La dérivée de $f(x) = \sqrt{x}$ (sur $]0\,;\,+\infty[$) est :', 'La dérivée de la racine carrée est $(\sqrt{x})'' = \frac{1}{2\sqrt{x}}$.', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (3010031, 301003, '$\frac{1}{2\sqrt{x}}$', TRUE, 1),
  (3010032, 301003, '$\frac{1}{\sqrt{x}}$', FALSE, 2),
  (3010033, 301003, '$2\sqrt{x}$', FALSE, 3),
  (3010034, 301003, '$\frac{1}{2}x$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (301004, 3010, 'La dérivée de $f(x) = (2x + 1)(x - 3)$ est :', 'Avec $(uv)'' = u''v + uv''$ : $2(x-3) + (2x+1)(1) = 2x - 6 + 2x + 1 = 4x - 5$.', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (3010041, 301004, '$4x - 5$', TRUE, 1),
  (3010042, 301004, '$2x - 3$', FALSE, 2),
  (3010043, 301004, '$4x - 6$', FALSE, 3),
  (3010044, 301004, '$2$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (301005, 3010, 'La dérivée de $f(x) = \frac{x + 1}{x - 1}$ (sur $\mathbb{R}\setminus\{1\}$) est :', 'Avec $\left(\frac{u}{v}\right)'' = \frac{u''v - uv''}{v^2}$ : $\frac{(x-1) - (x+1)}{(x-1)^2} = \frac{-2}{(x-1)^2}$.', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (3010051, 301005, '$-\frac{2}{(x-1)^2}$', TRUE, 1),
  (3010052, 301005, '$\frac{2}{(x-1)^2}$', FALSE, 2),
  (3010053, 301005, '$1$', FALSE, 3),
  (3010054, 301005, '$\frac{2x}{(x-1)^2}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (301006, 3010, 'La dérivée de $f(x) = (3x - 1)^5$ est :', 'Avec $(u^n)'' = n\,u''\,u^{n-1}$ et $u = 3x-1$, $u'' = 3$ : $f''(x) = 5 \times 3 \times (3x-1)^4 = 15(3x-1)^4$.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (3010061, 301006, '$15(3x - 1)^4$', TRUE, 1),
  (3010062, 301006, '$5(3x - 1)^4$', FALSE, 2),
  (3010063, 301006, '$3(3x - 1)^4$', FALSE, 3),
  (3010064, 301006, '$15(3x - 1)^6$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (301007, 3010, 'La dérivée de $f(x) = \sqrt{x^2 + 1}$ est :', 'Avec $(\sqrt{u})'' = \frac{u''}{2\sqrt{u}}$ et $u = x^2+1$, $u'' = 2x$ : $f''(x) = \frac{2x}{2\sqrt{x^2+1}} = \frac{x}{\sqrt{x^2+1}}$.', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (3010071, 301007, '$\frac{x}{\sqrt{x^2 + 1}}$', TRUE, 1),
  (3010072, 301007, '$\frac{1}{2\sqrt{x^2 + 1}}$', FALSE, 2),
  (3010073, 301007, '$\frac{2x}{\sqrt{x^2 + 1}}$', FALSE, 3),
  (3010074, 301007, '$\frac{x}{2\sqrt{x^2 + 1}}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (301008, 3010, 'Soit $f(x) = x^2 - 6x + 1$. En $x = 3$, la fonction $f$ admet :', '$f''(x) = 2x - 6$ s''annule en $x = 3$ en changeant de signe ($-$ puis $+$) : $f$ admet un minimum local en $x = 3$.', 8);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (3010081, 301008, 'un minimum local', TRUE, 1),
  (3010082, 301008, 'un maximum local', FALSE, 2),
  (3010083, 301008, 'une tangente verticale', FALSE, 3),
  (3010084, 301008, 'ni minimum ni maximum', FALSE, 4);

-- etude-fonctions
SET @l := (SELECT id FROM lecon WHERE slug = 'etude-fonctions' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'maths-1bac'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (3011, NULL, @l, 'QCM — Etude des fonctions', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (301101, 3011, 'Quel est le domaine de définition de $f(x) = \sqrt{x - 3}$ ?', 'La racine carrée impose $x - 3 \geq 0$, soit $x \geq 3$.', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (3011011, 301101, '$[3,\ +\infty[$', TRUE, 1),
  (3011012, 301101, '$]3,\ +\infty[$', FALSE, 2),
  (3011013, 301101, '$]-\infty,\ 3]$', FALSE, 3),
  (3011014, 301101, '$\mathbb{R} \setminus \{3\}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (301102, 3011, 'La fonction définie sur $\mathbb{R}$ par $f(x) = x^4 + 2x^2$ est :', '$f(-x) = (-x)^4 + 2(-x)^2 = x^4 + 2x^2 = f(x)$ : la fonction est paire.', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (3011021, 301102, 'paire', TRUE, 1),
  (3011022, 301102, 'impaire', FALSE, 2),
  (3011023, 301102, 'ni paire ni impaire', FALSE, 3),
  (3011024, 301102, 'à la fois paire et impaire', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (301103, 3011, 'Quelle est l''asymptote horizontale en $+\infty$ de la courbe de $f(x) = \dfrac{3x - 1}{x + 2}$ ?', 'Le quotient des termes de plus haut degré donne $\dfrac{3x}{x} = 3$, donc $\lim_{x \to +\infty} f(x) = 3$.', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (3011031, 301103, '$y = 3$', TRUE, 1),
  (3011032, 301103, '$y = -2$', FALSE, 2),
  (3011033, 301103, '$y = \dfrac{1}{3}$', FALSE, 3),
  (3011034, 301103, '$y = 0$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (301104, 3011, 'Pour $f(x) = \dfrac{1}{x - 1}$, quelle droite est asymptote verticale à la courbe ?', 'En $x = 1$ le dénominateur s''annule et $\lim_{x \to 1} |f(x)| = +\infty$, donc $x = 1$ est asymptote verticale.', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (3011041, 301104, '$x = 1$', TRUE, 1),
  (3011042, 301104, '$y = 1$', FALSE, 2),
  (3011043, 301104, '$x = 0$', FALSE, 3),
  (3011044, 301104, '$x = -1$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (301105, 3011, 'La courbe de $f(x) = x - 1 + \dfrac{1}{x}$ admet pour asymptote oblique :', '$f(x) - (x - 1) = \dfrac{1}{x} \to 0$ en $\pm\infty$, donc $y = x - 1$ est asymptote oblique.', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (3011051, 301105, '$y = x - 1$', TRUE, 1),
  (3011052, 301105, '$y = x$', FALSE, 2),
  (3011053, 301105, '$y = x + 1$', FALSE, 3),
  (3011054, 301105, '$y = -x + 1$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (301106, 3011, 'Une fonction $f$ telle que $f''''(x) > 0$ sur un intervalle $I$ est, sur cet intervalle :', 'Le signe positif de la dérivée seconde caractérise la convexité.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (3011061, 301106, 'convexe', TRUE, 1),
  (3011062, 301106, 'concave', FALSE, 2),
  (3011063, 301106, 'décroissante', FALSE, 3),
  (3011064, 301106, 'constante', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (301107, 3011, 'La tangente à la courbe de $f$ au point d''abscisse $a$ est horizontale lorsque :', 'Une tangente horizontale a un coefficient directeur nul, soit $f''(a) = 0$.', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (3011071, 301107, '$f''(a) = 0$', TRUE, 1),
  (3011072, 301107, '$f(a) = 0$', FALSE, 2),
  (3011073, 301107, '$f''''(a) = 0$', FALSE, 3),
  (3011074, 301107, '$f''(a) = 1$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (301108, 3011, 'Le point $\Omega(a,\ b)$ est centre de symétrie de la courbe de $f$ lorsque, pour tout $x$ convenable :', 'La symétrie de centre $\Omega(a,b)$ se traduit par $f(2a - x) + f(x) = 2b$.', 8);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (3011081, 301108, '$f(2a - x) + f(x) = 2b$', TRUE, 1),
  (3011082, 301108, '$f(2a - x) = f(x)$', FALSE, 2),
  (3011083, 301108, '$f(2a - x) + f(x) = b$', FALSE, 3),
  (3011084, 301108, '$f(a - x) = -f(x)$', FALSE, 4);

-- vecteurs-espace
SET @l := (SELECT id FROM lecon WHERE slug = 'vecteurs-espace' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'maths-1bac'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (3012, NULL, @l, 'QCM — Vecteurs de l''espace', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (301201, 3012, 'Pour trois points $A$, $B$, $C$ de l''espace, $\vec{AB} + \vec{BC}$ est égal à :', 'C''est la relation de Chasles : $\vec{AB} + \vec{BC} = \vec{AC}$.', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (3012011, 301201, '$\vec{AC}$', TRUE, 1),
  (3012012, 301201, '$\vec{CA}$', FALSE, 2),
  (3012013, 301201, '$\vec{BA}$', FALSE, 3),
  (3012014, 301201, '$\vec{0}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (301202, 3012, 'Avec $A(1, 2, 3)$ et $B(4, 0, 5)$, les coordonnées de $\vec{AB}$ sont :', '$\vec{AB}(x_B - x_A,\ y_B - y_A,\ z_B - z_A) = (3, -2, 2)$.', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (3012021, 301202, '$(3, -2, 2)$', TRUE, 1),
  (3012022, 301202, '$(-3, 2, -2)$', FALSE, 2),
  (3012023, 301202, '$(5, 2, 8)$', FALSE, 3),
  (3012024, 301202, '$(3, 2, 2)$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (301203, 3012, 'Le milieu $I$ de $[AB]$ avec $A(2, -2, 4)$ et $B(0, 4, 0)$ a pour coordonnées :', '$I\left(\frac{2+0}{2}, \frac{-2+4}{2}, \frac{4+0}{2}\right) = (1, 1, 2)$.', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (3012031, 301203, '$(1, 1, 2)$', TRUE, 1),
  (3012032, 301203, '$(2, 2, 4)$', FALSE, 2),
  (3012033, 301203, '$(-1, 3, -2)$', FALSE, 3),
  (3012034, 301203, '$(1, 1, 4)$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (301204, 3012, 'Dans un repère orthonormé, la norme du vecteur $\vec{u}(2, -1, 2)$ vaut :', '$\|\vec{u}\| = \sqrt{2^2 + (-1)^2 + 2^2} = \sqrt{9} = 3$.', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (3012041, 301204, '$3$', TRUE, 1),
  (3012042, 301204, '$5$', FALSE, 2),
  (3012043, 301204, '$\sqrt{5}$', FALSE, 3),
  (3012044, 301204, '$9$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (301205, 3012, 'Les vecteurs $\vec{u}(1, -2, 3)$ et $\vec{v}(-2, 4, -6)$ sont :', '$\vec{v} = -2\,\vec{u}$ : les coordonnées sont proportionnelles, les vecteurs sont colinéaires.', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (3012051, 301205, 'colinéaires, car $\vec{v} = -2\,\vec{u}$', TRUE, 1),
  (3012052, 301205, 'non colinéaires', FALSE, 2),
  (3012053, 301205, 'orthogonaux', FALSE, 3),
  (3012054, 301205, 'égaux', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (301206, 3012, 'Si $I$ est le milieu de $[AB]$, alors pour tout point $M$, $\vec{MA} + \vec{MB}$ est égal à :', 'Avec $I$ milieu de $[AB]$ : $\vec{MA} + \vec{MB} = 2\,\vec{MI}$.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (3012061, 301206, '$2\,\vec{MI}$', TRUE, 1),
  (3012062, 301206, '$\vec{MI}$', FALSE, 2),
  (3012063, 301206, '$\vec{0}$', FALSE, 3),
  (3012064, 301206, '$\vec{AB}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (301207, 3012, 'Les trois vecteurs $\vec{i}(1, 0, 0)$, $\vec{j}(0, 1, 0)$ et $\vec{k}(0, 0, 1)$ sont :', 'Ces trois vecteurs ne sont pas coplanaires : ils forment une base de l''espace.', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (3012071, 301207, 'non coplanaires (ils forment une base)', TRUE, 1),
  (3012072, 301207, 'coplanaires', FALSE, 2),
  (3012073, 301207, 'colinéaires deux à deux', FALSE, 3),
  (3012074, 301207, 'tous égaux', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (301208, 3012, 'Une représentation paramétrique de la droite passant par $A(1, 0, 2)$ et de vecteur directeur $\vec{u}(2, 1, -1)$ est :', '$M \in (D) \iff \vec{AM} = t\vec{u}$, soit $x = 1 + 2t$, $y = t$, $z = 2 - t$.', 8);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (3012081, 301208, '$x = 1 + 2t,\ y = t,\ z = 2 - t$', TRUE, 1),
  (3012082, 301208, '$x = 2 + t,\ y = 0,\ z = -1 + 2t$', FALSE, 2),
  (3012083, 301208, '$x = 1 + 2t,\ y = 1 + t,\ z = 2 - t$', FALSE, 3),
  (3012084, 301208, '$x = 2t,\ y = t,\ z = -t$', FALSE, 4);

-- geometrie-espace
SET @l := (SELECT id FROM lecon WHERE slug = 'geometrie-espace' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'maths-1bac'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (3013, NULL, @l, 'QCM — Geometrie analytique de l''espace', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (301301, 3013, 'Dans un repère orthonormé, quelle est la distance $AB$ entre $A(1, 1, 1)$ et $B(3, 2, 3)$ ?', 'On applique $AB = \sqrt{(3-1)^2 + (2-1)^2 + (3-1)^2} = \sqrt{4 + 1 + 4} = \sqrt{9} = 3$.', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (3013011, 301301, '$3$', TRUE, 1),
  (3013012, 301301, '$\sqrt{14}$', FALSE, 2),
  (3013013, 301301, '$9$', FALSE, 3),
  (3013014, 301301, '$5$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (301302, 3013, 'Quelles sont les coordonnées du milieu $I$ du segment $[AB]$ avec $A(1, 3, -1)$ et $B(3, 1, 5)$ ?', 'Le milieu a pour coordonnées la moyenne de celles de $A$ et $B$ : $I\left(\frac{1+3}{2}, \frac{3+1}{2}, \frac{-1+5}{2}\right) = I(2, 2, 2)$.', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (3013021, 301302, '$(2, 2, 2)$', TRUE, 1),
  (3013022, 301302, '$(4, 4, 4)$', FALSE, 2),
  (3013023, 301302, '$(1, -1, 3)$', FALSE, 3),
  (3013024, 301302, '$(2, 2, 3)$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (301303, 3013, 'Un vecteur directeur de la droite $\{ x = 1 + 2t,\ y = 3 - t,\ z = 2 + t \}$ est :', 'Les coefficients du paramètre $t$ donnent un vecteur directeur : ici $(2, -1, 1)$. Le triplet des constantes $(1, 3, 2)$ correspond, lui, à un point de la droite.', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (3013031, 301303, '$\vec{u}\,(2, -1, 1)$', TRUE, 1),
  (3013032, 301303, '$\vec{u}\,(1, 3, 2)$', FALSE, 2),
  (3013033, 301303, '$\vec{u}\,(2, 1, 1)$', FALSE, 3),
  (3013034, 301303, '$\vec{u}\,(1, -1, 1)$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (301304, 3013, 'Lequel de ces points appartient à la droite $\{ x = t,\ y = 1 + 2t,\ z = 2 - t \}$ ?', 'On cherche $t$ tel que les trois coordonnées soient cohérentes. Pour $(1, 3, 1)$ : $x = t = 1$ donne $y = 1 + 2 = 3$ et $z = 2 - 1 = 1$. Tout est vérifié, le point appartient à la droite.', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (3013041, 301304, '$(1, 3, 1)$', TRUE, 1),
  (3013042, 301304, '$(1, 3, 2)$', FALSE, 2),
  (3013043, 301304, '$(2, 3, 1)$', FALSE, 3),
  (3013044, 301304, '$(0, 1, 3)$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (301305, 3013, 'Quelle est l''équation cartésienne du plan $(xOy)$ ?', 'Le plan $(xOy)$ est formé des points de cote nulle : son équation est $z = 0$. De même, $(xOz)$ a pour équation $y = 0$ et $(yOz)$ a pour équation $x = 0$.', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (3013051, 301305, '$z = 0$', TRUE, 1),
  (3013052, 301305, '$x = 0$', FALSE, 2),
  (3013053, 301305, '$y = 0$', FALSE, 3),
  (3013054, 301305, '$x + y = 0$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (301306, 3013, 'Les plans d''équations $x + 2y - z + 1 = 0$ et $2x + 4y - 2z + 5 = 0$ sont :', 'Les triplets $(1, 2, -1)$ et $(2, 4, -2)$ sont proportionnels (rapport $2$) : les plans sont parallèles. Mais les constantes ne suivent pas ce rapport ($1 \times 2 = 2 \neq 5$), donc les plans ne sont pas confondus : ils sont strictement parallèles.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (3013061, 301306, 'strictement parallèles', TRUE, 1),
  (3013062, 301306, 'confondus', FALSE, 2),
  (3013063, 301306, 'sécants', FALSE, 3),
  (3013064, 301306, 'perpendiculaires', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (301307, 3013, 'Deux droites de l''espace dont les vecteurs directeurs ne sont pas colinéaires et qui n''ont aucun point commun sont :', 'Si les vecteurs directeurs ne sont pas colinéaires, les droites ne sont pas parallèles. En l''absence de point commun, elles ne sont pas non plus sécantes : elles sont non coplanaires (aucun plan ne les contient toutes les deux).', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (3013071, 301307, 'non coplanaires', TRUE, 1),
  (3013072, 301307, 'parallèles', FALSE, 2),
  (3013073, 301307, 'confondues', FALSE, 3),
  (3013074, 301307, 'sécantes', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (301308, 3013, 'Lorsque deux plans de l''espace sont sécants, leur intersection est :', 'Deux plans sont soit parallèles, soit sécants. Lorsqu''ils sont sécants, leur intersection est toujours une droite.', 8);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (3013081, 301308, 'une droite', TRUE, 1),
  (3013082, 301308, 'un point', FALSE, 2),
  (3013083, 301308, 'un plan', FALSE, 3),
  (3013084, 301308, 'l''ensemble vide', FALSE, 4);

-- denombrement
SET @l := (SELECT id FROM lecon WHERE slug = 'denombrement' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'maths-1bac'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (3014, NULL, @l, 'QCM — Denombrement', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (301401, 3014, 'Un code d''accès est formé de $4$ chiffres choisis de $0$ à $9$, avec répétitions autorisées. Combien de codes existe-t-il ?', 'C''est une $4$-liste d''un ensemble à $10$ éléments : $10^4 = 10\,000$.', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (3014011, 301401, '$10^4 = 10\,000$', TRUE, 1),
  (3014012, 301401, '$A_{10}^4 = 5040$', FALSE, 2),
  (3014013, 301401, '$\binom{10}{4} = 210$', FALSE, 3),
  (3014014, 301401, '$4! = 24$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (301402, 3014, 'On range $6$ livres distincts côte à côte sur une étagère. Combien de rangements possibles ?', 'C''est une permutation de $6$ objets : $6! = 720$.', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (3014021, 301402, '$6! = 720$', TRUE, 1),
  (3014022, 301402, '$2^6 = 64$', FALSE, 2),
  (3014023, 301402, '$\binom{6}{2} = 15$', FALSE, 3),
  (3014024, 301402, '$6^2 = 36$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (301403, 3014, 'Dans une course de $5$ chevaux, combien de tiercés dans l''ordre (les $3$ premiers, distincts et classés) peut-on former ?', 'Tirage avec ordre et sans répétition : $A_5^3 = 5 \times 4 \times 3 = 60$.', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (3014031, 301403, '$A_5^3 = 60$', TRUE, 1),
  (3014032, 301403, '$\binom{5}{3} = 10$', FALSE, 2),
  (3014033, 301403, '$5^3 = 125$', FALSE, 3),
  (3014034, 301403, '$3! = 6$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (301404, 3014, 'On choisit simultanément $2$ délégués parmi $10$ élèves. Combien de choix possibles ?', 'Tirage simultané, sans ordre : $\binom{10}{2} = \dfrac{10 \times 9}{2} = 45$.', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (3014041, 301404, '$\binom{10}{2} = 45$', TRUE, 1),
  (3014042, 301404, '$A_{10}^2 = 90$', FALSE, 2),
  (3014043, 301404, '$10^2 = 100$', FALSE, 3),
  (3014044, 301404, '$2^{10} = 1024$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (301405, 3014, 'Quelle situation se compte avec une combinaison $\binom{n}{p}$ ?', 'La combinaison compte les tirages simultanés, où l''ordre n''intervient pas et sans répétition.', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (3014051, 301405, 'Un tirage simultané de $p$ objets parmi $n$ (sans ordre)', TRUE, 1),
  (3014052, 301405, 'Un tirage successif sans remise de $p$ objets parmi $n$', FALSE, 2),
  (3014053, 301405, 'Un tirage successif avec remise de $p$ objets parmi $n$', FALSE, 3),
  (3014054, 301405, 'Le rangement de $n$ objets distincts en ligne', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (301406, 3014, 'Combien de parties (sous-ensembles) possède un ensemble à $5$ éléments ?', 'Le nombre de parties d''un ensemble à $n$ éléments est $2^n$, soit $2^5 = 32$.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (3014061, 301406, '$2^5 = 32$', TRUE, 1),
  (3014062, 301406, '$5! = 120$', FALSE, 2),
  (3014063, 301406, '$5^2 = 25$', FALSE, 3),
  (3014064, 301406, '$\binom{5}{2} = 10$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (301407, 3014, 'Dans le développement de $(a + b)^5$, quel est le coefficient de $a^2 b^3$ ?', 'Le coefficient de $a^p b^{n-p}$ dans $(a+b)^n$ est $\binom{n}{p}$, ici $\binom{5}{2} = 10$.', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (3014071, 301407, '$\binom{5}{2} = 10$', TRUE, 1),
  (3014072, 301407, '$\binom{5}{3} = 6$', FALSE, 2),
  (3014073, 301407, '$5$', FALSE, 3),
  (3014074, 301407, '$2^5 = 32$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (301408, 3014, 'D''après la relation de Pascal, à quoi est égale la somme $\binom{6}{2} + \binom{6}{3}$ ?', 'Relation de Pascal : $\binom{n-1}{p-1} + \binom{n-1}{p} = \binom{n}{p}$, donc $\binom{6}{2} + \binom{6}{3} = \binom{7}{3} = 35$.', 8);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (3014081, 301408, '$\binom{7}{3} = 35$', TRUE, 1),
  (3014082, 301408, '$\binom{6}{5} = 6$', FALSE, 2),
  (3014083, 301408, '$\binom{12}{5}$', FALSE, 3),
  (3014084, 301408, '$\binom{7}{5} = 21$', FALSE, 4);

-- produit-scalaire-espace
SET @l := (SELECT id FROM lecon WHERE slug = 'produit-scalaire-espace' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'maths-1bac'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (3015, NULL, @l, 'QCM — Le produit scalaire dans l''espace', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (301501, 3015, 'Pour $\vec{u}(1, -2, 3)$ et $\vec{v}(2, 1, -1)$, le produit scalaire $\vec{u} \cdot \vec{v}$ vaut :', '$\vec{u} \cdot \vec{v} = 1 \times 2 + (-2) \times 1 + 3 \times (-1) = 2 - 2 - 3 = -3$.', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (3015011, 301501, '$-3$', TRUE, 1),
  (3015012, 301501, '$3$', FALSE, 2),
  (3015013, 301501, '$1$', FALSE, 3),
  (3015014, 301501, '$7$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (301502, 3015, 'La norme du vecteur $\vec{u}(2, -1, 2)$ vaut :', '$\|\vec{u}\| = \sqrt{2^2 + (-1)^2 + 2^2} = \sqrt{9} = 3$.', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (3015021, 301502, '$3$', TRUE, 1),
  (3015022, 301502, '$5$', FALSE, 2),
  (3015023, 301502, '$\sqrt{5}$', FALSE, 3),
  (3015024, 301502, '$9$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (301503, 3015, 'Les vecteurs $\vec{u}(1, 2, -1)$ et $\vec{v}(3, -1, 1)$ sont :', '$\vec{u} \cdot \vec{v} = 3 - 2 - 1 = 0$ : un produit scalaire nul caractérise l''orthogonalité.', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (3015031, 301503, 'orthogonaux', TRUE, 1),
  (3015032, 301503, 'colinéaires', FALSE, 2),
  (3015033, 301503, 'égaux', FALSE, 3),
  (3015034, 301503, 'de même norme', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (301504, 3015, 'Un vecteur normal au plan d''équation $3x - 2y + z - 5 = 0$ est :', 'Les coefficients de $x$, $y$, $z$ donnent un vecteur normal $\vec{n}(3, -2, 1)$.', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (3015041, 301504, '$\vec{n}(3, -2, 1)$', TRUE, 1),
  (3015042, 301504, '$\vec{n}(3, -2, 1, -5)$', FALSE, 2),
  (3015043, 301504, '$\vec{n}(-5, 3, -2)$', FALSE, 3),
  (3015044, 301504, '$\vec{n}(1, 1, 1)$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (301505, 3015, 'Une équation cartésienne du plan passant par $A(1, 0, -1)$ et de vecteur normal $\vec{n}(2, 1, -1)$ est :', '$2(x-1) + 1(y-0) - 1(z+1) = 0$, soit $2x + y - z - 3 = 0$.', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (3015051, 301505, '$2x + y - z - 3 = 0$', TRUE, 1),
  (3015052, 301505, '$2x + y - z + 3 = 0$', FALSE, 2),
  (3015053, 301505, '$2x + y - z - 1 = 0$', FALSE, 3),
  (3015054, 301505, '$x + y - z - 3 = 0$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (301506, 3015, 'La distance du point $M(2, -1, 2)$ au plan d''équation $2x - y + 2z - 3 = 0$ vaut :', '$d = \dfrac{|2 \times 2 - (-1) + 2 \times 2 - 3|}{\sqrt{4 + 1 + 4}} = \dfrac{6}{3} = 2$.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (3015061, 301506, '$2$', TRUE, 1),
  (3015062, 301506, '$6$', FALSE, 2),
  (3015063, 301506, '$\dfrac{6}{\sqrt{5}}$', FALSE, 3),
  (3015064, 301506, '$3$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (301507, 3015, 'Une équation de la sphère de centre $\Omega(1, -2, 3)$ et de rayon $2$ est :', 'L''équation d''une sphère de centre $(\alpha, \beta, \gamma)$ et de rayon $r$ est $(x-\alpha)^2 + (y-\beta)^2 + (z-\gamma)^2 = r^2$, avec ici $r^2 = 4$.', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (3015071, 301507, '$(x-1)^2 + (y+2)^2 + (z-3)^2 = 4$', TRUE, 1),
  (3015072, 301507, '$(x-1)^2 + (y+2)^2 + (z-3)^2 = 2$', FALSE, 2),
  (3015073, 301507, '$(x+1)^2 + (y-2)^2 + (z+3)^2 = 4$', FALSE, 3),
  (3015074, 301507, '$(x-1)^2 + (y-2)^2 + (z-3)^2 = 4$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (301508, 3015, 'L''ensemble des points $M$ de l''espace tels que $\overrightarrow{MA} \cdot \overrightarrow{MB} = 0$ est :', '$\overrightarrow{MA} \cdot \overrightarrow{MB} = 0$ caractérise la sphère de diamètre $[AB]$.', 8);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (3015081, 301508, 'la sphère de diamètre $[AB]$', TRUE, 1),
  (3015082, 301508, 'le plan médiateur de $[AB]$', FALSE, 2),
  (3015083, 301508, 'la droite $(AB)$', FALSE, 3),
  (3015084, 301508, 'la sphère de centre $A$ passant par $B$', FALSE, 4);

-- arithmetique-z
SET @l := (SELECT id FROM lecon WHERE slug = 'arithmetique-z' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'maths-1bac'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (3016, NULL, @l, 'QCM — Arithmetique dans Z', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (301601, 3016, 'Pour deux entiers $a$ et $b$, on a $b \mid a$ lorsque :', 'Par définition, $b \mid a$ signifie qu''il existe un entier $k$ tel que $a = bk$.', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (3016011, 301601, 'il existe $k \in \mathbb{Z}$ tel que $a = bk$', TRUE, 1),
  (3016012, 301601, '$a < b$', FALSE, 2),
  (3016013, 301601, '$a + b = 0$', FALSE, 3),
  (3016014, 301601, '$a$ et $b$ sont premiers', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (301602, 3016, 'Quel est le reste de la division euclidienne de $47$ par $5$ ?', 'On a $47 = 5 \times 9 + 2$ avec $0 \le 2 < 5$, donc le reste est $2$.', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (3016021, 301602, '$2$', TRUE, 1),
  (3016022, 301602, '$9$', FALSE, 2),
  (3016023, 301602, '$5$', FALSE, 3),
  (3016024, 301602, '$7$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (301603, 3016, 'Dans la division euclidienne $a = bq + r$ d''un entier par $b \neq 0$, le reste $r$ vérifie :', 'C''est l''encadrement $0 \le r < |b|$ qui assure l''unicité du couple $(q, r)$.', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (3016031, 301603, '$0 \le r < |b|$', TRUE, 1),
  (3016032, 301603, '$0 < r \le |b|$', FALSE, 2),
  (3016033, 301603, '$r > |b|$', FALSE, 3),
  (3016034, 301603, '$r$ peut être quelconque', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (301604, 3016, 'Parmi les nombres suivants, lequel est premier ?', '$53$ n''a que $1$ et $53$ comme diviseurs. En revanche $51 = 3 \times 17$, $57 = 3 \times 19$ et $91 = 7 \times 13$.', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (3016041, 301604, '$53$', TRUE, 1),
  (3016042, 301604, '$51$', FALSE, 2),
  (3016043, 301604, '$57$', FALSE, 3),
  (3016044, 301604, '$91$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (301605, 3016, 'Quelle est la décomposition en facteurs premiers de $360$ ?', 'Par divisions successives, $360 = 2^3 \times 3^2 \times 5$.', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (3016051, 301605, '$2^3 \times 3^2 \times 5$', TRUE, 1),
  (3016052, 301605, '$2^2 \times 3^2 \times 5$', FALSE, 2),
  (3016053, 301605, '$2^3 \times 3 \times 5^2$', FALSE, 3),
  (3016054, 301605, '$2^4 \times 3 \times 5$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (301606, 3016, 'Combien de diviseurs positifs possède $360 = 2^3 \times 3^2 \times 5$ ?', 'Le nombre de diviseurs est $(3+1)(2+1)(1+1) = 4 \times 3 \times 2 = 24$.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (3016061, 301606, '$24$', TRUE, 1),
  (3016062, 301606, '$6$', FALSE, 2),
  (3016063, 301606, '$12$', FALSE, 3),
  (3016064, 301606, '$360$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (301607, 3016, 'Que vaut $\text{pgcd}(252, 105)$ par l''algorithme d''Euclide ?', '$252 = 105 \times 2 + 42$, $105 = 42 \times 2 + 21$, $42 = 21 \times 2 + 0$ : le dernier reste non nul est $21$.', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (3016071, 301607, '$21$', TRUE, 1),
  (3016072, 301607, '$3$', FALSE, 2),
  (3016073, 301607, '$42$', FALSE, 3),
  (3016074, 301607, '$7$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (301608, 3016, 'Pour deux entiers naturels non nuls $a$ et $b$, le produit $\text{pgcd}(a, b) \times \text{ppcm}(a, b)$ est égal à :', 'La relation fondamentale donne $\text{pgcd}(a, b) \times \text{ppcm}(a, b) = a \times b$.', 8);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (3016081, 301608, '$a \times b$', TRUE, 1),
  (3016082, 301608, '$a + b$', FALSE, 2),
  (3016083, 301608, '$a - b$', FALSE, 3),
  (3016084, 301608, '$1$', FALSE, 4);

-- produit-vectoriel
SET @l := (SELECT id FROM lecon WHERE slug = 'produit-vectoriel' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'maths-1bac'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (3017, NULL, @l, 'QCM — Le produit vectoriel', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (301701, 3017, 'Dans un repère orthonormé direct $(O,\vec{\imath},\vec{\jmath},\vec{k})$, le produit vectoriel $\vec{\imath}\wedge\vec{\jmath}$ est égal à :', 'Le caractère direct du repère donne $\vec{\imath}\wedge\vec{\jmath}=\vec{k}$.', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (3017011, 301701, '$\vec{k}$', TRUE, 1),
  (3017012, 301701, '$-\vec{k}$', FALSE, 2),
  (3017013, 301701, '$\vec{\imath}$', FALSE, 3),
  (3017014, 301701, '$\vec{0}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (301702, 3017, 'Soient $\vec{u}(1,0,2)$ et $\vec{v}(0,1,1)$. Les coordonnées de $\vec{u}\wedge\vec{v}$ sont :', '$\vec{u}\wedge\vec{v}=(0\cdot 1-2\cdot 1,\ 2\cdot 0-1\cdot 1,\ 1\cdot 1-0\cdot 0)=(-2,-1,1)$.', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (3017021, 301702, '$(-2,-1,1)$', TRUE, 1),
  (3017022, 301702, '$(2,1,-1)$', FALSE, 2),
  (3017023, 301702, '$(-2,1,1)$', FALSE, 3),
  (3017024, 301702, '$(0,0,3)$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (301703, 3017, 'Deux vecteurs non nuls $\vec{u}$ et $\vec{v}$ sont colinéaires si et seulement si :', 'Le produit vectoriel est nul exactement lorsque les vecteurs sont colinéaires.', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (3017031, 301703, '$\vec{u}\wedge\vec{v}=\vec{0}$', TRUE, 1),
  (3017032, 301703, '$\vec{u}\cdot\vec{v}=0$', FALSE, 2),
  (3017033, 301703, '$\vec{u}\wedge\vec{v}=\vec{u}$', FALSE, 3),
  (3017034, 301703, '$\|\vec{u}\wedge\vec{v}\|=1$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (301704, 3017, 'Pour tous vecteurs $\vec{u}$ et $\vec{v}$, le vecteur $\vec{v}\wedge\vec{u}$ est égal à :', 'Le produit vectoriel est antisymétrique : $\vec{v}\wedge\vec{u}=-(\vec{u}\wedge\vec{v})$.', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (3017041, 301704, '$-(\vec{u}\wedge\vec{v})$', TRUE, 1),
  (3017042, 301704, '$\vec{u}\wedge\vec{v}$', FALSE, 2),
  (3017043, 301704, '$\vec{0}$', FALSE, 3),
  (3017044, 301704, '$\vec{u}\cdot\vec{v}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (301705, 3017, 'Si $\theta$ est l''angle géométrique entre $\vec{u}$ et $\vec{v}$, alors $\|\vec{u}\wedge\vec{v}\|$ vaut :', 'Par définition, $\|\vec{u}\wedge\vec{v}\|=\|\vec{u}\|\,\|\vec{v}\|\sin\theta$.', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (3017051, 301705, '$\|\vec{u}\|\,\|\vec{v}\|\sin\theta$', TRUE, 1),
  (3017052, 301705, '$\|\vec{u}\|\,\|\vec{v}\|\cos\theta$', FALSE, 2),
  (3017053, 301705, '$\|\vec{u}\|+\|\vec{v}\|$', FALSE, 3),
  (3017054, 301705, '$\|\vec{u}\|\,\|\vec{v}\|$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (301706, 3017, 'L''aire du triangle $ABC$ est égale à :', 'L''aire du triangle est la moitié de celle du parallélogramme, donc $\frac{1}{2}\|\overrightarrow{AB}\wedge\overrightarrow{AC}\|$.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (3017061, 301706, '$\dfrac{1}{2}\|\overrightarrow{AB}\wedge\overrightarrow{AC}\|$', TRUE, 1),
  (3017062, 301706, '$\|\overrightarrow{AB}\wedge\overrightarrow{AC}\|$', FALSE, 2),
  (3017063, 301706, '$\dfrac{1}{2}\,\overrightarrow{AB}\cdot\overrightarrow{AC}$', FALSE, 3),
  (3017064, 301706, '$\|\overrightarrow{AB}\|\,\|\overrightarrow{AC}\|$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (301707, 3017, 'Si $\overrightarrow{AB}\wedge\overrightarrow{AC}=(2,-2,1)$, l''aire du triangle $ABC$ vaut :', 'La norme vaut $\sqrt{4+4+1}=3$, et l''aire est la moitié : $\frac{3}{2}$.', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (3017071, 301707, '$\dfrac{3}{2}$', TRUE, 1),
  (3017072, 301707, '$3$', FALSE, 2),
  (3017073, 301707, '$\dfrac{9}{2}$', FALSE, 3),
  (3017074, 301707, '$\sqrt{3}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (301708, 3017, 'Trois vecteurs $\vec{u}$, $\vec{v}$, $\vec{w}$ sont coplanaires si et seulement si :', 'Le produit mixte $(\vec{u}\wedge\vec{v})\cdot\vec{w}$ est nul exactement lorsque les trois vecteurs sont coplanaires.', 8);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (3017081, 301708, '$(\vec{u}\wedge\vec{v})\cdot\vec{w}=0$', TRUE, 1),
  (3017082, 301708, '$(\vec{u}\wedge\vec{v})\cdot\vec{w}=1$', FALSE, 2),
  (3017083, 301708, '$\vec{u}\wedge\vec{v}=\vec{0}$', FALSE, 3),
  (3017084, 301708, '$\vec{u}\cdot\vec{v}=0$', FALSE, 4);

