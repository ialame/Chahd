### Problème 1 : Étude complète d'un pendule élastique horizontal
\begin{enonce}
Un solide $(S)$ de masse $m = 200\ \text{g}$, assimilé à un point matériel, est accroché à l'extrémité d'un ressort à spires non jointives, de raideur $k = 20\ \text{N.m}^{-1}$ et de masse négligeable. L'autre extrémité du ressort est fixée à un support. Le solide se déplace sans frottement sur un rail horizontal. On repère sa position par l'abscisse $x$ de son centre d'inertie $G$, mesurée par rapport à la position d'équilibre $O$ prise pour origine.

À l'instant $t = 0$, on écarte le solide d'une distance $x_m = 4{,}0\ \text{cm}$ dans le sens positif et on le lâche sans vitesse initiale.
\begin{enumerate}
    \item Établir l'équation différentielle vérifiée par l'abscisse $x(t)$.
    \item Calculer la période propre $T_0$ et la pulsation propre $\omega_0$.
    \item La solution de l'équation différentielle est de la forme $x(t) = x_m\cos\!\left(\dfrac{2\pi}{T_0}t + \varphi\right)$. Déterminer l'amplitude $x_m$ et la phase $\varphi$ à partir des conditions initiales.
    \item En déduire l'expression de la vitesse $v(t)$ du solide.
    \item Calculer l'énergie mécanique $E_m$ du système et la vitesse maximale $v_m$ du solide.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Le système $(S)$ est étudié dans le référentiel terrestre supposé galiléen. Les forces appliquées sont le poids $\vec{P}$, la réaction normale $\vec{R}$ du rail (le poids et la réaction se compensent sur la verticale) et la force de rappel $\vec{F} = -k\,x\,\vec{i}$. La deuxième loi de Newton projetée sur l'axe horizontal $(Ox)$ donne :
    \[
    -k\,x = m\,\frac{\dd^2 x}{\dd t^2}
    \]
    soit :
    \[
    \frac{\dd^2 x}{\dd t^2} + \frac{k}{m}\,x = 0
    \]
    \item On identifie $\omega_0^2 = \dfrac{k}{m}$, donc :
    \[
    \omega_0 = \sqrt{\frac{k}{m}} = \sqrt{\frac{20}{0{,}200}} = \sqrt{100} = 10\ \text{rad.s}^{-1}
    \]
    \[
    T_0 = \frac{2\pi}{\omega_0} = \frac{2\pi}{10} \approx 0{,}63\ \text{s}
    \]
    \item À $t = 0$, le solide est lâché sans vitesse initiale à l'abscisse $x_m$ :
    \[
    x(0) = x_m\cos\varphi = x_m \implies \cos\varphi = 1
    \]
    \[
    v(0) = -x_m\,\omega_0\sin\varphi = 0 \implies \sin\varphi = 0
    \]
    Ces deux conditions donnent $\varphi = 0\ \text{rad}$ et $x_m = 4{,}0\ \text{cm}$. Ainsi :
    \[
    x(t) = 4{,}0\times 10^{-2}\cos(10\,t)
    \]
    avec $x$ en mètres et $t$ en secondes.
    \item La vitesse est la dérivée de $x(t)$ :
    \[
    v(t) = \frac{\dd x}{\dd t} = -x_m\,\omega_0\sin(\omega_0\,t) = -0{,}40\sin(10\,t)
    \]
    en $\text{m.s}^{-1}$.
    \item À l'instant du lâcher, la vitesse est nulle ; l'énergie mécanique se réduit à l'énergie potentielle élastique :
    \[
    E_m = \frac{1}{2}\,k\,x_m^2 = \frac{1}{2}\times 20\times (4{,}0\times 10^{-2})^2 = 1{,}6\times 10^{-2}\ \text{J}
    \]
    En l'absence de frottement, l'énergie mécanique se conserve. La vitesse est maximale au passage par $O$ (où l'énergie potentielle est nulle) :
    \[
    E_m = \frac{1}{2}\,m\,v_m^2 \implies v_m = \sqrt{\frac{2\,E_m}{m}} = \sqrt{\frac{2\times 1{,}6\times 10^{-2}}{0{,}200}} = 0{,}40\ \text{m.s}^{-1}
    \]
    On retrouve bien $v_m = x_m\,\omega_0 = 4{,}0\times 10^{-2}\times 10 = 0{,}40\ \text{m.s}^{-1}$.
\end{enumerate}

### Problème 2 : Pendule de torsion et bilan énergétique
\begin{enonce}
Un disque homogène, de moment d'inertie $J_\Delta$ par rapport à son axe de révolution vertical $(\Delta)$, est suspendu à un fil de torsion de constante $C = 0{,}080\ \text{N.m.rad}^{-1}$. On écarte le disque de sa position d'équilibre d'un angle $\theta_m = 0{,}50\ \text{rad}$ et on le lâche sans vitesse angulaire initiale à $t = 0$. Les frottements sont d'abord supposés négligeables.

L'étude expérimentale du mouvement montre que le disque effectue $10$ oscillations en $12{,}6\ \text{s}$.
\begin{enumerate}
    \item Établir l'équation différentielle vérifiée par l'angle $\theta(t)$.
    \item Déterminer la valeur de la période propre $T_0$, puis en déduire le moment d'inertie $J_\Delta$ du disque.
    \item Donner l'expression de $\theta(t)$ avec les conditions initiales.
    \item Exprimer puis calculer l'énergie mécanique $E_m$ du pendule de torsion (énergie potentielle de torsion $E_{pt} = \dfrac{1}{2}\,C\,\theta^2$).
    \item On tient désormais compte des frottements. On observe que le régime devient pseudo-périodique. Décrire l'évolution de l'amplitude et de l'énergie mécanique, et préciser ce que devient la pseudo-période par rapport à $T_0$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Le disque, en rotation autour de l'axe $(\Delta)$, est soumis au couple de rappel du fil de torsion, de moment $\mathcal{M} = -C\,\theta$. La relation fondamentale de la dynamique de rotation s'écrit :
    \[
    J_\Delta\,\frac{\dd^2\theta}{\dd t^2} = -C\,\theta
    \]
    soit :
    \[
    \frac{\dd^2\theta}{\dd t^2} + \frac{C}{J_\Delta}\,\theta = 0
    \]
    \item La période propre se déduit de la mesure :
    \[
    T_0 = \frac{12{,}6}{10} = 1{,}26\ \text{s}
    \]
    De $T_0 = 2\pi\sqrt{\dfrac{J_\Delta}{C}}$, on tire en élevant au carré :
    \[
    T_0^2 = 4\pi^2\,\frac{J_\Delta}{C} \implies J_\Delta = \frac{C\,T_0^2}{4\pi^2} = \frac{0{,}080\times (1{,}26)^2}{4\pi^2} \approx 3{,}2\times 10^{-3}\ \text{kg.m}^2
    \]
    \item Avec $\omega_0 = \dfrac{2\pi}{T_0}$, la solution s'écrit $\theta(t) = \theta_m\cos(\omega_0\,t + \varphi)$. À $t = 0$ : $\theta(0) = \theta_m\cos\varphi = \theta_m$ donne $\cos\varphi = 1$, et $\dot\theta(0) = -\theta_m\,\omega_0\sin\varphi = 0$ donne $\sin\varphi = 0$, d'où $\varphi = 0$. Avec $\omega_0 = \dfrac{2\pi}{1{,}26} \approx 4{,}99\ \text{rad.s}^{-1}$ :
    \[
    \theta(t) = 0{,}50\cos(4{,}99\,t)
    \]
    \item L'énergie mécanique est la somme de l'énergie cinétique de rotation et de l'énergie potentielle de torsion :
    \[
    E_m = \frac{1}{2}\,J_\Delta\,\dot\theta^2 + \frac{1}{2}\,C\,\theta^2
    \]
    En l'absence de frottement, elle est constante. À $t = 0$, la vitesse angulaire est nulle, donc :
    \[
    E_m = \frac{1}{2}\,C\,\theta_m^2 = \frac{1}{2}\times 0{,}080\times (0{,}50)^2 = 1{,}0\times 10^{-2}\ \text{J}
    \]
    \item En présence de frottements, le régime est pseudo-périodique : l'amplitude des oscillations décroît progressivement au cours du temps. L'énergie mécanique n'est plus conservée ; elle diminue car les frottements dissipent de l'énergie sous forme de chaleur. La durée d'une oscillation devient la pseudo-période $T$, légèrement supérieure à la période propre $T_0$ (pour des frottements faibles, on a $T \approx T_0$).
\end{enumerate}

### Problème 3 : Pendule pesant et pendule simple synchrone
\begin{enonce}
Un pendule pesant est constitué d'une tige homogène pouvant tourner autour d'un axe horizontal $(\Delta)$ passant par l'une de ses extrémités. On note $J_\Delta$ son moment d'inertie par rapport à cet axe, $m$ sa masse et $d$ la distance entre l'axe $(\Delta)$ et le centre d'inertie $G$. On écarte le pendule d'un petit angle $\theta_m$ de sa position d'équilibre verticale et on le lâche. On prendra $g = 9{,}8\ \text{m.s}^{-2}$ et on négligera les frottements.

Pour les petites oscillations, on admet que la période propre du pendule pesant s'écrit :
\[
T_0 = 2\pi\sqrt{\frac{J_\Delta}{m\,g\,d}}
\]
\begin{enumerate}
    \item Préciser le couple responsable du mouvement et indiquer pourquoi l'hypothèse des petites oscillations est nécessaire.
    \item Pour une tige de longueur $L$, on a $J_\Delta = \dfrac{1}{3}\,m\,L^2$ et $d = \dfrac{L}{2}$. Montrer que la période propre se met sous la forme $T_0 = 2\pi\sqrt{\dfrac{2L}{3g}}$.
    \item La tige a une longueur $L = 0{,}60\ \text{m}$. Calculer la période propre $T_0$.
    \item On veut réaliser un pendule simple de même période propre que ce pendule pesant. Déterminer la longueur $\ell$ de ce pendule simple synchrone.
    \item Que vaudrait la période si l'on doublait la masse $m$ de la tige (longueur inchangée) ? Justifier.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item C'est le poids $\vec{P}$ de la tige, appliqué en $G$, qui crée un couple de rappel ramenant le pendule vers sa position d'équilibre verticale. Son moment par rapport à $(\Delta)$ fait intervenir $\sin\theta$. L'équation différentielle exacte n'est pas celle d'un oscillateur harmonique ; ce n'est qu'en se limitant aux petites oscillations ($\sin\theta \approx \theta$ en radians) que le mouvement devient sinusoïdal et que la période $T_0$ ci-dessus est valable.
    \item En remplaçant $J_\Delta = \dfrac{1}{3}\,m\,L^2$ et $d = \dfrac{L}{2}$ :
    \[
    T_0 = 2\pi\sqrt{\frac{\frac{1}{3}\,m\,L^2}{m\,g\,\frac{L}{2}}} = 2\pi\sqrt{\frac{\frac{1}{3}\,L^2}{\frac{1}{2}\,g\,L}} = 2\pi\sqrt{\frac{2L}{3g}}
    \]
    La masse $m$ se simplifie : la période ne dépend pas de la masse.
    \item Application numérique :
    \[
    T_0 = 2\pi\sqrt{\frac{2\times 0{,}60}{3\times 9{,}8}} = 2\pi\sqrt{\frac{1{,}2}{29{,}4}} = 2\pi\sqrt{4{,}08\times 10^{-2}} \approx 1{,}3\ \text{s}
    \]
    \item Un pendule simple a pour période propre $T_0 = 2\pi\sqrt{\dfrac{\ell}{g}}$. Pour qu'il soit synchrone du pendule pesant, on égalise les expressions :
    \[
    2\pi\sqrt{\frac{\ell}{g}} = 2\pi\sqrt{\frac{2L}{3g}} \implies \ell = \frac{2L}{3} = \frac{2\times 0{,}60}{3} = 0{,}40\ \text{m}
    \]
    \item D'après la question 2, la période propre $T_0 = 2\pi\sqrt{\dfrac{2L}{3g}}$ ne dépend pas de la masse. En doublant la masse $m$ à longueur inchangée, la période reste donc égale à $1{,}3\ \text{s}$.
\end{enumerate}
