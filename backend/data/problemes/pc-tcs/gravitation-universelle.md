### Problème 1 : Le système Terre-Lune
\begin{enonce}
On étudie l'attraction gravitationnelle entre la Terre et la Lune. Données :
\begin{itemize}
    \item masse de la Terre : $M_T = 5{,}97\times 10^{24}\,\text{kg}$ ;
    \item masse de la Lune : $M_L = 7{,}34\times 10^{22}\,\text{kg}$ ;
    \item distance Terre-Lune (de centre à centre) : $d = 3{,}84\times 10^{8}\,\text{m}$ ;
    \item rayon de la Terre : $R_T = 6{,}38\times 10^{6}\,\text{m}$ ;
    \item $G = 6{,}67\times 10^{-11}\,\text{N}\cdot\text{m}^2\cdot\text{kg}^{-2}$.
\end{itemize}
\begin{enumerate}
    \item Calculer la valeur $F$ de la force d'attraction que la Terre exerce sur la Lune.
    \item Représenter qualitativement les vecteurs $\vec{F}_{T/L}$ et $\vec{F}_{L/T}$ et donner la relation qui les lie.
    \item Calculer l'intensité de pesanteur $g_0$ à la surface de la Terre. Commenter le résultat obtenu.
    \item Expliquer pourquoi cette force de gravitation n'« attire » pas la Lune jusqu'à la faire tomber sur la Terre.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item On applique la loi de la gravitation universelle :
    \[
    F = G\,\dfrac{M_T\, M_L}{d^2} = 6{,}67\times 10^{-11}\times \dfrac{5{,}97\times 10^{24}\times 7{,}34\times 10^{22}}{(3{,}84\times 10^{8})^2} \approx 2{,}0\times 10^{20}\,\text{N}.
    \]
    \item Les deux vecteurs sont portés par la droite reliant les centres de la Terre et de la Lune, dirigés l'un vers l'autre (attraction). Ils ont la même valeur mais des sens opposés : $\vec{F}_{T/L} = -\,\vec{F}_{L/T}$ (principe des actions réciproques).
    \item Intensité de pesanteur au sol : $g_0 = G\,\dfrac{M_T}{R_T^{\,2}}$ :
    \[
    g_0 = 6{,}67\times 10^{-11}\times \dfrac{5{,}97\times 10^{24}}{(6{,}38\times 10^{6})^2} \approx 9{,}8\,\text{N}\cdot\text{kg}^{-1}.
    \]
    On retrouve bien la valeur usuelle de l'intensité de pesanteur terrestre.
    \item La force de gravitation est dirigée vers la Terre et courbe en permanence la trajectoire de la Lune ; sans elle, la Lune partirait en ligne droite. Mais la Lune possède une vitesse : au lieu de tomber, elle « tombe » sans cesse à côté de la Terre, ce qui la maintient sur une orbite quasi circulaire.
\end{enumerate}

### Problème 2 : Comment varie la pesanteur avec l'altitude ?
\begin{enonce}
On donne $g_0 = 9{,}8\,\text{N}\cdot\text{kg}^{-1}$ au niveau du sol et $R_T = 6{,}38\times 10^{6}\,\text{m}$.
\begin{enumerate}
    \item Rappeler l'expression de l'intensité de pesanteur $g_h$ à l'altitude $h$ en fonction de $g_0$, $R_T$ et $h$.
    \item Calculer $g_h$ à l'altitude $h = 8{,}8\,\text{km}$ (sommet de l'Everest). Le poids varie-t-il beaucoup ?
    \item Calculer $g_h$ à $h = 400\,\text{km}$ (altitude de la Station spatiale internationale).
    \item Déterminer l'altitude $h$ pour laquelle l'intensité de pesanteur n'est plus que la moitié de sa valeur au sol.
    \item Les astronautes de la Station ressentent l'impesanteur. Cela signifie-t-il que la pesanteur y est nulle ? Justifier.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item $g_h = g_0\,\dfrac{R_T^{\,2}}{(R_T + h)^2}$.
    \item Avec $h = 8{,}8\,\text{km} = 8{,}8\times 10^{3}\,\text{m}$, donc $R_T + h = 6{,}3888\times 10^{6}\,\text{m}$ :
    \[
    g_h = 9{,}8\times \dfrac{(6{,}38\times 10^{6})^2}{(6{,}3888\times 10^{6})^2} \approx 9{,}8\,\text{N}\cdot\text{kg}^{-1}.
    \]
    La variation est infime (moins de $0{,}3\,\%$) : à l'échelle d'une montagne, le poids est pratiquement inchangé.
    \item Avec $h = 400\,\text{km} = 4{,}0\times 10^{5}\,\text{m}$, donc $R_T + h = 6{,}78\times 10^{6}\,\text{m}$ :
    \[
    g_h = 9{,}8\times \dfrac{(6{,}38\times 10^{6})^2}{(6{,}78\times 10^{6})^2} \approx 8{,}7\,\text{N}\cdot\text{kg}^{-1}.
    \]
    \item On cherche $h$ tel que $g_h = \dfrac{g_0}{2}$, soit $\dfrac{R_T^{\,2}}{(R_T + h)^2} = \dfrac{1}{2}$, d'où $(R_T + h)^2 = 2\,R_T^{\,2}$ et $R_T + h = R_T\sqrt{2}$. Donc :
    \[
    h = R_T(\sqrt{2} - 1) = 6{,}38\times 10^{6}\times 0{,}414 \approx 2{,}6\times 10^{6}\,\text{m} \approx 2{,}6\times 10^{3}\,\text{km}.
    \]
    \item Non. À $400\,\text{km}$, $g_h \approx 8{,}7\,\text{N}\cdot\text{kg}^{-1}$ : la pesanteur reste presque égale à sa valeur au sol. L'impesanteur ressentie vient de la **chute libre permanente** de la Station (elle et ses occupants tombent ensemble autour de la Terre), et non d'une absence de gravité.
\end{enumerate}

### Problème 3 : Le poids sur différentes planètes
\begin{enonce}
Un explorateur de masse $m = 80\,\text{kg}$ voyage dans le système solaire. On donne $G = 6{,}67\times 10^{-11}\,\text{N}\cdot\text{m}^2\cdot\text{kg}^{-2}$ et, pour Jupiter : $M_J = 1{,}9\times 10^{27}\,\text{kg}$, $R_J = 7{,}0\times 10^{7}\,\text{m}$. Sur Terre, on prend $g_T = 9{,}8\,\text{N}\cdot\text{kg}^{-1}$.
\begin{enumerate}
    \item Calculer le poids de l'explorateur sur la Terre.
    \item Calculer l'intensité de pesanteur $g_J$ à la « surface » de Jupiter.
    \item En déduire le poids de l'explorateur sur Jupiter.
    \item Comparer ce poids au poids terrestre. Que ressentirait l'explorateur ?
    \item L'explorateur prétend qu'il pourrait « maigrir » en voyageant vers une planète moins massive. Cette affirmation est-elle correcte ? Distinguer masse et poids.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Sur Terre : $P_T = m\,g_T = 80\times 9{,}8 = 784\,\text{N}$.
    \item Intensité de pesanteur sur Jupiter : $g_J = G\,\dfrac{M_J}{R_J^{\,2}}$ :
    \[
    g_J = 6{,}67\times 10^{-11}\times \dfrac{1{,}9\times 10^{27}}{(7{,}0\times 10^{7})^2} \approx 26\,\text{N}\cdot\text{kg}^{-1}.
    \]
    \item Poids sur Jupiter : $P_J = m\,g_J = 80\times 26 \approx 2{,}1\times 10^{3}\,\text{N}$ (environ $2070\,\text{N}$).
    \item Le rapport $\dfrac{P_J}{P_T} = \dfrac{2070}{784} \approx 2{,}6$ : l'explorateur y serait environ deux fois et demie plus « lourd » qu'sur Terre. Il se sentirait écrasé, ses membres lui paraissant beaucoup plus pesants.
    \item L'affirmation confond masse et poids. La **masse** $m = 80\,\text{kg}$ (quantité de matière) reste la même partout. Seul le **poids** $P = m\,g$ change avec le lieu, car $g$ dépend de l'astre. L'explorateur ne « maigrit » pas : il pèse seulement moins, sans perdre de matière.
\end{enumerate}
