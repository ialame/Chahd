### Exercice 1 : Distances et nature d'un triangle
\begin{enonce}
L'espace est muni d'un repère orthonormé. On considère les points $A(1, 1, 0)$, $B(3, 1, 2)$ et $C(1, -1, 2)$.
\begin{enumerate}
    \item Calculer les distances $AB$, $AC$ et $BC$.
    \item En déduire la nature du triangle $ABC$.
    \item Déterminer les coordonnées du milieu $I$ du segment $[BC]$, puis calculer la longueur $AI$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item On applique la formule de la distance dans un repère orthonormé :
$$AB = \sqrt{(3-1)^2 + (1-1)^2 + (2-0)^2} = \sqrt{4 + 0 + 4} = \sqrt{8} = 2\sqrt{2}.$$
$$AC = \sqrt{(1-1)^2 + (-1-1)^2 + (2-0)^2} = \sqrt{0 + 4 + 4} = \sqrt{8} = 2\sqrt{2}.$$
$$BC = \sqrt{(1-3)^2 + (-1-1)^2 + (2-2)^2} = \sqrt{4 + 4 + 0} = \sqrt{8} = 2\sqrt{2}.$$
    \item Les trois côtés ont la même longueur $2\sqrt{2}$ : le triangle $ABC$ est **équilatéral**.
    \item Le milieu de $[BC]$ a pour coordonnées :
$$I\left(\frac{3+1}{2},\ \frac{1-1}{2},\ \frac{2+2}{2}\right) = I(2, 0, 2).$$
On calcule alors :
$$AI = \sqrt{(2-1)^2 + (0-1)^2 + (2-0)^2} = \sqrt{1 + 1 + 4} = \sqrt{6}.$$
On retrouve bien la hauteur d'un triangle équilatéral de côté $a = 2\sqrt{2}$, à savoir $\dfrac{a\sqrt{3}}{2} = \dfrac{2\sqrt{2}\times\sqrt{3}}{2} = \sqrt{6}$.
\end{enumerate}

### Exercice 2 : Représentation paramétrique et appartenance
\begin{enonce}
Soit $(D)$ la droite passant par le point $A(2, -1, 3)$ et de vecteur directeur $\vec{u}\,(1, 2, -1)$.
\begin{enumerate}
    \item Donner une représentation paramétrique de $(D)$.
    \item Le point $B(4, 3, 1)$ appartient-il à $(D)$ ? Et le point $C(0, -5, 4)$ ?
    \item Déterminer les coordonnées du point d'intersection de $(D)$ avec le plan $(xOy)$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Avec $A(2, -1, 3)$ et $\vec{u}\,(1, 2, -1)$ :
$$\left\{
\begin{aligned}
x &= 2 + t \\
y &= -1 + 2t \\
z &= 3 - t
\end{aligned}
\right. \qquad (t \in \mathbb{R}).$$
    \item Pour $B(4, 3, 1)$ : la première équation donne $2 + t = 4$, soit $t = 2$. On vérifie les deux autres : $y = -1 + 2\times 2 = 3$ et $z = 3 - 2 = 1$. Tout est cohérent, donc $B \in (D)$.

    Pour $C(0, -5, 4)$ : la première équation donne $2 + t = 0$, soit $t = -2$. Alors $y = -1 + 2\times(-2) = -5$ (cohérent), mais $z = 3 - (-2) = 5 \neq 4$. Donc $C \notin (D)$.
    \item Le plan $(xOy)$ a pour équation $z = 0$. On résout $z = 3 - t = 0$, soit $t = 3$. On obtient alors $x = 2 + 3 = 5$ et $y = -1 + 2\times 3 = 5$. Le point d'intersection est $(5, 5, 0)$.
\end{enumerate}

### Exercice 3 : Équation cartésienne d'un plan par trois points
\begin{enonce}
On considère les points $A(1, 0, 0)$, $B(0, 1, 0)$ et $C(0, 0, 2)$.
\begin{enumerate}
    \item Déterminer une équation cartésienne du plan $(ABC)$.
    \item Le point $D(1, 1, -2)$ appartient-il à ce plan ? Et le point $E(1, 1, 1)$ ?
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item On cherche une équation de la forme $ax + by + cz + d = 0$. On impose à chaque point d'y appartenir :
\begin{itemize}
    \item $A(1, 0, 0)$ : $a + d = 0$, donc $a = -d$ ;
    \item $B(0, 1, 0)$ : $b + d = 0$, donc $b = -d$ ;
    \item $C(0, 0, 2)$ : $2c + d = 0$, donc $c = -\dfrac{d}{2}$.
\end{itemize}
En choisissant $d = -2$, on obtient $a = 2$, $b = 2$, $c = 1$, d'où l'équation :
$$2x + 2y + z - 2 = 0.$$
    \item Pour $D(1, 1, -2)$ : $2\times 1 + 2\times 1 + (-2) - 2 = 2 + 2 - 2 - 2 = 0$. L'égalité est vérifiée, donc $D \in (ABC)$.

    Pour $E(1, 1, 1)$ : $2\times 1 + 2\times 1 + 1 - 2 = 3 \neq 0$. Donc $E \notin (ABC)$.
\end{enumerate}

### Exercice 4 : Position relative d'une droite et d'un plan
\begin{enonce}
Dans l'espace, on considère le plan $(P) : x + 2y - z + 1 = 0$ et les trois droites :
$$(D_1) : \{ x = t,\ y = 1 + t,\ z = 3 + t \}, \quad (D_2) : \{ x = t,\ y = 0,\ z = 2 + t \}, \quad (D_3) : \{ x = t,\ y = 0,\ z = 1 + t \}.$$
Étudier la position relative de chacune de ces droites par rapport au plan $(P)$.
\end{enonce}

\textbf{Solution :}
On substitue à chaque fois la représentation paramétrique dans l'équation de $(P)$, ce qui donne une équation en $t$.
\begin{itemize}
    \item Pour $(D_1)$ : $t + 2(1 + t) - (3 + t) + 1 = t + 2 + 2t - 3 - t + 1 = 2t$. L'équation $2t = 0$ admet l'unique solution $t = 0$ : la droite est **sécante** au plan, au point obtenu pour $t = 0$, soit $(0, 1, 3)$.
    \item Pour $(D_2)$ : $t + 2\times 0 - (2 + t) + 1 = t - 2 - t + 1 = -1$. L'équation $-1 = 0$ n'a **aucune** solution : la droite $(D_2)$ est **strictement parallèle** au plan.
    \item Pour $(D_3)$ : $t + 2\times 0 - (1 + t) + 1 = t - 1 - t + 1 = 0$. L'égalité $0 = 0$ est vérifiée pour **tout** $t$ : la droite $(D_3)$ est **incluse** dans le plan.
\end{itemize}

### Exercice 5 : Intersection de deux plans
\begin{enonce}
On considère les plans $(P) : 2x - y + z - 1 = 0$ et $(P') : x + y - z - 2 = 0$.
\begin{enumerate}
    \item Justifier que les deux plans sont sécants.
    \item Déterminer une représentation paramétrique de leur droite d'intersection.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Les triplets de coefficients $(2, -1, 1)$ et $(1, 1, -1)$ ne sont pas proportionnels (par exemple $\dfrac{2}{1} \neq \dfrac{-1}{1}$). Les plans ne sont donc pas parallèles : ils sont **sécants** suivant une droite.
    \item On résout le système formé par les deux équations. En les additionnant membre à membre, les termes en $y$ et en $z$ se simplifient :
$$(2x - y + z - 1) + (x + y - z - 2) = 0 \iff 3x - 3 = 0 \iff x = 1.$$
On pose alors $y = t$ comme paramètre. La seconde équation donne $z = x + y - 2 = 1 + t - 2 = t - 1$. La droite d'intersection admet pour représentation paramétrique :
$$\left\{ x = 1,\quad y = t,\quad z = -1 + t \right\} \qquad (t \in \mathbb{R}).$$
Un vecteur directeur de cette droite est $\vec{u}\,(0, 1, 1)$.
\end{enumerate}

### Exercice 6 : Position relative de deux droites
\begin{enonce}
Soit la droite $(D) : \{ x = 1 + t,\ y = 2 - t,\ z = t \}$.
\begin{enumerate}
    \item Étudier la position relative de $(D)$ et de $(D') : \{ x = 1 + s,\ y = -1 + 2s,\ z = -2 + 3s \}$. Si elles sont sécantes, préciser leur point d'intersection.
    \item Étudier la position relative de $(D)$ et de $(D'') : \{ x = 1 + s,\ y = -1 + 2s,\ z = 3s \}$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
Un vecteur directeur de $(D)$ est $\vec{u}\,(1, -1, 1)$. Celui de $(D')$ et de $(D'')$ est $\vec{w}\,(1, 2, 3)$.

Les vecteurs $\vec{u}$ et $\vec{w}$ ne sont pas colinéaires (les coordonnées ne sont pas proportionnelles : $\dfrac{1}{1} \neq \dfrac{-1}{2}$). Dans chaque cas, les droites sont donc soit **sécantes**, soit **non coplanaires** ; on résout le système d'intersection pour trancher.
\begin{enumerate}
    \item On égale les coordonnées de $(D)$ et $(D')$ :
$$\left\{
\begin{aligned}
1 + t &= 1 + s \\
2 - t &= -1 + 2s \\
t &= -2 + 3s
\end{aligned}
\right.$$
La première équation donne $t = s$. En reportant dans la deuxième : $2 - t = -1 + 2t$, soit $3t = 3$, donc $t = 1$ et $s = 1$. On vérifie la troisième : $t = 1$ et $-2 + 3\times 1 = 1$ ; l'égalité $1 = 1$ est vérifiée. Le système a une solution : les droites sont **sécantes**. Pour $t = 1$, le point d'intersection est $(2, 1, 1)$.
    \item On égale de même les coordonnées de $(D)$ et $(D'')$ :
$$\left\{
\begin{aligned}
1 + t &= 1 + s \\
2 - t &= -1 + 2s \\
t &= 3s
\end{aligned}
\right.$$
Les deux premières équations donnent encore $t = s$ puis $t = 1$ et $s = 1$. Mais la troisième impose $t = 3s$, soit $1 = 3$, ce qui est faux. Le système n'a **aucune** solution : les droites $(D)$ et $(D'')$ sont **non coplanaires**.
\end{enumerate}
