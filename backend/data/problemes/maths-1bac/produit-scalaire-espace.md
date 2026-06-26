### Problème 1 : Tétraèdre trirectangle
\begin{enonce}
Dans un repère orthonormé, on considère les points :
$$A(1, 1, 1), \quad B(3, 1, 1), \quad C(1, 3, 1), \quad D(1, 1, 4).$$
\begin{enumerate}
    \item Déterminer les coordonnées des vecteurs $\overrightarrow{AB}$, $\overrightarrow{AC}$ et $\overrightarrow{AD}$, et montrer qu'ils sont deux à deux orthogonaux.
    \item Déterminer une équation cartésienne du plan $(BCD)$.
    \item Calculer la distance du point $A$ au plan $(BCD)$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item On a $\overrightarrow{AB}\begin{pmatrix} 2 \\ 0 \\ 0 \end{pmatrix}$, $\overrightarrow{AC}\begin{pmatrix} 0 \\ 2 \\ 0 \end{pmatrix}$ et $\overrightarrow{AD}\begin{pmatrix} 0 \\ 0 \\ 3 \end{pmatrix}$. Alors :
    $$\overrightarrow{AB} \cdot \overrightarrow{AC} = 0, \quad \overrightarrow{AB} \cdot \overrightarrow{AD} = 0, \quad \overrightarrow{AC} \cdot \overrightarrow{AD} = 0.$$
    Les trois vecteurs sont deux à deux orthogonaux : $ABCD$ est un tétraèdre trirectangle de sommet $A$.
    \item Cherchons un vecteur normal $\vec{n}\begin{pmatrix} a \\ b \\ c \end{pmatrix}$ au plan $(BCD)$, orthogonal à $\overrightarrow{BC}\begin{pmatrix} -2 \\ 2 \\ 0 \end{pmatrix}$ et à $\overrightarrow{BD}\begin{pmatrix} -2 \\ 0 \\ 3 \end{pmatrix}$ :
    $$\begin{cases} -2a + 2b = 0 \\ -2a + 3c = 0 \end{cases} \iff \begin{cases} a = b \\ c = \tfrac{2}{3}a. \end{cases}$$
    En prenant $a = 3$, on obtient $\vec{n}\begin{pmatrix} 3 \\ 3 \\ 2 \end{pmatrix}$. Le plan a une équation $3x + 3y + 2z + d = 0$ ; comme $B(3, 1, 1) \in (BCD)$, $9 + 3 + 2 + d = 0$ d'où $d = -14$ :
    $$(BCD) : 3x + 3y + 2z - 14 = 0.$$
    \item $d(A, (BCD)) = \dfrac{|3 \times 1 + 3 \times 1 + 2 \times 1 - 14|}{\sqrt{3^2 + 3^2 + 2^2}} = \dfrac{|-6|}{\sqrt{22}} = \dfrac{6}{\sqrt{22}} = \dfrac{3\sqrt{22}}{11}.$
\end{enumerate}

### Problème 2 : Sphère, plan tangent et section circulaire
\begin{enonce}
On considère la sphère $(S)$ d'équation :
$$x^2 + y^2 + z^2 - 2x + 4y - 2z - 3 = 0.$$
\begin{enumerate}
    \item Déterminer le centre $\Omega$ et le rayon $r$ de la sphère $(S)$.
    \item Montrer que le plan $(P_1)$ d'équation $2x - 2y + z + 2 = 0$ est tangent à $(S)$ et déterminer les coordonnées du point de contact $H$.
    \item On considère le plan $(P_2)$ d'équation $2x - 2y + z - 4 = 0$. Montrer que $(P_2)$ coupe $(S)$ selon un cercle dont on précisera le rayon et les coordonnées du centre.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item On complète les carrés :
    $$(x - 1)^2 - 1 + (y + 2)^2 - 4 + (z - 1)^2 - 1 - 3 = 0 \iff (x - 1)^2 + (y + 2)^2 + (z - 1)^2 = 9.$$
    Donc $\Omega(1, -2, 1)$ et $r = 3$.
    \item $d(\Omega, P_1) = \dfrac{|2 \times 1 - 2 \times (-2) + 1 + 2|}{\sqrt{2^2 + (-2)^2 + 1^2}} = \dfrac{|2 + 4 + 1 + 2|}{3} = \dfrac{9}{3} = 3 = r.$
    La distance du centre au plan égale le rayon : $(P_1)$ est tangent à $(S)$. Le point de contact $H$ est le projeté orthogonal de $\Omega$ sur $(P_1)$. Il est de la forme $H = \Omega + t\,\vec{n}$ avec $\vec{n}\begin{pmatrix} 2 \\ -2 \\ 1 \end{pmatrix}$, soit $H(1 + 2t,\, -2 - 2t,\, 1 + t)$. En reportant dans l'équation de $(P_1)$ :
    $$2(1 + 2t) - 2(-2 - 2t) + (1 + t) + 2 = 0 \iff 9 + 9t = 0 \iff t = -1.$$
    D'où $H(-1, 0, 0)$.
    \item $d(\Omega, P_2) = \dfrac{|2 \times 1 - 2 \times (-2) + 1 - 4|}{3} = \dfrac{|2 + 4 + 1 - 4|}{3} = \dfrac{3}{3} = 1.$
    Comme $1 < 3 = r$, le plan coupe la sphère selon un cercle de rayon :
    $$\rho = \sqrt{r^2 - d^2} = \sqrt{9 - 1} = 2\sqrt{2}.$$
    Le centre $I$ du cercle est le projeté de $\Omega$ sur $(P_2)$ : $I(1 + 2t, -2 - 2t, 1 + t)$ avec
    $$2(1 + 2t) - 2(-2 - 2t) + (1 + t) - 4 = 0 \iff 3 + 9t = 0 \iff t = -\tfrac{1}{3}.$$
    D'où $I\left(\tfrac{1}{3}, -\tfrac{4}{3}, \tfrac{2}{3}\right)$.
\end{enumerate}

### Problème 3 : Projeté orthogonal et symétrique d'un point par rapport à un plan
\begin{enonce}
On considère le plan $(P)$ d'équation $x + y + z - 3 = 0$ et le point $A(2, 2, 2)$.
\begin{enumerate}
    \item Vérifier que $A \notin (P)$ et calculer la distance $d(A, P)$.
    \item Déterminer les coordonnées du projeté orthogonal $H$ de $A$ sur $(P)$.
    \item En déduire les coordonnées du symétrique $A'$ de $A$ par rapport à $(P)$.
    \item Donner une équation de la sphère de centre $A$ tangente au plan $(P)$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item En $A$ : $2 + 2 + 2 - 3 = 3 \neq 0$, donc $A \notin (P)$. La distance vaut :
    $$d(A, P) = \frac{|2 + 2 + 2 - 3|}{\sqrt{1^2 + 1^2 + 1^2}} = \frac{3}{\sqrt{3}} = \sqrt{3}.$$
    \item Un vecteur normal à $(P)$ est $\vec{n}\begin{pmatrix} 1 \\ 1 \\ 1 \end{pmatrix}$. Le projeté $H$ est de la forme $H = A + t\,\vec{n}$, soit $H(2 + t, 2 + t, 2 + t)$. Comme $H \in (P)$ :
    $$(2 + t) + (2 + t) + (2 + t) - 3 = 0 \iff 3 + 3t = 0 \iff t = -1.$$
    D'où $H(1, 1, 1)$.
    \item Le symétrique $A'$ vérifie que $H$ est le milieu de $[AA']$, donc $A' = 2H - A$ :
    $$A'\big(2 \times 1 - 2,\; 2 \times 1 - 2,\; 2 \times 1 - 2\big) = A'(0, 0, 0).$$
    Le symétrique de $A$ par rapport à $(P)$ est l'origine $O$.
    \item La sphère de centre $A$ tangente à $(P)$ a pour rayon $d(A, P) = \sqrt{3}$, donc :
    $$(x - 2)^2 + (y - 2)^2 + (z - 2)^2 = 3.$$
\end{enumerate}
