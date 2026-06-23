### Problème 1 : Étude expérimentale de la charge d'un condensateur
\begin{enonce}
On réalise un circuit série comportant un générateur idéal de f.é.m. $E = 12\ \text{V}$, un conducteur ohmique de résistance $R$, un condensateur de capacité $C$ initialement déchargé et un interrupteur. À l'instant $t = 0$, on ferme l'interrupteur et on visualise la tension $u_C(t)$ aux bornes du condensateur.

L'exploitation de la courbe donne les renseignements suivants :
\begin{itemize}
    \item la tension se stabilise à la valeur $U_\infty = 12\ \text{V}$ ;
    \item la tangente à la courbe à l'origine coupe l'asymptote horizontale à l'instant $t = 5\ \text{ms}$ ;
    \item la résistance utilisée vaut $R = 5{,}0\ \text{k}\Omega$.
\end{itemize}
\begin{enumerate}
    \item Justifier que la valeur finale de $u_C$ est égale à $E$.
    \item Que représente l'instant $t = 5\ \text{ms}$ déterminé par la tangente à l'origine ? En déduire la valeur de la constante de temps $\tau$.
    \item Déterminer la capacité $C$ du condensateur.
    \item Calculer l'énergie $E_e$ emmagasinée par le condensateur en fin de charge.
    \item Calculer l'intensité du courant à l'instant $t = 0$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item En régime permanent, la tension $u_C$ est constante donc $\dfrac{\dd u_C}{\dd t} = 0$, d'où $i = C\dfrac{\dd u_C}{\dd t} = 0$. La tension aux bornes de $R$ est alors nulle ($u_R = Ri = 0$) et la loi des mailles $E = u_R + u_C$ donne $u_C = E = 12\ \text{V}$, ce qui est conforme à la valeur observée.
    \item La tangente à l'origine coupe l'asymptote $u_C = E$ à l'instant $t = \tau$ : c'est une propriété caractéristique de la constante de temps. On a donc :
    \[
    \tau = 5\ \text{ms} = 5{,}0\times 10^{-3}\ \text{s}
    \]
    \item De $\tau = RC$ on tire :
    \[
    C = \frac{\tau}{R} = \frac{5{,}0\times 10^{-3}}{5{,}0\times 10^{3}} = 1{,}0\times 10^{-6}\ \text{F} = 1{,}0\ \mu\text{F}
    \]
    \item L'énergie emmagasinée en fin de charge ($u_C = E$) vaut :
    \[
    E_e = \frac{1}{2}\,C\,E^2 = \frac{1}{2}\times 1{,}0\times 10^{-6}\times (12)^2 = 7{,}2\times 10^{-5}\ \text{J} = 72\ \mu\text{J}
    \]
    \item À $t = 0$, $u_C = 0$ donc $u_R = E$ et :
    \[
    i(0) = \frac{E}{R} = \frac{12}{5{,}0\times 10^{3}} = 2{,}4\times 10^{-3}\ \text{A} = 2{,}4\ \text{mA}
    \]
\end{enumerate}

### Problème 2 : Charge puis décharge et bilan énergétique
\begin{enonce}
Un condensateur de capacité $C = 4{,}7\ \mu\text{F}$ est chargé sous une tension constante $E = 10\ \text{V}$ à travers une résistance $R_1 = 1{,}0\ \text{k}\Omega$. Une fois la charge terminée, on isole le condensateur du générateur, puis on le fait se décharger dans une résistance $R_2 = 2{,}2\ \text{k}\Omega$.
\begin{enumerate}
    \item Calculer la constante de temps $\tau_1$ de la charge et $\tau_2$ de la décharge.
    \item Donner l'expression de $u_C(t)$ pendant la décharge (origine des temps au début de la décharge).
    \item Déterminer l'instant $t_{1/2}$ pour lequel la tension aux bornes du condensateur vaut $E/2$ au cours de la décharge.
    \item Quelle est l'énergie totale dissipée par effet Joule dans $R_2$ durant toute la décharge ? Justifier.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Pour la charge : $\tau_1 = R_1 C = 1{,}0\times 10^{3} \times 4{,}7\times 10^{-6} = 4{,}7\times 10^{-3}\ \text{s} = 4{,}7\ \text{ms}$.
    Pour la décharge : $\tau_2 = R_2 C = 2{,}2\times 10^{3} \times 4{,}7\times 10^{-6} \approx 1{,}0\times 10^{-2}\ \text{s} = 10{,}3\ \text{ms}$.
    \item Le condensateur étant chargé sous $E$, la décharge dans $R_2$ donne :
    \[
    u_C(t) = E\,\e^{-t/\tau_2}
    \]
    \item On cherche $t_{1/2}$ tel que $u_C(t_{1/2}) = \dfrac{E}{2}$ :
    \[
    E\,\e^{-t_{1/2}/\tau_2} = \frac{E}{2} \implies \e^{-t_{1/2}/\tau_2} = \frac{1}{2} \implies t_{1/2} = \tau_2 \ln 2
    \]
    \[
    t_{1/2} = 10{,}3\times 10^{-3} \times \ln 2 \approx 7{,}2\times 10^{-3}\ \text{s} = 7{,}2\ \text{ms}
    \]
    \item Pendant la décharge, toute l'énergie initialement emmagasinée par le condensateur est dissipée par effet Joule dans $R_2$ (en fin de décharge $u_C = 0$, l'énergie stockée est nulle). Donc :
    \[
    E_J = \frac{1}{2}\,C\,E^2 = \frac{1}{2}\times 4{,}7\times 10^{-6}\times (10)^2 = 2{,}35\times 10^{-4}\ \text{J} \approx 0{,}24\ \text{mJ}
    \]
    Cette énergie est indépendante de la valeur de $R_2$.
\end{enumerate}
