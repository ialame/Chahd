### Problème 1 : Centre de gravité et médianes
\begin{enonce}
Soit $ABC$ un triangle. On note $A'$, $B'$ et $C'$ les milieux respectifs des côtés $[BC]$, $[AC]$ et $[AB]$, et $G$ l'isobarycentre de $A$, $B$ et $C$.
\begin{enumerate}
    \item Justifier que $G = \text{bar}\,\{(A, 1), (B, 1), (C, 1)\}$ existe.
    \item En regroupant $B$ et $C$, montrer que $G = \text{bar}\,\{(A, 1), (A', 2)\}$, puis en déduire $\vec{AG} = \dfrac{2}{3}\,\vec{AA'}$.
    \item Montrer de même que $G$ appartient aux droites $(BB')$ et $(CC')$.
    \item Conclure que les trois médianes du triangle $ABC$ sont concourantes en $G$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item La somme des poids vaut $1 + 1 + 1 = 3 \neq 0$ : l'isobarycentre $G$ existe et est unique.
    \item $A'$ est le milieu de $[BC]$, donc $A' = \text{bar}\,\{(B, 1), (C, 1)\}$. Par associativité, on remplace $B$ et $C$ par $A'$ affecté du poids $1 + 1 = 2$ :
$$G = \text{bar}\,\{(A, 1), (B, 1), (C, 1)\} = \text{bar}\,\{(A, 1), (A', 2)\}.$$
Alors $\vec{AG} = \dfrac{2}{1 + 2}\,\vec{AA'} = \dfrac{2}{3}\,\vec{AA'}$. En particulier $G$ est sur la médiane $(AA')$.
    \item Par symétrie du rôle des sommets : en regroupant $A$ et $C$ on obtient $B' = \text{bar}\,\{(A,1),(C,1)\}$ et $G = \text{bar}\,\{(B, 1), (B', 2)\}$, donc $G \in (BB')$. De même $G = \text{bar}\,\{(C, 1), (C', 2)\}$ avec $C'$ milieu de $[AB]$, donc $G \in (CC')$.
    \item Le point $G$ appartient aux trois médianes $(AA')$, $(BB')$ et $(CC')$ : ces médianes sont **concourantes en $G$**, le centre de gravité du triangle, situé aux deux tiers de chaque médiane à partir du sommet.
\end{enumerate}

### Problème 2 : Droites concourantes
\begin{enonce}
Soit $ABC$ un triangle. On définit les points $P$, $Q$ et $R$ par :
$$P = \text{bar}\,\{(B, 1), (C, 2)\}, \quad Q = \text{bar}\,\{(A, 1), (C, 2)\}, \quad R = \text{bar}\,\{(A, 1), (B, 1)\}.$$
On considère le barycentre $G = \text{bar}\,\{(A, 2), (B, 2), (C, 4)\}$.
\begin{enumerate}
    \item Justifier l'existence de $G$ et simplifier ses coefficients.
    \item Montrer que $G$ appartient à la droite $(AP)$.
    \item Montrer que $G$ appartient à la droite $(BQ)$.
    \item Que peut-on conclure pour les droites $(AP)$ et $(BQ)$ ?
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item La somme $2 + 2 + 4 = 8 \neq 0$, donc $G$ existe. Par homogénéité (division par $2$) :
$$G = \text{bar}\,\{(A, 2), (B, 2), (C, 4)\} = \text{bar}\,\{(A, 1), (B, 1), (C, 2)\}.$$
    \item On regroupe $B$ et $C$. Or $\text{bar}\,\{(B, 1), (C, 2)\} = P$, affecté du poids $1 + 2 = 3$. Par associativité :
$$G = \text{bar}\,\{(A, 1), (P, 3)\}.$$
$G$ est donc barycentre de $A$ et $P$ : il appartient à la droite $(AP)$.
    \item On regroupe cette fois $A$ et $C$. Or $\text{bar}\,\{(A, 1), (C, 2)\} = Q$, affecté du poids $1 + 2 = 3$. Par associativité :
$$G = \text{bar}\,\{(B, 1), (Q, 3)\}.$$
$G$ est barycentre de $B$ et $Q$ : il appartient à la droite $(BQ)$.
    \item $G$ appartient à la fois à $(AP)$ et à $(BQ)$ : ces deux droites se coupent en $G$, elles sont **concourantes en $G$** (et la troisième droite $(CR)$ passerait aussi par $G$ par le même raisonnement).
\end{enumerate}

### Problème 3 : Lieu géométrique et barycentre
\begin{enonce}
Le plan est muni d'un repère orthonormé. On donne $A(0, 0)$, $B(4, 0)$ et $C(0, 6)$.
\begin{enumerate}
    \item Déterminer les coordonnées du barycentre $G$ de $\{(A, 2), (B, 1), (C, 1)\}$.
    \item Pour tout point $M$ du plan, réduire le vecteur $\vec{v}(M) = 2\,\vec{MA} + \vec{MB} + \vec{MC}$.
    \item Déterminer et décrire l'ensemble $(\Gamma)$ des points $M$ tels que $\left\| 2\,\vec{MA} + \vec{MB} + \vec{MC} \right\| = 12$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item La somme des poids vaut $2 + 1 + 1 = 4 \neq 0$. Les coordonnées de $G$ sont :
$$x_G = \frac{2\cdot 0 + 1\cdot 4 + 1\cdot 0}{4} = 1, \qquad y_G = \frac{2\cdot 0 + 1\cdot 0 + 1\cdot 6}{4} = \frac{3}{2}.$$
Donc $G\left(1, \dfrac{3}{2}\right)$.
    \item Comme $2 + 1 + 1 = 4 \neq 0$ et que $G$ est le barycentre du système, la relation de réduction donne, pour tout point $M$ :
$$\vec{v}(M) = 2\,\vec{MA} + \vec{MB} + \vec{MC} = 4\,\vec{MG}.$$
    \item L'équation s'écrit $\left\| 4\,\vec{MG} \right\| = 12$, soit $4\,MG = 12$, donc $MG = 3$. L'ensemble $(\Gamma)$ est le **cercle de centre $G\left(1, \dfrac{3}{2}\right)$ et de rayon $3$**.
\end{enumerate}
