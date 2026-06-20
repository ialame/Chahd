### Problème 1 : Intersection de deux plans et d'une droite
\begin{enonce}
On se place dans l'espace muni d'un repère orthonormé. On considère les plans $\mathcal{P}_1$ d'équation cartésienne $x - y + z - 2 = 0$ et $\mathcal{P}_2$ d'équation cartésienne $2x + y - z - 1 = 0$.
\begin{enumerate}
    \item Démontrer que les plans $\mathcal{P}_1$ et $\mathcal{P}_2$ se coupent selon une droite $\Delta$.
    \item Déterminer une représentation paramétrique de la droite $\Delta$.
    \item On considère le plan $\mathcal{P}_3$ d'équation cartésienne $x + 2y - z - 3 = 0$. Déterminer l'intersection $\mathcal{P}_1 \cap \mathcal{P}_2 \cap \mathcal{P}_3$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Les vecteurs normaux respectifs des plans $\mathcal{P}_1$ et $\mathcal{P}_2$ sont $\vec{n}_1(1, -1, 1)$ et $\vec{n}_2(2, 1, -1)$.
    Leurs coordonnées ne sont pas proportionnelles (par exemple, $\frac{2}{1} = 2$ pour l'abscisse mais $\frac{1}{-1} = -1$ pour l'ordonnée). Les vecteurs normaux ne sont pas colinéaires, ce qui signifie que les deux plans ne sont pas parallèles. Ils se coupent donc selon une droite $\Delta$.
    
    \item Un point $M(x, y, z)$ appartient à la droite $\Delta$ si et seulement si ses coordonnées vérifient le système formé par les équations des deux plans :
    \[
    \begin{cases}
    x - y + z - 2 = 0 \quad (1) \\
    2x + y - z - 1 = 0 \quad (2)
    \end{cases}
    \]
    Sommons les équations (1) et (2) membre à membre :
    \[
    (x + 2x) + (-y + y) + (z - z) - 2 - 1 = 0 \iff 3x - 3 = 0 \iff x = 1
    \]
    En remplaçant $x$ par 1 dans l'équation (1) :
    \[
    1 - y + z - 2 = 0 \iff y = z - 1
    \]
    Posons $z = t$ comme paramètre réel ($t \in \R$). On obtient la représentation paramétrique :
    \[
    \begin{cases}
    x = 1 \\
    y = -1 + t \\
    z = t
    \end{cases} \quad (t \in \R)
    \]
    
    \item L'intersection $\mathcal{P}_1 \cap \mathcal{P}_2 \cap \mathcal{P}_3$ est l'intersection de la droite $\Delta = \mathcal{P}_1 \cap \mathcal{P}_2$ avec le plan $\mathcal{P}_3$.
    Injectons les expressions de $x$, $y$ et $z$ de la droite $\Delta$ dans l'équation de $\mathcal{P}_3$ :
    \[
    (1) + 2(-1 + t) - t - 3 = 0 \iff 1 - 2 + 2t - t - 3 = 0 \iff t - 4 = 0 \iff t = 4
    \]
    La valeur du paramètre est $t = 4$. L'intersection est donc un point unique $S$.
    Calculons ses coordonnées :
    \[
    x_S = 1, \quad y_S = -1 + 4 = 3, \quad z_S = 4
    \]
    L'intersection des trois plans est le point $S(1, 3, 4)$.
\end{enumerate}

### Problème 2 : Tétraèdre régulier et produit scalaire
\begin{enonce}
Soit $ABCD$ un tétraèdre régulier d'arête $a > 0$ (toutes ses faces sont des triangles équilatéraux de côté $a$). On note $I$ le milieu du segment $[AB]$ et $J$ le milieu du segment $[CD]$.
\begin{enumerate}
    \item Démontrer que le vecteur $\vec{IJ}$ est orthogonal aux vecteurs $\vec{AB}$ et $\vec{CD}$.
    \item Calculer le produit scalaire $\vec{AB} \cdot \vec{AC}$ en fonction de $a$.
    \item Soit $H$ le projeté orthogonal du point $D$ sur le plan $(ABC)$. Rappeler pourquoi $H$ est le centre de gravité du triangle $ABC$ et exprimer la longueur de la hauteur $DH$ du tétraèdre en fonction de $a$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Exprimons le vecteur $\vec{IJ}$ en utilisant la relation de Chasles par deux chemins différents :
    \[
    \vec{IJ} = \vec{IA} + \vec{AC} + \vec{CJ}
    \]
    \[
    \vec{IJ} = \vec{IB} + \vec{BD} + \vec{DJ}
    \]
    Sommons ces deux égalités :
    \[
    2\vec{IJ} = (\vec{IA} + \vec{IB}) + (\vec{AC} + \vec{BD}) + (\vec{CJ} + \vec{DJ})
    \]
    Comme $I$ est le milieu de $[AB]$, on a $\vec{IA} + \vec{IB} = \vec{0}$.
    Comme $J$ est le milieu de $[CD]$, on a $\vec{CJ} + \vec{DJ} = \vec{0}$.
    Il reste :
    \[
    2\vec{IJ} = \vec{AC} + \vec{BD} \implies \vec{IJ} = \frac{1}{2}(\vec{AC} + \vec{BD})
    \]
    Calculons le produit scalaire avec $\vec{AB}$ :
    \[
    2\vec{IJ} \cdot \vec{AB} = (\vec{AC} + \vec{BD}) \cdot \vec{AB} = \vec{AC} \cdot \vec{AB} + \vec{BD} \cdot \vec{AB}
    \]
    Les triangles $ABC$ et $ABD$ étant équilatéraux de côté $a$ :
    - $\vec{AC} \cdot \vec{AB} = AC \times AB \times \cos(\frac{\pi}{3}) = a \times a \times \frac{1}{2} = \frac{1}{2}a^2$.
    - $\vec{BD} \cdot \vec{AB} = -\vec{DB} \cdot \vec{AB} = -\vec{BD} \cdot \vec{BA} = -BD \times BA \times \cos(\frac{\pi}{3}) = -a \times a \times \frac{1}{2} = -\frac{1}{2}a^2$.
    Ainsi, $2\vec{IJ} \cdot \vec{AB} = \frac{1}{2}a^2 - \frac{1}{2}a^2 = 0$, donc $\vec{IJ}$ est orthogonal à $\vec{AB}$.
    
    Par symétrie de la configuration géométrique, le même calcul montre que $\vec{IJ}$ est orthogonal à $\vec{CD}$.
    
    \item Le triangle $ABC$ est équilatéral de côté $a$, l'angle en $A$ vaut $60^\circ$ (ou $\frac{\pi}{3}$ radians). Le produit scalaire est :
    \[
    \vec{AB} \cdot \vec{AC} = \|\vec{AB}\| \times \|\vec{AC}\| \times \cos(\widehat{BAC}) = a \times a \times \cos\left(\frac{\pi}{3}\right) = \frac{1}{2}a^2
    \]
    
    \item Par raison de symétrie du tétraèdre régulier, les distances de $D$ aux trois sommets $A$, $B$ et $C$ sont égales. Par conséquent, son projeté orthogonal $H$ sur le plan $(ABC)$ est équidistant de $A$, $B$ et $C$. Dans un triangle équilatéral, le seul point équidistant des trois sommets est son centre de gravité.
    
    Exprimons les longueurs :
    Dans le triangle équilatéral $ABC$ de côté $a$, la longueur d'une médiane (qui est aussi hauteur) est $m = a \frac{\sqrt{3}}{2}$.
    Le centre de gravité $H$ est situé aux deux tiers de chaque médiane en partant du sommet. La distance $AH$ vaut :
    \[
    AH = \frac{2}{3} m = \frac{2}{3} \times a \frac{\sqrt{3}}{2} = \frac{a\sqrt{3}}{3}
    \]
    Le triangle $AHD$ est rectangle en $H$ car $(DH)$ est orthogonale au plan $(ABC)$. D'après le théorème de Pythagore dans ce triangle :
    \[
    AD^2 = AH^2 + DH^2 \iff a^2 = \left(\frac{a\sqrt{3}}{3}\right)^2 + DH^2 \iff a^2 = \frac{3a^2}{9} + DH^2 \iff a^2 = \frac{a^2}{3} + DH^2
    \]
    On en déduit :
    \[
    DH^2 = a^2 - \frac{a^2}{3} = \frac{2}{3}a^2 \implies DH = a \sqrt{\frac{2}{3}} = a\frac{\sqrt{6}}{3}
    \]
    La hauteur d'un tétraèdre régulier de côté $a$ vaut donc $a\frac{\sqrt{6}}{3}$.
\end{enumerate}

### Problème 3 : Étude géométrique d'un cube et coordonnées
\begin{enonce}
Dans l'espace muni d'un repère orthonormé $(O; \vec{\imath}, \vec{\jmath}, \vec{k})$, on considère le cube $OABCDEFG$ de côté 1 tel que $O(0,0,0)$, $A(1,0,0)$, $C(0,1,0)$ et $D(0,0,1)$.
Les sommets restants sont $B(1,1,0)$, $E(1,0,1)$, $F(1,1,1)$ et $G(0,1,1)$.
\begin{enumerate}
    \item Dessiner mentalement le repère. Justifier que $\vec{OF}$ a pour coordonnées $\begin{pmatrix} 1 \\ 1 \\ 1 \end{pmatrix}$.
    \item Soit le plan $(BGE)$. Calculer les coordonnées des vecteurs $\vec{BG}$ et $\vec{BE}$.
    \item Montrer que la grande diagonale $(OF)$ du cube est orthogonale au plan $(BGE)$.
    \item Déterminer une équation cartésienne du plan $(BGE)$.
    \item Soit $H$ le projeté orthogonal de $O$ sur le plan $(BGE)$. Déterminer les coordonnées de $H$ et en déduire la distance de l'origine au plan $(BGE)$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item $O$ est l'origine du repère orthonormé, et $F$ est le sommet opposé du cube. Ses coordonnées sont $F(1, 1, 1)$. Par conséquent, le vecteur diagonal $\vec{OF}$ a pour coordonnées :
    \[
    \vec{OF} = \begin{pmatrix} 1 \\ 1 \\ 1 \end{pmatrix}
    \]
    
    \item Déterminons les coordonnées des vecteurs :
    \[
    \vec{BG} = \begin{pmatrix} x_G-x_B \\ y_G-y_B \\ z_G-z_B \end{pmatrix} = \begin{pmatrix} 0-1 \\ 1-1 \\ 1-0 \end{pmatrix} = \begin{pmatrix} -1 \\ 0 \\ 1 \end{pmatrix}
    \]
    \[
    \vec{BE} = \begin{pmatrix} x_E-x_B \\ y_E-y_B \\ z_E-z_B \end{pmatrix} = \begin{pmatrix} 1-1 \\ 0-1 \\ 1-0 \end{pmatrix} = \begin{pmatrix} 0 \\ -1 \\ 1 \end{pmatrix}
    \]
    
    \item La droite $(OF)$ est orthogonale au plan $(BGE)$ si son vecteur directeur $\vec{OF}$ est orthogonal aux deux vecteurs directeurs non colinéaires $\vec{BG}$ et $\vec{BE}$ du plan. Calculons les produits scalaires :
    \[
    \vec{OF} \cdot \vec{BG} = 1 \times (-1) + 1 \times 0 + 1 \times 1 = -1 + 0 + 1 = 0
    \]
    \[
    \vec{OF} \cdot \vec{BE} = 1 \times 0 + 1 \times (-1) + 1 \times 1 = 0 - 1 + 1 = 0
    \]
    Les produits scalaires étant nuls, le vecteur $\vec{OF}$ est orthogonal à deux vecteurs directeurs sécants du plan. Par conséquent, la droite $(OF)$ est orthogonale au plan $(BGE)$.
    
    \item Puisque $(OF)$ est orthogonale au plan $(BGE)$, le vecteur $\vec{OF}(1, 1, 1)$ est un vecteur normal au plan $(BGE)$. L'équation du plan est donc de la forme :
    \[
    x + y + z + d = 0
    \]
    Le point $B(1, 1, 0)$ appartient à ce plan, ce qui donne :
    \[
    1 + 1 + 0 + d = 0 \iff 2 + d = 0 \iff d = -2
    \]
    Une équation cartésienne du plan $(BGE)$ est :
    \[
    x + y + z - 2 = 0
    \]
    
    \item Le projeté orthogonal $H$ de $O(0,0,0)$ sur le plan $(BGE)$ appartient à la fois au plan et à la droite $(OF)$ passant par $O$ et dirigée par le vecteur normal $\vec{OF}(1,1,1)$.
    La droite $(OF)$ a pour représentation paramétrique $x = t, y = t, z = t$ ($t \in \R$).
    Injectons cela dans l'équation cartésienne du plan :
    \[
    t + t + t - 2 = 0 \iff 3t = 2 \iff t = \frac{2}{3}
    \]
    Les coordonnées de $H$ sont donc $H\left(\frac{2}{3}, \frac{2}{3}, \frac{2}{3}\right)$.
    La distance de l'origine au plan est $OH$ :
    \[
    OH = \sqrt{\left(\frac{2}{3}\right)^2 + \left(\frac{2}{3}\right)^2 + \left(\frac{2}{3}\right)^2} = \sqrt{\frac{4}{9} + \frac{4}{9} + \frac{4}{9}} = \sqrt{\frac{12}{9}} = \frac{\sqrt{12}}{3} = \frac{2\sqrt{3}}{3} \text{ unités}
    \]
\end{enumerate}

### Problème 4 : Distance minimale d'un point à une droite et optimisation
\begin{enonce}
On considère, dans un repère orthonormé de l'espace, la droite $D$ de représentation paramétrique :
\[
\begin{cases}
x = t \\
y = 2t \\
z = 1 - t
\end{cases} \quad (t \in \R)
\]
et deux points fixes $A(1, 1, 1)$ et $B(3, 5, 2)$. On cherche à trouver un point $M$ sur la droite $D$ tel que la somme des carrés des distances de $M$ à $A$ et à $B$ soit minimale.
\begin{enumerate}
    \item Soit $M(t)$ un point de la droite $D$ associé au paramètre $t$. Exprimer $AM^2$ et $BM^2$ en fonction de $t$.
    \item En déduire l'expression de la fonction $f(t) = AM^2 + BM^2$.
    \item Déterminer la valeur $t_0$ pour laquelle la fonction $f$ atteint son minimum.
    \item Donner les coordonnées du point $M_0$ correspondant à ce minimum et calculer la valeur minimale de la fonction $f$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Les coordonnées de $M$ sont $M(t, 2t, 1-t)$.
    Calculons le carré de la distance $AM$ :
    \[
    \begin{aligned}
    AM^2 &= (t - 1)^2 + (2t - 1)^2 + (1 - t - 1)^2 \\
    &= (t^2 - 2t + 1) + (4t^2 - 4t + 1) + t^2 \\
    &= 6t^2 - 6t + 2
    \end{aligned}
    \]
    Calculons de même le carré de la distance $BM$ :
    \[
    \begin{aligned}
    BM^2 &= (t - 3)^2 + (2t - 5)^2 + (1 - t - 2)^2 \\
    &= (t^2 - 6t + 9) + (4t^2 - 20t + 25) + (-t-1)^2 \\
    &= t^2 - 6t + 9 + 4t^2 - 20t + 25 + t^2 + 2t + 1 \\
    &= 6t^2 - 24t + 35
    \end{aligned}
    \]
    
    \item La somme des carrés s'écrit :
    \[
    f(t) = AM^2 + BM^2 = (6t^2 - 6t + 2) + (6t^2 - 24t + 35) = 12t^2 - 30t + 37
    \]
    
    \item La fonction $f(t)$ est une fonction polynomiale du second degré de la forme $at^2 + bt + c$ avec $a = 12$, $b = -30$ et $c = 37$.
    Comme $a = 12 > 0$, la fonction admet un unique minimum global atteint en :
    \[
    t_0 = -\frac{b}{2a} = -\frac{-30}{2 \times 12} = \frac{30}{24} = \frac{5}{4} = 1,25
    \]
    
    \item Pour $t = 1,25$, les coordonnées du point $M_0$ minimisant la somme sont :
    \[
    x_{M_0} = 1,25, \quad y_{M_0} = 2 \times 1,25 = 2,5, \quad z_{M_0} = 1 - 1,25 = -0,25
    \]
    Le point cherché est $M_0(1,25; 2,5; -0,25)$.
    
    Calculons le minimum de la fonction $f$ :
    \[
    f\left(\frac{5}{4}\right) = 12\left(\frac{5}{4}\right)^2 - 30\left(\frac{5}{4}\right) + 37 = 12 \times \frac{25}{16} - \frac{150}{4} + 37 = \frac{75}{4} - \frac{150}{4} + \frac{148}{4} = \frac{73}{4} = 18,25
    \]
    La somme minimale des carrés des distances est égale à $18,25$.
\end{enumerate}

### Problème 5 : Positions relatives et angle formé par deux plans
\begin{enonce}
On considère les deux plans $\mathcal{P}_1$ d'équation cartésienne $x + y - 2z + 1 = 0$ et $\mathcal{P}_2$ d'équation cartésienne $2x - y + z - 3 = 0$.
\begin{enumerate}
    \item Démontrer que $\mathcal{P}_1$ et $\mathcal{P}_2$ sont sécants et déterminer une représentation paramétrique de leur droite d'intersection $D$.
    \item Calculer le cosinus de l'angle aigu $\theta$ formé par les deux plans (qui correspond à l'angle entre leurs vecteurs normaux).
    \item Soit le point $A(1, 2, 3)$. Calculer la distance du point $A$ au plan $\mathcal{P}_1$ et démontrer que $A$ appartient au plan $\mathcal{P}_2$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Les vecteurs normaux des plans $\mathcal{P}_1$ et $\mathcal{P}_2$ sont $\vec{n}_1(1, 1, -2)$ et $\vec{n}_2(2, -1, 1)$.
    Leurs coordonnées ne sont pas proportionnelles. Les plans ne sont donc pas parallèles : ils se coupent selon une droite $D$.
    
    Un point $M(x,y,z)$ est sur la droite $D$ si et seulement si ses coordonnées satisfont le système :
    \[
    \begin{cases}
    x + y - 2z + 1 = 0 \quad (1) \\
    2x - y + z - 3 = 0 \quad (2)
    \end{cases}
    \]
    Sommons les deux équations (1) et (2) :
    \[
    3x - z - 2 = 0 \implies z = 3x - 2
    \]
    Remplaçons $z$ par $3x - 2$ dans l'équation (1) :
    \[
    x + y - 2(3x - 2) + 1 = 0 \iff x + y - 6x + 4 + 1 = 0 \iff y = 5x - 5
    \]
    En prenant l'abscisse $x = t$ ($t \in \R$) comme paramètre, on obtient la représentation paramétrique de la droite d'intersection $D$ :
    \[
    \begin{cases}
    x = t \\
    y = -5 + 5t \\
    z = -2 + 3t
    \end{cases} \quad (t \in \R)
    \]
    
    \item Le cosinus de l'angle aigu $\theta$ formé par les deux plans est l'angle aigu formé par leurs vecteurs normaux $\vec{n}_1$ et $\vec{n}_2$. Le produit scalaire est lié à l'angle par la relation :
    \[
    |\vec{n}_1 \cdot \vec{n}_2| = \|\vec{n}_1\| \times \|\vec{n}_2\| \times \cos(\theta) \implies \cos(\theta) = \frac{|\vec{n}_1 \cdot \vec{n}_2|}{\|\vec{n}_1\| \times \|\vec{n}_2\|}
    \]
    Calculons chaque élément :
    - $\vec{n}_1 \cdot \vec{n}_2 = 1 \times 2 + 1 \times (-1) + (-2) \times 1 = 2 - 1 - 2 = -1 \implies |\vec{n}_1 \cdot \vec{n}_2| = 1$.
    - $\|\vec{n}_1\| = \sqrt{1^2 + 1^2 + (-2)^2} = \sqrt{6}$.
    - $\|\vec{n}_2\| = \sqrt{2^2 + (-1)^2 + 1^2} = \sqrt{6}$.
    Par conséquent :
    \[
    \cos(\theta) = \frac{1}{\sqrt{6} \times \sqrt{6}} = \frac{1}{6} \approx 0,167
    \]
    L'angle aigu $\theta$ entre les plans vaut environ $\arccos(1/6) \approx 80,4^\circ$.
    
    \item - La distance du point $A(1, 2, 3)$ au plan $\mathcal{P}_1$ d'équation $x + y - 2z + 1 = 0$ est donnée par la formule :
    \[
    d(A, \mathcal{P}_1) = \frac{|x_A + y_A - 2z_A + 1|}{\sqrt{1^2 + 1^2 + (-2)^2}} = \frac{|1 + 2 - 2(3) + 1|}{\sqrt{6}} = \frac{|4 - 6|}{\sqrt{6}} = \frac{2}{\sqrt{6}} = \frac{\sqrt{6}}{3} \text{ unités}
    \]
    - Injectons les coordonnées de $A(1, 2, 3)$ dans l'équation cartésienne du plan $\mathcal{P}_2$ d'équation $2x - y + z - 3 = 0$ :
    \[
    2(1) - (2) + (3) - 3 = 2 - 2 + 3 - 3 = 0
    \]
    Le résultat étant égal à 0, le point $A$ appartient au plan $\mathcal{P}_2$.
\end{enumerate}
