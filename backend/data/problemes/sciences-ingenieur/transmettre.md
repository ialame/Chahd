### Problème 1 : Étude d'un réducteur de motoréducteur
\begin{enonce}
Un motoréducteur entraîne un tapis roulant. Le moteur fournit une vitesse $\omega_e = 2400\ \text{tr/min}$ et un couple $C_e = 1{,}5\ \text{N·m}$. Le réducteur est un train d'engrenages à deux étages :
\begin{itemize}
    \item étage 1 : roue menante $Z_1 = 14$ dents, roue menée $Z_2 = 42$ dents ;
    \item étage 2 : roue menante $Z_3 = 18$ dents (solidaire de $Z_2$), roue menée $Z_4 = 54$ dents.
\end{itemize}
\begin{enumerate}
    \item Calculer le rapport de transmission $r_1$ de l'étage 1, puis $r_2$ de l'étage 2.
    \item En déduire le rapport global $r$ du réducteur.
    \item Calculer la vitesse de rotation $\omega_s$ de l'arbre de sortie.
    \item En supposant la transmission **sans pertes** ($P_e = P_s$), calculer le couple de sortie $C_s$.
    \item Vérifier la cohérence en calculant la puissance d'entrée et la puissance de sortie (on prendra $\pi \approx 3{,}14$, puissance en watts).
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Pour chaque étage, le rapport est le quotient des dents menante/menée :
$$r_1 = \frac{Z_1}{Z_2} = \frac{14}{42} = \frac{1}{3}, \qquad r_2 = \frac{Z_3}{Z_4} = \frac{18}{54} = \frac{1}{3}.$$
    \item Le rapport global est le produit :
$$r = r_1 \times r_2 = \frac{1}{3} \times \frac{1}{3} = \frac{1}{9} \approx 0{,}111.$$
    \item La vitesse de sortie :
$$\omega_s = r \times \omega_e = \frac{1}{9} \times 2400 \approx 266{,}7\ \text{tr/min}.$$
    \item Sans pertes, le couple varie en sens inverse de la vitesse : $C_s = \dfrac{C_e}{r} = C_e \times 9$ :
$$C_s = 1{,}5 \times 9 = 13{,}5\ \text{N·m}.$$
    \item Convertissons les vitesses en $\text{rad/s}$ via $\omega(\text{rad/s}) = \dfrac{2\pi}{60}\,\omega(\text{tr/min})$ :
$$\omega_e = \frac{2 \times 3{,}14}{60} \times 2400 \approx 251{,}2\ \text{rad/s}, \qquad \omega_s = \frac{2 \times 3{,}14}{60} \times 266{,}7 \approx 27{,}9\ \text{rad/s}.$$
La puissance d'entrée : $P_e = C_e \times \omega_e = 1{,}5 \times 251{,}2 \approx 377\ \text{W}.$
La puissance de sortie : $P_s = C_s \times \omega_s = 13{,}5 \times 27{,}9 \approx 377\ \text{W}.$
On retrouve bien $P_e = P_s$ : la transmission conserve la puissance, elle ne fait qu'échanger vitesse et couple.
\end{enumerate}

### Problème 2 : Système vis-écrou d'un vérin électrique
\begin{enonce}
Un vérin électrique commande l'ouverture d'une trappe. Un moteur entraîne directement une vis de pas $p = 5\ \text{mm}$. L'écrou, solidaire de la trappe, ne peut que se translater. Le moteur tourne à $N = 600\ \text{tr/min}$.
\begin{enumerate}
    \item Calculer la vitesse de translation $v$ de la trappe, en $\text{mm/s}$.
    \item La trappe doit s'ouvrir sur une course de $90\ \text{mm}$. Combien de tours la vis doit-elle effectuer ? Combien de temps dure l'ouverture ?
    \item On insère désormais entre le moteur et la vis un réducteur à engrenage de rapport $r = \dfrac{1}{4}$ ($Z_1 = 20$, $Z_2 = 80$). Le moteur tournant toujours à $600\ \text{tr/min}$, calculer la nouvelle vitesse de rotation de la vis, puis la nouvelle vitesse de translation $v'$.
    \item Quel est l'intérêt d'ajouter ce réducteur ?
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item La vis tourne à $N = 600\ \text{tr/min} = 10\ \text{tr/s}$. À chaque tour l'écrou avance d'un pas $p$, donc :
$$v = 10 \times 5 = 50\ \text{mm/s}.$$
    \item Le nombre de tours pour une course $x = 90\ \text{mm}$ vaut $N_t = \dfrac{x}{p} = \dfrac{90}{5} = 18\ \text{tours}.$
La durée d'ouverture : $t = \dfrac{x}{v} = \dfrac{90}{50} = 1{,}8\ \text{s}.$
    \item Avec le réducteur, la vis tourne à $N' = r \times N = \dfrac{1}{4} \times 600 = 150\ \text{tr/min} = 2{,}5\ \text{tr/s}.$
La vitesse de translation devient :
$$v' = 2{,}5 \times 5 = 12{,}5\ \text{mm/s}.$$
    \item Le réducteur **diminue la vitesse** (donc la trappe s'ouvre plus lentement et plus en douceur) mais **augmente le couple** disponible d'un facteur $4$ : le vérin peut alors soulever une trappe plus lourde sans surcharger le moteur.
\end{enumerate}

### Problème 3 : Comparaison de deux solutions de transmission
\begin{enonce}
On veut entraîner une meuleuse à $\omega_s = 600\ \text{tr/min}$ à partir d'un moteur tournant à $\omega_e = 1800\ \text{tr/min}$. On hésite entre deux solutions.
\begin{itemize}
    \item \textbf{Solution A} — poulies-courroie : poulie motrice $D_1 = 50\ \text{mm}$, poulie réceptrice $D_2$ à déterminer.
    \item \textbf{Solution B} — engrenage simple : roue menante $Z_1 = 20$ dents, roue menée $Z_2$ à déterminer.
\end{itemize}
\begin{enumerate}
    \item Quel rapport de transmission $r$ doit fournir chaque solution ?
    \item Pour la solution A, calculer le diamètre $D_2$ de la poulie réceptrice.
    \item Pour la solution B, calculer le nombre de dents $Z_2$ de la roue menée.
    \item Le moteur fournit un couple $C_e = 2\ \text{N·m}$. En supposant les deux solutions sans pertes, calculer le couple de sortie $C_s$ (identique pour A et B).
    \item Citer un avantage de la solution B (engrenage) par rapport à la solution A (courroie).
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Le rapport recherché est imposé par les vitesses :
$$r = \frac{\omega_s}{\omega_e} = \frac{600}{1800} = \frac{1}{3} \approx 0{,}33.$$
    \item Pour les poulies, $r = \dfrac{D_1}{D_2}$, d'où :
$$D_2 = \frac{D_1}{r} = \frac{50}{1/3} = 150\ \text{mm}.$$
    \item Pour l'engrenage, $r = \dfrac{Z_1}{Z_2}$, d'où :
$$Z_2 = \frac{Z_1}{r} = \frac{20}{1/3} = 60\ \text{dents}.$$
    \item Le rapport étant le même ($r = \frac{1}{3}$), le couple de sortie est dans les deux cas :
$$C_s = \frac{C_e}{r} = 2 \times 3 = 6\ \text{N·m}.$$
    \item L'engrenage **ne glisse pas** : le rapport est rigoureusement exact et constant, et il transmet de **forts efforts** sans patinage. La courroie, elle, peut glisser (le rapport réel s'écarte légèrement de $\frac{1}{3}$) mais elle est plus silencieuse, moins chère et amortit les à-coups. (On accepte aussi : encombrement plus compact pour l'engrenage.)
\end{enumerate}
