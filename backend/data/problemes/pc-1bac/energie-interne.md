### Problème 1 : Bouilloire électrique
\begin{enonce}
Une bouilloire électrique de puissance $P = 2000\ \mathrm{W}$ chauffe une masse $m = 1{,}5\ \mathrm{kg}$ d'eau de $\theta_i = 20\ \mathrm{^{\circ}C}$ à $\theta_f = 100\ \mathrm{^{\circ}C}$, sans changement d'état. On donne $c = 4185\ \mathrm{J\cdot kg^{-1}\cdot K^{-1}}$.
\begin{enumerate}
    \item Calculer la variation d'énergie interne $\Delta U$ de l'eau.
    \item En supposant qu'aucun travail n'est échangé ($W = 0$) et qu'il n'y a aucune perte, en déduire le transfert thermique $Q$ reçu par l'eau.
    \item Calculer la durée $t$ nécessaire pour atteindre $100\ \mathrm{^{\circ}C}$.
    \item En réalité, $10\ \%$ de l'énergie fournie est perdue vers l'extérieur. Calculer la nouvelle durée $t'$ du chauffage.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item $\Delta T = 100 - 20 = 80\ \mathrm{K}$, donc :
    $$\Delta U = m\,c\,\Delta T = 1{,}5 \times 4185 \times 80 = 502\,200\ \mathrm{J} \approx 5{,}0\times 10^{5}\ \mathrm{J}$$
    \item Avec $W = 0$, le premier principe $\Delta U = W + Q$ donne $Q = \Delta U \approx 5{,}0\times 10^{5}\ \mathrm{J}$ : l'eau reçoit cette chaleur.
    \item L'énergie thermique fournie par la résistance vaut $Q = P\,t$, donc :
    $$t = \dfrac{Q}{P} = \dfrac{502\,200}{2000} \approx 251\ \mathrm{s} \approx 4\ \mathrm{min}\ 11\ \mathrm{s}$$
    \item Si $10\ \%$ de l'énergie est perdue, seulement $90\ \%$ sert à chauffer l'eau. L'énergie réellement à fournir est $E = \dfrac{Q}{0{,}90} = \dfrac{502\,200}{0{,}90} = 558\,000\ \mathrm{J}$, d'où :
    $$t' = \dfrac{E}{P} = \dfrac{558\,000}{2000} = 279\ \mathrm{s} \approx 4\ \mathrm{min}\ 39\ \mathrm{s}$$
    Le chauffage est plus long à cause des pertes.
\end{enumerate}

### Problème 2 : Deux compressions d'un gaz
\begin{enonce}
On étudie un gaz enfermé dans un cylindre fermé par un piston. On le fait passer d'un état initial à un état final par deux transformations différentes.

\textbf{Transformation A (lente) :} on comprime très lentement le gaz. L'opérateur fournit un travail $W_A = +250\ \mathrm{J}$ et, simultanément, le gaz cède une chaleur de valeur absolue $250\ \mathrm{J}$ pour rester à température constante.

\textbf{Transformation B (rapide) :} on comprime brutalement le gaz, parois calorifugées : aucun transfert thermique n'a le temps de se produire. L'opérateur fournit alors $W_B = +400\ \mathrm{J}$.
\begin{enumerate}
    \item Pour la transformation A, donner les signes de $W_A$ et $Q_A$, puis calculer $\Delta U_A$. Que peut-on dire de la température du gaz ?
    \item Pour la transformation B, préciser la valeur de $Q_B$ et calculer $\Delta U_B$. La température du gaz varie-t-elle ?
    \item L'énergie interne étant une fonction d'état, ces deux transformations partent-elles nécessairement du même état pour aboutir au même état final ? Justifier.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Le gaz reçoit le travail : $W_A = +250\ \mathrm{J}$ ; il cède la chaleur : $Q_A = -250\ \mathrm{J}$. D'où :
    $$\Delta U_A = W_A + Q_A = 250 + (-250) = 0\ \mathrm{J}$$
    Comme $\Delta U = m\,c\,\Delta T$, $\Delta U_A = 0$ entraîne $\Delta T = 0$ : la température reste **constante** (transformation isotherme).
    \item Les parois sont calorifugées : aucun échange thermique, donc $Q_B = 0$. Alors :
    $$\Delta U_B = W_B + Q_B = 400 + 0 = 400\ \mathrm{J}$$
    $\Delta U_B > 0$ donc $\Delta T > 0$ : la température du gaz **augmente**.
    \item Non. Les deux transformations donnent $\Delta U_A = 0$ et $\Delta U_B = 400\ \mathrm{J}$, valeurs différentes. Or $\Delta U = U_{\text{final}} - U_{\text{initial}}$ ne dépend que des états initial et final. Partant du même état initial, elles conduisent donc à des états finaux **différents** (températures finales différentes).
\end{enumerate}

### Problème 3 : Mesure de la capacité thermique massique d'un métal
\begin{enonce}
Pour identifier un métal, on chauffe un bloc de masse $m = 0{,}40\ \mathrm{kg}$ à l'aide d'une résistance électrique placée à l'intérieur. La résistance fournit au bloc une énergie thermique $Q = 7360\ \mathrm{J}$ (on suppose $W = 0$). On mesure une élévation de température $\Delta T = 40\ \mathrm{K}$.

Données (capacités thermiques massiques en $\mathrm{J\cdot kg^{-1}\cdot K^{-1}}$) : fer $460$ ; aluminium $897$ ; cuivre $385$.
\begin{enumerate}
    \item Calculer la variation d'énergie interne $\Delta U$ du bloc.
    \item En déduire la capacité thermique massique $c$ du métal.
    \item Identifier le métal à l'aide du tableau de données.
    \item En réalité, une partie de l'énergie fournie est perdue vers l'air ambiant. La valeur de $c$ réellement obtenue par cette méthode est-elle surestimée ou sous-estimée ? Justifier.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Avec $W = 0$, le premier principe donne $\Delta U = Q = 7360\ \mathrm{J}$.
    \item De $\Delta U = m\,c\,\Delta T$ on tire :
    $$c = \dfrac{\Delta U}{m\,\Delta T} = \dfrac{7360}{0{,}40 \times 40} = \dfrac{7360}{16} = 460\ \mathrm{J\cdot kg^{-1}\cdot K^{-1}}$$
    \item Cette valeur correspond à celle du **fer**.
    \item Si une partie de l'énergie est perdue, la chaleur réellement reçue par le bloc est inférieure à celle fournie par la résistance. En attribuant toute l'énergie au bloc, on **surestime** $Q$ donc $\Delta U$, et par conséquent $c$ est **surestimée** : la valeur calculée est plus grande que la valeur réelle.
\end{enumerate}
