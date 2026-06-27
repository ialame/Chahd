### Exercice 1 : Vitesse de synchronisme et glissement
\begin{enonce}
Un moteur asynchrone triphasé à cage est alimenté par le réseau marocain de fréquence $f = 50\ \text{Hz}$. Son stator comporte $p = 2$ paires de pôles. En charge nominale, le rotor tourne à $n = 1455\ \text{tr/min}$.
\begin{enumerate}
    \item Calculer la vitesse de synchronisme $n_s$ en tr/min.
    \item Calculer le glissement nominal $g$ (en \% ).
    \item Calculer la vitesse angulaire $\Omega$ du rotor en rad/s.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item La vitesse de synchronisme est $n_s = \dfrac{60f}{p}$ :
$$n_s = \dfrac{60 \times 50}{2} = 1500\ \text{tr/min}.$$
    \item Le glissement compare $n$ à $n_s$ :
$$g = \dfrac{n_s - n}{n_s} = \dfrac{1500 - 1455}{1500} = 0{,}03 = 3\ \%.$$
    \item On convertit la vitesse en rad/s avec $\Omega = \dfrac{2\pi n}{60}$ :
$$\Omega = \dfrac{2\pi \times 1455}{60} \approx 152\ \text{rad/s}.$$
\end{enumerate}

### Exercice 2 : Puissance absorbée sur le réseau triphasé
\begin{enonce}
Un moteur asynchrone est couplé sur un réseau triphasé de tension composée $U = 400\ \text{V}$. Il appelle un courant de ligne $I = 8\ \text{A}$ avec un facteur de puissance $\cos\varphi = 0{,}80$.
\begin{enumerate}
    \item Rappeler l'expression de la puissance absorbée $P_a$ d'un récepteur triphasé équilibré.
    \item Calculer $P_a$.
    \item Le moteur fournit une puissance utile $P_u = 3{,}5\ \text{kW}$. Calculer son rendement $\eta$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Pour un récepteur triphasé équilibré :
$$P_a = \sqrt{3}\,U\,I\,\cos\varphi.$$
    \item Application numérique :
$$P_a = \sqrt{3} \times 400 \times 8 \times 0{,}80 \approx 4434\ \text{W} \approx 4{,}43\ \text{kW}.$$
    \item Le rendement est le rapport de la puissance utile à la puissance absorbée :
$$\eta = \dfrac{P_u}{P_a} = \dfrac{3500}{4434} \approx 0{,}79 = 79\ \%.$$
\end{enumerate}

### Exercice 3 : Couple utile et puissance mécanique
\begin{enonce}
Un moteur asynchrone de $p = 3$ paires de pôles, alimenté à $f = 50\ \text{Hz}$, tourne à $n = 960\ \text{tr/min}$. Il fournit sur son arbre une puissance utile $P_u = 2{,}2\ \text{kW}$.
\begin{enumerate}
    \item Calculer la vitesse de synchronisme $n_s$ et le glissement $g$.
    \item Calculer la vitesse angulaire $\Omega$ du rotor.
    \item En déduire le moment du couple utile $T_u$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Vitesse de synchronisme : $n_s = \dfrac{60 \times 50}{3} = 1000\ \text{tr/min}$. Glissement :
$$g = \dfrac{1000 - 960}{1000} = 0{,}04 = 4\ \%.$$
    \item Vitesse angulaire :
$$\Omega = \dfrac{2\pi n}{60} = \dfrac{2\pi \times 960}{60} \approx 100{,}5\ \text{rad/s}.$$
    \item Le couple utile vérifie $P_u = T_u\,\Omega$, donc :
$$T_u = \dfrac{P_u}{\Omega} = \dfrac{2200}{100{,}5} \approx 21{,}9\ \text{N}\cdot\text{m}.$$
\end{enumerate}

### Exercice 4 : Pertes Joule au rotor et puissance transmise
\begin{enonce}
Un moteur asynchrone absorbe sur le réseau une puissance $P_a = 5\ \text{kW}$. Les pertes Joule au stator valent $p_{js} = 250\ \text{W}$ et les pertes fer $p_{fer} = 150\ \text{W}$. Le glissement nominal est $g = 0{,}04$.
\begin{enumerate}
    \item Calculer la puissance transmise au rotor $P_{tr}$.
    \item En déduire les pertes Joule au rotor $p_{jr}$.
    \item Calculer la puissance mécanique $P_m = P_{tr}(1-g)$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item La puissance transmise au rotor est ce qui reste après les pertes statoriques :
$$P_{tr} = P_a - p_{js} - p_{fer} = 5000 - 250 - 150 = 4600\ \text{W}.$$
    \item Les pertes Joule rotor sont proportionnelles au glissement :
$$p_{jr} = g\,P_{tr} = 0{,}04 \times 4600 = 184\ \text{W}.$$
    \item La puissance mécanique développée par le rotor :
$$P_m = P_{tr}(1-g) = 4600 \times (1 - 0{,}04) = 4416\ \text{W}.$$
\end{enumerate}

### Exercice 5 : Démarrage étoile-triangle
\begin{enonce}
Un moteur asynchrone démarré en direct appellerait un courant de démarrage $I_d = 6\,I_n$, avec un courant nominal $I_n = 10\ \text{A}$. Pour limiter cette pointe, on choisit un démarrage étoile-triangle.
\begin{enumerate}
    \item Calculer le courant de démarrage en démarrage direct.
    \item En démarrage étoile, le courant de démarrage est divisé par 3. Calculer le courant de démarrage en couplage étoile.
    \item Le couple de démarrage en direct vaut $T_d = 24\ \text{N}\cdot\text{m}$. Que devient-il en couplage étoile ? Quel type de charge ce démarrage convient-il ?
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Le courant de démarrage direct vaut :
$$I_{d,\text{direct}} = 6\,I_n = 6 \times 10 = 60\ \text{A}.$$
    \item En couplage étoile, le courant est divisé par 3 :
$$I_{d,Y} = \dfrac{I_{d,\text{direct}}}{3} = \dfrac{60}{3} = 20\ \text{A}.$$
    \item Le couplage étoile divise aussi le couple par 3 :
$$T_{d,Y} = \dfrac{T_d}{3} = \dfrac{24}{3} = 8\ \text{N}\cdot\text{m}.$$
Le couple de démarrage étant fortement réduit, ce procédé ne convient qu'aux charges démarrant à vide ou à faible couple résistant (ventilateurs, pompes centrifuges).
\end{enumerate}
