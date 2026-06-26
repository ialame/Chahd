### Exercice 1 : Sens conventionnel et porteurs de charge
\begin{enonce}
On réalise le circuit fermé suivant : une pile, un interrupteur, une lampe et un ampèremètre, branchés les uns à la suite des autres.



\begin{enumerate}
    \item Dans quel cas la lampe brille-t-elle : interrupteur ouvert ou fermé ? Pourquoi ?
    \item Quelle est la nature des porteurs de charge dans les fils de cuivre du circuit ?
    \item Indiquer le sens conventionnel du courant à l'extérieur de la pile.
    \item Dans quel sens se déplacent réellement les électrons dans les fils ?
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item La lampe brille lorsque l'interrupteur est **fermé** : le courant ne circule que dans un **circuit fermé** formant une boucle. Interrupteur ouvert, le circuit est coupé et aucun courant ne passe.
    \item Dans les fils de cuivre (un métal), les porteurs de charge sont les **électrons libres**, de charge négative $-e$.
    \item Par convention, le courant circule à l'extérieur de la pile de la borne **positive** $(+)$ vers la borne **négative** $(-)$.
    \item Les électrons portent une charge négative : ils se déplacent en **sens inverse** du sens conventionnel du courant, donc de la borne $(-)$ vers la borne $(+)$ à l'extérieur de la pile.
\end{enumerate}

### Exercice 2 : Conversions d'unités d'intensité
\begin{enonce}
On rappelle que $1\,\text{A} = 1000\,\text{mA}$, soit $1\,\text{mA} = 10^{-3}\,\text{A}$. Convertir :
\begin{enumerate}
    \item $250\,\text{mA}$ en ampères ;
    \item $1{,}5\,\text{A}$ en milliampères ;
    \item $0{,}04\,\text{A}$ en milliampères ;
    \item $75\,\text{mA}$ en ampères.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item $250\,\text{mA} = 250 \times 10^{-3}\,\text{A} = 0{,}250\,\text{A}$.
    \item $1{,}5\,\text{A} = 1{,}5 \times 1000\,\text{mA} = 1500\,\text{mA}$.
    \item $0{,}04\,\text{A} = 0{,}04 \times 1000\,\text{mA} = 40\,\text{mA}$.
    \item $75\,\text{mA} = 75 \times 10^{-3}\,\text{A} = 0{,}075\,\text{A}$.
\end{enumerate}

### Exercice 3 : Quantité d'électricité $Q = I\cdot t$
\begin{enonce}
On utilise la relation $Q = I\cdot t$, avec $Q$ en coulombs $(\text{C})$, $I$ en ampères $(\text{A})$ et $t$ en secondes $(\text{s})$.
\begin{enumerate}
    \item Une branche est parcourue par un courant $I = 0{,}5\,\text{A}$ pendant $2\,\text{min}$. Calculer la quantité d'électricité $Q$ qui a traversé une section du fil.
    \item Une quantité d'électricité $Q = 24\,\text{C}$ traverse un conducteur parcouru par $I = 0{,}2\,\text{A}$. Pendant combien de temps ?
    \item Pendant $3\,\text{min}$, une charge $Q = 90\,\text{C}$ traverse un dipôle. Quelle est l'intensité du courant ?
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item On convertit la durée : $t = 2\,\text{min} = 120\,\text{s}$. Alors
    $$Q = I\cdot t = 0{,}5 \times 120 = 60\,\text{C}.$$
    \item On isole le temps : $t = \dfrac{Q}{I} = \dfrac{24}{0{,}2} = 120\,\text{s} = 2\,\text{min}$.
    \item On convertit : $t = 3\,\text{min} = 180\,\text{s}$, d'où
    $$I = \dfrac{Q}{t} = \dfrac{90}{180} = 0{,}5\,\text{A}.$$
\end{enumerate}

### Exercice 4 : Loi des nœuds
\begin{enonce}
Au nœud $N$ d'un circuit en dérivation, le courant principal d'intensité $I = 1{,}2\,\text{A}$ arrive et se partage entre trois branches.



\begin{enumerate}
    \item Énoncer la loi des nœuds.
    \item On mesure $I_1 = 0{,}5\,\text{A}$ et $I_2 = 0{,}3\,\text{A}$. Calculer $I_3$.
    \item Sur un autre nœud arrivent deux courants $I_a = 0{,}6\,\text{A}$ et $I_b = 0{,}25\,\text{A}$ ; il en repart un courant $I_c = 0{,}5\,\text{A}$ et un courant $I_d$. Calculer $I_d$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item La somme des intensités des courants qui **arrivent** à un nœud est égale à la somme des intensités des courants qui en **repartent**.
    \item Ici $I = I_1 + I_2 + I_3$, donc
    $$I_3 = I - I_1 - I_2 = 1{,}2 - 0{,}5 - 0{,}3 = 0{,}4\,\text{A}.$$
    \item Les courants entrants valent au total $I_a + I_b = 0{,}6 + 0{,}25 = 0{,}85\,\text{A}$, et ils égalent les sortants $I_c + I_d$. Donc
    $$I_d = (I_a + I_b) - I_c = 0{,}85 - 0{,}5 = 0{,}35\,\text{A}.$$
\end{enumerate}

### Exercice 5 : Intensité dans un circuit série
\begin{enonce}
Dans un circuit **en série** comportant une pile et deux lampes $L_1$ et $L_2$, un ampèremètre placé juste après la pile indique $I = 0{,}30\,\text{A}$.
\begin{enumerate}
    \item Combien de boucles comporte un circuit série ? Y a-t-il des nœuds ?
    \item Quelle est l'intensité du courant qui traverse la lampe $L_1$ ? Et la lampe $L_2$ ?
    \item Que deviendrait le circuit si la lampe $L_1$ grillait ?
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Un circuit série ne comporte qu'une **seule boucle** et **aucun nœud** : tous les dipôles sont placés les uns à la suite des autres.
    \item Comme il n'y a pas de nœud, l'intensité est **la même en tout point** du circuit : $L_1$ et $L_2$ sont traversées par le même courant $I = 0{,}30\,\text{A}$.
    \item Si $L_1$ grille, le circuit est ouvert : le courant s'annule partout et $L_2$ s'éteint aussi (les deux lampes dépendent de l'unique boucle).
\end{enumerate}

### Exercice 6 : Circuit en dérivation et quantité d'électricité
\begin{enonce}
Trois lampes sont montées **en dérivation**. Le courant principal débité par la pile vaut $I = 0{,}75\,\text{A}$. Les deux premières branches portent $I_1 = 0{,}30\,\text{A}$ et $I_2 = 0{,}25\,\text{A}$.
\begin{enumerate}
    \item Calculer l'intensité $I_3$ dans la troisième branche.
    \item Calculer la quantité d'électricité débitée par la pile pendant $5\,\text{min}$ de fonctionnement.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Le courant principal se partage entre les trois branches : $I = I_1 + I_2 + I_3$, donc
    $$I_3 = I - I_1 - I_2 = 0{,}75 - 0{,}30 - 0{,}25 = 0{,}20\,\text{A}.$$
    \item On convertit : $t = 5\,\text{min} = 300\,\text{s}$, d'où
    $$Q = I\cdot t = 0{,}75 \times 300 = 225\,\text{C}.$$
\end{enumerate}
