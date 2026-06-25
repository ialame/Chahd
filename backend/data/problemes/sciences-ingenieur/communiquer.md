### Problème 1 : Tableau de bord d'un véhicule électrique
\begin{enonce}
Le tableau de bord d'un petit véhicule électrique doit restituer plusieurs informations au conducteur :
\begin{itemize}
    \item l'état de la batterie : « en charge / pas en charge » ;
    \item la vitesse instantanée, en km/h ;
    \item un message d'alerte du type « Pneu sous-gonflé » ;
    \item un signal sonore en cas de marche arrière.
\end{itemize}
\begin{enumerate}
    \item Pour chaque information, indiquer le **destinataire** de la fonction COMMUNIQUER (utilisateur ou autre système).
    \item Choisir l'organe de restitution le plus adapté à chacune des quatre informations et justifier.
    \item Le calculateur reçoit la vitesse codée sur 8 bits. Expliquer comment cette information binaire devient un nombre **visible** sur l'afficheur. Quelle fonction de la chaîne d'information réalise cette restitution ?
    \item Le signal sonore de marche arrière complète-t-il ou remplace-t-il la restitution visuelle ? Justifier.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Les quatre informations sont destinées à l'**utilisateur** (le conducteur) : ce sont des restitutions vers un opérateur humain, et non vers un autre système.
    \item
    - État de charge : **voyant lumineux** (information binaire tout ou rien) ;
    - vitesse en km/h : **afficheur 7 segments** (valeur numérique simple, quelques chiffres) ;
    - message « Pneu sous-gonflé » : **afficheur LCD alphanumérique** (court message textuel) ;
    - marche arrière : **signalisation sonore** (buzzer), perceptible même sans regarder l'écran.
    \item Le mot de 8 bits est une donnée interne de la Partie Commande. La fonction **COMMUNIQUER** convertit cette valeur numérique en une **forme perceptible** : elle commande l'allumage des segments correspondants pour former les chiffres. C'est donc COMMUNIQUER (interface de dialogue) qui rend la valeur **visible**.
    \item Il **complète** la restitution visuelle. La signalisation sonore est utile précisément lorsque l'utilisateur **ne regarde pas** l'écran (ici, en manœuvrant) : elle ajoute un canal d'information sans supprimer les indications visuelles.
\end{enumerate}

### Problème 2 : Transmission série, parallèle et débit
\begin{enonce}
Un capteur numérique produit des mots de 8 bits. On veut les transmettre à une carte de commande.
\begin{enumerate}
    \item On utilise d'abord une liaison **parallèle**. Combien de fils de données sont nécessaires ? Comment les 8 bits d'un mot circulent-ils ?
    \item On passe ensuite à une liaison **série**. Combien de fils de données suffisent ? Comment les bits circulent-ils alors ?
    \item Sur une liaison série, un même fil envoie les bits l'un après l'autre. Si on transmet $1$ bit toutes les $1\,\mu\mathrm{s}$, c'est-à-dire un débit de $10^6$ bits par seconde, combien de temps faut-il pour envoyer **un mot** de 8 bits ?
    \item Combien de mots de 8 bits peut-on transmettre en **une seconde** à ce débit ?
    \item Citer un avantage de la liaison série et un avantage de la liaison parallèle, puis indiquer pourquoi la liaison série est aujourd'hui privilégiée pour les transmissions courantes (USB, $\mathrm{I}^2\mathrm{C}$).
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item En liaison **parallèle**, il faut **8 fils** de données (un par bit). Les 8 bits du mot circulent **simultanément**, chacun sur son fil.
    \item En liaison **série**, un **seul** fil de données suffit. Les 8 bits sont envoyés **les uns après les autres** (successivement) sur ce fil.
    \item Chaque bit prend $1\,\mu\mathrm{s}$. Pour 8 bits :
    $$t = 8 \times 1\ \mu\mathrm{s} = 8\ \mu\mathrm{s} = 8\times 10^{-6}\ \mathrm{s}.$$
    \item En une seconde, le nombre de bits transmis est $10^6$ ; chaque mot fait 8 bits, donc :
    $$N = \frac{10^6}{8} = 125\,000 \text{ mots par seconde}.$$
    \item La liaison **série** utilise peu de conducteurs (économique, adaptée aux longues distances) ; la liaison **parallèle** est plus **rapide** à fréquence égale (8 bits d'un coup). On privilégie aujourd'hui la liaison série car, à très haute fréquence, elle est moins coûteuse en câblage et plus fiable que la parallèle : c'est pourquoi USB et $\mathrm{I}^2\mathrm{C}$ sont des liaisons série.
\end{enumerate}

### Problème 3 : Architecture de communication d'une serre automatisée
\begin{enonce}
Une serre automatisée comporte de nombreux capteurs (température, humidité, luminosité) et actionneurs (volets, brumisateurs, éclairage), tous reliés à un automate central. Plusieurs choix de communication sont possibles.
\begin{enumerate}
    \item On envisage d'abord de relier **chaque** capteur et actionneur à l'automate par une liaison individuelle. Quel inconvénient majeur présente cette solution dans une grande serre ?
    \item On choisit finalement de relier tous ces éléments sur un même support par un **bus de terrain** (de type CAN). Définir un bus de terrain et donner deux avantages de cette solution.
    \item Pour que tous les équipements branchés sur le bus se comprennent, qu'est-ce qui doit être commun à l'émetteur et au récepteur ? Définir ce terme.
    \item L'automate doit aussi être consultable à distance, depuis un poste informatique du bureau, via Internet. Quel type d'infrastructure relie l'automate au poste distant ? S'agit-il d'une restitution vers l'utilisateur ou vers un autre système ?
    \item Récapituler, pour la fonction COMMUNIQUER de cette serre, les deux destinations possibles de l'information restituée et les moyens associés.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Chaque liaison individuelle ajoute des fils : dans une grande serre, cela conduit à un **câblage très lourd** (de nombreux conducteurs), coûteux à installer et difficile à diagnostiquer en cas de panne.
    \item Un **bus de terrain** est un réseau **industriel** spécialisé qui relie, sur un **même support**, capteurs, actionneurs et automates d'une installation (CAN, Modbus, Profibus). Avantages : il **réduit fortement le câblage** et **facilite le diagnostic**.
    \item Il faut un **protocole** commun. Un protocole est l'ensemble des **règles** qui garantissent que l'émetteur et le récepteur **se comprennent** (format des messages, codage, vitesse).
    \item Le poste distant est relié à l'automate par un **réseau** (Ethernet/Internet). Il s'agit d'une restitution **vers un autre système** : l'information n'est pas rendue visible directement, elle est **codée numériquement** et circule sur le réseau selon un protocole.
    \item Les deux destinations de COMMUNIQUER dans cette serre :
    - vers l'**utilisateur** : une **interface de dialogue** (voyants d'état, afficheur ou écran de l'automate) qui rend l'information perceptible ;
    - vers d'autres **systèmes** : une **transmission de données** numériques sur un bus de terrain (CAN) en local et sur un réseau (Ethernet/Internet) à distance.
\end{enumerate}
