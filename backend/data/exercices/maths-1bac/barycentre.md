### Exercice 1 : Barycentre de deux points
\begin{enonce}
Soient $A$ et $B$ deux points distincts du plan et $G$ le barycentre du système $\{(A, 3), (B, 1)\}$.
\begin{enumerate}
    \item Justifier que le barycentre $G$ existe.
    \item Exprimer le vecteur $\vec{AG}$ en fonction de $\vec{AB}$.
    \item Placer le point $G$ sur la droite $(AB)$ et préciser de quel point il est le plus proche.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item La somme des coefficients vaut $3 + 1 = 4 \neq 0$ : le barycentre $G$ existe et est unique.
    \item Par définition $3\,\vec{GA} + \vec{GB} = \vec{0}$. En écrivant $\vec{GB} = \vec{GA} + \vec{AB}$ (relation de Chasles) :
$$3\,\vec{GA} + \vec{GA} + \vec{AB} = \vec{0} \quad\Longleftrightarrow\quad 4\,\vec{GA} = -\vec{AB} \quad\Longleftrightarrow\quad \vec{AG} = \frac{1}{4}\,\vec{AB}.$$
    \item $G$ est sur le segment $[AB]$ au quart à partir de $A$. Comme $A$ porte le coefficient le plus grand ($3$), $G$ est plus proche de $A$.
\end{enumerate}

### Exercice 2 : Réduction d'une écriture vectorielle
\begin{enonce}
Soient $A$ et $B$ deux points du plan. On considère l'application qui à tout point $M$ associe le vecteur
$$\vec{u}(M) = 2\,\vec{MA} + 3\,\vec{MB}.$$
\begin{enumerate}
    \item Montrer qu'il existe un point fixe $G$ tel que pour tout point $M$, $\vec{u}(M) = 5\,\vec{MG}$.
    \item Caractériser géométriquement le point $G$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Comme $2 + 3 = 5 \neq 0$, le barycentre $G$ de $\{(A, 2), (B, 3)\}$ existe. Par la relation fondamentale de réduction, pour tout point $M$ :
$$2\,\vec{MA} + 3\,\vec{MB} = (2 + 3)\,\vec{MG} = 5\,\vec{MG}.$$
    \item $G$ est le barycentre de $\{(A, 2), (B, 3)\}$. On a $\vec{AG} = \dfrac{3}{5}\,\vec{AB}$, donc $G$ est sur $[AB]$ aux trois cinquièmes à partir de $A$ (plus proche de $B$, le point le plus lourd).
\end{enumerate}

### Exercice 3 : Coordonnées d'un barycentre
\begin{enonce}
Le plan est rapporté à un repère $(O, \vec{i}, \vec{j})$. On donne $A(-1, 2)$, $B(4, 0)$ et $C(2, 5)$.
\begin{enumerate}
    \item Calculer les coordonnées du barycentre $G$ de $\{(A, 1), (B, 2), (C, 1)\}$.
    \item Calculer les coordonnées de l'isobarycentre $I$ de $A$, $B$ et $C$ (centre de gravité du triangle $ABC$).
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item La somme des poids vaut $1 + 2 + 1 = 4 \neq 0$. Les coordonnées de $G$ sont la moyenne pondérée :
$$x_G = \frac{1\cdot(-1) + 2\cdot 4 + 1\cdot 2}{4} = \frac{9}{4}, \qquad y_G = \frac{1\cdot 2 + 2\cdot 0 + 1\cdot 5}{4} = \frac{7}{4}.$$
Donc $G\left(\dfrac{9}{4}, \dfrac{7}{4}\right)$.
    \item L'isobarycentre a pour coordonnées la moyenne des coordonnées :
$$x_I = \frac{-1 + 4 + 2}{3} = \frac{5}{3}, \qquad y_I = \frac{2 + 0 + 5}{3} = \frac{7}{3}.$$
Donc $I\left(\dfrac{5}{3}, \dfrac{7}{3}\right)$.
\end{enumerate}

### Exercice 4 : Associativité du barycentre
\begin{enonce}
Soient $A$, $B$ et $C$ trois points du plan et $G$ le barycentre de $\{(A, 2), (B, 3), (C, 1)\}$.
\begin{enumerate}
    \item Soit $H$ le barycentre de $\{(A, 2), (B, 3)\}$. Justifier l'existence de $H$.
    \item En utilisant l'associativité, montrer que $G$ est le barycentre de $\{(H, 5), (C, 1)\}$.
    \item En déduire que $G$ appartient à la droite $(HC)$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item La somme $2 + 3 = 5 \neq 0$, donc le barycentre partiel $H$ de $\{(A, 2), (B, 3)\}$ existe.
    \item Le théorème d'associativité permet de remplacer les points $A$ et $B$ par leur barycentre partiel $H$ affecté de la somme de leurs poids, soit $5$. Ainsi :
$$G = \text{bar}\,\{(A, 2), (B, 3), (C, 1)\} = \text{bar}\,\{(H, 5), (C, 1)\}.$$
    \item $G$ est barycentre des deux points $H$ et $C$ : il se situe donc sur la droite $(HC)$. Précisément $\vec{HG} = \dfrac{1}{6}\,\vec{HC}$.
\end{enumerate}

### Exercice 5 : Alignement par le barycentre
\begin{enonce}
Soit $ABC$ un triangle. On définit les points $P$ et $Q$ par :
$$P = \text{bar}\,\{(A, 1), (B, 2)\}, \qquad Q = \text{bar}\,\{(A, 1), (B, 2), (C, 3)\}.$$
\begin{enumerate}
    \item Montrer que $Q$ est le barycentre de $\{(P, 3), (C, 3)\}$.
    \item En déduire que $Q$ est le milieu de $[PC]$ et que les points $P$, $Q$, $C$ sont alignés.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Comme $1 + 2 = 3 \neq 0$, $P$ est le barycentre partiel de $\{(A, 1), (B, 2)\}$. Par associativité, on regroupe $A$ et $B$ en $P$ avec le poids $1 + 2 = 3$ :
$$Q = \text{bar}\,\{(A, 1), (B, 2), (C, 3)\} = \text{bar}\,\{(P, 3), (C, 3)\}.$$
    \item Les deux poids étant égaux à $3$, $Q$ est l'isobarycentre de $P$ et $C$, c'est-à-dire le **milieu** de $[PC]$. Comme $Q$ est barycentre de $P$ et $C$, les vecteurs $\vec{PQ}$ et $\vec{PC}$ sont colinéaires : les points $P$, $Q$, $C$ sont alignés.
\end{enumerate}

### Exercice 6 : Lieu géométrique
\begin{enonce}
Soient $A$ et $B$ deux points distincts du plan. Déterminer l'ensemble des points $M$ du plan vérifiant :
$$\left\| 3\,\vec{MA} + \vec{MB} \right\| = 8.$$
\end{enonce}

\textbf{Solution :}
On réduit l'écriture vectorielle. Comme $3 + 1 = 4 \neq 0$, soit $G$ le barycentre de $\{(A, 3), (B, 1)\}$. La relation de réduction donne, pour tout point $M$ :
$$3\,\vec{MA} + \vec{MB} = 4\,\vec{MG}.$$
L'équation devient $\left\| 4\,\vec{MG} \right\| = 8$, soit $4\,MG = 8$, c'est-à-dire $MG = 2$.

L'ensemble cherché est le **cercle de centre $G$ et de rayon $2$**, où $G$ est le point de $[AB]$ tel que $\vec{AG} = \dfrac{1}{4}\,\vec{AB}$.
