### Exercice 1 : Produit scalaire, longueurs et angle
\begin{enonce}
Dans un repère orthonormé, on considère les points $A(1, 0, 1)$, $B(3, 1, 2)$ et $C(2, -1, 3)$.
\begin{enumerate}
    \item Déterminer les coordonnées des vecteurs $\overrightarrow{AB}$ et $\overrightarrow{AC}$, puis calculer le produit scalaire $\overrightarrow{AB} \cdot \overrightarrow{AC}$.
    \item Calculer les longueurs $AB$ et $AC$.
    \item En déduire une mesure de l'angle $\widehat{BAC}$.
    \item Calculer la longueur $BC$. Quelle est la nature du triangle $ABC$ ?
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item On a $\overrightarrow{AB}\begin{pmatrix} 2 \\ 1 \\ 1 \end{pmatrix}$ et $\overrightarrow{AC}\begin{pmatrix} 1 \\ -1 \\ 2 \end{pmatrix}$. Donc :
    $$\overrightarrow{AB} \cdot \overrightarrow{AC} = 2 \times 1 + 1 \times (-1) + 1 \times 2 = 2 - 1 + 2 = 3.$$
    \item $AB = \sqrt{2^2 + 1^2 + 1^2} = \sqrt{6}$ et $AC = \sqrt{1^2 + (-1)^2 + 2^2} = \sqrt{6}$.
    \item Par définition du produit scalaire, $\overrightarrow{AB} \cdot \overrightarrow{AC} = AB \times AC \times \cos\widehat{BAC}$, donc :
    $$\cos\widehat{BAC} = \frac{\overrightarrow{AB} \cdot \overrightarrow{AC}}{AB \times AC} = \frac{3}{\sqrt{6} \times \sqrt{6}} = \frac{3}{6} = \frac{1}{2}.$$
    On en déduit $\widehat{BAC} = 60^\circ$ (soit $\tfrac{\pi}{3}$).
    \item $\overrightarrow{BC}\begin{pmatrix} -1 \\ -2 \\ 1 \end{pmatrix}$ donc $BC = \sqrt{(-1)^2 + (-2)^2 + 1^2} = \sqrt{6}$. Les trois côtés sont égaux : le triangle $ABC$ est **équilatéral**.
\end{enumerate}

### Exercice 2 : Orthogonalité
\begin{enonce}
\begin{enumerate}
    \item Montrer que les vecteurs $\vec{u}\begin{pmatrix} 3 \\ -1 \\ 2 \end{pmatrix}$ et $\vec{v}\begin{pmatrix} 2 \\ 2 \\ -2 \end{pmatrix}$ sont orthogonaux.
    \item Déterminer le réel $a$ pour que $\vec{u}$ et $\vec{w}\begin{pmatrix} a \\ 3 \\ 3 \end{pmatrix}$ soient orthogonaux.
    \item On considère les points $A(1, 1, 1)$, $B(3, 0, 2)$ et $C(2, 3, 1)$. Montrer que le triangle $ABC$ est rectangle en $A$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item $\vec{u} \cdot \vec{v} = 3 \times 2 + (-1) \times 2 + 2 \times (-2) = 6 - 2 - 4 = 0$. Les vecteurs sont donc orthogonaux.
    \item $\vec{u} \cdot \vec{w} = 3a + (-1) \times 3 + 2 \times 3 = 3a + 3$. Ce produit est nul si et seulement si $3a + 3 = 0$, c'est-à-dire $a = -1$.
    \item On calcule $\overrightarrow{AB}\begin{pmatrix} 2 \\ -1 \\ 1 \end{pmatrix}$ et $\overrightarrow{AC}\begin{pmatrix} 1 \\ 2 \\ 0 \end{pmatrix}$. Alors :
    $$\overrightarrow{AB} \cdot \overrightarrow{AC} = 2 \times 1 + (-1) \times 2 + 1 \times 0 = 2 - 2 + 0 = 0.$$
    Les vecteurs $\overrightarrow{AB}$ et $\overrightarrow{AC}$ sont orthogonaux, donc le triangle $ABC$ est rectangle en $A$.
\end{enumerate}

### Exercice 3 : Équation cartésienne d'un plan
\begin{enonce}
\begin{enumerate}
    \item Déterminer une équation cartésienne du plan $(P)$ passant par $A(2, -1, 3)$ et de vecteur normal $\vec{n}\begin{pmatrix} 1 \\ 2 \\ -2 \end{pmatrix}$.
    \item Déterminer une équation cartésienne du plan $(Q)$ passant par les trois points $E(1, 0, 0)$, $F(0, 2, 0)$ et $G(0, 0, 3)$.
    \item Le plan $(R)$ a pour équation $2x + 4y - 4z + 1 = 0$. Étudier la position relative des plans $(P)$ et $(R)$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Un point $M(x, y, z)$ appartient à $(P)$ si et seulement si $\overrightarrow{AM} \cdot \vec{n} = 0$ :
    $$1(x - 2) + 2(y + 1) - 2(z - 3) = 0 \iff x + 2y - 2z + 6 = 0.$$
    \item Cherchons un vecteur normal $\vec{n}\begin{pmatrix} a \\ b \\ c \end{pmatrix}$ orthogonal à $\overrightarrow{EF}\begin{pmatrix} -1 \\ 2 \\ 0 \end{pmatrix}$ et à $\overrightarrow{EG}\begin{pmatrix} -1 \\ 0 \\ 3 \end{pmatrix}$ :
    $$\begin{cases} -a + 2b = 0 \\ -a + 3c = 0 \end{cases} \iff \begin{cases} a = 2b \\ a = 3c. \end{cases}$$
    En prenant $a = 6$, on obtient $b = 3$ et $c = 2$, donc $\vec{n}\begin{pmatrix} 6 \\ 3 \\ 2 \end{pmatrix}$. Le plan $(Q)$ a une équation de la forme $6x + 3y + 2z + d = 0$ ; comme $E(1,0,0) \in (Q)$, $6 + d = 0$ d'où $d = -6$ :
    $$6x + 3y + 2z - 6 = 0.$$
    \item Le vecteur normal de $(P)$ est $\vec{n}\begin{pmatrix} 1 \\ 2 \\ -2 \end{pmatrix}$ et celui de $(R)$ est $\vec{n'}\begin{pmatrix} 2 \\ 4 \\ -4 \end{pmatrix} = 2\,\vec{n}$. Ils sont colinéaires : les plans sont **parallèles**. Comme les équations ne sont pas proportionnelles (le point $A$ de $(P)$ vérifie $2x + 4y - 4z + 1 = 2(2) + 4(-1) - 4(3) + 1 = -11 \neq 0$), les plans sont **strictement parallèles**.
\end{enumerate}

### Exercice 4 : Distance d'un point à un plan
\begin{enonce}
On considère le plan $(P)$ d'équation $2x - y + 2z - 3 = 0$.
\begin{enumerate}
    \item Calculer la distance du point $M(2, -1, 2)$ au plan $(P)$.
    \item Calculer la distance de l'origine $O$ au plan $(P)$.
    \item Déterminer les valeurs du réel $k$ pour lesquelles le point $N(1, 1, k)$ est à la distance $2$ du plan $(P)$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item $d(M, P) = \dfrac{|2 \times 2 - (-1) + 2 \times 2 - 3|}{\sqrt{2^2 + (-1)^2 + 2^2}} = \dfrac{|4 + 1 + 4 - 3|}{\sqrt{9}} = \dfrac{6}{3} = 2.$
    \item $d(O, P) = \dfrac{|2 \times 0 - 0 + 2 \times 0 - 3|}{3} = \dfrac{3}{3} = 1.$
    \item $d(N, P) = \dfrac{|2 \times 1 - 1 + 2k - 3|}{3} = \dfrac{|2k - 2|}{3}$. On résout $\dfrac{|2k - 2|}{3} = 2$, soit $|2k - 2| = 6$ :
    $$2k - 2 = 6 \;\Rightarrow\; k = 4 \qquad \text{ou} \qquad 2k - 2 = -6 \;\Rightarrow\; k = -2.$$
    Les valeurs cherchées sont $k = 4$ et $k = -2$.
\end{enumerate}

### Exercice 5 : Équations de sphères
\begin{enonce}
\begin{enumerate}
    \item Donner une équation de la sphère $(S_1)$ de centre $\Omega(1, -2, 3)$ et de rayon $4$, puis la développer.
    \item Déterminer une équation de la sphère $(S_2)$ de diamètre $[AB]$ avec $A(1, 0, 2)$ et $B(3, 4, -2)$.
    \item Montrer que l'équation $x^2 + y^2 + z^2 - 4x + 2y - 6z + 5 = 0$ est celle d'une sphère dont on précisera le centre et le rayon.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item $(S_1) : (x - 1)^2 + (y + 2)^2 + (z - 3)^2 = 16$. En développant :
    $$x^2 + y^2 + z^2 - 2x + 4y - 6z + (1 + 4 + 9 - 16) = 0 \iff x^2 + y^2 + z^2 - 2x + 4y - 6z - 2 = 0.$$
    \item Le centre est le milieu $\Omega$ de $[AB]$ : $\Omega\left(\frac{1+3}{2}, \frac{0+4}{2}, \frac{2-2}{2}\right) = \Omega(2, 2, 0)$. Le rayon vaut $\frac{AB}{2}$ avec $\overrightarrow{AB}\begin{pmatrix} 2 \\ 4 \\ -4 \end{pmatrix}$, donc $AB = \sqrt{4 + 16 + 16} = 6$ et $r = 3$ :
    $$(S_2) : (x - 2)^2 + (y - 2)^2 + z^2 = 9.$$
    \item On regroupe et on complète les carrés :
    $$(x - 2)^2 - 4 + (y + 1)^2 - 1 + (z - 3)^2 - 9 + 5 = 0 \iff (x - 2)^2 + (y + 1)^2 + (z - 3)^2 = 9.$$
    C'est la sphère de centre $\Omega(2, -1, 3)$ et de rayon $r = 3$.
\end{enumerate}

### Exercice 6 : Intersection d'une sphère et d'un plan
\begin{enonce}
On considère la sphère $(S)$ de centre $\Omega(1, 2, -1)$ et de rayon $5$, et le plan $(P)$ d'équation $2x - y + 2z - 7 = 0$.
\begin{enumerate}
    \item Donner une équation de la sphère $(S)$.
    \item Calculer la distance $d(\Omega, P)$ et en déduire que $(P)$ coupe $(S)$ selon un cercle dont on précisera le rayon.
    \item Déterminer les valeurs du réel $k$ pour lesquelles le plan $(Q_k)$ d'équation $2x - y + 2z + k = 0$ est tangent à $(S)$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item $(S) : (x - 1)^2 + (y - 2)^2 + (z + 1)^2 = 25.$
    \item $d(\Omega, P) = \dfrac{|2 \times 1 - 2 + 2 \times (-1) - 7|}{\sqrt{2^2 + (-1)^2 + 2^2}} = \dfrac{|2 - 2 - 2 - 7|}{3} = \dfrac{9}{3} = 3.$
    Comme $d(\Omega, P) = 3 < 5 = r$, le plan coupe la sphère selon un cercle de rayon :
    $$\rho = \sqrt{r^2 - d^2} = \sqrt{25 - 9} = \sqrt{16} = 4.$$
    \item Le plan $(Q_k)$ est tangent à $(S)$ si et seulement si $d(\Omega, Q_k) = 5$ :
    $$\frac{|2 \times 1 - 2 + 2 \times (-1) + k|}{3} = 5 \iff |k - 2| = 15 \iff k = 17 \ \text{ou} \ k = -13.$$
\end{enumerate}
