### Exercice 1 : Signal modulant et porteuse
\begin{enonce}
Dans une chaîne de transmission par modulation d'amplitude, on distingue le signal informatif (modulant) de fréquence $f$ et la porteuse de fréquence $F$.

On donne pour le signal modulant $f = 1{,}0\ \text{kHz}$ et pour la porteuse $F = 250\ \text{kHz}$.
\begin{enumerate}
    \item Lequel de ces deux signaux contient l'information à transmettre ?
    \item Calculer le rapport $\dfrac{F}{f}$ et indiquer s'il est compatible avec une bonne modulation.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item C'est le signal modulant, de basse fréquence $f$, qui contient l'information à transmettre (par exemple un signal sonore). La porteuse, de haute fréquence $F$, sert uniquement à transporter cette information.
    \item Le rapport vaut :
    \[
    \frac{F}{f} = \frac{250\times 10^{3}}{1{,}0\times 10^{3}} = 250
    \]
    Comme $F \gg f$ (la porteuse est $250$ fois plus rapide que la modulante), la condition $F \gg f$ est bien respectée : la modulation sera de bonne qualité de ce point de vue.
\end{enumerate}

### Exercice 2 : Expression de la tension modulée
\begin{enonce}
La tension modulée en amplitude s'écrit $u(t) = \left[A + k\,s(t)\right]\cos(2\pi F\,t)$, où $s(t) = S_m\cos(2\pi f\,t)$ est le signal modulant.

On donne $A = 5{,}0\ \text{V}$, $k = 0{,}50$, $S_m = 6{,}0\ \text{V}$.
\begin{enumerate}
    \item Calculer le terme $k\,S_m$.
    \item Donner les valeurs de l'amplitude maximale $U_{max}$ et minimale $U_{min}$ de l'enveloppe de $u(t)$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item $k\,S_m = 0{,}50\times 6{,}0 = 3{,}0\ \text{V}$.
    \item L'amplitude de la porteuse est $\left[A + k\,s(t)\right]$, qui varie entre $A - k\,S_m$ et $A + k\,S_m$ :
    \[
    U_{max} = A + k\,S_m = 5{,}0 + 3{,}0 = 8{,}0\ \text{V}
    \]
    \[
    U_{min} = A - k\,S_m = 5{,}0 - 3{,}0 = 2{,}0\ \text{V}
    \]
\end{enumerate}

### Exercice 3 : Taux de modulation à partir de $A$, $k$ et $S_m$
\begin{enonce}
Pour une tension modulée $u(t) = \left[A + k\,s(t)\right]\cos(2\pi F\,t)$ avec $s(t) = S_m\cos(2\pi f\,t)$, on définit le taux (ou indice) de modulation par $m = \dfrac{k\,S_m}{A}$.

On donne $A = 4{,}0\ \text{V}$, $k = 0{,}80$ et $S_m = 2{,}5\ \text{V}$.
\begin{enumerate}
    \item Calculer le taux de modulation $m$.
    \item La modulation est-elle de bonne qualité ? Justifier.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Le taux de modulation vaut :
    \[
    m = \frac{k\,S_m}{A} = \frac{0{,}80\times 2{,}5}{4{,}0} = \frac{2{,}0}{4{,}0} = 0{,}50
    \]
    \item Comme $m = 0{,}50 < 1$, il n'y a pas de surmodulation : la modulation est de bonne qualité. L'enveloppe de la tension modulée reproduit fidèlement le signal informatif.
\end{enumerate}

### Exercice 4 : Taux de modulation à partir de $U_{max}$ et $U_{min}$
\begin{enonce}
À l'oscilloscope, l'enveloppe d'une tension modulée en amplitude présente une amplitude maximale $U_{max} = 9{,}0\ \text{V}$ et une amplitude minimale $U_{min} = 3{,}0\ \text{V}$.
\begin{enumerate}
    \item Calculer le taux de modulation $m = \dfrac{U_{max} - U_{min}}{U_{max} + U_{min}}$.
    \item Conclure sur la qualité de la modulation.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Le taux de modulation vaut :
    \[
    m = \frac{U_{max} - U_{min}}{U_{max} + U_{min}} = \frac{9{,}0 - 3{,}0}{9{,}0 + 3{,}0} = \frac{6{,}0}{12{,}0} = 0{,}50
    \]
    \item Comme $m = 0{,}50 < 1$, il n'y a pas de surmodulation : la modulation est correcte.
\end{enumerate}

### Exercice 5 : Cas de surmodulation
\begin{enonce}
On observe une tension modulée dont l'enveloppe présente $U_{max} = 7{,}0\ \text{V}$ et $U_{min} = 1{,}0\ \text{V}$. Dans un second réglage, on a $A = 2{,}0\ \text{V}$, $k = 1{,}0$ et $S_m = 3{,}0\ \text{V}$.
\begin{enumerate}
    \item Calculer le taux de modulation dans le premier cas.
    \item Calculer le taux de modulation dans le second cas et indiquer s'il y a surmodulation.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Premier cas :
    \[
    m_1 = \frac{U_{max} - U_{min}}{U_{max} + U_{min}} = \frac{7{,}0 - 1{,}0}{7{,}0 + 1{,}0} = \frac{6{,}0}{8{,}0} = 0{,}75
    \]
    Comme $m_1 = 0{,}75 < 1$, il n'y a pas de surmodulation.
    \item Second cas :
    \[
    m_2 = \frac{k\,S_m}{A} = \frac{1{,}0\times 3{,}0}{2{,}0} = 1{,}5
    \]
    Comme $m_2 = 1{,}5 > 1$, il y a surmodulation : l'amplitude $A - k\,S_m = 2{,}0 - 3{,}0 = -1{,}0\ \text{V}$ deviendrait négative et l'enveloppe ne reproduit plus le signal informatif. La modulation est inexploitable.
\end{enumerate}

### Exercice 6 : Spectre de fréquences
\begin{enonce}
Une porteuse de fréquence $F = 200\ \text{kHz}$ est modulée en amplitude par un signal sinusoïdal de fréquence $f = 4{,}0\ \text{kHz}$.

Déterminer les trois fréquences présentes dans le spectre de la tension modulée et indiquer le nom de chacune.
\end{enonce}

\textbf{Solution :}
Le spectre d'une tension modulée en amplitude par un signal sinusoïdal comporte trois raies :
\begin{itemize}
    \item la porteuse, de fréquence $F = 200\ \text{kHz}$ ;
    \item la bande latérale inférieure, de fréquence $F - f = 200 - 4{,}0 = 196\ \text{kHz}$ ;
    \item la bande latérale supérieure, de fréquence $F + f = 200 + 4{,}0 = 204\ \text{kHz}$.
\end{itemize}
La largeur du spectre occupé est $\left(F + f\right) - \left(F - f\right) = 2f = 8{,}0\ \text{kHz}$.

### Exercice 7 : Choix du filtre de détection d'enveloppe
\begin{enonce}
Pour démoduler une tension modulée en amplitude, on réalise un redressement suivi d'une détection d'enveloppe à l'aide d'un filtre $RC$. La condition à respecter est $\dfrac{1}{F} \ll RC \ll \dfrac{1}{f}$.

On donne $F = 100\ \text{kHz}$ et $f = 1{,}0\ \text{kHz}$.
\begin{enumerate}
    \item Calculer les périodes $\dfrac{1}{F}$ et $\dfrac{1}{f}$.
    \item Le condensateur valant $C = 10\ \text{nF}$, montrer que la valeur $R = 10\ \text{k}\Omega$ convient.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Les périodes valent :
    \[
    \frac{1}{F} = \frac{1}{100\times 10^{3}} = 1{,}0\times 10^{-5}\ \text{s} = 10\ \mu\text{s}
    \]
    \[
    \frac{1}{f} = \frac{1}{1{,}0\times 10^{3}} = 1{,}0\times 10^{-3}\ \text{s} = 1{,}0\ \text{ms}
    \]
    \item La constante de temps vaut :
    \[
    RC = 10\times 10^{3}\times 10\times 10^{-9} = 1{,}0\times 10^{-4}\ \text{s} = 0{,}10\ \text{ms}
    \]
    On vérifie l'encadrement : $10\ \mu\text{s} \ll 0{,}10\ \text{ms} \ll 1{,}0\ \text{ms}$, soit $\dfrac{1}{F} \ll RC \ll \dfrac{1}{f}$. La valeur $R = 10\ \text{k}\Omega$ convient : le filtre suit l'enveloppe (lente) sans suivre les oscillations de la porteuse (rapides).
\end{enumerate}

### Exercice 8 : Élimination de la composante continue
\begin{enonce}
Après la détection d'enveloppe, le signal récupéré s'écrit $v(t) = V_0 + a\cos(2\pi f\,t)$, avec une composante continue $V_0 = 4{,}0\ \text{V}$ et une composante variable d'amplitude $a = 1{,}5\ \text{V}$ à la fréquence $f = 1{,}0\ \text{kHz}$.
\begin{enumerate}
    \item Pourquoi faut-il éliminer la composante continue $V_0$ ?
    \item Quel composant simple permet de réaliser cette opération ? Préciser le signal obtenu en sortie.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item La composante continue $V_0$ ne porte aucune information : elle provient de la valeur moyenne $A$ de la porteuse. Seule la partie variable $a\cos(2\pi f\,t)$ reproduit le signal informatif. Il faut donc supprimer $V_0$ pour récupérer uniquement l'information.
    \item On place un condensateur en série (montage passe-haut, dit « de liaison ») qui bloque la composante continue et laisse passer la composante variable. Le signal de sortie est alors :
    \[
    v_s(t) = a\cos(2\pi f\,t)
    \]
    d'amplitude $1{,}5\ \text{V}$ et de fréquence $f = 1{,}0\ \text{kHz}$ : c'est l'image du signal informatif de départ.
\end{enumerate}
