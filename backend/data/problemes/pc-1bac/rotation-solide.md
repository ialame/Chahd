### Problème 1 : Le manège
\begin{enonce}
Un manège de rayon $R = 4{,}0\,\text{m}$ tourne de façon uniforme et effectue un tour complet en $T = 8{,}0\,\text{s}$.
\begin{enumerate}
    \item Calculer la fréquence de rotation $N$ du manège.
    \item Calculer sa vitesse angulaire $\omega$.
    \item Un enfant est assis sur le bord du manège. Calculer sa vitesse linéaire $v$.
    \item Un second enfant est placé à $r = 2{,}5\,\text{m}$ de l'axe. Calculer sa vitesse linéaire.
    \item Quel angle (en rad puis en nombre de tours) le manège balaie-t-il pendant $\Delta t = 20\,\text{s}$ ?
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item La fréquence est l'inverse de la période :
$$
N = \frac{1}{T} = \frac{1}{8{,}0} = 0{,}125\,\text{Hz}.
$$
    \item La vitesse angulaire vaut $\omega = \dfrac{2\pi}{T}$ :
$$
\omega = \frac{2\pi}{8{,}0} \approx 0{,}79\,\text{rad}\,\text{.}\,\text{s}^{-1}.
$$
    \item Pour l'enfant du bord, $v = R\,\omega$ :
$$
v = 4{,}0 \times 0{,}79 \approx 3{,}1\,\text{m}\,\text{.}\,\text{s}^{-1}.
$$
    \item Pour le second enfant, $v' = r\,\omega$ :
$$
v' = 2{,}5 \times 0{,}79 \approx 2{,}0\,\text{m}\,\text{.}\,\text{s}^{-1}.
$$
Il va moins vite car il est plus proche de l'axe.
    \item L'angle balayé est $\theta = \omega\,\Delta t$ :
$$
\theta = 0{,}79 \times 20 \approx 15{,}7\,\text{rad}.
$$
Le nombre de tours est $n = \dfrac{\theta}{2\pi} = \dfrac{15{,}7}{2\pi} \approx 2{,}5\ \text{tours}$, ce qui est cohérent avec $\dfrac{20}{8{,}0} = 2{,}5$.
\end{enumerate}

### Problème 2 : Le disque dur d'un ordinateur
\begin{enonce}
Le plateau d'un disque dur tourne en rotation uniforme à la fréquence $N = 7200\,\text{tr/min}$.
\begin{enumerate}
    \item Exprimer cette fréquence de rotation en tours par seconde.
    \item Calculer la vitesse angulaire $\omega$ du plateau.
    \item Calculer la période de rotation $T$.
    \item Une tête de lecture survole une piste de rayon $r = 4{,}0\,\text{cm}$. Calculer la vitesse linéaire d'un point de cette piste.
    \item Combien de tours le plateau effectue-t-il pendant $\Delta t = 0{,}10\,\text{s}$ ? Quel angle cela représente-t-il en radians ?
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item On divise par $60$ :
$$
N = \frac{7200}{60} = 120\,\text{tr/s}.
$$
    \item Avec $\omega = 2\pi N$ (en tr/s) :
$$
\omega = 2\pi \times 120 \approx 754\,\text{rad}\,\text{.}\,\text{s}^{-1}.
$$
    \item La période vaut :
$$
T = \frac{1}{N} = \frac{1}{120} \approx 8{,}3\times 10^{-3}\,\text{s}.
$$
    \item La vitesse linéaire est $v = r\,\omega$ avec $r = 4{,}0\times 10^{-2}\,\text{m}$ :
$$
v = 4{,}0\times 10^{-2} \times 754 \approx 30\,\text{m}\,\text{.}\,\text{s}^{-1}.
$$
    \item Le nombre de tours est $n = N\,\Delta t = 120 \times 0{,}10 = 12\ \text{tours}$. L'angle correspondant est :
$$
\theta = n \times 2\pi = 12 \times 2\pi \approx 75\,\text{rad}.
$$
\end{enumerate}

### Problème 3 : Transmission par courroie entre deux poulies
\begin{enonce}
Une poulie motrice de rayon $r_1 = 5{,}0\,\text{cm}$ entraîne, au moyen d'une courroie, une poulie réceptrice de rayon $r_2 = 15\,\text{cm}$. La courroie ne glisse pas : les points des deux jantes en contact avec elle ont la **même vitesse linéaire**. La poulie motrice tourne à $N_1 = 1200\,\text{tr/min}$.
\begin{enumerate}
    \item Calculer la vitesse angulaire $\omega_1$ de la poulie motrice.
    \item Calculer la vitesse linéaire $v$ de la courroie.
    \item En déduire la vitesse angulaire $\omega_2$ de la poulie réceptrice.
    \item Calculer la fréquence de rotation $N_2$ de la poulie réceptrice en tr/min.
    \item Vérifier la relation $\dfrac{N_2}{N_1} = \dfrac{r_1}{r_2}$ et commenter.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item On convertit d'abord $N_1 = \dfrac{1200}{60} = 20\,\text{tr/s}$, puis $\omega_1 = 2\pi N_1$ :
$$
\omega_1 = 2\pi \times 20 \approx 126\,\text{rad}\,\text{.}\,\text{s}^{-1}.
$$
    \item La vitesse de la courroie est celle d'un point de la jante motrice, $v = r_1\,\omega_1$ avec $r_1 = 0{,}050\,\text{m}$ :
$$
v = 0{,}050 \times 126 \approx 6{,}3\,\text{m}\,\text{.}\,\text{s}^{-1}.
$$
    \item Un point de la jante réceptrice a la même vitesse linéaire $v$, donc $\omega_2 = \dfrac{v}{r_2}$ avec $r_2 = 0{,}15\,\text{m}$ :
$$
\omega_2 = \frac{6{,}3}{0{,}15} \approx 42\,\text{rad}\,\text{.}\,\text{s}^{-1}.
$$
    \item La fréquence de rotation est $N_2 = \dfrac{\omega_2}{2\pi}$ :
$$
N_2 = \frac{42}{2\pi} \approx 6{,}7\,\text{tr/s} = 6{,}7 \times 60 \approx 400\,\text{tr/min}.
$$
    \item On vérifie :
$$
\frac{N_2}{N_1} = \frac{400}{1200} = \frac{1}{3} = \frac{r_1}{r_2} = \frac{5{,}0}{15}.
$$
La poulie de plus grand rayon tourne plus lentement : la courroie impose la même vitesse linéaire à ses jantes, donc la vitesse angulaire est inversement proportionnelle au rayon.
\end{enumerate}
