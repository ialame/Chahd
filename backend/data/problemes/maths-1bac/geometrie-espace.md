### Problème 1 : Étude d'un tétraèdre
\begin{enonce}
L'espace est muni d'un repère orthonormé $(O ; \vec{i}, \vec{j}, \vec{k})$. On considère les points $A(2, 0, 0)$, $B(0, 2, 0)$ et $C(0, 0, 2)$, qui forment avec l'origine $O$ le tétraèdre $OABC$.
\begin{enumerate}
    \item Calculer les distances $OA$, $AB$ et $AC$. Quelle est la nature du triangle $ABC$ ?
    \item Déterminer une équation cartésienne du plan $(ABC)$.
    \item Soit $(D)$ la droite passant par $O$ et de vecteur directeur $\vec{u}\,(1, 1, 1)$. Donner une représentation paramétrique de $(D)$, puis montrer qu'elle coupe le plan $(ABC)$ au centre de gravité $G$ du triangle $ABC$.
    \item Calculer la distance $OG$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item On a $OA = \sqrt{2^2 + 0^2 + 0^2} = 2$. De même $OB = OC = 2$. Puis :
$$AB = \sqrt{(0-2)^2 + (2-0)^2 + 0^2} = \sqrt{4 + 4} = 2\sqrt{2}.$$
Par symétrie des rôles, $AC = \sqrt{(0-2)^2 + 0^2 + (2-0)^2} = 2\sqrt{2}$ et $BC = \sqrt{0^2 + (0-2)^2 + (2-0)^2} = 2\sqrt{2}$. Les trois côtés étant égaux à $2\sqrt{2}$, le triangle $ABC$ est **équilatéral**.
    \item On cherche une équation $ax + by + cz + d = 0$ en imposant le passage par $A$, $B$, $C$ :
\begin{itemize}
    \item $A(2, 0, 0)$ : $2a + d = 0$, donc $a = -\dfrac{d}{2}$ ;
    \item $B(0, 2, 0)$ : $2b + d = 0$, donc $b = -\dfrac{d}{2}$ ;
    \item $C(0, 0, 2)$ : $2c + d = 0$, donc $c = -\dfrac{d}{2}$.
\end{itemize}
En prenant $d = -2$, on obtient $a = b = c = 1$, d'où l'équation :
$$x + y + z - 2 = 0.$$
    \item La droite $(D)$ passe par $O(0, 0, 0)$ et est dirigée par $\vec{u}\,(1, 1, 1)$, d'où :
$$\left\{ x = t,\quad y = t,\quad z = t \right\} \qquad (t \in \mathbb{R}).$$
On substitue dans l'équation du plan $(ABC)$ : $t + t + t - 2 = 0$, soit $3t = 2$, donc $t = \dfrac{2}{3}$. La droite coupe le plan en l'unique point :
$$H\left(\frac{2}{3}, \frac{2}{3}, \frac{2}{3}\right).$$
Or le centre de gravité de $ABC$ a pour coordonnées la moyenne de celles de $A$, $B$, $C$ :
$$G\left(\frac{2+0+0}{3}, \frac{0+2+0}{3}, \frac{0+0+2}{3}\right) = G\left(\frac{2}{3}, \frac{2}{3}, \frac{2}{3}\right).$$
On a donc $H = G$ : la droite $(D)$ coupe bien le plan $(ABC)$ au centre de gravité $G$.
    \item On calcule :
$$OG = \sqrt{\left(\tfrac{2}{3}\right)^2 + \left(\tfrac{2}{3}\right)^2 + \left(\tfrac{2}{3}\right)^2} = \sqrt{3 \times \frac{4}{9}} = \sqrt{\frac{4}{3}} = \frac{2}{\sqrt{3}} = \frac{2\sqrt{3}}{3}.$$
\end{enumerate}

### Problème 2 : Géométrie d'un cube
\begin{enonce}
On munit l'espace du repère orthonormé associé à un cube $ABCDEFGH$ d'arête $1$, de sorte que :
$$A(0,0,0),\ B(1,0,0),\ C(1,1,0),\ D(0,1,0),\ E(0,0,1),\ F(1,0,1),\ G(1,1,1),\ H(0,1,1).$$
\begin{enumerate}
    \item Donner une représentation paramétrique de la grande diagonale $(AG)$.
    \item Déterminer une équation cartésienne du plan $(BDE)$.
    \item Déterminer les coordonnées du point d'intersection $K$ de la diagonale $(AG)$ et du plan $(BDE)$, puis calculer la distance $AK$.
    \item Déterminer une équation cartésienne du plan $(CFH)$ et montrer qu'il est strictement parallèle au plan $(BDE)$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item La diagonale $(AG)$ passe par $A(0, 0, 0)$ et a pour vecteur directeur $\overrightarrow{AG}\,(1, 1, 1)$. Une représentation paramétrique est :
$$\left\{ x = t,\quad y = t,\quad z = t \right\} \qquad (t \in \mathbb{R}).$$
    \item On cherche $ax + by + cz + d = 0$ passant par $B(1, 0, 0)$, $D(0, 1, 0)$, $E(0, 0, 1)$ :
\begin{itemize}
    \item $B$ : $a + d = 0$, donc $a = -d$ ;
    \item $D$ : $b + d = 0$, donc $b = -d$ ;
    \item $E$ : $c + d = 0$, donc $c = -d$.
\end{itemize}
En prenant $d = -1$, on obtient $a = b = c = 1$, d'où l'équation :
$$x + y + z - 1 = 0.$$
    \item On reporte la représentation de $(AG)$ dans l'équation du plan $(BDE)$ : $t + t + t - 1 = 0$, soit $3t = 1$, donc $t = \dfrac{1}{3}$. Le point d'intersection est :
$$K\left(\frac{1}{3}, \frac{1}{3}, \frac{1}{3}\right).$$
La distance vaut :
$$AK = \sqrt{\left(\tfrac{1}{3}\right)^2 + \left(\tfrac{1}{3}\right)^2 + \left(\tfrac{1}{3}\right)^2} = \sqrt{\frac{3}{9}} = \sqrt{\frac{1}{3}} = \frac{\sqrt{3}}{3}.$$
    \item On cherche l'équation du plan $(CFH)$ passant par $C(1, 1, 0)$, $F(1, 0, 1)$, $H(0, 1, 1)$ :
\begin{itemize}
    \item $C$ : $a + b + d = 0$ ;
    \item $F$ : $a + c + d = 0$ ;
    \item $H$ : $b + c + d = 0$.
\end{itemize}
En soustrayant deux à deux, on trouve $a = b = c$. En posant $a = b = c = 1$, la première équation donne $1 + 1 + d = 0$, soit $d = -2$. D'où l'équation :
$$x + y + z - 2 = 0.$$
Les deux plans $(BDE)$ et $(CFH)$ ont le même triplet de coefficients $(1, 1, 1)$ : ils sont **parallèles**. Comme les constantes diffèrent ($-1 \neq -2$), ils ne sont pas confondus : ils sont **strictement parallèles**.
\end{enumerate}

### Problème 3 : Trois plans et intersections
\begin{enonce}
On considère les plans $(P) : x - y - 1 = 0$ et $(P') : x - z + 1 = 0$.
\begin{enumerate}
    \item Montrer que $(P)$ et $(P')$ sont sécants et déterminer une représentation paramétrique de leur droite d'intersection $(\Delta)$.
    \item Soit le plan $(Q) : x + y + z - 3 = 0$. Étudier la position relative de la droite $(\Delta)$ et du plan $(Q)$.
    \item En déduire que les trois plans $(P)$, $(P')$ et $(Q)$ ont un unique point commun $L$ et donner ses coordonnées.
    \item Calculer la distance $OL$ de l'origine $O$ à ce point.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Les triplets de coefficients de $(P)$ et $(P')$ sont $(1, -1, 0)$ et $(1, 0, -1)$ : ils ne sont pas proportionnels, donc les plans sont **sécants** suivant une droite $(\Delta)$. Pour la déterminer, on résout le système. L'équation de $(P)$ donne $y = x - 1$ et celle de $(P')$ donne $z = x + 1$. En posant $x = t$ comme paramètre :
$$(\Delta) : \left\{ x = t,\quad y = t - 1,\quad z = t + 1 \right\} \qquad (t \in \mathbb{R}).$$
Un vecteur directeur de $(\Delta)$ est $\vec{u}\,(1, 1, 1)$.
    \item On substitue la représentation de $(\Delta)$ dans l'équation de $(Q)$ :
$$t + (t - 1) + (t + 1) - 3 = 0 \iff 3t - 3 = 0 \iff t = 1.$$
Il y a une unique solution : la droite $(\Delta)$ est **sécante** au plan $(Q)$. Pour $t = 1$, le point d'intersection est $(1, 0, 2)$.
    \item Le point $L(1, 0, 2)$ appartient à $(\Delta)$, donc à la fois à $(P)$ et à $(P')$ ; il appartient aussi à $(Q)$ d'après la question précédente. Comme $(\Delta)$ et $(Q)$ ne se coupent qu'en ce point, $L(1, 0, 2)$ est l'**unique point commun** aux trois plans.

    Vérification : $(P)$ : $1 - 0 - 1 = 0$ ; $(P')$ : $1 - 2 + 1 = 0$ ; $(Q)$ : $1 + 0 + 2 - 3 = 0$. Les trois équations sont satisfaites.
    \item Enfin :
$$OL = \sqrt{1^2 + 0^2 + 2^2} = \sqrt{1 + 4} = \sqrt{5}.$$
\end{enumerate}
