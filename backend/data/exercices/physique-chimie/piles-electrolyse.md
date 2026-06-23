### Exercice 1 : Constitution et polarité d'une pile
\begin{enonce}
On réalise la pile Daniell en associant une demi-pile constituée d'une lame de zinc plongeant dans une solution de sulfate de zinc ($\text{Zn}^{2+}$) et une demi-pile constituée d'une lame de cuivre plongeant dans une solution de sulfate de cuivre ($\text{Cu}^{2+}$), reliées par un pont salin. L'équation de la réaction spontanée est :
\[
\text{Zn} + \text{Cu}^{2+} = \text{Zn}^{2+} + \text{Cu}
\]
Identifier l'anode et la cathode, préciser leur polarité, et écrire les demi-équations aux électrodes.
\end{enonce}

\textbf{Solution :}
Dans la réaction spontanée, le zinc est oxydé et l'ion cuivre est réduit.
\begin{itemize}
    \item À l'\textbf{anode} (siège de l'oxydation), le zinc cède des électrons :
    \[
    \text{Zn} = \text{Zn}^{2+} + 2\,\text{e}^-
    \]
    L'anode est le \textbf{pôle} $\boldsymbol{-}$ de la pile.
    \item À la \textbf{cathode} (siège de la réduction), les ions cuivre captent des électrons :
    \[
    \text{Cu}^{2+} + 2\,\text{e}^- = \text{Cu}
    \]
    La cathode est le \textbf{pôle} $\boldsymbol{+}$ de la pile.
\end{itemize}
La lame de zinc est donc le pôle négatif, la lame de cuivre le pôle positif.

### Exercice 2 : Sens du courant et des électrons
\begin{enonce}
La pile Daniell de l'exercice précédent débite dans un circuit extérieur contenant une lampe.
\begin{enumerate}
    \item Préciser le sens de circulation des électrons dans le circuit extérieur.
    \item En déduire le sens conventionnel du courant électrique.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Les électrons sont libérés à l'anode (pôle $-$, lame de zinc) et sont captés à la cathode (pôle $+$, lame de cuivre). Dans le circuit extérieur, les électrons circulent donc de la \textbf{borne} $\boldsymbol{-}$ \textbf{vers la borne} $\boldsymbol{+}$, c'est-à-dire du zinc vers le cuivre.
    \item Le courant conventionnel circule en sens inverse des électrons : à l'extérieur de la pile, il va du \textbf{pôle} $\boldsymbol{+}$ (cuivre) \textbf{vers le pôle} $\boldsymbol{-}$ (zinc).
\end{enumerate}

### Exercice 3 : Quantité d'électricité et nombre d'électrons
\begin{enonce}
Une pile débite un courant d'intensité constante $I = 0{,}20\ \text{A}$ pendant une durée $\Delta t = 1{,}0\ \text{h}$.
\begin{enumerate}
    \item Calculer la quantité d'électricité $Q$ débitée.
    \item En déduire la quantité de matière d'électrons $n(\text{e}^-)$ ayant circulé.
\end{enumerate}
Donnée : $F = 9{,}65\times 10^{4}\ \text{C.mol}^{-1}$.
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item La durée en secondes est $\Delta t = 1{,}0\times 3600 = 3600\ \text{s}$. La quantité d'électricité vaut :
    \[
    Q = I\cdot \Delta t = 0{,}20 \times 3600 = 7{,}2\times 10^{2}\ \text{C}
    \]
    \item La quantité de matière d'électrons est reliée à $Q$ par $Q = n(\text{e}^-)\cdot F$, d'où :
    \[
    n(\text{e}^-) = \frac{Q}{F} = \frac{7{,}2\times 10^{2}}{9{,}65\times 10^{4}} = 7{,}5\times 10^{-3}\ \text{mol}
    \]
\end{enumerate}

### Exercice 4 : Masse de cuivre déposée à la cathode
\begin{enonce}
Dans une pile Daniell débitant un courant constant $I = 50\ \text{mA}$ pendant $\Delta t = 30\ \text{min}$, du cuivre se dépose à la cathode selon $\text{Cu}^{2+} + 2\,\text{e}^- = \text{Cu}$.

Calculer la masse de cuivre déposée.

Données : $F = 9{,}65\times 10^{4}\ \text{C.mol}^{-1}$ ; $M(\text{Cu}) = 63{,}5\ \text{g.mol}^{-1}$.
\end{enonce}

\textbf{Solution :}
La quantité d'électricité débitée est :
\[
Q = I\cdot \Delta t = 50\times 10^{-3} \times (30\times 60) = 50\times 10^{-3} \times 1800 = 90\ \text{C}
\]
La quantité d'électrons échangés vaut $n(\text{e}^-) = \dfrac{Q}{F}$. D'après la demi-équation, il faut $2$ électrons pour former $1$ atome de cuivre :
\[
n(\text{Cu}) = \frac{n(\text{e}^-)}{2} = \frac{Q}{2F} = \frac{90}{2\times 9{,}65\times 10^{4}} = 4{,}7\times 10^{-4}\ \text{mol}
\]
La masse de cuivre déposée est :
\[
m(\text{Cu}) = n(\text{Cu})\cdot M(\text{Cu}) = 4{,}7\times 10^{-4} \times 63{,}5 = 3{,}0\times 10^{-2}\ \text{g} = 30\ \text{mg}
\]

### Exercice 5 : Capacité (durée de vie) d'une pile
\begin{enonce}
Une pile contient initialement une masse $m_0 = 6{,}54\ \text{g}$ de zinc à son électrode négative. Elle débite un courant constant $I = 0{,}10\ \text{A}$. La pile s'arrête de fonctionner lorsque tout le zinc est consommé selon $\text{Zn} = \text{Zn}^{2+} + 2\,\text{e}^-$.

Déterminer la durée de fonctionnement (durée de vie) de la pile.

Données : $F = 9{,}65\times 10^{4}\ \text{C.mol}^{-1}$ ; $M(\text{Zn}) = 65{,}4\ \text{g.mol}^{-1}$.
\end{enonce}

\textbf{Solution :}
La quantité de zinc disponible est :
\[
n(\text{Zn}) = \frac{m_0}{M(\text{Zn})} = \frac{6{,}54}{65{,}4} = 0{,}100\ \text{mol}
\]
Chaque atome de zinc libère $2$ électrons, donc la quantité totale d'électrons échangés est :
\[
n(\text{e}^-) = 2\,n(\text{Zn}) = 0{,}200\ \text{mol}
\]
La quantité d'électricité totale que peut fournir la pile vaut :
\[
Q = n(\text{e}^-)\cdot F = 0{,}200 \times 9{,}65\times 10^{4} = 1{,}93\times 10^{4}\ \text{C}
\]
Comme $Q = I\cdot \Delta t$, la durée de fonctionnement est :
\[
\Delta t = \frac{Q}{I} = \frac{1{,}93\times 10^{4}}{0{,}10} = 1{,}93\times 10^{5}\ \text{s} \approx 54\ \text{h}
\]

### Exercice 6 : Électrolyse — distinction avec la pile
\begin{enonce}
On réalise l'électrolyse d'une solution aqueuse de chlorure de cuivre ($\text{Cu}^{2+} + 2\,\text{Cl}^-$) à l'aide d'un générateur de tension. Aux électrodes, on observe un dépôt de cuivre et un dégagement de dichlore $\text{Cl}_2$.
\begin{enumerate}
    \item Pourquoi l'électrolyse est-elle qualifiée de transformation \textbf{forcée} ?
    \item Sachant que le cuivre se dépose sur l'électrode reliée à la borne $-$ du générateur, écrire les demi-équations aux deux électrodes et préciser anode et cathode.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item L'électrolyse est une transformation \textbf{forcée} car elle ne se produit pas spontanément : c'est le générateur qui impose le sens de circulation du courant et provoque une réaction inverse de la réaction spontanée. Sans apport d'énergie électrique extérieur, la réaction n'aurait pas lieu.
    \item L'électrode reliée à la borne $-$ du générateur est la \textbf{cathode}, siège de la réduction (dépôt de cuivre) :
    \[
    \text{Cu}^{2+} + 2\,\text{e}^- = \text{Cu} \quad (\text{cathode, réduction})
    \]
    L'électrode reliée à la borne $+$ est l'\textbf{anode}, siège de l'oxydation (dégagement de dichlore) :
    \[
    2\,\text{Cl}^- = \text{Cl}_2 + 2\,\text{e}^- \quad (\text{anode, oxydation})
    \]
    On retient : à l'anode il y a toujours oxydation, à la cathode toujours réduction, aussi bien pour une pile que pour une électrolyse.
\end{enumerate}

### Exercice 7 : Loi de Faraday — masse déposée par électrolyse
\begin{enonce}
Au cours de l'électrolyse d'une solution de sulfate de cuivre, on fait passer un courant constant $I = 1{,}5\ \text{A}$ pendant $\Delta t = 20\ \text{min}$. Le cuivre se dépose à la cathode selon $\text{Cu}^{2+} + 2\,\text{e}^- = \text{Cu}$.

Calculer la masse de cuivre déposée.

Données : $F = 9{,}65\times 10^{4}\ \text{C.mol}^{-1}$ ; $M(\text{Cu}) = 63{,}5\ \text{g.mol}^{-1}$.
\end{enonce}

\textbf{Solution :}
La quantité d'électricité fournie par le générateur est :
\[
Q = I\cdot \Delta t = 1{,}5 \times (20\times 60) = 1{,}5 \times 1200 = 1{,}8\times 10^{3}\ \text{C}
\]
La demi-équation montre que $2$ électrons sont nécessaires pour déposer $1$ atome de cuivre :
\[
n(\text{Cu}) = \frac{Q}{2F} = \frac{1{,}8\times 10^{3}}{2\times 9{,}65\times 10^{4}} = 9{,}3\times 10^{-3}\ \text{mol}
\]
La masse de cuivre déposée vaut :
\[
m(\text{Cu}) = n(\text{Cu})\cdot M(\text{Cu}) = 9{,}3\times 10^{-3} \times 63{,}5 = 0{,}59\ \text{g}
\]

### Exercice 8 : Galvanoplastie — argenture
\begin{enonce}
On veut recouvrir un objet d'une fine couche d'argent par électrolyse (argenture). L'objet est relié à la cathode et le dépôt s'effectue selon $\text{Ag}^+ + \text{e}^- = \text{Ag}$. On souhaite déposer une masse $m = 1{,}08\ \text{g}$ d'argent en faisant passer un courant constant $I = 0{,}50\ \text{A}$.

Déterminer la durée nécessaire de l'électrolyse.

Données : $F = 9{,}65\times 10^{4}\ \text{C.mol}^{-1}$ ; $M(\text{Ag}) = 108\ \text{g.mol}^{-1}$.
\end{enonce}

\textbf{Solution :}
La quantité d'argent à déposer est :
\[
n(\text{Ag}) = \frac{m}{M(\text{Ag})} = \frac{1{,}08}{108} = 1{,}0\times 10^{-2}\ \text{mol}
\]
La demi-équation $\text{Ag}^+ + \text{e}^- = \text{Ag}$ montre qu'il faut $1$ électron par atome d'argent, donc :
\[
n(\text{e}^-) = n(\text{Ag}) = 1{,}0\times 10^{-2}\ \text{mol}
\]
La quantité d'électricité nécessaire vaut :
\[
Q = n(\text{e}^-)\cdot F = 1{,}0\times 10^{-2} \times 9{,}65\times 10^{4} = 9{,}65\times 10^{2}\ \text{C}
\]
La durée de l'électrolyse est alors :
\[
\Delta t = \frac{Q}{I} = \frac{9{,}65\times 10^{2}}{0{,}50} = 1{,}93\times 10^{3}\ \text{s} \approx 32\ \text{min}
\]
