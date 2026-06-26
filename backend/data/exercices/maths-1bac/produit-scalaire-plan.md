### Exercice 1 : Les trois expressions du produit scalaire
\begin{enonce}
Calculer le produit scalaire $\vec{u} \cdot \vec{v}$ dans chacun des cas suivants.
\begin{enumerate}
    \item $\vec{u}\begin{pmatrix} 3 \\ -2 \end{pmatrix}$ et $\vec{v}\begin{pmatrix} 1 \\ 4 \end{pmatrix}$ (par les coordonnées).
    \item $\|\vec{u}\| = 2$, $\|\vec{v}\| = 5$ et $\widehat{\vec{u}, \vec{v}} = 120°$ (par la norme et l'angle).
    \item $\|\vec{u}\| = 3$, $\|\vec{v}\| = 4$ et $\|\vec{u} + \vec{v}\| = \sqrt{37}$ (par les normes).
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Avec la formule $\vec{u} \cdot \vec{v} = xx' + yy'$ :
$$\vec{u} \cdot \vec{v} = 3 \times 1 + (-2) \times 4 = 3 - 8 = -5.$$
    \item Avec la définition par l'angle, et $\cos(120°) = -\tfrac{1}{2}$ :
$$\vec{u} \cdot \vec{v} = 2 \times 5 \times \cos(120°) = 10 \times \left(-\tfrac{1}{2}\right) = -5.$$
    \item On utilise l'identité $\|\vec{u} + \vec{v}\|^2 = \|\vec{u}\|^2 + 2\,\vec{u}\cdot\vec{v} + \|\vec{v}\|^2$, soit $\vec{u}\cdot\vec{v} = \tfrac{1}{2}\left(\|\vec{u}+\vec{v}\|^2 - \|\vec{u}\|^2 - \|\vec{v}\|^2\right)$ :
$$\vec{u} \cdot \vec{v} = \tfrac{1}{2}\left(37 - 9 - 16\right) = \tfrac{12}{2} = 6.$$
\end{enumerate}

### Exercice 2 : Orthogonalité
\begin{enonce}
Le plan est muni d'un repère orthonormé.
\begin{enumerate}
    \item Déterminer le réel $m$ pour que les vecteurs $\vec{u}\begin{pmatrix} m \\ 3 \end{pmatrix}$ et $\vec{v}\begin{pmatrix} 2 \\ -4 \end{pmatrix}$ soient orthogonaux.
    \item On considère les points $A(1, 1)$, $B(3, 2)$ et $C(0, 3)$. Montrer que le triangle $ABC$ est rectangle en $A$, puis calculer son aire.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Les vecteurs sont orthogonaux si et seulement si $\vec{u} \cdot \vec{v} = 0$ :
$$m \times 2 + 3 \times (-4) = 0 \iff 2m - 12 = 0 \iff m = 6.$$
    \item On calcule $\overrightarrow{AB}\begin{pmatrix} 2 \\ 1 \end{pmatrix}$ et $\overrightarrow{AC}\begin{pmatrix} -1 \\ 2 \end{pmatrix}$, puis :
$$\overrightarrow{AB} \cdot \overrightarrow{AC} = 2 \times (-1) + 1 \times 2 = 0,$$
donc $\overrightarrow{AB} \perp \overrightarrow{AC}$ : le triangle est rectangle en $A$. Comme $AB = \sqrt{2^2 + 1^2} = \sqrt{5}$ et $AC = \sqrt{(-1)^2 + 2^2} = \sqrt{5}$, l'aire vaut :
$$\mathcal{A} = \frac{AB \times AC}{2} = \frac{\sqrt{5} \times \sqrt{5}}{2} = \frac{5}{2}.$$
\end{enumerate}

### Exercice 3 : Théorème d'Al-Kashi
\begin{enonce}
Dans un triangle $ABC$, on donne $AB = 8$, $AC = 5$ et $\widehat{A} = 60°$.
\begin{enumerate}
    \item Calculer la longueur $BC$.
    \item En déduire $\cos\widehat{B}$, puis une valeur approchée de l'angle $\widehat{B}$ au dixième de degré.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item On pose $a = BC$, $b = AC = 5$, $c = AB = 8$. D'après Al-Kashi, avec $\cos(60°) = \tfrac{1}{2}$ :
$$a^2 = b^2 + c^2 - 2bc\cos\widehat{A} = 25 + 64 - 2 \times 5 \times 8 \times \tfrac{1}{2} = 89 - 40 = 49,$$
donc $BC = \sqrt{49} = 7$.
    \item On applique Al-Kashi relativement à l'angle $\widehat{B}$, soit $b^2 = a^2 + c^2 - 2ac\cos\widehat{B}$ :
$$\cos\widehat{B} = \frac{a^2 + c^2 - b^2}{2ac} = \frac{49 + 64 - 25}{2 \times 7 \times 8} = \frac{88}{112} = \frac{11}{14} \approx 0{,}786,$$
d'où $\widehat{B} \approx 38{,}2°$.
\end{enumerate}

### Exercice 4 : Théorème de la médiane
\begin{enonce}
\begin{enumerate}
    \item Dans un triangle $ABC$ tel que $AB = 7$, $AC = 5$ et $BC = 8$, on note $I$ le milieu de $[BC]$. Calculer la longueur $AI$ de la médiane issue de $A$.
    \item Dans un triangle $ABC$ tel que $AB = 6$, $AC = 8$, on note $I$ le milieu de $[BC]$ et on sait que $AI = 5$. Déterminer $BC$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Le théorème de la médiane donne $AB^2 + AC^2 = 2\,AI^2 + \dfrac{BC^2}{2}$, d'où :
$$AI^2 = \frac{AB^2 + AC^2}{2} - \frac{BC^2}{4} = \frac{49 + 25}{2} - \frac{64}{4} = 37 - 16 = 21,$$
donc $AI = \sqrt{21} \approx 4{,}58$.
    \item On isole $BC^2$ dans la même relation :
$$\frac{BC^2}{2} = AB^2 + AC^2 - 2\,AI^2 = 36 + 64 - 2 \times 25 = 50,$$
donc $BC^2 = 100$ et $BC = 10$.
\end{enumerate}

### Exercice 5 : Équation de droite et distance
\begin{enonce}
Le plan est muni d'un repère orthonormé.
\begin{enumerate}
    \item Déterminer une équation cartésienne de la droite $(D)$ passant par $A(2, 3)$ et de vecteur normal $\vec{n}\begin{pmatrix} 1 \\ -2 \end{pmatrix}$.
    \item Calculer la distance du point $O(0, 0)$ à la droite $(D)$.
    \item On considère la droite $(\Delta) : 3x + 4y - 5 = 0$. Donner un vecteur normal à $(\Delta)$, puis calculer la distance du point $M(1, 1)$ à $(\Delta)$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Un point $M(x, y)$ appartient à $(D)$ si et seulement si $\overrightarrow{AM} \cdot \vec{n} = 0$ :
$$1(x - 2) - 2(y - 3) = 0 \iff x - 2y + 4 = 0.$$
    \item Avec $a = 1$, $b = -2$, $c = 4$ :
$$d(O, D) = \frac{|1 \times 0 - 2 \times 0 + 4|}{\sqrt{1^2 + (-2)^2}} = \frac{4}{\sqrt{5}} = \frac{4\sqrt{5}}{5} \approx 1{,}79.$$
    \item Les coefficients de $x$ et $y$ donnent un vecteur normal $\vec{n}\begin{pmatrix} 3 \\ 4 \end{pmatrix}$, et :
$$d(M, \Delta) = \frac{|3 \times 1 + 4 \times 1 - 5|}{\sqrt{3^2 + 4^2}} = \frac{|2|}{5} = \frac{2}{5} = 0{,}4.$$
\end{enumerate}

### Exercice 6 : Équations de cercles
\begin{enonce}
Le plan est muni d'un repère orthonormé.
\begin{enumerate}
    \item Donner l'équation du cercle $(\mathcal{C}_1)$ de centre $\Omega(1, -2)$ et de rayon $3$, puis la développer.
    \item On considère $A(1, 2)$ et $B(5, 4)$. Déterminer une équation du cercle $(\mathcal{C}_2)$ de diamètre $[AB]$ en utilisant la caractérisation $\overrightarrow{MA} \cdot \overrightarrow{MB} = 0$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item L'équation est $(x - 1)^2 + (y + 2)^2 = 9$. En développant :
$$x^2 - 2x + 1 + y^2 + 4y + 4 = 9 \iff x^2 + y^2 - 2x + 4y - 4 = 0.$$
    \item Pour $M(x, y)$, on a $\overrightarrow{MA}\begin{pmatrix} 1 - x \\ 2 - y \end{pmatrix}$ et $\overrightarrow{MB}\begin{pmatrix} 5 - x \\ 4 - y \end{pmatrix}$. La condition $\overrightarrow{MA} \cdot \overrightarrow{MB} = 0$ s'écrit :
$$(1 - x)(5 - x) + (2 - y)(4 - y) = 0 \iff (x^2 - 6x + 5) + (y^2 - 6y + 8) = 0,$$
soit $x^2 + y^2 - 6x - 6y + 13 = 0$. C'est le cercle de centre $\Omega(3, 3)$ (milieu de $[AB]$) et de rayon $\sqrt{5}$.
\end{enumerate}
