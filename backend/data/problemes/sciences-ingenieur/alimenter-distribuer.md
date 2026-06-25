### Problème 1 : Démarrage d'un moteur par contacteur avec auto-maintien
\begin{enonce}
Un moteur asynchrone est mis en marche par un **contacteur** $KM$ commandé depuis un pupitre. Le circuit de commande comporte un bouton-poussoir « Marche » $S_1$ (à fermeture), un bouton-poussoir « Arrêt » $S_2$ (à ouverture) et la bobine du contacteur.
\begin{enumerate}
    \item Pourquoi emploie-t-on un contacteur plutôt qu'un simple interrupteur pour piloter ce moteur ?
    \item Expliquer ce qu'apporte le principe de **séparation commande / puissance**.
    \item Sans dispositif particulier, le moteur s'arrête dès qu'on relâche $S_1$. Quel contact ajouter pour qu'il continue de tourner ? Où le placer ?
    \item Décrire la marche puis l'arrêt du moteur avec ce montage.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Le moteur est un récepteur de **forte puissance**. Le contacteur, commandé par un faible signal sur sa bobine, possède des contacts de puissance robustes et des chambres de coupure d'arc : un simple interrupteur de commande ne supporterait pas ce courant.
    \item Le contacteur assure l'**isolement galvanique** entre le circuit de **commande** (basse tension, faible courant, où se trouvent les boutons et l'automate) et le circuit de **puissance** (qui alimente le moteur). Un faible signal pilote ainsi une grande puissance en toute sécurité.
    \item On ajoute un **contact d'auto-maintien** : un contact à fermeture ($NO$) du contacteur $KM$, monté **en parallèle** du bouton « Marche » $S_1$.
    \item **Marche** : on appuie sur $S_1$, la bobine $KM$ est alimentée et le moteur démarre ; le contact d'auto-maintien (NO de $KM$) se ferme et **court-circuite** $S_1$. On peut relâcher $S_1$ : la bobine reste alimentée par l'auto-maintien et le moteur continue de tourner. **Arrêt** : on appuie sur $S_2$ (à ouverture), ce qui coupe l'alimentation de la bobine ; $KM$ retombe, le contact d'auto-maintien s'ouvre et le moteur s'arrête.
\end{enumerate}

### Problème 2 : Réglage de la vitesse d'un MCC par hacheur
\begin{enonce}
Un moteur à courant continu équipe un convoyeur. Il est alimenté par un **hacheur** sous $U_{\text{alim}} = 48\,\text{V}$ ; la tension moyenne aux bornes du moteur est $U_{\text{moy}} = \alpha\, U_{\text{alim}}$, avec $0 \le \alpha \le 1$. On admet que la vitesse de rotation $n$ est proportionnelle à $U_{\text{moy}}$, soit $n = k\, U_{\text{moy}}$ avec $k = 50\ \text{tr·min}^{-1}\text{·V}^{-1}$.
\begin{enumerate}
    \item Calculer $U_{\text{moy}}$ et la vitesse $n$ pour $\alpha = 0{,}5$.
    \item Quel rapport cyclique faut-il pour une vitesse $n = 1800\ \text{tr·min}^{-1}$ ?
    \item Quelles sont les vitesses extrêmes atteignables ($\alpha = 0$ et $\alpha = 1$) ?
    \item La période du hacheur est $T = 0{,}5\,\text{ms}$. Donner la durée pendant laquelle l'interrupteur est fermé pour $\alpha = 0{,}5$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item $U_{\text{moy}} = 0{,}5 \times 48 = 24\,\text{V}$, donc $n = 50 \times 24 = 1200\ \text{tr·min}^{-1}$.
    \item On cherche d'abord $U_{\text{moy}} = \dfrac{n}{k} = \dfrac{1800}{50} = 36\,\text{V}$, puis $\alpha = \dfrac{U_{\text{moy}}}{U_{\text{alim}}} = \dfrac{36}{48} = 0{,}75$.
    \item Pour $\alpha = 0$ : $U_{\text{moy}} = 0\,\text{V}$ et $n = 0$ (moteur à l'arrêt). Pour $\alpha = 1$ : $U_{\text{moy}} = 48\,\text{V}$ et $n = 50 \times 48 = 2400\ \text{tr·min}^{-1}$ (vitesse maximale).
    \item La durée de fermeture est $\alpha T = 0{,}5 \times 0{,}5\,\text{ms} = 0{,}25\,\text{ms}$.
\end{enumerate}

### Problème 3 : Choix complet de la chaîne d'énergie d'un poste automatisé
\begin{enonce}
On automatise un poste qui comporte : un **vérin double effet** qui pousse les pièces, un **tapis** entraîné par un moteur à courant continu dont il faut **régler la vitesse et le sens**, et un **moteur asynchrone** de forte puissance commandé en tout ou rien. Le poste est protégé par un appareil capable de couper automatiquement en cas de court-circuit et d'être réarmé.
\begin{enumerate}
    \item Pour chaque actionneur, choisir l'**énergie** utilisée et le **pré-actionneur** adapté.
    \item Pour le vérin double effet, préciser le distributeur et son nombre d'orifices.
    \item Pour le tapis, expliquer comment on obtient à la fois la vitesse et le sens.
    \item Quel appareil de protection choisir à l'entrée du poste, et pourquoi pas un fusible ?
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item **Vérin double effet** : énergie **pneumatique**, pré-actionneur **distributeur**. **Tapis (MCC à vitesse et sens réglables)** : énergie **électrique variable**, pré-actionneur **hacheur + pont en H**. **Moteur asynchrone tout ou rien** : énergie **électrique**, pré-actionneur **contacteur**.
    \item Le vérin double effet est commandé par un **distributeur $5/2$** : $5$ orifices (la pression $P$, deux utilisations $A$ et $B$, deux échappements $R$ et $S$) et $2$ positions ; une position alimente $A$ et purge $B$, l'autre l'inverse.
    \item Le **pont en H** (quatre interrupteurs en diagonale) choisit le **sens du courant** dans le moteur, donc son **sens de rotation** ; le **hachage** des interrupteurs, réglé par le **rapport cyclique** $\alpha$, fixe la tension moyenne $U_{\text{moy}} = \alpha\, U_{\text{alim}}$ donc la **vitesse**.
    \item On choisit un **disjoncteur** : il **ouvre automatiquement** sur court-circuit (déclencheur magnétique) ou surcharge (déclencheur thermique) puis peut être **réarmé**. Un **fusible** conviendrait pour la coupure, mais il fond et doit être **remplacé** après chaque défaut, ce qui interrompt plus longtemps la production.
\end{enumerate}
