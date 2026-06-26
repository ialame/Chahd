### Exercice 1 : Abscisse angulaire et abscisse curviligne
\begin{enonce}
On considère un disque de centre $O$ et de rayon $r = 20\,\text{cm}$. Un point $M$ du bord part d'une position $M_0$ et tourne autour de l'axe.
\begin{enumerate}
    \item Exprimer en radians un tour complet, un demi-tour et un quart de tour.
    \item Convertir l'angle $\alpha = 30^\circ$ en radians.
    \item Le point $M$ a tourné d'un angle $\theta = \dfrac{\pi}{3}\,\text{rad}$. Calculer la longueur de l'arc $s$ parcouru.
    \item Pour quel angle $\theta$ (en rad) la longueur de l'arc vaut-elle $s = 0{,}50\,\text{m}$ ?
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Un tour complet correspond à $2\pi\,\text{rad}$, un demi-tour à $\pi\,\text{rad}$ et un quart de tour à $\dfrac{\pi}{2}\,\text{rad}$.
    \item On utilise la proportionnalité $180^\circ \leftrightarrow \pi\,\text{rad}$ :
$$
\alpha = 30 \times \frac{\pi}{180} = \frac{\pi}{6} \approx 0{,}52\,\text{rad}.
$$
    \item La relation entre abscisse curviligne et abscisse angulaire est $s = r\,\theta$ (avec $r$ en mètres) :
$$
s = 0{,}20 \times \frac{\pi}{3} \approx 0{,}21\,\text{m}.
$$
    \item On inverse la relation $s = r\theta$ :
$$
\theta = \frac{s}{r} = \frac{0{,}50}{0{,}20} = 2{,}5\,\text{rad}.
$$
\end{enumerate}

### Exercice 2 : Vitesse angulaire et vitesse linéaire
\begin{enonce}
Un disque en rotation autour d'un axe fixe balaie un angle $\Delta\theta = 12\,\text{rad}$ pendant la durée $\Delta t = 3{,}0\,\text{s}$.
\begin{enumerate}
    \item Calculer la vitesse angulaire $\omega$ du disque.
    \item En déduire la vitesse linéaire $v_A$ d'un point $A$ situé à $r_A = 0{,}25\,\text{m}$ de l'axe.
    \item Calculer la vitesse linéaire $v_B$ d'un point $B$ situé à $r_B = 0{,}10\,\text{m}$ de l'axe.
    \item Les points $A$ et $B$ ont-ils la même vitesse angulaire ? la même vitesse linéaire ? Commenter.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Par définition $\omega = \dfrac{\Delta\theta}{\Delta t}$ :
$$
\omega = \frac{12}{3{,}0} = 4{,}0\,\text{rad}\,\text{.}\,\text{s}^{-1}.
$$
    \item La vitesse linéaire vérifie $v = r\,\omega$ :
$$
v_A = r_A\,\omega = 0{,}25 \times 4{,}0 = 1{,}0\,\text{m}\,\text{.}\,\text{s}^{-1}.
$$
    \item De même :
$$
v_B = r_B\,\omega = 0{,}10 \times 4{,}0 = 0{,}40\,\text{m}\,\text{.}\,\text{s}^{-1}.
$$
    \item Les deux points ont la **même** vitesse angulaire $\omega = 4{,}0\,\text{rad}\,\text{.}\,\text{s}^{-1}$ (commune à tout le solide), mais des vitesses linéaires **différentes** : $A$, plus éloigné de l'axe, va plus vite que $B$ car $v = r\omega$ croît avec $r$.
\end{enumerate}

### Exercice 3 : Équation horaire d'un mouvement uniforme
\begin{enonce}
Un solide est animé d'un mouvement de rotation uniforme de vitesse angulaire $\omega = 5{,}0\,\text{rad}\,\text{.}\,\text{s}^{-1}$. À l'instant $t = 0$, son abscisse angulaire est $\theta_0 = 0$.
\begin{enumerate}
    \item Écrire l'équation horaire $\theta(t)$.
    \item Calculer l'abscisse angulaire à $t = 4{,}0\,\text{s}$, puis le nombre de tours effectués.
    \item À quel instant le solide atteint-il l'abscisse angulaire $\theta = 15\,\text{rad}$ ?
    \item Réécrire l'équation horaire si l'abscisse angulaire initiale devient $\theta_0 = \dfrac{\pi}{2}\,\text{rad}$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Pour une rotation uniforme, $\theta = \omega t + \theta_0$, soit ici :
$$
\theta(t) = 5{,}0\,t \quad (\text{en rad, } t \text{ en s}).
$$
    \item À $t = 4{,}0\,\text{s}$ :
$$
\theta = 5{,}0 \times 4{,}0 = 20\,\text{rad}.
$$
Comme un tour vaut $2\pi\,\text{rad}$, le nombre de tours est
$$
n = \frac{20}{2\pi} \approx 3{,}2\ \text{tours}.
$$
    \item On isole le temps dans $\theta = \omega t$ :
$$
t = \frac{\theta}{\omega} = \frac{15}{5{,}0} = 3{,}0\,\text{s}.
$$
    \item L'équation devient :
$$
\theta(t) = 5{,}0\,t + \frac{\pi}{2}.
$$
\end{enumerate}

### Exercice 4 : Les aiguilles d'une montre
\begin{enonce}
On modélise les trois aiguilles d'une montre comme des solides en rotation uniforme autour de l'axe central.
\begin{enumerate}
    \item Donner la période $T$ de rotation de l'aiguille des secondes, des minutes et des heures.
    \item Calculer la vitesse angulaire $\omega$ de l'aiguille des secondes.
    \item Calculer la vitesse angulaire $\omega$ de l'aiguille des minutes.
    \item L'extrémité de l'aiguille des secondes est à $r = 1{,}5\,\text{cm}$ de l'axe. Calculer sa vitesse linéaire.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item L'aiguille des secondes fait un tour en $T_s = 60\,\text{s}$, celle des minutes en $T_m = 60\,\text{min} = 3600\,\text{s}$, celle des heures en $T_h = 12\,\text{h} = 43\,200\,\text{s}$.
    \item Avec $\omega = \dfrac{2\pi}{T}$ :
$$
\omega_s = \frac{2\pi}{60} \approx 0{,}10\,\text{rad}\,\text{.}\,\text{s}^{-1}.
$$
    \item De même pour les minutes :
$$
\omega_m = \frac{2\pi}{3600} \approx 1{,}7\times 10^{-3}\,\text{rad}\,\text{.}\,\text{s}^{-1}.
$$
    \item La vitesse linéaire vérifie $v = r\,\omega_s$ avec $r = 1{,}5\,\text{cm} = 1{,}5\times 10^{-2}\,\text{m}$ :
$$
v = 1{,}5\times 10^{-2} \times 0{,}10 \approx 1{,}6\times 10^{-3}\,\text{m}\,\text{.}\,\text{s}^{-1}.
$$
\end{enumerate}

### Exercice 5 : Conversions tr/min $\leftrightarrow$ rad/s
\begin{enonce}
Le moteur d'une voiture tourne à la fréquence de rotation $N = 3000\,\text{tr/min}$.
\begin{enumerate}
    \item Exprimer cette fréquence de rotation en tours par seconde.
    \item En déduire la vitesse angulaire $\omega$ en $\text{rad}\,\text{.}\,\text{s}^{-1}$.
    \item Calculer la période de rotation $T$.
    \item Un autre arbre tourne à $\omega' = 157\,\text{rad}\,\text{.}\,\text{s}^{-1}$. Exprimer sa fréquence de rotation en tr/min.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item On divise par $60$ pour passer des minutes aux secondes :
$$
N = \frac{3000}{60} = 50\,\text{tr/s} \quad (\text{soit } 50\,\text{Hz}).
$$
    \item La vitesse angulaire est $\omega = 2\pi N$ (avec $N$ en tr/s) :
$$
\omega = 2\pi \times 50 \approx 314\,\text{rad}\,\text{.}\,\text{s}^{-1}.
$$
    \item La période est l'inverse de la fréquence :
$$
T = \frac{1}{N} = \frac{1}{50} = 0{,}020\,\text{s}.
$$
    \item On inverse $\omega = 2\pi N$ :
$$
N' = \frac{\omega'}{2\pi} = \frac{157}{2\pi} \approx 25\,\text{tr/s} = 25 \times 60 = 1500\,\text{tr/min}.
$$
\end{enumerate}

### Exercice 6 : Roue de vélo
\begin{enonce}
Une roue de vélo de rayon $R = 35\,\text{cm}$ tourne en mouvement uniforme à la fréquence $N = 2{,}0\,\text{tr/s}$.
\begin{enumerate}
    \item Calculer la vitesse angulaire $\omega$ de la roue.
    \item Calculer la vitesse linéaire $v$ d'un point de la jante (égale à la vitesse du vélo).
    \item Quelle distance le vélo parcourt-il en une minute ?
    \item Calculer la vitesse linéaire d'un point situé à mi-rayon ($r = 17{,}5\,\text{cm}$).
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Avec $\omega = 2\pi N$ :
$$
\omega = 2\pi \times 2{,}0 = 4\pi \approx 13\,\text{rad}\,\text{.}\,\text{s}^{-1}.
$$
    \item Pour un point de la jante, $v = R\,\omega$ avec $R = 0{,}35\,\text{m}$ :
$$
v = 0{,}35 \times 4\pi \approx 4{,}4\,\text{m}\,\text{.}\,\text{s}^{-1}.
$$
    \item En une minute ($\Delta t = 60\,\text{s}$), le vélo parcourt :
$$
d = v\,\Delta t \approx 4{,}4 \times 60 \approx 2{,}6\times 10^{2}\,\text{m}.
$$
    \item À mi-rayon, $v' = r\,\omega$ avec $r = 0{,}175\,\text{m}$ :
$$
v' = 0{,}175 \times 4\pi \approx 2{,}2\,\text{m}\,\text{.}\,\text{s}^{-1},
$$
soit la moitié de la vitesse de la jante.
\end{enumerate}
