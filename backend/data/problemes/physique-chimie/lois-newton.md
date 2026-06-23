### Problème 1 : Solide tiré sur un plan horizontal avec frottements
\begin{enonce}
Dans tout le problème, le référentiel terrestre est supposé galiléen et on prend $g = 9{,}8\ \text{m.s}^{-2}$.

Un solide $(S)$ de masse $m = 4{,}0\ \text{kg}$, initialement au repos, est posé sur un plan horizontal. À partir de l'instant $t = 0$, on le tire à l'aide d'un fil incliné d'un angle $\theta = 30^\circ$ au-dessus de l'horizontale. La tension du fil est constante et de valeur $T = 25\ \text{N}$. Le déplacement s'effectue selon une droite horizontale. Les frottements sont modélisés par une force $\vec{f}$, horizontale, opposée au mouvement, de valeur constante $f = 8{,}0\ \text{N}$.
\begin{enumerate}
    \item Faire le bilan des forces extérieures appliquées au solide et préciser le repère d'étude.
    \item Écrire la deuxième loi de Newton, puis la projeter sur les deux axes du repère.
    \item Déterminer la valeur de l'accélération $a$ du centre d'inertie $G$.
    \item Déterminer la valeur de la réaction normale $R_N$ du plan sur le solide.
    \item Le mouvement étant rectiligne uniformément varié, établir l'équation horaire de la vitesse $v(t)$, puis calculer la vitesse atteinte à l'instant $t = 3{,}0\ \text{s}$.
    \item Calculer la distance parcourue par le solide entre $t = 0$ et $t = 3{,}0\ \text{s}$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Le solide est soumis à quatre forces extérieures :
    \begin{itemize}
        \item son poids $\vec{P}$, vertical vers le bas, de valeur $P = m\,g$ ;
        \item la réaction normale $\vec{R}_N$ du plan, verticale vers le haut ;
        \item la tension $\vec{T}$ du fil, faisant un angle $\theta$ avec l'horizontale ;
        \item la force de frottement $\vec{f}$, horizontale, opposée au mouvement.
    \end{itemize}
    On choisit le repère $(O, \vec{i}, \vec{j})$ avec $\vec{i}$ horizontal dans le sens du mouvement et $\vec{j}$ vertical vers le haut.
    \item La deuxième loi de Newton s'écrit :
    \[
    \vec{P} + \vec{R}_N + \vec{T} + \vec{f} = m\,\vec{a}_G
    \]
    Le mouvement étant horizontal, $\vec{a}_G$ est porté par $\vec{i}$. Les projections donnent :
    \[
    \begin{cases}
    \text{sur } \vec{i} : & T\cos\theta - f = m\,a \\
    \text{sur } \vec{j} : & R_N + T\sin\theta - P = 0
    \end{cases}
    \]
    \item De la projection sur $\vec{i}$ :
    \[
    a = \frac{T\cos\theta - f}{m} = \frac{25 \times \cos 30^\circ - 8{,}0}{4{,}0}
    \]
    Avec $\cos 30^\circ \approx 0{,}866$ :
    \[
    a = \frac{25 \times 0{,}866 - 8{,}0}{4{,}0} = \frac{21{,}7 - 8{,}0}{4{,}0} \approx 3{,}4\ \text{m.s}^{-2}
    \]
    \item De la projection sur $\vec{j}$ :
    \[
    R_N = P - T\sin\theta = m\,g - T\sin\theta = 4{,}0 \times 9{,}8 - 25 \times \sin 30^\circ
    \]
    \[
    R_N = 39{,}2 - 25 \times 0{,}50 = 39{,}2 - 12{,}5 \approx 26{,}7\ \text{N}
    \]
    \item L'accélération étant constante, le mouvement est rectiligne uniformément varié. Avec $v(0) = 0$ :
    \[
    v(t) = a\,t
    \]
    À $t = 3{,}0\ \text{s}$ :
    \[
    v = 3{,}4 \times 3{,}0 \approx 10{,}2\ \text{m.s}^{-1} \approx 10\ \text{m.s}^{-1}
    \]
    \item Avec $x(0) = 0$ et $v(0) = 0$, l'équation horaire de la position est $x(t) = \dfrac{1}{2}\,a\,t^2$. La distance parcourue entre $t = 0$ et $t = 3{,}0\ \text{s}$ vaut :
    \[
    d = \frac{1}{2}\,a\,t^2 = \frac{1}{2} \times 3{,}4 \times (3{,}0)^2 \approx 15{,}3\ \text{m}
    \]
\end{enumerate}

### Problème 2 : Montée et descente sur un plan incliné
\begin{enonce}
Le référentiel terrestre est supposé galiléen et on prend $g = 10\ \text{m.s}^{-2}$.

Un solide $(S)$ de masse $m = 2{,}0\ \text{kg}$ se déplace sur un plan incliné d'un angle $\alpha = 20^\circ$ par rapport à l'horizontale. On étudie successivement deux phases du mouvement. Au cours du mouvement, les frottements sont modélisés par une force $\vec{f}$, parallèle au plan, opposée au déplacement, de valeur constante $f = 5{,}0\ \text{N}$.

\textbf{Phase 1 — Montée :} à l'instant $t = 0$, on lance le solide vers le haut du plan avec une vitesse initiale $v_0 = 6{,}0\ \text{m.s}^{-1}$. On laisse ensuite le solide ralentir librement (le système de lancement n'agit plus).
\begin{enumerate}
    \item Faire le bilan des forces lors de la montée et préciser le repère d'étude.
    \item Écrire la deuxième loi de Newton et déterminer la valeur de l'accélération $a_1$ lors de la montée. Commenter son signe.
    \item Déterminer la date $t_1$ à laquelle le solide s'arrête, puis la distance $d_1$ parcourue lors de la montée.
\end{enumerate}

\textbf{Phase 2 — Descente :} après l'arrêt, le solide redescend le plan, à nouveau lâché sans vitesse initiale.
\begin{enumerate}
    \setcounter{enumi}{3}
    \item Déterminer la valeur de l'accélération $a_2$ lors de la descente. Comparer $|a_2|$ et $|a_1|$ et justifier la différence.
    \item Calculer la vitesse du solide lorsqu'il atteint de nouveau son point de départ.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Lors de la montée, le solide est soumis à trois forces : son poids $\vec{P}$, la réaction normale $\vec{R}_N$ et la force de frottement $\vec{f}$. Le mouvement étant ascendant, $\vec{f}$ est dirigée vers le bas du plan. On choisit le repère $(O, \vec{i}, \vec{j})$ avec $\vec{i}$ parallèle au plan orienté vers le haut (sens du mouvement de montée) et $\vec{j}$ perpendiculaire au plan.
    \item La deuxième loi de Newton donne :
    \[
    \vec{P} + \vec{R}_N + \vec{f} = m\,\vec{a}_G
    \]
    Projection sur $\vec{i}$ (la composante du poids selon $\vec{i}$ vaut $-P\sin\alpha$ ; la force $\vec{f}$ est dirigée vers le bas du plan, donc $-f$) :
    \[
    -m\,g\sin\alpha - f = m\,a_1
    \]
    d'où :
    \[
    a_1 = -g\sin\alpha - \frac{f}{m} = -10 \times \sin 20^\circ - \frac{5{,}0}{2{,}0}
    \]
    Avec $\sin 20^\circ \approx 0{,}342$ :
    \[
    a_1 = -10 \times 0{,}342 - 2{,}5 = -3{,}42 - 2{,}5 \approx -5{,}9\ \text{m.s}^{-2}
    \]
    L'accélération est négative : elle est opposée à la vitesse (orientée vers le haut), le mouvement est donc décéléré (uniformément retardé), ce qui est cohérent avec le ralentissement du solide.
    \item Le mouvement étant uniformément varié, $v(t) = v_0 + a_1\,t$. Le solide s'arrête lorsque $v(t_1) = 0$ :
    \[
    t_1 = -\frac{v_0}{a_1} = -\frac{6{,}0}{-5{,}9} \approx 1{,}0\ \text{s}
    \]
    La distance parcourue se calcule par la relation indépendante du temps $v^2 - v_0^2 = 2\,a_1\,d_1$, avec $v = 0$ :
    \[
    d_1 = \frac{-v_0^2}{2\,a_1} = \frac{-(6{,}0)^2}{2 \times (-5{,}9)} = \frac{36}{11{,}8} \approx 3{,}1\ \text{m}
    \]
    \item Lors de la descente, le solide se déplace vers le bas du plan : la force de frottement $\vec{f}$ est alors dirigée vers le haut du plan. En gardant l'axe $\vec{i}$ orienté vers le haut, la projection sur $\vec{i}$ donne :
    \[
    -m\,g\sin\alpha + f = m\,a_2
    \]
    \[
    a_2 = -g\sin\alpha + \frac{f}{m} = -3{,}42 + 2{,}5 \approx -0{,}92\ \text{m.s}^{-2}
    \]
    L'accélération $a_2$ est négative (le mouvement de descente se fait dans le sens $-\vec{i}$, donc la vitesse est négative et l'accélération de même signe : le mouvement est accéléré). On a $|a_2| \approx 0{,}92\ \text{m.s}^{-2} < |a_1| \approx 5{,}9\ \text{m.s}^{-2}$ : lors de la descente, le frottement s'oppose au mouvement (vers le haut) et réduit l'effet du poids, alors qu'à la montée frottement et composante du poids s'additionnaient pour freiner le solide.
    \item Le solide repart du point d'arrêt sans vitesse initiale et parcourt la distance $d_1 \approx 3{,}1\ \text{m}$ pour revenir à son point de départ. En appliquant la relation $v^2 - v_{départ}^2 = 2\,a_2\,d$ avec $v_{départ} = 0$ et une distance $d_1$ parcourue (en valeur absolue) :
    \[
    v^2 = 2\,|a_2|\,d_1 = 2 \times 0{,}92 \times 3{,}1 \approx 5{,}7\ \text{m}^2\text{.s}^{-2}
    \]
    \[
    v = \sqrt{5{,}7} \approx 2{,}4\ \text{m.s}^{-1}
    \]
    La vitesse de retour ($2{,}4\ \text{m.s}^{-1}$) est nettement inférieure à la vitesse de lancement ($6{,}0\ \text{m.s}^{-1}$) : une partie de l'énergie a été dissipée par les frottements.
\end{enumerate}

### Problème 3 : Détermination de la masse et de la force de frottement
\begin{enonce}
Le référentiel terrestre est supposé galiléen et on prend $g = 9{,}8\ \text{m.s}^{-2}$.

Un chariot $(S)$ se déplace en translation rectiligne sur une piste horizontale. Une étude expérimentale du mouvement de son centre d'inertie $G$ a permis d'établir les résultats suivants au cours de deux essais.

\textbf{Essai 1 :} le chariot, partant du repos, est soumis à une force motrice horizontale constante $\vec{F}_1$ de valeur $F_1 = 12\ \text{N}$. On mesure une accélération constante $a_1 = 2{,}0\ \text{m.s}^{-2}$.

\textbf{Essai 2 :} le même chariot est soumis à une force motrice horizontale constante $\vec{F}_2$ de valeur $F_2 = 18\ \text{N}$. On mesure une accélération constante $a_2 = 3{,}5\ \text{m.s}^{-2}$.

Dans les deux essais, les frottements sont modélisés par une force $\vec{f}$, horizontale, opposée au mouvement, de même valeur constante $f$.
\begin{enumerate}
    \item Écrire la deuxième loi de Newton projetée sur l'axe du mouvement pour chacun des deux essais.
    \item En déduire un système de deux équations à deux inconnues $m$ et $f$.
    \item Résoudre ce système et déterminer la masse $m$ du chariot ainsi que la valeur $f$ de la force de frottement.
    \item Vérifier la cohérence des valeurs trouvées en recalculant $a_1$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Dans chaque essai, le chariot est soumis à son poids $\vec{P}$, à la réaction normale $\vec{R}_N$, à la force motrice $\vec{F}$ et à la force de frottement $\vec{f}$. En orientant l'axe $\vec{i}$ dans le sens du mouvement, la projection de la deuxième loi de Newton $\sum \vec{F}_{ext} = m\,\vec{a}_G$ sur $\vec{i}$ donne :
    \[
    \begin{cases}
    \text{Essai 1 :} & F_1 - f = m\,a_1 \\
    \text{Essai 2 :} & F_2 - f = m\,a_2
    \end{cases}
    \]
    \item En remplaçant par les valeurs numériques, on obtient le système :
    \[
    \begin{cases}
    12 - f = 2{,}0\,m \\
    18 - f = 3{,}5\,m
    \end{cases}
    \]
    \item En soustrayant la première équation de la seconde, l'inconnue $f$ s'élimine :
    \[
    (18 - 12) = (3{,}5 - 2{,}0)\,m \implies 6{,}0 = 1{,}5\,m
    \]
    \[
    m = \frac{6{,}0}{1{,}5} = 4{,}0\ \text{kg}
    \]
    En reportant dans la première équation :
    \[
    f = 12 - 2{,}0 \times m = 12 - 2{,}0 \times 4{,}0 = 12 - 8{,}0 = 4{,}0\ \text{N}
    \]
    \item Vérification avec l'essai 1 :
    \[
    a_1 = \frac{F_1 - f}{m} = \frac{12 - 4{,}0}{4{,}0} = \frac{8{,}0}{4{,}0} = 2{,}0\ \text{m.s}^{-2}
    \]
    On retrouve bien la valeur mesurée, ce qui confirme la cohérence des résultats $m = 4{,}0\ \text{kg}$ et $f = 4{,}0\ \text{N}$.
\end{enumerate}
