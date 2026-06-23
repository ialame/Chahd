### Problème 1 : Étude expérimentale de l'établissement du courant
\begin{enonce}
On réalise un circuit série comportant un générateur idéal de f.é.m. $E$, un conducteur ohmique de résistance $R_0 = 90\ \Omega$, une bobine d'inductance $L$ et de résistance interne $r$, et un interrupteur. À l'instant $t = 0$, on ferme l'interrupteur et on enregistre l'intensité $i(t)$ du courant ainsi que la tension $u_L(t)$ aux bornes de la bobine.

L'exploitation des courbes donne les renseignements suivants :
\begin{itemize}
    \item l'intensité se stabilise à la valeur $I_0 = 0{,}10\ \text{A}$ ;
    \item la tangente à la courbe $i(t)$ à l'origine coupe l'asymptote horizontale à l'instant $t = 4{,}0\ \text{ms}$ ;
    \item en régime permanent, la tension aux bornes de la bobine vaut $U_L = 1{,}0\ \text{V}$.
\end{itemize}
\begin{enumerate}
    \item En régime permanent, montrer que l'on peut déterminer la résistance interne $r$ de la bobine. La calculer.
    \item Déterminer la f.é.m. $E$ du générateur.
    \item Que représente l'instant $t = 4{,}0\ \text{ms}$ donné par la tangente à l'origine ? En déduire la constante de temps $\tau$.
    \item Déterminer l'inductance $L$ de la bobine.
    \item Calculer l'énergie magnétique $E_m$ emmagasinée par la bobine en régime permanent.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item En régime permanent, $\dfrac{\dd i}{\dd t} = 0$, donc la tension aux bornes de la bobine se réduit à la chute ohmique dans sa résistance interne : $U_L = r\,I_0$. On en tire :
    \[
    r = \frac{U_L}{I_0} = \frac{1{,}0}{0{,}10} = 10\ \Omega
    \]
    \item En régime permanent, la loi des mailles donne $E = R_0\,I_0 + r\,I_0 = (R_0 + r)\,I_0$ :
    \[
    E = (90 + 10)\times 0{,}10 = 100 \times 0{,}10 = 10\ \text{V}
    \]
    \item La tangente à l'origine de la courbe $i(t)$ coupe l'asymptote $i = I_0$ à l'instant $t = \tau$ : c'est une propriété caractéristique de la constante de temps. On a donc :
    \[
    \tau = 4{,}0\ \text{ms} = 4{,}0\times 10^{-3}\ \text{s}
    \]
    \item La constante de temps vaut $\tau = \dfrac{L}{R}$ avec $R = R_0 + r = 100\ \Omega$. On en déduit :
    \[
    L = R\,\tau = 100 \times 4{,}0\times 10^{-3} = 0{,}40\ \text{H}
    \]
    \item L'énergie magnétique emmagasinée en régime permanent ($i = I_0$) vaut :
    \[
    E_m = \frac{1}{2}\,L\,I_0^{2} = \frac{1}{2}\times 0{,}40 \times (0{,}10)^{2} = 2{,}0\times 10^{-3}\ \text{J} = 2{,}0\ \text{mJ}
    \]
\end{enumerate}

### Problème 2 : Établissement et rupture du courant, bilan énergétique
\begin{enonce}
Un dipôle RL est constitué d'une bobine d'inductance $L = 0{,}20\ \text{H}$ et de résistance interne négligeable, associée en série à un conducteur ohmique de résistance $R = 50\ \Omega$ et à un générateur idéal de f.é.m. $E = 5{,}0\ \text{V}$.
\begin{enumerate}
    \item On ferme l'interrupteur à $t = 0$. Établir l'équation différentielle vérifiée par $i(t)$ et donner sa solution.
    \item Calculer la constante de temps $\tau$ et l'intensité $I_0$ en régime permanent.
    \item Déterminer l'instant $t_{1/2}$ pour lequel l'intensité atteint la moitié de sa valeur finale.
    \item Une fois le régime permanent établi, on ouvre le circuit du générateur et la bobine se décharge dans la résistance $R$ (origine des temps au début de la rupture). Donner l'expression de $i(t)$ pendant cette phase.
    \item Quelle est l'énergie totale dissipée par effet Joule dans $R$ durant toute la rupture du courant ? Justifier.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item La loi des mailles donne $E = R\,i + L\,\dfrac{\dd i}{\dd t}$, soit :
    \[
    \frac{\dd i}{\dd t} + \frac{R}{L}\,i = \frac{E}{L}
    \]
    La solution, avec la condition initiale $i(0) = 0$, est :
    \[
    i(t) = \frac{E}{R}\left(1 - \e^{-t/\tau}\right)
    \]
    \item Constante de temps et intensité finale :
    \[
    \tau = \frac{L}{R} = \frac{0{,}20}{50} = 4{,}0\times 10^{-3}\ \text{s} = 4{,}0\ \text{ms}
    \]
    \[
    I_0 = \frac{E}{R} = \frac{5{,}0}{50} = 0{,}10\ \text{A} = 100\ \text{mA}
    \]
    \item On cherche $t_{1/2}$ tel que $i(t_{1/2}) = \dfrac{I_0}{2}$ :
    \[
    \frac{E}{R}\left(1 - \e^{-t_{1/2}/\tau}\right) = \frac{1}{2}\cdot\frac{E}{R}
    \implies \e^{-t_{1/2}/\tau} = \frac{1}{2}
    \implies t_{1/2} = \tau\,\ln 2
    \]
    \[
    t_{1/2} = 4{,}0\times 10^{-3} \times \ln 2 \approx 2{,}8\times 10^{-3}\ \text{s} = 2{,}8\ \text{ms}
    \]
    \item Pendant la rupture, le circuit se réduit à la bobine fermée sur $R$. La loi des mailles donne $L\,\dfrac{\dd i}{\dd t} + R\,i = 0$, de solution, avec $i(0) = I_0$ :
    \[
    i(t) = I_0\,\e^{-t/\tau}
    \]
    \item Pendant la rupture, toute l'énergie initialement emmagasinée par la bobine est dissipée par effet Joule dans $R$ (en fin de rupture $i = 0$, l'énergie magnétique stockée est nulle). Donc :
    \[
    E_J = \frac{1}{2}\,L\,I_0^{2} = \frac{1}{2}\times 0{,}20 \times (0{,}10)^{2} = 1{,}0\times 10^{-3}\ \text{J} = 1{,}0\ \text{mJ}
    \]
    Cette énergie est indépendante de la valeur de $R$.
\end{enumerate}

### Problème 3 : Détermination des caractéristiques d'une bobine
\begin{enonce}
Pour caractériser une bobine, on l'associe en série avec un conducteur ohmique de résistance $R_0 = 80\ \Omega$ et un générateur idéal de f.é.m. $E = 12\ \text{V}$. On ferme l'interrupteur à $t = 0$.

Un système d'acquisition fournit les relevés suivants :
\begin{itemize}
    \item en régime permanent, l'intensité du courant vaut $I_0 = 0{,}12\ \text{A}$ ;
    \item à l'instant $t_1 = 5{,}0\ \text{ms}$, l'intensité vaut $i(t_1) = 0{,}076\ \text{A}$.
\end{itemize}
\begin{enumerate}
    \item Déterminer la résistance totale $R$ du circuit, puis la résistance interne $r$ de la bobine.
    \item Exprimer $\e^{-t_1/\tau}$ en fonction de $i(t_1)$ et $I_0$, puis en déduire la constante de temps $\tau$. On donne $\ln(0{,}37) \approx -1{,}0$.
    \item En déduire l'inductance $L$ de la bobine.
    \item Calculer l'énergie magnétique $E_m$ emmagasinée en régime permanent.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item En régime permanent, $\dfrac{\dd i}{\dd t} = 0$ et la loi des mailles donne $E = (R_0 + r)\,I_0 = R\,I_0$. La résistance totale vaut :
    \[
    R = \frac{E}{I_0} = \frac{12}{0{,}12} = 100\ \Omega
    \]
    On en déduit la résistance interne de la bobine :
    \[
    r = R - R_0 = 100 - 80 = 20\ \Omega
    \]
    \item L'intensité s'écrit $i(t) = I_0\left(1 - \e^{-t/\tau}\right)$, d'où :
    \[
    \e^{-t_1/\tau} = 1 - \frac{i(t_1)}{I_0} = 1 - \frac{0{,}076}{0{,}12} \approx 1 - 0{,}63 = 0{,}37
    \]
    En prenant le logarithme :
    \[
    -\frac{t_1}{\tau} = \ln(0{,}37) \approx -1{,}0
    \implies \tau \approx t_1 = 5{,}0\times 10^{-3}\ \text{s} = 5{,}0\ \text{ms}
    \]
    \item De $\tau = \dfrac{L}{R}$ on tire :
    \[
    L = R\,\tau = 100 \times 5{,}0\times 10^{-3} = 0{,}50\ \text{H}
    \]
    \item L'énergie magnétique emmagasinée en régime permanent vaut :
    \[
    E_m = \frac{1}{2}\,L\,I_0^{2} = \frac{1}{2}\times 0{,}50 \times (0{,}12)^{2} = 3{,}6\times 10^{-3}\ \text{J} = 3{,}6\ \text{mJ}
    \]
\end{enumerate}
