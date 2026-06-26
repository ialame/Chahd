### Problème 1 : Luge sur une piste avec frottements
\begin{enonce}
Une luge, de masse totale $m = 50\ \text{kg}$, part sans vitesse initiale du point $A$. Elle descend une piste rectiligne $AB$ inclinée d'un angle $\alpha = 30^\circ$ sur l'horizontale, de longueur $AB = 20\ \text{m}$, puis poursuit sur une portion horizontale $BC$. Sur tout le trajet, les frottements sont équivalents à une force constante $f = 50\ \text{N}$ opposée au mouvement. On prend $g = 9{,}8\ \text{m}\cdot\text{s}^{-2}$.
\begin{enumerate}
    \item Sur la portion $AB$, calculer le travail du poids, celui de la réaction normale et celui de la force de frottement.
    \item En déduire l'énergie cinétique puis la vitesse de la luge en $B$.
    \item Sur la portion horizontale $BC$, la luge finit par s'arrêter en $C$. Déterminer la distance $BC$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item La dénivellation est $h = AB\sin\alpha = 20 \times \sin 30^\circ = 10\ \text{m}$.
\[
W_{AB}(\vec{P}) = m\,g\,h = 50 \times 9{,}8 \times 10 = 4900\ \text{J}
\]
\[
W_{AB}(\vec{R}_N) = 0
\qquad
W_{AB}(\vec{f}) = -f\times AB = -50 \times 20 = -1000\ \text{J}
\]
    \item Théorème de l'énergie cinétique entre $A$ ($v_A = 0$) et $B$ :
\[
E_c(B) = \frac{1}{2}m v_B^{2} - 0 = \sum W_{AB} = 4900 - 1000 = 3900\ \text{J}
\]
\[
v_B = \sqrt{\frac{2\,E_c(B)}{m}} = \sqrt{\frac{2 \times 3900}{50}} = \sqrt{156} \approx 12{,}5\ \text{m}\cdot\text{s}^{-1}
\]
    \item Sur $BC$ (horizontale), le poids et la réaction ne travaillent pas ; seule $\vec{f}$ travaille. Entre $B$ et l'arrêt $C$ ($v_C = 0$) :
\[
0 - E_c(B) = -f\times BC
\quad\Longrightarrow\quad
BC = \frac{E_c(B)}{f} = \frac{3900}{50} = 78\ \text{m}
\]
\end{enumerate}

### Problème 2 : Distance d'arrêt et sécurité routière
\begin{enonce}
Une voiture de masse $m = 1000\ \text{kg}$ roule à la vitesse $v_0 = 20\ \text{m}\cdot\text{s}^{-1}$ (soit $72\ \text{km}\cdot\text{h}^{-1}$) sur une route horizontale sèche. Lors d'un freinage d'urgence, la route sèche exerce une force de freinage constante $F = 5{,}0\times 10^{3}\ \text{N}$. On prend $g = 9{,}8\ \text{m}\cdot\text{s}^{-2}$.
\begin{enumerate}
    \item Calculer l'énergie cinétique de la voiture à la vitesse $v_0$.
    \item Déterminer la distance de freinage $d$ (distance parcourue pendant le freinage seul).
    \item La même voiture roule maintenant à $v_1 = 30\ \text{m}\cdot\text{s}^{-1}$. Calculer la nouvelle distance de freinage.
    \item Sur route mouillée, la force de freinage n'est plus que $F' = 2{,}5\times 10^{3}\ \text{N}$. Reprendre la question 2 et conclure.
    \item Avant de freiner, le conducteur met $t = 1{,}0\ \text{s}$ à réagir (temps de réaction). À $v_0 = 20\ \text{m}\cdot\text{s}^{-1}$, quelle distance parcourt-il pendant ce temps ? En déduire la distance d'arrêt totale sur route sèche.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item $E_c = \dfrac{1}{2}m v_0^{2} = \dfrac{1}{2}\times 1000 \times 20^{2} = 2{,}0\times 10^{5}\ \text{J}$.
    \item Seule la force de freinage travaille (résistante) : $W = -F\,d$. À l'arrêt :
\[
0 - \frac{1}{2}m v_0^{2} = -F\,d
\quad\Longrightarrow\quad
d = \frac{m v_0^{2}}{2F} = \frac{2{,}0\times 10^{5}}{5{,}0\times 10^{3}} = 40\ \text{m}
\]
    \item À $v_1 = 30\ \text{m}\cdot\text{s}^{-1}$ :
\[
d_1 = \frac{m v_1^{2}}{2F} = \frac{1000 \times 30^{2}}{2 \times 5{,}0\times 10^{3}} = 90\ \text{m}
\]
    La vitesse a été multipliée par $1{,}5$ et la distance par $1{,}5^{2} = 2{,}25$ ($40 \times 2{,}25 = 90$).
    \item Avec $F' = 2{,}5\times 10^{3}\ \text{N}$ :
\[
d' = \frac{m v_0^{2}}{2F'} = \frac{2{,}0\times 10^{5}}{2{,}5\times 10^{3}} = 80\ \text{m}
\]
    La force de freinage étant deux fois plus faible, la distance double : sur route mouillée, il faut doubler les distances de sécurité.
    \item Pendant le temps de réaction, la voiture garde la vitesse $v_0$ : $d_r = v_0 \times t = 20 \times 1{,}0 = 20\ \text{m}$. La distance d'arrêt totale sur route sèche vaut :
\[
D = d_r + d = 20 + 40 = 60\ \text{m}
\]
\end{enumerate}

### Problème 3 : Volant d'inertie (énergie de rotation)
\begin{enonce}
Un volant d'inertie est assimilé à un disque homogène de masse $m = 20\ \text{kg}$ et de rayon $R = 0{,}25\ \text{m}$, tournant autour de son axe de symétrie. Pour un disque, $J_\Delta = \dfrac{1}{2}\,m\,R^{2}$. Il tourne à la fréquence $N = 600\ \text{tr}\cdot\text{min}^{-1}$.
\begin{enumerate}
    \item Calculer le moment d'inertie $J_\Delta$ du volant et sa vitesse angulaire $\omega$.
    \item En déduire l'énergie cinétique de rotation stockée dans le volant.
    \item On coupe le moteur : un couple de freinage de moment constant $M = 2{,}0\ \text{N}\cdot\text{m}$ s'oppose à la rotation. Sachant que le travail d'un tel couple sur un angle $\theta$ vaut $W = -M\,\theta$, déterminer l'angle $\theta$ parcouru jusqu'à l'arrêt, puis le nombre de tours correspondant.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Moment d'inertie :
\[
J_\Delta = \frac{1}{2}\,m\,R^{2} = \frac{1}{2}\times 20 \times (0{,}25)^{2} = 0{,}625\ \text{kg}\cdot\text{m}^{2}
\]
    Vitesse angulaire : $\omega = \dfrac{2\pi N}{60} = \dfrac{2\pi \times 600}{60} = 20\pi \approx 62{,}8\ \text{rad}\cdot\text{s}^{-1}$.
    \item Énergie cinétique de rotation :
\[
E_c = \frac{1}{2}\,J_\Delta\,\omega^{2} = \frac{1}{2}\times 0{,}625 \times (62{,}8)^{2} \approx 1{,}23\times 10^{3}\ \text{J}
\]
    \item Théorème de l'énergie cinétique appliqué à la rotation, entre la vitesse $\omega$ et l'arrêt :
\[
0 - E_c = W = -M\,\theta
\quad\Longrightarrow\quad
\theta = \frac{E_c}{M} = \frac{1{,}23\times 10^{3}}{2{,}0} \approx 617\ \text{rad}
\]
    Le nombre de tours est :
\[
n = \frac{\theta}{2\pi} = \frac{617}{2\pi} \approx 98\ \text{tours}
\]
\end{enumerate}
