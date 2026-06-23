### Problème 1 : Étude complète d'une modulation d'amplitude
\begin{enonce}
On souhaite transmettre un signal sonore par modulation d'amplitude. Le signal informatif est modélisé par une tension sinusoïdale $s(t) = S_m\cos(2\pi f\,t)$ de fréquence $f = 2{,}0\ \text{kHz}$ et d'amplitude $S_m = 4{,}0\ \text{V}$. La porteuse a pour fréquence $F = 240\ \text{kHz}$.

La tension modulée s'écrit $u(t) = \left[A + k\,s(t)\right]\cos(2\pi F\,t)$, avec $A = 6{,}0\ \text{V}$ et $k = 0{,}30$.
\begin{enumerate}
    \item Distinguer le rôle du signal modulant et celui de la porteuse. Vérifier que la condition $F \gg f$ est satisfaite.
    \item Calculer les amplitudes maximale $U_{max}$ et minimale $U_{min}$ de l'enveloppe.
    \item En déduire le taux de modulation $m$ par deux méthodes différentes et conclure sur la qualité de la modulation.
    \item Déterminer les trois fréquences présentes dans le spectre de $u(t)$ et préciser leur nom.
    \item On augmente l'amplitude du signal modulant jusqu'à $S_m' = 25\ \text{V}$ (les autres grandeurs inchangées). Calculer le nouveau taux de modulation et expliquer le phénomène observé.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Le signal modulant $s(t)$, de basse fréquence, contient l'information à transmettre. La porteuse, de haute fréquence, transporte cette information sans la contenir. On vérifie :
    \[
    \frac{F}{f} = \frac{240\times 10^{3}}{2{,}0\times 10^{3}} = 120
    \]
    Comme $F \gg f$, la condition est bien satisfaite.
    \item L'amplitude de la porteuse est $\left[A + k\,s(t)\right]$, comprise entre $A - k\,S_m$ et $A + k\,S_m$. Avec $k\,S_m = 0{,}30\times 4{,}0 = 1{,}2\ \text{V}$ :
    \[
    U_{max} = A + k\,S_m = 6{,}0 + 1{,}2 = 7{,}2\ \text{V}
    \]
    \[
    U_{min} = A - k\,S_m = 6{,}0 - 1{,}2 = 4{,}8\ \text{V}
    \]
    \item Première méthode :
    \[
    m = \frac{k\,S_m}{A} = \frac{0{,}30\times 4{,}0}{6{,}0} = \frac{1{,}2}{6{,}0} = 0{,}20
    \]
    Deuxième méthode :
    \[
    m = \frac{U_{max} - U_{min}}{U_{max} + U_{min}} = \frac{7{,}2 - 4{,}8}{7{,}2 + 4{,}8} = \frac{2{,}4}{12{,}0} = 0{,}20
    \]
    Les deux méthodes donnent $m = 0{,}20 < 1$ : il n'y a pas de surmodulation, la modulation est de bonne qualité.
    \item Le spectre comporte trois raies :
    \begin{itemize}
        \item la porteuse : $F = 240\ \text{kHz}$ ;
        \item la bande latérale inférieure : $F - f = 240 - 2{,}0 = 238\ \text{kHz}$ ;
        \item la bande latérale supérieure : $F + f = 240 + 2{,}0 = 242\ \text{kHz}$.
    \end{itemize}
    \item Le nouveau taux de modulation vaut :
    \[
    m' = \frac{k\,S_m'}{A} = \frac{0{,}30\times 25}{6{,}0} = \frac{7{,}5}{6{,}0} = 1{,}25
    \]
    Comme $m' = 1{,}25 > 1$, il y a surmodulation : la quantité $A - k\,S_m' = 6{,}0 - 7{,}5 = -1{,}5\ \text{V}$ deviendrait négative et l'enveloppe ne reproduit plus le signal informatif. La modulation devient inexploitable.
\end{enumerate}

### Problème 2 : Démodulation d'une tension modulée en amplitude
\begin{enonce}
On reçoit une tension modulée en amplitude par un signal sinusoïdal de fréquence $f = 1{,}0\ \text{kHz}$, la porteuse ayant pour fréquence $F = 150\ \text{kHz}$. On souhaite récupérer le signal informatif. La démodulation se fait en trois étapes : redressement, détection d'enveloppe par un filtre $RC$, puis élimination de la composante continue.
\begin{enumerate}
    \item Pourquoi commence-t-on par redresser la tension modulée avant la détection d'enveloppe ?
    \item Écrire la condition que doit vérifier la constante de temps $RC$ du filtre de détection d'enveloppe. Calculer les bornes $\dfrac{1}{F}$ et $\dfrac{1}{f}$.
    \item Le condensateur du filtre vaut $C = 22\ \text{nF}$. On dispose des résistances $R_1 = 0{,}10\ \text{k}\Omega$, $R_2 = 10\ \text{k}\Omega$ et $R_3 = 1{,}0\ \text{M}\Omega$. Pour chacune, calculer $RC$ et indiquer laquelle convient.
    \item Après la détection, on obtient une tension $v(t) = V_0 + a\cos(2\pi f\,t)$ avec $V_0 = 3{,}0\ \text{V}$ et $a = 1{,}0\ \text{V}$. Quel est le rôle de la composante $V_0$ ? Comment l'éliminer ?
    \item Donner l'expression de la tension finale obtenue et vérifier qu'elle restitue bien le signal informatif.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Sans redressement, la tension modulée oscille symétriquement autour de zéro : sa valeur moyenne est nulle et le filtre suivrait une enveloppe centrée sur $0$, sans information exploitable. Le redressement (par exemple par une diode) supprime l'alternance négative ; il ne reste qu'une enveloppe positive que le filtre $RC$ peut suivre.
    \item Le filtre doit suivre l'enveloppe (de période $\dfrac{1}{f}$) sans suivre les oscillations rapides de la porteuse (de période $\dfrac{1}{F}$). La condition est :
    \[
    \frac{1}{F} \ll RC \ll \frac{1}{f}
    \]
    Les bornes valent :
    \[
    \frac{1}{F} = \frac{1}{150\times 10^{3}} \approx 6{,}7\times 10^{-6}\ \text{s} \approx 6{,}7\ \mu\text{s}
    \]
    \[
    \frac{1}{f} = \frac{1}{1{,}0\times 10^{3}} = 1{,}0\times 10^{-3}\ \text{s} = 1{,}0\ \text{ms}
    \]
    \item Pour chaque résistance, avec $C = 22\ \text{nF} = 22\times 10^{-9}\ \text{F}$ :
    \begin{itemize}
        \item $R_1 C = 0{,}10\times 10^{3}\times 22\times 10^{-9} = 2{,}2\times 10^{-6}\ \text{s} = 2{,}2\ \mu\text{s}$ : trop petit ($RC < \dfrac{1}{F}$), le filtre suit la porteuse. Ne convient pas.
        \item $R_2 C = 10\times 10^{3}\times 22\times 10^{-9} = 2{,}2\times 10^{-4}\ \text{s} = 0{,}22\ \text{ms}$ : on a bien $6{,}7\ \mu\text{s} \ll 0{,}22\ \text{ms} \ll 1{,}0\ \text{ms}$. Convient.
        \item $R_3 C = 1{,}0\times 10^{6}\times 22\times 10^{-9} = 2{,}2\times 10^{-2}\ \text{s} = 22\ \text{ms}$ : trop grand ($RC > \dfrac{1}{f}$), le filtre ne suit plus l'enveloppe. Ne convient pas.
    \end{itemize}
    Seule la résistance $R_2 = 10\ \text{k}\Omega$ convient.
    \item La composante continue $V_0$ provient de la valeur moyenne $A$ de la porteuse : elle ne contient aucune information. Seule la partie variable $a\cos(2\pi f\,t)$ reproduit le signal informatif. On élimine $V_0$ en plaçant un condensateur de liaison en série (montage passe-haut) qui bloque la tension continue et laisse passer la composante variable.
    \item La tension finale obtenue est :
    \[
    v_s(t) = a\cos(2\pi f\,t) = 1{,}0\times\cos\!\left(2\pi\times 1{,}0\times 10^{3}\,t\right)\ \text{V}
    \]
    Elle est sinusoïdale, d'amplitude $1{,}0\ \text{V}$ et de fréquence $f = 1{,}0\ \text{kHz}$ : c'est bien l'image du signal informatif de départ. La démodulation a réussi.
\end{enumerate}

### Problème 3 : Comparaison de deux réglages et conditions de bonne modulation
\begin{enonce}
Un émetteur produit une tension modulée $u(t) = \left[A + k\,s(t)\right]\cos(2\pi F\,t)$ avec $s(t) = S_m\cos(2\pi f\,t)$. La porteuse a pour fréquence $F = 180\ \text{kHz}$ et $k = 1{,}0$.

On effectue deux réglages :
\begin{itemize}
    \item Réglage 1 : $A = 8{,}0\ \text{V}$, $S_m = 2{,}0\ \text{V}$, $f = 3{,}0\ \text{kHz}$ ;
    \item Réglage 2 : $A = 5{,}0\ \text{V}$, $S_m = 7{,}0\ \text{V}$, $f = 3{,}0\ \text{kHz}$.
\end{itemize}
\begin{enumerate}
    \item Rappeler les deux conditions d'une bonne modulation d'amplitude.
    \item Pour chaque réglage, calculer le taux de modulation $m$ et indiquer s'il y a surmodulation.
    \item Pour le réglage 1, calculer $U_{max}$ et $U_{min}$, puis retrouver $m$ à partir de ces deux valeurs.
    \item Donner, pour le réglage 1, les trois fréquences du spectre et la largeur de bande occupée.
    \item Quel réglage faut-il choisir pour obtenir une transmission correcte ? Justifier.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Les deux conditions d'une bonne modulation sont :
    \begin{itemize}
        \item le taux de modulation $m < 1$ : il n'y a pas de surmodulation, l'enveloppe reproduit fidèlement le signal informatif ;
        \item la fréquence de la porteuse très supérieure à celle du signal modulant, $F \gg f$, pour que l'enveloppe soit bien définie.
    \end{itemize}
    \item Avec $m = \dfrac{k\,S_m}{A}$ et $k = 1{,}0$ :
    \[
    m_1 = \frac{1{,}0\times 2{,}0}{8{,}0} = 0{,}25 \qquad m_2 = \frac{1{,}0\times 7{,}0}{5{,}0} = 1{,}4
    \]
    Réglage 1 : $m_1 = 0{,}25 < 1$, pas de surmodulation. Réglage 2 : $m_2 = 1{,}4 > 1$, il y a surmodulation.
    \item Pour le réglage 1, avec $k\,S_m = 1{,}0\times 2{,}0 = 2{,}0\ \text{V}$ :
    \[
    U_{max} = A + k\,S_m = 8{,}0 + 2{,}0 = 10{,}0\ \text{V}
    \]
    \[
    U_{min} = A - k\,S_m = 8{,}0 - 2{,}0 = 6{,}0\ \text{V}
    \]
    On retrouve :
    \[
    m = \frac{U_{max} - U_{min}}{U_{max} + U_{min}} = \frac{10{,}0 - 6{,}0}{10{,}0 + 6{,}0} = \frac{4{,}0}{16{,}0} = 0{,}25
    \]
    ce qui est conforme à $m_1$.
    \item Les trois fréquences du spectre sont :
    \begin{itemize}
        \item la porteuse : $F = 180\ \text{kHz}$ ;
        \item la bande latérale inférieure : $F - f = 180 - 3{,}0 = 177\ \text{kHz}$ ;
        \item la bande latérale supérieure : $F + f = 180 + 3{,}0 = 183\ \text{kHz}$.
    \end{itemize}
    La largeur de bande occupée est $2f = 2\times 3{,}0 = 6{,}0\ \text{kHz}$.
    \item Il faut choisir le réglage 1 : son taux de modulation $m_1 = 0{,}25 < 1$ évite la surmodulation, et la condition $F \gg f$ est satisfaite ($\dfrac{F}{f} = 60$). Le réglage 2 ($m_2 = 1{,}4 > 1$) provoque une surmodulation qui déforme l'enveloppe et rend la transmission inexploitable.
\end{enumerate}
