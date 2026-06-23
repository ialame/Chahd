### Exercice 1 : Équation différentielle du pendule élastique horizontal
\begin{enonce}
Un solide de masse $m$ accroché à un ressort de raideur $k$ se déplace sans frottement sur un plan horizontal. On repère sa position par l'abscisse $x$ de son centre d'inertie, mesurée à partir de la position d'équilibre.

Établir l'équation différentielle vérifiée par $x(t)$ et donner l'expression de la période propre $T_0$.
\end{enonce}

\textbf{Solution :}
Le système est le solide, étudié dans un référentiel terrestre supposé galiléen. Les forces appliquées sont le poids $\vec{P}$, la réaction normale $\vec{R}$ et la force de rappel du ressort $\vec{F} = -k\,x\,\vec{i}$. Sur l'axe horizontal $(Ox)$, le poids et la réaction n'ont pas de composante. La deuxième loi de Newton projetée sur $(Ox)$ donne :
\[
-k\,x = m\,\frac{\dd^2 x}{\dd t^2}
\]
soit, sous forme canonique :
\[
\frac{\dd^2 x}{\dd t^2} + \frac{k}{m}\,x = 0
\]
On identifie la pulsation propre $\omega_0^2 = \dfrac{k}{m}$, d'où la période propre :
\[
T_0 = \frac{2\pi}{\omega_0} = 2\pi\sqrt{\frac{m}{k}}
\]

### Exercice 2 : Calcul de la période propre
\begin{enonce}
Un pendule élastique horizontal est constitué d'un solide de masse $m = 200\ \text{g}$ et d'un ressort de raideur $k = 32\ \text{N.m}^{-1}$.
\begin{enumerate}
    \item Calculer la période propre $T_0$ des oscillations.
    \item En déduire la fréquence propre $f_0$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item La période propre vaut :
    \[
    T_0 = 2\pi\sqrt{\frac{m}{k}} = 2\pi\sqrt{\frac{0{,}200}{32}} = 2\pi\sqrt{6{,}25\times 10^{-3}} \approx 0{,}50\ \text{s}
    \]
    \item La fréquence propre est :
    \[
    f_0 = \frac{1}{T_0} = \frac{1}{0{,}50} = 2{,}0\ \text{Hz}
    \]
\end{enumerate}

### Exercice 3 : Pendule élastique vertical
\begin{enonce}
On suspend verticalement un ressort de raideur $k = 25\ \text{N.m}^{-1}$. On y accroche un solide de masse $m = 100\ \text{g}$ ; le ressort s'allonge alors d'une longueur $\Delta\ell_0$ à l'équilibre. On prendra $g = 9{,}8\ \text{m.s}^{-2}$.
\begin{enumerate}
    \item Déterminer l'allongement $\Delta\ell_0$ à l'équilibre.
    \item On écarte le solide verticalement de sa position d'équilibre et on le lâche. Montrer que l'équation différentielle ne dépend pas de $\Delta\ell_0$ et donner la période propre $T_0$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item À l'équilibre, le poids compense la tension du ressort : $m\,g = k\,\Delta\ell_0$, d'où :
    \[
    \Delta\ell_0 = \frac{m\,g}{k} = \frac{0{,}100 \times 9{,}8}{25} \approx 3{,}9\times 10^{-2}\ \text{m} = 3{,}9\ \text{cm}
    \]
    \item On repère la position par $x$ à partir de la position d'équilibre (axe vertical descendant). L'allongement du ressort vaut $\Delta\ell_0 + x$. La deuxième loi de Newton sur l'axe donne :
    \[
    m\,g - k(\Delta\ell_0 + x) = m\,\frac{\dd^2 x}{\dd t^2}
    \]
    Comme $m\,g = k\,\Delta\ell_0$, ces termes se simplifient :
    \[
    \frac{\dd^2 x}{\dd t^2} + \frac{k}{m}\,x = 0
    \]
    L'équation est identique à celle du pendule horizontal. La période propre est :
    \[
    T_0 = 2\pi\sqrt{\frac{m}{k}} = 2\pi\sqrt{\frac{0{,}100}{25}} \approx 0{,}40\ \text{s}
    \]
\end{enumerate}

### Exercice 4 : Pendule de torsion
\begin{enonce}
Une tige homogène est suspendue en son milieu à un fil de torsion de constante $C = 4{,}0\times 10^{-2}\ \text{N.m.rad}^{-1}$. Le moment d'inertie de la tige par rapport à l'axe de rotation vaut $J_\Delta = 1{,}0\times 10^{-3}\ \text{kg.m}^2$. On écarte la tige d'un angle $\theta_m$ de sa position d'équilibre puis on la lâche.
\begin{enumerate}
    \item Établir l'équation différentielle vérifiée par l'angle $\theta(t)$.
    \item Calculer la période propre $T_0$ des oscillations.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Le fil exerce un couple de rappel de moment $\mathcal{M} = -C\,\theta$. La relation fondamentale de la dynamique de rotation s'écrit $J_\Delta\,\dfrac{\dd^2\theta}{\dd t^2} = -C\,\theta$, soit :
    \[
    \frac{\dd^2\theta}{\dd t^2} + \frac{C}{J_\Delta}\,\theta = 0
    \]
    \item La pulsation propre vérifie $\omega_0^2 = \dfrac{C}{J_\Delta}$, donc :
    \[
    T_0 = 2\pi\sqrt{\frac{J_\Delta}{C}} = 2\pi\sqrt{\frac{1{,}0\times 10^{-3}}{4{,}0\times 10^{-2}}} = 2\pi\sqrt{2{,}5\times 10^{-2}} \approx 0{,}99\ \text{s}
    \]
\end{enumerate}

### Exercice 5 : Pendule simple aux petites oscillations
\begin{enonce}
Un pendule simple est constitué d'une bille de petite dimension de masse $m = 50\ \text{g}$ suspendue à un fil inextensible de longueur $\ell = 0{,}80\ \text{m}$ et de masse négligeable. On écarte le pendule d'un petit angle puis on le lâche. On prendra $g = 9{,}8\ \text{m.s}^{-2}$.
\begin{enumerate}
    \item Donner l'expression de la période propre $T_0$ pour les petites oscillations.
    \item Calculer $T_0$.
    \item La période dépend-elle de la masse $m$ ?
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Pour les petites oscillations ($\theta$ petit, $\sin\theta \approx \theta$ en radians), la période propre du pendule simple s'écrit :
    \[
    T_0 = 2\pi\sqrt{\frac{\ell}{g}}
    \]
    \item Application numérique :
    \[
    T_0 = 2\pi\sqrt{\frac{0{,}80}{9{,}8}} = 2\pi\sqrt{8{,}16\times 10^{-2}} \approx 1{,}8\ \text{s}
    \]
    \item L'expression de $T_0$ ne fait pas intervenir la masse $m$ : la période propre est indépendante de la masse de la bille.
\end{enumerate}

### Exercice 6 : Conservation de l'énergie mécanique
\begin{enonce}
Un pendule élastique horizontal (masse $m = 250\ \text{g}$, raideur $k = 40\ \text{N.m}^{-1}$) oscille sans frottement. On l'écarte de sa position d'équilibre d'une distance $x_m = 5{,}0\ \text{cm}$ et on le lâche sans vitesse initiale.
\begin{enumerate}
    \item Calculer l'énergie mécanique du système.
    \item En déduire la vitesse maximale $v_m$ du solide lors de son passage par la position d'équilibre.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item En l'absence de frottement, l'énergie mécanique se conserve. On choisit l'origine de l'énergie potentielle élastique à la position d'équilibre. À l'instant du lâcher, la vitesse est nulle, donc l'énergie mécanique est purement potentielle élastique :
    \[
    E_m = \frac{1}{2}\,k\,x_m^2 = \frac{1}{2}\times 40 \times (5{,}0\times 10^{-2})^2 = 5{,}0\times 10^{-2}\ \text{J}
    \]
    \item Au passage par la position d'équilibre, l'énergie potentielle élastique est nulle et l'énergie mécanique est entièrement cinétique :
    \[
    E_m = \frac{1}{2}\,m\,v_m^2 \implies v_m = \sqrt{\frac{2\,E_m}{m}} = \sqrt{\frac{2\times 5{,}0\times 10^{-2}}{0{,}250}} \approx 0{,}63\ \text{m.s}^{-1}
    \]
\end{enumerate}

### Exercice 7 : Oscillations libres amorties
\begin{enonce}
Un pendule élastique oscille en présence de frottements faibles dus à l'air. L'enregistrement de l'élongation montre des oscillations dont l'amplitude diminue au cours du temps. On relève une durée de $4{,}2\ \text{s}$ pour $6$ oscillations successives.
\begin{enumerate}
    \item Comment qualifie-t-on ce régime ? Définir la pseudo-période $T$.
    \item Calculer la valeur de la pseudo-période $T$.
    \item Sur le plan énergétique, qu'arrive-t-il à l'énergie mécanique du système ?
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Lorsque les frottements sont faibles, le système oscille avec une amplitude qui décroît : c'est le régime pseudo-périodique. La pseudo-période $T$ est la durée séparant deux passages successifs dans le même sens par la position d'équilibre (durée d'une oscillation).
    \item La durée de $6$ oscillations vaut $4{,}2\ \text{s}$, donc :
    \[
    T = \frac{4{,}2}{6} = 0{,}70\ \text{s}
    \]
    \item L'énergie mécanique n'est pas conservée : elle diminue au cours du temps car les frottements dissipent de l'énergie sous forme de chaleur (transfert thermique vers le milieu extérieur).
\end{enumerate}

### Exercice 8 : Détermination de la raideur d'un ressort
\begin{enonce}
On souhaite mesurer la raideur $k$ d'un ressort. On y accroche un solide de masse $m = 0{,}160\ \text{kg}$ pour former un pendule élastique horizontal, et on mesure une période propre $T_0 = 0{,}40\ \text{s}$.

Déterminer la valeur de la raideur $k$.
\end{enonce}

\textbf{Solution :}
À partir de l'expression de la période propre $T_0 = 2\pi\sqrt{\dfrac{m}{k}}$, on élève au carré :
\[
T_0^2 = 4\pi^2\,\frac{m}{k} \implies k = \frac{4\pi^2\,m}{T_0^2}
\]
Application numérique :
\[
k = \frac{4\pi^2 \times 0{,}160}{(0{,}40)^2} = \frac{6{,}32}{0{,}16} \approx 39{,}5\ \text{N.m}^{-1}
\]
