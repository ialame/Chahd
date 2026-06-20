### Exercice 1 : Colinéarité de vecteurs et alignement
\begin{enonce}
Soient les points $A(1, 2, -1)$, $B(3, 0, 5)$ et $C(0, 3, -4)$ dans l'espace muni d'un repère orthonormé. Les points $A$, $B$ et $C$ sont-ils alignés ?
\end{enonce}

\textbf{Solution :}
Les points $A$, $B$ et $C$ sont alignés si et seulement si les vecteurs $\vec{AB}$ et $\vec{AC}$ sont colinéaires.
Calculons les coordonnées de ces vecteurs :
\[
\vec{AB} = \begin{pmatrix} x_B - x_A \\ y_B - y_A \\ z_B - z_A \end{pmatrix} = \begin{pmatrix} 3 - 1 \\ 0 - 2 \\ 5 - (-1) \end{pmatrix} = \begin{pmatrix} 2 \\ -2 \\ 6 \end{pmatrix}
\]
\[
\vec{AC} = \begin{pmatrix} x_C - x_A \\ y_C - y_A \\ z_C - z_A \end{pmatrix} = \begin{pmatrix} 0 - 1 \\ 3 - 2 \\ -4 - (-1) \end{pmatrix} = \begin{pmatrix} -1 \\ 1 \\ -3 \end{pmatrix}
\]
Cherchons s'il existe un réel $k$ tel que $\vec{AB} = k \vec{AC}$. On remarque immédiatement que :
\[
\vec{AB} = -2 \vec{AC}
\]
En effet, $2 = -2 \times (-1)$, $-2 = -2 \times 1$ et $6 = -2 \times (-3)$.
Les vecteurs $\vec{AB}$ et $\vec{AC}$ sont colinéaires. Par conséquent, les points $A$, $B$ et $C$ sont alignés.

### Exercice 2 : Droites parallèles
\begin{enonce}
Déterminer si la droite $D_1$ passant par le point $A(1, 0, 2)$ et dirigée par le vecteur $\vec{u}_1(2, -1, 3)$ est parallèle à la droite $D_2$ passant par le point $B(0, 3, -1)$ et dirigée par le vecteur $\vec{u}_2(-4, 2, -6)$.
\end{enonce}

\textbf{Solution :}
Deux droites sont parallèles si et seulement si leurs vecteurs directeurs sont colinéaires.
Comparons les vecteurs directeurs $\vec{u}_1(2, -1, 3)$ et $\vec{u}_2(-4, 2, -6)$ :
On cherche un réel $k$ tel que $\vec{u}_2 = k \vec{u}_1$, ce qui conduit au système :
\[
\begin{cases}
-4 = 2k \\
2 = -k \\
-6 = 3k
\end{cases} \implies k = -2
\]
Le coefficient $k = -2$ convient pour toutes les coordonnées. Les vecteurs $\vec{u}_1$ et $\vec{u}_2$ sont donc colinéaires.
Ainsi, la droite $D_1$ et la droite $D_2$ sont parallèles.

### Exercice 3 : Représentation paramétrique de droite
\begin{enonce}
Soient les points $A(2, -1, 3)$ et $B(0, 4, 1)$.
\begin{enumerate}
    \item Déterminer une représentation paramétrique de la droite $(AB)$.
    \item Le point $C(4, -6, 5)$ appartient-il à cette droite ?
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item La droite $(AB)$ passe par le point $A(2, -1, 3)$ et a pour vecteur directeur $\vec{AB}$ de coordonnées :
    \[
    \vec{AB} = \begin{pmatrix} 0 - 2 \\ 4 - (-1) \\ 1 - 3 \end{pmatrix} = \begin{pmatrix} -2 \\ 5 \\ -2 \end{pmatrix}
    \]
    Une représentation paramétrique de la droite $(AB)$ est :
    \[
    \begin{cases}
    x = 2 - 2t \\
    y = -1 + 5t \\
    z = 3 - 2t
    \end{cases} \quad (t \in \R)
    \]
    
    \item Le point $C(4, -6, 5)$ appartient à la droite $(AB)$ s'il existe un réel $t$ tel que :
    \[
    \begin{cases}
    4 = 2 - 2t \\
    -6 = -1 + 5t \\
    5 = 3 - 2t
    \end{cases}
    \]
    Résolvons la première équation : $2t = 2 - 4 \implies t = -1$.
    Vérifions si la valeur $t = -1$ satisfait les deux autres équations :
    - Deuxième équation : $-1 + 5(-1) = -6$ (vrai).
    - Troisième équation : $3 - 2(-1) = 5$ (vrai).
    La valeur de paramètre $t = -1$ étant unique et cohérente, le point $C$ appartient à la droite $(AB)$.
\end{enumerate}

### Exercice 4 : Coplanarité de vecteurs
\begin{enonce}
Soient les vecteurs $\vec{u}(1, 2, 0)$, $\vec{v}(0, -1, 3)$ et $\vec{w}(2, 3, 3)$. Les vecteurs $\vec{u}$, $\vec{v}$ et $\vec{w}$ sont-ils coplanaires ?
\end{enonce}

\textbf{Solution :}
Les vecteurs $\vec{u}$ et $\vec{v}$ ne sont manifestement pas colinéaires (leurs coordonnées ne sont pas proportionnelles).
Les vecteurs $\vec{u}$, $\vec{v}$ et $\vec{w}$ sont coplanaires si et seulement s'il existe deux réels $a$ et $b$ tels que :
\[
\vec{w} = a \vec{u} + b \vec{v}
\]
Ce qui se traduit par le système d'équations :
\[
\begin{cases}
2 = a \times 1 + b \times 0 \\
3 = a \times 2 + b \times (-1) \\
3 = a \times 0 + b \times 3
\end{cases} \iff
\begin{cases}
a = 2 \\
2a - b = 3 \\
3b = 3
\end{cases}
\]
De la première équation, on a $a = 2$.
De la troisième équation, on a $b = 1$.
Injectons ces valeurs dans la deuxième équation pour vérifier la cohérence :
\[
2(2) - (1) = 4 - 1 = 3
\]
La deuxième équation est vérifiée. Le système admet une solution unique $(a, b) = (2, 1)$, donc $\vec{w} = 2\vec{u} + \vec{v}$.
Les vecteurs $\vec{u}$, $\vec{v}$ et $\vec{w}$ sont coplanaires.

### Exercice 5 : Orthogonalité et produit scalaire
\begin{enonce}
Soient les vecteurs $\vec{u}(2, -1, 4)$ et $\vec{v}(3, 2, -1)$ dans un repère orthonormé de l'espace. Calculer le produit scalaire $\vec{u} \cdot \vec{v}$. Les vecteurs $\vec{u}$ et $\vec{v}$ sont-ils orthogonaux ?
\end{enonce}

\textbf{Solution :}
Le produit scalaire de deux vecteurs dans un repère orthonormé est donné par la formule :
\[
\vec{u} \cdot \vec{v} = x x' + y y' + z z'
\]
Calculons :
\[
\vec{u} \cdot \vec{v} = 2 \times 3 + (-1) \times 2 + 4 \times (-1) = 6 - 2 - 4 = 0
\]
Le produit scalaire étant égal à 0, les vecteurs $\vec{u}$ et $\vec{v}$ sont orthogonaux.

### Exercice 6 : Équation cartésienne de plan (Point et Vecteur normal)
\begin{enonce}
Déterminer une équation cartésienne du plan $\mathcal{P}$ passant par le point $A(1, 3, -2)$ et admettant le vecteur $\vec{n}(2, -1, 5)$ pour vecteur normal.
\end{enonce}

\textbf{Solution :}
Comme $\vec{n}(2, -1, 5)$ est un vecteur normal au plan $\mathcal{P}$, l'équation cartésienne de $\mathcal{P}$ est de la forme :
\[
2x - y + 5z + d = 0
\]
où $d \in \R$.
Le point $A(1, 3, -2)$ appartient au plan $\mathcal{P}$, ses coordonnées vérifient donc l'équation :
\[
2(1) - (3) + 5(-2) + d = 0 \iff 2 - 3 - 10 + d = 0 \iff -11 + d = 0 \iff d = 11
\]
L'équation cartésienne du plan $\mathcal{P}$ est donc :
\[
2x - y + 5z + 11 = 0
\]

### Exercice 7 : Plan défini par trois points
\begin{enonce}
Soient les points $A(1, 0, 1)$, $B(2, 1, -1)$ et $C(0, 1, 2)$.
\begin{enumerate}
    \item Démontrer que les points $A$, $B$ et $C$ définissent un plan.
    \item Démontrer que le vecteur $\vec{n}(3, 1, 2)$ est un vecteur normal au plan $(ABC)$, puis en déduire une équation cartésienne de ce plan.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Les points $A$, $B$ et $C$ définissent un plan unique si et seulement s'ils ne sont pas alignés, c'est-à-dire si les vecteurs $\vec{AB}$ et $\vec{AC}$ ne sont pas colinéaires.
    Calculons leurs coordonnées :
    \[
    \vec{AB} = \begin{pmatrix} 2-1 \\ 1-0 \\ -1-1 \end{pmatrix} = \begin{pmatrix} 1 \\ 1 \\ -2 \end{pmatrix} \quad \text{et} \quad \vec{AC} = \begin{pmatrix} 0-1 \\ 1-0 \\ 2-1 \end{pmatrix} = \begin{pmatrix} -1 \\ 1 \\ 1 \end{pmatrix}
    \]
    Les coordonnées ne sont pas proportionnelles (par exemple, $\frac{x_{AC}}{x_{AB}} = -1$ et $\frac{y_{AC}}{y_{AB}} = 1$). Les vecteurs ne sont pas colinéaires, donc les points $A, B$ et $C$ définissent bien un plan.
    
    \item Pour prouver que $\vec{n}(3, 1, 2)$ est normal au plan $(ABC)$, il suffit de montrer qu'il est orthogonal aux deux vecteurs directeurs non colinéaires $\vec{AB}$ et $\vec{AC}$ :
    \[
    \vec{n} \cdot \vec{AB} = 3 \times 1 + 1 \times 1 + 2 \times (-2) = 3 + 1 - 4 = 0
    \]
    \[
    \vec{n} \cdot \vec{AC} = 3 \times (-1) + 1 \times 1 + 2 \times 1 = -3 + 1 + 2 = 0
    \]
    Le vecteur $\vec{n}$ est orthogonal à $\vec{AB}$ et $\vec{AC}$, il est donc normal au plan $(ABC)$.
    
    L'équation du plan est de la forme :
    \[
    3x + y + 2z + d = 0
    \]
    Le point $A(1, 0, 1)$ appartient au plan, d'où :
    \[
    3(1) + 0 + 2(1) + d = 0 \iff 5 + d = 0 \iff d = -5
    \]
    L'équation cartésienne du plan $(ABC)$ est :
    \[
    3x + y + 2z - 5 = 0
    \]
\end{enumerate}

### Exercice 8 : Intersection droite-plan
\begin{enonce}
Déterminer l'intersection de la droite $D$ de représentation paramétrique :
\[
\begin{cases}
x = 1 + 2t \\
y = 2 - t \\
z = -1 + 3t
\end{cases} \quad (t \in \R)
\]
et du plan $\mathcal{P}$ d'équation cartésienne $2x + 3y - z - 5 = 0$.
\end{enonce}

\textbf{Solution :}
Un point $M(x, y, z)$ appartient à l'intersection de la droite $D$ et du plan $\mathcal{P}$ si ses coordonnées vérifient à la fois la représentation paramétrique de $D$ et l'équation de $\mathcal{P}$.
Injectons les expressions de $x$, $y$ et $z$ de la droite dans l'équation cartésienne du plan :
\[
2(1 + 2t) + 3(2 - t) - (-1 + 3t) - 5 = 0
\]
Développons et simplifions :
\[
2 + 4t + 6 - 3t + 1 - 3t - 5 = 0 \iff (4t - 3t - 3t) + (2 + 6 + 1 - 5) = 0 \iff -2t + 4 = 0 \iff t = 2
\]
Il existe une unique valeur de paramètre $t = 2$. La droite et le plan sont donc sécants en un unique point.
Calculons les coordonnées du point d'intersection en remplaçant $t$ par 2 dans la représentation paramétrique de $D$ :
\[
\begin{cases}
x = 1 + 2(2) = 5 \\
y = 2 - (2) = 0 \\
z = -1 + 3(2) = 5
\end{cases}
\]
L'intersection de la droite $D$ et du plan $\mathcal{P}$ est le point $I(5, 0, 5)$.

### Exercice 9 : Distance d'un point à un plan par projection
\begin{enonce}
Soit le plan $\mathcal{P}$ d'équation cartésienne $x - 2y + 2z - 3 = 0$ et le point $A(1, 2, 9)$.
\begin{enumerate}
    \item Déterminer une représentation paramétrique de la droite $D$ orthogonale au plan $\mathcal{P}$ passant par $A$.
    \item Déterminer les coordonnées du projeté orthogonal $H$ du point $A$ sur le plan $\mathcal{P}$.
    \item En déduire la distance $AH$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Le vecteur normal au plan $\mathcal{P}$ est $\vec{n}(1, -2, 2)$. La droite $D$ étant orthogonale à $\mathcal{P}$, elle admet $\vec{n}$ pour vecteur directeur. Comme elle passe par $A(1, 2, 9)$, sa représentation paramétrique est :
    \[
    \begin{cases}
    x = 1 + t \\
    y = 2 - 2t \\
    z = 9 + 2t
    \end{cases} \quad (t \in \R)
    \]
    
    \item Le projeté orthogonal $H$ de $A$ sur le plan $\mathcal{P}$ est le point d'intersection de la droite $D$ et du plan $\mathcal{P}$. Injectons les équations paramétriques de $D$ dans l'équation de $\mathcal{P}$ :
    \[
    (1 + t) - 2(2 - 2t) + 2(9 + 2t) - 3 = 0 \iff 1 + t - 4 + 4t + 18 + 4t - 3 = 0 \iff 9t + 12 = 0 \iff t = -\frac{4}{3}
    \]
    Remplaçons $t = -\frac{4}{3}$ dans la représentation paramétrique de $D$ pour trouver les coordonnées de $H$ :
    \[
    x_H = 1 - \frac{4}{3} = -\frac{1}{3}, \quad y_H = 2 - 2\left(-\frac{4}{3}\right) = \frac{14}{3}, \quad z_H = 9 + 2\left(-\frac{4}{3}\right) = \frac{19}{3}
    \]
    Le point de projection est $H\left(-\frac{1}{3}, \frac{14}{3}, \frac{19}{3}\right)$.
    
    \item La distance $AH$ is la norme du vecteur $\vec{AH}$. Puisque $H$ est sur la droite $D$, on a $\vec{AH} = t \vec{n}$ avec $t = -\frac{4}{3}$.
    \[
    AH = |t| \times \|\vec{n}\| = \left|-\frac{4}{3}\right| \times \sqrt{1^2 + (-2)^2 + 2^2} = \frac{4}{3} \times \sqrt{1 + 4 + 4} = \frac{4}{3} \times \sqrt{9} = \frac{4}{3} \times 3 = 4
    \]
    La distance du point $A$ au plan $\mathcal{P}$ est de 4 unités.
\end{enumerate}

### Exercice 10 : Projeté orthogonal d'un point sur une droite
\begin{enonce}
Soit la droite $D$ passant par le point $A(1, 1, 1)$ et de vecteur directeur $\vec{u}(2, 1, -1)$. On souhaite déterminer les coordonnées du projeté orthogonal $H$ du point $M(3, 4, 0)$ sur la droite $D$.
\end{enonce}

\textbf{Solution :}
Puisque $H$ appartient à la droite $D$, il existe un réel $t$ tel que ses coordonnées s'écrivent :
\[
H(1 + 2t, 1 + t, 1 - t)
\]
Le vecteur $\vec{MH}$ a pour coordonnées :
\[
\vec{MH} = \begin{pmatrix} (1 + 2t) - 3 \\ (1 + t) - 4 \\ (1 - t) - 0 \end{pmatrix} = \begin{pmatrix} 2t - 2 \\ t - 3 \\ 1 - t \end{pmatrix}
\]
Par définition, $H$ est le projeté orthogonal de $M$ sur $D$ si et seulement si le vecteur $\vec{MH}$ est orthogonal au vecteur directeur $\vec{u}$ de la droite, soit $\vec{MH} \cdot \vec{u} = 0$ :
\[
2(2t - 2) + 1(t - 3) - 1(1 - t) = 0 \iff 4t - 4 + t - 3 - 1 + t = 0 \iff 6t - 8 = 0 \iff t = \frac{4}{3}
\]
Déterminons les coordonnées de $H$ en remplaçant $t$ par $\frac{4}{3}$ :
\[
x_H = 1 + 2\left(\frac{4}{3}\right) = \frac{11}{3}, \quad y_H = 1 + \frac{4}{3} = \frac{7}{3}, \quad z_H = 1 - \frac{4}{3} = -\frac{1}{3}
\]
Le projeté orthogonal de $M$ sur $D$ est $H\left(\frac{11}{3}, \frac{7}{3}, -\frac{1}{3}\right)$.

### Exercice 11 : Calcul de produit vectoriel et aire de triangle
\begin{enonce}
Soient dans l'espace muni d'un repère orthonormé direct les points $A(1, 2, 0)$, $B(0, 1, 3)$ et $C(2, -1, 1)$.
\begin{enumerate}
    \item Calculer les coordonnées du produit vectoriel $\vec{AB} \wedge \vec{AC}$.
    \item En déduire l'aire du triangle $ABC$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Déterminons les coordonnées des vecteurs $\vec{AB}$ et $\vec{AC}$ :
    \[
    \vec{AB} = \begin{pmatrix} 0 - 1 \\ 1 - 2 \\ 3 - 0 \end{pmatrix} = \begin{pmatrix} -1 \\ -1 \\ 3 \end{pmatrix} \quad \text{et} \quad \vec{AC} = \begin{pmatrix} 2 - 1 \\ -1 - 2 \\ 1 - 0 \end{pmatrix} = \begin{pmatrix} 1 \\ -3 \\ 1 \end{pmatrix}
    \]
    Calculons le produit vectoriel :
    \[
    \vec{AB} \wedge \vec{AC} = \begin{pmatrix} (-1) \times 1 - 3 \times (-3) \\ 3 \times 1 - (-1) \times 1 \\ (-1) \times (-3) - (-1) \times 1 \end{pmatrix} = \begin{pmatrix} -1 + 9 \\ 3 + 1 \\ 3 + 1 \end{pmatrix} = \begin{pmatrix} 8 \\ 4 \\ 4 \end{pmatrix}
    \]
    
    \item L'aire du triangle $ABC$ est :
    \[
    \mathcal{A}(ABC) = \frac{1}{2} \|\vec{AB} \wedge \vec{AC}\| = \frac{1}{2} \sqrt{8^2 + 4^2 + 4^2} = \frac{1}{2} \sqrt{64 + 16 + 16} = \frac{1}{2} \sqrt{96}
    \]
    Puisque $96 = 16 \times 6$, on a $\sqrt{96} = 4\sqrt{6}$.
    D'où :
    \[
    \mathcal{A}(ABC) = \frac{1}{2} \times 4\sqrt{6} = 2\sqrt{6} \text{ unités d'aire}
    \]
\end{enumerate}

### Exercice 12 : Distance d'un point à une droite
\begin{enonce}
Soit la droite $D$ passant par $A(1, 0, 1)$ et dirigée par le vecteur $\vec{u}(1, 2, -1)$, et soit le point $M(2, 3, 4)$.
Calculer la distance du point $M$ à la droite $D$ en utilisant le produit vectoriel.
\end{enonce}

\textbf{Solution :}
1. Calculons les coordonnées du vecteur $\vec{AM}$ :
   \[
   \vec{AM} = \begin{pmatrix} 2 - 1 \\ 3 - 0 \\ 4 - 1 \end{pmatrix} = \begin{pmatrix} 1 \\ 3 \\ 3 \end{pmatrix}
   \]
2. Calculons le produit vectoriel $\vec{AM} \wedge \vec{u}$ :
   \[
   \vec{AM} \wedge \vec{u} = \begin{pmatrix} 1 \\ 3 \\ 3 \end{pmatrix} \wedge \begin{pmatrix} 1 \\ 2 \\ -1 \end{pmatrix} = \begin{pmatrix} 3 \times (-1) - 3 \times 2 \\ 3 \times 1 - 1 \times (-1) \\ 1 \times 2 - 3 \times 1 \end{pmatrix} = \begin{pmatrix} -3 - 6 \\ 3 + 1 \\ 2 - 3 \end{pmatrix} = \begin{pmatrix} -9 \\ 4 \\ -1 \end{pmatrix}
   \]
3. Calculons les normes nécessaires :
   - $\|\vec{AM} \wedge \vec{u}\| = \sqrt{(-9)^2 + 4^2 + (-1)^2} = \sqrt{81 + 16 + 1} = \sqrt{98} = 7\sqrt{2}$.
   - $\|\vec{u}\| = \sqrt{1^2 + 2^2 + (-1)^2} = \sqrt{1 + 4 + 1} = \sqrt{6}$.
4. La distance du point $M$ à la droite $D$ est :
   \[
   d(M, D) = \frac{\|\vec{AM} \wedge \vec{u}\|}{\|\vec{u}\|} = \frac{\sqrt{98}}{\sqrt{6}} = \sqrt{\frac{98}{6}} = \sqrt{\frac{49}{3}} = \frac{7}{\sqrt{3}} = \frac{7\sqrt{3}}{3} \text{ unités}
   \]

### Exercice 13 : Équation cartésienne d'une sphère
\begin{enonce}
Dans l'espace muni d'un repère orthonormé, on considère les points $A(2, 1, -3)$ et $B(4, -3, 1)$.
\begin{enumerate}
    \item Déterminer une équation cartésienne de la sphère $\mathcal{S}_1$ de centre $A$ et de rayon $R = 3$.
    \item Déterminer une équation cartésienne de la sphère $\mathcal{S}_2$ de diamètre $[AB]$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item La sphère $\mathcal{S}_1$ a pour centre $A(2, 1, -3)$ et pour rayon $R = 3$. Son équation cartésienne est :
    \[
    (x - 2)^2 + (y - 1)^2 + (z - (-3))^2 = 3^2 \iff (x - 2)^2 + (y - 1)^2 + (z + 3)^2 = 9
    \]
    En développant, on obtient :
    \[
    x^2 - 4x + 4 + y^2 - 2y + 1 + z^2 + 6z + 9 = 9 \iff x^2 + y^2 + z^2 - 4x - 2y + 6z + 5 = 0
    \]
    
    \item Soit $M(x, y, z)$ un point de la sphère $\mathcal{S}_2$ de diamètre $[AB]$. Elle est caractérisée par :
    \[
    \vec{MA} \cdot \vec{MB} = 0 \iff (x - x_A)(x - x_B) + (y - y_A)(y - y_B) + (z - z_A)(z - z_B) = 0
    \]
    Remplaçons par les coordonnées de $A(2, 1, -3)$ et $B(4, -3, 1)$ :
    \[
    (x - 2)(x - 4) + (y - 1)(y + 3) + (z + 3)(z - 1) = 0
    \]
    Développons chaque produit :
    \[
    (x^2 - 6x + 8) + (y^2 + 2y - 3) + (z^2 + 2z - 3) = 0 \iff x^2 + y^2 + z^2 - 6x + 2y + 2z + 2 = 0
    \]
    *Remarque (méthode alternative)* : Le centre $\Omega$ de la sphère est le milieu de $[AB]$, soit $\Omega\left(\frac{2+4}{2}, \frac{1-3}{2}, \frac{-3+1}{2}\right) = \Omega(3, -1, -1)$.
    Le rayon vaut $R = \frac{AB}{2} = \frac{\sqrt{(4-2)^2 + (-3-1)^2 + (1-(-3))^2}}{2} = \frac{\sqrt{4+16+16}}{2} = \frac{\sqrt{36}}{2} = 3$.
    L'équation est $(x - 3)^2 + (y + 1)^2 + (z + 1)^2 = 9 \iff x^2 + y^2 + z^2 - 6x + 2y + 2z + 2 = 0$, ce qui confirme notre résultat.
\end{enumerate}

### Exercice 14 : Intersection d'une sphère et d'un plan
\begin{enonce}
Soit la sphère $\mathcal{S}$ de centre $\Omega(1, -1, 2)$ et de rayon $R = 5$, et soit le plan $\mathcal{P}$ d'équation cartésienne :
\[
2x - y + 2z + 2 = 0
\]
\begin{enumerate}
    \item Calculer la distance $d$ du centre $\Omega$ au plan $\mathcal{P}$.
    \item En déduire que le plan $\mathcal{P}$ coupe la sphère $\mathcal{S}$ selon un cercle $\mathcal{C}$ dont on précisera le rayon $r$.
    \item Déterminer les coordonnées du centre $H$ du cercle $\mathcal{C}$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item La distance du point $\Omega(1, -1, 2)$ au plan $\mathcal{P}$ d'équation $2x - y + 2z + 2 = 0$ est :
    \[
    d = d(\Omega, \mathcal{P}) = \frac{|2x_\Omega - y_\Omega + 2z_\Omega + 2|}{\sqrt{2^2 + (-1)^2 + 2^2}} = \frac{|2(1) - (-1) + 2(2) + 2|}{\sqrt{4 + 1 + 4}} = \frac{|2 + 1 + 4 + 2|}{\sqrt{9}} = \frac{9}{3} = 3
    \]
    
    \item Puisque la distance $d = 3$ est strictement inférieure au rayon $R = 5$, le plan $\mathcal{P}$ coupe la sphère $\mathcal{S}$ selon un cercle $\mathcal{C}$.
    Le rayon $r$ de ce cercle est donné par :
    \[
    r = \sqrt{R^2 - d^2} = \sqrt{5^2 - 3^2} = \sqrt{25 - 9} = \sqrt{16} = 4
    \]
    
    \item Le centre $H$ du cercle $\mathcal{C}$ est le projeté orthogonal de $\Omega$ sur le plan $\mathcal{P}$.
    La droite $\mathcal{D}$ passant par $\Omega(1, -1, 2)$ et orthogonale au plan $\mathcal{P}$ a pour vecteur directeur le vecteur normal au plan $\vec{n}(2, -1, 2)$.
    Une représentation paramétrique de cette droite $\mathcal{D}$ est :
    \[
    \begin{cases}
    x = 1 + 2t \\
    y = -1 - t \\
    z = 2 + 2t
    \end{cases} \quad (t \in \R)
    \]
    Le point $H$ appartient à cette droite et au plan $\mathcal{P}$. Injectons ces coordonnées paramétriques dans l'équation du plan $\mathcal{P}$ :
    \[
    \begin{aligned}
    2(1 + 2t) - (-1 - t) + 2(2 + 2t) + 2 = 0 &\iff 2 + 4t + 1 + t + 4 + 4t + 2 = 0 \\
    &\iff 9t + 9 = 0 \iff t = -1
    \end{aligned}
    \]
    Remplaçons $t = -1$ dans la représentation paramétrique de la droite pour obtenir les coordonnées du centre $H$ :
    \[
    \begin{cases}
    x_H = 1 + 2(-1) = -1 \\
    y_H = -1 - (-1) = 0 \\
    z_H = 2 + 2(-1) = 0
    \end{cases}
    \]
    Le centre du cercle d'intersection est donc $H(-1, 0, 0)$.
\end{enumerate}
