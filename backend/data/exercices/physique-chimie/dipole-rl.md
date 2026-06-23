### Exercice 1 : Tension aux bornes d'une bobine
\begin{enonce}
Une bobine d'inductance $L$ et de résistance interne $r$ est parcourue par un courant d'intensité $i(t)$.

Donner l'expression de la tension $u(t)$ aux bornes de la bobine, et préciser sa valeur lorsque le courant est constant.
\end{enonce}

\textbf{Solution :}
La tension aux bornes d'une bobine est la somme de la chute ohmique dans sa résistance interne et de la tension d'auto-induction :
\[
u = r\,i + L\,\frac{\dd i}{\dd t}
\]
Lorsque le courant est constant (régime permanent), $\dfrac{\dd i}{\dd t} = 0$, donc :
\[
u = r\,i
\]
La bobine se comporte alors comme un simple conducteur ohmique de résistance $r$.

### Exercice 2 : Équation différentielle de l'établissement du courant
\begin{enonce}
On associe en série un générateur idéal de f.é.m. $E$, un conducteur ohmique de résistance $R_0$ et une bobine d'inductance $L$ et de résistance $r$. À l'instant $t = 0$, on ferme l'interrupteur.

Établir l'équation différentielle vérifiée par l'intensité $i(t)$ du courant.
\end{enonce}

\textbf{Solution :}
D'après la loi d'additivité des tensions (loi des mailles) :
\[
E = u_{R_0} + u_{\text{bobine}}
\]
avec $u_{R_0} = R_0\,i$ et $u_{\text{bobine}} = r\,i + L\,\dfrac{\dd i}{\dd t}$. On obtient :
\[
E = R_0\,i + r\,i + L\,\frac{\dd i}{\dd t} = (R_0 + r)\,i + L\,\frac{\dd i}{\dd t}
\]
En posant $R = R_0 + r$, l'équation s'écrit sous forme canonique :
\[
\frac{\dd i}{\dd t} + \frac{R}{L}\,i = \frac{E}{L}
\]

### Exercice 3 : Vérification de la solution et constante de temps
\begin{enonce}
On admet que la solution de l'équation différentielle précédente s'écrit $i(t) = \dfrac{E}{R}\left(1 - \e^{-t/\tau}\right)$.

Vérifier que cette expression est solution et donner l'expression de la constante de temps $\tau$.
\end{enonce}

\textbf{Solution :}
On dérive $i(t) = \dfrac{E}{R}\left(1 - \e^{-t/\tau}\right)$ :
\[
\frac{\dd i}{\dd t} = \frac{E}{R\,\tau}\,\e^{-t/\tau}
\]
En reportant dans $L\,\dfrac{\dd i}{\dd t} + R\,i$ :
\[
L\cdot\frac{E}{R\,\tau}\,\e^{-t/\tau} + R\cdot\frac{E}{R}\left(1 - \e^{-t/\tau}\right)
= E\,\e^{-t/\tau}\left(\frac{L}{R\,\tau} - 1\right) + E
\]
Ce résultat est égal à $E$ pour tout instant $t$ si et seulement si $\dfrac{L}{R\,\tau} - 1 = 0$, c'est-à-dire :
\[
\tau = \frac{L}{R}
\]

### Exercice 4 : Calcul et interprétation de la constante de temps
\begin{enonce}
Une bobine d'inductance $L = 0{,}40\ \text{H}$ et de résistance négligeable est placée en série avec un conducteur ohmique de résistance $R = 200\ \Omega$ et un générateur de f.é.m. $E = 6{,}0\ \text{V}$.
\begin{enumerate}
    \item Calculer la constante de temps $\tau$.
    \item Quelle est la valeur de $i$ à l'instant $t = \tau$, en pourcentage de la valeur finale ?
    \item Au bout de combien de temps peut-on considérer le régime permanent atteint ?
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item $\tau = \dfrac{L}{R} = \dfrac{0{,}40}{200} = 2{,}0\times 10^{-3}\ \text{s} = 2{,}0\ \text{ms}$.
    \item À $t = \tau$ : $i(\tau) = \dfrac{E}{R}\left(1 - \e^{-1}\right) \approx 0{,}63\,\dfrac{E}{R}$, soit environ $63\,\%$ de la valeur finale.
    \item Le régime permanent est pratiquement atteint au bout de $5\tau = 10\ \text{ms}$ (à moins de $1\,\%$ près).
\end{enumerate}

### Exercice 5 : Intensité finale et énergie magnétique emmagasinée
\begin{enonce}
On reprend le circuit précédent ($L = 0{,}40\ \text{H}$, $R = 200\ \Omega$, $E = 6{,}0\ \text{V}$, résistance de bobine négligeable).

Calculer l'intensité $I_0$ du courant en régime permanent, puis l'énergie magnétique $E_m$ emmagasinée par la bobine.
\end{enonce}

\textbf{Solution :}
En régime permanent, $\dfrac{\dd i}{\dd t} = 0$ et l'intensité atteint sa valeur maximale :
\[
I_0 = \frac{E}{R} = \frac{6{,}0}{200} = 3{,}0\times 10^{-2}\ \text{A} = 30\ \text{mA}
\]
L'énergie magnétique emmagasinée dans la bobine vaut :
\[
E_m = \frac{1}{2}\,L\,I_0^{2} = \frac{1}{2}\times 0{,}40 \times (3{,}0\times 10^{-2})^{2} = 1{,}8\times 10^{-4}\ \text{J} = 0{,}18\ \text{mJ}
\]

### Exercice 6 : Rupture du courant dans un dipôle RL
\begin{enonce}
La bobine ($L$, résistance interne $r$) est parcourue par un courant permanent $I_0$. À l'instant $t = 0$, on isole le générateur et la bobine se retrouve fermée sur le seul conducteur ohmique de résistance $R_0$ (on pose $R = R_0 + r$).
\begin{enumerate}
    \item Établir l'équation différentielle vérifiée par $i(t)$.
    \item Donner sa solution et la valeur de $i$ à $t = \tau$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item La loi des mailles sur le circuit fermé donne $u_{R_0} + u_{\text{bobine}} = 0$, soit $R_0\,i + r\,i + L\,\dfrac{\dd i}{\dd t} = 0$, d'où :
    \[
    L\,\frac{\dd i}{\dd t} + R\,i = 0
    \]
    \item La solution, avec la condition initiale $i(0) = I_0$, est $i(t) = I_0\,\e^{-t/\tau}$ où $\tau = \dfrac{L}{R}$. À $t = \tau$ : $i(\tau) = I_0\,\e^{-1} \approx 0{,}37\,I_0$.
\end{enumerate}

### Exercice 7 : Détermination expérimentale de l'inductance
\begin{enonce}
Lors de l'établissement du courant dans un dipôle RL, la constante de temps mesurée vaut $\tau = 5{,}0\ \text{ms}$. La résistance totale du circuit est $R = 100\ \Omega$.

Déterminer l'inductance $L$ de la bobine.
\end{enonce}

\textbf{Solution :}
De $\tau = \dfrac{L}{R}$ on tire :
\[
L = R\,\tau = 100 \times 5{,}0\times 10^{-3} = 0{,}50\ \text{H}
\]

### Exercice 8 : Tension initiale aux bornes de la bobine
\begin{enonce}
À la fermeture de l'interrupteur d'un dipôle RL ($E = 12\ \text{V}$, $R = 600\ \Omega$, bobine de résistance interne négligeable), on étudie la tension $u_L(t)$ aux bornes de la bobine.

Déterminer l'expression de $u_L(t)$ et sa valeur à $t = 0$.
\end{enonce}

\textbf{Solution :}
La bobine ayant une résistance interne négligeable, $u_L = L\,\dfrac{\dd i}{\dd t}$. Avec $i(t) = \dfrac{E}{R}\left(1 - \e^{-t/\tau}\right)$ :
\[
u_L(t) = L\,\frac{\dd i}{\dd t} = L\cdot\frac{E}{R\,\tau}\,\e^{-t/\tau} = E\,\e^{-t/\tau}
\]
car $\tau = \dfrac{L}{R}$. À l'instant initial :
\[
u_L(0) = E = 12\ \text{V}
\]
C'est la valeur maximale de $u_L$ : à $t = 0$, le courant est nul mais sa variation est maximale, et la bobine impose alors toute la tension du générateur.
