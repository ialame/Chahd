### Problème 1 : Étude complète d'un dipôle ohmique
\begin{enonce}
On souhaite déterminer la résistance d'un résistor. On réalise un montage permettant de faire varier le courant et de mesurer $U$ et $I$. On obtient :

| $I\ (\text{mA})$ | $0$ | $20$ | $40$ | $60$ | $80$ | $100$ |
|---|---|---|---|---|---|---|
| $U\ (\text{V})$ | $0$ | $0{,}9$ | $1{,}8$ | $2{,}7$ | $3{,}6$ | $4{,}5$ |

\begin{enumerate}
    \item Décrire l'allure de la caractéristique $U = f(I)$ que l'on obtiendrait. Le dipôle est-il passif ? linéaire ?
    \item Calculer le rapport $\dfrac{U}{I}$ pour deux mesures différentes et conclure quant à la nature du dipôle.
    \item Déterminer la résistance $R$ du résistor.
    \item On applique à présent une tension $U = 7{,}2\ \text{V}$ à ses bornes. Quelle intensité le traverse ? Cette mesure est-elle compatible avec le tableau ?
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item En reportant les points, on obtient une **droite passant par l'origine** ($U = 0$ pour $I = 0$). Le dipôle est donc **passif** (la caractéristique passe par l'origine) et **linéaire** (c'est une droite) : c'est un dipôle ohmique.
    \item Avec $I$ en ampères :
    $$\dfrac{U}{I} = \dfrac{0{,}9}{0{,}020} = 45 \qquad \text{et} \qquad \dfrac{U}{I} = \dfrac{4{,}5}{0{,}100} = 45.$$
    Le rapport est **constant** : $U$ et $I$ sont proportionnelles, ce qui confirme un **résistor**.
    \item Ce rapport constant est la résistance : $R = \dfrac{U}{I} = 45\ \Omega.$
    \item D'après la loi d'Ohm, $I = \dfrac{U}{R} = \dfrac{7{,}2}{45} = 0{,}16\ \text{A} = 160\ \text{mA}$. Comme la résistance est constante, ce point appartient à la même droite que les mesures du tableau : il en est le prolongement, donc parfaitement compatible.
\end{enumerate}

### Problème 2 : Résistor et lampe, linéaire ou non ?
\begin{enonce}
On relève les caractéristiques de deux dipôles passifs : un résistor $D_1$ et une lampe $D_2$.

Dipôle $D_1$ (résistor) :

| $I\ (\text{mA})$ | $50$ | $100$ | $150$ | $200$ |
|---|---|---|---|---|
| $U\ (\text{V})$ | $2{,}0$ | $4{,}0$ | $6{,}0$ | $8{,}0$ |

Dipôle $D_2$ (lampe) :

| $I\ (\text{mA})$ | $50$ | $100$ | $150$ | $200$ |
|---|---|---|---|---|
| $U\ (\text{V})$ | $1{,}0$ | $2{,}5$ | $4{,}5$ | $7{,}0$ |

\begin{enumerate}
    \item Pour le dipôle $D_1$, calculer $\dfrac{U}{I}$ aux quatre points. Que peut-on dire de sa résistance ? Donner sa valeur.
    \item Pour le dipôle $D_2$, calculer $\dfrac{U}{I}$ aux quatre points. La lampe est-elle un dipôle ohmique ? Justifier.
    \item Comment évolue la résistance de la lampe quand le courant augmente ? Expliquer physiquement.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Pour $D_1$ (avec $I$ en ampères) :
    $$\dfrac{2{,}0}{0{,}050} = 40, \quad \dfrac{4{,}0}{0{,}100} = 40, \quad \dfrac{6{,}0}{0{,}150} = 40, \quad \dfrac{8{,}0}{0{,}200} = 40.$$
    Le rapport est constant : la résistance est **constante**, $R_1 = 40\ \Omega$. Le dipôle $D_1$ est bien **ohmique (linéaire)**.
    \item Pour $D_2$ :
    $$\dfrac{1{,}0}{0{,}050} = 20, \quad \dfrac{2{,}5}{0{,}100} = 25, \quad \dfrac{4{,}5}{0{,}150} = 30, \quad \dfrac{7{,}0}{0{,}200} = 35.$$
    Le rapport $\dfrac{U}{I}$ **n'est pas constant** : $U$ et $I$ ne sont pas proportionnelles. La lampe **n'est pas** un dipôle ohmique : c'est un dipôle **non linéaire** (sa caractéristique est une courbe).
    \item La résistance de la lampe **augmente** avec le courant (de $20\ \Omega$ à $35\ \Omega$). Quand le courant augmente, le filament **s'échauffe** et sa température monte ; or la résistance d'un métal croît avec la température. C'est pourquoi la caractéristique d'une lampe s'incurve.
\end{enumerate}

### Problème 3 : Point de fonctionnement et bilan de puissance
\begin{enonce}
Un générateur de caractéristique $U = E - r\,I$, avec $E = 6\ \text{V}$ et $r = 2\ \Omega$, alimente un résistor de résistance $R = 10\ \Omega$.
\begin{enumerate}
    \item Déterminer, par le calcul, le point de fonctionnement $(I\,;\,U)$ du circuit.
    \item Expliquer ce que représente géométriquement ce point de fonctionnement sur le graphe des deux caractéristiques.
    \item Calculer la puissance $P_R$ reçue par le résistor, la puissance $P_g$ fournie par le générateur, et la puissance dissipée dans sa résistance interne $r$. Vérifier le bilan énergétique.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Le point de fonctionnement vérifie simultanément $U = R\,I$ et $U = E - r\,I$. En égalant :
    $$R\,I = E - r\,I \;\Longrightarrow\; (R + r)\,I = E \;\Longrightarrow\; I = \dfrac{E}{R + r} = \dfrac{6}{10 + 2} = 0{,}5\ \text{A}.$$
    Puis $U = R\,I = 10 \times 0{,}5 = 5\ \text{V}$. Le point de fonctionnement est $(I = 0{,}5\ \text{A}\,;\ U = 5\ \text{V})$.
    \item C'est le **point d'intersection** des deux caractéristiques : la droite du résistor ($U = 10\,I$, passant par l'origine) et la droite du générateur ($U = 6 - 2\,I$). C'est l'unique couple $(I\,;\,U)$ qui convient à la fois au générateur et au résistor, donc l'état réel du circuit.
    \item Puissance reçue par le résistor : $P_R = U\,I = 5 \times 0{,}5 = 2{,}5\ \text{W}$.
    Puissance fournie par le générateur : $P_g = E\,I = 6 \times 0{,}5 = 3\ \text{W}$.
    Puissance dissipée dans $r$ : $P_r = r\,I^2 = 2 \times (0{,}5)^2 = 0{,}5\ \text{W}$.
    Bilan : $P_R + P_r = 2{,}5 + 0{,}5 = 3\ \text{W} = P_g$. Toute la puissance fournie par le générateur se retrouve, partagée entre le résistor (utile) et la résistance interne (pertes).
\end{enumerate}
