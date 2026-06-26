-- Maths 1 Bac : QCM des 17 chapitres (quiz 3001-3017).
SET SESSION sql_mode = CONCAT(@@sql_mode, ',NO_BACKSLASH_ESCAPES');

-- logique
SET @l := (SELECT id FROM lecon WHERE slug = 'logique' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'maths-1bac'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (6101, NULL, @l, 'QCM — Notions de logique', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (610101, 6101, 'Laquelle de ces phrases est une proposition mathématique (vraie ou fausse) ?', 'Une proposition est un énoncé qui est soit vrai, soit faux. « $7$ est un nombre premier » est vraie. Une question, un ordre ou un prédicat dont la valeur dépend d''une variable libre ($x>0$) ne sont pas des propositions.', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6101011, 610101, '$7$ est un nombre premier', TRUE, 1),
  (6101012, 610101, '$x > 0$', FALSE, 2),
  (6101013, 610101, 'Quel est le plus grand entier ?', FALSE, 3),
  (6101014, 610101, 'Trace une droite.', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (610102, 6101, 'Pour quelles valeurs de $P$ et $Q$ la conjonction $P \wedge Q$ est-elle vraie ?', 'La conjonction « $P$ et $Q$ » est vraie uniquement lorsque $P$ et $Q$ sont toutes les deux vraies.', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6101021, 610102, 'Lorsque $P$ et $Q$ sont toutes les deux vraies', TRUE, 1),
  (6101022, 610102, 'Lorsque l''une au moins est vraie', FALSE, 2),
  (6101023, 610102, 'Lorsque $P$ est vraie', FALSE, 3),
  (6101024, 610102, 'Lorsque $P$ et $Q$ sont toutes les deux fausses', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (610103, 6101, 'L''implication $P \Rightarrow Q$ est fausse :', 'Une implication n''est fausse que dans un seul cas : hypothèse vraie et conclusion fausse, c''est-à-dire $P$ vraie et $Q$ fausse. Dans tous les autres cas elle est vraie.', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6101031, 610103, 'uniquement lorsque $P$ est vraie et $Q$ est fausse', TRUE, 1),
  (6101032, 610103, 'uniquement lorsque $P$ est fausse et $Q$ est vraie', FALSE, 2),
  (6101033, 610103, 'lorsque $P$ et $Q$ sont fausses', FALSE, 3),
  (6101034, 610103, 'lorsque $P$ et $Q$ sont vraies', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (610104, 6101, 'Quelle est la négation de la proposition « $\forall x \in \mathbb{R},\ x^2 \ge 1$ » ?', 'Pour nier une proposition quantifiée, on échange le quantificateur ($\forall$ devient $\exists$) et on nie le prédicat : $x^2 \ge 1$ devient $x^2 < 1$.', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6101041, 610104, '$\exists x \in \mathbb{R},\ x^2 < 1$', TRUE, 1),
  (6101042, 610104, '$\forall x \in \mathbb{R},\ x^2 < 1$', FALSE, 2),
  (6101043, 610104, '$\exists x \in \mathbb{R},\ x^2 \ge 1$', FALSE, 3),
  (6101044, 610104, '$\forall x \in \mathbb{R},\ x^2 \le 1$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (610105, 6101, 'D''après les lois de De Morgan, la négation de « $P$ ou $Q$ » est :', 'La négation transforme la disjonction en conjonction des négations : $\overline{P \vee Q} = \overline{P} \wedge \overline{Q}$.', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6101051, 610105, '$\overline{P} \wedge \overline{Q}$', TRUE, 1),
  (6101052, 610105, '$\overline{P} \vee \overline{Q}$', FALSE, 2),
  (6101053, 610105, '$P \wedge Q$', FALSE, 3),
  (6101054, 610105, '$\overline{P} \Rightarrow \overline{Q}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (610106, 6101, 'Quelle est la contraposée de l''implication « $P \Rightarrow Q$ » ?', 'La contraposée de $P \Rightarrow Q$ est $\overline{Q} \Rightarrow \overline{P}$ ; elle a toujours la même valeur de vérité que l''implication initiale. À ne pas confondre avec la réciproque $Q \Rightarrow P$.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6101061, 610106, '$\overline{Q} \Rightarrow \overline{P}$', TRUE, 1),
  (6101062, 610106, '$Q \Rightarrow P$', FALSE, 2),
  (6101063, 610106, '$\overline{P} \Rightarrow \overline{Q}$', FALSE, 3),
  (6101064, 610106, '$P \Rightarrow \overline{Q}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (610107, 6101, 'Pour montrer qu''une proposition « $\forall x \in E,\ P(x)$ » est fausse, il suffit de :', 'Il suffit d''exhiber un seul élément $x_0$ pour lequel $P(x_0)$ est fausse : c''est un contre-exemple. Inutile de tester tous les éléments.', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6101071, 610107, 'trouver un contre-exemple, c''est-à-dire un $x_0$ tel que $P(x_0)$ est fausse', TRUE, 1),
  (6101072, 610107, 'vérifier que $P(x)$ est fausse pour tous les $x$ de $E$', FALSE, 2),
  (6101073, 610107, 'trouver un $x_0$ tel que $P(x_0)$ est vraie', FALSE, 3),
  (6101074, 610107, 'faire une démonstration par récurrence', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (610108, 6101, 'Dans une démonstration par récurrence, l''étape d''hérédité consiste à :', 'L''hérédité consiste à supposer $P(n)$ vraie pour un entier $n$ fixé (hypothèse de récurrence) et à en déduire $P(n+1)$. L''initialisation, elle, vérifie le premier rang.', 8);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6101081, 610108, 'supposer $P(n)$ vraie et démontrer $P(n+1)$', TRUE, 1),
  (6101082, 610108, 'vérifier que $P(n_0)$ est vraie au premier rang', FALSE, 2),
  (6101083, 610108, 'supposer $P(n+1)$ vraie et démontrer $P(n)$', FALSE, 3),
  (6101084, 610108, 'vérifier $P(n)$ pour toutes les valeurs de $n$', FALSE, 4);

-- ensembles-applications
SET @l := (SELECT id FROM lecon WHERE slug = 'ensembles-applications' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'maths-1bac'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (6102, NULL, @l, 'QCM — Ensembles et applications', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (610201, 6102, 'Avec $A = \{1, 2, 3\}$ et $B = \{2, 3, 4, 5\}$, l''intersection $A \cap B$ vaut :', '$A \cap B$ contient les éléments communs aux deux ensembles : $2$ et $3$.', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6102011, 610201, '$\{2, 3\}$', TRUE, 1),
  (6102012, 610201, '$\{1, 2, 3, 4, 5\}$', FALSE, 2),
  (6102013, 610201, '$\{1\}$', FALSE, 3),
  (6102014, 610201, '$\{4, 5\}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (610202, 6102, 'Si un ensemble $E$ possède $4$ éléments, alors $\mathcal{P}(E)$ possède :', 'Pour un ensemble fini à $n$ éléments, $\operatorname{card}(\mathcal{P}(E)) = 2^n = 2^4 = 16$.', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6102021, 610202, '$16$ éléments', TRUE, 1),
  (6102022, 610202, '$8$ éléments', FALSE, 2),
  (6102023, 610202, '$4$ éléments', FALSE, 3),
  (6102024, 610202, '$2$ éléments', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (610203, 6102, 'Pour deux parties $A$ et $B$ de $E$, la loi de De Morgan donne $\overline{A \cap B} =$ :', 'Le complémentaire d''une intersection est la réunion des complémentaires.', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6102031, 610203, '$\overline{A} \cup \overline{B}$', TRUE, 1),
  (6102032, 610203, '$\overline{A} \cap \overline{B}$', FALSE, 2),
  (6102033, 610203, '$A \cup B$', FALSE, 3),
  (6102034, 610203, '$\overline{A} \setminus \overline{B}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (610204, 6102, 'Si $E$ a $3$ éléments et $F$ a $5$ éléments, alors $E \times F$ a :', 'Le produit cartésien a $\operatorname{card}(E) \times \operatorname{card}(F) = 3 \times 5 = 15$ couples.', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6102041, 610204, '$15$ éléments', TRUE, 1),
  (6102042, 610204, '$8$ éléments', FALSE, 2),
  (6102043, 610204, '$2$ éléments', FALSE, 3),
  (6102044, 610204, '$125$ éléments', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (610205, 6102, 'Pour deux parties $A$ et $B$ de $E$, la différence $A \setminus B$ est égale à :', '$A \setminus B$ regroupe les éléments de $A$ qui ne sont pas dans $B$, soit $A \cap \overline{B}$.', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6102051, 610205, '$A \cap \overline{B}$', TRUE, 1),
  (6102052, 610205, '$A \cup \overline{B}$', FALSE, 2),
  (6102053, 610205, '$\overline{A} \cap B$', FALSE, 3),
  (6102054, 610205, '$A \cap B$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (610206, 6102, 'L''application $f : \mathbb{R} \to \mathbb{R}$, $f(x) = 2x - 3$ est bijective. Sa réciproque est :', 'On résout $y = 2x - 3$, d''où $x = \dfrac{y + 3}{2}$.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6102061, 610206, '$f^{-1}(y) = \dfrac{y + 3}{2}$', TRUE, 1),
  (6102062, 610206, '$f^{-1}(y) = \dfrac{y - 3}{2}$', FALSE, 2),
  (6102063, 610206, '$f^{-1}(y) = 2y + 3$', FALSE, 3),
  (6102064, 610206, '$f^{-1}(y) = \dfrac{1}{2x - 3}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (610207, 6102, 'L''application $g : \mathbb{R} \to \mathbb{R}$ définie par $g(x) = x^2$ est :', '$g(-1) = g(1) = 1$ : non injective ; $-1$ n''a aucun antécédent : non surjective.', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6102071, 610207, 'ni injective ni surjective', TRUE, 1),
  (6102072, 610207, 'injective et surjective', FALSE, 2),
  (6102073, 610207, 'injective mais non surjective', FALSE, 3),
  (6102074, 610207, 'surjective mais non injective', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (610208, 6102, 'Avec $f(x) = x + 2$ et $g(x) = 3x$, la composée $(g \circ f)(x)$ vaut :', '$(g \circ f)(x) = g(f(x)) = g(x + 2) = 3(x + 2) = 3x + 6$.', 8);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6102081, 610208, '$3x + 6$', TRUE, 1),
  (6102082, 610208, '$3x + 2$', FALSE, 2),
  (6102083, 610208, '$3x + 5$', FALSE, 3),
  (6102084, 610208, '$x + 6$', FALSE, 4);

-- generalites-fonctions
SET @l := (SELECT id FROM lecon WHERE slug = 'generalites-fonctions' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'maths-1bac'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (6103, NULL, @l, 'QCM — Generalites sur les fonctions', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (610301, 6103, 'Quel est l''ensemble de définition de la fonction $f(x) = \dfrac{\sqrt{x-2}}{x-5}$ ?', 'Il faut $x - 2 \ge 0$ (donc $x \ge 2$) pour la racine, et $x - 5 \neq 0$ (donc $x \neq 5$) pour le dénominateur. On obtient $[2, 5[ \cup \,]5, +\infty[$.', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6103011, 610301, '$[2, 5[ \,\cup\, ]5, +\infty[$', TRUE, 1),
  (6103012, 610301, '$[2, +\infty[$', FALSE, 2),
  (6103013, 610301, '$\mathbb{R} \setminus \{5\}$', FALSE, 3),
  (6103014, 610301, '$]2, 5[ \,\cup\, ]5, +\infty[$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (610302, 6103, 'La fonction définie sur $\mathbb{R}$ par $f(x) = x^3 - 4x$ est :', 'Le domaine $\mathbb{R}$ est symétrique. $f(-x) = (-x)^3 - 4(-x) = -x^3 + 4x = -(x^3 - 4x) = -f(x)$ : la fonction est impaire.', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6103021, 610302, 'impaire', TRUE, 1),
  (6103022, 610302, 'paire', FALSE, 2),
  (6103023, 610302, 'à la fois paire et impaire', FALSE, 3),
  (6103024, 610302, 'ni paire ni impaire', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (610303, 6103, 'Quelle est la plus petite période strictement positive de la fonction $f(x) = \cos(2x)$ ?', 'On cherche $T > 0$ tel que $2(x + T) = 2x + 2\pi$, ce qui donne $T = \pi$. On vérifie : $\cos(2(x+\pi)) = \cos(2x + 2\pi) = \cos(2x)$.', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6103031, 610303, '$\pi$', TRUE, 1),
  (6103032, 610303, '$2\pi$', FALSE, 2),
  (6103033, 610303, '$\dfrac{\pi}{2}$', FALSE, 3),
  (6103034, 610303, '$4\pi$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (610304, 6103, 'Pour $a \neq b$ dans $]0, +\infty[$, le taux d''accroissement de $g(x) = \dfrac{1}{x}$ vaut $-\dfrac{1}{ab}$. On en déduit que $g$ est, sur $]0, +\infty[$ :', 'Pour $a, b > 0$, le produit $ab > 0$, donc le taux $-\dfrac{1}{ab}$ est strictement négatif : la fonction renverse l''ordre, elle est strictement décroissante.', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6103041, 610304, 'strictement décroissante', TRUE, 1),
  (6103042, 610304, 'strictement croissante', FALSE, 2),
  (6103043, 610304, 'constante', FALSE, 3),
  (6103044, 610304, 'croissante puis décroissante', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (610305, 6103, 'La fonction $f(x) = (x - 3)^2 + 2$ admet sur $\mathbb{R}$ :', 'Comme $(x-3)^2 \ge 0$, on a $f(x) \ge 2$ pour tout $x$, avec égalité en $x = 3$. La fonction admet donc un minimum égal à $2$, atteint en $x = 3$.', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6103051, 610305, 'un minimum égal à $2$, atteint en $x = 3$', TRUE, 1),
  (6103052, 610305, 'un maximum égal à $2$, atteint en $x = 3$', FALSE, 2),
  (6103053, 610305, 'un minimum égal à $3$, atteint en $x = 2$', FALSE, 3),
  (6103054, 610305, 'aucun extremum', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (610306, 6103, 'Pour tout réel $x$, laquelle des inégalités suivantes est toujours vraie ?', 'On a $x^2 + 1 - 2x = (x - 1)^2 \ge 0$, donc $x^2 + 1 \ge 2x$ pour tout réel $x$, avec égalité en $x = 1$.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6103061, 610306, '$x^2 + 1 \ge 2x$', TRUE, 1),
  (6103062, 610306, '$x^2 + 1 \le 2x$', FALSE, 2),
  (6103063, 610306, '$x^2 \ge 2x + 1$', FALSE, 3),
  (6103064, 610306, '$x^2 + 1 \ge 2x^2$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (610307, 6103, 'Que peut-on affirmer de la fonction $f(x) = \sin x$ sur $\mathbb{R}$ ?', 'Pour tout réel $x$, $-1 \le \sin x \le 1$ : la fonction est minorée par $-1$ et majorée par $1$, donc bornée.', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6103071, 610307, 'elle est bornée', TRUE, 1),
  (6103072, 610307, 'elle est majorée mais non minorée', FALSE, 2),
  (6103073, 610307, 'elle est minorée mais non majorée', FALSE, 3),
  (6103074, 610307, 'elle n''est ni majorée ni minorée', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (610308, 6103, 'On pose $f(x) = x^2$ et $g(x) = x + 1$. Quelle est l''expression de $(f \circ g)(x)$ ?', 'Par définition $(f \circ g)(x) = f(g(x)) = f(x + 1) = (x + 1)^2$. À ne pas confondre avec $(g \circ f)(x) = x^2 + 1$.', 8);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6103081, 610308, '$(x + 1)^2$', TRUE, 1),
  (6103082, 610308, '$x^2 + 1$', FALSE, 2),
  (6103083, 610308, '$x^2 (x + 1)$', FALSE, 3),
  (6103084, 610308, '$x^2 + x + 1$', FALSE, 4);

-- barycentre
SET @l := (SELECT id FROM lecon WHERE slug = 'barycentre' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'maths-1bac'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (6104, NULL, @l, 'QCM — Le barycentre dans le plan', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (610401, 6104, 'Soit $G$ le barycentre de $\{(A,1),(B,3)\}$. Alors $\vec{AG}$ est égal à :', 'On a $\vec{AG}=\dfrac{\beta}{\alpha+\beta}\,\vec{AB}=\dfrac{3}{1+3}\,\vec{AB}=\dfrac{3}{4}\,\vec{AB}$.', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6104011, 610401, '$\dfrac{3}{4}\,\vec{AB}$', TRUE, 1),
  (6104012, 610401, '$\dfrac{1}{4}\,\vec{AB}$', FALSE, 2),
  (6104013, 610401, '$\dfrac{1}{3}\,\vec{AB}$', FALSE, 3),
  (6104014, 610401, '$3\,\vec{AB}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (610402, 6104, 'Le barycentre du système $\{(A,\alpha),(B,\beta)\}$ existe si et seulement si :', 'L''existence et l''unicité du barycentre sont garanties par la condition $\alpha+\beta\neq 0$.', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6104021, 610402, '$\alpha+\beta\neq 0$', TRUE, 1),
  (6104022, 610402, '$\alpha\neq 0$ et $\beta\neq 0$', FALSE, 2),
  (6104023, 610402, '$\alpha=\beta$', FALSE, 3),
  (6104024, 610402, '$\alpha\times\beta\neq 0$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (610403, 6104, 'Soit $G$ le barycentre de $\{(A,2),(B,3)\}$. Pour tout point $M$ du plan, $2\,\vec{MA}+3\,\vec{MB}$ est égal à :', 'La relation fondamentale de réduction donne $\alpha\,\vec{MA}+\beta\,\vec{MB}=(\alpha+\beta)\,\vec{MG}=5\,\vec{MG}$.', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6104031, 610403, '$5\,\vec{MG}$', TRUE, 1),
  (6104032, 610403, '$\vec{MG}$', FALSE, 2),
  (6104033, 610403, '$6\,\vec{MG}$', FALSE, 3),
  (6104034, 610403, '$5\,\vec{GM}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (610404, 6104, 'Dans un repère, $A(2,3)$ et $B(4,7)$. Les coordonnées du barycentre $G$ de $\{(A,1),(B,3)\}$ sont :', '$x_G=\dfrac{1\cdot 2+3\cdot 4}{4}=\dfrac{14}{4}=\dfrac{7}{2}$ et $y_G=\dfrac{1\cdot 3+3\cdot 7}{4}=\dfrac{24}{4}=6$.', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6104041, 610404, '$\left(\dfrac{7}{2},\,6\right)$', TRUE, 1),
  (6104042, 610404, '$(3,\,5)$', FALSE, 2),
  (6104043, 610404, '$\left(\dfrac{7}{2},\,5\right)$', FALSE, 3),
  (6104044, 610404, '$(6,\,10)$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (610405, 6104, 'Soit $H$ le barycentre de $\{(A,1),(B,2)\}$. Le barycentre $G$ de $\{(A,1),(B,2),(C,3)\}$ est égal à :', 'Par associativité, on remplace $A$ et $B$ par $H$ affecté du poids $1+2=3$ : $G=\text{bar}\,\{(H,3),(C,3)\}$.', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6104051, 610405, '$\text{bar}\,\{(H,3),(C,3)\}$', TRUE, 1),
  (6104052, 610405, '$\text{bar}\,\{(H,1),(C,3)\}$', FALSE, 2),
  (6104053, 610405, '$\text{bar}\,\{(H,2),(C,3)\}$', FALSE, 3),
  (6104054, 610405, '$\text{bar}\,\{(H,3),(C,1)\}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (610406, 6104, 'Soit $G$ le centre de gravité du triangle $ABC$ et $A''$ le milieu de $[BC]$. Alors $\vec{AG}$ est égal à :', 'Le centre de gravité se situe aux deux tiers de la médiane à partir du sommet : $\vec{AG}=\dfrac{2}{3}\,\vec{AA''}$.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6104061, 610406, '$\dfrac{2}{3}\,\vec{AA''}$', TRUE, 1),
  (6104062, 610406, '$\dfrac{1}{2}\,\vec{AA''}$', FALSE, 2),
  (6104063, 610406, '$\dfrac{1}{3}\,\vec{AA''}$', FALSE, 3),
  (6104064, 610406, '$\dfrac{3}{2}\,\vec{AA''}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (610407, 6104, 'L''isobarycentre de deux points distincts $A$ et $B$ est :', 'L''isobarycentre de $A$ et $B$ est $\text{bar}\,\{(A,1),(B,1)\}$, c''est-à-dire le milieu de $[AB]$.', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6104071, 610407, 'le milieu de $[AB]$', TRUE, 1),
  (6104072, 610407, 'le point $A$', FALSE, 2),
  (6104073, 610407, 'un point situé hors de la droite $(AB)$', FALSE, 3),
  (6104074, 610407, 'le point tel que $\vec{AG}=\dfrac{1}{3}\,\vec{AB}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (610408, 6104, 'Dans un repère, $A(0,0)$, $B(3,0)$ et $C(0,6)$. Les coordonnées du centre de gravité du triangle $ABC$ sont :', 'Le centre de gravité est l''isobarycentre : $x_G=\dfrac{0+3+0}{3}=1$ et $y_G=\dfrac{0+0+6}{3}=2$.', 8);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6104081, 610408, '$(1,\,2)$', TRUE, 1),
  (6104082, 610408, '$(3,\,6)$', FALSE, 2),
  (6104083, 610408, '$\left(\dfrac{3}{2},\,3\right)$', FALSE, 3),
  (6104084, 610408, '$(1,\,3)$', FALSE, 4);

-- produit-scalaire-plan
SET @l := (SELECT id FROM lecon WHERE slug = 'produit-scalaire-plan' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'maths-1bac'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (6105, NULL, @l, 'QCM — Le produit scalaire dans le plan', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (610501, 6105, 'Dans un repère orthonormé, $\vec{u}(3\,;-1)$ et $\vec{v}(2\,;4)$. Le produit scalaire $\vec{u}\cdot\vec{v}$ vaut :', '$\vec{u}\cdot\vec{v} = 3\times 2 + (-1)\times 4 = 6 - 4 = 2$.', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6105011, 610501, '$2$', TRUE, 1),
  (6105012, 610501, '$10$', FALSE, 2),
  (6105013, 610501, '$-2$', FALSE, 3),
  (6105014, 610501, '$8$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (610502, 6105, 'On a $\|\vec{u}\| = 4$, $\|\vec{v}\| = 3$ et l''angle $(\vec{u},\vec{v}) = 60°$. Alors $\vec{u}\cdot\vec{v}$ vaut :', '$\vec{u}\cdot\vec{v} = 4\times 3\times \cos(60°) = 12\times \tfrac{1}{2} = 6$.', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6105021, 610502, '$6$', TRUE, 1),
  (6105022, 610502, '$12$', FALSE, 2),
  (6105023, 610502, '$3$', FALSE, 3),
  (6105024, 610502, '$24$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (610503, 6105, 'Pour quelle valeur de $k$ les vecteurs $\vec{u}(2\,;3)$ et $\vec{v}(k\,;-2)$ sont-ils orthogonaux ?', 'Orthogonaux $\iff 2k + 3\times(-2) = 0 \iff 2k - 6 = 0 \iff k = 3$.', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6105031, 610503, '$k = 3$', TRUE, 1),
  (6105032, 610503, '$k = -3$', FALSE, 2),
  (6105033, 610503, '$k = 6$', FALSE, 3),
  (6105034, 610503, '$k = 4$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (610504, 6105, 'Dans un repère orthonormé, $A(1\,;1)$ et $B(4\,;5)$. La distance $AB$ vaut :', '$AB = \sqrt{(4-1)^2 + (5-1)^2} = \sqrt{9 + 16} = \sqrt{25} = 5$.', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6105041, 610504, '$5$', TRUE, 1),
  (6105042, 610504, '$7$', FALSE, 2),
  (6105043, 610504, '$25$', FALSE, 3),
  (6105044, 610504, '$\sqrt{7}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (610505, 6105, 'Dans un triangle $ABC$, $AB = 3$, $AC = 5$ et $\widehat{A} = 60°$. La longueur $BC$ vaut :', 'Al-Kashi : $BC^2 = 3^2 + 5^2 - 2\times 3\times 5\times \cos(60°) = 9 + 25 - 15 = 19$, donc $BC = \sqrt{19}$.', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6105051, 610505, '$\sqrt{19}$', TRUE, 1),
  (6105052, 610505, '$\sqrt{34}$', FALSE, 2),
  (6105053, 610505, '$7$', FALSE, 3),
  (6105054, 610505, '$8$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (610506, 6105, 'Dans un triangle $ABC$, $AB = 4$, $AC = 6$, $BC = 8$ et $I$ est le milieu de $[BC]$. La longueur $AI$ vaut :', 'Théorème de la médiane : $AI^2 = \dfrac{AB^2 + AC^2}{2} - \dfrac{BC^2}{4} = \dfrac{16+36}{2} - \dfrac{64}{4} = 26 - 16 = 10$, donc $AI = \sqrt{10}$.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6105061, 610506, '$\sqrt{10}$', TRUE, 1),
  (6105062, 610506, '$\sqrt{26}$', FALSE, 2),
  (6105063, 610506, '$10$', FALSE, 3),
  (6105064, 610506, '$\sqrt{6}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (610507, 6105, 'Une équation cartésienne de la droite passant par $A(1\,;2)$ et de vecteur normal $\vec{n}(2\,;-1)$ est :', '$2(x-1) - 1(y-2) = 0 \iff 2x - y = 0$.', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6105071, 610507, '$2x - y = 0$', TRUE, 1),
  (6105072, 610507, '$2x + y = 0$', FALSE, 2),
  (6105073, 610507, '$x + 2y = 0$', FALSE, 3),
  (6105074, 610507, '$2x - y - 4 = 0$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (610508, 6105, 'L''équation du cercle de centre $\Omega(2\,;-3)$ et de rayon $4$ est :', '$(x-\alpha)^2 + (y-\beta)^2 = r^2$ donne $(x-2)^2 + (y+3)^2 = 16$.', 8);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6105081, 610508, '$(x-2)^2 + (y+3)^2 = 16$', TRUE, 1),
  (6105082, 610508, '$(x+2)^2 + (y-3)^2 = 16$', FALSE, 2),
  (6105083, 610508, '$(x-2)^2 + (y-3)^2 = 4$', FALSE, 3),
  (6105084, 610508, '$(x-2)^2 + (y+3)^2 = 4$', FALSE, 4);

-- calcul-trigonometrique
SET @l := (SELECT id FROM lecon WHERE slug = 'calcul-trigonometrique' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'maths-1bac'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (6106, NULL, @l, 'QCM — Calcul trigonometrique', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (610601, 6106, 'La mesure en radians de l''angle $60°$ est :', 'On multiplie par $\frac{\pi}{180}$ : $60 \times \frac{\pi}{180} = \frac{\pi}{3}$.', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6106011, 610601, '$\frac{\pi}{3}$', TRUE, 1),
  (6106012, 610601, '$\frac{\pi}{6}$', FALSE, 2),
  (6106013, 610601, '$\frac{\pi}{2}$', FALSE, 3),
  (6106014, 610601, '$\frac{2\pi}{3}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (610602, 6106, 'La mesure en degrés de l''angle $\frac{5\pi}{6}$ est :', 'On multiplie par $\frac{180}{\pi}$ : $\frac{5\pi}{6} \times \frac{180}{\pi} = 5 \times 30 = 150°$.', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6106021, 610602, '$150°$', TRUE, 1),
  (6106022, 610602, '$120°$', FALSE, 2),
  (6106023, 610602, '$135°$', FALSE, 3),
  (6106024, 610602, '$300°$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (610603, 6106, 'La valeur de $\cos\left(\frac{\pi}{6}\right)$ est :', 'C''est une valeur remarquable : $\cos\left(\frac{\pi}{6}\right) = \frac{\sqrt{3}}{2}$.', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6106031, 610603, '$\frac{\sqrt{3}}{2}$', TRUE, 1),
  (6106032, 610603, '$\frac{1}{2}$', FALSE, 2),
  (6106033, 610603, '$\frac{\sqrt{2}}{2}$', FALSE, 3),
  (6106034, 610603, '$\frac{\sqrt{3}}{3}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (610604, 6106, 'La valeur de $\tan\left(\frac{\pi}{4}\right)$ est :', '$\tan\left(\frac{\pi}{4}\right) = \frac{\sin(\pi/4)}{\cos(\pi/4)} = \frac{\sqrt{2}/2}{\sqrt{2}/2} = 1$.', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6106041, 610604, '$1$', TRUE, 1),
  (6106042, 610604, '$\sqrt{3}$', FALSE, 2),
  (6106043, 610604, '$\frac{\sqrt{3}}{3}$', FALSE, 3),
  (6106044, 610604, '$0$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (610605, 6106, 'Pour tout réel $x$, $\sin\left(\frac{\pi}{2} - x\right)$ est égal à :', 'C''est une formule des angles complémentaires : $\sin\left(\frac{\pi}{2} - x\right) = \cos x$.', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6106051, 610605, '$\cos x$', TRUE, 1),
  (6106052, 610605, '$\sin x$', FALSE, 2),
  (6106053, 610605, '$-\cos x$', FALSE, 3),
  (6106054, 610605, '$-\sin x$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (610606, 6106, 'Pour tout réel $x$, $\sin(\pi + x)$ est égal à :', 'Angle associé : $\sin(\pi + x) = -\sin x$.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6106061, 610606, '$-\sin x$', TRUE, 1),
  (6106062, 610606, '$\sin x$', FALSE, 2),
  (6106063, 610606, '$\cos x$', FALSE, 3),
  (6106064, 610606, '$-\cos x$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (610607, 6106, 'La formule d''addition du cosinus donne $\cos(a + b) = $ :', '$\cos(a + b) = \cos a \cos b - \sin a \sin b$ (attention au signe « moins »).', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6106071, 610607, '$\cos a \cos b - \sin a \sin b$', TRUE, 1),
  (6106072, 610607, '$\cos a \cos b + \sin a \sin b$', FALSE, 2),
  (6106073, 610607, '$\sin a \cos b + \cos a \sin b$', FALSE, 3),
  (6106074, 610607, '$\cos a \sin b - \sin a \cos b$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (610608, 6106, 'Les solutions dans $\mathbb{R}$ de l''équation $\cos x = \frac{\sqrt{2}}{2}$ sont :', 'Comme $\frac{\sqrt{2}}{2} = \cos\frac{\pi}{4}$, on a $x = \frac{\pi}{4} + 2k\pi$ ou $x = -\frac{\pi}{4} + 2k\pi$, avec $k \in \mathbb{Z}$.', 8);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6106081, 610608, '$x = \pm\frac{\pi}{4} + 2k\pi,\ k \in \mathbb{Z}$', TRUE, 1),
  (6106082, 610608, '$x = \frac{\pi}{4} + k\pi,\ k \in \mathbb{Z}$', FALSE, 2),
  (6106083, 610608, '$x = \pm\frac{\pi}{3} + 2k\pi,\ k \in \mathbb{Z}$', FALSE, 3),
  (6106084, 610608, '$x = \frac{\pi}{4} + 2k\pi$ ou $x = \frac{3\pi}{4} + 2k\pi,\ k \in \mathbb{Z}$', FALSE, 4);

-- suites-numeriques
SET @l := (SELECT id FROM lecon WHERE slug = 'suites-numeriques' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'maths-1bac'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (6107, NULL, @l, 'QCM — Les suites numeriques', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (610701, 6107, 'Soit $(u_n)$ une suite arithmétique de premier terme $u_0 = 3$ et de raison $r = 4$. Que vaut $u_5$ ?', 'On applique $u_n = u_0 + nr$, donc $u_5 = 3 + 5 \times 4 = 23$.', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6107011, 610701, '$23$', TRUE, 1),
  (6107012, 610701, '$19$', FALSE, 2),
  (6107013, 610701, '$20$', FALSE, 3),
  (6107014, 610701, '$47$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (610702, 6107, 'Une suite arithmétique $(u_n)$ vérifie $u_2 = 5$ et $u_6 = 17$. Quelle est sa raison $r$ ?', 'On a $u_6 = u_2 + (6-2)r$, donc $17 = 5 + 4r$, d''où $r = \frac{17 - 5}{4} = 3$.', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6107021, 610702, '$r = 3$', TRUE, 1),
  (6107022, 610702, '$r = 4$', FALSE, 2),
  (6107023, 610702, '$r = 6$', FALSE, 3),
  (6107024, 610702, '$r = 12$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (610703, 6107, 'Soit $(v_n)$ une suite géométrique de premier terme $v_0 = 2$ et de raison $q = 3$. Que vaut $v_4$ ?', 'On applique $v_n = v_0 \times q^n$, donc $v_4 = 2 \times 3^4 = 2 \times 81 = 162$.', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6107031, 610703, '$162$', TRUE, 1),
  (6107032, 610703, '$54$', FALSE, 2),
  (6107033, 610703, '$96$', FALSE, 3),
  (6107034, 610703, '$486$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (610704, 6107, 'Que vaut la somme $S = 1 + 2 + 3 + \cdots + 100$ ?', 'C''est une somme arithmétique de $100$ termes : $S = 100 \times \frac{1 + 100}{2} = 50 \times 101 = 5050$.', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6107041, 610704, '$5050$', TRUE, 1),
  (6107042, 610704, '$5000$', FALSE, 2),
  (6107043, 610704, '$10100$', FALSE, 3),
  (6107044, 610704, '$4950$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (610705, 6107, 'Que vaut la somme $S = 1 + 2 + 4 + 8 + \cdots + 2^9$ ?', 'C''est une somme géométrique de premier terme $1$, de raison $2$ et de $10$ termes : $S = 1 \times \frac{1 - 2^{10}}{1 - 2} = 2^{10} - 1 = 1023$.', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6107051, 610705, '$1023$', TRUE, 1),
  (6107052, 610705, '$1024$', FALSE, 2),
  (6107053, 610705, '$511$', FALSE, 3),
  (6107054, 610705, '$2047$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (610706, 6107, 'Comment varie la suite définie par $u_n = \left(\frac{1}{2}\right)^n$ ?', 'C''est une suite géométrique de raison $q = \frac{1}{2}$, comprise entre $0$ et $1$, avec un premier terme positif : elle est strictement décroissante.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6107061, 610706, 'Strictement décroissante', TRUE, 1),
  (6107062, 610706, 'Strictement croissante', FALSE, 2),
  (6107063, 610706, 'Constante', FALSE, 3),
  (6107064, 610706, 'Non monotone', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (610707, 6107, 'Soit la suite définie pour $n \in \mathbb{N}$ par $u_n = \frac{n}{n+1}$. Laquelle de ces affirmations est correcte ?', 'Pour tout $n$, $n < n+1$ donc $0 \le u_n < 1$ : la suite est minorée par $0$ et majorée par $1$, donc bornée.', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6107071, 610707, 'La suite est majorée par $1$', TRUE, 1),
  (6107072, 610707, 'La suite n''est pas minorée', FALSE, 2),
  (6107073, 610707, 'La suite est majorée par $\frac{1}{2}$', FALSE, 3),
  (6107074, 610707, 'La suite est décroissante', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (610708, 6107, 'On définit $(u_n)$ par $u_0 = 2$ et $u_{n+1} = u_n + 5$. Quelle est la nature de cette suite ?', 'Comme $u_{n+1} - u_n = 5$ est constant, la suite est arithmétique de raison $5$.', 8);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6107081, 610708, 'Arithmétique de raison $5$', TRUE, 1),
  (6107082, 610708, 'Géométrique de raison $5$', FALSE, 2),
  (6107083, 610708, 'Arithmétique de raison $2$', FALSE, 3),
  (6107084, 610708, 'Géométrique de raison $2$', FALSE, 4);

-- limites-fonction
SET @l := (SELECT id FROM lecon WHERE slug = 'limites-fonction' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'maths-1bac'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (6108, NULL, @l, 'QCM — Limites d''une fonction', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (610801, 6108, 'Que vaut $\displaystyle\lim_{x \to +\infty} \frac{1}{x^2}$ ?', 'Pour tout entier $n \ge 1$, $\dfrac{1}{x^n} \to 0$ quand $x \to +\infty$. Ici $n = 2$, la limite vaut donc $0$.', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6108011, 610801, '$0$', TRUE, 1),
  (6108012, 610801, '$+\infty$', FALSE, 2),
  (6108013, 610801, '$1$', FALSE, 3),
  (6108014, 610801, '$-\infty$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (610802, 6108, 'Parmi les expressions suivantes, laquelle n''est PAS une forme indéterminée ?', 'Les quatre formes indéterminées sont $\infty - \infty$, $0 \times \infty$, $\frac{0}{0}$ et $\frac{\infty}{\infty}$. En revanche $\frac{\ell}{\infty} = 0$ est parfaitement déterminé.', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6108021, 610802, '$\dfrac{\ell}{\infty}$ (avec $\ell$ fini)', TRUE, 1),
  (6108022, 610802, '$\dfrac{0}{0}$', FALSE, 2),
  (6108023, 610802, '$\infty - \infty$', FALSE, 3),
  (6108024, 610802, '$0 \times \infty$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (610803, 6108, 'Que vaut $\displaystyle\lim_{x \to +\infty} \frac{3x^2 - x + 1}{x^2 + 5}$ ?', 'En $\pm\infty$, une fonction rationnelle se comporte comme le quotient des termes de plus haut degré : $\dfrac{3x^2}{x^2} = 3$.', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6108031, 610803, '$3$', TRUE, 1),
  (6108032, 610803, '$0$', FALSE, 2),
  (6108033, 610803, '$+\infty$', FALSE, 3),
  (6108034, 610803, '$\dfrac{1}{5}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (610804, 6108, 'Que vaut $\displaystyle\lim_{x \to 2} \frac{x^2 - 4}{x - 2}$ ?', 'C''est une forme indéterminée $\frac{0}{0}$. On factorise : $x^2 - 4 = (x-2)(x+2)$, donc le quotient vaut $x + 2 \to 4$.', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6108041, 610804, '$4$', TRUE, 1),
  (6108042, 610804, '$0$', FALSE, 2),
  (6108043, 610804, '$2$', FALSE, 3),
  (6108044, 610804, 'n''existe pas', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (610805, 6108, 'Pour lever l''indétermination de $\displaystyle\lim_{x \to +\infty} \left(\sqrt{x^2 + 1} - x\right)$, on multiplie par :', 'Face à une F.I. $\infty - \infty$ contenant une racine, on multiplie et divise par la quantité conjuguée $\sqrt{x^2 + 1} + x$, ce qui élimine la racine au numérateur.', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6108051, 610805, '$\sqrt{x^2 + 1} + x$', TRUE, 1),
  (6108052, 610805, '$\sqrt{x^2 + 1} - x$', FALSE, 2),
  (6108053, 610805, '$x^2 + 1$', FALSE, 3),
  (6108054, 610805, '$\dfrac{1}{x}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (610806, 6108, 'Si $\displaystyle\lim_{x \to 2^+} f(x) = +\infty$, que peut-on affirmer pour la courbe $(C_f)$ ?', 'Une limite infinie lorsque $x$ tend vers une valeur finie $a$ traduit une asymptote verticale d''équation $x = a$. Ici $a = 2$.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6108061, 610806, 'la droite $x = 2$ est une asymptote verticale', TRUE, 1),
  (6108062, 610806, 'la droite $y = 2$ est une asymptote horizontale', FALSE, 2),
  (6108063, 610806, 'la droite $y = x + 2$ est une asymptote oblique', FALSE, 3),
  (6108064, 610806, '$(C_f)$ coupe l''axe des abscisses en $2$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (610807, 6108, 'Si $\displaystyle\lim_{x \to +\infty} f(x) = 3$, alors $(C_f)$ admet en $+\infty$ :', 'Une limite finie $\ell$ en $+\infty$ signifie que la courbe se rapproche de la droite $y = \ell$ : c''est une asymptote horizontale d''équation $y = 3$.', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6108071, 610807, 'une asymptote horizontale d''équation $y = 3$', TRUE, 1),
  (6108072, 610807, 'une asymptote verticale d''équation $x = 3$', FALSE, 2),
  (6108073, 610807, 'une asymptote oblique d''équation $y = 3x$', FALSE, 3),
  (6108074, 610807, 'aucune asymptote', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (610808, 6108, 'La droite $y = ax + b$ ($a \neq 0$) est asymptote oblique à $(C_f)$ en $+\infty$ lorsque :', 'Par définition, $y = ax + b$ est asymptote oblique en $+\infty$ si $\displaystyle\lim_{x \to +\infty} \big[f(x) - (ax + b)\big] = 0$ : l''écart entre la courbe et la droite tend vers $0$.', 8);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6108081, 610808, '$\displaystyle\lim_{x \to +\infty} \big[f(x) - (ax + b)\big] = 0$', TRUE, 1),
  (6108082, 610808, '$\displaystyle\lim_{x \to +\infty} f(x) = ax + b$', FALSE, 2),
  (6108083, 610808, '$\displaystyle\lim_{x \to +\infty} \big[f(x) - (ax + b)\big] = +\infty$', FALSE, 3),
  (6108084, 610808, '$\displaystyle\lim_{x \to +\infty} \frac{f(x)}{ax + b} = 0$', FALSE, 4);

-- rotation-plan
SET @l := (SELECT id FROM lecon WHERE slug = 'rotation-plan' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'maths-1bac'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (6109, NULL, @l, 'QCM — La rotation dans le plan', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (610901, 6109, 'Une rotation du plan est entièrement déterminée par :', 'Une rotation est définie par son centre $O$ et son angle $\theta$ (l''angle est orienté, donc son signe fixe le sens).', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6109011, 610901, 'son centre et son angle', TRUE, 1),
  (6109012, 610901, 'son centre seulement', FALSE, 2),
  (6109013, 610901, 'son angle seulement', FALSE, 3),
  (6109014, 610901, 'deux points et une longueur', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (610902, 6109, 'Par la rotation $r(O,\theta)$, l''image du centre $O$ est :', 'Le centre d''une rotation est un point invariant : son image est lui-même.', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6109021, 610902, 'le point $O$ lui-même', TRUE, 1),
  (6109022, 610902, 'le symétrique de $O$', FALSE, 2),
  (6109023, 610902, 'un point à distance $\theta$ de $O$', FALSE, 3),
  (6109024, 610902, 'le milieu de $[OO'']$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (610903, 6109, 'Soit $M''$ l''image de $M$ par $r(O,\theta)$ avec $M \neq O$. On a toujours :', 'Par définition, la rotation conserve la distance au centre : $OM'' = OM$, et l''angle orienté entre $\vec{OM}$ et $\vec{OM''}$ vaut $\theta$.', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6109031, 610903, '$OM'' = OM$', TRUE, 1),
  (6109032, 610903, '$OM'' = 2\,OM$', FALSE, 2),
  (6109033, 610903, '$OM'' = \theta \times OM$', FALSE, 3),
  (6109034, 610903, '$OM'' = 0$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (610904, 6109, 'Une rotation conserve les distances. On dit que c''est :', 'Une transformation qui conserve les distances est appelée une isométrie ; la rotation en est une.', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6109041, 610904, 'une isométrie', TRUE, 1),
  (6109042, 610904, 'une homothétie de rapport $2$', FALSE, 2),
  (6109043, 610904, 'une projection', FALSE, 3),
  (6109044, 610904, 'une similitude de rapport $3$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (610905, 6109, 'Si $A''B''C''$ est l''image du triangle $ABC$ par une rotation, alors :', 'Une rotation conserve les longueurs, les angles et les aires : les deux triangles sont superposables et de même orientation.', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6109051, 610905, '$A''B''C''$ est superposable à $ABC$', TRUE, 1),
  (6109052, 610905, '$A''B''C''$ est deux fois plus grand', FALSE, 2),
  (6109053, 610905, '$A''B''C''$ a une orientation inversée', FALSE, 3),
  (6109054, 610905, '$A''B''C''$ a une aire différente', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (610906, 6109, 'La rotation de centre $O$ et d''angle $\pi$ est :', 'La rotation d''angle $\pi$ est la symétrie centrale de centre $O$ : $O$ est alors le milieu de $[MM'']$.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6109061, 610906, 'la symétrie centrale de centre $O$', TRUE, 1),
  (6109062, 610906, 'l''identité', FALSE, 2),
  (6109063, 610906, 'une symétrie axiale', FALSE, 3),
  (6109064, 610906, 'une translation', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (610907, 6109, 'La composée $r(O,\theta_2) \circ r(O,\theta_1)$ de deux rotations de même centre est :', 'La composée de deux rotations de même centre est la rotation de ce centre dont l''angle est la somme $\theta_1 + \theta_2$.', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6109071, 610907, 'la rotation $r(O,\theta_1+\theta_2)$', TRUE, 1),
  (6109072, 610907, 'la rotation $r(O,\theta_1\times\theta_2)$', FALSE, 2),
  (6109073, 610907, 'une translation', FALSE, 3),
  (6109074, 610907, 'la rotation $r(O,\theta_1-\theta_2)$ uniquement', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (610908, 6109, 'La transformation réciproque de la rotation $r(O,\theta)$ est :', 'La réciproque d''une rotation est la rotation de même centre et d''angle opposé : $r(O,-\theta)$.', 8);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6109081, 610908, '$r(O,-\theta)$', TRUE, 1),
  (6109082, 610908, '$r(O,\theta)$', FALSE, 2),
  (6109083, 610908, '$r(O,2\theta)$', FALSE, 3),
  (6109084, 610908, 'la symétrie centrale de centre $O$', FALSE, 4);

-- derivation
SET @l := (SELECT id FROM lecon WHERE slug = 'derivation' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'maths-1bac'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (6110, NULL, @l, 'QCM — La derivation', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (611001, 6110, 'La dérivée de $f(x) = x^4$ est :', 'On applique $(x^n)'' = n\,x^{n-1}$ avec $n = 4$, donc $f''(x) = 4x^3$.', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6110011, 611001, '$4x^3$', TRUE, 1),
  (6110012, 611001, '$x^3$', FALSE, 2),
  (6110013, 611001, '$4x^4$', FALSE, 3),
  (6110014, 611001, '$\frac{x^5}{5}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (611002, 6110, 'La dérivée de $f(x) = \frac{1}{x}$ (sur $\mathbb{R}^*$) est :', 'On a $(x^{-1})'' = -x^{-2}$, soit $f''(x) = -\frac{1}{x^2}$.', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6110021, 611002, '$-\frac{1}{x^2}$', TRUE, 1),
  (6110022, 611002, '$\frac{1}{x^2}$', FALSE, 2),
  (6110023, 611002, '$-\frac{1}{x}$', FALSE, 3),
  (6110024, 611002, '$\ln x$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (611003, 6110, 'La dérivée de $f(x) = \sqrt{x}$ (sur $]0\,;\,+\infty[$) est :', 'La dérivée de la racine carrée est $(\sqrt{x})'' = \frac{1}{2\sqrt{x}}$.', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6110031, 611003, '$\frac{1}{2\sqrt{x}}$', TRUE, 1),
  (6110032, 611003, '$\frac{1}{\sqrt{x}}$', FALSE, 2),
  (6110033, 611003, '$2\sqrt{x}$', FALSE, 3),
  (6110034, 611003, '$\frac{1}{2}x$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (611004, 6110, 'La dérivée de $f(x) = (2x + 1)(x - 3)$ est :', 'Avec $(uv)'' = u''v + uv''$ : $2(x-3) + (2x+1)(1) = 2x - 6 + 2x + 1 = 4x - 5$.', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6110041, 611004, '$4x - 5$', TRUE, 1),
  (6110042, 611004, '$2x - 3$', FALSE, 2),
  (6110043, 611004, '$4x - 6$', FALSE, 3),
  (6110044, 611004, '$2$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (611005, 6110, 'La dérivée de $f(x) = \frac{x + 1}{x - 1}$ (sur $\mathbb{R}\setminus\{1\}$) est :', 'Avec $\left(\frac{u}{v}\right)'' = \frac{u''v - uv''}{v^2}$ : $\frac{(x-1) - (x+1)}{(x-1)^2} = \frac{-2}{(x-1)^2}$.', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6110051, 611005, '$-\frac{2}{(x-1)^2}$', TRUE, 1),
  (6110052, 611005, '$\frac{2}{(x-1)^2}$', FALSE, 2),
  (6110053, 611005, '$1$', FALSE, 3),
  (6110054, 611005, '$\frac{2x}{(x-1)^2}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (611006, 6110, 'La dérivée de $f(x) = (3x - 1)^5$ est :', 'Avec $(u^n)'' = n\,u''\,u^{n-1}$ et $u = 3x-1$, $u'' = 3$ : $f''(x) = 5 \times 3 \times (3x-1)^4 = 15(3x-1)^4$.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6110061, 611006, '$15(3x - 1)^4$', TRUE, 1),
  (6110062, 611006, '$5(3x - 1)^4$', FALSE, 2),
  (6110063, 611006, '$3(3x - 1)^4$', FALSE, 3),
  (6110064, 611006, '$15(3x - 1)^6$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (611007, 6110, 'La dérivée de $f(x) = \sqrt{x^2 + 1}$ est :', 'Avec $(\sqrt{u})'' = \frac{u''}{2\sqrt{u}}$ et $u = x^2+1$, $u'' = 2x$ : $f''(x) = \frac{2x}{2\sqrt{x^2+1}} = \frac{x}{\sqrt{x^2+1}}$.', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6110071, 611007, '$\frac{x}{\sqrt{x^2 + 1}}$', TRUE, 1),
  (6110072, 611007, '$\frac{1}{2\sqrt{x^2 + 1}}$', FALSE, 2),
  (6110073, 611007, '$\frac{2x}{\sqrt{x^2 + 1}}$', FALSE, 3),
  (6110074, 611007, '$\frac{x}{2\sqrt{x^2 + 1}}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (611008, 6110, 'Soit $f(x) = x^2 - 6x + 1$. En $x = 3$, la fonction $f$ admet :', '$f''(x) = 2x - 6$ s''annule en $x = 3$ en changeant de signe ($-$ puis $+$) : $f$ admet un minimum local en $x = 3$.', 8);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6110081, 611008, 'un minimum local', TRUE, 1),
  (6110082, 611008, 'un maximum local', FALSE, 2),
  (6110083, 611008, 'une tangente verticale', FALSE, 3),
  (6110084, 611008, 'ni minimum ni maximum', FALSE, 4);

-- etude-fonctions
SET @l := (SELECT id FROM lecon WHERE slug = 'etude-fonctions' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'maths-1bac'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (6111, NULL, @l, 'QCM — Etude des fonctions', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (611101, 6111, 'Quel est le domaine de définition de $f(x) = \sqrt{x - 3}$ ?', 'La racine carrée impose $x - 3 \geq 0$, soit $x \geq 3$.', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6111011, 611101, '$[3,\ +\infty[$', TRUE, 1),
  (6111012, 611101, '$]3,\ +\infty[$', FALSE, 2),
  (6111013, 611101, '$]-\infty,\ 3]$', FALSE, 3),
  (6111014, 611101, '$\mathbb{R} \setminus \{3\}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (611102, 6111, 'La fonction définie sur $\mathbb{R}$ par $f(x) = x^4 + 2x^2$ est :', '$f(-x) = (-x)^4 + 2(-x)^2 = x^4 + 2x^2 = f(x)$ : la fonction est paire.', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6111021, 611102, 'paire', TRUE, 1),
  (6111022, 611102, 'impaire', FALSE, 2),
  (6111023, 611102, 'ni paire ni impaire', FALSE, 3),
  (6111024, 611102, 'à la fois paire et impaire', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (611103, 6111, 'Quelle est l''asymptote horizontale en $+\infty$ de la courbe de $f(x) = \dfrac{3x - 1}{x + 2}$ ?', 'Le quotient des termes de plus haut degré donne $\dfrac{3x}{x} = 3$, donc $\lim_{x \to +\infty} f(x) = 3$.', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6111031, 611103, '$y = 3$', TRUE, 1),
  (6111032, 611103, '$y = -2$', FALSE, 2),
  (6111033, 611103, '$y = \dfrac{1}{3}$', FALSE, 3),
  (6111034, 611103, '$y = 0$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (611104, 6111, 'Pour $f(x) = \dfrac{1}{x - 1}$, quelle droite est asymptote verticale à la courbe ?', 'En $x = 1$ le dénominateur s''annule et $\lim_{x \to 1} |f(x)| = +\infty$, donc $x = 1$ est asymptote verticale.', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6111041, 611104, '$x = 1$', TRUE, 1),
  (6111042, 611104, '$y = 1$', FALSE, 2),
  (6111043, 611104, '$x = 0$', FALSE, 3),
  (6111044, 611104, '$x = -1$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (611105, 6111, 'La courbe de $f(x) = x - 1 + \dfrac{1}{x}$ admet pour asymptote oblique :', '$f(x) - (x - 1) = \dfrac{1}{x} \to 0$ en $\pm\infty$, donc $y = x - 1$ est asymptote oblique.', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6111051, 611105, '$y = x - 1$', TRUE, 1),
  (6111052, 611105, '$y = x$', FALSE, 2),
  (6111053, 611105, '$y = x + 1$', FALSE, 3),
  (6111054, 611105, '$y = -x + 1$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (611106, 6111, 'Une fonction $f$ telle que $f''''(x) > 0$ sur un intervalle $I$ est, sur cet intervalle :', 'Le signe positif de la dérivée seconde caractérise la convexité.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6111061, 611106, 'convexe', TRUE, 1),
  (6111062, 611106, 'concave', FALSE, 2),
  (6111063, 611106, 'décroissante', FALSE, 3),
  (6111064, 611106, 'constante', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (611107, 6111, 'La tangente à la courbe de $f$ au point d''abscisse $a$ est horizontale lorsque :', 'Une tangente horizontale a un coefficient directeur nul, soit $f''(a) = 0$.', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6111071, 611107, '$f''(a) = 0$', TRUE, 1),
  (6111072, 611107, '$f(a) = 0$', FALSE, 2),
  (6111073, 611107, '$f''''(a) = 0$', FALSE, 3),
  (6111074, 611107, '$f''(a) = 1$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (611108, 6111, 'Le point $\Omega(a,\ b)$ est centre de symétrie de la courbe de $f$ lorsque, pour tout $x$ convenable :', 'La symétrie de centre $\Omega(a,b)$ se traduit par $f(2a - x) + f(x) = 2b$.', 8);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6111081, 611108, '$f(2a - x) + f(x) = 2b$', TRUE, 1),
  (6111082, 611108, '$f(2a - x) = f(x)$', FALSE, 2),
  (6111083, 611108, '$f(2a - x) + f(x) = b$', FALSE, 3),
  (6111084, 611108, '$f(a - x) = -f(x)$', FALSE, 4);

-- vecteurs-espace
SET @l := (SELECT id FROM lecon WHERE slug = 'vecteurs-espace' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'maths-1bac'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (6112, NULL, @l, 'QCM — Vecteurs de l''espace', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (611201, 6112, 'Pour trois points $A$, $B$, $C$ de l''espace, $\vec{AB} + \vec{BC}$ est égal à :', 'C''est la relation de Chasles : $\vec{AB} + \vec{BC} = \vec{AC}$.', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6112011, 611201, '$\vec{AC}$', TRUE, 1),
  (6112012, 611201, '$\vec{CA}$', FALSE, 2),
  (6112013, 611201, '$\vec{BA}$', FALSE, 3),
  (6112014, 611201, '$\vec{0}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (611202, 6112, 'Avec $A(1, 2, 3)$ et $B(4, 0, 5)$, les coordonnées de $\vec{AB}$ sont :', '$\vec{AB}(x_B - x_A,\ y_B - y_A,\ z_B - z_A) = (3, -2, 2)$.', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6112021, 611202, '$(3, -2, 2)$', TRUE, 1),
  (6112022, 611202, '$(-3, 2, -2)$', FALSE, 2),
  (6112023, 611202, '$(5, 2, 8)$', FALSE, 3),
  (6112024, 611202, '$(3, 2, 2)$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (611203, 6112, 'Le milieu $I$ de $[AB]$ avec $A(2, -2, 4)$ et $B(0, 4, 0)$ a pour coordonnées :', '$I\left(\frac{2+0}{2}, \frac{-2+4}{2}, \frac{4+0}{2}\right) = (1, 1, 2)$.', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6112031, 611203, '$(1, 1, 2)$', TRUE, 1),
  (6112032, 611203, '$(2, 2, 4)$', FALSE, 2),
  (6112033, 611203, '$(-1, 3, -2)$', FALSE, 3),
  (6112034, 611203, '$(1, 1, 4)$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (611204, 6112, 'Dans un repère orthonormé, la norme du vecteur $\vec{u}(2, -1, 2)$ vaut :', '$\|\vec{u}\| = \sqrt{2^2 + (-1)^2 + 2^2} = \sqrt{9} = 3$.', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6112041, 611204, '$3$', TRUE, 1),
  (6112042, 611204, '$5$', FALSE, 2),
  (6112043, 611204, '$\sqrt{5}$', FALSE, 3),
  (6112044, 611204, '$9$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (611205, 6112, 'Les vecteurs $\vec{u}(1, -2, 3)$ et $\vec{v}(-2, 4, -6)$ sont :', '$\vec{v} = -2\,\vec{u}$ : les coordonnées sont proportionnelles, les vecteurs sont colinéaires.', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6112051, 611205, 'colinéaires, car $\vec{v} = -2\,\vec{u}$', TRUE, 1),
  (6112052, 611205, 'non colinéaires', FALSE, 2),
  (6112053, 611205, 'orthogonaux', FALSE, 3),
  (6112054, 611205, 'égaux', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (611206, 6112, 'Si $I$ est le milieu de $[AB]$, alors pour tout point $M$, $\vec{MA} + \vec{MB}$ est égal à :', 'Avec $I$ milieu de $[AB]$ : $\vec{MA} + \vec{MB} = 2\,\vec{MI}$.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6112061, 611206, '$2\,\vec{MI}$', TRUE, 1),
  (6112062, 611206, '$\vec{MI}$', FALSE, 2),
  (6112063, 611206, '$\vec{0}$', FALSE, 3),
  (6112064, 611206, '$\vec{AB}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (611207, 6112, 'Les trois vecteurs $\vec{i}(1, 0, 0)$, $\vec{j}(0, 1, 0)$ et $\vec{k}(0, 0, 1)$ sont :', 'Ces trois vecteurs ne sont pas coplanaires : ils forment une base de l''espace.', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6112071, 611207, 'non coplanaires (ils forment une base)', TRUE, 1),
  (6112072, 611207, 'coplanaires', FALSE, 2),
  (6112073, 611207, 'colinéaires deux à deux', FALSE, 3),
  (6112074, 611207, 'tous égaux', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (611208, 6112, 'Une représentation paramétrique de la droite passant par $A(1, 0, 2)$ et de vecteur directeur $\vec{u}(2, 1, -1)$ est :', '$M \in (D) \iff \vec{AM} = t\vec{u}$, soit $x = 1 + 2t$, $y = t$, $z = 2 - t$.', 8);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6112081, 611208, '$x = 1 + 2t,\ y = t,\ z = 2 - t$', TRUE, 1),
  (6112082, 611208, '$x = 2 + t,\ y = 0,\ z = -1 + 2t$', FALSE, 2),
  (6112083, 611208, '$x = 1 + 2t,\ y = 1 + t,\ z = 2 - t$', FALSE, 3),
  (6112084, 611208, '$x = 2t,\ y = t,\ z = -t$', FALSE, 4);

-- geometrie-espace
SET @l := (SELECT id FROM lecon WHERE slug = 'geometrie-espace' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'maths-1bac'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (6113, NULL, @l, 'QCM — Geometrie analytique de l''espace', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (611301, 6113, 'Dans un repère orthonormé, quelle est la distance $AB$ entre $A(1, 1, 1)$ et $B(3, 2, 3)$ ?', 'On applique $AB = \sqrt{(3-1)^2 + (2-1)^2 + (3-1)^2} = \sqrt{4 + 1 + 4} = \sqrt{9} = 3$.', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6113011, 611301, '$3$', TRUE, 1),
  (6113012, 611301, '$\sqrt{14}$', FALSE, 2),
  (6113013, 611301, '$9$', FALSE, 3),
  (6113014, 611301, '$5$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (611302, 6113, 'Quelles sont les coordonnées du milieu $I$ du segment $[AB]$ avec $A(1, 3, -1)$ et $B(3, 1, 5)$ ?', 'Le milieu a pour coordonnées la moyenne de celles de $A$ et $B$ : $I\left(\frac{1+3}{2}, \frac{3+1}{2}, \frac{-1+5}{2}\right) = I(2, 2, 2)$.', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6113021, 611302, '$(2, 2, 2)$', TRUE, 1),
  (6113022, 611302, '$(4, 4, 4)$', FALSE, 2),
  (6113023, 611302, '$(1, -1, 3)$', FALSE, 3),
  (6113024, 611302, '$(2, 2, 3)$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (611303, 6113, 'Un vecteur directeur de la droite $\{ x = 1 + 2t,\ y = 3 - t,\ z = 2 + t \}$ est :', 'Les coefficients du paramètre $t$ donnent un vecteur directeur : ici $(2, -1, 1)$. Le triplet des constantes $(1, 3, 2)$ correspond, lui, à un point de la droite.', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6113031, 611303, '$\vec{u}\,(2, -1, 1)$', TRUE, 1),
  (6113032, 611303, '$\vec{u}\,(1, 3, 2)$', FALSE, 2),
  (6113033, 611303, '$\vec{u}\,(2, 1, 1)$', FALSE, 3),
  (6113034, 611303, '$\vec{u}\,(1, -1, 1)$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (611304, 6113, 'Lequel de ces points appartient à la droite $\{ x = t,\ y = 1 + 2t,\ z = 2 - t \}$ ?', 'On cherche $t$ tel que les trois coordonnées soient cohérentes. Pour $(1, 3, 1)$ : $x = t = 1$ donne $y = 1 + 2 = 3$ et $z = 2 - 1 = 1$. Tout est vérifié, le point appartient à la droite.', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6113041, 611304, '$(1, 3, 1)$', TRUE, 1),
  (6113042, 611304, '$(1, 3, 2)$', FALSE, 2),
  (6113043, 611304, '$(2, 3, 1)$', FALSE, 3),
  (6113044, 611304, '$(0, 1, 3)$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (611305, 6113, 'Quelle est l''équation cartésienne du plan $(xOy)$ ?', 'Le plan $(xOy)$ est formé des points de cote nulle : son équation est $z = 0$. De même, $(xOz)$ a pour équation $y = 0$ et $(yOz)$ a pour équation $x = 0$.', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6113051, 611305, '$z = 0$', TRUE, 1),
  (6113052, 611305, '$x = 0$', FALSE, 2),
  (6113053, 611305, '$y = 0$', FALSE, 3),
  (6113054, 611305, '$x + y = 0$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (611306, 6113, 'Les plans d''équations $x + 2y - z + 1 = 0$ et $2x + 4y - 2z + 5 = 0$ sont :', 'Les triplets $(1, 2, -1)$ et $(2, 4, -2)$ sont proportionnels (rapport $2$) : les plans sont parallèles. Mais les constantes ne suivent pas ce rapport ($1 \times 2 = 2 \neq 5$), donc les plans ne sont pas confondus : ils sont strictement parallèles.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6113061, 611306, 'strictement parallèles', TRUE, 1),
  (6113062, 611306, 'confondus', FALSE, 2),
  (6113063, 611306, 'sécants', FALSE, 3),
  (6113064, 611306, 'perpendiculaires', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (611307, 6113, 'Deux droites de l''espace dont les vecteurs directeurs ne sont pas colinéaires et qui n''ont aucun point commun sont :', 'Si les vecteurs directeurs ne sont pas colinéaires, les droites ne sont pas parallèles. En l''absence de point commun, elles ne sont pas non plus sécantes : elles sont non coplanaires (aucun plan ne les contient toutes les deux).', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6113071, 611307, 'non coplanaires', TRUE, 1),
  (6113072, 611307, 'parallèles', FALSE, 2),
  (6113073, 611307, 'confondues', FALSE, 3),
  (6113074, 611307, 'sécantes', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (611308, 6113, 'Lorsque deux plans de l''espace sont sécants, leur intersection est :', 'Deux plans sont soit parallèles, soit sécants. Lorsqu''ils sont sécants, leur intersection est toujours une droite.', 8);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6113081, 611308, 'une droite', TRUE, 1),
  (6113082, 611308, 'un point', FALSE, 2),
  (6113083, 611308, 'un plan', FALSE, 3),
  (6113084, 611308, 'l''ensemble vide', FALSE, 4);

-- denombrement
SET @l := (SELECT id FROM lecon WHERE slug = 'denombrement' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'maths-1bac'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (6114, NULL, @l, 'QCM — Denombrement', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (611401, 6114, 'Un code d''accès est formé de $4$ chiffres choisis de $0$ à $9$, avec répétitions autorisées. Combien de codes existe-t-il ?', 'C''est une $4$-liste d''un ensemble à $10$ éléments : $10^4 = 10\,000$.', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6114011, 611401, '$10^4 = 10\,000$', TRUE, 1),
  (6114012, 611401, '$A_{10}^4 = 5040$', FALSE, 2),
  (6114013, 611401, '$\binom{10}{4} = 210$', FALSE, 3),
  (6114014, 611401, '$4! = 24$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (611402, 6114, 'On range $6$ livres distincts côte à côte sur une étagère. Combien de rangements possibles ?', 'C''est une permutation de $6$ objets : $6! = 720$.', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6114021, 611402, '$6! = 720$', TRUE, 1),
  (6114022, 611402, '$2^6 = 64$', FALSE, 2),
  (6114023, 611402, '$\binom{6}{2} = 15$', FALSE, 3),
  (6114024, 611402, '$6^2 = 36$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (611403, 6114, 'Dans une course de $5$ chevaux, combien de tiercés dans l''ordre (les $3$ premiers, distincts et classés) peut-on former ?', 'Tirage avec ordre et sans répétition : $A_5^3 = 5 \times 4 \times 3 = 60$.', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6114031, 611403, '$A_5^3 = 60$', TRUE, 1),
  (6114032, 611403, '$\binom{5}{3} = 10$', FALSE, 2),
  (6114033, 611403, '$5^3 = 125$', FALSE, 3),
  (6114034, 611403, '$3! = 6$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (611404, 6114, 'On choisit simultanément $2$ délégués parmi $10$ élèves. Combien de choix possibles ?', 'Tirage simultané, sans ordre : $\binom{10}{2} = \dfrac{10 \times 9}{2} = 45$.', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6114041, 611404, '$\binom{10}{2} = 45$', TRUE, 1),
  (6114042, 611404, '$A_{10}^2 = 90$', FALSE, 2),
  (6114043, 611404, '$10^2 = 100$', FALSE, 3),
  (6114044, 611404, '$2^{10} = 1024$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (611405, 6114, 'Quelle situation se compte avec une combinaison $\binom{n}{p}$ ?', 'La combinaison compte les tirages simultanés, où l''ordre n''intervient pas et sans répétition.', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6114051, 611405, 'Un tirage simultané de $p$ objets parmi $n$ (sans ordre)', TRUE, 1),
  (6114052, 611405, 'Un tirage successif sans remise de $p$ objets parmi $n$', FALSE, 2),
  (6114053, 611405, 'Un tirage successif avec remise de $p$ objets parmi $n$', FALSE, 3),
  (6114054, 611405, 'Le rangement de $n$ objets distincts en ligne', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (611406, 6114, 'Combien de parties (sous-ensembles) possède un ensemble à $5$ éléments ?', 'Le nombre de parties d''un ensemble à $n$ éléments est $2^n$, soit $2^5 = 32$.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6114061, 611406, '$2^5 = 32$', TRUE, 1),
  (6114062, 611406, '$5! = 120$', FALSE, 2),
  (6114063, 611406, '$5^2 = 25$', FALSE, 3),
  (6114064, 611406, '$\binom{5}{2} = 10$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (611407, 6114, 'Dans le développement de $(a + b)^5$, quel est le coefficient de $a^2 b^3$ ?', 'Le coefficient de $a^p b^{n-p}$ dans $(a+b)^n$ est $\binom{n}{p}$, ici $\binom{5}{2} = 10$.', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6114071, 611407, '$\binom{5}{2} = 10$', TRUE, 1),
  (6114072, 611407, '$\binom{5}{3} = 6$', FALSE, 2),
  (6114073, 611407, '$5$', FALSE, 3),
  (6114074, 611407, '$2^5 = 32$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (611408, 6114, 'D''après la relation de Pascal, à quoi est égale la somme $\binom{6}{2} + \binom{6}{3}$ ?', 'Relation de Pascal : $\binom{n-1}{p-1} + \binom{n-1}{p} = \binom{n}{p}$, donc $\binom{6}{2} + \binom{6}{3} = \binom{7}{3} = 35$.', 8);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6114081, 611408, '$\binom{7}{3} = 35$', TRUE, 1),
  (6114082, 611408, '$\binom{6}{5} = 6$', FALSE, 2),
  (6114083, 611408, '$\binom{12}{5}$', FALSE, 3),
  (6114084, 611408, '$\binom{7}{5} = 21$', FALSE, 4);

-- produit-scalaire-espace
SET @l := (SELECT id FROM lecon WHERE slug = 'produit-scalaire-espace' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'maths-1bac'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (6115, NULL, @l, 'QCM — Le produit scalaire dans l''espace', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (611501, 6115, 'Pour $\vec{u}(1, -2, 3)$ et $\vec{v}(2, 1, -1)$, le produit scalaire $\vec{u} \cdot \vec{v}$ vaut :', '$\vec{u} \cdot \vec{v} = 1 \times 2 + (-2) \times 1 + 3 \times (-1) = 2 - 2 - 3 = -3$.', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6115011, 611501, '$-3$', TRUE, 1),
  (6115012, 611501, '$3$', FALSE, 2),
  (6115013, 611501, '$1$', FALSE, 3),
  (6115014, 611501, '$7$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (611502, 6115, 'La norme du vecteur $\vec{u}(2, -1, 2)$ vaut :', '$\|\vec{u}\| = \sqrt{2^2 + (-1)^2 + 2^2} = \sqrt{9} = 3$.', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6115021, 611502, '$3$', TRUE, 1),
  (6115022, 611502, '$5$', FALSE, 2),
  (6115023, 611502, '$\sqrt{5}$', FALSE, 3),
  (6115024, 611502, '$9$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (611503, 6115, 'Les vecteurs $\vec{u}(1, 2, -1)$ et $\vec{v}(3, -1, 1)$ sont :', '$\vec{u} \cdot \vec{v} = 3 - 2 - 1 = 0$ : un produit scalaire nul caractérise l''orthogonalité.', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6115031, 611503, 'orthogonaux', TRUE, 1),
  (6115032, 611503, 'colinéaires', FALSE, 2),
  (6115033, 611503, 'égaux', FALSE, 3),
  (6115034, 611503, 'de même norme', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (611504, 6115, 'Un vecteur normal au plan d''équation $3x - 2y + z - 5 = 0$ est :', 'Les coefficients de $x$, $y$, $z$ donnent un vecteur normal $\vec{n}(3, -2, 1)$.', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6115041, 611504, '$\vec{n}(3, -2, 1)$', TRUE, 1),
  (6115042, 611504, '$\vec{n}(3, -2, 1, -5)$', FALSE, 2),
  (6115043, 611504, '$\vec{n}(-5, 3, -2)$', FALSE, 3),
  (6115044, 611504, '$\vec{n}(1, 1, 1)$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (611505, 6115, 'Une équation cartésienne du plan passant par $A(1, 0, -1)$ et de vecteur normal $\vec{n}(2, 1, -1)$ est :', '$2(x-1) + 1(y-0) - 1(z+1) = 0$, soit $2x + y - z - 3 = 0$.', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6115051, 611505, '$2x + y - z - 3 = 0$', TRUE, 1),
  (6115052, 611505, '$2x + y - z + 3 = 0$', FALSE, 2),
  (6115053, 611505, '$2x + y - z - 1 = 0$', FALSE, 3),
  (6115054, 611505, '$x + y - z - 3 = 0$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (611506, 6115, 'La distance du point $M(2, -1, 2)$ au plan d''équation $2x - y + 2z - 3 = 0$ vaut :', '$d = \dfrac{|2 \times 2 - (-1) + 2 \times 2 - 3|}{\sqrt{4 + 1 + 4}} = \dfrac{6}{3} = 2$.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6115061, 611506, '$2$', TRUE, 1),
  (6115062, 611506, '$6$', FALSE, 2),
  (6115063, 611506, '$\dfrac{6}{\sqrt{5}}$', FALSE, 3),
  (6115064, 611506, '$3$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (611507, 6115, 'Une équation de la sphère de centre $\Omega(1, -2, 3)$ et de rayon $2$ est :', 'L''équation d''une sphère de centre $(\alpha, \beta, \gamma)$ et de rayon $r$ est $(x-\alpha)^2 + (y-\beta)^2 + (z-\gamma)^2 = r^2$, avec ici $r^2 = 4$.', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6115071, 611507, '$(x-1)^2 + (y+2)^2 + (z-3)^2 = 4$', TRUE, 1),
  (6115072, 611507, '$(x-1)^2 + (y+2)^2 + (z-3)^2 = 2$', FALSE, 2),
  (6115073, 611507, '$(x+1)^2 + (y-2)^2 + (z+3)^2 = 4$', FALSE, 3),
  (6115074, 611507, '$(x-1)^2 + (y-2)^2 + (z-3)^2 = 4$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (611508, 6115, 'L''ensemble des points $M$ de l''espace tels que $\overrightarrow{MA} \cdot \overrightarrow{MB} = 0$ est :', '$\overrightarrow{MA} \cdot \overrightarrow{MB} = 0$ caractérise la sphère de diamètre $[AB]$.', 8);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6115081, 611508, 'la sphère de diamètre $[AB]$', TRUE, 1),
  (6115082, 611508, 'le plan médiateur de $[AB]$', FALSE, 2),
  (6115083, 611508, 'la droite $(AB)$', FALSE, 3),
  (6115084, 611508, 'la sphère de centre $A$ passant par $B$', FALSE, 4);

-- arithmetique-z
SET @l := (SELECT id FROM lecon WHERE slug = 'arithmetique-z' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'maths-1bac'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (6116, NULL, @l, 'QCM — Arithmetique dans Z', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (611601, 6116, 'Pour deux entiers $a$ et $b$, on a $b \mid a$ lorsque :', 'Par définition, $b \mid a$ signifie qu''il existe un entier $k$ tel que $a = bk$.', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6116011, 611601, 'il existe $k \in \mathbb{Z}$ tel que $a = bk$', TRUE, 1),
  (6116012, 611601, '$a < b$', FALSE, 2),
  (6116013, 611601, '$a + b = 0$', FALSE, 3),
  (6116014, 611601, '$a$ et $b$ sont premiers', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (611602, 6116, 'Quel est le reste de la division euclidienne de $47$ par $5$ ?', 'On a $47 = 5 \times 9 + 2$ avec $0 \le 2 < 5$, donc le reste est $2$.', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6116021, 611602, '$2$', TRUE, 1),
  (6116022, 611602, '$9$', FALSE, 2),
  (6116023, 611602, '$5$', FALSE, 3),
  (6116024, 611602, '$7$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (611603, 6116, 'Dans la division euclidienne $a = bq + r$ d''un entier par $b \neq 0$, le reste $r$ vérifie :', 'C''est l''encadrement $0 \le r < |b|$ qui assure l''unicité du couple $(q, r)$.', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6116031, 611603, '$0 \le r < |b|$', TRUE, 1),
  (6116032, 611603, '$0 < r \le |b|$', FALSE, 2),
  (6116033, 611603, '$r > |b|$', FALSE, 3),
  (6116034, 611603, '$r$ peut être quelconque', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (611604, 6116, 'Parmi les nombres suivants, lequel est premier ?', '$53$ n''a que $1$ et $53$ comme diviseurs. En revanche $51 = 3 \times 17$, $57 = 3 \times 19$ et $91 = 7 \times 13$.', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6116041, 611604, '$53$', TRUE, 1),
  (6116042, 611604, '$51$', FALSE, 2),
  (6116043, 611604, '$57$', FALSE, 3),
  (6116044, 611604, '$91$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (611605, 6116, 'Quelle est la décomposition en facteurs premiers de $360$ ?', 'Par divisions successives, $360 = 2^3 \times 3^2 \times 5$.', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6116051, 611605, '$2^3 \times 3^2 \times 5$', TRUE, 1),
  (6116052, 611605, '$2^2 \times 3^2 \times 5$', FALSE, 2),
  (6116053, 611605, '$2^3 \times 3 \times 5^2$', FALSE, 3),
  (6116054, 611605, '$2^4 \times 3 \times 5$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (611606, 6116, 'Combien de diviseurs positifs possède $360 = 2^3 \times 3^2 \times 5$ ?', 'Le nombre de diviseurs est $(3+1)(2+1)(1+1) = 4 \times 3 \times 2 = 24$.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6116061, 611606, '$24$', TRUE, 1),
  (6116062, 611606, '$6$', FALSE, 2),
  (6116063, 611606, '$12$', FALSE, 3),
  (6116064, 611606, '$360$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (611607, 6116, 'Que vaut $\text{pgcd}(252, 105)$ par l''algorithme d''Euclide ?', '$252 = 105 \times 2 + 42$, $105 = 42 \times 2 + 21$, $42 = 21 \times 2 + 0$ : le dernier reste non nul est $21$.', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6116071, 611607, '$21$', TRUE, 1),
  (6116072, 611607, '$3$', FALSE, 2),
  (6116073, 611607, '$42$', FALSE, 3),
  (6116074, 611607, '$7$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (611608, 6116, 'Pour deux entiers naturels non nuls $a$ et $b$, le produit $\text{pgcd}(a, b) \times \text{ppcm}(a, b)$ est égal à :', 'La relation fondamentale donne $\text{pgcd}(a, b) \times \text{ppcm}(a, b) = a \times b$.', 8);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6116081, 611608, '$a \times b$', TRUE, 1),
  (6116082, 611608, '$a + b$', FALSE, 2),
  (6116083, 611608, '$a - b$', FALSE, 3),
  (6116084, 611608, '$1$', FALSE, 4);

-- produit-vectoriel
SET @l := (SELECT id FROM lecon WHERE slug = 'produit-vectoriel' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'maths-1bac'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (6117, NULL, @l, 'QCM — Le produit vectoriel', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (611701, 6117, 'Dans un repère orthonormé direct $(O,\vec{\imath},\vec{\jmath},\vec{k})$, le produit vectoriel $\vec{\imath}\wedge\vec{\jmath}$ est égal à :', 'Le caractère direct du repère donne $\vec{\imath}\wedge\vec{\jmath}=\vec{k}$.', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6117011, 611701, '$\vec{k}$', TRUE, 1),
  (6117012, 611701, '$-\vec{k}$', FALSE, 2),
  (6117013, 611701, '$\vec{\imath}$', FALSE, 3),
  (6117014, 611701, '$\vec{0}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (611702, 6117, 'Soient $\vec{u}(1,0,2)$ et $\vec{v}(0,1,1)$. Les coordonnées de $\vec{u}\wedge\vec{v}$ sont :', '$\vec{u}\wedge\vec{v}=(0\cdot 1-2\cdot 1,\ 2\cdot 0-1\cdot 1,\ 1\cdot 1-0\cdot 0)=(-2,-1,1)$.', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6117021, 611702, '$(-2,-1,1)$', TRUE, 1),
  (6117022, 611702, '$(2,1,-1)$', FALSE, 2),
  (6117023, 611702, '$(-2,1,1)$', FALSE, 3),
  (6117024, 611702, '$(0,0,3)$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (611703, 6117, 'Deux vecteurs non nuls $\vec{u}$ et $\vec{v}$ sont colinéaires si et seulement si :', 'Le produit vectoriel est nul exactement lorsque les vecteurs sont colinéaires.', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6117031, 611703, '$\vec{u}\wedge\vec{v}=\vec{0}$', TRUE, 1),
  (6117032, 611703, '$\vec{u}\cdot\vec{v}=0$', FALSE, 2),
  (6117033, 611703, '$\vec{u}\wedge\vec{v}=\vec{u}$', FALSE, 3),
  (6117034, 611703, '$\|\vec{u}\wedge\vec{v}\|=1$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (611704, 6117, 'Pour tous vecteurs $\vec{u}$ et $\vec{v}$, le vecteur $\vec{v}\wedge\vec{u}$ est égal à :', 'Le produit vectoriel est antisymétrique : $\vec{v}\wedge\vec{u}=-(\vec{u}\wedge\vec{v})$.', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6117041, 611704, '$-(\vec{u}\wedge\vec{v})$', TRUE, 1),
  (6117042, 611704, '$\vec{u}\wedge\vec{v}$', FALSE, 2),
  (6117043, 611704, '$\vec{0}$', FALSE, 3),
  (6117044, 611704, '$\vec{u}\cdot\vec{v}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (611705, 6117, 'Si $\theta$ est l''angle géométrique entre $\vec{u}$ et $\vec{v}$, alors $\|\vec{u}\wedge\vec{v}\|$ vaut :', 'Par définition, $\|\vec{u}\wedge\vec{v}\|=\|\vec{u}\|\,\|\vec{v}\|\sin\theta$.', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6117051, 611705, '$\|\vec{u}\|\,\|\vec{v}\|\sin\theta$', TRUE, 1),
  (6117052, 611705, '$\|\vec{u}\|\,\|\vec{v}\|\cos\theta$', FALSE, 2),
  (6117053, 611705, '$\|\vec{u}\|+\|\vec{v}\|$', FALSE, 3),
  (6117054, 611705, '$\|\vec{u}\|\,\|\vec{v}\|$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (611706, 6117, 'L''aire du triangle $ABC$ est égale à :', 'L''aire du triangle est la moitié de celle du parallélogramme, donc $\frac{1}{2}\|\overrightarrow{AB}\wedge\overrightarrow{AC}\|$.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6117061, 611706, '$\dfrac{1}{2}\|\overrightarrow{AB}\wedge\overrightarrow{AC}\|$', TRUE, 1),
  (6117062, 611706, '$\|\overrightarrow{AB}\wedge\overrightarrow{AC}\|$', FALSE, 2),
  (6117063, 611706, '$\dfrac{1}{2}\,\overrightarrow{AB}\cdot\overrightarrow{AC}$', FALSE, 3),
  (6117064, 611706, '$\|\overrightarrow{AB}\|\,\|\overrightarrow{AC}\|$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (611707, 6117, 'Si $\overrightarrow{AB}\wedge\overrightarrow{AC}=(2,-2,1)$, l''aire du triangle $ABC$ vaut :', 'La norme vaut $\sqrt{4+4+1}=3$, et l''aire est la moitié : $\frac{3}{2}$.', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6117071, 611707, '$\dfrac{3}{2}$', TRUE, 1),
  (6117072, 611707, '$3$', FALSE, 2),
  (6117073, 611707, '$\dfrac{9}{2}$', FALSE, 3),
  (6117074, 611707, '$\sqrt{3}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (611708, 6117, 'Trois vecteurs $\vec{u}$, $\vec{v}$, $\vec{w}$ sont coplanaires si et seulement si :', 'Le produit mixte $(\vec{u}\wedge\vec{v})\cdot\vec{w}$ est nul exactement lorsque les trois vecteurs sont coplanaires.', 8);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6117081, 611708, '$(\vec{u}\wedge\vec{v})\cdot\vec{w}=0$', TRUE, 1),
  (6117082, 611708, '$(\vec{u}\wedge\vec{v})\cdot\vec{w}=1$', FALSE, 2),
  (6117083, 611708, '$\vec{u}\wedge\vec{v}=\vec{0}$', FALSE, 3),
  (6117084, 611708, '$\vec{u}\cdot\vec{v}=0$', FALSE, 4);

