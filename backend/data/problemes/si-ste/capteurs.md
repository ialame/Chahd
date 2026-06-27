### Problème 1 : Chaîne d'acquisition de température d'un four industriel
\begin{enonce}
On régule la température d'un four de séchage à l'aide d'une **chaîne d'acquisition** complète. La température est mesurée par une **sonde Pt100** de résistance $R(T) = R_0\,(1 + \alpha\,T)$, avec $R_0 = 100\ \Omega$ à $0\ ^{\circ}\text{C}$ et $\alpha = 3{,}85 \times 10^{-3}\ {}^{\circ}\text{C}^{-1}$. La sonde occupe la branche $R_x$ d'un **pont de Wheatstone** alimenté sous $E = 4\ \text{V}$ ; les trois autres résistances valent $R_1 = R_2 = R_3 = 100\ \Omega$. La tension déséquilibrée du pont est ensuite **amplifiée** par un conditionneur de gain $A = 100$.

L'étendue de mesure utile du four est $0\ ^{\circ}\text{C}$ à $200\ ^{\circ}\text{C}$. On admet que la tension délivrée par le pont vaut $V_m \approx \dfrac{E}{4}\cdot\dfrac{\Delta R}{R_0}$, où $\Delta R = R(T) - R_0$.
\begin{enumerate}
    \item Rappeler les trois maillons d'une chaîne d'acquisition et associer chacun aux éléments de cet énoncé.
    \item Calculer la résistance de la Pt100 à $0\ ^{\circ}\text{C}$ et à $200\ ^{\circ}\text{C}$. En déduire la sensibilité $S$ de la sonde (en $\Omega/{}^{\circ}\text{C}$).
    \item Vérifier qu'à $0\ ^{\circ}\text{C}$ le pont est équilibré.
    \item Pour $T = 200\ ^{\circ}\text{C}$, calculer $\Delta R$ puis la tension $V_m$ délivrée par le pont (en mV).
    \item En déduire la tension $V_s$ en sortie du conditionneur. Cette valeur est-elle exploitable par un convertisseur analogique-numérique d'entrée $0$–$5\ \text{V}$ ?
    \item Déterminer la sensibilité globale de la chaîne $S_{ch} = \dfrac{\Delta V_s}{\Delta T}$ (en mV/$^{\circ}$C).
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Les trois maillons sont : le **capteur** (ici la sonde Pt100, qui transforme la température en variation de résistance) ; le **conditionneur** (ici le pont de Wheatstone qui convertit $\Delta R$ en tension, suivi de l'amplificateur de gain $A$) ; le **traitement** (réalisé par la partie commande après conversion analogique-numérique).
    \item $R(0) = 100\,(1 + 0) = 100\ \Omega$ ; $R(200) = 100\,(1 + 3{,}85 \times 10^{-3} \times 200) = 100 \times 1{,}77 = 177\ \Omega$. Sensibilité :
$$S = \dfrac{\Delta R}{\Delta T} = \dfrac{177 - 100}{200 - 0} = 0{,}385\ \Omega/{}^{\circ}\text{C}.$$
    \item À $0\ ^{\circ}\text{C}$, $R_x = 100\ \Omega$. La condition d'équilibre $R_1 \cdot R_x = R_2 \cdot R_3$ donne $100 \times 100 = 100 \times 100$ : elle est vérifiée, donc $V_m = 0$, le pont est **équilibré**.
    \item À $200\ ^{\circ}\text{C}$ : $\Delta R = R(200) - R_0 = 177 - 100 = 77\ \Omega$. La tension du pont vaut :
$$V_m = \dfrac{E}{4}\cdot\dfrac{\Delta R}{R_0} = \dfrac{4}{4} \times \dfrac{77}{100} = 0{,}77\ \text{V} = 770\ \text{mV}.$$
    \item Après amplification : $V_s = A \times V_m = 100 \times 0{,}77 = 77\ \text{V}$. Cette valeur **dépasse largement** la plage $0$–$5\ \text{V}$ du convertisseur : le gain $A = 100$ est **trop élevé** pour cette étendue. Il faudrait le réduire (par exemple $A \approx 6$ pour rester sous $5\ \text{V}$) afin de rendre le signal exploitable.
    \item En conservant $A = 100$ : $\Delta V_s = V_s(200) - V_s(0) = 77 - 0 = 77\ \text{V}$ pour $\Delta T = 200\ ^{\circ}\text{C}$, d'où
$$S_{ch} = \dfrac{\Delta V_s}{\Delta T} = \dfrac{77}{200} = 0{,}385\ \text{V}/{}^{\circ}\text{C} = 385\ \text{mV}/{}^{\circ}\text{C}.$$
La chaîne est linéaire (sensibilité constante), héritée de la quasi-linéarité de la Pt100.
\end{enumerate}

### Problème 2 : Pesage industriel par jauge de déformation
\begin{enonce}
Une bascule industrielle pèse des sacs de ciment grâce à un **capteur de force** constitué d'une **jauge de déformation** collée sur une poutre. La résistance au repos de la jauge est $R_x = 350\ \Omega$. Sous une charge, la poutre se déforme et la résistance varie selon $\Delta R = k\,F$, où $F$ est la force appliquée (en N) et $k = 1{,}4 \times 10^{-3}\ \Omega/\text{N}$ le coefficient de la jauge.

La jauge constitue la branche $R_x$ d'un **pont de Wheatstone** alimenté sous $E = 10\ \text{V}$, avec $R_1 = R_2 = R_3 = 350\ \Omega$. La tension délivrée par le pont vaut $V_m \approx \dfrac{E}{4}\cdot\dfrac{\Delta R}{R_x}$. On prend $g = 10\ \text{N/kg}$. L'étendue de mesure est $0$ à $50\ \text{kg}$.
\begin{enumerate}
    \item Pourquoi ne peut-on pas mesurer directement la variation de résistance $\Delta R$ de la jauge ? Quel est alors le rôle du pont de Wheatstone ?
    \item Un sac de masse $m = 50\ \text{kg}$ est posé. Calculer la force $F$ exercée sur le capteur.
    \item En déduire la variation de résistance $\Delta R$ de la jauge.
    \item Calculer la tension de mesure $V_m$ délivrée par le pont (en mV).
    \item Déterminer la sensibilité du système de pesage $S = \dfrac{\Delta V_m}{\Delta m}$ (en mV/kg). Le système est-il linéaire ?
    \item On souhaite obtenir une tension de $5\ \text{V}$ à pleine charge ($50\ \text{kg}$) en sortie d'un amplificateur de gain $A$. Calculer la valeur de $A$ nécessaire.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item La variation $\Delta R$ d'une jauge est **très faible** (fraction d'ohm) : elle est inexploitable par une simple mesure de résistance. Le pont de Wheatstone **convertit cette petite variation $\Delta R$ en une tension $V_m$** mesurable, image de la force appliquée.
    \item La force est le poids du sac : $F = m\,g = 50 \times 10 = 500\ \text{N}$.
    \item $\Delta R = k\,F = 1{,}4 \times 10^{-3} \times 500 = 0{,}7\ \Omega$.
    \item Tension du pont :
$$V_m = \dfrac{E}{4}\cdot\dfrac{\Delta R}{R_x} = \dfrac{10}{4} \times \dfrac{0{,}7}{350} = 2{,}5 \times 2 \times 10^{-3} = 5 \times 10^{-3}\ \text{V} = 5\ \text{mV}.$$
    \item Pour $m = 0$ : $V_m = 0$ ; pour $m = 50\ \text{kg}$ : $V_m = 5\ \text{mV}$. La sensibilité vaut :
$$S = \dfrac{\Delta V_m}{\Delta m} = \dfrac{5 - 0}{50 - 0} = 0{,}1\ \text{mV/kg}.$$
Comme $\Delta R$ est proportionnelle à $F$ (donc à $m$) et $V_m$ proportionnelle à $\Delta R$, la sortie est proportionnelle à la masse : le système est **linéaire**, sa sensibilité est constante.
    \item Il faut amplifier $V_m = 5\ \text{mV}$ jusqu'à $5\ \text{V}$ :
$$A = \dfrac{V_s}{V_m} = \dfrac{5}{5 \times 10^{-3}} = 1000.$$
Un gain de $1000$ ramène la pleine charge à $5\ \text{V}$, valeur directement exploitable par le convertisseur analogique-numérique de la partie commande.
\end{enumerate}
