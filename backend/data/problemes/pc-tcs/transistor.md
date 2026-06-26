### Problème 1 : Caractéristique d'un transistor en amplification
\begin{enonce}
On étudie un transistor NPN en régime d'amplification. On fait varier le courant de base $I_B$ et on relève le courant de collecteur $I_C$ :

\begin{center}
\begin{tabular}{|c|c|c|c|c|}
\hline
$I_B$ ($\mu\text{A}$) & $10$ & $20$ & $30$ & $40$ \\
\hline
$I_C$ ($\text{mA}$) & $2{,}0$ & $4{,}0$ & $6{,}0$ & $8{,}0$ \\
\hline
\end{tabular}
\end{center}

\begin{enumerate}
    \item Pour chaque mesure, calculer le rapport $\beta = \dfrac{I_C}{I_B}$. Que constate-t-on ?
    \item En déduire que $I_C$ est proportionnel à $I_B$. Comment appelle-t-on ce comportement du transistor ?
    \item Prévoir le courant de collecteur $I_C$ obtenu pour un courant de base $I_B = 25\ \mu\text{A}$.
    \item Calculer le courant d'émetteur $I_E$ correspondant à la dernière colonne du tableau ($I_B = 40\ \mu\text{A}$).
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item On convertit chaque $I_C$ en $\mu\text{A}$ avant de diviser. Par exemple, pour la première colonne : $\beta = \dfrac{2{,}0\ \text{mA}}{10\ \mu\text{A}} = \dfrac{2000\ \mu\text{A}}{10\ \mu\text{A}} = 200$. On obtient de même :
    $$\dfrac{4000}{20} = 200,\quad \dfrac{6000}{30} = 200,\quad \dfrac{8000}{40} = 200$$
    Le rapport $\beta$ est \textbf{constant} et vaut $\beta = 200$.
    \item Comme $\dfrac{I_C}{I_B} = 200$ pour toutes les mesures, on a $I_C = 200 \times I_B$ : le courant de collecteur est bien \textbf{proportionnel} au courant de base. C'est l'\textbf{effet transistor} (amplification en courant).
    \item Pour $I_B = 25\ \mu\text{A}$ : $I_C = \beta \times I_B = 200 \times 25\ \mu\text{A} = 5000\ \mu\text{A} = 5{,}0\ \text{mA}$.
    \item Pour $I_B = 40\ \mu\text{A} = 0{,}04\ \text{mA}$ et $I_C = 8{,}0\ \text{mA}$ :
    $$I_E = I_B + I_C = 0{,}04 + 8{,}0 = 8{,}04\ \text{mA} \approx I_C$$
\end{enumerate}

### Problème 2 : Commande d'un moteur par une carte électronique
\begin{enonce}
Une sortie de carte électronique (microcontrôleur) ne peut délivrer qu'un courant de quelques milliampères. On veut l'utiliser pour commander un petit moteur qui, en fonctionnement, est traversé par un courant $I_C = 0{,}6\ \text{A}$. On place le moteur dans le circuit du collecteur d'un transistor de gain $\beta = 300$. La base est reliée à la sortie de la carte (tension $V$) à travers un conducteur ohmique $R_B = 2{,}0\ \text{k}\Omega$. On prend $U_{BE} = 0{,}7\ \text{V}$ et la relation $V = R_B\, I_B + U_{BE}$.
\begin{enumerate}
    \item Lorsque la sortie de la carte est à $V = 0$, que valent $I_B$ et $I_C$ ? Le moteur tourne-t-il ?
    \item Calculer le courant de base minimal $I_{B,\text{sat}}$ qui sature le transistor (moteur en marche, $I_C = 0{,}6\ \text{A}$).
    \item En déduire la tension de commande minimale $V$ que doit fournir la carte pour faire tourner le moteur.
    \item La sortie de la carte délivre une tension de $5\ \text{V}$. Le moteur tourne-t-il ? Expliquer alors l'intérêt du transistor dans ce montage.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Si $V = 0$, le courant de base est nul : $I_B = 0$, donc $I_C = \beta\, I_B = 0$. Le transistor est \textbf{bloqué} (interrupteur ouvert) et le moteur \textbf{ne tourne pas}.
    \item À la saturation, $I_C = \beta \times I_{B,\text{sat}}$, donc :
    $$I_{B,\text{sat}} = \dfrac{I_C}{\beta} = \dfrac{0{,}6}{300} = 2{,}0\times 10^{-3}\ \text{A} = 2{,}0\ \text{mA}$$
    \item On reporte dans $V = R_B\, I_B + U_{BE}$ avec $I_B = 2{,}0\ \text{mA}$ :
    $$V = 2{,}0\times 10^{3} \times 2{,}0\times 10^{-3} + 0{,}7 = 4{,}0 + 0{,}7 = 4{,}7\ \text{V}$$
    Il faut donc une tension de commande d'au moins $4{,}7\ \text{V}$.
    \item La carte délivre $5\ \text{V} > 4{,}7\ \text{V}$ : le transistor est saturé, le moteur \textbf{tourne}. L'intérêt du transistor est qu'un courant de commande de seulement $2\ \text{mA}$ (compatible avec la carte) suffit à commander un courant de $0{,}6\ \text{A} = 600\ \text{mA}$ dans le moteur, soit $300$ fois plus grand. Le transistor agit comme un \textbf{interrupteur électronique amplificateur} entre le circuit de commande (faible puissance) et le moteur (forte puissance).
\end{enumerate}

### Problème 3 : Alarme thermique à thermistance
\begin{enonce}
On veut déclencher une alarme (un avertisseur sonore placé dans le circuit du collecteur) lorsque la température dépasse un certain seuil. Une \textbf{thermistance} (résistance $R_{th}$ qui \textbf{diminue} quand la température augmente) est placée dans le circuit de base d'un transistor de gain $\beta = 100$. La base est alimentée sous $E = 9\ \text{V}$, avec $U_{BE} = 0{,}6\ \text{V}$, et $I_B = \dfrac{E - U_{BE}}{R_{th}}$. L'avertisseur se déclenche dès que $I_C \geq 150\ \text{mA}$.
\begin{enumerate}
    \item À température ambiante, $R_{th} = 20\ \text{k}\Omega$. Calculer $I_B$ puis $I_C$. L'alarme sonne-t-elle ?
    \item Quand la température monte fortement, $R_{th} = 2{,}0\ \text{k}\Omega$. Calculer $I_B$ puis $I_C$. Conclure.
    \item Déterminer le courant de base minimal $I_{B,\text{sat}}$ permettant d'atteindre $I_C = 150\ \text{mA}$, puis la valeur de la thermistance $R_{th}$ correspondant à ce seuil de déclenchement.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item À température ambiante : $I_B = \dfrac{9 - 0{,}6}{20\,000} = \dfrac{8{,}4}{20\,000} = 4{,}2\times 10^{-4}\ \text{A} = 0{,}42\ \text{mA}$. D'où $I_C = \beta\, I_B = 100 \times 0{,}42\ \text{mA} = 42\ \text{mA}$. Comme $42\ \text{mA} < 150\ \text{mA}$, le transistor n'est pas saturé : l'alarme \textbf{ne sonne pas}.
    \item À température élevée : $I_B = \dfrac{8{,}4}{2000} = 4{,}2\times 10^{-3}\ \text{A} = 4{,}2\ \text{mA}$, donc $I_C = 100 \times 4{,}2\ \text{mA} = 420\ \text{mA}$ (limité en réalité au courant de saturation). Le courant demandé dépasse largement $150\ \text{mA}$ : le transistor est \textbf{saturé}, l'alarme \textbf{sonne}.
    \item Le seuil correspond à $I_C = 150\ \text{mA}$, donc :
    $$I_{B,\text{sat}} = \dfrac{I_C}{\beta} = \dfrac{150\ \text{mA}}{100} = 1{,}5\ \text{mA}$$
    La thermistance de seuil vérifie $I_{B,\text{sat}} = \dfrac{E - U_{BE}}{R_{th}}$, soit :
    $$R_{th} = \dfrac{E - U_{BE}}{I_{B,\text{sat}}} = \dfrac{8{,}4}{1{,}5\times 10^{-3}} = 5600\ \Omega = 5{,}6\ \text{k}\Omega$$
    L'alarme se déclenche lorsque la température est assez haute pour faire chuter $R_{th}$ en dessous de $5{,}6\ \text{k}\Omega$.
\end{enumerate}
