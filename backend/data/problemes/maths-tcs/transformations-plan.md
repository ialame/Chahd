### Problème 1 : Translations d'un triangle et composition
\begin{enonce}
Le plan est muni d'un repère $(O;\vec{i},\vec{j})$. On considère le triangle de sommets $A(1;1)$, $B(5;2)$ et $C(2;4)$, ainsi que les vecteurs $\vec{u}(-3;2)$ et $\vec{v}(1;-5)$.
\begin{enumerate}
    \item Déterminer les coordonnées des images $A'$, $B'$, $C'$ du triangle $ABC$ par la translation $t_{\vec{u}}$.
    \item Vérifier que $A'B' = AB$. Que peut-on dire de l'aire du triangle $A'B'C'$ par rapport à celle de $ABC$ ?
    \item On applique ensuite la translation $t_{\vec{v}}$ au triangle $A'B'C'$. Montrer que la transformation composée $t_{\vec{v}} \circ t_{\vec{u}}$ est encore une translation et préciser son vecteur.
    \item En déduire directement l'image $A''$ de $A$ par cette composée.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item $t_{\vec{u}}$ associe à $M(x;y)$ le point $M'(x-3\,;\,y+2)$. Donc :
    $$A'(-2;3), \qquad B'(2;4), \qquad C'(-1;6).$$
    \item $\overrightarrow{AB}(4;1)$, donc $AB = \sqrt{16+1} = \sqrt{17}$. $\overrightarrow{A'B'}(2-(-2)\,;\,4-3) = (4;1)$, donc $A'B' = \sqrt{17} = AB$. La translation étant une isométrie, elle conserve toutes les longueurs ; les triangles $ABC$ et $A'B'C'$ sont superposables et ont donc la \textbf{même aire}.
    \item Pour tout point $M$, posons $M' = t_{\vec{u}}(M)$ puis $M'' = t_{\vec{v}}(M')$. Alors $\overrightarrow{MM'} = \vec{u}$ et $\overrightarrow{M'M''} = \vec{v}$, d'où par la relation de Chasles :
    $$\overrightarrow{MM''} = \overrightarrow{MM'} + \overrightarrow{M'M''} = \vec{u} + \vec{v}.$$
    Le vecteur $\overrightarrow{MM''}$ est constant : la composée $t_{\vec{v}} \circ t_{\vec{u}}$ est la translation de vecteur $\vec{w} = \vec{u} + \vec{v}$. Ici $\vec{w}(-3+1\,;\,2-5) = \vec{w}(-2;-3)$.
    \item Avec $t_{\vec{w}}$ : $A''(1-2\,;\,1-3) = A''(-1;-2)$.
\end{enumerate}

### Problème 2 : Homothétie, agrandissement et reconnaissance
\begin{enonce}
Dans un repère $(O;\vec{i},\vec{j})$, on considère le triangle $OAB$ avec $A(3;0)$ et $B(0;4)$, rectangle en $O$. On note $h$ l'homothétie de centre $O$ et de rapport $k = 2$.
\begin{enumerate}
    \item Déterminer les images $A'$ et $B'$ de $A$ et $B$ par $h$.
    \item Calculer le périmètre et l'aire du triangle $OAB$, puis ceux du triangle $OA'B'$. Vérifier les coefficients $|k|$ (longueurs) et $k^2$ (aires).
    \item On considère maintenant le point $C(3;4)$ et son image $C'(-6;-8)$ par une homothétie $h'$ de centre $O$. Déterminer le rapport $k'$ de $h'$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item $h$ associe à $M(x;y)$ le point $M'(2x;2y)$. L'image du centre est lui-même. Donc $A'(6;0)$ et $B'(0;8)$ (et $O' = O$).
    \item Triangle $OAB$ rectangle en $O$ : $OA = 3$, $OB = 4$, et $AB = \sqrt{3^2+4^2} = 5$. Périmètre $P = 3+4+5 = 12$ ; aire $\mathcal{A} = \dfrac{1}{2}\times OA \times OB = \dfrac{1}{2}\times 3 \times 4 = 6$.

    Triangle $OA'B'$ : $OA' = 6$, $OB' = 8$, $A'B' = \sqrt{6^2+8^2} = 10$. Périmètre $P' = 6+8+10 = 24$ ; aire $\mathcal{A}' = \dfrac{1}{2}\times 6 \times 8 = 24$.

    On vérifie : $P' = 24 = 2 \times 12 = |k|\,P$ et $\mathcal{A}' = 24 = 4 \times 6 = k^2\,\mathcal{A}$. Les longueurs sont multipliées par $|k| = 2$ et l'aire par $k^2 = 4$.
    \item Par définition $\overrightarrow{OC'} = k'\,\overrightarrow{OC}$. Or $\overrightarrow{OC}(3;4)$ et $\overrightarrow{OC'}(-6;-8) = -2\,(3;4)$. Donc $k' = -2$ : c'est une homothétie de rapport $-2$ (l'image est de l'autre côté de $O$, à une distance double).
\end{enumerate}

### Problème 3 : Symétries et rotations d'un carré
\begin{enonce}
Dans un repère orthonormé direct $(O;\vec{i},\vec{j})$, on considère le carré $ABCD$ de centre $O$ avec :
$$A(1;1), \quad B(-1;1), \quad C(-1;-1), \quad D(1;-1).$$
On admet que la rotation de centre $O$ et d'angle $+90^\circ$ transforme $(x;y)$ en $(-y;x)$.
\begin{enumerate}
    \item Déterminer l'image de chaque sommet par la symétrie centrale $S_O$ de centre $O$. Le carré est-il globalement conservé ?
    \item Déterminer l'image de chaque sommet par la rotation $r$ de centre $O$ et d'angle $+90^\circ$. Décrire l'effet de $r$ sur le carré.
    \item Déterminer l'image de chaque sommet par la symétrie $s$ d'axe $(Oy)$. Le carré est-il globalement conservé ?
    \item Parmi les transformations précédentes, lesquelles sont des isométries ? Justifier.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item $S_O(x;y) = (-x;-y)$. Donc $A(1;1)\mapsto(-1;-1) = C$, $B(-1;1)\mapsto(1;-1) = D$, $C\mapsto A$, $D\mapsto B$. L'ensemble des sommets $\{A,B,C,D\}$ est inchangé : le carré est \textbf{globalement conservé} (chaque sommet est envoyé sur le sommet diagonalement opposé).
    \item $r(x;y) = (-y;x)$. Donc $A(1;1)\mapsto(-1;1) = B$, $B(-1;1)\mapsto(-1;-1) = C$, $C(-1;-1)\mapsto(1;-1) = D$, $D(1;-1)\mapsto(1;1) = A$. La rotation $r$ envoie chaque sommet sur le suivant : le carré est globalement conservé et tourne d'un quart de tour dans le sens direct.
    \item $s(x;y) = (-x;y)$. Donc $A(1;1)\mapsto(-1;1) = B$, $B\mapsto A$, $C(-1;-1)\mapsto(1;-1) = D$, $D\mapsto C$. Le carré est \textbf{globalement conservé} : $s$ échange $A$ avec $B$ et $C$ avec $D$ (symétrie par rapport à la médiatrice de $[AB]$, c'est-à-dire l'axe $(Oy)$).
    \item Les trois transformations $S_O$, $r$ et $s$ \textbf{conservent les distances} : ce sont des isométries (symétrie centrale, rotation et symétrie axiale en sont). On le vérifie par exemple sur le côté $AB$ : $AB = \sqrt{(-1-1)^2+0^2} = 2$, et l'image de $[AB]$ par chacune est encore un côté du carré, de longueur $2$. Une homothétie de rapport $|k|\neq 1$ ne serait, elle, pas une isométrie.
\end{enumerate}
