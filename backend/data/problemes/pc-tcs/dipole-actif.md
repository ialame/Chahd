### Problème 1 : Étude complète d'une pile
\begin{enonce}
On étudie une pile en relevant la tension $U$ à ses bornes pour différentes valeurs de l'intensité $I$ qu'elle débite :

\begin{center}
\begin{tabular}{|c|c|c|c|c|c|}
\hline
$I$ (A) & $0$ & $0{,}50$ & $1{,}0$ & $1{,}5$ & $2{,}0$ \\
\hline
$U$ (V) & $6{,}0$ & $5{,}5$ & $5{,}0$ & $4{,}5$ & $4{,}0$ \\
\hline
\end{tabular}
\end{center}


\begin{enumerate}
    \item La pile est-elle un dipôle actif ou passif ? Que vaut sa force électromotrice $E$ ?
    \item Montrer que la caractéristique vérifie $U = E - r\,I$ et déterminer la résistance interne $r$.
    \item Calculer l'intensité du courant de court-circuit.
    \item On branche aux bornes de la pile un résistor $R = 5{,}0\,\Omega$. Déterminer le point de fonctionnement $(I_0,\,U_0)$ du circuit.
    \item Calculer le rendement de la pile dans ce cas.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Pour $I = 0$, la tension est non nulle ($U = 6{,}0\,\text{V}$) : la caractéristique ne passe pas par l'origine, c'est donc un **dipôle actif**. La f.é.m. est l'ordonnée à l'origine : $E = 6{,}0\,\text{V}$.
    \item Les points sont alignés : quand $I$ augmente de $0{,}50\,\text{A}$, $U$ diminue de $0{,}50\,\text{V}$, de façon régulière. La caractéristique est donc une droite décroissante d'équation $U = E - r\,I$. La résistance interne est l'opposé de la pente :
    $$r = \dfrac{E - U}{I} = \dfrac{6{,}0 - 4{,}0}{2{,}0} = 1{,}0\,\Omega.$$
    Ainsi $U = 6{,}0 - 1{,}0\,I$.
    \item Court-circuit ($U = 0$) : $I_{cc} = \dfrac{E}{r} = \dfrac{6{,}0}{1{,}0} = 6{,}0\,\text{A}$.
    \item Le résistor impose $U = R\,I = 5{,}0\,I$. Au point de fonctionnement : $E - r\,I_0 = R\,I_0$, d'où
    $$I_0 = \dfrac{E}{R + r} = \dfrac{6{,}0}{5{,}0 + 1{,}0} = 1{,}0\,\text{A}, \qquad U_0 = R\,I_0 = 5{,}0 \times 1{,}0 = 5{,}0\,\text{V}.$$
    \item $\eta = \dfrac{U_0}{E} = \dfrac{5{,}0}{6{,}0} \approx 0{,}83$, soit $83\,\%$.
\end{enumerate}

### Problème 2 : Générateur alimentant un moteur
\begin{enonce}
Un générateur de f.é.m. $E = 12\,\text{V}$ et de résistance interne $r = 1{,}0\,\Omega$ alimente un moteur (récepteur actif) de force contre-électromotrice $E' = 9{,}0\,\text{V}$ et de résistance interne $r' = 2{,}0\,\Omega$. Le même courant $I$ traverse le circuit.


\begin{enumerate}
    \item Écrire la caractéristique du générateur, puis celle du moteur.
    \item Déterminer l'intensité $I$ du courant qui s'établit.
    \item En déduire la tension $U$ commune aux deux dipôles.
    \item Établir le bilan de puissance du moteur et calculer son rendement.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Générateur : $U = E - r\,I = 12 - 1{,}0\,I$. Moteur (récepteur actif) : $U = E' + r'\,I = 9{,}0 + 2{,}0\,I$.
    \item Au point de fonctionnement, la tension est commune : $12 - 1{,}0\,I = 9{,}0 + 2{,}0\,I$, soit $12 - 9{,}0 = (2{,}0 + 1{,}0)\,I$, d'où
    $$I = \dfrac{E - E'}{r + r'} = \dfrac{12 - 9{,}0}{1{,}0 + 2{,}0} = \dfrac{3{,}0}{3{,}0} = 1{,}0\,\text{A}.$$
    \item $U = 9{,}0 + 2{,}0 \times 1{,}0 = 11\,\text{V}$. Vérification côté générateur : $U = 12 - 1{,}0 \times 1{,}0 = 11\,\text{V}$.
    \item Puissance reçue par le moteur : $P = U\,I = 11 \times 1{,}0 = 11\,\text{W}$. Puissance Joule : $P_J = r'\,I^2 = 2{,}0 \times (1{,}0)^2 = 2{,}0\,\text{W}$. Puissance utile (mécanique) : $P_u = E'\,I = 9{,}0 \times 1{,}0 = 9{,}0\,\text{W}$ (on vérifie : $9{,}0 + 2{,}0 = 11\,\text{W} = P$). Le rendement du moteur vaut
    $$\eta = \dfrac{P_u}{P} = \dfrac{9{,}0}{11} \approx 0{,}82, \quad \text{soit } 82\,\%.$$
\end{enumerate}

### Problème 3 : Puissance et rendement d'un générateur
\begin{enonce}
Un générateur de f.é.m. $E = 6{,}0\,\text{V}$ et de résistance interne $r = 2{,}0\,\Omega$ alimente un résistor de résistance $R$ réglable.
\begin{enumerate}
    \item Exprimer l'intensité $I$ du courant et la tension $U$ aux bornes du résistor en fonction de $R$.
    \item Calculer l'intensité du courant de court-circuit ($R = 0$).
    \item Pour $R = 10\,\Omega$, calculer $I$, $U$, la puissance $P_R$ reçue par le résistor et le rendement $\eta$.
    \item Montrer que $P_R = \dfrac{E^2\,R}{(R + r)^2}$. On admet que cette puissance est **maximale** lorsque $R = r$ ; calculer alors $P_R$.
    \item Comparer le rendement obtenu pour $R = r$ et pour $R = 10\,\Omega$. Conclure sur le compromis entre puissance et rendement.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Le générateur et le résistor sont en série : $E = (R + r)\,I$, donc
    $$I = \dfrac{E}{R + r} = \dfrac{6{,}0}{R + 2{,}0}, \qquad U = R\,I = \dfrac{R\,E}{R + r} = \dfrac{6{,}0\,R}{R + 2{,}0}.$$
    \item Court-circuit ($R = 0$) : $I_{cc} = \dfrac{E}{r} = \dfrac{6{,}0}{2{,}0} = 3{,}0\,\text{A}$.
    \item Pour $R = 10\,\Omega$ : $I = \dfrac{6{,}0}{10 + 2{,}0} = 0{,}50\,\text{A}$ ; $U = R\,I = 10 \times 0{,}50 = 5{,}0\,\text{V}$ ; $P_R = U\,I = 5{,}0 \times 0{,}50 = 2{,}5\,\text{W}$ ; $\eta = \dfrac{U}{E} = \dfrac{5{,}0}{6{,}0} \approx 0{,}83$, soit $83\,\%$.
    \item $P_R = U\,I = (R\,I)\,I = R\,I^2 = R\left(\dfrac{E}{R + r}\right)^2 = \dfrac{E^2\,R}{(R + r)^2}$. Pour $R = r = 2{,}0\,\Omega$ :
    $$P_R = \dfrac{E^2}{4r} = \dfrac{(6{,}0)^2}{4 \times 2{,}0} = \dfrac{36}{8{,}0} = 4{,}5\,\text{W}.$$
    \item Pour $R = r = 2{,}0\,\Omega$ : $I = \dfrac{6{,}0}{4{,}0} = 1{,}5\,\text{A}$, $U = 3{,}0\,\text{V}$, donc $\eta = \dfrac{U}{E} = \dfrac{3{,}0}{6{,}0} = 0{,}50$, soit $50\,\%$. Pour $R = 10\,\Omega$, $\eta = 83\,\%$. La puissance transférée est **maximale** quand $R = r$, mais le rendement n'y vaut alors que $50\,\%$ (autant d'énergie est perdue dans la résistance interne). Pour une **grande** résistance $R$, le rendement est meilleur mais la puissance reçue est plus faible : il faut choisir un compromis selon l'objectif recherché.
\end{enumerate}
