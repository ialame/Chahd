### Problème 1 : Détermination d'une résistance par sa caractéristique
\begin{enonce}
On étudie un dipôle inconnu en relevant la tension $U$ à ses bornes pour différentes intensités $I$. On obtient le tableau de mesures suivant :

| $I$ (mA) | 0 | 20 | 40 | 60 | 80 | 100 |
|---|---|---|---|---|---|---|
| $U$ (V) | 0 | 1,0 | 2,0 | 3,0 | 4,0 | 5,0 |

\begin{enumerate}
    \item Montrer que ce dipôle est un conducteur ohmique.
    \item Déterminer sa résistance $R$ à partir des mesures.
    \item Prévoir la tension $U$ aux bornes du dipôle lorsqu'il est traversé par $I = 70\ \text{mA}$.
    \item Calculer la puissance dissipée par effet Joule lorsque $I = 100\ \text{mA}$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item La tension $U$ est proportionnelle à l'intensité $I$ : le rapport $\dfrac{U}{I}$ est constant et la caractéristique $U = f(I)$ est une droite passant par l'origine. Le dipôle obéit donc à la loi d'Ohm $U = R\,I$ : c'est un conducteur ohmique.
    \item La résistance est le coefficient directeur de la droite. En prenant par exemple le point $(I = 0{,}040\ \text{A},\ U = 2{,}0\ \text{V})$ :
$$R = \dfrac{U}{I} = \dfrac{2{,}0}{0{,}040} = 50\ \Omega.$$
On retrouve la même valeur avec tous les autres points (par exemple $\dfrac{5{,}0}{0{,}100} = 50\ \Omega$).
    \item Pour $I = 70\ \text{mA} = 0{,}070\ \text{A}$ :
$$U = R\,I = 50 \times 0{,}070 = 3{,}5\ \text{V}.$$
    \item Pour $I = 100\ \text{mA} = 0{,}10\ \text{A}$ :
$$P = R\,I^{2} = 50 \times (0{,}10)^{2} = 50 \times 0{,}010 = 0{,}50\ \text{W}.$$
\end{enumerate}

### Problème 2 : Étude complète d'un circuit mixte
\begin{enonce}
Un générateur de tension constante $U = 24\ \text{V}$ alimente le montage suivant : un résistor $R_1 = 20\ \Omega$ est branché en série avec l'association en parallèle de $R_2 = 30\ \Omega$ et $R_3 = 60\ \Omega$.
\begin{enumerate}
    \item Calculer la résistance équivalente $R_{23}$ de l'association parallèle, puis la résistance équivalente totale $R_{eq}$.
    \item Déterminer l'intensité $I$ du courant principal.
    \item Calculer les tensions $U_1$ (aux bornes de $R_1$) et $U_{23}$ (aux bornes du groupement parallèle).
    \item En déduire les intensités $I_2$ et $I_3$ dans les deux branches dérivées.
    \item Calculer la puissance totale fournie par le générateur et vérifier qu'elle est égale à la somme des puissances dissipées dans les trois résistors.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Association parallèle de $R_2$ et $R_3$ :
$$R_{23} = \dfrac{R_2 \cdot R_3}{R_2 + R_3} = \dfrac{30 \times 60}{30 + 60} = \dfrac{1800}{90} = 20\ \Omega.$$
$R_1$ et $R_{23}$ sont en série :
$$R_{eq} = R_1 + R_{23} = 20 + 20 = 40\ \Omega.$$
    \item Le courant principal vaut :
$$I = \dfrac{U}{R_{eq}} = \dfrac{24}{40} = 0{,}60\ \text{A}.$$
    \item Les deux dipôles équivalents sont en série, parcourus par $I = 0{,}60\ \text{A}$ :
$$U_1 = R_1\,I = 20 \times 0{,}60 = 12\ \text{V}, \qquad U_{23} = R_{23}\,I = 20 \times 0{,}60 = 12\ \text{V}.$$
On vérifie $U_1 + U_{23} = 24\ \text{V} = U$.
    \item Chaque branche dérivée est soumise à $U_{23} = 12\ \text{V}$ :
$$I_2 = \dfrac{U_{23}}{R_2} = \dfrac{12}{30} = 0{,}40\ \text{A}, \qquad I_3 = \dfrac{U_{23}}{R_3} = \dfrac{12}{60} = 0{,}20\ \text{A}.$$
On vérifie $I_2 + I_3 = 0{,}60\ \text{A} = I$.
    \item Puissance fournie par le générateur :
$$P = U\,I = 24 \times 0{,}60 = 14{,}4\ \text{W}.$$
Puissances dissipées par effet Joule :
$$P_1 = R_1\,I^{2} = 20 \times (0{,}60)^{2} = 7{,}2\ \text{W},$$
$$P_2 = \dfrac{U_{23}^{2}}{R_2} = \dfrac{12^{2}}{30} = 4{,}8\ \text{W}, \qquad P_3 = \dfrac{U_{23}^{2}}{R_3} = \dfrac{12^{2}}{60} = 2{,}4\ \text{W}.$$
La somme $P_1 + P_2 + P_3 = 7{,}2 + 4{,}8 + 2{,}4 = 14{,}4\ \text{W} = P$ : la puissance fournie est intégralement dissipée par effet Joule.
\end{enumerate}

### Problème 3 : Diviseur de tension et résistance inconnue
\begin{enonce}
On monte en série un résistor de résistance connue $R_1 = 1{,}0\ \text{k}\Omega$ et un résistor de résistance inconnue $R_2$. L'ensemble est alimenté sous une tension $U = 12\ \text{V}$. Un voltmètre indique une tension $U_1 = 4{,}0\ \text{V}$ aux bornes de $R_1$.
\begin{enumerate}
    \item En utilisant la relation du diviseur de tension, déterminer la valeur de $R_2$.
    \item Calculer l'intensité $I$ du courant qui circule dans le circuit.
    \item Calculer la tension $U_2$ aux bornes de $R_2$ et vérifier l'additivité des tensions.
    \item Déterminer la puissance dissipée dans chaque résistor, puis la puissance totale dissipée.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item La relation du diviseur de tension appliquée à $R_1$ s'écrit :
$$U_1 = \dfrac{R_1}{R_1 + R_2}\,U.$$
On isole $R_1 + R_2$ :
$$R_1 + R_2 = \dfrac{R_1 \cdot U}{U_1} = \dfrac{1{,}0\times 10^{3} \times 12}{4{,}0} = 3{,}0\times 10^{3}\ \Omega,$$
d'où :
$$R_2 = 3{,}0\times 10^{3} - 1{,}0\times 10^{3} = 2{,}0\times 10^{3}\ \Omega = 2{,}0\ \text{k}\Omega.$$
    \item Le circuit est une simple association en série de résistance $R_1 + R_2 = 3{,}0\ \text{k}\Omega = 3000\ \Omega$ :
$$I = \dfrac{U}{R_1 + R_2} = \dfrac{12}{3000} = 4{,}0\times 10^{-3}\ \text{A} = 4{,}0\ \text{mA}.$$
    \item La tension aux bornes de $R_2$ :
$$U_2 = R_2\,I = 2{,}0\times 10^{3} \times 4{,}0\times 10^{-3} = 8{,}0\ \text{V}.$$
On vérifie $U_1 + U_2 = 4{,}0 + 8{,}0 = 12\ \text{V} = U$.
    \item Puissances dissipées par effet Joule :
$$P_1 = R_1\,I^{2} = 1{,}0\times 10^{3} \times (4{,}0\times 10^{-3})^{2} = 1{,}6\times 10^{-2}\ \text{W} = 16\ \text{mW},$$
$$P_2 = R_2\,I^{2} = 2{,}0\times 10^{3} \times (4{,}0\times 10^{-3})^{2} = 3{,}2\times 10^{-2}\ \text{W} = 32\ \text{mW}.$$
La puissance totale vaut $P = P_1 + P_2 = 48\ \text{mW}$, ce qui correspond bien à $P = U\,I = 12 \times 4{,}0\times 10^{-3} = 4{,}8\times 10^{-2}\ \text{W}$.
\end{enumerate}
