### Exercice 1 : Équations horaires d'un projectile

\begin{enonce}
Dans un repère orthonormé $(O, \vec{i}, \vec{j})$ d'axe $Oy$ vertical ascendant, un projectile de masse $m$ est lancé depuis l'origine $O$ à l'instant $t = 0$ avec une vitesse initiale $\vec{v_0}$ faisant un angle $\alpha$ avec l'horizontale. On néglige tout frottement et l'action de l'air ; le champ de pesanteur $\vec{g}$ est uniforme et vertical.

Établir les équations horaires $x(t)$ et $y(t)$ du mouvement.
\end{enonce}

\textbf{Solution :}
Le projectile n'est soumis qu'à son poids $\vec{P} = m\vec{g}$. La deuxième loi de Newton donne :
\[
m\vec{a} = m\vec{g} \implies \vec{a} = \vec{g}
\]
En projetant sur les axes (avec $\vec{g} = -g\,\vec{j}$) :
\[
\begin{cases} a_x = 0 \\ a_y = -g \end{cases}
\]
Par intégration, en tenant compte des conditions initiales $\vec{v_0} = (v_0\cos\alpha)\,\vec{i} + (v_0\sin\alpha)\,\vec{j}$ :
\[
\begin{cases} v_x = v_0\cos\alpha \\ v_y = -g\,t + v_0\sin\alpha \end{cases}
\]
Une nouvelle intégration, avec la position initiale $x(0) = 0$ et $y(0) = 0$ :
\[
\begin{cases} x(t) = (v_0\cos\alpha)\,t \\[4pt] y(t) = -\dfrac{1}{2}\,g\,t^2 + (v_0\sin\alpha)\,t \end{cases}
\]

### Exercice 2 : Équation de la trajectoire

\begin{enonce}
On reprend le projectile de l'exercice précédent, de mêmes équations horaires.

Établir l'équation de la trajectoire $y(x)$ et préciser sa nature.
\end{enonce}

\textbf{Solution :}
On exprime le temps à partir de $x(t) = (v_0\cos\alpha)\,t$ :
\[
t = \frac{x}{v_0\cos\alpha}
\]
On reporte dans l'expression de $y(t)$ :
\[
y = -\frac{1}{2}\,g\left(\frac{x}{v_0\cos\alpha}\right)^2 + (v_0\sin\alpha)\frac{x}{v_0\cos\alpha}
\]
soit :
\[
y(x) = -\frac{g}{2\,v_0^2\cos^2\alpha}\,x^2 + (\tan\alpha)\,x
\]
C'est une fonction du second degré en $x$ : la trajectoire est une portion de \textbf{parabole}, tournée vers le bas.

### Exercice 3 : Flèche et portée

\begin{enonce}
Une balle est lancée du sol avec une vitesse $v_0 = 20\ \text{m.s}^{-1}$ sous un angle $\alpha = 30^\circ$ par rapport à l'horizontale. On prend $g = 9{,}8\ \text{m.s}^{-2}$.
\begin{enumerate}
    \item Calculer la durée totale du vol $t_v$ (retour au sol).
    \item Calculer la portée $x_P$ (distance horizontale au point de chute).
    \item Calculer la flèche $H$ (altitude maximale atteinte).
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Le projectile revient au sol quand $y = 0$ avec $x \neq 0$. À partir de $y(t) = -\dfrac{1}{2}g\,t^2 + (v_0\sin\alpha)\,t = 0$, la solution non nulle est :
    \[
    t_v = \frac{2\,v_0\sin\alpha}{g} = \frac{2\times 20\times \sin 30^\circ}{9{,}8} = \frac{2\times 20\times 0{,}50}{9{,}8} \approx 2{,}0\ \text{s}
    \]
    \item La portée est l'abscisse à cet instant :
    \[
    x_P = (v_0\cos\alpha)\,t_v = 20\times\cos 30^\circ \times 2{,}0 \approx 20\times 0{,}866\times 2{,}0 \approx 35\ \text{m}
    \]
    \item Au sommet, $v_y = 0$ donc $t_S = \dfrac{v_0\sin\alpha}{g} = \dfrac{t_v}{2} = 1{,}0\ \text{s}$. La flèche vaut :
    \[
    H = y(t_S) = \frac{v_0^2\sin^2\alpha}{2g} = \frac{(20)^2\times (0{,}50)^2}{2\times 9{,}8} \approx 5{,}1\ \text{m}
    \]
\end{enumerate}

### Exercice 4 : Influence de l'angle de tir

\begin{enonce}
Un projectile est lancé du sol avec une vitesse initiale $v_0$ fixée, sous un angle $\alpha$ variable.
\begin{enumerate}
    \item Montrer que la portée s'écrit $x_P = \dfrac{v_0^2\sin(2\alpha)}{g}$.
    \item En déduire l'angle $\alpha$ qui rend la portée maximale.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item La portée vaut $x_P = (v_0\cos\alpha)\,t_v$ avec $t_v = \dfrac{2v_0\sin\alpha}{g}$, donc :
    \[
    x_P = v_0\cos\alpha\times\frac{2v_0\sin\alpha}{g} = \frac{v_0^2\,(2\sin\alpha\cos\alpha)}{g} = \frac{v_0^2\sin(2\alpha)}{g}
    \]
    \item La portée est maximale quand $\sin(2\alpha)$ est maximal, c'est-à-dire $\sin(2\alpha) = 1$, soit $2\alpha = 90^\circ$ :
    \[
    \alpha = 45^\circ
    \]
\end{enumerate}

### Exercice 5 : Vitesse en un point de la trajectoire

\begin{enonce}
Un projectile est lancé du sol avec $v_0 = 15\ \text{m.s}^{-1}$ sous l'angle $\alpha = 53^\circ$ ($\cos 53^\circ \approx 0{,}60$ et $\sin 53^\circ \approx 0{,}80$). On prend $g = 9{,}8\ \text{m.s}^{-2}$.

Déterminer la valeur de la vitesse du projectile à l'instant $t = 1{,}0\ \text{s}$.
\end{enonce}

\textbf{Solution :}
Les composantes de la vitesse à l'instant $t$ sont :
\[
\begin{cases} v_x = v_0\cos\alpha = 15\times 0{,}60 = 9{,}0\ \text{m.s}^{-1} \\[4pt] v_y = -g\,t + v_0\sin\alpha = -9{,}8\times 1{,}0 + 15\times 0{,}80 = 2{,}2\ \text{m.s}^{-1} \end{cases}
\]
La valeur de la vitesse est :
\[
v = \sqrt{v_x^2 + v_y^2} = \sqrt{(9{,}0)^2 + (2{,}2)^2} = \sqrt{81 + 4{,}84} \approx 9{,}3\ \text{m.s}^{-1}
\]

### Exercice 6 : Tir horizontal depuis une hauteur

\begin{enonce}
Une bille est lancée horizontalement avec une vitesse $v_0 = 5{,}0\ \text{m.s}^{-1}$ depuis le bord d'une table de hauteur $h = 1{,}25\ \text{m}$. On choisit l'origine $O$ au point de lancement, $Ox$ horizontal dans le sens du mouvement et $Oy$ vertical ascendant. On prend $g = 10\ \text{m.s}^{-2}$.
\begin{enumerate}
    \item Établir les équations horaires $x(t)$ et $y(t)$.
    \item Déterminer la durée de chute avant d'atteindre le sol.
    \item En déduire la distance horizontale $d$ parcourue (point d'impact).
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Ici $\alpha = 0$, donc $\vec{v_0} = v_0\,\vec{i}$. Avec $\vec{a} = -g\,\vec{j}$ et les conditions initiales :
    \[
    \begin{cases} x(t) = v_0\,t \\[4pt] y(t) = -\dfrac{1}{2}\,g\,t^2 \end{cases}
    \]
    \item Le sol correspond à $y = -h$, soit $-\dfrac{1}{2}g\,t^2 = -h$ :
    \[
    t = \sqrt{\frac{2h}{g}} = \sqrt{\frac{2\times 1{,}25}{10}} = \sqrt{0{,}25} = 0{,}50\ \text{s}
    \]
    \item La distance horizontale parcourue est :
    \[
    d = v_0\,t = 5{,}0\times 0{,}50 = 2{,}5\ \text{m}
    \]
\end{enumerate}

### Exercice 7 : Particule chargée dans un champ électrique uniforme

\begin{enonce}
Un électron de charge $q = -e$ (avec $e = 1{,}6\times 10^{-19}\ \text{C}$) et de masse $m = 9{,}1\times 10^{-31}\ \text{kg}$ pénètre entre deux plaques horizontales d'un condensateur où règne un champ électrique uniforme $\vec{E}$ vertical, de valeur $E = 2{,}0\times 10^{4}\ \text{V.m}^{-1}$, dirigé vers le haut. On néglige le poids devant la force électrique.

Calculer la valeur de la force électrique $\vec{F}$ subie par l'électron, puis celle de son accélération, et préciser leurs sens.
\end{enonce}

\textbf{Solution :}
La force électrique vaut $\vec{F} = q\vec{E} = -e\,\vec{E}$. Sa valeur est :
\[
F = e\,E = 1{,}6\times 10^{-19}\times 2{,}0\times 10^{4} = 3{,}2\times 10^{-15}\ \text{N}
\]
Comme $q < 0$, la force $\vec{F}$ est de sens opposé à $\vec{E}$ : elle est dirigée vers le bas.

D'après la deuxième loi de Newton, $\vec{a} = \dfrac{\vec{F}}{m}$, de valeur :
\[
a = \frac{F}{m} = \frac{3{,}2\times 10^{-15}}{9{,}1\times 10^{-31}} \approx 3{,}5\times 10^{15}\ \text{m.s}^{-2}
\]
L'accélération est dirigée vers le bas, comme $\vec{F}$. Cette valeur, très grande devant $g$, justifie que l'on néglige le poids.

### Exercice 8 : Déviation entre les plaques d'un condensateur

\begin{enonce}
Un faisceau de particules de charge $q$ et de masse $m$ entre, avec une vitesse horizontale $\vec{v_0} = v_0\,\vec{i}$, au point $O$ situé à mi-distance entre deux plaques horizontales de longueur $L$. Entre les plaques règne un champ électrique uniforme $\vec{E}$ vertical (selon $-\vec{j}$). On pose $a = \dfrac{|q|E}{m}$ la valeur de l'accélération verticale. On néglige le poids.

Établir l'expression de la déviation verticale $Y_S$ à la sortie des plaques (en $x = L$).
\end{enonce}

\textbf{Solution :}
Le mouvement est analogue à celui d'un projectile. Avec $\vec{v_0} = v_0\,\vec{i}$ et une accélération verticale de valeur $a$ (dirigée selon $-\vec{j}$ pour une charge déviée vers le bas), les équations horaires sont :
\[
\begin{cases} x(t) = v_0\,t \\[4pt] y(t) = -\dfrac{1}{2}\,a\,t^2 \end{cases}
\]
On élimine le temps : $t = \dfrac{x}{v_0}$, d'où l'équation de la trajectoire :
\[
y(x) = -\frac{a}{2\,v_0^2}\,x^2
\]
À la sortie des plaques, $x = L$, donc la déviation verticale a pour valeur :
\[
Y_S = \frac{a\,L^2}{2\,v_0^2} = \frac{|q|\,E\,L^2}{2\,m\,v_0^2}
\]
