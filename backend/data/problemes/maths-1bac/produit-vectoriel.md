### Problème 1 : Aire, plan et distance dans un triangle
\begin{enonce}
Dans un repère orthonormé direct, on considère les points $A(1,1,1)$, $B(3,1,2)$ et $C(2,3,1)$.
\begin{enumerate}
    \item Calculer $\overrightarrow{AB}\wedge\overrightarrow{AC}$.
    \item En déduire l'aire du triangle $ABC$.
    \item Déterminer une équation cartésienne du plan $(ABC)$.
    \item Calculer la distance du point $A$ à la droite $(BC)$, et vérifier la cohérence du résultat avec l'aire trouvée à la question 2.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item $\overrightarrow{AB}(2,0,1)$ et $\overrightarrow{AC}(1,2,0)$. Alors :
$$\overrightarrow{AB}\wedge\overrightarrow{AC}=\begin{pmatrix} 0\cdot 0-1\cdot 2 \\ 1\cdot 1-2\cdot 0 \\ 2\cdot 2-0\cdot 1 \end{pmatrix}=\begin{pmatrix} -2 \\ 1 \\ 4 \end{pmatrix}.$$
    \item Sa norme vaut $\sqrt{(-2)^2+1^2+4^2}=\sqrt{4+1+16}=\sqrt{21}$. L'aire du triangle est donc :
$$\mathcal{A}_{ABC}=\frac{1}{2}\sqrt{21}.$$
    \item Le vecteur $\vec{n}(-2,1,4)$ est normal au plan, qui a une équation $-2x+y+4z+d=0$. Comme $A(1,1,1)$ y appartient : $-2+1+4+d=0$, donc $d=-3$. Une équation est :
$$-2x+y+4z-3=0,\quad\text{soit}\quad 2x-y-4z+3=0.$$
On vérifie avec $B$ : $6-1-8+3=0$ ✓ et $C$ : $4-3-4+3=0$ ✓.
    \item La droite $(BC)$ passe par $B$ et a pour vecteur directeur $\overrightarrow{BC}(-1,2,-1)$, avec $\|\overrightarrow{BC}\|=\sqrt{1+4+1}=\sqrt{6}$. On a $\overrightarrow{BA}(-2,0,-1)$, donc :
$$\overrightarrow{BA}\wedge\overrightarrow{BC}=\begin{pmatrix} 0\cdot(-1)-(-1)\cdot 2 \\ (-1)\cdot(-1)-(-2)\cdot(-1) \\ (-2)\cdot 2-0\cdot(-1) \end{pmatrix}=\begin{pmatrix} 2 \\ -1 \\ -4 \end{pmatrix},$$
de norme $\sqrt{4+1+16}=\sqrt{21}$. D'où :
$$d(A,(BC))=\frac{\|\overrightarrow{BA}\wedge\overrightarrow{BC}\|}{\|\overrightarrow{BC}\|}=\frac{\sqrt{21}}{\sqrt{6}}=\sqrt{\frac{7}{2}}=\frac{\sqrt{14}}{2}.$$
**Cohérence :** l'aire vaut aussi $\frac{1}{2}\times BC\times d(A,(BC))=\frac{1}{2}\sqrt{6}\times\frac{\sqrt{21}}{\sqrt{6}}=\frac{1}{2}\sqrt{21}$, ce qui redonne bien le résultat de la question 2.
\end{enumerate}

### Problème 2 : Parallélépipède et produit mixte
\begin{enonce}
On considère les trois vecteurs $\vec{u}(1,1,0)$, $\vec{v}(0,1,1)$ et $\vec{w}(1,0,1)$.
\begin{enumerate}
    \item Calculer $\vec{u}\wedge\vec{v}$.
    \item En déduire le produit mixte $[\vec{u},\vec{v},\vec{w}]=(\vec{u}\wedge\vec{v})\cdot\vec{w}$.
    \item Donner le volume du parallélépipède construit sur $\vec{u}$, $\vec{v}$, $\vec{w}$, ainsi que celui du tétraèdre associé.
    \item Soit $\vec{t}=\vec{u}+\vec{v}$. Montrer, à l'aide d'un produit mixte, que $\vec{u}$, $\vec{v}$ et $\vec{t}$ sont coplanaires.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item On calcule :
$$\vec{u}\wedge\vec{v}=\begin{pmatrix} 1\cdot 1-0\cdot 1 \\ 0\cdot 0-1\cdot 1 \\ 1\cdot 1-1\cdot 0 \end{pmatrix}=\begin{pmatrix} 1 \\ -1 \\ 1 \end{pmatrix}.$$
    \item $[\vec{u},\vec{v},\vec{w}]=(1,-1,1)\cdot(1,0,1)=1+0+1=2$.
    \item Le volume du parallélépipède est la valeur absolue du produit mixte, soit $\mathcal{V}=|2|=2$. Le volume du tétraèdre associé en est le sixième : $\dfrac{2}{6}=\dfrac{1}{3}$.
    \item On a $\vec{t}=\vec{u}+\vec{v}=(1,2,1)$. Le produit mixte vaut :
$$[\vec{u},\vec{v},\vec{t}]=(\vec{u}\wedge\vec{v})\cdot\vec{t}=(1,-1,1)\cdot(1,2,1)=1-2+1=0.$$
Le produit mixte étant nul, les vecteurs $\vec{u}$, $\vec{v}$ et $\vec{t}$ sont coplanaires. C'est cohérent : $\vec{t}$ est une combinaison linéaire de $\vec{u}$ et $\vec{v}$, donc il appartient au plan qu'ils engendrent.
\end{enumerate}

### Problème 3 : Un point dépendant d'un paramètre
\begin{enonce}
Soit $m$ un réel. On considère les points $A(1,0,0)$, $B(0,1,0)$, $C(0,0,1)$ et $D(m,m,m)$.
\begin{enumerate}
    \item Calculer $\overrightarrow{AB}\wedge\overrightarrow{AC}$, en déduire une équation cartésienne du plan $(ABC)$ et l'aire du triangle $ABC$.
    \item Exprimer le volume du tétraèdre $ABCD$ en fonction de $m$.
    \item Déterminer la valeur de $m$ pour laquelle $D$ appartient au plan $(ABC)$.
    \item Calculer le volume du tétraèdre $ABCD$ pour $m=1$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item $\overrightarrow{AB}(-1,1,0)$ et $\overrightarrow{AC}(-1,0,1)$. Alors :
$$\overrightarrow{AB}\wedge\overrightarrow{AC}=\begin{pmatrix} 1\cdot 1-0\cdot 0 \\ 0\cdot(-1)-(-1)\cdot 1 \\ (-1)\cdot 0-1\cdot(-1) \end{pmatrix}=\begin{pmatrix} 1 \\ 1 \\ 1 \end{pmatrix}.$$
Le vecteur $\vec{n}(1,1,1)$ est normal au plan : $x+y+z+d=0$, et $A(1,0,0)$ donne $d=-1$. Une équation est $x+y+z-1=0$. La norme du produit vectoriel vaut $\sqrt{3}$, donc l'aire du triangle est $\dfrac{\sqrt{3}}{2}$.
    \item On a $\overrightarrow{AD}(m-1,m,m)$. Le produit mixte vaut :
$$(\overrightarrow{AB}\wedge\overrightarrow{AC})\cdot\overrightarrow{AD}=(1,1,1)\cdot(m-1,m,m)=(m-1)+m+m=3m-1.$$
Le volume du tétraèdre est donc :
$$\mathcal{V}_{ABCD}=\frac{1}{6}\,|3m-1|.$$
    \item Le point $D$ appartient au plan $(ABC)$ si et seulement si les quatre points sont coplanaires, c'est-à-dire si le produit mixte est nul : $3m-1=0$, donc $m=\dfrac{1}{3}$. (On retrouve bien $D\Big(\tfrac13,\tfrac13,\tfrac13\Big)$ qui vérifie $x+y+z=1$.)
    \item Pour $m=1$ : $\mathcal{V}_{ABCD}=\dfrac{1}{6}\,|3\cdot 1-1|=\dfrac{2}{6}=\dfrac{1}{3}$.
\end{enumerate}
