### Problème 1 : Étude d'un triangle et d'un parallélogramme
\begin{enonce}
Dans un repère $(O, \vec{i}, \vec{j})$, on considère les points $A(-1, -1)$, $B(3, 1)$ et $C(0, 4)$.
\begin{enumerate}
    \item Déterminer une équation cartésienne de la droite $(AB)$.
    \item Vérifier que $C \notin (AB)$. Que peut-on en déduire pour $A$, $B$ et $C$ ?
    \item Déterminer une équation cartésienne de la droite $(D)$ passant par $C$ et parallèle à $(AB)$.
    \item Déterminer les coordonnées du point $E$ tel que $ABCE$ soit un parallélogramme, puis les coordonnées du centre de ce parallélogramme.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item $\overrightarrow{AB}(3 - (-1),\ 1 - (-1)) = (4, 2)$, colinéaire à $\vec{u}(2, 1)$. Le coefficient directeur est $m = \dfrac{1}{2}$, et l'équation réduite $y = \dfrac{1}{2}x + p$ avec $A(-1, -1)$ donne $-1 = -\dfrac{1}{2} + p$, soit $p = -\dfrac{1}{2}$. En multipliant par $2$ : $(AB) : x - 2y - 1 = 0$. (Vérification : $B$ donne $3 - 2 - 1 = 0$.)
    \item Pour $C(0, 4)$ : $0 - 2\times 4 - 1 = -9 \neq 0$, donc $C \notin (AB)$. Les points $A$, $B$, $C$ ne sont pas alignés : ils forment un **triangle**.
    \item $(D)$ étant parallèle à $(AB)$, elle a une équation de la forme $x - 2y + c = 0$. Avec $C(0, 4)$ : $0 - 8 + c = 0$, donc $c = 8$ et $(D) : x - 2y + 8 = 0$.
    \item Pour que $ABCE$ soit un parallélogramme, il faut $\overrightarrow{AB} = \overrightarrow{EC}$, c'est-à-dire $\overrightarrow{EC} = (4, 2)$. Or $\overrightarrow{EC}(0 - x_E,\ 4 - y_E) = (4, 2)$ donne $x_E = -4$ et $y_E = 2$, soit $E(-4, 2)$.\\
    On vérifie : $\overrightarrow{AE}(-3, 3) = \overrightarrow{BC}(-3, 3)$, c'est cohérent. Le centre du parallélogramme est le milieu de la diagonale $[AC]$ : $\left(\dfrac{-1 + 0}{2},\ \dfrac{-1 + 4}{2}\right) = \left(-\dfrac{1}{2},\ \dfrac{3}{2}\right)$.
\end{enumerate}

### Problème 2 : Trois droites et concourance
\begin{enonce}
On considère les trois droites :
$$ (D_1) : x + y - 3 = 0, \qquad (D_2) : 2x - y = 0, \qquad (D_3) : 3x - y - 1 = 0. $$
\begin{enumerate}
    \item Donner le coefficient directeur de chacune et en déduire qu'elles sont deux à deux sécantes.
    \item Déterminer les coordonnées du point d'intersection $I$ de $(D_1)$ et $(D_2)$.
    \item Vérifier que $I$ appartient aussi à $(D_3)$. Que peut-on conclure ?
    \item Déterminer une équation de la droite $(\Delta)$ passant par $I$ et parallèle à la droite d'équation $y = 4x + 7$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item En écrivant les équations réduites : $(D_1) : y = -x + 3$ donc $m_1 = -1$ ; $(D_2) : y = 2x$ donc $m_2 = 2$ ; $(D_3) : y = 3x - 1$ donc $m_3 = 3$. Les coefficients directeurs $-1$, $2$ et $3$ sont deux à deux différents, donc les droites sont **deux à deux sécantes**.
    \item À l'intersection de $(D_1)$ et $(D_2)$, on a $y = 2x$ et $x + y - 3 = 0$. En substituant : $x + 2x - 3 = 0$, soit $3x = 3$, donc $x = 1$ et $y = 2$. Ainsi $I(1, 2)$.
    \item On reporte dans $(D_3)$ : $3\times 1 - 2 - 1 = 0$, donc $I \in (D_3)$. Les trois droites passent toutes par $I$ : elles sont **concourantes** en $I(1, 2)$.
    \item $(\Delta)$ est parallèle à $y = 4x + 7$, donc de coefficient directeur $4$ : $y = 4x + p$. Avec $I(1, 2)$ : $2 = 4 + p$, soit $p = -2$. Ainsi $(\Delta) : y = 4x - 2$, c'est-à-dire $4x - y - 2 = 0$.
\end{enumerate}

### Problème 3 : Droite par un point et un vecteur directeur
\begin{enonce}
Le plan est rapporté à un repère $(O, \vec{i}, \vec{j})$. On considère la droite $(D)$ passant par $A(2, -1)$ et de vecteur directeur $\vec{u}(1, 3)$.
\begin{enumerate}
    \item Déterminer une équation cartésienne de $(D)$.
    \item Déterminer le réel $k$ pour que le point $P(k, 5)$ appartienne à $(D)$.
    \item Déterminer une équation de la droite $(D')$ passant par $C(0, 1)$ et parallèle à $(D)$.
    \item On donne la droite $(\Delta) : x + y - 1 = 0$. Étudier la position relative de $(D)$ et $(\Delta)$, et préciser leur éventuel point d'intersection.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Un point $M(x, y)$ appartient à $(D)$ si et seulement si $\overrightarrow{AM}(x - 2,\ y + 1)$ est colinéaire à $\vec{u}(1, 3)$ :
    $$ (x - 2)\times 3 - (y + 1)\times 1 = 0 \iff 3x - 6 - y - 1 = 0 \iff 3x - y - 7 = 0. $$
    Une équation cartésienne de $(D)$ est $3x - y - 7 = 0$ (vérification avec $A$ : $6 + 1 - 7 = 0$).
    \item $P(k, 5) \in (D) \iff 3k - 5 - 7 = 0 \iff 3k = 12 \iff k = 4$. Le point est $P(4, 5)$.
    \item $(D')$ étant parallèle à $(D)$ a une équation de la forme $3x - y + c = 0$. Avec $C(0, 1)$ : $0 - 1 + c = 0$, donc $c = 1$ et $(D') : 3x - y + 1 = 0$.
    \item Un vecteur directeur de $(\Delta)$ est $\vec{v}(-1, 1)$ (avec $a = 1$, $b = 1$). Le déterminant $\begin{vmatrix} 1 & -1 \\ 3 & 1 \end{vmatrix} = 1\times 1 - 3\times(-1) = 4 \neq 0$ : les vecteurs $\vec{u}$ et $\vec{v}$ ne sont pas colinéaires, donc $(D)$ et $(\Delta)$ sont **sécantes**. On résout $3x - y = 7$ et $x + y = 1$ ; en additionnant : $4x = 8$, donc $x = 2$ et $y = 1 - 2 = -1$. Le point d'intersection est $A(2, -1)$ : le point $A$ appartient donc aussi à $(\Delta)$.
\end{enumerate}
