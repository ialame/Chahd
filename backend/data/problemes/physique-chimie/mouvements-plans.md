### Problème 1 : Étude complète d'un tir oblique dans le champ de pesanteur

\begin{enonce}
Au cours d'un entraînement, un joueur lance un ballon assimilé à un point matériel de masse $m = 0{,}45\ \text{kg}$. Le ballon part du point $O$ pris comme origine du repère $(O, \vec{i}, \vec{j})$, l'axe $Oy$ étant vertical ascendant. À l'instant $t = 0$, la vitesse initiale $\vec{v_0}$ a pour valeur $v_0 = 25\ \text{m.s}^{-1}$ et fait un angle $\alpha = 37^\circ$ avec l'horizontale. On néglige l'action de l'air et on prend $g = 9{,}8\ \text{m.s}^{-2}$, $\cos 37^\circ \approx 0{,}80$, $\sin 37^\circ \approx 0{,}60$.
\begin{enumerate}
    \item En appliquant la deuxième loi de Newton, établir le vecteur accélération du ballon.
    \item Établir les équations horaires $x(t)$ et $y(t)$.
    \item En déduire l'équation de la trajectoire $y(x)$ et préciser sa nature.
    \item Déterminer la durée du vol $t_v$ (le ballon revient à l'altitude de départ) et la portée $x_P$.
    \item Calculer la flèche $H$ (altitude maximale).
    \item Déterminer la valeur de la vitesse du ballon au sommet de la trajectoire.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Le ballon n'est soumis qu'à son poids $\vec{P} = m\vec{g}$. La deuxième loi de Newton s'écrit $m\vec{a} = m\vec{g}$, d'où :
    \[
    \vec{a} = \vec{g}
    \]
    En projetant sur les axes, avec $\vec{g} = -g\,\vec{j}$ :
    \[
    \begin{cases} a_x = 0 \\ a_y = -g \end{cases}
    \]
    \item Par intégration avec $\vec{v_0} = (v_0\cos\alpha)\,\vec{i} + (v_0\sin\alpha)\,\vec{j}$ :
    \[
    \begin{cases} v_x = v_0\cos\alpha \\ v_y = -g\,t + v_0\sin\alpha \end{cases}
    \]
    Une seconde intégration, avec $x(0) = 0$ et $y(0) = 0$, donne :
    \[
    \begin{cases} x(t) = (v_0\cos\alpha)\,t \\[4pt] y(t) = -\dfrac{1}{2}\,g\,t^2 + (v_0\sin\alpha)\,t \end{cases}
    \]
    Numériquement : $v_0\cos\alpha = 25\times 0{,}80 = 20\ \text{m.s}^{-1}$ et $v_0\sin\alpha = 25\times 0{,}60 = 15\ \text{m.s}^{-1}$.
    \item En éliminant le temps, $t = \dfrac{x}{v_0\cos\alpha}$, on obtient :
    \[
    y(x) = -\frac{g}{2\,v_0^2\cos^2\alpha}\,x^2 + (\tan\alpha)\,x
    \]
    C'est une équation du second degré : la trajectoire est une portion de \textbf{parabole}. Numériquement :
    \[
    y(x) = -\frac{9{,}8}{2\times (20)^2}\,x^2 + 0{,}75\,x \approx -1{,}2\times 10^{-2}\,x^2 + 0{,}75\,x
    \]
    \item Le ballon revient à $y = 0$ pour la solution non nulle de $y(t) = 0$ :
    \[
    t_v = \frac{2\,v_0\sin\alpha}{g} = \frac{2\times 15}{9{,}8} \approx 3{,}1\ \text{s}
    \]
    La portée vaut alors :
    \[
    x_P = (v_0\cos\alpha)\,t_v = 20\times 3{,}1 \approx 61\ \text{m}
    \]
    \item Au sommet $v_y = 0$, atteint à $t_S = \dfrac{v_0\sin\alpha}{g} = \dfrac{15}{9{,}8} \approx 1{,}5\ \text{s}$. La flèche vaut :
    \[
    H = \frac{v_0^2\sin^2\alpha}{2g} = \frac{(15)^2}{2\times 9{,}8} \approx 11{,}5\ \text{m}
    \]
    \item Au sommet, $v_y = 0$, donc la vitesse est purement horizontale :
    \[
    v_S = v_x = v_0\cos\alpha = 20\ \text{m.s}^{-1}
    \]
\end{enumerate}

### Problème 2 : Tir depuis une falaise et impact

\begin{enonce}
Depuis le sommet d'une falaise verticale, un projectile est lancé du point $O$ avec une vitesse initiale $\vec{v_0}$ de valeur $v_0 = 30\ \text{m.s}^{-1}$ faisant un angle $\alpha = 30^\circ$ au-dessus de l'horizontale. On choisit l'origine $O$ au point de lancement, $Ox$ horizontal et $Oy$ vertical ascendant. Le sol se trouve à une altitude $y = -h$ avec $h = 40\ \text{m}$ en dessous de $O$. On néglige les frottements et on prend $g = 10\ \text{m.s}^{-2}$, $\cos 30^\circ \approx 0{,}87$, $\sin 30^\circ = 0{,}50$.
\begin{enumerate}
    \item Établir les équations horaires $x(t)$ et $y(t)$.
    \item Déterminer l'instant $t_1$ où le projectile atteint le sommet de sa trajectoire et l'altitude maximale correspondante au-dessus de $O$.
    \item Déterminer l'instant $t_2$ où le projectile touche le sol.
    \item En déduire la distance horizontale $D$ entre le pied de la falaise et le point d'impact.
    \item Calculer la valeur de la vitesse du projectile à l'instant de l'impact.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Le projectile n'est soumis qu'à son poids, donc $\vec{a} = \vec{g} = -g\,\vec{j}$. Avec $v_0\cos\alpha = 30\times 0{,}87 \approx 26\ \text{m.s}^{-1}$ et $v_0\sin\alpha = 30\times 0{,}50 = 15\ \text{m.s}^{-1}$ :
    \[
    \begin{cases} x(t) = (v_0\cos\alpha)\,t = 26\,t \\[4pt] y(t) = -\dfrac{1}{2}\,g\,t^2 + (v_0\sin\alpha)\,t = -5\,t^2 + 15\,t \end{cases}
    \]
    \item Au sommet, $v_y = -g\,t_1 + v_0\sin\alpha = 0$, donc :
    \[
    t_1 = \frac{v_0\sin\alpha}{g} = \frac{15}{10} = 1{,}5\ \text{s}
    \]
    L'altitude maximale au-dessus de $O$ vaut :
    \[
    y(t_1) = \frac{v_0^2\sin^2\alpha}{2g} = \frac{(15)^2}{2\times 10} = 11{,}25\ \text{m}
    \]
    \item Le projectile touche le sol quand $y = -h = -40\ \text{m}$ :
    \[
    -5\,t_2^2 + 15\,t_2 = -40 \implies 5\,t_2^2 - 15\,t_2 - 40 = 0 \implies t_2^2 - 3\,t_2 - 8 = 0
    \]
    Le discriminant vaut $\Delta = 9 + 32 = 41$, $\sqrt{\Delta} \approx 6{,}4$. La solution positive est :
    \[
    t_2 = \frac{3 + 6{,}4}{2} \approx 4{,}7\ \text{s}
    \]
    \item La distance horizontale au point d'impact est :
    \[
    D = (v_0\cos\alpha)\,t_2 = 26\times 4{,}7 \approx 1{,}2\times 10^{2}\ \text{m}
    \]
    \item À l'instant de l'impact, les composantes de la vitesse sont :
    \[
    \begin{cases} v_x = v_0\cos\alpha = 26\ \text{m.s}^{-1} \\[4pt] v_y = -g\,t_2 + v_0\sin\alpha = -10\times 4{,}7 + 15 = -32\ \text{m.s}^{-1} \end{cases}
    \]
    La valeur de la vitesse vaut donc :
    \[
    v = \sqrt{v_x^2 + v_y^2} = \sqrt{(26)^2 + (32)^2} = \sqrt{676 + 1024} \approx 41\ \text{m.s}^{-1}
    \]
\end{enumerate}

### Problème 3 : Déflexion d'un électron dans un oscilloscope

\begin{enonce}
Dans le tube d'un oscilloscope, un électron de charge $q = -e$ ($e = 1{,}6\times 10^{-19}\ \text{C}$) et de masse $m = 9{,}1\times 10^{-31}\ \text{kg}$ pénètre au point $O$, à mi-distance entre deux plaques horizontales $P_1$ (en haut) et $P_2$ (en bas), avec une vitesse horizontale $\vec{v_0} = v_0\,\vec{i}$, $v_0 = 2{,}0\times 10^{7}\ \text{m.s}^{-1}$. Les plaques, de longueur $L = 8{,}0\ \text{cm}$, sont distantes de $d = 2{,}0\ \text{cm}$ et soumises à une tension $U = 100\ \text{V}$ telle que la plaque supérieure $P_1$ est positive. On choisit $Ox$ horizontal selon $\vec{v_0}$ et $Oy$ vertical ascendant. Un écran est placé à la distance $D = 30\ \text{cm}$ du centre des plaques. On néglige le poids.
\begin{enumerate}
    \item Donner la valeur et le sens du champ électrique $\vec{E}$ entre les plaques, puis la force $\vec{F}$ subie par l'électron.
    \item Établir les équations horaires du mouvement entre les plaques.
    \item Établir l'équation de la trajectoire $y(x)$ entre les plaques.
    \item Déterminer la déviation verticale $Y_S$ de l'électron à la sortie des plaques ($x = L$) et vérifier qu'il sort sans heurter les plaques.
    \item En admettant que, à la sortie des plaques, l'électron suit une droite passant par le centre $O'$ des plaques, exprimer puis calculer la déflexion $Y$ sur l'écran.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Le champ entre les plaques est dirigé de la plaque positive ($P_1$, en haut) vers la plaque négative ($P_2$, en bas), donc selon $-\vec{j}$. Sa valeur est :
    \[
    E = \frac{U}{d} = \frac{100}{2{,}0\times 10^{-2}} = 5{,}0\times 10^{3}\ \text{V.m}^{-1}
    \]
    La force est $\vec{F} = q\vec{E} = -e\,\vec{E}$ : comme $\vec{E}$ pointe vers le bas, $\vec{F}$ pointe vers le haut (vers $P_1$). Sa valeur est :
    \[
    F = e\,E = 1{,}6\times 10^{-19}\times 5{,}0\times 10^{3} = 8{,}0\times 10^{-16}\ \text{N}
    \]
    \item La deuxième loi de Newton donne $\vec{a} = \dfrac{\vec{F}}{m}$, accélération verticale dirigée vers le haut, de valeur :
    \[
    a = \frac{F}{m} = \frac{8{,}0\times 10^{-16}}{9{,}1\times 10^{-31}} \approx 8{,}8\times 10^{14}\ \text{m.s}^{-2}
    \]
    Avec $\vec{v_0} = v_0\,\vec{i}$ et $\vec{a} = a\,\vec{j}$, les équations horaires sont :
    \[
    \begin{cases} x(t) = v_0\,t \\[4pt] y(t) = \dfrac{1}{2}\,a\,t^2 \end{cases}
    \]
    \item En éliminant le temps ($t = x/v_0$) :
    \[
    y(x) = \frac{a}{2\,v_0^2}\,x^2 = \frac{e\,U}{2\,m\,d\,v_0^2}\,x^2
    \]
    \item À la sortie des plaques, $x = L$ :
    \[
    Y_S = \frac{a\,L^2}{2\,v_0^2} = \frac{8{,}8\times 10^{14}\times (8{,}0\times 10^{-2})^2}{2\times (2{,}0\times 10^{7})^2}
    \]
    \[
    Y_S = \frac{8{,}8\times 10^{14}\times 6{,}4\times 10^{-3}}{2\times 4{,}0\times 10^{14}} \approx 7{,}0\times 10^{-3}\ \text{m} = 0{,}70\ \text{cm}
    \]
    La déviation maximale admissible est $\dfrac{d}{2} = 1{,}0\ \text{cm}$. Comme $Y_S = 0{,}70\ \text{cm} < 1{,}0\ \text{cm}$, l'électron sort des plaques sans les heurter.
    \item À la sortie, la vitesse fait un angle $\theta$ avec l'horizontale tel que $\tan\theta = \dfrac{v_y(L)}{v_0} = \dfrac{aL}{v_0^2}$. La trajectoire rectiligne issue du centre $O'$ des plaques donne, sur l'écran situé à la distance $D$ du centre :
    \[
    Y = D\,\tan\theta = \frac{a\,L\,D}{v_0^2} = \frac{e\,U\,L\,D}{m\,d\,v_0^2}
    \]
    On remarque la relation $Y = \dfrac{2D}{L}\,Y_S$. Numériquement :
    \[
    Y = \frac{2\times 30\times 10^{-2}}{8{,}0\times 10^{-2}}\times 7{,}0\times 10^{-3} \approx 5{,}3\times 10^{-2}\ \text{m} = 5{,}3\ \text{cm}
    \]
\end{enumerate}
