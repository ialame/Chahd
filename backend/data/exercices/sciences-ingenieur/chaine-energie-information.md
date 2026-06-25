### Exercice 1 : Les deux chaînes fonctionnelles
\begin{enonce}
On rappelle qu'un système automatisé se décompose en deux chaînes qui coopèrent.
\begin{enumerate}
    \item Nommer ces deux chaînes et indiquer le flux principal qui traverse chacune d'elles.
    \item Sur quelle grandeur ces deux chaînes agissent-elles ensemble ? Citer son état initial et son état final pour un lave-linge.
    \item Citer dans l'ordre les cinq fonctions de la chaîne d'énergie.
    \item Citer dans l'ordre les trois fonctions de la chaîne d'information.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item La **chaîne d'énergie**, traversée par un **flux d'énergie**, et la **chaîne d'information**, traversée par un **flux d'information**.
    \item Toutes deux concourent à transformer la **matière d'œuvre**. Pour un lave-linge, l'état initial est « linge sale » et l'état final « linge propre » (valeur ajoutée : le lavage).
    \item ALIMENTER → DISTRIBUER → CONVERTIR → TRANSMETTRE → AGIR.
    \item ACQUERIR → TRAITER → COMMUNIQUER.
\end{enumerate}

### Exercice 2 : Identifier la fonction d'un constituant
\begin{enonce}
Pour chacun des constituants suivants, indiquer la fonction de la chaîne d'énergie ou d'information qu'il assure (ALIMENTER, DISTRIBUER, CONVERTIR, TRANSMETTRE, AGIR, ACQUERIR, TRAITER, COMMUNIQUER) :
\begin{enumerate}
    \item un moteur électrique ;
    \item un capteur de fin de course ;
    \item un réducteur à engrenages ;
    \item un microcontrôleur ;
    \item un contacteur (relais de puissance) ;
    \item une batterie d'accumulateurs.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Moteur électrique : **CONVERTIR** (il transforme l'énergie électrique en énergie mécanique). C'est un **actionneur**.
    \item Capteur de fin de course : **ACQUERIR** (il prélève une information de position).
    \item Réducteur à engrenages : **TRANSMETTRE** (il adapte vitesse et effort). C'est un **transmetteur**.
    \item Microcontrôleur : **TRAITER** (il exploite les informations et décide). C'est l'**unité de traitement**.
    \item Contacteur : **DISTRIBUER** (il autorise ou interrompt le passage de l'énergie). C'est un **préactionneur**.
    \item Batterie : **ALIMENTER** (elle fournit l'énergie d'entrée). C'est une **source d'énergie**.
\end{enumerate}

### Exercice 3 : Analyse d'un portail coulissant automatique
\begin{enonce}
Un portail coulissant motorisé est alimenté par le réseau électrique 230 V. Quand l'utilisateur appuie sur sa télécommande, une carte électronique commande un moteur électrique qui entraîne, par l'intermédiaire d'un pignon engrené sur une crémaillère fixée au portail, le déplacement de celui-ci. Un capteur détecte que le portail est complètement ouvert pour arrêter le moteur.

Associer à chaque fonction le constituant correspondant et préciser, pour chacun, à quelle chaîne il appartient :
\begin{enumerate}
    \item ALIMENTER, DISTRIBUER, CONVERTIR, TRANSMETTRE, AGIR ;
    \item ACQUERIR, TRAITER, COMMUNIQUER.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Chaîne d'énergie :
        - ALIMENTER → le réseau électrique 230 V ;
        - DISTRIBUER → le préactionneur (relais) de la carte électronique qui laisse passer le courant vers le moteur ;
        - CONVERTIR → le moteur électrique (électrique → mécanique de rotation) ;
        - TRANSMETTRE → l'ensemble pignon-crémaillère, qui transforme la rotation en translation du portail ;
        - AGIR → le portail (l'effecteur) qui se déplace.
    \item Chaîne d'information :
        - ACQUERIR → la télécommande (consigne de l'utilisateur) et le capteur de fin de course (état réel) ;
        - TRAITER → la carte électronique (microcontrôleur) qui décide de démarrer ou d'arrêter ;
        - COMMUNIQUER → l'envoi de l'ordre au préactionneur (et, par exemple, le clignotant de signalisation).
\end{enumerate}

### Exercice 4 : Ordres et comptes rendus
\begin{enonce}
\textbf{}
On donne le schéma fonctionnel d'un système automatisé reliant la chaîne d'information et la chaîne d'énergie.
\begin{enumerate}
    \item Comment nomme-t-on l'information envoyée par la chaîne d'information vers la chaîne d'énergie ? Vers quelle fonction de la chaîne d'énergie est-elle principalement dirigée ?
    \item Comment nomme-t-on l'information renvoyée par la chaîne d'énergie vers la chaîne d'information ? Quel type de constituant la produit ?
    \item Expliquer pourquoi ces échanges sont indispensables au bon fonctionnement du système.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Ce sont les **ordres** : la chaîne d'information les envoie principalement vers la fonction **DISTRIBUER** (le préactionneur), pour déclencher ou interrompre le passage de l'énergie.
    \item Ce sont les **comptes rendus** : ce sont les informations prélevées par les **capteurs** sur l'état réel des actionneurs et de la matière d'œuvre.
    \item Sans **ordre**, la chaîne d'énergie ne s'activerait jamais au bon moment ; sans **compte rendu**, la chaîne d'information ne saurait pas si l'action a été réalisée et ne pourrait ni l'arrêter ni corriger un écart. Le dialogue ordres / comptes rendus permet un fonctionnement **piloté et contrôlé** (boucle de régulation).
\end{enumerate}

### Exercice 5 : Distinguer chaîne d'énergie et chaîne d'information
\begin{enonce}
Sur un sèche-mains électrique automatique, on relève les éléments suivants :
- une prise reliée au réseau 230 V ;
- un détecteur de présence infrarouge des mains ;
- une carte électronique de commande ;
- un relais de puissance ;
- un moteur entraînant une turbine ;
- une résistance chauffant l'air pulsé.

Classer chaque élément dans la chaîne d'énergie ou la chaîne d'information, puis préciser sa fonction.
\end{enonce}

\textbf{Solution :}
- Prise réseau 230 V → chaîne d'énergie, **ALIMENTER**.
- Détecteur de présence infrarouge → chaîne d'information, **ACQUERIR**.
- Carte électronique de commande → chaîne d'information, **TRAITER**.
- Relais de puissance → chaîne d'énergie, **DISTRIBUER**.
- Moteur + turbine → chaîne d'énergie, **CONVERTIR** (et la turbine/buse réalise **AGIR** en soufflant l'air).
- Résistance chauffante → chaîne d'énergie, **CONVERTIR** (électrique → thermique).

Le détecteur et la carte forment la chaîne d'information (elle décide de souffler quand les mains sont présentes) ; tout le reste appartient à la chaîne d'énergie (elle produit et applique l'action sur l'air, la matière d'œuvre).

### Exercice 6 : Frontières énergie / information sur un store
\begin{enonce}
Un store électrique se ferme automatiquement quand un anémomètre mesure un vent trop fort. La chaîne fonctionne ainsi : réseau 230 V → variateur → moteur → réducteur → enroulement de la toile, piloté par un microcontrôleur qui reçoit la mesure de l'anémomètre et l'ordre de l'utilisateur.
\begin{enumerate}
    \item Repérer la fonction ACQUERIR : quel constituant l'assure, et quelles informations prélève-t-il ?
    \item Le variateur appartient-il à la chaîne d'énergie ou d'information ? Quelle fonction assure-t-il ?
    \item Décrire le trajet complet d'un « ordre de fermeture » depuis sa décision jusqu'à l'action sur la toile, en nommant à chaque étape la fonction concernée.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item **ACQUERIR** est assurée par l'**anémomètre** (capteur de vent) et le **bouton** de l'utilisateur : ils prélèvent respectivement la vitesse du vent et la consigne, et les convertissent en signaux exploitables.
    \item Le variateur appartient à la **chaîne d'énergie** : il assure **DISTRIBUER** (préactionneur qui dose et autorise le passage de l'énergie vers le moteur).
    \item Trajet de l'ordre de fermeture :
        - le microcontrôleur compare la mesure au seuil et **décide** (TRAITER), puis émet l'ordre (COMMUNIQUER) ;
        - l'ordre arrive au variateur (DISTRIBUER), qui laisse passer l'énergie du réseau (ALIMENTER) ;
        - le moteur la transforme en rotation (CONVERTIR) ;
        - le réducteur adapte vitesse et effort (TRANSMETTRE) ;
        - la toile s'enroule (AGIR) ; un capteur de fin de course renvoie alors un **compte rendu** à ACQUERIR pour arrêter le moteur.
\end{enumerate}
