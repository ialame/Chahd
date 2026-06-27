### Problème 1 : Table de positionnement d'une machine à commande numérique
\begin{enonce}
La table mobile d'une petite fraiseuse à commande numérique est déplacée par un moteur pas à pas \textbf{hybride} d'angle de pas $\alpha = 1{,}8^\circ$. Le moteur entraîne une vis à billes dont un tour complet déplace la table d'une distance $p = 4\ \text{mm}$ (pas de la vis). On rappelle $\alpha = \dfrac{360^\circ}{N}$ et $N_r = \dfrac{f}{N}$.
\begin{enumerate}
    \item Déterminer le nombre de pas par tour $N$ du moteur.
    \item En déduire la \textbf{résolution} de la table, c'est-à-dire le déplacement linéaire $d$ pour un pas du moteur.
    \item Combien d'impulsions faut-il pour déplacer la table de $30\ \text{mm}$ ?
    \item Quelle fréquence $f$ des impulsions faut-il appliquer pour obtenir une vitesse de déplacement linéaire $v = 6\ \text{mm/s}$ ?
    \item Pour usiner finement, on passe en commande \textbf{demi-pas}. Quelle devient la résolution de la table ?
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Le nombre de pas par tour est :
$$N = \dfrac{360^\circ}{\alpha} = \dfrac{360^\circ}{1{,}8^\circ} = 200 \text{ pas}.$$
    \item Un tour ($200$ pas) déplace la table de $p = 4\ \text{mm}$, donc un pas correspond à :
$$d = \dfrac{p}{N} = \dfrac{4}{200} = 0{,}02\ \text{mm/pas}.$$
    \item Le nombre d'impulsions est le déplacement voulu divisé par la résolution :
$$n = \dfrac{30}{d} = \dfrac{30}{0{,}02} = 1500 \text{ impulsions}.$$
    \item Chaque pas déplace la table de $d = 0{,}02\ \text{mm}$ et il faut $v = 6\ \text{mm/s}$. Le nombre de pas par seconde (la fréquence) est :
$$f = \dfrac{v}{d} = \dfrac{6}{0{,}02} = 300 \text{ pas par seconde}.$$
(On vérifie : $N_r = \dfrac{f}{N} = \dfrac{300}{200} = 1{,}5\ \text{tr/s}$, soit $1{,}5 \times 4 = 6\ \text{mm/s}$.)
    \item En demi-pas, le déplacement par impulsion est divisé par deux :
$$d' = \dfrac{d}{2} = \dfrac{0{,}02}{2} = 0{,}01\ \text{mm}.$$
La résolution est deux fois plus fine, ce qui améliore la précision de l'usinage.
\end{enumerate}

### Problème 2 : Orientation d'une antenne motorisée
\begin{enonce}
Le plateau tournant d'une antenne est d'abord orienté par un moteur pas à pas à \textbf{aimant permanent} d'angle de pas $\alpha_1 = 7{,}5^\circ$.
\begin{enumerate}
    \item Calculer le nombre de pas par tour $N_1$ de ce moteur.
    \item Combien d'impulsions faut-il pour orienter l'antenne de $90^\circ$ ?
\end{enumerate}
Pour gagner en précision, on remplace ce moteur par un moteur \textbf{hybride} d'angle de pas $\alpha_2 = 1{,}8^\circ$.
\begin{enumerate}
    \setcounter{enumi}{2}
    \item Combien d'impulsions faut-il maintenant pour les mêmes $90^\circ$ ? Commenter par rapport à la question 2.
    \item Ce moteur hybride est commandé en \textbf{demi-pas}. Quel est l'angle parcouru par impulsion et combien d'impulsions faut-il pour $90^\circ$ ?
    \item Le moteur hybride est alimenté à $f = 240$ pas par seconde (en pas entier). Calculer sa vitesse de rotation en tr/min.
    \item Citer un avantage du moteur pas à pas pour cette application de positionnement.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Pour le moteur à aimant permanent :
$$N_1 = \dfrac{360^\circ}{\alpha_1} = \dfrac{360^\circ}{7{,}5^\circ} = 48 \text{ pas}.$$
    \item Le nombre d'impulsions pour $90^\circ$ vaut :
$$n_1 = \dfrac{90^\circ}{\alpha_1} = \dfrac{90^\circ}{7{,}5^\circ} = 12 \text{ impulsions}.$$
    \item Avec le moteur hybride :
$$n_2 = \dfrac{90^\circ}{\alpha_2} = \dfrac{90^\circ}{1{,}8^\circ} = 50 \text{ impulsions}.$$
Il faut davantage d'impulsions ($50$ au lieu de $12$), mais le déplacement par pas étant plus petit, le positionnement est \textbf{plus précis}.
    \item En demi-pas, l'angle par impulsion vaut :
$$\dfrac{\alpha_2}{2} = \dfrac{1{,}8^\circ}{2} = 0{,}9^\circ,\qquad n = \dfrac{90^\circ}{0{,}9^\circ} = 100 \text{ impulsions}.$$
La résolution est encore doublée.
    \item Avec $N_2 = \dfrac{360^\circ}{1{,}8^\circ} = 200$ pas par tour :
$$N_r = \dfrac{f}{N_2} = \dfrac{240}{200} = 1{,}2\ \text{tr/s} = 1{,}2 \times 60 = 72\ \text{tr/min}.$$
    \item Le moteur pas à pas assure un \textbf{positionnement précis en boucle ouverte, sans capteur} de position : il suffit de compter les impulsions envoyées. Maintenir une phase alimentée à l'arrêt produit de plus un \textbf{couple de maintien} qui fige l'antenne dans sa position sans frein mécanique.
\end{enumerate}
