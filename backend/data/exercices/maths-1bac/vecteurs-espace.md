### Exercice 1 : Relations vectorielles dans un tétraèdre
\begin{enonce}
Soit $ABCD$ un tétraèdre. On note $I$ le milieu de $[AB]$ et $J$ le milieu de $[CD]$.
\begin{enumerate}
    \item Montrer que $\vec{IJ} = \dfrac{1}{2}\left(\vec{AC} + \vec{BD}\right)$.
    \item Montrer de même que $\vec{IJ} = \dfrac{1}{2}\left(\vec{AD} + \vec{BC}\right)$.
    \item Soit $G$ le point défini par $\vec{GA} + \vec{GB} + \vec{GC} + \vec{GD} = \vec{0}$. Montrer que $G$ est le milieu de $[IJ]$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Par la relation de Chasles, $\vec{IJ} = \vec{IA} + \vec{AC} + \vec{CJ}$ et $\vec{IJ} = \vec{IB} + \vec{BD} + \vec{DJ}$. En additionnant ces deux égalités :
    $$2\,\vec{IJ} = \left(\vec{IA} + \vec{IB}\right) + \vec{AC} + \vec{BD} + \left(\vec{CJ} + \vec{DJ}\right).$$
    Comme $I$ est le milieu de $[AB]$, on a $\vec{IA} + \vec{IB} = \vec{0}$ ; de même $J$ milieu de $[CD]$ donne $\vec{CJ} + \vec{DJ} = \vec{0}$. Donc $2\,\vec{IJ} = \vec{AC} + \vec{BD}$, d'où $\vec{IJ} = \dfrac{1}{2}\left(\vec{AC} + \vec{BD}\right)$.
    \item On recommence en passant cette fois par $D$ et $C$ : $\vec{IJ} = \vec{IA} + \vec{AD} + \vec{DJ}$ et $\vec{IJ} = \vec{IB} + \vec{BC} + \vec{CJ}$. La somme donne $2\,\vec{IJ} = \vec{AD} + \vec{BC}$, d'où le résultat. (On peut aussi remarquer que $\vec{AC} + \vec{BD} = \vec{AD} + \vec{BC}$.)
    \item Regroupons : $\vec{GA} + \vec{GB} = 2\,\vec{GI}$ car $I$ est le milieu de $[AB]$, et $\vec{GC} + \vec{GD} = 2\,\vec{GJ}$ car $J$ est le milieu de $[CD]$. L'hypothèse devient $2\,\vec{GI} + 2\,\vec{GJ} = \vec{0}$, soit $\vec{GI} + \vec{GJ} = \vec{0}$. C'est exactement la caractérisation du milieu : $G$ est le milieu de $[IJ]$.
\end{enumerate}

### Exercice 2 : Coordonnées, milieu et norme
\begin{enonce}
L'espace est muni d'un repère orthonormé $(O\,;\vec{i},\vec{j},\vec{k})$. On donne $A(1, 2, -1)$, $B(3, -2, 1)$ et $C(2, 1, 0)$.
\begin{enumerate}
    \item Déterminer les coordonnées des vecteurs $\vec{AB}$ et $\vec{AC}$.
    \item Calculer les longueurs $AB$ et $AC$.
    \item Déterminer les coordonnées du milieu $I$ de $[AB]$.
    \item Déterminer les coordonnées du point $D$ tel que $ABCD$ soit un parallélogramme.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item $\vec{AB}(3-1,\ -2-2,\ 1-(-1)) = \vec{AB}(2, -4, 2)$ et $\vec{AC}(2-1,\ 1-2,\ 0-(-1)) = \vec{AC}(1, -1, 1)$.
    \item Le repère étant orthonormé : $AB = \sqrt{2^2 + (-4)^2 + 2^2} = \sqrt{4 + 16 + 4} = \sqrt{24} = 2\sqrt{6}$, et $AC = \sqrt{1^2 + (-1)^2 + 1^2} = \sqrt{3}$.
    \item $I\left(\dfrac{1+3}{2},\ \dfrac{2+(-2)}{2},\ \dfrac{-1+1}{2}\right) = I(2, 0, 0)$.
    \item $ABCD$ est un parallélogramme si et seulement si $\vec{AB} = \vec{DC}$. En notant $D(x, y, z)$, $\vec{DC}(2 - x,\ 1 - y,\ 0 - z)$. L'égalité $\vec{DC} = (2, -4, 2)$ donne $2 - x = 2$, $1 - y = -4$ et $-z = 2$, soit $D(0, 5, -2)$.
\end{enumerate}

### Exercice 3 : Colinéarité et alignement
\begin{enonce}
\begin{enumerate}
    \item Les vecteurs $\vec{u}(2, -1, 4)$ et $\vec{v}(-6, 3, -12)$ sont-ils colinéaires ?
    \item Déterminer le réel $m$ pour que $\vec{u}(2, -1, 4)$ et $\vec{w}(m, 2, -8)$ soient colinéaires.
    \item On donne $A(1, 1, 1)$, $B(3, 0, 2)$ et $C(7, -2, 4)$. Montrer que les points $A$, $B$ et $C$ sont alignés.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item On cherche $k$ tel que $\vec{v} = k\vec{u}$ : $-6 = 2k$ donne $k = -3$, et l'on vérifie $3 = -3\times(-1)$ et $-12 = -3\times 4$. Les coordonnées sont proportionnelles, donc $\vec{u}$ et $\vec{v}$ sont colinéaires (avec $\vec{v} = -3\vec{u}$).
    \item $\vec{w} = k\vec{u}$ impose, par la troisième coordonnée, $-8 = 4k$, soit $k = -2$. La deuxième coordonnée est cohérente : $2 = -2\times(-1)$. La première donne alors $m = 2k = -4$. Donc $m = -4$.
    \item $\vec{AB}(2, -1, 1)$ et $\vec{AC}(6, -3, 3)$. Comme $\vec{AC} = 3\,\vec{AB}$, les vecteurs $\vec{AB}$ et $\vec{AC}$ sont colinéaires : les points $A$, $B$, $C$ sont alignés.
\end{enumerate}

### Exercice 4 : Coplanarité de trois vecteurs
\begin{enonce}
\begin{enumerate}
    \item Montrer que les vecteurs $\vec{u}(1, 2, -1)$, $\vec{v}(2, -1, 1)$ et $\vec{w}(4, 3, -1)$ sont coplanaires.
    \item Déterminer le réel $m$ pour que les vecteurs $\vec{a}(1, 1, 0)$, $\vec{b}(0, 1, 1)$ et $\vec{c}(1, 2, m)$ soient coplanaires.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Les vecteurs $\vec{u}$ et $\vec{v}$ ne sont pas colinéaires (leurs coordonnées ne sont pas proportionnelles). On cherche donc $\alpha, \beta$ tels que $\vec{w} = \alpha\vec{u} + \beta\vec{v}$, ce qui donne le système :
    $$\begin{cases} \alpha + 2\beta = 4 \\ 2\alpha - \beta = 3 \\ -\alpha + \beta = -1 \end{cases}$$
    Des deux premières équations : $\beta = 2\alpha - 3$, puis $\alpha + 2(2\alpha - 3) = 4$, soit $5\alpha = 10$, d'où $\alpha = 2$ et $\beta = 1$. La troisième équation est vérifiée : $-2 + 1 = -1$. Ainsi $\vec{w} = 2\vec{u} + \vec{v}$ : les trois vecteurs sont coplanaires.
    \item $\vec{a}$ et $\vec{b}$ ne sont pas colinéaires. On cherche $\alpha, \beta$ tels que $\vec{c} = \alpha\vec{a} + \beta\vec{b}$ :
    $$\begin{cases} \alpha = 1 \\ \alpha + \beta = 2 \\ \beta = m \end{cases}$$
    Les deux premières équations donnent $\alpha = 1$ et $\beta = 1$. La troisième impose alors $m = \beta = 1$. Les trois vecteurs sont coplanaires si et seulement si $m = 1$.
\end{enumerate}

### Exercice 5 : Représentation paramétrique d'une droite
\begin{enonce}
Dans un repère $(O\,;\vec{i},\vec{j},\vec{k})$, on considère la droite $(D)$ passant par $A(1, -2, 3)$ et de vecteur directeur $\vec{u}(2, 1, -1)$.
\begin{enumerate}
    \item Donner une représentation paramétrique de $(D)$.
    \item Le point $B(5, 0, 1)$ appartient-il à $(D)$ ?
    \item Le point $C(3, -1, 1)$ appartient-il à $(D)$ ?
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item $M(x, y, z) \in (D)$ si et seulement s'il existe $t \in \mathbb{R}$ tel que $\vec{AM} = t\vec{u}$, soit :
    $$\begin{cases} x = 1 + 2t \\ y = -2 + t \\ z = 3 - t \end{cases} \qquad (t \in \mathbb{R}).$$
    \item On cherche $t$ tel que $5 = 1 + 2t$, $0 = -2 + t$ et $1 = 3 - t$. La première équation donne $t = 2$, et les deux autres sont vérifiées avec la même valeur $t = 2$. Donc $B \in (D)$.
    \item On résout : $3 = 1 + 2t$ donne $t = 1$ ; $-1 = -2 + t$ donne $t = 1$ ; mais $1 = 3 - t$ donne $t = 2$. Les valeurs ne coïncident pas, donc $C \notin (D)$.
\end{enumerate}

### Exercice 6 : Représentation paramétrique d'un plan
\begin{enonce}
On considère le plan $(P)$ passant par $A(1, 0, 2)$ et dirigé par les vecteurs $\vec{u}(1, 1, 0)$ et $\vec{v}(0, 1, 1)$.
\begin{enumerate}
    \item Justifier que $\vec{u}$ et $\vec{v}$ dirigent bien un plan, puis donner une représentation paramétrique de $(P)$.
    \item Le point $M(2, 3, 4)$ appartient-il à $(P)$ ?
    \item Le point $N(0, 1, 1)$ appartient-il à $(P)$ ?
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Les vecteurs $\vec{u}(1, 1, 0)$ et $\vec{v}(0, 1, 1)$ ne sont pas colinéaires (leurs coordonnées ne sont pas proportionnelles) : ils dirigent donc un plan. Un point $M(x, y, z)$ appartient à $(P)$ si et seulement s'il existe $t, s \in \mathbb{R}$ tels que $\vec{AM} = t\vec{u} + s\vec{v}$ :
    $$\begin{cases} x = 1 + t \\ y = t + s \\ z = 2 + s \end{cases} \qquad (t, s \in \mathbb{R}).$$
    \item Pour $M(2, 3, 4)$ : $2 = 1 + t$ donne $t = 1$, et $4 = 2 + s$ donne $s = 2$. On vérifie la deuxième équation : $t + s = 1 + 2 = 3 = y$. Le système est compatible, donc $M \in (P)$.
    \item Pour $N(0, 1, 1)$ : $0 = 1 + t$ donne $t = -1$, et $1 = 2 + s$ donne $s = -1$. La deuxième équation imposerait $t + s = 1$, or $t + s = -2 \neq 1$. Le système est incompatible, donc $N \notin (P)$.
\end{enumerate}
