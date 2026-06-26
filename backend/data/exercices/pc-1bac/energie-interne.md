### Exercice 1 : Conventions de signe
\begin{enonce}
Pour chacune des situations suivantes, indiquer le signe du travail $W$ et/ou du transfert thermique $Q$ échangés par le système étudié.
\begin{enumerate}
    \item On comprime un gaz enfermé dans une seringue (système : le gaz).
    \item Un glaçon fond en absorbant de la chaleur de l'air ambiant (système : le glaçon).
    \item Une tasse de café chaude se refroidit sur la table (système : le café).
    \item On agite vigoureusement de l'eau avec un fouet (système : l'eau).
\end{enumerate}
\end{enonce}

\textbf{Solution :}
On rappelle la convention : une énergie **reçue** par le système est comptée **positivement**, une énergie **cédée** est comptée **négativement**.
\begin{enumerate}
    \item En comprimant le gaz, l'opérateur exerce une force pressante : le gaz **reçoit** un travail, donc $W > 0$.
    \item Le glaçon **reçoit** de la chaleur de l'air : $Q > 0$.
    \item Le café **cède** de la chaleur à l'extérieur : $Q < 0$.
    \item Le fouet exerce une action mécanique sur l'eau qui **reçoit** un travail : $W > 0$ (l'eau s'échauffe légèrement).
\end{enumerate}

### Exercice 2 : Application directe du premier principe
\begin{enonce}
Au cours d'une transformation, un système **reçoit** un travail $W = 350\ \mathrm{J}$ et **cède** un transfert thermique de valeur absolue $120\ \mathrm{J}$ au milieu extérieur.
\begin{enumerate}
    \item Préciser les signes de $W$ et de $Q$.
    \item Calculer la variation d'énergie interne $\Delta U$.
    \item L'énergie interne du système a-t-elle augmenté ou diminué ?
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Le système reçoit le travail : $W = +350\ \mathrm{J}$. Il cède la chaleur : $Q = -120\ \mathrm{J}$.
    \item Le premier principe donne :
    $$\Delta U = W + Q = 350 + (-120) = 230\ \mathrm{J}$$
    \item $\Delta U = +230\ \mathrm{J} > 0$ : l'énergie interne du système a **augmenté**.
\end{enumerate}

### Exercice 3 : Chauffage de l'eau
\begin{enonce}
On chauffe une masse $m = 2{,}0\ \mathrm{kg}$ d'eau, sans changement d'état, de la température $\theta_i = 15\ \mathrm{^{\circ}C}$ à $\theta_f = 100\ \mathrm{^{\circ}C}$. La capacité thermique massique de l'eau est $c = 4185\ \mathrm{J\cdot kg^{-1}\cdot K^{-1}}$.
\begin{enumerate}
    \item Calculer la variation de température $\Delta T$ en kelvins.
    \item Calculer la variation d'énergie interne $\Delta U$ de l'eau.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Une variation de température exprimée en degrés Celsius est égale à la même variation exprimée en kelvins : $\Delta T = \theta_f - \theta_i = 100 - 15 = 85\ \mathrm{K}$.
    \item Sans changement d'état :
    $$\Delta U = m\,c\,\Delta T = 2{,}0 \times 4185 \times 85 = 711\,450\ \mathrm{J} \approx 7{,}1\times 10^{5}\ \mathrm{J}$$
    L'énergie interne augmente car la température croît.
\end{enumerate}

### Exercice 4 : Refroidissement
\begin{enonce}
Une masse $m = 0{,}80\ \mathrm{kg}$ d'eau se refroidit de $\theta_i = 80\ \mathrm{^{\circ}C}$ à $\theta_f = 20\ \mathrm{^{\circ}C}$, sans qu'aucun travail ne soit échangé ($W = 0$). On donne $c = 4185\ \mathrm{J\cdot kg^{-1}\cdot K^{-1}}$.
\begin{enumerate}
    \item Calculer la variation d'énergie interne $\Delta U$ de l'eau.
    \item En déduire le transfert thermique $Q$ échangé. Le système reçoit-il ou cède-t-il de la chaleur ?
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item $\Delta T = 20 - 80 = -60\ \mathrm{K}$, donc :
    $$\Delta U = m\,c\,\Delta T = 0{,}80 \times 4185 \times (-60) = -200\,880\ \mathrm{J} \approx -2{,}0\times 10^{5}\ \mathrm{J}$$
    \item Comme $W = 0$, le premier principe $\Delta U = W + Q$ donne $Q = \Delta U \approx -2{,}0\times 10^{5}\ \mathrm{J}$. Le signe négatif indique que l'eau **cède** cette chaleur au milieu extérieur.
\end{enumerate}

### Exercice 5 : Détermination d'une capacité thermique massique
\begin{enonce}
Un bloc métallique de masse $m = 0{,}50\ \mathrm{kg}$ reçoit, sans travail, un transfert thermique $Q = 4600\ \mathrm{J}$. Sa température augmente alors de $\Delta T = 20\ \mathrm{K}$.
\begin{enumerate}
    \item Exprimer la capacité thermique massique $c$ du métal en fonction de $Q$, $m$ et $\Delta T$.
    \item Calculer $c$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Avec $W = 0$, on a $\Delta U = Q = m\,c\,\Delta T$. On isole $c$ :
    $$c = \dfrac{Q}{m\,\Delta T}$$
    \item Application numérique :
    $$c = \dfrac{4600}{0{,}50 \times 20} = \dfrac{4600}{10} = 460\ \mathrm{J\cdot kg^{-1}\cdot K^{-1}}$$
    Cette valeur correspond à celle du fer.
\end{enumerate}

### Exercice 6 : Compression d'un gaz
\begin{enonce}
On comprime un gaz enfermé dans un cylindre. L'opérateur fournit un travail de valeur absolue $500\ \mathrm{J}$ et, pendant la compression, le gaz **cède** un transfert thermique de valeur absolue $300\ \mathrm{J}$.
\begin{enumerate}
    \item Donner les valeurs algébriques de $W$ et de $Q$.
    \item Calculer la variation d'énergie interne $\Delta U$ du gaz.
    \item Sans calcul supplémentaire, indiquer si la température du gaz augmente ou diminue (capacité thermique massique constante).
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Le gaz reçoit le travail de compression : $W = +500\ \mathrm{J}$. Il cède de la chaleur : $Q = -300\ \mathrm{J}$.
    \item $$\Delta U = W + Q = 500 + (-300) = 200\ \mathrm{J}$$
    \item $\Delta U = +200\ \mathrm{J} > 0$ : l'énergie interne augmente. Comme $\Delta U = m\,c\,\Delta T$ avec $m$ et $c$ positifs, $\Delta T > 0$ : la température du gaz **augmente**.
\end{enumerate}
