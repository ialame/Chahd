-- Maths TCS : QCM des 15 chapitres (quiz 6401-6415).
SET SESSION sql_mode = CONCAT(@@sql_mode, ',NO_BACKSLASH_ESCAPES');

-- ensembles-nombres
SET @l := (SELECT id FROM lecon WHERE slug = 'ensembles-nombres' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'maths-tcs'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (6401, NULL, @l, 'QCM — Ensembles nombres', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (640101, 6401, 'Quelle est la chaîne d''inclusions correcte entre les ensembles de nombres ?', 'Les ensembles sont emboîtés des plus petits aux plus grands : entiers naturels, entiers relatifs, décimaux, rationnels, puis réels.', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6401011, 640101, '$\mathbb{N} \subset \mathbb{Z} \subset \mathbb{D} \subset \mathbb{Q} \subset \mathbb{R}$', TRUE, 1),
  (6401012, 640101, '$\mathbb{R} \subset \mathbb{Q} \subset \mathbb{D} \subset \mathbb{Z} \subset \mathbb{N}$', FALSE, 2),
  (6401013, 640101, '$\mathbb{N} \subset \mathbb{D} \subset \mathbb{Z} \subset \mathbb{Q} \subset \mathbb{R}$', FALSE, 3),
  (6401014, 640101, '$\mathbb{Z} \subset \mathbb{N} \subset \mathbb{Q} \subset \mathbb{D} \subset \mathbb{R}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (640102, 6401, 'À quel plus petit ensemble appartient le nombre $\dfrac{3}{4}$ ?', '$\dfrac{3}{4} = 0{,}75$ : le dénominateur $4 = 2^2$ ne contient que le facteur $2$, le nombre est donc décimal mais n''est pas entier.', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6401021, 640102, '$\mathbb{D}$', TRUE, 1),
  (6401022, 640102, '$\mathbb{N}$', FALSE, 2),
  (6401023, 640102, '$\mathbb{Z}$', FALSE, 3),
  (6401024, 640102, '$\mathbb{Q}$ mais pas $\mathbb{D}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (640103, 6401, 'Lequel de ces nombres est irrationnel ?', '$\sqrt{7}$ n''est pas un carré parfait : son écriture décimale est illimitée et non périodique, il n''appartient pas à $\mathbb{Q}$. Les autres sont des rationnels.', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6401031, 640103, '$\sqrt{7}$', TRUE, 1),
  (6401032, 640103, '$\sqrt{25}$', FALSE, 2),
  (6401033, 640103, '$\dfrac{2}{9}$', FALSE, 3),
  (6401034, 640103, '$-4$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (640104, 6401, 'Que vaut $2^5 \times 2^{-3}$ ?', 'On additionne les exposants pour une même base : $2^{5+(-3)} = 2^2 = 4$.', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6401041, 640104, '$4$', TRUE, 1),
  (6401042, 640104, '$2^{-15}$', FALSE, 2),
  (6401043, 640104, '$2^8 = 256$', FALSE, 3),
  (6401044, 640104, '$8$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (640105, 6401, 'Quelle est la forme simplifiée de $\sqrt{50}$ ?', 'On extrait le carré parfait : $\sqrt{50} = \sqrt{25 \times 2} = \sqrt{25}\,\sqrt{2} = 5\sqrt{2}$.', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6401051, 640105, '$5\sqrt{2}$', TRUE, 1),
  (6401052, 640105, '$25\sqrt{2}$', FALSE, 2),
  (6401053, 640105, '$2\sqrt{5}$', FALSE, 3),
  (6401054, 640105, '$10\sqrt{5}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (640106, 6401, 'Quel est l''ensemble des solutions de l''équation $|x| = 3$ ?', 'Pour $r > 0$, $|x| = r$ équivaut à $x = r$ ou $x = -r$ : les solutions sont $-3$ et $3$.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6401061, 640106, '$\{-3\,;\,3\}$', TRUE, 1),
  (6401062, 640106, '$\{3\}$', FALSE, 2),
  (6401063, 640106, '$[-3\,;\,3]$', FALSE, 3),
  (6401064, 640106, '$\{-3\}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (640107, 6401, 'L''inéquation $|x| \le 2$ a pour ensemble de solutions :', '$|x| \le r$ équivaut à $-r \le x \le r$, soit ici l''intervalle fermé $[-2\,;\,2]$.', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6401071, 640107, '$[-2\,;\,2]$', TRUE, 1),
  (6401072, 640107, '$]-\infty\,;\,-2] \cup [2\,;\,+\infty[$', FALSE, 2),
  (6401073, 640107, '$]-2\,;\,2[$', FALSE, 3),
  (6401074, 640107, '$[0\,;\,2]$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (640108, 6401, 'Que vaut l''intersection $[-1\,;\,4] \cap \,]2\,;\,7[$ ?', 'L''intersection garde les réels présents dans les deux intervalles : la borne basse $2$ est exclue (ouverte) et la borne haute $4$ est incluse, d''où $]2\,;\,4]$.', 8);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6401081, 640108, '$]2\,;\,4]$', TRUE, 1),
  (6401082, 640108, '$[-1\,;\,7[$', FALSE, 2),
  (6401083, 640108, '$[2\,;\,4[$', FALSE, 3),
  (6401084, 640108, '$]4\,;\,7[$', FALSE, 4);

-- arithmetique-n
SET @l := (SELECT id FROM lecon WHERE slug = 'arithmetique-n' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'maths-tcs'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (6402, NULL, @l, 'QCM — Arithmetique n', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (640201, 6402, 'Parmi les nombres suivants, lequel est divisible par $9$ ?', 'La somme des chiffres de $234$ est $2+3+4=9$, divisible par $9$, donc $234$ l''est aussi.', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6402011, 640201, '$234$', TRUE, 1),
  (6402012, 640201, '$142$', FALSE, 2),
  (6402013, 640201, '$521$', FALSE, 3),
  (6402014, 640201, '$388$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (640202, 6402, 'Lequel des entiers suivants est un nombre premier ?', '$51=3\times 17$, $87=3\times 29$ et $91=7\times 13$ ne sont pas premiers ; $83$ n''a que $1$ et $83$ pour diviseurs.', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6402021, 640202, '$83$', TRUE, 1),
  (6402022, 640202, '$51$', FALSE, 2),
  (6402023, 640202, '$87$', FALSE, 3),
  (6402024, 640202, '$91$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (640203, 6402, 'Quelle est la décomposition en facteurs premiers de $84$ ?', '$84=4\times 21=2^2\times 3\times 7$, et tous les facteurs sont premiers.', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6402031, 640203, '$2^2\times 3\times 7$', TRUE, 1),
  (6402032, 640203, '$2\times 3^2\times 7$', FALSE, 2),
  (6402033, 640203, '$2^2\times 21$', FALSE, 3),
  (6402034, 640203, '$2\times 42$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (640204, 6402, 'Que vaut $\text{pgcd}(12,\,18)$ ?', '$12=2^2\times 3$ et $18=2\times 3^2$ : on garde les facteurs communs au plus petit exposant, soit $2\times 3=6$.', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6402041, 640204, '$6$', TRUE, 1),
  (6402042, 640204, '$2$', FALSE, 2),
  (6402043, 640204, '$3$', FALSE, 3),
  (6402044, 640204, '$36$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (640205, 6402, 'Que vaut $\text{ppcm}(6,\,8)$ ?', '$6=2\times 3$ et $8=2^3$ : on prend tous les facteurs au plus grand exposant, soit $2^3\times 3=24$.', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6402051, 640205, '$24$', TRUE, 1),
  (6402052, 640205, '$48$', FALSE, 2),
  (6402053, 640205, '$2$', FALSE, 3),
  (6402054, 640205, '$14$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (640206, 6402, 'Quel couple d''entiers est formé de nombres premiers entre eux ?', '$\text{pgcd}(8,15)=1$. En revanche $\text{pgcd}(12,18)=6$, $\text{pgcd}(14,21)=7$ et $\text{pgcd}(9,15)=3$.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6402061, 640206, '$8$ et $15$', TRUE, 1),
  (6402062, 640206, '$12$ et $18$', FALSE, 2),
  (6402063, 640206, '$14$ et $21$', FALSE, 3),
  (6402064, 640206, '$9$ et $15$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (640207, 6402, 'Quelle est la forme irréductible de la fraction $\dfrac{36}{48}$ ?', '$\text{pgcd}(36,48)=12$, donc $\dfrac{36}{48}=\dfrac{36\div 12}{48\div 12}=\dfrac{3}{4}$.', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6402071, 640207, '$\dfrac{3}{4}$', TRUE, 1),
  (6402072, 640207, '$\dfrac{6}{8}$', FALSE, 2),
  (6402073, 640207, '$\dfrac{9}{12}$', FALSE, 3),
  (6402074, 640207, '$\dfrac{2}{3}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (640208, 6402, 'On sait que $\text{pgcd}(a,b)=4$ et $a\times b=240$. Que vaut $\text{ppcm}(a,b)$ ?', 'D''après $\text{pgcd}(a,b)\times \text{ppcm}(a,b)=a\times b$, on a $\text{ppcm}(a,b)=\dfrac{240}{4}=60$.', 8);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6402081, 640208, '$60$', TRUE, 1),
  (6402082, 640208, '$4$', FALSE, 2),
  (6402083, 640208, '$240$', FALSE, 3),
  (6402084, 640208, '$16$', FALSE, 4);

-- calcul-vectoriel
SET @l := (SELECT id FROM lecon WHERE slug = 'calcul-vectoriel' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'maths-tcs'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (6403, NULL, @l, 'QCM — Calcul vectoriel', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (640301, 6403, 'Soient $A$, $B$ et $C$ trois points du plan. La somme $\vec{AB}+\vec{BC}$ est égale à :', 'D''après la relation de Chasles, $\vec{AB}+\vec{BC}=\vec{AC}$.', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6403011, 640301, '$\vec{AC}$', TRUE, 1),
  (6403012, 640301, '$\vec{CA}$', FALSE, 2),
  (6403013, 640301, '$\vec{BA}$', FALSE, 3),
  (6403014, 640301, '$\vec{0}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (640302, 6403, 'Dans un repère, $A(2\,;\,-1)$ et $B(5\,;\,3)$. Les coordonnées du vecteur $\vec{AB}$ sont :', 'On calcule $\vec{AB}\,(x_B-x_A\,;\,y_B-y_A)=(5-2\,;\,3-(-1))=(3\,;\,4)$.', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6403021, 640302, '$(3\,;\,4)$', TRUE, 1),
  (6403022, 640302, '$(7\,;\,2)$', FALSE, 2),
  (6403023, 640302, '$(-3\,;\,-4)$', FALSE, 3),
  (6403024, 640302, '$(3\,;\,2)$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (640303, 6403, 'Dans un repère, $A(-2\,;\,4)$ et $B(6\,;\,2)$. Les coordonnées du milieu $I$ de $[AB]$ sont :', 'Le milieu a pour coordonnées les moyennes : $\left(\dfrac{-2+6}{2}\,;\,\dfrac{4+2}{2}\right)=(2\,;\,3)$.', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6403031, 640303, '$(2\,;\,3)$', TRUE, 1),
  (6403032, 640303, '$(4\,;\,6)$', FALSE, 2),
  (6403033, 640303, '$(8\,;\,-2)$', FALSE, 3),
  (6403034, 640303, '$(-1\,;\,2)$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (640304, 6403, 'Le déterminant des vecteurs $\vec{u}\,(3\,;\,-2)$ et $\vec{v}\,(6\,;\,-4)$ vaut :', '$\det(\vec{u},\vec{v})=xy''-x''y=3\times(-4)-6\times(-2)=-12+12=0$ : les vecteurs sont colinéaires.', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6403041, 640304, '$0$', TRUE, 1),
  (6403042, 640304, '$-24$', FALSE, 2),
  (6403043, 640304, '$24$', FALSE, 3),
  (6403044, 640304, '$12$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (640305, 6403, 'Pour quelle valeur de $k$ les vecteurs $\vec{u}\,(k\,;\,6)$ et $\vec{v}\,(2\,;\,4)$ sont-ils colinéaires ?', 'Colinéarité : $k\times 4-2\times 6=0$, soit $4k-12=0$, donc $k=3$.', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6403051, 640305, '$k=3$', TRUE, 1),
  (6403052, 640305, '$k=12$', FALSE, 2),
  (6403053, 640305, '$k=-3$', FALSE, 3),
  (6403054, 640305, '$k=\dfrac{1}{3}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (640306, 6403, 'Dans un repère orthonormé, la norme du vecteur $\vec{u}\,(-3\,;\,4)$ est :', '$\|\vec{u}\|=\sqrt{(-3)^2+4^2}=\sqrt{9+16}=\sqrt{25}=5$.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6403061, 640306, '$5$', TRUE, 1),
  (6403062, 640306, '$1$', FALSE, 2),
  (6403063, 640306, '$7$', FALSE, 3),
  (6403064, 640306, '$\sqrt{7}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (640307, 6403, 'Dans un repère orthonormé, $A(1\,;\,2)$ et $B(4\,;\,6)$. La distance $AB$ vaut :', '$AB=\sqrt{(4-1)^2+(6-2)^2}=\sqrt{9+16}=\sqrt{25}=5$.', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6403071, 640307, '$5$', TRUE, 1),
  (6403072, 640307, '$\sqrt{7}$', FALSE, 2),
  (6403073, 640307, '$25$', FALSE, 3),
  (6403074, 640307, '$7$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (640308, 6403, 'Soient $A$, $B$, $C$ et $D$ quatre points. $ABCD$ est un parallélogramme si et seulement si :', 'Dans un parallélogramme $ABCD$, les côtés $[AB]$ et $[DC]$ sont parallèles, de même longueur et de même sens : $\vec{AB}=\vec{DC}$.', 8);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6403081, 640308, '$\vec{AB}=\vec{DC}$', TRUE, 1),
  (6403082, 640308, '$\vec{AB}=\vec{CD}$', FALSE, 2),
  (6403083, 640308, '$\vec{AB}=\vec{BC}$', FALSE, 3),
  (6403084, 640308, '$\vec{AC}=\vec{BD}$', FALSE, 4);

-- projection
SET @l := (SELECT id FROM lecon WHERE slug = 'projection' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'maths-tcs'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (6404, NULL, @l, 'QCM — Projection', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (640401, 6404, 'Pour définir la projection sur une droite $(D)$ parallèlement à une droite $(\Delta)$, il faut que :', 'Si $(D)$ et $(\Delta)$ étaient parallèles, la parallèle à $(\Delta)$ passant par $M$ ne couperait pas $(D)$ : les deux droites doivent être sécantes.', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6404011, 640401, '$(D)$ et $(\Delta)$ soient parallèles', FALSE, 1),
  (6404012, 640401, '$(D)$ et $(\Delta)$ soient sécantes', TRUE, 2),
  (6404013, 640401, '$(D)$ et $(\Delta)$ soient perpendiculaires', FALSE, 3),
  (6404014, 640401, '$(D)$ et $(\Delta)$ soient confondues', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (640402, 6404, 'Soit $p$ la projection sur $(D)$ parallèlement à $(\Delta)$. Si $M$ appartient à $(D)$, alors :', 'Tout point de la droite support $(D)$ est invariant par la projection : son projeté est lui-même.', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6404021, 640402, '$p(M) = M$', TRUE, 1),
  (6404022, 640402, '$p(M)$ appartient à $(\Delta)$', FALSE, 2),
  (6404023, 640402, '$p(M)$ n''existe pas', FALSE, 3),
  (6404024, 640402, '$p(M)$ est le milieu de $(D)$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (640403, 6404, 'Deux points distincts $M$ et $N$ ont le même projeté sur $(D)$ parallèlement à $(\Delta)$ si et seulement si :', 'Deux points se projettent au même endroit lorsque la droite qui les joint suit la direction de projection, c''est-à-dire est parallèle à $(\Delta)$.', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6404031, 640403, 'la droite $(MN)$ est parallèle à $(D)$', FALSE, 1),
  (6404032, 640403, '$M$ et $N$ appartiennent à $(D)$', FALSE, 2),
  (6404033, 640403, 'la droite $(MN)$ est parallèle à $(\Delta)$', TRUE, 3),
  (6404034, 640403, '$M$ et $N$ sont symétriques par rapport à $(D)$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (640404, 6404, 'Pour une projection $p$, on a toujours $p(p(M))$ égal à :', 'Le point $p(M)$ appartient à $(D)$, il est donc invariant : $p(p(M)) = p(M)$. La projection est idempotente.', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6404041, 640404, '$M$', FALSE, 1),
  (6404042, 640404, 'le milieu de $[M\,p(M)]$', FALSE, 2),
  (6404043, 640404, 'le symétrique de $M$', FALSE, 3),
  (6404044, 640404, '$p(M)$', TRUE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (640405, 6404, 'Parmi les éléments suivants, lequel n''est PAS conservé en général par une projection ?', 'La projection conserve l''alignement, le milieu et les rapports (coefficient de colinéarité), mais pas les longueurs ni les angles en général.', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6404051, 640405, 'l''alignement', FALSE, 1),
  (6404052, 640405, 'les longueurs', TRUE, 2),
  (6404053, 640405, 'le milieu d''un segment', FALSE, 3),
  (6404054, 640405, 'le coefficient de colinéarité', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (640406, 6404, '$M \in [AB]$ et $N \in [AC]$ avec $(MN) \parallel (BC)$. Le théorème de Thalès donne :', 'Avec $(MN) \parallel (BC)$, les rapports des longueurs portées par les sécantes issues de $A$ sont égaux : c''est l''égalité de Thalès.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6404061, 640406, '$AM \times AB = AN \times AC$', FALSE, 1),
  (6404062, 640406, '$\dfrac{AM}{AB} = \dfrac{AN}{AC} = \dfrac{MN}{BC}$', TRUE, 2),
  (6404063, 640406, '$\dfrac{AM}{AB} = \dfrac{AC}{AN} = \dfrac{MN}{BC}$', FALSE, 3),
  (6404064, 640406, '$\dfrac{AM}{AN} = \dfrac{AB}{MN}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (640407, 6404, 'Dans un triangle $ABC$, $M \in [AB]$ et $N \in [AC]$ avec $(MN) \parallel (BC)$. Si $AM = 3$, $AB = 5$ et $AC = 10$, alors $AN$ vaut :', '$\dfrac{AN}{AC} = \dfrac{AM}{AB} = \dfrac{3}{5}$, donc $AN = \dfrac{3}{5} \times 10 = 6$.', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6404071, 640407, '$7{,}5$', FALSE, 1),
  (6404072, 640407, '$1{,}5$', FALSE, 2),
  (6404073, 640407, '$6$', TRUE, 3),
  (6404074, 640407, '$5$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (640408, 6404, 'Une projection est dite orthogonale lorsque :', 'Quand la direction de projection est perpendiculaire à la droite support, le projeté est le pied de la perpendiculaire : la projection est orthogonale.', 8);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6404081, 640408, 'la direction $(\Delta)$ est perpendiculaire à la droite $(D)$', TRUE, 1),
  (6404082, 640408, 'la direction $(\Delta)$ est parallèle à $(D)$', FALSE, 2),
  (6404083, 640408, 'le point projeté est le milieu de $(D)$', FALSE, 3),
  (6404084, 640408, 'la droite $(D)$ passe par l''origine', FALSE, 4);

-- ordre-dans-r
SET @l := (SELECT id FROM lecon WHERE slug = 'ordre-dans-r' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'maths-tcs'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (6405, NULL, @l, 'QCM — Ordre dans r', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (640501, 6405, 'On considère $A = \dfrac{1}{3}$ et $B = \dfrac{2}{5}$. En étudiant le signe de $A - B$, on obtient :', '$A - B = \dfrac{5}{15} - \dfrac{6}{15} = -\dfrac{1}{15} < 0$, donc $A < B$.', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6405011, 640501, '$A < B$', TRUE, 1),
  (6405012, 640501, '$A > B$', FALSE, 2),
  (6405013, 640501, '$A = B$', FALSE, 3),
  (6405014, 640501, 'On ne peut pas comparer', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (640502, 6405, 'Soient $a$ et $b$ deux réels tels que $a < b$, et $c$ un réel strictement négatif. Alors :', 'Multiplier les deux membres par un réel strictement négatif renverse le sens de l''inégalité : $ac > bc$.', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6405021, 640502, '$ac > bc$', TRUE, 1),
  (6405022, 640502, '$ac < bc$', FALSE, 2),
  (6405023, 640502, '$ac = bc$', FALSE, 3),
  (6405024, 640502, '$a + c > b + c$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (640503, 6405, 'Soient $a$ et $b$ deux réels tels que $0 < a \le b$. Alors :', 'Pour des réels strictement positifs (même signe), le passage à l''inverse change le sens : $\dfrac{1}{a} \ge \dfrac{1}{b}$.', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6405031, 640503, '$\dfrac{1}{a} \ge \dfrac{1}{b}$', TRUE, 1),
  (6405032, 640503, '$\dfrac{1}{a} \le \dfrac{1}{b}$', FALSE, 2),
  (6405033, 640503, '$\dfrac{1}{a} = \dfrac{1}{b}$', FALSE, 3),
  (6405034, 640503, '$\dfrac{1}{a} < 0$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (640504, 6405, 'On suppose que $2 \le x \le 4$ et $1 \le y \le 3$. Un encadrement de $x + y$ est :', 'On additionne membre à membre les deux encadrements : $2 + 1 \le x + y \le 4 + 3$, soit $3 \le x + y \le 7$.', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6405041, 640504, '$3 \le x + y \le 7$', TRUE, 1),
  (6405042, 640504, '$1 \le x + y \le 7$', FALSE, 2),
  (6405043, 640504, '$2 \le x + y \le 12$', FALSE, 3),
  (6405044, 640504, '$3 \le x + y \le 12$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (640505, 6405, 'Pour un réel $x$, l''inéquation $|x| \le 3$ équivaut à :', '$|x| \le 3 \iff -3 \le x \le 3$.', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6405051, 640505, '$-3 \le x \le 3$', TRUE, 1),
  (6405052, 640505, '$x \le 3$', FALSE, 2),
  (6405053, 640505, '$x \ge 3$', FALSE, 3),
  (6405054, 640505, '$x \le -3$ ou $x \ge 3$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (640506, 6405, 'L''ensemble des solutions de l''équation $|x - 1| = 4$ est :', '$|x - 1| = 4 \iff x - 1 = 4$ ou $x - 1 = -4$, donc $x = 5$ ou $x = -3$.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6405061, 640506, '$\{-3 ; 5\}$', TRUE, 1),
  (6405062, 640506, '$\{-5 ; 3\}$', FALSE, 2),
  (6405063, 640506, '$\{4\}$', FALSE, 3),
  (6405064, 640506, '$\{-4 ; 4\}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (640507, 6405, 'La partie entière $E(-2{,}5)$ vaut :', '$E(-2{,}5)$ est le plus grand entier inférieur ou égal à $-2{,}5$ : c''est $-3$, car $-3 \le -2{,}5 < -2$.', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6405071, 640507, '$-3$', TRUE, 1),
  (6405072, 640507, '$-2$', FALSE, 2),
  (6405073, 640507, '$2$', FALSE, 3),
  (6405074, 640507, '$3$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (640508, 6405, 'L''intervalle $[-1 ; 5]$ peut s''écrire sous la forme $\{ x \in \mathbb{R} \mid |x - a| \le r \}$ avec :', 'Le centre est $a = \dfrac{-1 + 5}{2} = 2$ et le rayon $r = \dfrac{5 - (-1)}{2} = 3$, d''où $|x - 2| \le 3$.', 8);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6405081, 640508, '$|x - 2| \le 3$', TRUE, 1),
  (6405082, 640508, '$|x - 3| \le 2$', FALSE, 2),
  (6405083, 640508, '$|x + 2| \le 3$', FALSE, 3),
  (6405084, 640508, '$|x - 2| \le 6$', FALSE, 4);

-- droite-plan
SET @l := (SELECT id FROM lecon WHERE slug = 'droite-plan' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'maths-tcs'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (6406, NULL, @l, 'QCM — Droite plan', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (640601, 6406, 'Un vecteur directeur de la droite d''équation $2x - 3y + 1 = 0$ est :', 'Pour une équation $ax + by + c = 0$, le vecteur $\vec{u}(-b, a)$ est directeur. Ici $a = 2$ et $b = -3$, donc $\vec{u}(3, 2)$.', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6406011, 640601, '$\vec{u}(3, 2)$', TRUE, 1),
  (6406012, 640601, '$\vec{u}(2, -3)$', FALSE, 2),
  (6406013, 640601, '$\vec{u}(2, 3)$', FALSE, 3),
  (6406014, 640601, '$\vec{u}(-3, 2)$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (640602, 6406, 'Le coefficient directeur de la droite d''équation $2x - 3y + 1 = 0$ est :', 'On isole $y$ : $3y = 2x + 1$, soit $y = \dfrac{2}{3}x + \dfrac{1}{3}$. Le coefficient directeur est $m = \dfrac{2}{3}$.', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6406021, 640602, '$\dfrac{2}{3}$', TRUE, 1),
  (6406022, 640602, '$-\dfrac{2}{3}$', FALSE, 2),
  (6406023, 640602, '$\dfrac{3}{2}$', FALSE, 3),
  (6406024, 640602, '$-\dfrac{3}{2}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (640603, 6406, 'Le coefficient directeur de la droite passant par $A(1, 2)$ et $B(3, 6)$ est :', 'On applique $m = \dfrac{y_B - y_A}{x_B - x_A} = \dfrac{6 - 2}{3 - 1} = \dfrac{4}{2} = 2$.', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6406031, 640603, '$2$', TRUE, 1),
  (6406032, 640603, '$\dfrac{1}{2}$', FALSE, 2),
  (6406033, 640603, '$-2$', FALSE, 3),
  (6406034, 640603, '$4$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (640604, 6406, 'L''équation réduite de la droite de coefficient directeur $2$ passant par $A(0, -3)$ est :', 'L''ordonnée à l''origine est $p = -3$ (point d''abscisse $0$), donc $y = 2x - 3$.', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6406041, 640604, '$y = 2x - 3$', TRUE, 1),
  (6406042, 640604, '$y = 2x + 3$', FALSE, 2),
  (6406043, 640604, '$y = -3x + 2$', FALSE, 3),
  (6406044, 640604, '$y = -2x - 3$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (640605, 6406, 'Les droites $(D) : y = 3x + 1$ et $(D'') : y = 3x - 2$ sont :', 'Elles ont le même coefficient directeur $m = 3$ mais des ordonnées à l''origine différentes ($1 \neq -2$) : elles sont strictement parallèles.', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6406051, 640605, 'strictement parallèles', TRUE, 1),
  (6406052, 640605, 'sécantes', FALSE, 2),
  (6406053, 640605, 'confondues', FALSE, 3),
  (6406054, 640605, 'perpendiculaires', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (640606, 6406, 'Le point d''intersection des droites $(D) : y = 2x + 1$ et $(D'') : y = -x + 4$ est :', 'On résout $2x + 1 = -x + 4$, soit $3x = 3$, donc $x = 1$ et $y = 3$. Le point est $(1, 3)$.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6406061, 640606, '$(1, 3)$', TRUE, 1),
  (6406062, 640606, '$(3, 1)$', FALSE, 2),
  (6406063, 640606, '$(-1, 3)$', FALSE, 3),
  (6406064, 640606, '$(1, -3)$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (640607, 6406, 'Parmi ces points, lequel appartient à la droite d''équation $x - 2y + 1 = 0$ ?', 'On teste chaque point : pour $(1, 1)$, $1 - 2\times 1 + 1 = 0$. Les autres ne vérifient pas l''équation.', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6406071, 640607, '$(1, 1)$', TRUE, 1),
  (6406072, 640607, '$(0, 1)$', FALSE, 2),
  (6406073, 640607, '$(2, 1)$', FALSE, 3),
  (6406074, 640607, '$(1, 0)$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (640608, 6406, 'Une équation cartésienne de la droite passant par $A(2, 0)$ et de vecteur directeur $\vec{u}(1, 3)$ est :', '$M(x, y)$ est sur la droite ssi le déterminant de $\overrightarrow{AM}(x - 2, y)$ et $\vec{u}(1, 3)$ est nul : $3(x - 2) - y = 0$, soit $3x - y - 6 = 0$.', 8);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6406081, 640608, '$3x - y - 6 = 0$', TRUE, 1),
  (6406082, 640608, '$x + 3y - 2 = 0$', FALSE, 2),
  (6406083, 640608, '$3x + y - 6 = 0$', FALSE, 3),
  (6406084, 640608, '$x - 3y - 2 = 0$', FALSE, 4);

-- polynomes
SET @l := (SELECT id FROM lecon WHERE slug = 'polynomes' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'maths-tcs'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (6407, NULL, @l, 'QCM — Polynomes', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (640701, 6407, 'Quel est le degré du polynôme $(2x^{3} - 5)(x^{2} + 1)$ ?', 'Le degré d''un produit est la somme des degrés : $3 + 2 = 5$.', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6407011, 640701, '$5$', TRUE, 1),
  (6407012, 640701, '$6$', FALSE, 2),
  (6407013, 640701, '$3$', FALSE, 3),
  (6407014, 640701, '$2$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (640702, 6407, 'Le développement de $(x - 4)^{2}$ est :', '$(a - b)^{2} = a^{2} - 2ab + b^{2}$, donc $x^{2} - 8x + 16$.', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6407021, 640702, '$x^{2} - 8x + 16$', TRUE, 1),
  (6407022, 640702, '$x^{2} - 16$', FALSE, 2),
  (6407023, 640702, '$x^{2} + 16$', FALSE, 3),
  (6407024, 640702, '$x^{2} - 8x - 16$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (640703, 6407, 'La forme factorisée de $16x^{2} - 9$ est :', 'C''est une différence de carrés : $(4x)^{2} - 3^{2} = (4x - 3)(4x + 3)$.', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6407031, 640703, '$(4x - 3)(4x + 3)$', TRUE, 1),
  (6407032, 640703, '$(4x - 9)(4x + 1)$', FALSE, 2),
  (6407033, 640703, '$(16x - 3)(x + 3)$', FALSE, 3),
  (6407034, 640703, '$(8x - 3)(8x + 3)$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (640704, 6407, 'En mettant en facteur, $6x^{2} - 15x$ est égal à :', 'Le facteur commun est $3x$ : $6x^{2} - 15x = 3x(2x - 5)$.', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6407041, 640704, '$3x(2x - 5)$', TRUE, 1),
  (6407042, 640704, '$3(2x^{2} - 5x)$', FALSE, 2),
  (6407043, 640704, '$x(6x - 15)$', FALSE, 3),
  (6407044, 640704, '$3x(2x + 5)$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (640705, 6407, 'Une racine du polynôme $x^{2} - 5x + 4$ est :', '$P(1) = 1 - 5 + 4 = 0$, donc $1$ est une racine.', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6407051, 640705, '$1$', TRUE, 1),
  (6407052, 640705, '$2$', FALSE, 2),
  (6407053, 640705, '$3$', FALSE, 3),
  (6407054, 640705, '$5$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (640706, 6407, 'Pour $x > 2$, quel est le signe du binôme $-3x + 6$ ?', 'Sa racine est $2$ et $a = -3 < 0$ : le binôme est du signe de $a$ après la racine, donc négatif.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6407061, 640706, 'Négatif', TRUE, 1),
  (6407062, 640706, 'Positif', FALSE, 2),
  (6407063, 640706, 'Nul', FALSE, 3),
  (6407064, 640706, 'Positif puis négatif', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (640707, 6407, 'Le trinôme $x^{2} - 5x + 6 = (x - 2)(x - 3)$ est strictement négatif sur :', 'Avec $a = 1 > 0$, le trinôme est du signe de $-a$ entre les racines $2$ et $3$.', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6407071, 640707, '$]2\,;\,3[$', TRUE, 1),
  (6407072, 640707, '$]-\infty\,;\,2[$', FALSE, 2),
  (6407073, 640707, '$]3\,;\,+\infty[$', FALSE, 3),
  (6407074, 640707, '$\mathbb{R}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (640708, 6407, 'Les solutions de l''équation $(x + 1)(x - 4) = 0$ sont :', 'Un produit est nul si l''un des facteurs est nul : $x = -1$ ou $x = 4$.', 8);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6407081, 640708, '$-1$ et $4$', TRUE, 1),
  (6407082, 640708, '$1$ et $4$', FALSE, 2),
  (6407083, 640708, '$-1$ et $-4$', FALSE, 3),
  (6407084, 640708, '$1$ et $-4$', FALSE, 4);

-- equations-inequations
SET @l := (SELECT id FROM lecon WHERE slug = 'equations-inequations' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'maths-tcs'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (6408, NULL, @l, 'QCM — Equations inequations', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (640801, 6408, 'Quelle est la solution de l''équation $2x - 6 = 0$ ?', '$2x = 6$ donne $x = 3$.', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6408011, 640801, '$x = 3$', TRUE, 1),
  (6408012, 640801, '$x = -3$', FALSE, 2),
  (6408013, 640801, '$x = 6$', FALSE, 3),
  (6408014, 640801, '$x = \dfrac{1}{3}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (640802, 6408, 'Quel est le discriminant de $x^2 - 5x + 6 = 0$ ?', '$\Delta = (-5)^2 - 4 \times 1 \times 6 = 25 - 24 = 1$.', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6408021, 640802, '$\Delta = 1$', TRUE, 1),
  (6408022, 640802, '$\Delta = 49$', FALSE, 2),
  (6408023, 640802, '$\Delta = -1$', FALSE, 3),
  (6408024, 640802, '$\Delta = 11$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (640803, 6408, 'Combien l''équation $x^2 + x + 1 = 0$ a-t-elle de solutions réelles ?', '$\Delta = 1 - 4 = -3 < 0$ : aucune solution réelle.', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6408031, 640803, 'Aucune', TRUE, 1),
  (6408032, 640803, 'Une solution double', FALSE, 2),
  (6408033, 640803, 'Deux solutions distinctes', FALSE, 3),
  (6408034, 640803, 'Une infinité', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (640804, 6408, 'Quel est l''ensemble des solutions de $(x - 2)(x + 5) = 0$ ?', 'Un produit est nul si un facteur l''est : $x = 2$ ou $x = -5$.', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6408041, 640804, '$\{-5\,;\, 2\}$', TRUE, 1),
  (6408042, 640804, '$\{-2\,;\, 5\}$', FALSE, 2),
  (6408043, 640804, '$\{2\,;\, 5\}$', FALSE, 3),
  (6408044, 640804, '$\{-2\,;\, -5\}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (640805, 6408, 'Quelle est la solution de $\dfrac{x - 3}{x + 2} = 0$ ?', 'Le quotient est nul si le numérateur l''est et le dénominateur non : $x = 3$ (et $x \neq -2$).', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6408051, 640805, '$x = 3$', TRUE, 1),
  (6408052, 640805, '$x = -2$', FALSE, 2),
  (6408053, 640805, '$x = -3$', FALSE, 3),
  (6408054, 640805, '$x = 2$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (640806, 6408, 'L''inéquation $-2x < 6$ équivaut à :', 'On divise par $-2 < 0$ en changeant le sens : $x > -3$.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6408061, 640806, '$x > -3$', TRUE, 1),
  (6408062, 640806, '$x < -3$', FALSE, 2),
  (6408063, 640806, '$x > 3$', FALSE, 3),
  (6408064, 640806, '$x < 3$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (640807, 6408, 'Le trinôme $x^2 - x - 6$ (de racines $-2$ et $3$) est strictement négatif sur :', 'Comme $a = 1 > 0$, le trinôme est négatif entre ses racines : $\left]-2\,;\, 3\right[$.', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6408071, 640807, '$\left]-2\,;\, 3\right[$', TRUE, 1),
  (6408072, 640807, '$\left]-\infty\,;\, -2\right[ \cup \left]3\,;\, +\infty\right[$', FALSE, 2),
  (6408073, 640807, '$\left]-3\,;\, 2\right[$', FALSE, 3),
  (6408074, 640807, '$\mathbb{R}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (640808, 6408, 'Quel est le déterminant du système $\begin{cases} 2x + 3y = 8 \\ x - y = 1 \end{cases}$ ?', '$\det = 2 \times (-1) - 1 \times 3 = -5$.', 8);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6408081, 640808, '$-5$', TRUE, 1),
  (6408082, 640808, '$5$', FALSE, 2),
  (6408083, 640808, '$-1$', FALSE, 3),
  (6408084, 640808, '$1$', FALSE, 4);

-- trigonometrie-1
SET @l := (SELECT id FROM lecon WHERE slug = 'trigonometrie-1' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'maths-tcs'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (6409, NULL, @l, 'QCM — Trigonometrie 1', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (640901, 6409, 'La mesure en radians de l''angle $45°$ est :', 'On multiplie par $\frac{\pi}{180}$ : $45 \times \frac{\pi}{180} = \frac{\pi}{4}$.', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6409011, 640901, '$\frac{\pi}{4}$', TRUE, 1),
  (6409012, 640901, '$\frac{\pi}{6}$', FALSE, 2),
  (6409013, 640901, '$\frac{\pi}{3}$', FALSE, 3),
  (6409014, 640901, '$\frac{\pi}{2}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (640902, 6409, 'La mesure en degrés de l''angle $\frac{3\pi}{2}$ rad est :', 'On multiplie par $\frac{180}{\pi}$ : $\frac{3}{2} \times 180 = 270°$.', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6409021, 640902, '$270°$', TRUE, 1),
  (6409022, 640902, '$135°$', FALSE, 2),
  (6409023, 640902, '$180°$', FALSE, 3),
  (6409024, 640902, '$240°$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (640903, 6409, 'La valeur de $\sin\frac{\pi}{6}$ est :', '$\frac{\pi}{6}$ correspond à $30°$ : $\sin\frac{\pi}{6} = \frac{1}{2}$.', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6409031, 640903, '$\frac{1}{2}$', TRUE, 1),
  (6409032, 640903, '$\frac{\sqrt{3}}{2}$', FALSE, 2),
  (6409033, 640903, '$\frac{\sqrt{2}}{2}$', FALSE, 3),
  (6409034, 640903, '$1$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (640904, 6409, 'La valeur de $\tan\frac{\pi}{4}$ est :', '$\tan\frac{\pi}{4} = \frac{\sin(\pi/4)}{\cos(\pi/4)} = \frac{\sqrt{2}/2}{\sqrt{2}/2} = 1$.', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6409041, 640904, '$1$', TRUE, 1),
  (6409042, 640904, '$\sqrt{3}$', FALSE, 2),
  (6409043, 640904, '$\frac{\sqrt{3}}{3}$', FALSE, 3),
  (6409044, 640904, '$0$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (640905, 6409, 'Si le point image de $x$ est dans le $3^{e}$ quadrant ($\pi < x < \frac{3\pi}{2}$), alors $\sin x$ est :', 'Dans le $3^{e}$ quadrant, $\cos x < 0$ et $\sin x < 0$ : le sinus est négatif.', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6409051, 640905, 'négatif', TRUE, 1),
  (6409052, 640905, 'positif', FALSE, 2),
  (6409053, 640905, 'nul', FALSE, 3),
  (6409054, 640905, 'égal à $1$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (640906, 6409, 'Si $\cos x = \frac{3}{5}$ avec $x \in \left]0 ; \frac{\pi}{2}\right[$, alors $\sin x$ vaut :', '$\sin^2 x = 1 - \frac{9}{25} = \frac{16}{25}$ et $\sin x > 0$ dans le $1^{er}$ quadrant, donc $\sin x = \frac{4}{5}$.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6409061, 640906, '$\frac{4}{5}$', TRUE, 1),
  (6409062, 640906, '$-\frac{4}{5}$', FALSE, 2),
  (6409063, 640906, '$\frac{2}{5}$', FALSE, 3),
  (6409064, 640906, '$\frac{16}{25}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (640907, 6409, 'Pour tout réel $x$, $\sin(-x)$ est égal à :', 'L''angle opposé $-x$ donne le symétrique par rapport à l''axe des abscisses : $\sin(-x) = -\sin x$.', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6409071, 640907, '$-\sin x$', TRUE, 1),
  (6409072, 640907, '$\sin x$', FALSE, 2),
  (6409073, 640907, '$\cos x$', FALSE, 3),
  (6409074, 640907, '$-\cos x$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (640908, 6409, 'Pour tout réel $x$, $\cos(\pi + x)$ est égal à :', 'L''angle $\pi + x$ donne le symétrique par rapport à l''origine : $\cos(\pi + x) = -\cos x$.', 8);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6409081, 640908, '$-\cos x$', TRUE, 1),
  (6409082, 640908, '$\cos x$', FALSE, 2),
  (6409083, 640908, '$\sin x$', FALSE, 3),
  (6409084, 640908, '$-\sin x$', FALSE, 4);

-- trigonometrie-2
SET @l := (SELECT id FROM lecon WHERE slug = 'trigonometrie-2' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'maths-tcs'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (6410, NULL, @l, 'QCM — Trigonometrie 2', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (641001, 6410, 'Les solutions dans $\mathbb{R}$ de l''équation $\cos x = \dfrac{1}{2}$ sont :', 'Comme $\cos \dfrac{\pi}{3} = \dfrac{1}{2}$, deux angles ont le même cosinus s''ils sont égaux ou opposés modulo $2\pi$, d''où $x = \dfrac{\pi}{3} + 2k\pi$ ou $x = -\dfrac{\pi}{3} + 2k\pi$.', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6410011, 641001, '$x = \dfrac{\pi}{3} + 2k\pi$ ou $x = -\dfrac{\pi}{3} + 2k\pi$', TRUE, 1),
  (6410012, 641001, '$x = \dfrac{\pi}{3} + 2k\pi$ ou $x = \dfrac{2\pi}{3} + 2k\pi$', FALSE, 2),
  (6410013, 641001, '$x = \dfrac{\pi}{3} + k\pi$', FALSE, 3),
  (6410014, 641001, '$x = \dfrac{\pi}{6} + 2k\pi$ ou $x = -\dfrac{\pi}{6} + 2k\pi$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (641002, 6410, 'L''équation $\cos x = 3$ admet :', 'Le cosinus d''un réel est toujours compris entre $-1$ et $1$. Comme $3 > 1$, l''équation n''a aucune solution.', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6410021, 641002, 'aucune solution', TRUE, 1),
  (6410022, 641002, 'une seule solution', FALSE, 2),
  (6410023, 641002, 'deux familles de solutions', FALSE, 3),
  (6410024, 641002, 'une infinité de solutions', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (641003, 6410, 'Les solutions dans $\mathbb{R}$ de l''équation $\sin x = \dfrac{\sqrt{3}}{2}$ sont :', 'Comme $\sin \dfrac{\pi}{3} = \dfrac{\sqrt{3}}{2}$, deux angles ont le même sinus s''ils sont égaux ou supplémentaires modulo $2\pi$, d''où $x = \dfrac{\pi}{3} + 2k\pi$ ou $x = \pi - \dfrac{\pi}{3} + 2k\pi = \dfrac{2\pi}{3} + 2k\pi$.', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6410031, 641003, '$x = \dfrac{\pi}{3} + 2k\pi$ ou $x = \dfrac{2\pi}{3} + 2k\pi$', TRUE, 1),
  (6410032, 641003, '$x = \dfrac{\pi}{3} + 2k\pi$ ou $x = -\dfrac{\pi}{3} + 2k\pi$', FALSE, 2),
  (6410033, 641003, '$x = \dfrac{\pi}{3} + k\pi$', FALSE, 3),
  (6410034, 641003, '$x = \dfrac{\pi}{6} + 2k\pi$ ou $x = \dfrac{5\pi}{6} + 2k\pi$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (641004, 6410, 'Les solutions dans $\mathbb{R}$ de l''équation $\tan x = \sqrt{3}$ sont :', 'La tangente est de période $\pi$ : deux angles ont la même tangente s''ils diffèrent d''un multiple de $\pi$. Comme $\tan \dfrac{\pi}{3} = \sqrt{3}$, on obtient $x = \dfrac{\pi}{3} + k\pi$.', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6410041, 641004, '$x = \dfrac{\pi}{3} + k\pi$', TRUE, 1),
  (6410042, 641004, '$x = \dfrac{\pi}{3} + 2k\pi$ ou $x = -\dfrac{\pi}{3} + 2k\pi$', FALSE, 2),
  (6410043, 641004, '$x = \dfrac{\pi}{3} + 2k\pi$', FALSE, 3),
  (6410044, 641004, '$x = \dfrac{\pi}{6} + k\pi$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (641005, 6410, 'Les solutions de l''équation $\cos x = \dfrac{\sqrt{2}}{2}$ appartenant à $[0, 2\pi[$ sont :', 'La solution générale est $x = \dfrac{\pi}{4} + 2k\pi$ ou $x = -\dfrac{\pi}{4} + 2k\pi$. Dans $[0, 2\pi[$, on retient $\dfrac{\pi}{4}$ et $-\dfrac{\pi}{4} + 2\pi = \dfrac{7\pi}{4}$.', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6410051, 641005, '$\dfrac{\pi}{4}$ et $\dfrac{7\pi}{4}$', TRUE, 1),
  (6410052, 641005, '$\dfrac{\pi}{4}$ et $\dfrac{3\pi}{4}$', FALSE, 2),
  (6410053, 641005, '$\dfrac{\pi}{4}$ et $\dfrac{5\pi}{4}$', FALSE, 3),
  (6410054, 641005, '$\dfrac{\pi}{4}$ seulement', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (641006, 6410, 'Les solutions de l''équation $\sin x = -\dfrac{1}{2}$ appartenant à $[0, 2\pi[$ sont :', 'Avec $\alpha = -\dfrac{\pi}{6}$, la solution générale est $x = -\dfrac{\pi}{6} + 2k\pi$ ou $x = \dfrac{7\pi}{6} + 2k\pi$. Dans $[0, 2\pi[$, on retient $-\dfrac{\pi}{6} + 2\pi = \dfrac{11\pi}{6}$ et $\dfrac{7\pi}{6}$.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6410061, 641006, '$\dfrac{7\pi}{6}$ et $\dfrac{11\pi}{6}$', TRUE, 1),
  (6410062, 641006, '$\dfrac{\pi}{6}$ et $\dfrac{5\pi}{6}$', FALSE, 2),
  (6410063, 641006, '$\dfrac{5\pi}{6}$ et $\dfrac{7\pi}{6}$', FALSE, 3),
  (6410064, 641006, '$\dfrac{\pi}{6}$ et $\dfrac{11\pi}{6}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (641007, 6410, 'L''ensemble des solutions de l''inéquation $\cos x \ge \dfrac{1}{2}$ dans $[-\pi, \pi]$ est :', 'Les frontières sont $x = -\dfrac{\pi}{3}$ et $x = \dfrac{\pi}{3}$. Les points dont le cosinus est supérieur à $\dfrac{1}{2}$ sont à droite de la verticale d''abscisse $\dfrac{1}{2}$, soit l''arc des angles entre $-\dfrac{\pi}{3}$ et $\dfrac{\pi}{3}$.', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6410071, 641007, '$\left[-\dfrac{\pi}{3}, \ \dfrac{\pi}{3}\right]$', TRUE, 1),
  (6410072, 641007, '$\left[\dfrac{\pi}{3}, \ \dfrac{2\pi}{3}\right]$', FALSE, 2),
  (6410073, 641007, '$\left[-\pi, \ -\dfrac{\pi}{3}\right] \cup \left[\dfrac{\pi}{3}, \ \pi\right]$', FALSE, 3),
  (6410074, 641007, '$\left[-\dfrac{\pi}{6}, \ \dfrac{\pi}{6}\right]$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (641008, 6410, 'Les solutions dans $\mathbb{R}$ de l''équation $\tan x = -1$ sont :', 'La tangente est de période $\pi$. Comme $\tan\left(-\dfrac{\pi}{4}\right) = -1$, on obtient $x = -\dfrac{\pi}{4} + k\pi$.', 8);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6410081, 641008, '$x = -\dfrac{\pi}{4} + k\pi$', TRUE, 1),
  (6410082, 641008, '$x = -\dfrac{\pi}{4} + 2k\pi$ ou $x = \dfrac{5\pi}{4} + 2k\pi$', FALSE, 2),
  (6410083, 641008, '$x = \dfrac{\pi}{4} + k\pi$', FALSE, 3),
  (6410084, 641008, '$x = -\dfrac{\pi}{4} + 2k\pi$', FALSE, 4);

-- generalites-fonctions
SET @l := (SELECT id FROM lecon WHERE slug = 'generalites-fonctions' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'maths-tcs'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (6411, NULL, @l, 'QCM — Generalites fonctions', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (641101, 6411, 'Quel est l''ensemble de définition de $f(x) = \frac{1}{x-2}$ ?', 'Le dénominateur doit être non nul : $x - 2 \neq 0$, soit $x \neq 2$.', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6411011, 641101, '$\mathbb{R} \setminus \{2\}$', TRUE, 1),
  (6411012, 641101, '$\mathbb{R}$', FALSE, 2),
  (6411013, 641101, '$[2, +\infty[$', FALSE, 3),
  (6411014, 641101, '$\mathbb{R} \setminus \{0\}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (641102, 6411, 'Quel est l''ensemble de définition de $g(x) = \sqrt{x-3}$ ?', 'L''expression sous la racine doit être positive ou nulle : $x - 3 \ge 0$, soit $x \ge 3$.', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6411021, 641102, '$[3, +\infty[$', TRUE, 1),
  (6411022, 641102, '$]-\infty, 3]$', FALSE, 2),
  (6411023, 641102, '$]3, +\infty[$', FALSE, 3),
  (6411024, 641102, '$\mathbb{R} \setminus \{3\}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (641103, 6411, 'Soit $f(x) = 2x - 1$. Quelle est l''image de $3$ par $f$ ?', '$f(3) = 2 \times 3 - 1 = 5$.', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6411031, 641103, '$5$', TRUE, 1),
  (6411032, 641103, '$6$', FALSE, 2),
  (6411033, 641103, '$2$', FALSE, 3),
  (6411034, 641103, '$7$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (641104, 6411, 'Soit $f(x) = x^2$. Quels sont les antécédents de $9$ par $f$ ?', '$x^2 = 9 \iff x = 3$ ou $x = -3$.', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6411041, 641104, '$-3$ et $3$', TRUE, 1),
  (6411042, 641104, '$3$ seulement', FALSE, 2),
  (6411043, 641104, '$81$', FALSE, 3),
  (6411044, 641104, '$\sqrt{9}$ seulement', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (641105, 6411, 'La fonction définie sur $\mathbb{R}$ par $f(x) = x^3$ est :', '$f(-x) = (-x)^3 = -x^3 = -f(x)$ et $\mathbb{R}$ est symétrique : $f$ est impaire.', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6411051, 641105, 'impaire', TRUE, 1),
  (6411052, 641105, 'paire', FALSE, 2),
  (6411053, 641105, 'à la fois paire et impaire', FALSE, 3),
  (6411054, 641105, 'ni paire ni impaire', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (641106, 6411, 'Sur quel intervalle la fonction carré $x \mapsto x^2$ est-elle décroissante ?', 'La fonction carré est décroissante sur $]-\infty, 0]$ puis croissante sur $[0, +\infty[$.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6411061, 641106, '$]-\infty, 0]$', TRUE, 1),
  (6411062, 641106, '$[0, +\infty[$', FALSE, 2),
  (6411063, 641106, '$\mathbb{R}$ tout entier', FALSE, 3),
  (6411064, 641106, '$]0, +\infty[$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (641107, 6411, 'Une fonction affine $f(x) = ax + b$ est strictement croissante sur $\mathbb{R}$ si et seulement si :', 'Le taux de variation d''une fonction affine est constant et vaut $a$ ; elle croît lorsque $a > 0$.', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6411071, 641107, '$a > 0$', TRUE, 1),
  (6411072, 641107, '$a < 0$', FALSE, 2),
  (6411073, 641107, '$b > 0$', FALSE, 3),
  (6411074, 641107, '$a = 0$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (641108, 6411, 'La fonction $f(x) = (x-1)^2 + 3$ admet sur $\mathbb{R}$ :', 'Comme $(x-1)^2 \ge 0$, on a $f(x) \ge 3$, avec égalité en $x = 1$ : minimum égal à $3$ atteint en $1$.', 8);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6411081, 641108, 'un minimum égal à $3$, atteint en $x = 1$', TRUE, 1),
  (6411082, 641108, 'un maximum égal à $3$, atteint en $x = 1$', FALSE, 2),
  (6411083, 641108, 'un minimum égal à $1$, atteint en $x = 3$', FALSE, 3),
  (6411084, 641108, 'aucun extremum', FALSE, 4);

-- transformations-plan
SET @l := (SELECT id FROM lecon WHERE slug = 'transformations-plan' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'maths-tcs'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (6412, NULL, @l, 'QCM — Transformations plan', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (641201, 6412, 'Dans un repère, la translation de vecteur $\vec{u}(2;3)$ transforme le point $A(1;-1)$ en :', 'On ajoute les coordonnées de $\vec{u}$ : $(1+2\,;\,-1+3) = (3;2)$.', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6412011, 641201, '$(3;2)$', TRUE, 1),
  (6412012, 641201, '$(-1;-4)$', FALSE, 2),
  (6412013, 641201, '$(2;3)$', FALSE, 3),
  (6412014, 641201, '$(3;-2)$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (641202, 6412, 'La symétrie centrale de centre $O$ (origine) transforme le point $(4;-2)$ en :', 'L''image vérifie $\overrightarrow{OM''} = -\overrightarrow{OM}$, donc on change les deux signes : $(-4;2)$.', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6412021, 641202, '$(-4;2)$', TRUE, 1),
  (6412022, 641202, '$(4;2)$', FALSE, 2),
  (6412023, 641202, '$(-4;-2)$', FALSE, 3),
  (6412024, 641202, '$(2;-4)$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (641203, 6412, 'Dans un repère orthonormé, la symétrie d''axe $(Ox)$ transforme le point $(3;5)$ en :', 'La symétrie d''axe $(Ox)$ change le signe de l''ordonnée : $(3;-5)$.', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6412031, 641203, '$(3;-5)$', TRUE, 1),
  (6412032, 641203, '$(-3;5)$', FALSE, 2),
  (6412033, 641203, '$(-3;-5)$', FALSE, 3),
  (6412034, 641203, '$(5;3)$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (641204, 6412, 'Une homothétie de rapport $k$ multiplie les aires par :', 'Les longueurs sont multipliées par $|k|$ et les aires par $k^2$.', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6412041, 641204, '$k^2$', TRUE, 1),
  (6412042, 641204, '$k$', FALSE, 2),
  (6412043, 641204, '$|k|$', FALSE, 3),
  (6412044, 641204, '$2k$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (641205, 6412, 'Parmi ces transformations, laquelle n''est en général pas une isométrie ?', 'L''homothétie de rapport $2$ multiplie les longueurs par $2$ : elle ne conserve pas les distances.', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6412051, 641205, 'L''homothétie de rapport $2$', TRUE, 1),
  (6412052, 641205, 'La translation', FALSE, 2),
  (6412053, 641205, 'La rotation', FALSE, 3),
  (6412054, 641205, 'La symétrie axiale', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (641206, 6412, 'L''homothétie de centre $O$ et de rapport $-2$ transforme le point $(1;3)$ en :', 'On a $\overrightarrow{OM''} = -2\,\overrightarrow{OM}$, donc $(-2\times 1\,;\,-2\times 3) = (-2;-6)$.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6412061, 641206, '$(-2;-6)$', TRUE, 1),
  (6412062, 641206, '$(2;6)$', FALSE, 2),
  (6412063, 641206, '$(-1;-3)$', FALSE, 3),
  (6412064, 641206, '$(-2;6)$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (641207, 6412, 'La rotation de centre $O$ et d''angle $180^\circ$ est identique à :', 'Une rotation d''angle $180^\circ$ autour de $O$ est la symétrie centrale de centre $O$.', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6412071, 641207, 'la symétrie centrale de centre $O$', TRUE, 1),
  (6412072, 641207, 'la translation de vecteur nul', FALSE, 2),
  (6412073, 641207, 'une homothétie de rapport $2$', FALSE, 3),
  (6412074, 641207, 'la symétrie d''axe $(Ox)$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (641208, 6412, 'Par une translation, l''image d''une droite $(d)$ est :', 'La translation conserve l''alignement et la direction : l''image d''une droite est une droite qui lui est parallèle.', 8);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6412081, 641208, 'une droite parallèle à $(d)$', TRUE, 1),
  (6412082, 641208, 'une droite perpendiculaire à $(d)$', FALSE, 2),
  (6412083, 641208, 'un cercle', FALSE, 3),
  (6412084, 641208, 'un point', FALSE, 4);

-- produit-scalaire
SET @l := (SELECT id FROM lecon WHERE slug = 'produit-scalaire' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'maths-tcs'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (6413, NULL, @l, 'QCM — Produit scalaire', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (641301, 6413, 'Soient $\vec{u}$ et $\vec{v}$ tels que $\|\vec{u}\| = 2$, $\|\vec{v}\| = 3$ et l''angle $(\vec{u},\vec{v})$ mesure $60^\circ$. Alors $\vec{u}\cdot\vec{v}$ vaut :', '$\vec{u}\cdot\vec{v} = \|\vec{u}\|\,\|\vec{v}\|\cos(60^\circ) = 2\times 3\times\tfrac{1}{2} = 3$.', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6413011, 641301, '$3$', TRUE, 1),
  (6413012, 641301, '$6$', FALSE, 2),
  (6413013, 641301, '$\dfrac{3}{2}$', FALSE, 3),
  (6413014, 641301, '$-3$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (641302, 6413, 'Dans un repère orthonormé, $\vec{u}\begin{pmatrix} 2 \\ 3 \end{pmatrix}$ et $\vec{v}\begin{pmatrix} -1 \\ 4 \end{pmatrix}$. Le produit scalaire $\vec{u}\cdot\vec{v}$ vaut :', '$\vec{u}\cdot\vec{v} = xx'' + yy'' = 2\times(-1) + 3\times 4 = -2 + 12 = 10$.', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6413021, 641302, '$10$', TRUE, 1),
  (6413022, 641302, '$-10$', FALSE, 2),
  (6413023, 641302, '$14$', FALSE, 3),
  (6413024, 641302, '$2$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (641303, 6413, 'Dans un repère orthonormé, les vecteurs $\vec{u}\begin{pmatrix} 1 \\ 2 \end{pmatrix}$ et $\vec{v}\begin{pmatrix} 4 \\ -2 \end{pmatrix}$ sont :', '$\vec{u}\cdot\vec{v} = 1\times 4 + 2\times(-2) = 4 - 4 = 0$ : le produit scalaire est nul, donc les vecteurs sont orthogonaux.', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6413031, 641303, 'orthogonaux', TRUE, 1),
  (6413032, 641303, 'colinéaires', FALSE, 2),
  (6413033, 641303, 'égaux', FALSE, 3),
  (6413034, 641303, 'de même norme', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (641304, 6413, 'Dans un repère orthonormé, la norme du vecteur $\vec{u}\begin{pmatrix} -3 \\ 4 \end{pmatrix}$ vaut :', '$\|\vec{u}\| = \sqrt{x^2 + y^2} = \sqrt{(-3)^2 + 4^2} = \sqrt{9 + 16} = \sqrt{25} = 5$.', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6413041, 641304, '$5$', TRUE, 1),
  (6413042, 641304, '$7$', FALSE, 2),
  (6413043, 641304, '$1$', FALSE, 3),
  (6413044, 641304, '$25$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (641305, 6413, 'Pour tout vecteur $\vec{u}$, le carré scalaire $\vec{u}\cdot\vec{u}$ est égal à :', 'L''angle de $\vec{u}$ avec lui-même est nul et $\cos(0) = 1$, donc $\vec{u}\cdot\vec{u} = \|\vec{u}\|^2$.', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6413051, 641305, '$\|\vec{u}\|^2$', TRUE, 1),
  (6413052, 641305, '$\|\vec{u}\|$', FALSE, 2),
  (6413053, 641305, '$2\|\vec{u}\|$', FALSE, 3),
  (6413054, 641305, '$0$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (641306, 6413, 'Dans un repère orthonormé, une mesure de l''angle entre $\vec{u}\begin{pmatrix} 1 \\ 0 \end{pmatrix}$ et $\vec{v}\begin{pmatrix} 1 \\ 1 \end{pmatrix}$ est :', '$\cos\theta = \dfrac{\vec{u}\cdot\vec{v}}{\|\vec{u}\|\,\|\vec{v}\|} = \dfrac{1}{1\times\sqrt{2}} = \dfrac{\sqrt{2}}{2}$, donc $\theta = 45^\circ$.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6413061, 641306, '$45^\circ$', TRUE, 1),
  (6413062, 641306, '$30^\circ$', FALSE, 2),
  (6413063, 641306, '$60^\circ$', FALSE, 3),
  (6413064, 641306, '$90^\circ$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (641307, 6413, 'Dans un triangle $ABC$ avec $AB = 4$, $AC = 3$ et $\widehat{A} = 60^\circ$, le théorème d''Al-Kashi donne $BC^2 = $', '$BC^2 = AB^2 + AC^2 - 2\,AB\times AC\times\cos\widehat{A} = 16 + 9 - 2\times 4\times 3\times\tfrac{1}{2} = 25 - 12 = 13$.', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6413071, 641307, '$13$', TRUE, 1),
  (6413072, 641307, '$25$', FALSE, 2),
  (6413073, 641307, '$37$', FALSE, 3),
  (6413074, 641307, '$7$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (641308, 6413, 'Si l''angle entre deux vecteurs non nuls $\vec{u}$ et $\vec{v}$ est obtus, alors leur produit scalaire $\vec{u}\cdot\vec{v}$ est :', 'Un angle obtus a un cosinus négatif ; comme les normes sont positives, $\vec{u}\cdot\vec{v} = \|\vec{u}\|\,\|\vec{v}\|\cos\theta < 0$.', 8);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6413081, 641308, 'strictement négatif', TRUE, 1),
  (6413082, 641308, 'strictement positif', FALSE, 2),
  (6413083, 641308, 'nul', FALSE, 3),
  (6413084, 641308, 'égal à $1$', FALSE, 4);

-- geometrie-espace
SET @l := (SELECT id FROM lecon WHERE slug = 'geometrie-espace' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'maths-tcs'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (6414, NULL, @l, 'QCM — Geometrie espace', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (641401, 6414, 'Dans l''espace, deux droites qui n''ont aucun point commun sont nécessairement :', 'Deux droites sans point commun sont soit parallèles (même direction), soit non coplanaires. On ne peut donc rien conclure de plus précis sans information sur leurs directions.', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6414011, 641401, 'parallèles ou non coplanaires', TRUE, 1),
  (6414012, 641401, 'toujours parallèles', FALSE, 2),
  (6414013, 641401, 'toujours non coplanaires', FALSE, 3),
  (6414014, 641401, 'sécantes', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (641402, 6414, 'Combien de plans passent par trois points non alignés de l''espace ?', 'Trois points non alignés déterminent un plan et un seul : c''est l''une des règles fondamentales d''incidence.', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6414021, 641402, 'un seul', TRUE, 1),
  (6414022, 641402, 'aucun', FALSE, 2),
  (6414023, 641402, 'deux', FALSE, 3),
  (6414024, 641402, 'une infinité', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (641403, 6414, 'Lorsque deux plans de l''espace sont sécants, leur intersection est :', 'Deux plans sont soit parallèles, soit sécants. S''ils sont sécants, leur intersection est toujours une droite.', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6414031, 641403, 'une droite', TRUE, 1),
  (6414032, 641403, 'un point', FALSE, 2),
  (6414033, 641403, 'un segment', FALSE, 3),
  (6414034, 641403, 'l''ensemble vide', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (641404, 6414, 'Pour démontrer qu''une droite $(D)$ est parallèle à un plan $(P)$, il suffit de prouver que :', 'Critère de parallélisme droite-plan : si $(D)$ est parallèle à une droite contenue dans $(P)$, sans être elle-même dans $(P)$, alors $(D)$ est parallèle à $(P)$.', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6414041, 641404, '$(D)$ est parallèle à une droite de $(P)$ et n''est pas contenue dans $(P)$', TRUE, 1),
  (6414042, 641404, '$(D)$ est orthogonale à une droite de $(P)$', FALSE, 2),
  (6414043, 641404, '$(D)$ coupe le plan $(P)$ en un point', FALSE, 3),
  (6414044, 641404, '$(D)$ est parallèle à une seule droite de l''espace', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (641405, 6414, 'Deux plans $(P)$ et $(Q)$ sont sécants selon une droite $(\Delta)$. Une droite $(D)$ de $(P)$ et une droite $(D'')$ de $(Q)$ vérifient $(D) \parallel (D'')$. D''après le théorème du toit :', 'Le théorème du toit affirme que si $(D) \subset (P)$, $(D'') \subset (Q)$ avec $(D) \parallel (D'')$, alors $(D)$, $(D'')$ et la droite d''intersection $(\Delta)$ sont toutes parallèles.', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6414051, 641405, '$(\Delta)$ est parallèle à $(D)$ et à $(D'')$', TRUE, 1),
  (6414052, 641405, '$(\Delta)$ est orthogonale à $(D)$', FALSE, 2),
  (6414053, 641405, '$(\Delta)$ coupe $(D)$ en un point', FALSE, 3),
  (6414054, 641405, '$(D)$ et $(D'')$ sont non coplanaires', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (641406, 6414, 'Une droite $(D)$ est orthogonale à un plan $(P)$. Que peut-on dire de $(D)$ vis-à-vis des droites de $(P)$ ?', 'Une droite orthogonale à un plan est orthogonale à toutes les droites de ce plan, qu''elles passent ou non par le pied de la perpendiculaire.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6414061, 641406, 'elle est orthogonale à toutes les droites de $(P)$', TRUE, 1),
  (6414062, 641406, 'elle est orthogonale à exactement deux droites de $(P)$', FALSE, 2),
  (6414063, 641406, 'elle est parallèle aux droites de $(P)$', FALSE, 3),
  (6414064, 641406, 'elle n''est orthogonale qu''aux droites passant par son pied', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (641407, 6414, 'Pour prouver qu''une droite $(D)$ est orthogonale à un plan $(P)$, il suffit de montrer que :', 'Critère d''orthogonalité droite-plan : si $(D)$ est orthogonale à deux droites sécantes de $(P)$, alors elle est orthogonale au plan $(P)$ tout entier.', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6414071, 641407, '$(D)$ est orthogonale à deux droites sécantes de $(P)$', TRUE, 1),
  (6414072, 641407, '$(D)$ est orthogonale à une seule droite de $(P)$', FALSE, 2),
  (6414073, 641407, '$(D)$ est orthogonale à deux droites parallèles de $(P)$', FALSE, 3),
  (6414074, 641407, '$(D)$ est parallèle à une droite de $(P)$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (641408, 6414, 'On coupe un cube par un plan parallèle à l''une de ses faces. La section obtenue est :', 'Un plan parallèle à une face coupe les quatre faces latérales selon des segments parallèles aux arêtes de la face : la section est un carré identique à la face.', 8);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6414081, 641408, 'un carré', TRUE, 1),
  (6414082, 641408, 'un triangle', FALSE, 2),
  (6414083, 641408, 'un hexagone', FALSE, 3),
  (6414084, 641408, 'un segment', FALSE, 4);

-- statistiques
SET @l := (SELECT id FROM lecon WHERE slug = 'statistiques' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'maths-tcs'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (6415, NULL, @l, 'QCM — Statistiques', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (641501, 6415, 'Dans une classe de $25$ élèves, $10$ pratiquent le football. La fréquence des footballeurs, en pourcentage, est :', '$\dfrac{10}{25} = 0{,}4 = 40\,\%$.', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6415011, 641501, '$40\,\%$', TRUE, 1),
  (6415012, 641501, '$25\,\%$', FALSE, 2),
  (6415013, 641501, '$10\,\%$', FALSE, 3),
  (6415014, 641501, '$0{,}4\,\%$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (641502, 6415, 'Quelle est la moyenne de la série $4,\ 6,\ 6,\ 8,\ 11$ ?', '$\dfrac{4+6+6+8+11}{5} = \dfrac{35}{5} = 7$.', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6415021, 641502, '$7$', TRUE, 1),
  (6415022, 641502, '$6$', FALSE, 2),
  (6415023, 641502, '$8$', FALSE, 3),
  (6415024, 641502, '$35$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (641503, 6415, 'La médiane de la série $5,\ 7,\ 9,\ 10,\ 12,\ 15$ est :', 'L''effectif $N=6$ est pair : la médiane est la demi-somme des $3^\text{e}$ et $4^\text{e}$ valeurs, soit $\dfrac{9+10}{2}=9{,}5$.', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6415031, 641503, '$9{,}5$', TRUE, 1),
  (6415032, 641503, '$9$', FALSE, 2),
  (6415033, 641503, '$10$', FALSE, 3),
  (6415034, 641503, '$11$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (641504, 6415, 'Pour la série de tableau $x_i = 1,2,3,4$ d''effectifs $n_i = 5,8,4,3$, le mode est :', 'Le mode est la valeur de plus grand effectif : $x=2$ a l''effectif maximal $8$.', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6415041, 641504, '$2$', TRUE, 1),
  (6415042, 641504, '$8$', FALSE, 2),
  (6415043, 641504, '$1$', FALSE, 3),
  (6415044, 641504, '$3$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (641505, 6415, 'L''étendue de la série $12,\ 7,\ 15,\ 9,\ 20,\ 6$ est :', 'Étendue $=$ valeur maximale $-$ valeur minimale $= 20 - 6 = 14$.', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6415051, 641505, '$14$', TRUE, 1),
  (6415052, 641505, '$20$', FALSE, 2),
  (6415053, 641505, '$6$', FALSE, 3),
  (6415054, 641505, '$26$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (641506, 6415, 'La variance de la série $1,\ 2,\ 3$ (de moyenne $2$) vaut :', 'Par König-Huygens, $V = \dfrac{1+4+9}{3} - 2^2 = \dfrac{14}{3} - 4 = \dfrac{2}{3}$.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6415061, 641506, '$\dfrac{2}{3}$', TRUE, 1),
  (6415062, 641506, '$2$', FALSE, 2),
  (6415063, 641506, '$1$', FALSE, 3),
  (6415064, 641506, '$\dfrac{1}{3}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (641507, 6415, 'Pour le tableau $x_i = 0,1,2,3$ d''effectifs $n_i = 4,6,7,3$, l''effectif cumulé croissant de la valeur $2$ est :', 'On additionne les effectifs jusqu''à $x=2$ : $4 + 6 + 7 = 17$.', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6415071, 641507, '$17$', TRUE, 1),
  (6415072, 641507, '$7$', FALSE, 2),
  (6415073, 641507, '$13$', FALSE, 3),
  (6415074, 641507, '$20$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (641508, 6415, 'Deux séries ont la même moyenne. La série A a pour écart-type $\sigma_A = 1{,}5$ et la série B $\sigma_B = 3$. La série la plus régulière est :', 'À moyennes égales, la série de plus petit écart-type est la plus régulière : ici $\sigma_A < \sigma_B$, donc la série A.', 8);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6415081, 641508, 'La série A', TRUE, 1),
  (6415082, 641508, 'La série B', FALSE, 2),
  (6415083, 641508, 'Les deux sont aussi régulières', FALSE, 3),
  (6415084, 641508, 'On ne peut pas le savoir', FALSE, 4);

