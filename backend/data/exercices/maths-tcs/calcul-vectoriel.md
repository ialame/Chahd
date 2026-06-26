### Exercice 1 : Relation de Chasles
\begin{enonce}
Soient $A$, $B$, $C$ et $D$ quatre points du plan. Simplifier chacune des expressions suivantes pour l'écrire à l'aide d'un seul vecteur.
\begin{enumerate}
    \item $\overrightarrow{AB} + \overrightarrow{BD}$
    \item $\overrightarrow{AB} + \overrightarrow{BC} + \overrightarrow{CD}$
    \item $\overrightarrow{CA} - \overrightarrow{CB}$
    \item $\overrightarrow{AB} + \overrightarrow{BC} + \overrightarrow{CD} + \overrightarrow{DA}$
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Par la relation de Chasles, $\overrightarrow{AB} + \overrightarrow{BD} = \overrightarrow{AD}$.
    \item On enchaîne les vecteurs : $\overrightarrow{AB} + \overrightarrow{BC} + \overrightarrow{CD} = \overrightarrow{AC} + \overrightarrow{CD} = \overrightarrow{AD}$.
    \item On utilise $-\overrightarrow{CB} = \overrightarrow{BC}$, donc $\overrightarrow{CA} - \overrightarrow{CB} = \overrightarrow{CA} + \overrightarrow{BC} = \overrightarrow{BC} + \overrightarrow{CA} = \overrightarrow{BA}$.
    \item En enchaînant tous les vecteurs : $\overrightarrow{AB} + \overrightarrow{BC} + \overrightarrow{CD} + \overrightarrow{DA} = \overrightarrow{AA} = \vec{0}$. La somme revient au point de départ.
\end{enumerate}

### Exercice 2 : Coordonnées d'un vecteur, d'un point et opérations
\begin{enonce}
Le plan est muni d'un repère $(O, \vec{i}, \vec{j})$. On donne les points $A(1\,;\,2)$, $B(5\,;\,4)$ et $C(-2\,;\,3)$.
\begin{enumerate}
    \item Déterminer les coordonnées des vecteurs $\overrightarrow{AB}$, $\overrightarrow{AC}$ et $\overrightarrow{BC}$.
    \item Déterminer les coordonnées du milieu $I$ du segment $[AB]$.
    \item Calculer les coordonnées du vecteur $\vec{w} = 2\overrightarrow{AB} - \overrightarrow{AC}$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item On soustrait les coordonnées de l'origine à celles de l'extrémité :
    $$\overrightarrow{AB}\begin{pmatrix} 5-1 \\ 4-2 \end{pmatrix} = \begin{pmatrix} 4 \\ 2 \end{pmatrix}, \quad \overrightarrow{AC}\begin{pmatrix} -2-1 \\ 3-2 \end{pmatrix} = \begin{pmatrix} -3 \\ 1 \end{pmatrix}, \quad \overrightarrow{BC}\begin{pmatrix} -2-5 \\ 3-4 \end{pmatrix} = \begin{pmatrix} -7 \\ -1 \end{pmatrix}.$$
    \item Les coordonnées du milieu sont les moyennes des coordonnées :
    $$I\left( \frac{1+5}{2}\,;\,\frac{2+4}{2} \right) = I(3\,;\,3).$$
    \item On calcule chaque coordonnée : $2\overrightarrow{AB}\begin{pmatrix} 8 \\ 4 \end{pmatrix}$, donc
    $$\vec{w}\begin{pmatrix} 8-(-3) \\ 4-1 \end{pmatrix} = \begin{pmatrix} 11 \\ 3 \end{pmatrix}.$$
\end{enumerate}

### Exercice 3 : Condition de colinéarité
\begin{enonce}
Le plan est muni d'un repère $(O, \vec{i}, \vec{j})$.
\begin{enumerate}
    \item Les vecteurs $\vec{u}\begin{pmatrix} 3 \\ -2 \end{pmatrix}$ et $\vec{v}\begin{pmatrix} -6 \\ 4 \end{pmatrix}$ sont-ils colinéaires ?
    \item Les vecteurs $\vec{a}\begin{pmatrix} 2 \\ 5 \end{pmatrix}$ et $\vec{b}\begin{pmatrix} 3 \\ 7 \end{pmatrix}$ sont-ils colinéaires ?
    \item Déterminer le réel $m$ pour que les vecteurs $\vec{p}\begin{pmatrix} m \\ 3 \end{pmatrix}$ et $\vec{q}\begin{pmatrix} 4 \\ 6 \end{pmatrix}$ soient colinéaires.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
On utilise la condition : $\vec{u}\begin{pmatrix} x \\ y \end{pmatrix}$ et $\vec{v}\begin{pmatrix} x' \\ y' \end{pmatrix}$ sont colinéaires si et seulement si $xy' - x'y = 0$.
\begin{enumerate}
    \item $\det(\vec{u}, \vec{v}) = 3 \times 4 - (-6) \times (-2) = 12 - 12 = 0$. Le déterminant est nul : $\vec{u}$ et $\vec{v}$ sont colinéaires.
    \item $\det(\vec{a}, \vec{b}) = 2 \times 7 - 3 \times 5 = 14 - 15 = -1 \neq 0$. Le déterminant n'est pas nul : $\vec{a}$ et $\vec{b}$ ne sont pas colinéaires.
    \item Les vecteurs sont colinéaires lorsque $m \times 6 - 4 \times 3 = 0$, soit $6m - 12 = 0$, d'où $m = 2$.
\end{enumerate}

### Exercice 4 : Alignement de trois points
\begin{enonce}
Le plan est muni d'un repère $(O, \vec{i}, \vec{j})$.
\begin{enumerate}
    \item Montrer que les points $A(1\,;\,1)$, $B(3\,;\,5)$ et $C(0\,;\,-1)$ sont alignés.
    \item On considère les points $D(1\,;\,2)$, $E(3\,;\,6)$ et $F(t\,;\,10)$, où $t$ est un réel. Déterminer $t$ pour que $D$, $E$ et $F$ soient alignés.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
Trois points sont alignés lorsque deux des vecteurs qu'ils forment sont colinéaires.
\begin{enumerate}
    \item $\overrightarrow{AB}\begin{pmatrix} 2 \\ 4 \end{pmatrix}$ et $\overrightarrow{AC}\begin{pmatrix} -1 \\ -2 \end{pmatrix}$. Le déterminant vaut $2 \times (-2) - (-1) \times 4 = -4 + 4 = 0$. Les vecteurs $\overrightarrow{AB}$ et $\overrightarrow{AC}$ sont colinéaires, donc $A$, $B$ et $C$ sont alignés.
    \item $\overrightarrow{DE}\begin{pmatrix} 2 \\ 4 \end{pmatrix}$ et $\overrightarrow{DF}\begin{pmatrix} t-1 \\ 8 \end{pmatrix}$. Les points sont alignés lorsque $\det(\overrightarrow{DE}, \overrightarrow{DF}) = 0$ :
    $$2 \times 8 - (t-1) \times 4 = 0 \iff 16 - 4t + 4 = 0 \iff 20 - 4t = 0 \iff t = 5.$$
\end{enumerate}

### Exercice 5 : Construire un parallélogramme
\begin{enonce}
Le plan est muni d'un repère $(O, \vec{i}, \vec{j})$. On donne les points $A(-1\,;\,2)$, $B(3\,;\,0)$ et $C(4\,;\,3)$. Déterminer les coordonnées du point $D$ tel que $ABCD$ soit un parallélogramme, puis vérifier le résultat à l'aide des diagonales.
\end{enonce}

\textbf{Solution :}
$ABCD$ est un parallélogramme si et seulement si $\overrightarrow{AB} = \overrightarrow{DC}$.

On a $\overrightarrow{AB}\begin{pmatrix} 4 \\ -2 \end{pmatrix}$. En notant $D(x\,;\,y)$, on a $\overrightarrow{DC}\begin{pmatrix} 4-x \\ 3-y \end{pmatrix}$. L'égalité $\overrightarrow{AB} = \overrightarrow{DC}$ donne :
$$\begin{cases} 4 - x = 4 \\ 3 - y = -2 \end{cases} \iff \begin{cases} x = 0 \\ y = 5 \end{cases}.$$
Donc $D(0\,;\,5)$.

\textbf{Vérification :} dans un parallélogramme, les diagonales $[AC]$ et $[BD]$ ont le même milieu. Milieu de $[AC]$ : $\left( \dfrac{-1+4}{2}\,;\,\dfrac{2+3}{2} \right) = \left( \dfrac{3}{2}\,;\,\dfrac{5}{2} \right)$. Milieu de $[BD]$ : $\left( \dfrac{3+0}{2}\,;\,\dfrac{0+5}{2} \right) = \left( \dfrac{3}{2}\,;\,\dfrac{5}{2} \right)$. Les deux milieux coïncident : $D(0\,;\,5)$ convient.

### Exercice 6 : Norme et nature d'un triangle
\begin{enonce}
Le plan est muni d'un repère **orthonormé** $(O, \vec{i}, \vec{j})$.
\begin{enumerate}
    \item Calculer la norme des vecteurs $\vec{u}\begin{pmatrix} 5 \\ -12 \end{pmatrix}$ et $\vec{v}\begin{pmatrix} -3 \\ 4 \end{pmatrix}$.
    \item On considère les points $A(0\,;\,0)$, $B(4\,;\,0)$ et $C(2\,;\,3)$. Calculer les longueurs $AB$, $AC$ et $BC$, puis déterminer la nature du triangle $ABC$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
Dans un repère orthonormé, $\left\| \vec{u}\begin{pmatrix} x \\ y \end{pmatrix} \right\| = \sqrt{x^2 + y^2}$.
\begin{enumerate}
    \item $\|\vec{u}\| = \sqrt{5^2 + (-12)^2} = \sqrt{25 + 144} = \sqrt{169} = 13$ et $\|\vec{v}\| = \sqrt{(-3)^2 + 4^2} = \sqrt{9 + 16} = \sqrt{25} = 5$.
    \item On calcule chaque longueur :
    $$AB = \sqrt{(4-0)^2 + (0-0)^2} = \sqrt{16} = 4,$$
    $$AC = \sqrt{(2-0)^2 + (3-0)^2} = \sqrt{4 + 9} = \sqrt{13},$$
    $$BC = \sqrt{(2-4)^2 + (3-0)^2} = \sqrt{4 + 9} = \sqrt{13}.$$
    On a $AC = BC = \sqrt{13}$, donc le triangle $ABC$ est **isocèle en $C$**.
\end{enumerate}
