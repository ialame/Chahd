### Exercice 1 : Reconnaître le type de signal
\begin{enonce}
Pour chacune des situations suivantes, indiquer si le signal délivré par le capteur est **logique (TOR)**, **analogique** ou **numérique** :
\begin{enumerate}
    \item un interrupteur de fin de course en butée d'un chariot ;
    \item une sonde de température qui fournit une tension de $0$ à $10$ V ;
    \item un capteur qui transmet la mesure codée sur 8 bits à un calculateur ;
    \item un détecteur de proximité signalant la présence ou l'absence d'une pièce.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Le contact est soit ouvert, soit fermé : deux états seulement, c'est un signal **logique (TOR)**.
    \item La tension varie continûment et peut prendre une infinité de valeurs entre $0$ et $10$ V : signal **analogique**.
    \item L'information est codée en nombres (suite de bits) directement exploitable par le calculateur : signal **numérique**.
    \item Présence ou absence, donc deux états oui/non : signal **logique (TOR)**.
\end{enumerate}
Rappel : la partie commande ne « comprend » que le numérique ; un signal analogique doit donc être converti par un **CAN** avant traitement.

### Exercice 2 : Choisir le capteur selon le matériau
\begin{enonce}
On veut détecter, sans contact, l'arrivée d'objets sur un convoyeur. Indiquer quel détecteur de proximité (**inductif**, **capacitif** ou **photoélectrique**) convient dans chaque cas, en justifiant :
\begin{enumerate}
    \item des pièces uniquement **métalliques** ;
    \item des bouteilles en **plastique** ;
    \item le **niveau** d'un liquide dans une cuve, à travers la paroi.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Un **détecteur inductif** : il détecte uniquement les objets métalliques par perturbation de son champ magnétique, ce qui est exactement le besoin.
    \item Un **détecteur capacitif** ou **photoélectrique** : tous deux détectent n'importe quel matériau (le plastique n'est pas métallique, donc l'inductif est exclu).
    \item Un **détecteur capacitif** : il réagit à la variation de capacité provoquée par tout matériau, y compris un liquide, et peut détecter à travers une paroi non métallique.
\end{enumerate}
Règle générale : **inductif** pour les métaux uniquement, **capacitif** ou **photoélectrique** pour tous les matériaux.

### Exercice 3 : Capteur à contact ou sans contact
\begin{enonce}
\begin{enumerate}
    \item Donner deux avantages d'un capteur **sans contact** par rapport à un capteur **à contact**.
    \item Citer un inconvénient d'un capteur **à contact**.
    \item Une chaîne de production fonctionne à cadence très élevée et manipule des objets fragiles. Quel type de capteur faut-il privilégier ? Justifier.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Un capteur sans contact ne subit **pas d'usure mécanique** (il ne touche pas l'objet) et est **plus rapide**, donc adapté aux cadences élevées.
    \item Un capteur à contact touche physiquement l'objet : il est **sujet à l'usure mécanique** (galet, levier) et plus lent.
    \item Il faut privilégier un capteur **sans contact** : pas d'usure malgré la cadence élevée, rapidité compatible avec le rythme de production, et aucun risque d'abîmer les objets fragiles.
\end{enumerate}

### Exercice 4 : Sensibilité d'une sonde
\begin{enonce}
Une sonde de température délivre une tension qui augmente de $20$ mV pour chaque degré Celsius supplémentaire.
\begin{enumerate}
    \item Donner la **sensibilité** $S$ de la sonde (avec son unité).
    \item À $0$ °C la sonde délivre $0{,}5$ V. Quelle tension délivre-t-elle à $25$ °C ?
    \item La carte d'acquisition accepte au maximum $5$ V. Quelle est alors la température maximale mesurable ?
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item La sensibilité est le rapport entre la variation de sortie et la variation de la grandeur : $S = 20$ mV/°C.
    \item Pour $25$ °C, l'augmentation vaut $25 \times 20 = 500$ mV $= 0{,}5$ V. La tension est donc $0{,}5 + 0{,}5 = 1$ V.
    \item La marge disponible au-dessus de $0{,}5$ V est $5 - 0{,}5 = 4{,}5$ V $= 4500$ mV. Cela correspond à $\dfrac{4500}{20} = 225$ °C. La température maximale mesurable est donc $225$ °C, ce qui fixe le haut de l'**étendue de mesure**.
\end{enumerate}

### Exercice 5 : Détecteur photoélectrique
\begin{enonce}
\begin{enumerate}
    \item Le détecteur photoélectrique est-il un capteur à contact ou sans contact ? Sur quel phénomène repose-t-il ?
    \item Distinguer le système **barrage** et le système **réflexion**.
    \item Ce détecteur peut-il détecter un objet en bois ? Justifier.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item C'est un capteur **sans contact** : il utilise un **faisceau lumineux** émis vers la zone à surveiller.
    \item Dans le système **barrage**, l'émetteur et le récepteur se font face et l'objet est détecté lorsqu'il **coupe** le faisceau. Dans le système **réflexion**, émetteur et récepteur sont côte à côte et le faisceau est **renvoyé** par un réflecteur ou par l'objet lui-même.
    \item Oui : le détecteur photoélectrique détecte **tous les matériaux** (il suffit que l'objet coupe ou renvoie la lumière), le bois est donc détecté, contrairement au détecteur inductif réservé aux métaux.
\end{enumerate}

### Exercice 6 : Étendue de mesure et fonction ACQUÉRIR
\begin{enonce}
\begin{enumerate}
    \item Définir en une phrase la fonction **ACQUÉRIR** dans un système automatisé.
    \item Qu'appelle-t-on **étendue de mesure** d'un capteur ?
    \item Un capteur de pression a une étendue de mesure de $0$ à $4$ bar. Peut-on l'utiliser pour mesurer une pression de $6$ bar ? Que risque-t-on ?
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item **Acquérir** consiste à prélever une information sur l'état du système ou de son environnement et à la traduire en une grandeur exploitable par la partie commande ; cette fonction est assurée par les **capteurs**.
    \item L'**étendue de mesure** est l'intervalle entre la valeur minimale et la valeur maximale que le capteur peut mesurer ; la grandeur mesurée doit toujours rester dans cette plage.
    \item Non : $6$ bar est **hors de l'étendue** $[0 ; 4]$ bar. La mesure serait fausse (saturation) et le capteur risquerait d'être endommagé. Il faut choisir un capteur dont l'étendue couvre la valeur attendue.
\end{enumerate}
