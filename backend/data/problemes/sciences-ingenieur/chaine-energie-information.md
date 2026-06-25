### Problème 1 : Étude d'un distributeur automatique de boissons
\begin{enonce}
Un distributeur automatique de gobelets de boisson chaude fonctionne ainsi : l'utilisateur insère une pièce et choisit une boisson sur un clavier ; une carte électronique vérifie le paiement, puis commande la libération d'un gobelet, l'ouverture d'une électrovanne d'eau, la mise en route d'une résistance chauffante et la rotation d'un doseur de poudre. Un capteur de niveau détecte que le gobelet est rempli pour arrêter le remplissage, et un afficheur indique l'état de la commande. L'appareil est branché sur le réseau 230 V.
\begin{enumerate}
    \item Quelle est la matière d'œuvre du système ? Donner son état initial et son état final.
    \item Établir le tableau des fonctions de la chaîne d'énergie en associant à chacune (ALIMENTER, DISTRIBUER, CONVERTIR, TRANSMETTRE, AGIR) un constituant du distributeur.
    \item Identifier les trois fonctions de la chaîne d'information et les constituants associés.
    \item L'électrovanne d'eau est-elle un préactionneur ou un actionneur ? Justifier.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item La matière d'œuvre est la **boisson** (gobelet + eau + poudre). État initial : ingrédients séparés et non chauffés ; état final : boisson chaude prête à consommer. La valeur ajoutée est la préparation de la boisson.
    \item Chaîne d'énergie :
        - ALIMENTER → le réseau électrique 230 V ;
        - DISTRIBUER → l'électrovanne d'eau et les relais qui autorisent le passage de l'énergie vers la résistance et le moteur du doseur ;
        - CONVERTIR → la résistance chauffante (électrique → thermique) et le moteur du doseur (électrique → mécanique) ;
        - TRANSMETTRE → la liaison mécanique entraînant la vis du doseur de poudre ;
        - AGIR → le versement de l'eau chaude et de la poudre dans le gobelet.
    \item Chaîne d'information :
        - ACQUERIR → le monnayeur, le clavier de choix et le capteur de niveau ;
        - TRAITER → la carte électronique qui vérifie le paiement et décide des actions ;
        - COMMUNIQUER → l'afficheur d'état et l'envoi des ordres aux préactionneurs.
    \item L'électrovanne est un **préactionneur** : elle ne transforme pas l'énergie en action sur la matière d'œuvre, elle se contente d'**autoriser ou d'interrompre** le passage de l'eau (fonction DISTRIBUER). C'est l'écoulement de l'eau lui-même qui réalise l'action.
\end{enumerate}

### Problème 2 : Schéma fonctionnel et boucle ordres / comptes rendus
\begin{enonce}
\textbf{}
On donne le schéma fonctionnel d'un système automatisé, faisant apparaître la chaîne d'information, la chaîne d'énergie et les échanges entre elles, ainsi que le passage de la matière d'œuvre.
\begin{enumerate}
    \item Reproduire la suite ordonnée des blocs de la chaîne d'énergie, puis de la chaîne d'information.
    \item Sur le schéma, deux flèches relient les deux chaînes. Nommer chacune de ces deux informations et préciser son sens (de quelle chaîne vers quelle chaîne).
    \item La flèche « ordres » aboutit principalement à une fonction de la chaîne d'énergie : laquelle, et pourquoi ?
    \item On supprime le capteur qui produit le compte rendu. Décrire concrètement le dysfonctionnement qui en résulte sur l'exemple d'un portail qui doit s'arrêter en fin d'ouverture.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Chaîne d'énergie : ALIMENTER → DISTRIBUER → CONVERTIR → TRANSMETTRE → AGIR. Chaîne d'information : ACQUERIR → TRAITER → COMMUNIQUER.
    \item Les deux échanges sont :
        - les **ordres** : de la chaîne d'information vers la chaîne d'énergie ;
        - les **comptes rendus** : de la chaîne d'énergie vers la chaîne d'information.
    \item Les ordres aboutissent à la fonction **DISTRIBUER** (le préactionneur) : c'est elle qui autorise ou interrompt le passage de l'énergie vers l'actionneur. Commander DISTRIBUER suffit donc à déclencher ou arrêter l'action, sans agir directement sur la source d'énergie.
    \item Sans compte rendu de fin d'ouverture, la chaîne d'information **ne sait pas** que le portail est arrivé en butée : elle continue d'envoyer l'ordre d'ouverture. Le moteur force contre la butée, ce qui peut provoquer un échauffement, une usure ou une casse mécanique. Le système n'est plus **contrôlé** : la boucle ordres / comptes rendus est rompue.
\end{enumerate}

### Problème 3 : Comparaison de deux systèmes
\begin{enonce}
On compare deux objets techniques : un **tournevis manuel** et une **visseuse électrique automatique** qui s'arrête seule quand le couple de serrage est atteint.
\begin{enumerate}
    \item Le tournevis manuel est-il un système automatisé ? Justifier à l'aide de la définition.
    \item Pour la visseuse électrique, identifier les fonctions de la chaîne d'énergie et les constituants associés.
    \item La visseuse comporte un capteur de couple. À quelle fonction appartient-il, et à quoi sert le compte rendu qu'il fournit ?
    \item Expliquer en quoi la présence d'une chaîne d'information distingue fondamentalement la visseuse automatique du tournevis manuel.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item **Non** : un système automatisé réalise sa tâche **sans intervention permanente** d'un opérateur. Le tournevis manuel n'agit que tant que la main de l'utilisateur lui fournit l'énergie et le mouvement : l'intervention humaine est permanente. Il ne possède ni source d'énergie propre, ni chaîne d'information.
    \item Chaîne d'énergie de la visseuse :
        - ALIMENTER → la batterie ;
        - DISTRIBUER → l'électronique de puissance (variateur) qui dose le courant vers le moteur ;
        - CONVERTIR → le moteur électrique (électrique → mécanique de rotation) ;
        - TRANSMETTRE → le réducteur (engrenages) qui adapte vitesse et couple ;
        - AGIR → la mèche (embout) qui visse la vis.
    \item Le capteur de couple assure **ACQUERIR** (il prélève la grandeur « couple de serrage »). Le **compte rendu** qu'il fournit permet à la chaîne d'information de comparer le couple mesuré au couple de consigne et de **commander l'arrêt** du moteur dès le seuil atteint.
    \item Le tournevis n'a **que** l'équivalent d'une chaîne d'énergie, entièrement pilotée par l'humain. La visseuse automatique possède en plus une **chaîne d'information** (capteur de couple → unité de traitement → ordre d'arrêt) : c'est elle qui prend la décision d'arrêter, sans intervention humaine. C'est précisément ce dialogue ordres / comptes rendus qui rend le système **automatisé**.
\end{enumerate}
