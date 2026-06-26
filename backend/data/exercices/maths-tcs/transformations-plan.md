### Exercice 1 : Translation et coordonnées
\begin{enonce}
Le plan est muni d'un repère $(O;\vec{i},\vec{j})$. On considère le vecteur $\vec{u}(3;-2)$ et les points $A(1;4)$ et $B(-2;0)$. On note $t_{\vec{u}}$ la translation de vecteur $\vec{u}$.
\begin{enumerate}
    \item Déterminer les coordonnées de $A'$ et $B'$, images respectives de $A$ et $B$ par $t_{\vec{u}}$.
    \item Calculer les coordonnées de $\overrightarrow{AB}$ et de $\overrightarrow{A'B'}$. Que constate-t-on ?
    \item En déduire la nature du quadrilatère $ABB'A'$ et comparer les longueurs $AB$ et $A'B'$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Si $M(x;y)$, alors son image $M'$ vérifie $\overrightarrow{MM'} = \vec{u}$, donc $M'(x+3\,;\,y-2)$. Ainsi :
    $$A'(1+3\,;\,4-2) = A'(4;2), \qquad B'(-2+3\,;\,0-2) = B'(1;-2).$$
    \item $\overrightarrow{AB}(-2-1\,;\,0-4) = \overrightarrow{AB}(-3;-4)$ et $\overrightarrow{A'B'}(1-4\,;\,-2-2) = \overrightarrow{A'B'}(-3;-4)$. On constate que $\overrightarrow{A'B'} = \overrightarrow{AB}$ : la translation conserve les vecteurs.
    \item Comme $\overrightarrow{AB} = \overrightarrow{A'B'}$, le quadrilatère $ABB'A'$ est un parallélogramme. De plus $AB = \sqrt{(-3)^2+(-4)^2} = \sqrt{25} = 5$ et $A'B' = AB = 5$ : la translation est une isométrie, elle conserve les longueurs.
\end{enumerate}

### Exercice 2 : Symétrie centrale
\begin{enonce}
Dans un repère $(O;\vec{i},\vec{j})$, on considère le point $I(1;1)$ et la symétrie centrale $S_I$ de centre $I$.
\begin{enumerate}
    \item Rappeler la relation vérifiée par $I$, $M$ et $M' = S_I(M)$, puis exprimer les coordonnées de $M'$ en fonction de celles de $M(x;y)$.
    \item Déterminer l'image $A'$ du point $A(-3;4)$.
    \item Le point $K(2;1)$ est-il invariant par $S_I$ ? Justifier.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item $I$ est le milieu de $[MM']$, donc $\overrightarrow{IM'} = -\overrightarrow{IM}$. En passant aux coordonnées, $M'$ s'obtient par la formule du milieu : $x_I = \dfrac{x+x'}{2}$ et $y_I = \dfrac{y+y'}{2}$, d'où $x' = 2x_I - x$ et $y' = 2y_I - y$. Ici : $M'(2-x\,;\,2-y)$.
    \item $A'(2-(-3)\,;\,2-4) = A'(5;-2)$.
    \item Un point est invariant par $S_I$ uniquement s'il est confondu avec le centre $I$. Or $K(2;1) \neq I(1;1)$, donc $K$ n'est pas invariant. Son image est $K'(2-2\,;\,2-1) = K'(0;1) \neq K$.
\end{enumerate}

### Exercice 3 : Symétries axiales et composition
\begin{enonce}
Dans un repère orthonormé $(O;\vec{i},\vec{j})$, on note $s_1$ la symétrie d'axe $(Ox)$ et $s_2$ la symétrie d'axe $(Oy)$. On considère le point $M(3;-2)$.
\begin{enumerate}
    \item Donner les coordonnées de l'image d'un point $(x;y)$ par $s_1$, puis par $s_2$.
    \item Déterminer les coordonnées de $s_1(M)$ et de $s_2(M)$.
    \item Calculer les coordonnées de $s_2\big(s_1(M)\big)$. Quelle transformation reconnaît-on dans la composée $s_2 \circ s_1$ ?
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item La symétrie d'axe $(Ox)$ change le signe de l'ordonnée : $s_1(x;y) = (x;-y)$. La symétrie d'axe $(Oy)$ change le signe de l'abscisse : $s_2(x;y) = (-x;y)$.
    \item $s_1(M) = (3;2)$ et $s_2(M) = (-3;-2)$.
    \item $s_1(M) = (3;2)$, puis $s_2(3;2) = (-3;2)$ ; on trouve donc $s_2\big(s_1(M)\big) = (-3;2)$.

    Pour un point quelconque : $s_2\big(s_1(x;y)\big) = s_2(x;-y) = (-x;-y)$. C'est l'image de $(x;y)$ par la symétrie centrale de centre $O$. Ainsi $s_2 \circ s_1 = S_O$ : composer les symétries par rapport à deux axes perpendiculaires donne la symétrie centrale de centre leur point d'intersection.
\end{enumerate}

### Exercice 4 : Rotation (quart de tour)
\begin{enonce}
Dans un repère orthonormé direct $(O;\vec{i},\vec{j})$, on admet que la rotation $r$ de centre $O$ et d'angle $+90^\circ$ (sens direct) transforme le point $(x;y)$ en $(-y;x)$. On considère le carré $OABC$ avec $A(2;0)$, $B(2;2)$ et $C(0;2)$.
\begin{enumerate}
    \item Déterminer les images $A'$, $B'$, $C'$ des sommets $A$, $B$, $C$ par $r$.
    \item Vérifier que $OA = OA'$ et que $A'B' = AB$. Que peut-on en déduire sur la nature de $r$ ?
    \item Quelle est l'image du point $O$ par $r$ ?
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item En appliquant $(x;y)\mapsto(-y;x)$ :
    $$A'(0;2), \qquad B'(-2;2), \qquad C'(-2;0).$$
    \item $OA = \sqrt{2^2+0^2} = 2$ et $OA' = \sqrt{0^2+2^2} = 2$, donc $OA = OA'$. De même $\overrightarrow{AB}(0;2)$ donne $AB = 2$, et $\overrightarrow{A'B'}(-2-0\,;\,2-2) = (-2;0)$ donne $A'B' = 2$. On a $A'B' = AB$ : la rotation conserve les distances, c'est une isométrie.
    \item Le centre d'une rotation est invariant : $r(O) = O$. (On vérifie : $(-0;0) = (0;0)$.)
\end{enumerate}

### Exercice 5 : Homothétie, longueurs et aires
\begin{enonce}
Dans un repère $(O;\vec{i},\vec{j})$, on considère l'homothétie $h$ de centre $O$ et de rapport $k = 3$, ainsi que les points $A(2;-1)$ et $B(1;2)$. On rappelle que pour $M' = h(M)$, on a $\overrightarrow{OM'} = k\,\overrightarrow{OM}$.
\begin{enumerate}
    \item Déterminer les coordonnées de $A'$ et $B'$, images de $A$ et $B$ par $h$.
    \item Comparer les longueurs $AB$ et $A'B'$.
    \item Un triangle $T$ a une aire de $5\ \text{cm}^2$. Quelle est l'aire de son image $T'$ par $h$ ?
    \item Reprendre la question 1 avec le rapport $k = -2$ pour le seul point $A$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item $\overrightarrow{OM'} = 3\,\overrightarrow{OM}$ donne $M'(3x;3y)$. Donc $A'(6;-3)$ et $B'(3;6)$.
    \item $\overrightarrow{AB}(-1;3)$, donc $AB = \sqrt{1+9} = \sqrt{10}$. $\overrightarrow{A'B'}(3-6\,;\,6-(-3)) = (-3;9)$, donc $A'B' = \sqrt{9+81} = \sqrt{90} = 3\sqrt{10}$. On a $A'B' = 3\,AB = |k|\,AB$ : l'homothétie multiplie les longueurs par $|k|$.
    \item Une homothétie de rapport $k$ multiplie les aires par $k^2$. Ici $k^2 = 9$, donc l'aire de $T'$ est $9 \times 5 = 45\ \text{cm}^2$.
    \item Avec $k = -2$ : $A'(-2 \times 2\,;\,-2\times(-1)) = A'(-4;2)$. Le rapport étant négatif, $A'$ est de l'autre côté de $O$ par rapport à $A$.
\end{enumerate}

### Exercice 6 : Reconnaître une transformation
\begin{enonce}
Dans un repère $(O;\vec{i},\vec{j})$, on définit trois transformations par l'image $M'$ d'un point quelconque $M(x;y)$ :
\begin{enumerate}
    \item $f : M'(x+4\,;\,y-1)$ ;
    \item $g : M'(-x\,;\,-y)$ ;
    \item $p : M'(2x\,;\,2y)$.
\end{enumerate}
Pour chacune, reconnaître la transformation et préciser ses éléments caractéristiques.
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item $\overrightarrow{MM'}(4;-1)$ est un vecteur constant, indépendant de $M$ : $f$ est la \textbf{translation} de vecteur $\vec{u}(4;-1)$.
    \item $M'(-x;-y)$ vérifie $\overrightarrow{OM'} = -\overrightarrow{OM}$, donc $O$ est le milieu de $[MM']$ : $g$ est la \textbf{symétrie centrale} de centre $O$ (c'est aussi la rotation de centre $O$ et d'angle $180^\circ$).
    \item $M'(2x;2y)$ vérifie $\overrightarrow{OM'} = 2\,\overrightarrow{OM}$ : $p$ est l'\textbf{homothétie} de centre $O$ et de rapport $k = 2$. Elle double les longueurs et multiplie les aires par $4$ ; ce n'est pas une isométrie.
\end{enumerate}
