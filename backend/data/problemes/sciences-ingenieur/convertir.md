### Problème 1 : Motorisation d'un convoyeur à courant continu
\begin{enonce}
Un convoyeur est entraîné par un moteur à courant continu. En fonctionnement nominal, le moteur tourne à $n = 1500\ \text{tr/min}$ et développe un couple utile $C = 0{,}5\ \text{N}\cdot\text{m}$. Le moteur est alimenté sous une tension $U = 48\ \text{V}$ et absorbe un courant $I = 2\ \text{A}$.
\begin{enumerate}
    \item Calculer la vitesse angulaire $\Omega$ du moteur en rad/s. On rappelle $\Omega = \dfrac{2\pi n}{60}$.
    \item Calculer la puissance mécanique utile $P_u = C\,\Omega$.
    \item Calculer la puissance électrique absorbée $P_a = U\,I$.
    \item En déduire le rendement $\eta = \dfrac{P_u}{P_a}$ du moteur (en \%).
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Conversion de la vitesse de rotation :
$$\Omega = \dfrac{2\pi n}{60} = \dfrac{2\pi \times 1500}{60} = 50\pi \approx 157\ \text{rad/s}.$$
    \item Puissance mécanique utile :
$$P_u = C \times \Omega = 0{,}5 \times 157 \approx 78{,}5\ \text{W}.$$
    \item Puissance électrique absorbée :
$$P_a = U \times I = 48 \times 2 = 96\ \text{W}.$$
    \item Le rendement est le rapport de la puissance utile à la puissance absorbée :
$$\eta = \dfrac{P_u}{P_a} = \dfrac{78{,}5}{96} \approx 0{,}82,\quad \text{soit environ } 82\ \%.$$
On vérifie que $P_u < P_a$ : pour un moteur réel, la puissance utile (mécanique) est toujours inférieure à la puissance absorbée (électrique), l'écart $P_a - P_u \approx 17{,}5\ \text{W}$ correspondant aux pertes (effet Joule dans l'induit, frottements).
\end{enumerate}

### Problème 2 : Étude d'un moteur asynchrone d'atelier
\begin{enonce}
Un moteur asynchrone triphasé entraîne une pompe d'atelier. Il est alimenté par le réseau de fréquence $f = 50\ \text{Hz}$ et son stator possède $p = 2$ paires de pôles. La plaque signalétique indique une vitesse nominale $n = 1455\ \text{tr/min}$ et une puissance utile $P_u = 3\ \text{kW}$.
\begin{enumerate}
    \item Calculer la vitesse de synchronisme $n_s$ en tr/min.
    \item Calculer le glissement nominal $g$.
    \item Calculer la vitesse angulaire $\Omega$ du rotor (rad/s) à $n = 1455\ \text{tr/min}$.
    \item En déduire le couple utile nominal $C = \dfrac{P_u}{\Omega}$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Vitesse de synchronisme :
$$n_s = \dfrac{f}{p} = \dfrac{50}{2} = 25\ \text{tr/s} = 25 \times 60 = 1500\ \text{tr/min}.$$
    \item Glissement nominal :
$$g = \dfrac{n_s - n}{n_s} = \dfrac{1500 - 1455}{1500} = \dfrac{45}{1500} = 0{,}03,\quad \text{soit } 3\ \%.$$
    \item Vitesse angulaire du rotor :
$$\Omega = \dfrac{2\pi n}{60} = \dfrac{2\pi \times 1455}{60} \approx 152{,}4\ \text{rad/s}.$$
    \item Couple utile nominal :
$$C = \dfrac{P_u}{\Omega} = \dfrac{3000}{152{,}4} \approx 19{,}7\ \text{N}\cdot\text{m}.$$
\end{enumerate}

### Problème 3 : Système de bridage par vérins pneumatiques
\begin{enonce}
Un poste de bridage utilise deux vérins pneumatiques double effet identiques pour maintenir une pièce. Chaque vérin a un piston de diamètre $D = 50\ \text{mm}$ et une tige de diamètre $d = 20\ \text{mm}$. Le réseau d'air comprimé est à $p = 7\ \text{bar}$.
\begin{enumerate}
    \item Calculer la surface pleine $S$ du piston (côté fond).
    \item Calculer l'effort de poussée $F_{\text{sortie}}$ d'un vérin lorsque l'air pousse côté fond.
    \item Lors de la rentrée, l'air agit sur la surface annulaire $S' = S - \dfrac{\pi d^2}{4}$ (la tige occupe une partie de la section). Calculer $S'$ puis l'effort de rentrée $F_{\text{rentrée}}$.
    \item En déduire l'effort total de poussée exercé sur la pièce par les deux vérins.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Surface pleine du piston, avec $D = 50\ \text{mm} = 0{,}050\ \text{m}$ :
$$S = \dfrac{\pi D^2}{4} = \dfrac{\pi \times (0{,}050)^2}{4} \approx 1{,}96 \times 10^{-3}\ \text{m}^2.$$
    \item Effort de poussée d'un vérin, avec $p = 7\ \text{bar} = 7 \times 10^{5}\ \text{Pa}$ :
$$F_{\text{sortie}} = p \times S = 7 \times 10^{5} \times 1{,}96 \times 10^{-3} \approx 1374\ \text{N} \approx 1{,}37\ \text{kN}.$$
    \item Surface annulaire, avec $d = 20\ \text{mm} = 0{,}020\ \text{m}$ :
$$\dfrac{\pi d^2}{4} = \dfrac{\pi \times (0{,}020)^2}{4} \approx 3{,}14 \times 10^{-4}\ \text{m}^2,$$
$$S' = S - \dfrac{\pi d^2}{4} \approx 1{,}96 \times 10^{-3} - 3{,}14 \times 10^{-4} \approx 1{,}65 \times 10^{-3}\ \text{m}^2.$$
Effort de rentrée :
$$F_{\text{rentrée}} = p \times S' = 7 \times 10^{5} \times 1{,}65 \times 10^{-3} \approx 1155\ \text{N} \approx 1{,}16\ \text{kN}.$$
On constate que $F_{\text{rentrée}} < F_{\text{sortie}}$ : la tige réduit la surface utile, donc l'effort en rentrée est plus faible.
    \item En phase de bridage, les deux vérins poussent côté fond :
$$F_{\text{total}} = 2 \times F_{\text{sortie}} \approx 2 \times 1374 \approx 2748\ \text{N} \approx 2{,}75\ \text{kN}.$$
\end{enumerate}
