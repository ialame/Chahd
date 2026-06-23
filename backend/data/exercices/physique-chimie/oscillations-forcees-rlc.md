### Exercice 1 : Impédance d'un dipôle RLC
\begin{enonce}
Un dipôle RLC série est alimenté par un générateur basse fréquence (GBF) délivrant une tension sinusoïdale. On mesure la valeur efficace de la tension $U = 6{,}0\ \text{V}$ aux bornes du dipôle et celle de l'intensité $I = 30\ \text{mA}$.

Déterminer l'impédance $Z$ du dipôle.
\end{enonce}

\textbf{Solution :}
L'impédance d'un dipôle en régime sinusoïdal forcé est le rapport des valeurs efficaces de la tension et de l'intensité :
\[
Z = \frac{U}{I} = \frac{6{,}0}{30\times 10^{-3}} = 2{,}0\times 10^{2}\ \Omega
\]
Soit $Z = 200\ \Omega$.

### Exercice 2 : Calcul de l'impédance à partir des composants
\begin{enonce}
Un circuit RLC série comporte un conducteur ohmique de résistance $R = 50\ \Omega$, une bobine d'inductance $L = 0{,}20\ \text{H}$ (de résistance négligeable) et un condensateur de capacité $C = 10\ \mu\text{F}$. Il est alimenté par une tension sinusoïdale de fréquence $f = 100\ \text{Hz}$.

Calculer l'impédance $Z$ du circuit.
\end{enonce}

\textbf{Solution :}
On calcule d'abord la pulsation :
\[
\omega = 2\pi f = 2\pi\times 100 \approx 628\ \text{rad}\cdot\text{s}^{-1}
\]
Les réactances valent :
\[
L\omega = 0{,}20\times 628 \approx 126\ \Omega, \qquad \frac{1}{C\omega} = \frac{1}{10\times 10^{-6}\times 628} \approx 159\ \Omega
\]
L'impédance du dipôle RLC série s'écrit :
\[
Z = \sqrt{R^2 + \left(L\omega - \frac{1}{C\omega}\right)^2} = \sqrt{50^2 + (126 - 159)^2} = \sqrt{2500 + 1089} \approx 60\ \Omega
\]

### Exercice 3 : Fréquence propre du circuit
\begin{enonce}
On considère un circuit RLC série dont la bobine a pour inductance $L = 0{,}10\ \text{H}$ et le condensateur pour capacité $C = 2{,}5\ \mu\text{F}$.

Calculer la fréquence propre $f_0$ du circuit.
\end{enonce}

\textbf{Solution :}
La fréquence propre (fréquence de résonance) est donnée par :
\[
f_0 = \frac{1}{2\pi\sqrt{LC}}
\]
On calcule d'abord :
\[
\sqrt{LC} = \sqrt{0{,}10\times 2{,}5\times 10^{-6}} = \sqrt{2{,}5\times 10^{-7}} \approx 5{,}0\times 10^{-4}\ \text{s}
\]
d'où :
\[
f_0 = \frac{1}{2\pi\times 5{,}0\times 10^{-4}} \approx 3{,}2\times 10^{2}\ \text{Hz}
\]
Soit $f_0 \approx 318\ \text{Hz}$.

### Exercice 4 : Condition de résonance d'intensité
\begin{enonce}
Un circuit RLC série est alimenté par un GBF de tension efficace $U = 5{,}0\ \text{V}$ constante. On fait varier la fréquence jusqu'à observer la résonance d'intensité. À la résonance, la résistance totale du circuit est $R = 25\ \Omega$.
\begin{enumerate}
    \item Quelle relation existe-t-il entre $L\omega$ et $\dfrac{1}{C\omega}$ à la résonance ? En déduire l'impédance.
    \item Calculer l'intensité efficace $I_0$ à la résonance.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item À la résonance d'intensité, la réactance s'annule :
    \[
    L\omega_0 = \frac{1}{C\omega_0}
    \]
    L'impédance est alors minimale et égale à la résistance :
    \[
    Z = \sqrt{R^2 + 0} = R = 25\ \Omega
    \]
    \item L'intensité efficace est maximale à la résonance :
    \[
    I_0 = \frac{U}{R} = \frac{5{,}0}{25} = 0{,}20\ \text{A}
    \]
\end{enumerate}

### Exercice 5 : Déphasage tension-courant
\begin{enonce}
Dans un circuit RLC série, on mesure $R = 80\ \Omega$ et, à la fréquence de travail, $L\omega - \dfrac{1}{C\omega} = 80\ \Omega$.

Déterminer le déphasage $\varphi$ entre la tension aux bornes du dipôle et l'intensité du courant. Le circuit est-il inductif ou capacitif ?
\end{enonce}

\textbf{Solution :}
Le déphasage $\varphi$ de la tension par rapport au courant vérifie :
\[
\tan\varphi = \frac{L\omega - \dfrac{1}{C\omega}}{R} = \frac{80}{80} = 1
\]
On en déduit :
\[
\varphi = \frac{\pi}{4}\ \text{rad} = 45^\circ
\]
Comme $\varphi > 0$ (c'est-à-dire $L\omega > \dfrac{1}{C\omega}$), la tension est en avance sur le courant : le circuit a un comportement \textbf{inductif}.

### Exercice 6 : Facteur de qualité et bande passante
\begin{enonce}
Un circuit RLC série a pour fréquence propre $f_0 = 500\ \text{Hz}$. La courbe de résonance présente une bande passante $\Delta f = 50\ \text{Hz}$.
\begin{enumerate}
    \item Calculer le facteur de qualité $Q$ du circuit.
    \item Que peut-on dire de la sélectivité de ce circuit ?
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Le facteur de qualité est défini par :
    \[
    Q = \frac{f_0}{\Delta f} = \frac{500}{50} = 10
    \]
    \item Le facteur de qualité étant élevé ($Q = 10$), la bande passante est étroite devant $f_0$ : le circuit est très \textbf{sélectif} (résonance aiguë).
\end{enumerate}

### Exercice 7 : Phénomène de surtension
\begin{enonce}
Un circuit RLC série de facteur de qualité $Q = 8{,}0$ est alimenté par une tension efficace $U = 6{,}0\ \text{V}$. On se place à la résonance.

Calculer la tension efficace $U_C$ aux bornes du condensateur à la résonance et conclure sur le phénomène de surtension.
\end{enonce}

\textbf{Solution :}
À la résonance, la tension efficace aux bornes du condensateur (comme aux bornes de la bobine) est égale à $Q$ fois la tension d'alimentation :
\[
U_C = Q\,U = 8{,}0\times 6{,}0 = 48\ \text{V}
\]
La tension aux bornes du condensateur ($48\ \text{V}$) est très supérieure à la tension d'alimentation ($6{,}0\ \text{V}$) : c'est le phénomène de \textbf{surtension}. Il peut être dangereux pour les composants si $Q$ est grand.

### Exercice 8 : Puissance moyenne et facteur de puissance
\begin{enonce}
Un dipôle RLC série est soumis à une tension efficace $U = 12\ \text{V}$ et parcouru par un courant d'intensité efficace $I = 0{,}15\ \text{A}$. Le déphasage entre la tension et le courant est $\varphi = 60^\circ$.
\begin{enumerate}
    \item Calculer la puissance moyenne $P$ consommée par le dipôle.
    \item Que vaudrait cette puissance à la résonance, à $U$ et $I$ inchangés ?
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item La puissance moyenne (puissance active) s'écrit :
    \[
    P = U\,I\cos\varphi = 12\times 0{,}15\times\cos 60^\circ = 12\times 0{,}15\times 0{,}50 = 0{,}90\ \text{W}
    \]
    Le terme $\cos\varphi = 0{,}50$ est le facteur de puissance.
    \item À la résonance, $\varphi = 0$ donc $\cos\varphi = 1$ (facteur de puissance maximal) :
    \[
    P = U\,I\cos 0 = 12\times 0{,}15\times 1 = 1{,}8\ \text{W}
    \]
    La puissance consommée est alors maximale.
\end{enumerate}
