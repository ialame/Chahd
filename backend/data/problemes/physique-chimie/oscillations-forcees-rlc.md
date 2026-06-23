### Problème 1 : Étude d'un circuit RLC et résonance d'intensité
\begin{enonce}
On réalise un circuit série comportant un conducteur ohmique de résistance $R = 40\ \Omega$, une bobine d'inductance $L = 0{,}50\ \text{H}$ et de résistance négligeable, et un condensateur de capacité $C = 2{,}0\ \mu\text{F}$. Ce dipôle RLC est alimenté par un GBF délivrant une tension sinusoïdale de valeur efficace $U = 4{,}0\ \text{V}$ et de fréquence $f$ réglable.
\begin{enumerate}
    \item Donner l'expression de l'impédance $Z$ du dipôle RLC série en fonction de $R$, $L$, $C$ et $\omega$.
    \item Établir l'expression de la fréquence propre $f_0$ et calculer sa valeur.
    \item On règle la fréquence à $f_0$. Justifier qu'il y a résonance d'intensité, donner l'impédance du circuit et calculer l'intensité efficace $I_0$.
    \item Calculer la tension efficace $U_L$ aux bornes de la bobine à la résonance. Conclure quant au phénomène de surtension.
    \item On règle maintenant la fréquence à $f = 80\ \text{Hz}$. Calculer l'impédance $Z$ du circuit et le déphasage $\varphi$ de la tension par rapport au courant. Préciser la nature du circuit.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item L'impédance du dipôle RLC série s'écrit :
    \[
    Z = \sqrt{R^2 + \left(L\omega - \frac{1}{C\omega}\right)^2}, \qquad \omega = 2\pi f
    \]
    \item À la résonance, la réactance s'annule ($L\omega_0 = \dfrac{1}{C\omega_0}$), ce qui donne $\omega_0 = \dfrac{1}{\sqrt{LC}}$, soit :
    \[
    f_0 = \frac{1}{2\pi\sqrt{LC}} = \frac{1}{2\pi\sqrt{0{,}50\times 2{,}0\times 10^{-6}}} = \frac{1}{2\pi\times 1{,}0\times 10^{-3}} \approx 1{,}6\times 10^{2}\ \text{Hz}
    \]
    Soit $f_0 \approx 159\ \text{Hz}$.
    \item À $f = f_0$, on a $L\omega_0 - \dfrac{1}{C\omega_0} = 0$, donc l'impédance est minimale :
    \[
    Z = \sqrt{R^2 + 0} = R = 40\ \Omega
    \]
    L'intensité $I = \dfrac{U}{Z}$ est alors maximale : c'est la résonance d'intensité. On calcule :
    \[
    I_0 = \frac{U}{R} = \frac{4{,}0}{40} = 0{,}10\ \text{A}
    \]
    \item À la résonance, $\omega_0 = \dfrac{1}{\sqrt{LC}} = 1{,}0\times 10^{3}\ \text{rad}\cdot\text{s}^{-1}$. La tension efficace aux bornes de la bobine vaut :
    \[
    U_L = L\omega_0\,I_0 = 0{,}50\times 1{,}0\times 10^{3}\times 0{,}10 = 50\ \text{V}
    \]
    Cette tension ($50\ \text{V}$) est très supérieure à la tension d'alimentation ($4{,}0\ \text{V}$) : c'est le phénomène de surtension. On vérifie d'ailleurs que $U_L = Q\,U$ avec $Q = \dfrac{L\omega_0}{R} = \dfrac{50\times 10^{1}}{40} = 12{,}5$.
    \item À $f = 80\ \text{Hz}$ : $\omega = 2\pi\times 80 \approx 503\ \text{rad}\cdot\text{s}^{-1}$.
    \[
    L\omega = 0{,}50\times 503 \approx 251\ \Omega, \qquad \frac{1}{C\omega} = \frac{1}{2{,}0\times 10^{-6}\times 503} \approx 994\ \Omega
    \]
    \[
    Z = \sqrt{40^2 + (251 - 994)^2} = \sqrt{1600 + 552049} \approx 7{,}4\times 10^{2}\ \Omega
    \]
    Le déphasage vérifie :
    \[
    \tan\varphi = \frac{L\omega - \dfrac{1}{C\omega}}{R} = \frac{251 - 994}{40} \approx -18{,}6
    \]
    d'où $\varphi \approx -87^\circ$. Comme $\varphi < 0$ ($L\omega < \dfrac{1}{C\omega}$), le circuit est \textbf{capacitif} à cette fréquence.
\end{enumerate}

### Problème 2 : Bande passante, facteur de qualité et bilan de puissance
\begin{enonce}
Un dipôle RLC série, constitué d'un conducteur ohmique de résistance $R = 20\ \Omega$, d'une bobine d'inductance $L$ de résistance négligeable et d'un condensateur de capacité $C$, est alimenté par une tension sinusoïdale de valeur efficace $U = 2{,}0\ \text{V}$ et de fréquence variable. On relève la courbe de résonance $I(f)$. L'intensité efficace passe par un maximum $I_0 = 0{,}10\ \text{A}$ pour une fréquence $f_0 = 1{,}0\ \text{kHz}$.
\begin{enumerate}
    \item Déterminer la valeur de la résistance totale du circuit à partir de $I_0$ et $U$. Commenter.
    \item Définir la bande passante. Donner la valeur de l'intensité $I$ aux fréquences de coupure.
    \item La bande passante mesurée vaut $\Delta f = 125\ \text{Hz}$. Calculer le facteur de qualité $Q$ du circuit.
    \item En utilisant $Q = \dfrac{L\omega_0}{R}$, calculer l'inductance $L$ de la bobine, puis la capacité $C$ du condensateur.
    \item Calculer la puissance moyenne $P$ consommée par le dipôle à la résonance. Que vaut le facteur de puissance ?
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item À la résonance, l'impédance est minimale et égale à $R$. Donc :
    \[
    R = \frac{U}{I_0} = \frac{2{,}0}{0{,}10} = 20\ \Omega
    \]
    Cette valeur est bien conforme à la résistance du conducteur ohmique (la bobine ayant une résistance négligeable).
    \item La bande passante est l'intervalle de fréquences $[\,f_1\,;\,f_2\,]$ pour lequel l'intensité efficace vérifie $I \geq \dfrac{I_0}{\sqrt{2}}$. Aux fréquences de coupure :
    \[
    I = \frac{I_0}{\sqrt{2}} = \frac{0{,}10}{\sqrt{2}} \approx 7{,}1\times 10^{-2}\ \text{A}
    \]
    \item Le facteur de qualité est :
    \[
    Q = \frac{f_0}{\Delta f} = \frac{1{,}0\times 10^{3}}{125} = 8{,}0
    \]
    \item De $Q = \dfrac{L\omega_0}{R}$ avec $\omega_0 = 2\pi f_0 = 2\pi\times 1{,}0\times 10^{3} \approx 6{,}28\times 10^{3}\ \text{rad}\cdot\text{s}^{-1}$, on tire :
    \[
    L = \frac{Q\,R}{\omega_0} = \frac{8{,}0\times 20}{6{,}28\times 10^{3}} \approx 2{,}5\times 10^{-2}\ \text{H}
    \]
    À la résonance, $L\omega_0 = \dfrac{1}{C\omega_0}$, donc $C = \dfrac{1}{L\omega_0^2}$ :
    \[
    C = \frac{1}{2{,}5\times 10^{-2}\times (6{,}28\times 10^{3})^2} \approx 1{,}0\times 10^{-6}\ \text{F} = 1{,}0\ \mu\text{F}
    \]
    \item À la résonance, $\varphi = 0$ donc $\cos\varphi = 1$ : le facteur de puissance est maximal. La puissance moyenne vaut :
    \[
    P = U\,I_0\cos\varphi = 2{,}0\times 0{,}10\times 1 = 0{,}20\ \text{W}
    \]
    On peut vérifier que toute cette puissance est dissipée par effet Joule dans $R$ : $P = R\,I_0^2 = 20\times (0{,}10)^2 = 0{,}20\ \text{W}$.
\end{enumerate}

### Problème 3 : Influence de la résistance et puissance hors résonance
\begin{enonce}
Un circuit RLC série comporte une bobine d'inductance $L = 0{,}10\ \text{H}$ (résistance négligeable) et un condensateur de capacité $C = 1{,}0\ \mu\text{F}$. On dispose d'un GBF de tension efficace $U = 3{,}0\ \text{V}$ et de fréquence réglable. On étudie successivement deux conducteurs ohmiques : $R_1 = 50\ \Omega$ puis $R_2 = 200\ \Omega$.
\begin{enumerate}
    \item Calculer la fréquence propre $f_0$ du circuit (indépendante de $R$).
    \item Pour chacune des résistances, calculer le facteur de qualité $Q$ à la résonance. En déduire laquelle des deux résonances est la plus aiguë.
    \item Pour $R_1 = 50\ \Omega$, calculer l'intensité efficace à la résonance, puis la tension efficace $U_C$ aux bornes du condensateur. Conclure sur la surtension.
    \item On garde $R_1 = 50\ \Omega$ et on règle la fréquence à $f = 600\ \text{Hz}$. Calculer l'impédance $Z$, l'intensité efficace $I$, puis la puissance moyenne $P$ consommée par le circuit.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item La fréquence propre ne dépend que de $L$ et $C$ :
    \[
    f_0 = \frac{1}{2\pi\sqrt{LC}} = \frac{1}{2\pi\sqrt{0{,}10\times 1{,}0\times 10^{-6}}} = \frac{1}{2\pi\times 3{,}16\times 10^{-4}} \approx 5{,}0\times 10^{2}\ \text{Hz}
    \]
    Soit $f_0 \approx 503\ \text{Hz}$, et $\omega_0 = 2\pi f_0 \approx 3{,}16\times 10^{3}\ \text{rad}\cdot\text{s}^{-1}$.
    \item Le facteur de qualité vaut $Q = \dfrac{L\omega_0}{R}$. On calcule $L\omega_0 = 0{,}10\times 3{,}16\times 10^{3} \approx 316\ \Omega$.
    \[
    Q_1 = \frac{316}{50} \approx 6{,}3, \qquad Q_2 = \frac{316}{200} \approx 1{,}6
    \]
    La résonance est d'autant plus aiguë que $Q$ est grand : c'est donc la résonance avec $R_1 = 50\ \Omega$ ($Q_1 \approx 6{,}3$) qui est la plus aiguë.
    \item Avec $R_1 = 50\ \Omega$, à la résonance $Z = R_1$, donc :
    \[
    I_0 = \frac{U}{R_1} = \frac{3{,}0}{50} = 6{,}0\times 10^{-2}\ \text{A}
    \]
    La tension efficace aux bornes du condensateur vaut :
    \[
    U_C = \frac{I_0}{C\omega_0} = \frac{6{,}0\times 10^{-2}}{1{,}0\times 10^{-6}\times 3{,}16\times 10^{3}} \approx 19\ \text{V}
    \]
    On retrouve $U_C = Q_1\,U \approx 6{,}3\times 3{,}0 \approx 19\ \text{V}$. Cette tension ($\approx 19\ \text{V}$) dépasse largement $U = 3{,}0\ \text{V}$ : il y a surtension.
    \item À $f = 600\ \text{Hz}$ : $\omega = 2\pi\times 600 \approx 3{,}77\times 10^{3}\ \text{rad}\cdot\text{s}^{-1}$.
    \[
    L\omega = 0{,}10\times 3{,}77\times 10^{3} \approx 377\ \Omega, \qquad \frac{1}{C\omega} = \frac{1}{1{,}0\times 10^{-6}\times 3{,}77\times 10^{3}} \approx 265\ \Omega
    \]
    \[
    Z = \sqrt{R_1^2 + \left(L\omega - \frac{1}{C\omega}\right)^2} = \sqrt{50^2 + (377 - 265)^2} = \sqrt{2500 + 12544} \approx 123\ \Omega
    \]
    L'intensité efficace est :
    \[
    I = \frac{U}{Z} = \frac{3{,}0}{123} \approx 2{,}4\times 10^{-2}\ \text{A}
    \]
    La puissance moyenne consommée (dissipée dans $R_1$ uniquement) vaut :
    \[
    P = R_1\,I^2 = 50\times (2{,}4\times 10^{-2})^2 \approx 2{,}9\times 10^{-2}\ \text{W} \approx 29\ \text{mW}
    \]
\end{enumerate}
