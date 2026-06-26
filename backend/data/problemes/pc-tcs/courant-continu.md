### Problème 1 : Étude d'un circuit série
\begin{enonce}
On monte en série une pile, un interrupteur, deux lampes identiques $L_1$ et $L_2$ et un ampèremètre. Lorsque l'interrupteur est fermé, l'ampèremètre indique $I = 0{,}40\,\text{A}$.



On donne la charge élémentaire $e = 1{,}6\times 10^{-19}\,\text{C}$.
\begin{enumerate}
    \item Indiquer sur le schéma le sens conventionnel du courant. Comment se déplacent les électrons dans les fils ?
    \item Quelle est l'intensité du courant qui traverse la lampe $L_2$ ? Justifier.
    \item Calculer la quantité d'électricité $Q$ débitée par la pile pendant $10\,\text{min}$.
    \item En déduire le nombre $N$ d'électrons ayant traversé une section du fil pendant cette durée.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Le sens conventionnel du courant va, à l'extérieur de la pile, de la borne $(+)$ vers la borne $(-)$. Les électrons, de charge négative, se déplacent en **sens inverse** du courant.
    \item Le circuit est en série : il ne comporte aucun nœud, donc l'intensité est **la même en tout point**. La lampe $L_2$ est traversée par $I = 0{,}40\,\text{A}$.
    \item On convertit la durée : $t = 10\,\text{min} = 600\,\text{s}$. Alors
    $$Q = I\cdot t = 0{,}40 \times 600 = 240\,\text{C}.$$
    \item Chaque électron transporte une charge $e$, donc $Q = N\cdot e$ et
    $$N = \dfrac{Q}{e} = \dfrac{240}{1{,}6\times 10^{-19}} = 1{,}5\times 10^{21}\ \text{électrons}.$$
\end{enumerate}

### Problème 2 : Circuit en dérivation et loi des nœuds
\begin{enonce}
Une pile alimente trois lampes montées **en dérivation**. Le courant principal débité vaut $I = 1{,}5\,\text{A}$. On mesure les intensités dans les deux premières branches : $I_1 = 0{,}6\,\text{A}$ et $I_2 = 0{,}5\,\text{A}$.



\begin{enumerate}
    \item Calculer l'intensité $I_3$ dans la troisième branche.
    \item Le circuit fonctionne pendant $4\,\text{min}$. Calculer la quantité d'électricité $Q_3$ qui traverse la troisième lampe.
    \item Calculer la quantité d'électricité $Q$ débitée par la pile pendant cette durée.
    \item Vérifier que $Q = Q_1 + Q_2 + Q_3$, où $Q_1$ et $Q_2$ sont les charges dans les deux premières branches.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item D'après la loi des nœuds appliquée au nœud $A$, $I = I_1 + I_2 + I_3$, donc
    $$I_3 = I - I_1 - I_2 = 1{,}5 - 0{,}6 - 0{,}5 = 0{,}4\,\text{A}.$$
    \item On convertit : $t = 4\,\text{min} = 240\,\text{s}$, d'où
    $$Q_3 = I_3\cdot t = 0{,}4 \times 240 = 96\,\text{C}.$$
    \item Pour le courant principal :
    $$Q = I\cdot t = 1{,}5 \times 240 = 360\,\text{C}.$$
    \item On calcule $Q_1 = 0{,}6 \times 240 = 144\,\text{C}$ et $Q_2 = 0{,}5 \times 240 = 120\,\text{C}$. Alors
    $$Q_1 + Q_2 + Q_3 = 144 + 120 + 96 = 360\,\text{C} = Q.$$
    La conservation de la charge au nœud se retrouve sur les quantités d'électricité.
\end{enumerate}

### Problème 3 : Réseau à deux nœuds
\begin{enonce}
Un générateur débite un courant $I = 2\,\text{A}$. Au nœud $A$, ce courant se partage en deux branches : la branche 1 porte $I_1 = 1{,}2\,\text{A}$, la branche 2 porte $I_2$. La branche 2 atteint un second nœud $B$ où elle se sépare à nouveau en deux courants $I_3 = 0{,}5\,\text{A}$ et $I_4$.



\begin{enumerate}
    \item Appliquer la loi des nœuds au nœud $A$ pour calculer $I_2$.
    \item Appliquer la loi des nœuds au nœud $B$ pour calculer $I_4$.
    \item Calculer la quantité d'électricité qui traverse la branche portant $I_4$ pendant $5\,\text{min}$.
    \item Les branches se rejoignent ensuite pour revenir au générateur. Vérifier que le courant qui revient au générateur vaut bien $I$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Au nœud $A$ : $I = I_1 + I_2$, donc
    $$I_2 = I - I_1 = 2 - 1{,}2 = 0{,}8\,\text{A}.$$
    \item Au nœud $B$, le courant $I_2$ entrant se sépare en $I_3$ et $I_4$ : $I_2 = I_3 + I_4$, donc
    $$I_4 = I_2 - I_3 = 0{,}8 - 0{,}5 = 0{,}3\,\text{A}.$$
    \item On convertit : $t = 5\,\text{min} = 300\,\text{s}$, d'où
    $$Q_4 = I_4\cdot t = 0{,}3 \times 300 = 90\,\text{C}.$$
    \item Le courant de retour réunit la branche 1 et les deux branches issues de $B$ : $I_1 + I_3 + I_4 = 1{,}2 + 0{,}5 + 0{,}3 = 2\,\text{A} = I$. La charge se conserve : le courant qui revient au générateur est bien égal au courant débité.
\end{enumerate}
