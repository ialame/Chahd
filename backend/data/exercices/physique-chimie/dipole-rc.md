### Exercice 1 : Équation différentielle de la charge
\begin{enonce}
Un condensateur de capacité $C$, initialement déchargé, est associé en série à un conducteur ohmique de résistance $R$ et à un générateur de tension idéale de f.é.m. $E$. À l'instant $t = 0$, on ferme l'interrupteur.

Établir l'équation différentielle vérifiée par la tension $u_C(t)$ aux bornes du condensateur.
\end{enonce}

\textbf{Solution :}
D'après la loi d'additivité des tensions (loi des mailles) :
\[
E = u_R + u_C
\]
Le conducteur ohmique vérifie $u_R = R\,i$, et l'intensité dans la branche s'écrit $i = C\,\dfrac{\dd u_C}{\dd t}$. On obtient :
\[
E = RC\,\frac{\dd u_C}{\dd t} + u_C
\]
soit, sous forme canonique :
\[
\frac{\dd u_C}{\dd t} + \frac{1}{RC}\,u_C = \frac{E}{RC}
\]

### Exercice 2 : Vérification de la solution et constante de temps
\begin{enonce}
On admet que la solution de l'équation différentielle précédente s'écrit $u_C(t) = E\left(1 - \e^{-t/\tau}\right)$.

Vérifier que cette expression est solution et donner l'expression de la constante de temps $\tau$.
\end{enonce}

\textbf{Solution :}
On dérive $u_C(t) = E\left(1 - \e^{-t/\tau}\right)$ :
\[
\frac{\dd u_C}{\dd t} = \frac{E}{\tau}\,\e^{-t/\tau}
\]
En reportant dans $RC\,\dfrac{\dd u_C}{\dd t} + u_C$ :
\[
RC\cdot\frac{E}{\tau}\,\e^{-t/\tau} + E\left(1 - \e^{-t/\tau}\right)
= E\,\e^{-t/\tau}\left(\frac{RC}{\tau} - 1\right) + E
\]
Ce résultat est égal à $E$ pour tout instant $t$ si et seulement si $\dfrac{RC}{\tau} - 1 = 0$, c'est-à-dire :
\[
\tau = RC
\]

### Exercice 3 : Interprétation de la constante de temps
\begin{enonce}
On donne $R = 2{,}0\ \text{k}\Omega$ et $C = 1{,}0\ \mu\text{F}$.
\begin{enumerate}
    \item Calculer la constante de temps $\tau$.
    \item Quelle est la valeur de $u_C$ à l'instant $t = \tau$, en pourcentage de $E$ ?
    \item Au bout de combien de temps peut-on considérer le régime permanent atteint ?
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item $\tau = RC = 2{,}0\times 10^{3} \times 1{,}0\times 10^{-6} = 2{,}0\times 10^{-3}\ \text{s} = 2{,}0\ \text{ms}$.
    \item À $t = \tau$ : $u_C(\tau) = E\left(1 - \e^{-1}\right) \approx 0{,}63\,E$, soit environ $63\,\%$ de $E$.
    \item Le régime permanent est pratiquement atteint au bout de $5\tau = 10\ \text{ms}$ (à moins de $1\,\%$ près).
\end{enumerate}

### Exercice 4 : Charge maximale et énergie emmagasinée
\begin{enonce}
Le condensateur précédent ($C = 1{,}0\ \mu\text{F}$) est complètement chargé sous une tension $E = 6{,}0\ \text{V}$.

Calculer la charge maximale $Q$ portée par l'armature positive et l'énergie $E_e$ emmagasinée.
\end{enonce}

\textbf{Solution :}
La charge maximale est :
\[
Q = C\,E = 1{,}0\times 10^{-6} \times 6{,}0 = 6{,}0\times 10^{-6}\ \text{C} = 6{,}0\ \mu\text{C}
\]
L'énergie emmagasinée dans le condensateur vaut :
\[
E_e = \frac{1}{2}\,C\,E^2 = \frac{1}{2}\times 1{,}0\times 10^{-6} \times (6{,}0)^2 = 1{,}8\times 10^{-5}\ \text{J} = 18\ \mu\text{J}
\]

### Exercice 5 : Décharge du condensateur
\begin{enonce}
Le condensateur, chargé sous la tension $E$, est à présent déconnecté du générateur puis relié à l'instant $t = 0$ au seul conducteur ohmique $R$.
\begin{enumerate}
    \item Établir l'équation différentielle vérifiée par $u_C(t)$.
    \item Donner sa solution et la valeur de $u_C$ à $t = \tau$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item La loi des mailles donne $u_R + u_C = 0$ avec $u_R = R\,i$ et $i = C\,\dfrac{\dd u_C}{\dd t}$, d'où :
    \[
    RC\,\frac{\dd u_C}{\dd t} + u_C = 0
    \]
    \item La solution est $u_C(t) = E\,\e^{-t/\tau}$ avec $\tau = RC$. À $t = \tau$ : $u_C(\tau) = E\,\e^{-1} \approx 0{,}37\,E$.
\end{enumerate}

### Exercice 6 : Détermination expérimentale de la capacité
\begin{enonce}
Lors de la charge d'un condensateur à travers une résistance $R = 4{,}0\ \text{k}\Omega$, la constante de temps mesurée vaut $\tau = 4{,}0\ \text{ms}$.

Déterminer la capacité $C$ du condensateur.
\end{enonce}

\textbf{Solution :}
De $\tau = RC$ on tire :
\[
C = \frac{\tau}{R} = \frac{4{,}0\times 10^{-3}}{4{,}0\times 10^{3}} = 1{,}0\times 10^{-6}\ \text{F} = 1{,}0\ \mu\text{F}
\]

### Exercice 7 : Intensité à l'instant initial
\begin{enonce}
On reprend la charge du condensateur (initialement déchargé) avec $E = 6{,}0\ \text{V}$ et $R = 2{,}0\ \text{k}\Omega$.

Déterminer l'expression de l'intensité $i(t)$ et sa valeur à $t = 0$.
\end{enonce}

\textbf{Solution :}
On a $u_C(t) = E\left(1 - \e^{-t/\tau}\right)$, donc :
\[
i(t) = C\,\frac{\dd u_C}{\dd t} = C\cdot\frac{E}{\tau}\,\e^{-t/\tau} = \frac{E}{R}\,\e^{-t/\tau}
\]
car $\tau = RC$. À l'instant initial :
\[
i(0) = \frac{E}{R} = \frac{6{,}0}{2{,}0\times 10^{3}} = 3{,}0\times 10^{-3}\ \text{A} = 3{,}0\ \text{mA}
\]
C'est la valeur maximale de l'intensité ; le condensateur se comporte alors comme un fil.
