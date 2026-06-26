### Exercice 1 : Application directe de la loi de Laplace
\begin{enonce}
Une portion rectiligne de conducteur, de longueur $l = 0{,}10\ \text{m}$, est parcourue par un courant d'intensité $I = 8{,}0\ \text{A}$. Elle est placée dans un champ magnétique uniforme de valeur $B = 0{,}25\ \text{T}$.
\begin{enumerate}
    \item Le conducteur est perpendiculaire au champ ($\alpha = 90^\circ$). Calculer la valeur de la force de Laplace $F$.
    \item Le conducteur fait maintenant un angle $\alpha = 30^\circ$ avec le champ. Calculer la nouvelle valeur de $F$.
    \item Pour quelle orientation du conducteur la force de Laplace est-elle nulle ?
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item La valeur de la force de Laplace est $F = B\,I\,l\,\sin\alpha$. Pour $\alpha = 90^\circ$, $\sin\alpha = 1$, donc :
    $$F = B\,I\,l = 0{,}25 \times 8{,}0 \times 0{,}10 = 0{,}20\ \text{N}.$$
    \item Pour $\alpha = 30^\circ$, $\sin 30^\circ = 0{,}50$ :
    $$F = B\,I\,l\,\sin\alpha = 0{,}25 \times 8{,}0 \times 0{,}10 \times 0{,}50 = 0{,}10\ \text{N}.$$
    \item La force est nulle lorsque $\sin\alpha = 0$, c'est-à-dire quand le conducteur est **parallèle** au champ ($\alpha = 0^\circ$ ou $\alpha = 180^\circ$) : $\vec{l}$ et $\vec{B}$ sont alors colinéaires.
\end{enumerate}

### Exercice 2 : Direction et sens de la force (rail de Laplace)
\begin{enonce}
Une tige conductrice $MN$ verticale repose sur deux rails reliés à un générateur. Le courant circule de $N$ (en bas) vers $M$ (en haut). Le champ magnétique $\vec{B}$ est **perpendiculaire au plan de la figure et sortant** (il pointe vers l'observateur).



\begin{enumerate}
    \item Énoncer la règle des trois doigts de la main droite permettant de trouver le sens de la force de Laplace.
    \item Déterminer la direction et le sens de la force $\vec{F}$ qui s'exerce sur la tige.
    \item Comment évolue le sens de $\vec{F}$ si l'on inverse le sens du courant ? Si l'on inverse en plus le sens du champ ?
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Avec la main droite, on associe : le **pouce** au sens du courant $I$ (vecteur $\vec{l}$), l'**index** au champ $\vec{B}$, et le **majeur** donne alors le sens de la force $\vec{F}$. (On applique ainsi la règle de la main droite au produit vectoriel $\vec{F} = I\,\vec{l}\wedge\vec{B}$.)
    \item Ici $\vec{l}$ est vertical (vers le haut) et $\vec{B}$ est horizontal (sortant) : ils sont perpendiculaires, donc $\alpha = 90^\circ$. La force $\vec{F} = I\,\vec{l}\wedge\vec{B}$ est **perpendiculaire à $\vec{l}$ et à $\vec{B}$**, donc **horizontale**, contenue dans le plan de la figure. La règle des trois doigts donne $\vec{F}$ **horizontale dirigée vers la droite** : la tige se déplace le long des rails.
    \item Si l'on **inverse le sens du courant**, le sens de $\vec{F}$ s'inverse (la tige part vers la gauche). Si l'on inverse **à la fois** le courant et le champ, les deux inversions se compensent : $\vec{F}$ **retrouve son sens initial** (vers la droite).
\end{enumerate}

### Exercice 3 : Mise en mouvement d'une tige
\begin{enonce}
Sur le dispositif du rail de Laplace, une tige $MN$ de longueur $l = 0{,}20\ \text{m}$ et de masse $m = 50\ \text{g}$ est parcourue par un courant $I = 5{,}0\ \text{A}$. Le champ magnétique, perpendiculaire à la tige, a pour valeur $B = 0{,}40\ \text{T}$. On néglige les frottements. On prend $g = 10\ \text{N}\cdot\text{kg}^{-1}$.
\begin{enumerate}
    \item Calculer la valeur de la force de Laplace $F$ qui s'exerce sur la tige.
    \item En déduire l'accélération $a$ acquise par la tige au démarrage.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item La tige étant perpendiculaire au champ ($\alpha = 90^\circ$) :
    $$F = B\,I\,l = 0{,}40 \times 5{,}0 \times 0{,}20 = 0{,}40\ \text{N}.$$
    \item Le poids et la réaction des rails (verticaux) se compensent ; la force de Laplace (horizontale) est la seule force motrice. D'après la deuxième loi de Newton $F = m\,a$ avec $m = 50\ \text{g} = 0{,}050\ \text{kg}$ :
    $$a = \dfrac{F}{m} = \dfrac{0{,}40}{0{,}050} = 8{,}0\ \text{m}\cdot\text{s}^{-2}.$$
\end{enumerate}

### Exercice 4 : Équilibre d'une tige sur des rails
\begin{enonce}
Une tige conductrice $MN$, de longueur $l = 0{,}10\ \text{m}$ et de masse $m = 24\ \text{g}$, est posée sur deux rails horizontaux. Un champ magnétique $\vec{B}$ **horizontal**, perpendiculaire à la tige et de valeur $B = 0{,}40\ \text{T}$, est appliqué de sorte que la force de Laplace soit **verticale, dirigée vers le haut**. On prend $g = 10\ \text{N}\cdot\text{kg}^{-1}$.



\begin{enumerate}
    \item Établir la condition sur l'intensité $I$ pour que la tige soit sur le point de décoller (réaction des rails nulle).
    \item Calculer cette intensité $I$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item La tige est soumise à son poids $\vec{P}$ (vers le bas, $P = mg$), à la force de Laplace $\vec{F}$ (vers le haut, $F = B\,I\,l$) et à la réaction des rails $\vec{R}$. La tige est sur le point de décoller quand $R = 0$. L'équilibre vertical s'écrit alors :
    $$F = P \quad\Longrightarrow\quad B\,I\,l = m\,g.$$
    \item On en tire :
    $$I = \dfrac{m\,g}{B\,l} = \dfrac{0{,}024 \times 10}{0{,}40 \times 0{,}10} = \dfrac{0{,}24}{0{,}040} = 6{,}0\ \text{A}.$$
\end{enumerate}

### Exercice 5 : Roue de Barlow
\begin{enonce}
Dans une roue de Barlow, un rayon métallique plonge entre les pôles d'un aimant. La portion du rayon située dans le champ a une longueur $l = 5{,}0\ \text{cm}$ ; elle est parcourue par un courant $I = 8{,}0\ \text{A}$ dans un champ $B = 0{,}25\ \text{T}$ perpendiculaire au rayon. On admet que la force de Laplace s'applique au milieu de cette portion, à la distance $d = 0{,}10\ \text{m}$ de l'axe de rotation.
\begin{enumerate}
    \item Calculer la valeur de la force de Laplace $F$.
    \item Calculer le moment $\mathcal{M}$ de cette force par rapport à l'axe de rotation. Quel est l'effet de ce moment ?
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Avec $l = 5{,}0\ \text{cm} = 0{,}050\ \text{m}$ et $\alpha = 90^\circ$ :
    $$F = B\,I\,l = 0{,}25 \times 8{,}0 \times 0{,}050 = 0{,}10\ \text{N}.$$
    \item La force étant perpendiculaire au rayon, le bras de levier vaut $d$ :
    $$\mathcal{M} = F \times d = 0{,}10 \times 0{,}10 = 1{,}0\times 10^{-2}\ \text{N}\cdot\text{m}.$$
    Ce moment, non nul, fait **tourner la roue** autour de son axe : c'est le principe de conversion de l'énergie électrique en énergie mécanique (ancêtre du moteur électrique).
\end{enumerate}

### Exercice 6 : Détermination expérimentale du champ
\begin{enonce}
Pour mesurer un champ magnétique, on place un conducteur rectiligne de longueur $l = 0{,}20\ \text{m}$, perpendiculaire au champ, et on mesure la force de Laplace $F$ pour différentes intensités $I$. Le graphe $F = f(I)$ est une droite passant par l'origine, de coefficient directeur $k = 0{,}060\ \text{N}\cdot\text{A}^{-1}$.
\begin{enumerate}
    \item Établir la relation entre $F$ et $I$, et identifier la signification du coefficient directeur $k$.
    \item En déduire la valeur $B$ du champ magnétique.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Le conducteur étant perpendiculaire au champ, $F = B\,I\,l = (B\,l)\,I$. La force est proportionnelle à l'intensité : la pente de la droite est donc $k = B\,l$.
    \item On en déduit :
    $$B = \dfrac{k}{l} = \dfrac{0{,}060}{0{,}20} = 0{,}30\ \text{T}.$$
\end{enumerate}
