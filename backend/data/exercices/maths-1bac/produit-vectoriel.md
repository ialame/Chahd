### Exercice 1 : Calcul de produits vectoriels
\begin{enonce}
On se place dans un repère orthonormé direct $(O,\vec{\imath},\vec{\jmath},\vec{k})$.
\begin{enumerate}
    \item On donne $\vec{u}(2,-1,3)$ et $\vec{v}(1,0,-2)$. Calculer $\vec{u}\wedge\vec{v}$, puis vérifier que ce vecteur est orthogonal à $\vec{u}$ et à $\vec{v}$.
    \item Calculer $\|\vec{u}\wedge\vec{v}\|$.
    \item On donne $\vec{a}(1,2,-1)$ et $\vec{b}(-2,-4,2)$. Calculer $\vec{a}\wedge\vec{b}$ et en déduire la position relative de $\vec{a}$ et $\vec{b}$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item On applique la formule des coordonnées :
$$\vec{u}\wedge\vec{v}=\begin{pmatrix} (-1)\cdot(-2)-3\cdot 0 \\ 3\cdot 1-2\cdot(-2) \\ 2\cdot 0-(-1)\cdot 1 \end{pmatrix}=\begin{pmatrix} 2 \\ 7 \\ 1 \end{pmatrix}.$$
On vérifie l'orthogonalité par le produit scalaire : $\vec{u}\cdot(\vec{u}\wedge\vec{v})=2\cdot 2+(-1)\cdot 7+3\cdot 1=0$ et $\vec{v}\cdot(\vec{u}\wedge\vec{v})=1\cdot 2+0\cdot 7+(-2)\cdot 1=0$. Le produit vectoriel est bien orthogonal aux deux vecteurs.
    \item $\|\vec{u}\wedge\vec{v}\|=\sqrt{2^2+7^2+1^2}=\sqrt{4+49+1}=\sqrt{54}=3\sqrt{6}$.
    \item On calcule :
$$\vec{a}\wedge\vec{b}=\begin{pmatrix} 2\cdot 2-(-1)\cdot(-4) \\ (-1)\cdot(-2)-1\cdot 2 \\ 1\cdot(-4)-2\cdot(-2) \end{pmatrix}=\begin{pmatrix} 0 \\ 0 \\ 0 \end{pmatrix}=\vec{0}.$$
Le produit vectoriel est nul, donc $\vec{a}$ et $\vec{b}$ sont **colinéaires** (on a d'ailleurs $\vec{b}=-2\,\vec{a}$).
\end{enumerate}

### Exercice 2 : Utiliser les propriétés
\begin{enonce}
Soient $\vec{u}$ et $\vec{v}$ deux vecteurs de l'espace tels que $\vec{u}\wedge\vec{v}=(3,-1,2)$. Sans déterminer $\vec{u}$ ni $\vec{v}$, calculer :
\begin{enumerate}
    \item $\vec{v}\wedge\vec{u}$ ;
    \item $(2\vec{u})\wedge(3\vec{v})$ ;
    \item $\vec{u}\wedge(\vec{u}+\vec{v})$ ;
    \item $(\vec{u}-\vec{v})\wedge(\vec{u}+\vec{v})$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Par antisymétrie, $\vec{v}\wedge\vec{u}=-(\vec{u}\wedge\vec{v})=(-3,1,-2)$.
    \item Par bilinéarité, $(2\vec{u})\wedge(3\vec{v})=6\,(\vec{u}\wedge\vec{v})=(18,-6,12)$.
    \item On développe : $\vec{u}\wedge(\vec{u}+\vec{v})=\underbrace{\vec{u}\wedge\vec{u}}_{=\vec{0}}+\vec{u}\wedge\vec{v}=(3,-1,2)$.
    \item On développe en tenant compte de $\vec{u}\wedge\vec{u}=\vec{v}\wedge\vec{v}=\vec{0}$ et $\vec{v}\wedge\vec{u}=-\vec{u}\wedge\vec{v}$ :
$$(\vec{u}-\vec{v})\wedge(\vec{u}+\vec{v})=\vec{u}\wedge\vec{v}-\vec{v}\wedge\vec{u}=2\,(\vec{u}\wedge\vec{v})=(6,-2,4).$$
\end{enumerate}

### Exercice 3 : Aire d'un triangle et d'un parallélogramme
\begin{enonce}
On considère les points $A(1,1,0)$, $B(3,2,1)$ et $C(2,0,2)$.
\begin{enumerate}
    \item Déterminer les coordonnées de $\overrightarrow{AB}$ et $\overrightarrow{AC}$, puis calculer $\overrightarrow{AB}\wedge\overrightarrow{AC}$.
    \item En déduire l'aire du triangle $ABC$.
    \item En déduire l'aire du parallélogramme construit sur $\overrightarrow{AB}$ et $\overrightarrow{AC}$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item $\overrightarrow{AB}(2,1,1)$ et $\overrightarrow{AC}(1,-1,2)$. Alors :
$$\overrightarrow{AB}\wedge\overrightarrow{AC}=\begin{pmatrix} 1\cdot 2-1\cdot(-1) \\ 1\cdot 1-2\cdot 2 \\ 2\cdot(-1)-1\cdot 1 \end{pmatrix}=\begin{pmatrix} 3 \\ -3 \\ -3 \end{pmatrix}.$$
    \item Sa norme vaut $\|\overrightarrow{AB}\wedge\overrightarrow{AC}\|=\sqrt{3^2+(-3)^2+(-3)^2}=\sqrt{27}=3\sqrt{3}$. L'aire du triangle est la moitié :
$$\mathcal{A}_{ABC}=\frac{1}{2}\times 3\sqrt{3}=\frac{3\sqrt{3}}{2}.$$
    \item L'aire du parallélogramme est égale à la norme du produit vectoriel, soit $3\sqrt{3}$ (le double de l'aire du triangle).
\end{enumerate}

### Exercice 4 : Distance d'un point à une droite
\begin{enonce}
Soit $(D)$ la droite passant par le point $A(1,0,1)$ et de vecteur directeur $\vec{u}(2,1,-2)$. On considère le point $M(3,2,0)$.
\begin{enumerate}
    \item Calculer $\overrightarrow{AM}\wedge\vec{u}$.
    \item En déduire la distance du point $M$ à la droite $(D)$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item $\overrightarrow{AM}(2,2,-1)$, donc :
$$\overrightarrow{AM}\wedge\vec{u}=\begin{pmatrix} 2\cdot(-2)-(-1)\cdot 1 \\ (-1)\cdot 2-2\cdot(-2) \\ 2\cdot 1-2\cdot 2 \end{pmatrix}=\begin{pmatrix} -3 \\ 2 \\ -2 \end{pmatrix}.$$
    \item On applique la formule $d(M,(D))=\dfrac{\|\overrightarrow{AM}\wedge\vec{u}\|}{\|\vec{u}\|}$. Or $\|\overrightarrow{AM}\wedge\vec{u}\|=\sqrt{9+4+4}=\sqrt{17}$ et $\|\vec{u}\|=\sqrt{4+1+4}=3$. Donc :
$$d(M,(D))=\frac{\sqrt{17}}{3}.$$
\end{enumerate}

### Exercice 5 : Équation cartésienne d'un plan
\begin{enonce}
On considère les points $A(1,0,0)$, $B(0,2,0)$ et $C(0,0,3)$.
\begin{enumerate}
    \item Justifier que ces trois points déterminent un plan, puis calculer un vecteur normal $\vec{n}=\overrightarrow{AB}\wedge\overrightarrow{AC}$.
    \item En déduire une équation cartésienne du plan $(ABC)$.
    \item Vérifier que $B$ et $C$ appartiennent au plan trouvé.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item $\overrightarrow{AB}(-1,2,0)$ et $\overrightarrow{AC}(-1,0,3)$. Ces vecteurs ne sont pas colinéaires, donc $A$, $B$, $C$ ne sont pas alignés et définissent un plan. On calcule :
$$\vec{n}=\overrightarrow{AB}\wedge\overrightarrow{AC}=\begin{pmatrix} 2\cdot 3-0\cdot 0 \\ 0\cdot(-1)-(-1)\cdot 3 \\ (-1)\cdot 0-2\cdot(-1) \end{pmatrix}=\begin{pmatrix} 6 \\ 3 \\ 2 \end{pmatrix}.$$
    \item Le plan a une équation de la forme $6x+3y+2z+d=0$. Comme $A(1,0,0)$ y appartient : $6+d=0$, donc $d=-6$. Une équation est :
$$6x+3y+2z-6=0.$$
    \item Pour $B(0,2,0)$ : $0+6+0-6=0$ ✓. Pour $C(0,0,3)$ : $0+0+6-6=0$ ✓. Les deux points appartiennent bien au plan.
\end{enumerate}

### Exercice 6 : Produit mixte, coplanarité et volume
\begin{enonce}
On considère les points $A(1,0,1)$, $B(2,1,0)$, $C(0,1,2)$ et $D(3,2,1)$.
\begin{enumerate}
    \item Calculer $\overrightarrow{AB}\wedge\overrightarrow{AC}$, puis le produit mixte $(\overrightarrow{AB}\wedge\overrightarrow{AC})\cdot\overrightarrow{AD}$.
    \item Les points $A$, $B$, $C$, $D$ sont-ils coplanaires ?
    \item Calculer le volume du tétraèdre $ABCD$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item $\overrightarrow{AB}(1,1,-1)$, $\overrightarrow{AC}(-1,1,1)$ et $\overrightarrow{AD}(2,2,0)$. On a :
$$\overrightarrow{AB}\wedge\overrightarrow{AC}=\begin{pmatrix} 1\cdot 1-(-1)\cdot 1 \\ (-1)\cdot(-1)-1\cdot 1 \\ 1\cdot 1-1\cdot(-1) \end{pmatrix}=\begin{pmatrix} 2 \\ 0 \\ 2 \end{pmatrix},$$
puis le produit mixte $(\overrightarrow{AB}\wedge\overrightarrow{AC})\cdot\overrightarrow{AD}=2\cdot 2+0\cdot 2+2\cdot 0=4$.
    \item Le produit mixte vaut $4\neq 0$, donc les quatre points **ne sont pas coplanaires**.
    \item Le volume du tétraèdre est le sixième de la valeur absolue du produit mixte :
$$\mathcal{V}_{ABCD}=\frac{1}{6}\,\big|4\big|=\frac{2}{3}.$$
\end{enumerate}
