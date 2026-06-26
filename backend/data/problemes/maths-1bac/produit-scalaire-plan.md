### Problème 1 : Étude d'un triangle dans un repère
\begin{enonce}
Le plan est muni d'un repère orthonormé $(O, \vec{i}, \vec{j})$. On considère les points $A(2, 1)$, $B(6, 3)$ et $C(4, 5)$.
\begin{enumerate}
    \item Déterminer les coordonnées des vecteurs $\overrightarrow{AB}$ et $\overrightarrow{AC}$, puis calculer le produit scalaire $\overrightarrow{AB} \cdot \overrightarrow{AC}$.
    \item Calculer les longueurs $AB$, $AC$ et $BC$. Que peut-on dire du triangle $ABC$ ?
    \item Déterminer une mesure approchée, au centième de degré, de l'angle $\widehat{A}$.
    \item Calculer l'aire du triangle $ABC$.
    \item Soit $I$ le milieu de $[BC]$. Calculer $AI$ de deux façons : directement par les coordonnées, puis à l'aide du théorème de la médiane.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item On a $\overrightarrow{AB}\begin{pmatrix} 4 \\ 2 \end{pmatrix}$ et $\overrightarrow{AC}\begin{pmatrix} 2 \\ 4 \end{pmatrix}$, donc :
$$\overrightarrow{AB} \cdot \overrightarrow{AC} = 4 \times 2 + 2 \times 4 = 16.$$
    \item On calcule chaque longueur :
$$AB = \sqrt{4^2 + 2^2} = \sqrt{20} = 2\sqrt{5}, \quad AC = \sqrt{2^2 + 4^2} = \sqrt{20} = 2\sqrt{5}, \quad BC = \sqrt{(-2)^2 + 2^2} = \sqrt{8} = 2\sqrt{2}.$$
Comme $AB = AC$, le triangle $ABC$ est **isocèle** en $A$.
    \item On isole le cosinus :
$$\cos\widehat{A} = \frac{\overrightarrow{AB} \cdot \overrightarrow{AC}}{AB \times AC} = \frac{16}{2\sqrt{5} \times 2\sqrt{5}} = \frac{16}{20} = \frac{4}{5} = 0{,}8,$$
donc $\widehat{A} \approx 36{,}87°$.
    \item Comme $\cos\widehat{A} = 0{,}8$ et $\widehat{A}$ est aigu, $\sin\widehat{A} = \sqrt{1 - 0{,}8^2} = 0{,}6$. L'aire vaut :
$$\mathcal{A} = \frac{1}{2}\, AB \times AC \times \sin\widehat{A} = \frac{1}{2} \times 2\sqrt{5} \times 2\sqrt{5} \times 0{,}6 = \frac{1}{2} \times 20 \times 0{,}6 = 6.$$
    \item Le milieu de $[BC]$ est $I\left(\dfrac{6+4}{2}, \dfrac{3+5}{2}\right) = I(5, 4)$. Directement :
$$AI = \sqrt{(5 - 2)^2 + (4 - 1)^2} = \sqrt{9 + 9} = \sqrt{18} = 3\sqrt{2}.$$
Par le théorème de la médiane, $AB^2 + AC^2 = 2\,AI^2 + \dfrac{BC^2}{2}$, soit $20 + 20 = 2\,AI^2 + \dfrac{8}{2}$, donc $2\,AI^2 = 40 - 4 = 36$ et $AI^2 = 18$ : on retrouve $AI = 3\sqrt{2}$.
\end{enumerate}

### Problème 2 : Un lieu géométrique
\begin{enonce}
Le plan est muni d'un repère orthonormé. On considère les points $A(-2, 0)$ et $B(4, 0)$, et l'ensemble $(E)$ des points $M(x, y)$ vérifiant $\overrightarrow{MA} \cdot \overrightarrow{MB} = 0$.
\begin{enumerate}
    \item Exprimer $\overrightarrow{MA} \cdot \overrightarrow{MB}$ en fonction de $x$ et $y$, et en déduire une équation de $(E)$.
    \item Reconnaître l'ensemble $(E)$ : préciser son centre et son rayon. Quel lien avec le segment $[AB]$ ?
    \item Le point $C(1, 3)$ appartient-il à $(E)$ ? Que peut-on en déduire pour le triangle $ACB$ ?
    \item Déterminer et reconnaître l'ensemble $(E')$ des points $M$ tels que $\overrightarrow{MA} \cdot \overrightarrow{MB} = 7$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item On a $\overrightarrow{MA}\begin{pmatrix} -2 - x \\ -y \end{pmatrix}$ et $\overrightarrow{MB}\begin{pmatrix} 4 - x \\ -y \end{pmatrix}$, donc :
$$\overrightarrow{MA} \cdot \overrightarrow{MB} = (-2 - x)(4 - x) + (-y)(-y) = x^2 - 2x - 8 + y^2.$$
L'équation $\overrightarrow{MA} \cdot \overrightarrow{MB} = 0$ s'écrit $x^2 + y^2 - 2x - 8 = 0$.
    \item En regroupant : $(x - 1)^2 - 1 + y^2 - 8 = 0$, soit $(x - 1)^2 + y^2 = 9$. C'est le **cercle** de centre $\Omega(1, 0)$ et de rayon $3$. Le centre $\Omega$ est le milieu de $[AB]$ et le rayon vaut $\dfrac{AB}{2} = \dfrac{6}{2} = 3$ : $(E)$ est le cercle de diamètre $[AB]$.
    \item Pour $C(1, 3)$ : $(1 - 1)^2 + 3^2 = 9$, donc $C \in (E)$. Le triangle $ACB$ est inscrit dans le cercle de diamètre $[AB]$ : il est **rectangle en $C$**. On vérifie d'ailleurs $\overrightarrow{CA} \cdot \overrightarrow{CB} = (-3)(3) + (-3)(-3) = -9 + 9 = 0$.
    \item L'équation devient $x^2 - 2x - 8 + y^2 = 7$, soit $(x - 1)^2 + y^2 = 16$. C'est le cercle de centre $\Omega(1, 0)$ et de rayon $4$.
\end{enumerate}

### Problème 3 : Relations métriques dans un triangle
\begin{enonce}
On considère un triangle $ABC$ dont les côtés mesurent $AB = 5$, $BC = 7$ et $CA = 8$. On pose, comme d'usage, $a = BC = 7$, $b = CA = 8$ et $c = AB = 5$.
\begin{enumerate}
    \item Calculer $\cos\widehat{A}$ et en déduire la mesure exacte de l'angle $\widehat{A}$.
    \item Déterminer des valeurs approchées, au centième de degré, des angles $\widehat{B}$ et $\widehat{C}$.
    \item Calculer l'aire du triangle, puis vérifier le résultat par la formule de Héron.
    \item On note $I$ le milieu de $[BC]$. Calculer la longueur $AI$ de la médiane issue de $A$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item D'après Al-Kashi, $a^2 = b^2 + c^2 - 2bc\cos\widehat{A}$, donc :
$$\cos\widehat{A} = \frac{b^2 + c^2 - a^2}{2bc} = \frac{64 + 25 - 49}{2 \times 8 \times 5} = \frac{40}{80} = \frac{1}{2},$$
d'où $\widehat{A} = 60°$.
    \item De même :
$$\cos\widehat{B} = \frac{a^2 + c^2 - b^2}{2ac} = \frac{49 + 25 - 64}{2 \times 7 \times 5} = \frac{10}{70} = \frac{1}{7} \approx 0{,}1429 \;\Rightarrow\; \widehat{B} \approx 81{,}79°,$$
$$\cos\widehat{C} = \frac{a^2 + b^2 - c^2}{2ab} = \frac{49 + 64 - 25}{2 \times 7 \times 8} = \frac{88}{112} = \frac{11}{14} \approx 0{,}7857 \;\Rightarrow\; \widehat{C} \approx 38{,}21°.$$
On vérifie : $60 + 81{,}79 + 38{,}21 = 180$.
    \item Comme $\sin(60°) = \dfrac{\sqrt{3}}{2}$, l'aire vaut :
$$\mathcal{A} = \frac{1}{2}\, bc \sin\widehat{A} = \frac{1}{2} \times 8 \times 5 \times \frac{\sqrt{3}}{2} = 10\sqrt{3} \approx 17{,}32.$$
Par la formule de Héron avec $s = \dfrac{a + b + c}{2} = 10$ :
$$\mathcal{A} = \sqrt{s(s - a)(s - b)(s - c)} = \sqrt{10 \times 3 \times 2 \times 5} = \sqrt{300} = 10\sqrt{3}.$$
Les deux méthodes concordent.
    \item Le théorème de la médiane donne $AB^2 + AC^2 = 2\,AI^2 + \dfrac{BC^2}{2}$, soit :
$$2\,AI^2 = c^2 + b^2 - \frac{a^2}{2} = 25 + 64 - \frac{49}{2} = 89 - 24{,}5 = 64{,}5,$$
donc $AI^2 = 32{,}25 = \dfrac{129}{4}$ et $AI = \dfrac{\sqrt{129}}{2} \approx 5{,}68.$
\end{enumerate}
