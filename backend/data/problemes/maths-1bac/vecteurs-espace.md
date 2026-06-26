### Problème 1 : Le cube et ses diagonales
\begin{enonce}
$ABCDEFGH$ est un cube d'arête $1$ (les faces $ABCD$ et $EFGH$ sont opposées, $A$ et $E$, $B$ et $F$, etc. étant reliés par les arêtes). On munit l'espace du repère orthonormé $\left(A\,;\vec{AB}, \vec{AD}, \vec{AE}\right)$.
\begin{enumerate}
    \item Donner les coordonnées des huit sommets du cube dans ce repère.
    \item Soit $K$ le centre du cube, défini comme le milieu de $[AG]$. Déterminer ses coordonnées, puis montrer que $K$ est aussi le milieu de $[BH]$, de $[CE]$ et de $[DF]$. Qu'en déduit-on pour les quatre diagonales du cube ?
    \item Calculer la longueur de la diagonale $AG$.
    \item Montrer que les points $A$, $B$, $G$ et $H$ sont coplanaires.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Par construction du repère : $A(0, 0, 0)$, $B(1, 0, 0)$, $D(0, 1, 0)$, $E(0, 0, 1)$. Comme $\vec{AC} = \vec{AB} + \vec{AD}$, on a $C(1, 1, 0)$ ; de même $F(1, 0, 1)$, $H(0, 1, 1)$ et $G(1, 1, 1)$ (car $\vec{AG} = \vec{AB} + \vec{AD} + \vec{AE}$).
    \item $K$ milieu de $[AG]$ : $K\left(\dfrac{0+1}{2}, \dfrac{0+1}{2}, \dfrac{0+1}{2}\right) = K\left(\dfrac{1}{2}, \dfrac{1}{2}, \dfrac{1}{2}\right)$.
    Milieu de $[BH]$ avec $B(1, 0, 0)$ et $H(0, 1, 1)$ : $\left(\dfrac{1}{2}, \dfrac{1}{2}, \dfrac{1}{2}\right)$. Milieu de $[CE]$ avec $C(1, 1, 0)$ et $E(0, 0, 1)$ : $\left(\dfrac{1}{2}, \dfrac{1}{2}, \dfrac{1}{2}\right)$. Milieu de $[DF]$ avec $D(0, 1, 0)$ et $F(1, 0, 1)$ : $\left(\dfrac{1}{2}, \dfrac{1}{2}, \dfrac{1}{2}\right)$. Les quatre milieux coïncident avec $K$ : les quatre diagonales $[AG]$, $[BH]$, $[CE]$ et $[DF]$ se coupent en leur milieu commun $K$ (elles sont concourantes au centre du cube).
    \item $\vec{AG}(1, 1, 1)$ ; le repère étant orthonormé, $AG = \sqrt{1^2 + 1^2 + 1^2} = \sqrt{3}$.
    \item On a $\vec{AB}(1, 0, 0)$, $\vec{AH}(0, 1, 1)$ et $\vec{AG}(1, 1, 1)$. Les vecteurs $\vec{AB}$ et $\vec{AH}$ ne sont pas colinéaires. On cherche $\alpha, \beta$ tels que $\vec{AG} = \alpha\vec{AB} + \beta\vec{AH}$ : on obtient $\alpha = 1$ (première coordonnée), $\beta = 1$ (deuxième), et la troisième est vérifiée : $\beta = 1$. Donc $\vec{AG} = \vec{AB} + \vec{AH}$ : les vecteurs $\vec{AB}$, $\vec{AH}$, $\vec{AG}$ sont coplanaires, donc les points $A$, $B$, $G$, $H$ sont coplanaires.
\end{enumerate}

### Problème 2 : Paramètre de coplanarité
\begin{enonce}
On considère les vecteurs $\vec{u}(1, -1, 2)$, $\vec{v}(2, 1, -1)$ et $\vec{w}(m, 5, -7)$, où $m$ est un réel.
\begin{enumerate}
    \item Montrer que $\vec{u}$ et $\vec{v}$ ne sont pas colinéaires.
    \item Déterminer le réel $m$ pour que $\vec{u}$, $\vec{v}$ et $\vec{w}$ soient coplanaires.
    \item Pour la valeur trouvée, exprimer $\vec{w}$ comme combinaison linéaire de $\vec{u}$ et $\vec{v}$.
    \item Interpréter géométriquement ce résultat (on pourra considérer un point $A$ et le point $W$ tel que $\vec{AW} = \vec{w}$).
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Si $\vec{u}$ et $\vec{v}$ étaient colinéaires, leurs coordonnées seraient proportionnelles. Or $\dfrac{2}{1} = 2$ tandis que $\dfrac{1}{-1} = -1$ : les rapports diffèrent. Donc $\vec{u}$ et $\vec{v}$ ne sont pas colinéaires.
    \item Les vecteurs étant coplanaires (et $\vec{u}, \vec{v}$ non colinéaires), il existe $\alpha, \beta$ tels que $\vec{w} = \alpha\vec{u} + \beta\vec{v}$ :
    $$\begin{cases} \alpha + 2\beta = m \\ -\alpha + \beta = 5 \\ 2\alpha - \beta = -7 \end{cases}$$
    En additionnant les deux dernières équations : $\alpha = -2$, puis $\beta = 5 + \alpha = 3$. La première équation donne alors $m = \alpha + 2\beta = -2 + 6 = 4$.
    \item Pour $m = 4$ : $\vec{w} = -2\vec{u} + 3\vec{v}$. Vérification : $-2(1, -1, 2) + 3(2, 1, -1) = (-2 + 6,\ 2 + 3,\ -4 - 3) = (4, 5, -7)$.
    \item $\vec{w}$ étant combinaison linéaire de $\vec{u}$ et $\vec{v}$, le point $W$ tel que $\vec{AW} = \vec{w}$ appartient au plan passant par $A$ et dirigé par $\vec{u}$ et $\vec{v}$. Pour $m = 4$, $W$ est donc dans ce plan ; pour les autres valeurs de $m$, les trois vecteurs ne sont pas coplanaires.
\end{enumerate}

### Problème 3 : Un plan défini par trois points
\begin{enonce}
L'espace est muni d'un repère orthonormé $(O\,;\vec{i},\vec{j},\vec{k})$. On donne $A(1, 0, 0)$, $B(0, 2, 0)$ et $C(0, 0, 3)$.
\begin{enumerate}
    \item Calculer les coordonnées de $\vec{AB}$ et $\vec{AC}$, et montrer que les points $A$, $B$, $C$ ne sont pas alignés.
    \item Donner une représentation paramétrique du plan $(ABC)$.
    \item L'origine $O$ appartient-elle au plan $(ABC)$ ? Justifier.
    \item Le point $D(-1, 2, 3)$ appartient-il au plan $(ABC)$ ?
    \item Déterminer les coordonnées du milieu $I$ de $[BC]$ et la longueur $BC$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item $\vec{AB}(-1, 2, 0)$ et $\vec{AC}(-1, 0, 3)$. Ces vecteurs ne sont pas colinéaires : la deuxième coordonnée de $\vec{AC}$ est nulle alors que celle de $\vec{AB}$ ne l'est pas (les coordonnées ne sont pas proportionnelles). Donc $A$, $B$, $C$ ne sont pas alignés et définissent bien un plan.
    \item $M(x, y, z) \in (ABC)$ si et seulement s'il existe $t, s \in \mathbb{R}$ tels que $\vec{AM} = t\,\vec{AB} + s\,\vec{AC}$ :
    $$\begin{cases} x = 1 - t - s \\ y = 2t \\ z = 3s \end{cases} \qquad (t, s \in \mathbb{R}).$$
    \item Pour $O(0, 0, 0)$ : $y = 2t = 0$ donne $t = 0$, et $z = 3s = 0$ donne $s = 0$. La première équation imposerait alors $0 = 1 - 0 - 0 = 1$, ce qui est faux. Donc $O \notin (ABC)$.
    \item Pour $D(-1, 2, 3)$ : $y = 2t = 2$ donne $t = 1$, et $z = 3s = 3$ donne $s = 1$. On vérifie la première équation : $1 - t - s = 1 - 1 - 1 = -1 = x$. Le système est compatible, donc $D \in (ABC)$.
    \item $I$ milieu de $[BC]$ avec $B(0, 2, 0)$ et $C(0, 0, 3)$ : $I\left(0, 1, \dfrac{3}{2}\right)$. Le repère étant orthonormé, $BC = \sqrt{0^2 + (-2)^2 + 3^2} = \sqrt{4 + 9} = \sqrt{13}$.
\end{enumerate}
