### Problème 1 : Chute d'une bille dans un liquide visqueux
\begin{enonce}
On étudie la chute verticale d'une bille en acier de masse $m = 16{,}0\ \text{g}$ et de volume $V = 2{,}0\ \text{cm}^3$ dans une éprouvette remplie de glycérine de masse volumique $\rho_f = 1{,}26\times 10^{3}\ \text{kg.m}^{-3}$. La bille est lâchée sans vitesse initiale à l'instant $t = 0$. La force de frottement fluide est modélisée par $\vec{f} = -k\,\vec{v}$ avec $k = 0{,}80\ \text{kg.s}^{-1}$. On prend $g = 9{,}8\ \text{m.s}^{-2}$ et on oriente l'axe $(Oz)$ verticalement vers le bas.
\begin{enumerate}
    \item Faire le bilan des forces s'exerçant sur la bille et calculer l'intensité de la poussée d'Archimède.
    \item En appliquant la deuxième loi de Newton, établir l'équation différentielle vérifiée par la vitesse $v(t)$.
    \item Déterminer l'accélération de la bille à l'instant initial $t = 0$. Commenter.
    \item Déterminer l'expression littérale puis la valeur de la vitesse limite $v_\ell$.
    \item Donner l'expression du temps caractéristique $\tau$ et calculer sa valeur. Au bout de combien de temps le régime permanent est-il pratiquement atteint ?
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item La bille est soumise à trois forces :
    \begin{itemize}
        \item le poids $\vec{P}$, dirigé vers le bas, d'intensité $P = mg = 16{,}0\times 10^{-3}\times 9{,}8 = 0{,}157\ \text{N}$ ;
        \item la poussée d'Archimède $\vec{F_A}$, dirigée vers le haut, d'intensité $F_A = \rho_f\,V\,g$ ;
        \item la force de frottement fluide $\vec{f} = -k\,\vec{v}$, dirigée vers le haut pendant la chute.
    \end{itemize}
    Calcul de la poussée d'Archimède :
    \[
    F_A = \rho_f\,V\,g = 1{,}26\times 10^{3} \times 2{,}0\times 10^{-6} \times 9{,}8 = 2{,}47\times 10^{-2}\ \text{N}
    \]
    \item La deuxième loi de Newton projetée sur $(Oz)$ orienté vers le bas s'écrit, avec $+mg$, $-F_A$ et $-k\,v$ :
    \[
    m\,\frac{\dd v}{\dd t} = mg - \rho_f V g - k\,v
    \]
    soit, en divisant par $m$ :
    \[
    \frac{\dd v}{\dd t} = g\left(1 - \frac{\rho_f V}{m}\right) - \frac{k}{m}\,v
    \]
    \item À $t = 0$, $v = 0$, donc le terme de frottement est nul :
    \[
    \left(\frac{\dd v}{\dd t}\right)_{t=0} = \frac{mg - \rho_f V g}{m} = \frac{0{,}157 - 2{,}47\times 10^{-2}}{16{,}0\times 10^{-3}} = 8{,}3\ \text{m.s}^{-2}
    \]
    L'accélération initiale est maximale ; elle est légèrement inférieure à $g$ à cause de la poussée d'Archimède. Le frottement étant nul au départ, le mouvement est d'abord uniformément accéléré.
    \item En régime permanent, la vitesse est constante donc $\dfrac{\dd v}{\dd t} = 0$ :
    \[
    0 = mg - \rho_f V g - k\,v_\ell \implies v_\ell = \frac{(m - \rho_f V)\,g}{k}
    \]
    Application numérique :
    \[
    v_\ell = \frac{\left(16{,}0\times 10^{-3} - 1{,}26\times 10^{3}\times 2{,}0\times 10^{-6}\right)\times 9{,}8}{0{,}80} = \frac{0{,}157 - 2{,}47\times 10^{-2}}{0{,}80}
    \]
    \[
    v_\ell = \frac{0{,}133}{0{,}80} \approx 0{,}17\ \text{m.s}^{-1}
    \]
    \item L'équation différentielle se met sous la forme $\dfrac{\dd v}{\dd t} + \dfrac{k}{m}\,v = g\left(1 - \dfrac{\rho_f V}{m}\right)$. Par identification avec $\dfrac{\dd v}{\dd t} + \dfrac{v}{\tau} = \text{cte}$, le temps caractéristique est :
    \[
    \tau = \frac{m}{k} = \frac{16{,}0\times 10^{-3}}{0{,}80} = 2{,}0\times 10^{-2}\ \text{s} = 20\ \text{ms}
    \]
    Le régime permanent est pratiquement atteint au bout de $5\tau = 0{,}10\ \text{s}$.
\end{enumerate}

### Problème 2 : Étude d'une courbe et résolution par la méthode d'Euler
\begin{enonce}
Lors de la chute d'un solide de masse $m = 0{,}10\ \text{kg}$ dans un fluide, on néglige la poussée d'Archimède et on modélise le frottement par $f = k\,v$. La vitesse vérifie l'équation différentielle :
\[
\frac{\dd v}{\dd t} = g - \frac{k}{m}\,v
\]
On prend $g = 9{,}8\ \text{m.s}^{-2}$. L'enregistrement de la vitesse fournit les renseignements suivants :
\begin{itemize}
    \item la vitesse part de $v(0) = 0$ ;
    \item la pente de la tangente à l'origine vaut $9{,}8\ \text{m.s}^{-2}$ ;
    \item la vitesse se stabilise à la valeur $v_\ell = 4{,}9\ \text{m.s}^{-1}$.
\end{itemize}
\begin{enumerate}
    \item Justifier la valeur de la pente de la tangente à l'origine.
    \item Déterminer la valeur du coefficient de frottement $k$.
    \item En déduire le temps caractéristique $\tau$.
    \item On résout numériquement l'équation différentielle par la méthode d'Euler avec un pas $\Delta t = 0{,}10\ \text{s}$. Rappeler la relation de récurrence puis calculer les vitesses $v_1$, $v_2$ et $v_3$ aux instants $t_1$, $t_2$ et $t_3$.
    \item Comparer la vitesse $v_3$ obtenue à la vitesse limite et interpréter l'évolution de l'accélération.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item La pente de la tangente à l'origine est l'accélération initiale $\left(\dfrac{\dd v}{\dd t}\right)_{t=0}$. Comme $v(0) = 0$, le terme de frottement $\dfrac{k}{m}v$ s'annule et :
    \[
    \left(\frac{\dd v}{\dd t}\right)_{t=0} = g = 9{,}8\ \text{m.s}^{-2}
    \]
    Au départ, le frottement étant nul, le solide chute presque librement.
    \item À la vitesse limite, $\dfrac{\dd v}{\dd t} = 0$, donc $g = \dfrac{k}{m}\,v_\ell$, d'où :
    \[
    k = \frac{mg}{v_\ell} = \frac{0{,}10\times 9{,}8}{4{,}9} = 0{,}20\ \text{kg.s}^{-1}
    \]
    \item Le temps caractéristique vaut :
    \[
    \tau = \frac{m}{k} = \frac{0{,}10}{0{,}20} = 0{,}50\ \text{s}
    \]
    \item La méthode d'Euler repose sur la relation de récurrence :
    \[
    v_{n+1} = v_n + a_n\,\Delta t \qquad \text{avec} \qquad a_n = g - \frac{k}{m}\,v_n
    \]
    Ici $\dfrac{k}{m} = \dfrac{0{,}20}{0{,}10} = 2{,}0\ \text{s}^{-1}$.

    À $t_0 = 0$ : $v_0 = 0$ et $a_0 = 9{,}8 - 2{,}0\times 0 = 9{,}8\ \text{m.s}^{-2}$.
    \[
    v_1 = v_0 + a_0\,\Delta t = 0 + 9{,}8\times 0{,}10 = 0{,}98\ \text{m.s}^{-1}
    \]
    À $t_1 = 0{,}10\ \text{s}$ : $a_1 = 9{,}8 - 2{,}0\times 0{,}98 = 7{,}84\ \text{m.s}^{-2}$.
    \[
    v_2 = v_1 + a_1\,\Delta t = 0{,}98 + 7{,}84\times 0{,}10 = 1{,}76\ \text{m.s}^{-1}
    \]
    À $t_2 = 0{,}20\ \text{s}$ : $a_2 = 9{,}8 - 2{,}0\times 1{,}76 = 6{,}28\ \text{m.s}^{-2}$.
    \[
    v_3 = v_2 + a_2\,\Delta t = 1{,}76 + 6{,}28\times 0{,}10 = 2{,}39\ \text{m.s}^{-1}
    \]
    \item La vitesse $v_3 \approx 2{,}4\ \text{m.s}^{-1}$ reste nettement inférieure à la vitesse limite $v_\ell = 4{,}9\ \text{m.s}^{-1}$ : après $0{,}30\ \text{s}$ (soit $0{,}6\,\tau$), le régime permanent n'est pas encore atteint. On observe que l'accélération diminue à chaque pas ($9{,}8$, puis $7{,}84$, puis $6{,}28\ \text{m.s}^{-2}$) : à mesure que la vitesse augmente, la force de frottement croît et compense progressivement le poids, jusqu'à ce que l'accélération s'annule à la vitesse limite.
\end{enumerate}

### Problème 3 : Comparaison des modèles de frottement linéaire et quadratique
\begin{enonce}
Une bille de masse $m = 25\ \text{g}$ tombe dans un fluide. On néglige la poussée d'Archimède et on prend $g = 9{,}8\ \text{m.s}^{-2}$. On envisage deux modèles pour la force de frottement fluide.

\textbf{Modèle A} (linéaire) : $f = k_1\,v$ avec $k_1 = 0{,}49\ \text{kg.s}^{-1}$.

\textbf{Modèle B} (quadratique) : $f = k_2\,v^2$ avec $k_2 = 0{,}10\ \text{kg.m}^{-1}$.
\begin{enumerate}
    \item Pour chaque modèle, établir l'équation différentielle vérifiée par la vitesse $v(t)$.
    \item Déterminer la vitesse limite $v_\ell$ dans chacun des deux modèles.
    \item Pour le modèle A, calculer l'accélération de la bille lorsque sa vitesse vaut $v = 0{,}25\ \text{m.s}^{-1}$.
    \item Pour le modèle B, on applique la méthode d'Euler avec un pas $\Delta t = 0{,}050\ \text{s}$ à partir de $v(0)=0$. Calculer $v_1$ et $v_2$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item La deuxième loi de Newton sur l'axe $(Oz)$ orienté vers le bas donne, avec le poids $+mg$ et le frottement dirigé vers le haut :

    Modèle A :
    \[
    m\,\frac{\dd v}{\dd t} = mg - k_1\,v \implies \frac{\dd v}{\dd t} = g - \frac{k_1}{m}\,v
    \]
    Modèle B :
    \[
    m\,\frac{\dd v}{\dd t} = mg - k_2\,v^2 \implies \frac{\dd v}{\dd t} = g - \frac{k_2}{m}\,v^2
    \]
    \item En régime permanent, $\dfrac{\dd v}{\dd t} = 0$.

    Modèle A :
    \[
    v_\ell = \frac{mg}{k_1} = \frac{25\times 10^{-3}\times 9{,}8}{0{,}49} = 0{,}50\ \text{m.s}^{-1}
    \]
    Modèle B :
    \[
    v_\ell = \sqrt{\frac{mg}{k_2}} = \sqrt{\frac{25\times 10^{-3}\times 9{,}8}{0{,}10}} = \sqrt{2{,}45} \approx 1{,}6\ \text{m.s}^{-1}
    \]
    \item Pour le modèle A, avec $\dfrac{k_1}{m} = \dfrac{0{,}49}{25\times 10^{-3}} = 19{,}6\ \text{s}^{-1}$ :
    \[
    \frac{\dd v}{\dd t} = g - \frac{k_1}{m}\,v = 9{,}8 - 19{,}6\times 0{,}25 = 9{,}8 - 4{,}9 = 4{,}9\ \text{m.s}^{-2}
    \]
    Quand $v$ atteint la moitié de la vitesse limite, l'accélération vaut la moitié de $g$.
    \item Pour le modèle B, la relation d'Euler est $v_{n+1} = v_n + a_n\,\Delta t$ avec $a_n = g - \dfrac{k_2}{m}\,v_n^2$ et $\dfrac{k_2}{m} = \dfrac{0{,}10}{25\times 10^{-3}} = 4{,}0\ \text{m}^{-1}.\text{s}^{0}$ (en $\text{m}^{-1}$).

    À $t_0 = 0$ : $v_0 = 0$ et $a_0 = 9{,}8 - 4{,}0\times 0^2 = 9{,}8\ \text{m.s}^{-2}$.
    \[
    v_1 = v_0 + a_0\,\Delta t = 0 + 9{,}8\times 0{,}050 = 0{,}49\ \text{m.s}^{-1}
    \]
    À $t_1 = 0{,}050\ \text{s}$ : $a_1 = 9{,}8 - 4{,}0\times (0{,}49)^2 = 9{,}8 - 0{,}96 = 8{,}84\ \text{m.s}^{-2}$.
    \[
    v_2 = v_1 + a_1\,\Delta t = 0{,}49 + 8{,}84\times 0{,}050 \approx 0{,}93\ \text{m.s}^{-1}
    \]
\end{enumerate}
