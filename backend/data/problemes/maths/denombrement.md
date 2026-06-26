### Problème 1 : Dénombrement des mains au poker
\begin{enonce}
Dans un jeu standard de 52 cartes (comprenant 4 couleurs de 13 cartes chacune), une main est formée de 5 cartes distribuées simultanément.
\begin{enumerate}
    \item Calculer le nombre total de mains de 5 cartes possibles.
    \item Déterminer le nombre de mains contenant les combinaisons suivantes :
    \begin{enumerate}
        \item \textbf{Une paire} : exactement deux cartes de même valeur, et trois autres cartes de valeurs distinctes entre elles et différentes de la paire.
        \item \textbf{Un brelan} : exactement trois cartes de même valeur, et deux autres de valeurs distinctes.
        \item \textbf{Une couleur} : cinq cartes de la même couleur (parmi Cœur, Carreau, Pique, Trèfle).
        \item \textbf{Un full} : trois cartes de même valeur (un brelan) et deux autres d'une autre même valeur (une paire).
        \item \textbf{Un carré} : quatre cartes de même valeur.
    \end{enumerate}
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Une main est une combinaison de 5 cartes parmi 52. Le nombre de mains possibles est :
    \[
    C_{52}^{5} = \frac{52 \times 51 \times 30 \times 29 \times 28}{5 \times 4 \times 3 \times 2 \times 1} \text{ (après simplification)} = 2\,598\,960
    \]
    
    \item Déterminons le nombre de mains pour chaque configuration :
    \begin{enumerate}
        \item \textbf{Une paire} :
        - On choisit la valeur de la paire parmi les 13 valeurs possibles : $C_{13}^{1} = 13$ choix.
        - On choisit les 2 cartes de cette valeur parmi les 4 enseignes possibles : $C_{4}^{2} = 6$ choix.
        - On choisit les 3 autres valeurs distinctes parmi les 12 valeurs restantes : $C_{12}^{3} = 220$ choix.
        - Pour chacune de ces 3 valeurs, on choisit une carte parmi les 4 enseignes possibles : $C_{4}^{1}^3 = 4^3 = 64$ choix.
        Par le principe multiplicatif, le nombre de mains est :
        \[
        N_{\text{paire}} = 13 \times 6 \times 220 \times 64 = 1\,098\,240
        \]
        
        \item \textbf{Un brelan} :
        - On choisit la valeur du brelan parmi les 13 valeurs : $C_{13}^{1} = 13$ choix.
        - On choisit les 3 cartes de cette valeur parmi les 4 enseignes : $C_{4}^{3} = 4$ choix.
        - On choisit les 2 autres valeurs distinctes parmi les 12 restantes : $C_{12}^{2} = 66$ choix.
        - Pour chacune de ces 2 valeurs, on choisit une carte parmi les 4 enseignes : $C_{4}^{1}^2 = 4^2 = 16$ choix.
        Le nombre de mains est :
        \[
        N_{\text{brelan}} = 13 \times 4 \times 66 \times 16 = 54\,912
        \]
        
        \item \textbf{Une couleur} :
        - On choisit l'une des 4 couleurs (Cœur, Carreau, Pique, Trèfle) : $C_{4}^{1} = 4$ choix.
        - On choisit les 5 cartes de cette couleur parmi les 13 cartes disponibles : $C_{13}^{5} = \frac{13 \times 12 \times 11 \times 10 \times 9}{5 \times 4 \times 3 \times 2 \times 1} = 1287$ choix.
        Le nombre de mains est :
        \[
        N_{\text{couleur}} = 4 \times 1287 = 5148
        \]
        
        \item \textbf{Un full} :
        - On choisit la valeur du brelan parmi les 13 valeurs : $C_{13}^{1} = 13$ choix.
        - On choisit 3 cartes de cette valeur parmi les 4 enseignes : $C_{4}^{3} = 4$ choix.
        - On choisit la valeur de la paire parmi les 12 valeurs restantes : $C_{12}^{1} = 12$ choix.
        - On choisit 2 cartes de cette valeur parmi les 4 enseignes : $C_{4}^{2} = 6$ choix.
        Le nombre de mains est :
        \[
        N_{\text{full}} = 13 \times 4 \times 12 \times 6 = 3744
        \]
        
        \item \textbf{Un carré} :
        - On choisit la valeur du carré parmi les 13 valeurs : $C_{13}^{1} = 13$ choix.
        - On prend les 4 cartes de cette valeur : $C_{4}^{4} = 1$ choix.
        - On choisit la 5-ème carte restante parmi les 48 cartes restantes de valeurs différentes : $C_{48}^{1} = 48$ choix.
        Le nombre de mains est :
        \[
        N_{\text{carré}} = 13 \times 1 \times 48 = 624
        \]
    \end{enumerate}
\end{enumerate}

### Problème 2 : Chemins sur un réseau quadrillé
\begin{enonce}
On considère un réseau quadrillé du plan. Un chemin minimal reliant le point $O(0,0)$ au point $M(a,b)$, où $a$ et $b$ sont des entiers naturels, est constitué d'une succession de pas unitaires : soit vers la droite (noté D, incrémentant l'abscisse de 1), soit vers le haut (noté H, incrémentant l'ordonnée de 1).
\begin{enumerate}
    \item Justifier qu'un tel chemin comporte exactement $a+b$ pas, dont $a$ pas vers la droite. En déduire que le nombre total de chemins possibles est $C_{a+b}^{a}$.
    \item On pose $a=5$ et $b=4$. Calculer le nombre de chemins reliant $(0,0)$ à $(5,4)$.
    \item On impose de passer par le point d'étape $A(2,2)$. Combien de chemins reliant $(0,0)$ à $(5,4)$ passent par $A$ ?
    \item Combien de chemins ne passent pas par $A$ ?
    \item Combien de chemins reliant $(0,0)$ à $(5,4)$ passent par le point $A(2,2)$ ou par le point $B(3,3)$ ?
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Pour se rendre de $O(0,0)$ à $M(a,b)$ par des déplacements minimaux, on doit nécessairement effectuer exactement $a$ pas vers la droite (pour atteindre l'abscisse $a$) et $b$ pas vers le haut (pour atteindre l'ordonnée $b$).
    Le nombre total de pas est donc $a+b$. Un chemin est entièrement caractérisé par l'emplacement des $a$ pas vers la droite parmi les $a+b$ pas totaux. Le nombre de façons de choisir ces emplacements est donné par la combinaison :
    \[
    C_{a+b}^{a}
    \]
    (qui est égal par symétrie à $C_{a+b}^{b}$, c'est-à-dire le choix des pas vers le haut).
    
    \item Pour $a=5$ et $b=4$, le nombre de chemins possibles est :
    \[
    C_{5+4}^{5} = C_{9}^{5} = \frac{9 \times 8 \times 7 \times 6 \times 5}{5 \times 4 \times 3 \times 2 \times 1} = 126
    \]
    
    \item Un chemin passant par $A(2,2)$ est composé :
    - d'un chemin de $O(0,0)$ à $A(2,2)$ : ici $a_1=2$ et $b_1=2$, ce qui donne $C_{2+2}^{2} = C_{4}^{2} = 6$ chemins.
    - d'un chemin de $A(2,2)$ à $M(5,4)$ : le déplacement requis est de $5-2=3$ pas vers la droite et $4-2=2$ pas vers le haut. Il y a donc $C_{3+2}^{3} = C_{5}^{3} = 10$ chemins.
    
    Par le principe multiplicatif, le nombre de chemins de $O$ à $M$ passant par $A$ est :
    \[
    N_A = C_{4}^{2} \times C_{5}^{3} = 6 \times 10 = 60
    \]
    
    \item Le nombre de chemins ne passant pas par $A$ est le complémentaire du nombre de chemins passant par $A$ :
    \[
    N_{\bar{A}} = \text{Total} - N_A = 126 - 60 = 66
    \]
    
    \item Soit $\mathcal{C}_A$ l'ensemble des chemins passant par $A$ et $\mathcal{C}_B$ l'ensemble des chemins passant par $B$. On cherche $\text{Card}(\mathcal{C}_A \cup \mathcal{C}_B)$.
    D'après le principe additif :
    \[
    \text{Card}(\mathcal{C}_A \cup \mathcal{C}_B) = \text{Card}(\mathcal{C}_A) + \text{Card}(\mathcal{C}_B) - \text{Card}(\mathcal{C}_A \cap \mathcal{C}_B)
    \]
    - On a déjà $\text{Card}(\mathcal{C}_A) = 60$.
    - Calculons $\text{Card}(\mathcal{C}_B)$ :
      * Chemin de $O(0,0)$ à $B(3,3)$ : $C_{3+3}^{3} = C_{6}^{3} = 20$.
      * Chemin de $B(3,3)$ à $M(5,4)$ : déplacement de $5-3=2$ vers la droite et $4-3=1$ vers le haut, soit $C_{2+1}^{2} = C_{3}^{2} = 3$.
      * D'où $\text{Card}(\mathcal{C}_B) = 20 \times 3 = 60$.
    - Calculons $\text{Card}(\mathcal{C}_A \cap \mathcal{C}_B)$, c'est-à-dire les chemins passant par $A$ ET par $B$. Comme $A(2,2)$ est situé avant $B(3,3)$ ($2 \le 3$ en abscisse et ordonnée), un tel chemin va de $O$ à $A$, puis de $A$ à $B$, puis de $B$ à $M$ :
      * De $O(0,0)$ à $A(2,2)$ : $C_{4}^{2} = 6$ chemins.
      * De $A(2,2)$ à $B(3,3)$ : déplacement de $3-2=1$ vers la droite et $3-2=1$ vers le haut, soit $C_{1+1}^{1} = C_{2}^{1} = 2$ chemins.
      * De $B(3,3)$ à $M(5,4)$ : $C_{3}^{2} = 3$ chemins.
      * Ainsi, $\text{Card}(\mathcal{C}_A \cap \mathcal{C}_B) = 6 \times 2 \times 3 = 36$.
      
    On en déduit :
    \[
    \text{Card}(\mathcal{C}_A \cup \mathcal{C}_B) = 60 + 60 - 36 = 84
    \]
    Il y a 84 chemins qui passent par $A$ ou par $B$.
\end{enumerate}

### Problème 3 : Identités binomiales combinatoires et algébriques
\begin{enonce}
Soit $n$ un entier naturel non nul. Le but de ce problème est d'étudier la somme :
\[
S_n = \sum_{k=1}^n k C_{n}^{k}
\]
\begin{enumerate}
    \item Calculer $S_1$, $S_2$ et $S_3$. Conjecturer une formule simplifiée pour $S_n$.
    \item \textbf{Méthode algébrique} : En utilisant la relation d'égalité de l'exercice 3 ($k C_{n}^{k} = n C_{n-1}^{k-1}$), démontrer la conjecture.
    \item \textbf{Méthode combinatoire} : On considère un groupe de $n$ personnes. On souhaite former un comité de taille quelconque (contenant au moins une personne) et choisir un président au sein de ce comité.
    \begin{enumerate}
        \item En dénombrant selon la taille $k$ du comité choisi, montrer que le nombre total de choix possibles est égal à $S_n$.
        \item En choisissant d'abord le président, puis le reste du comité parmi les personnes restantes, déterminer à nouveau le nombre total de choix possibles.
        \item Conclure.
    \end{enumerate}
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Calculons les premières valeurs :
    - Pour $n=1$ : $S_1 = 1 C_{1}^{1} = 1 \times 1 = 1$.
    - Pour $n=2$ : $S_2 = 1 C_{2}^{1} + 2 C_{2}^{2} = 1 \times 2 + 2 \times 1 = 4$.
    - Pour $n=3$ : $S_3 = 1 C_{3}^{1} + 2 C_{3}^{2} + 3 C_{3}^{3} = 1 \times 3 + 2 \times 3 + 3 \times 1 = 12$.
    
    On remarque que :
    - $S_1 = 1 = 1 \times 2^0$
    - $S_2 = 4 = 2 \times 2^1$
    - $S_3 = 12 = 3 \times 2^2$
    
    On conjecture ainsi la formule générale :
    \[
    S_n = n 2^{n-1}
    \]
    
    \item D'après la relation $k C_{n}^{k} = n C_{n-1}^{k-1}$, on a :
    \[
    S_n = \sum_{k=1}^n k C_{n}^{k} = \sum_{k=1}^n n C_{n-1}^{k-1} = n \sum_{k=1}^n C_{n-1}^{k-1}
    \]
    Effectuons le changement d'indice $j = k-1$. Quand $k$ varie de $1$ à $n$, l'indice $j$ varie de $0$ à $n-1$ :
    \[
    S_n = n \sum_{j=0}^{n-1} C_{n-1}^{j}
    \]
    Or, d'après l'exercice 9, la somme des coefficients binomiaux d'ordre $n-1$ vaut $\sum_{j=0}^{n-1} C_{n-1}^{j} = 2^{n-1}$.
    On en déduit immédiatement :
    \[
    S_n = n 2^{n-1}
    \]
    
    \item Utilisons le raisonnement par double dénombrement :
    \begin{enumerate}
        \item Pour former un comité avec un président, on peut d'abord choisir un comité de $k$ personnes parmi les $n$ ($C_{n}^{k}$ choix), puis désigner un président parmi les $k$ membres élus ($k$ choix). Le nombre de choix pour un comité de taille $k$ est $kC_{n}^{k}$.
        Comme la taille $k$ du comité peut être n'importe quelle valeur de $1$ à $n$, le nombre total de choix possibles est :
        \[
        \sum_{k=1}^n k C_{n}^{k} = S_n
        \]
        
        \item On peut procéder autrement :
        - On choisit d'abord le président du comité parmi les $n$ personnes du groupe ($n$ choix).
        - Ensuite, pour chacune des $n-1$ personnes restantes, on décide si elle fait partie ou non du reste du comité (2 possibilités par personne : soit elle y est, soit elle n'y est pas). Cela correspond à former un sous-ensemble quelconque de l'ensemble des $n-1$ personnes restantes. Le nombre de choix est donc $2^{n-1}$.
        Par le principe multiplicatif, le nombre total de choix possibles est :
        \[
        n \times 2^{n-1}
        \]
        
        \item Les deux méthodes dénombrant le même ensemble de configurations, on en déduit l'égalité :
        \[
        S_n = n 2^{n-1}
        \]
    \end{enumerate}
\end{enumerate}

### Problème 4 : Distribution d'objets dans des boîtes (Partitions et Étoiles et barres)
\begin{enonce}
On souhaite étudier la distribution de $n$ objets dans $k$ boîtes distinctes (numérotées de 1 à $k$).
\begin{enumerate}
    \item On suppose d'abord que les $n$ objets sont **distincts** (par exemple, des lettres différentes à poster).
    Justifier que le nombre total de répartitions possibles est $k^n$.
    
    \item On suppose désormais que les $n$ objets sont **identiques** (par exemple, des bonbons identiques). On cherche à déterminer le nombre de répartitions.
    \begin{enumerate}
        \item Dans le cas $n=4$ et $k=3$, on note $(x_1, x_2, x_3)$ la répartition où $x_i$ est le nombre d'objets dans la boîte $i$ ($x_i \in \N$ et $x_1+x_2+x_3=4$).
        Lister toutes les répartitions possibles (les triplets) et en donner le nombre.
        
        \item De façon générale, on représente une répartition en plaçant les $n$ objets sous la forme de ronds $\bullet$ séparés par $k-1$ barres verticales $|$ qui délimitent les $k$ boîtes.
        Par exemple, pour $n=4, k=3$, la répartition $(2, 0, 2)$ est représentée par :
        \[
        \bullet \bullet \mid \mid \bullet \bullet
        \]
        Justifier que le nombre total de symboles (ronds et barres) dans cette représentation est $n+k-1$.
        
        \item Expliquer pourquoi dénombrer les répartitions possibles revient à choisir les positions des $n$ ronds parmi les $n+k-1$ emplacements possibles. En déduire que le nombre de répartitions est égal à :
        \[
        C_{n+k-1}^{n}
        \]
        
        \item Calculer le nombre de façons de distribuer 10 bonbons identiques à 3 enfants.
    \end{enumerate}
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Pour distribuer $n$ objets distincts dans $k$ boîtes distinctes, chaque objet peut être placé dans n'importe laquelle des $k$ boîtes. Il y a donc $k$ choix pour le premier objet, $k$ choix pour le second, ..., et $k$ choix pour le $n$-ième.
    Par le principe multiplicatif, le nombre de répartitions possibles est :
    \[
    \underbrace{k \times k \times \dots \times k}_{n \text{ fois}} = k^n
    \]
    
    \item Distribution d'objets identiques :
    \begin{enumerate}
        \item Les répartitions possibles pour $n=4$ objets dans $k=3$ boîtes sont les triplets d'entiers naturels $(x_1, x_2, x_3)$ vérifiant $x_1+x_2+x_3=4$ :
        - Les permutations de $(4,0,0)$ : $(4,0,0)$, $(0,4,0)$, $(0,0,4)$ (3 triplets) ;
        - Les permutations de $(3,1,0)$ : $(3,1,0)$, $(3,0,1)$, $(1,3,0)$, $(1,0,3)$, $(0,3,1)$, $(0,1,3)$ (6 triplets) ;
        - Les permutations de $(2,2,0)$ : $(2,2,0)$, $(2,0,2)$, $(0,2,2)$ (3 triplets) ;
        - Les permutations de $(2,1,1)$ : $(2,1,1)$, $(1,2,1)$, $(1,1,2)$ (3 triplets).
        Le nombre total de répartitions possibles est de $3 + 6 + 3 + 3 = 15$.
        
        \item Pour délimiter $k$ boîtes distinctes, il suffit d'utiliser $k-1$ séparateurs (les barres $|$). La répartition est modélisée par une suite contenant $n$ symboles $\bullet$ (pour les objets) et $k-1$ symboles $\mid$ (pour les séparateurs).
        Le nombre total de symboles est donc la somme :
        \[
        n + (k-1) = n+k-1
        \]
        
        \item Dégager une configuration unique de répartition revient à spécifier où se trouvent les $n$ symboles $\bullet$ parmi les $n+k-1$ emplacements de la suite (les emplacements non choisis contenant nécessairement des barres $\mid$).
        Le nombre de choix est donné par le nombre de combinaisons de $n$ éléments parmi $n+k-1$, soit :
        \[
        C_{n+k-1}^{n}
        \]
        Pour $n=4, k=3$, cela donne $C_{4+3-1}^{4} = C_{6}^{4} = C_{6}^{2} = 15$, ce qui corrobore le résultat de la question (a).
        
        \item Distribuer 10 bonbons identiques ($n=10$) à 3 enfants ($k=3$, assimilés à 3 boîtes distinctes) correspond au nombre de répartitions :
        \[
        C_{10+3-1}^{10} = C_{12}^{10} = C_{12}^{2} = \frac{12 \times 11}{2 \times 1} = 66
        \]
        Il y a 66 répartitions possibles.
    \end{enumerate}
\end{enumerate}

### Problème 5 : Le problème des dérangements (du vestiaire)
\begin{enonce}
Quatre personnes déposent leur chapeau au vestiaire d'un restaurant. En repartant, le responsable leur remet au hasard un chapeau parmi les quatre.
On s'intéresse au nombre de façons de distribuer les quatre chapeaux de telle sorte que **personne** ne reçoive son propre chapeau. Une telle configuration s'appelle un dérangement de l'ensemble $\{1, 2, 3, 4\}$.
\begin{enumerate}
    \item Justifier que le nombre total de façons de distribuer les 4 chapeaux aux 4 personnes est $4!$.
    \item Pour tout entier $i \in \{1, 2, 3, 4\}$, on note $A_i$ l'ensemble des distributions dans lesquelles la personne $i$ récupère son propre chapeau.
    \begin{enumerate}
        \item Déterminer $\text{Card}(A_1)$.
        \item Déterminer $\text{Card}(A_1 \cap A_2)$.
        \item De manière générale, pour $k$ personnes fixées ($1 \le k \le 4$), quel est le cardinal de l'intersection de leurs ensembles $A_i$ correspondants ?
    \end{enumerate}
    \item On souhaite utiliser le principe d'inclusion-exclusion pour calculer le nombre de distributions dans lesquelles au moins une personne récupère son chapeau, soit $\text{Card}(A_1 \cup A_2 \cup A_3 \cup A_4)$. La formule pour 4 ensembles est :
    \[
    \begin{aligned}
    \text{Card}(A_1 \cup A_2 \cup A_3 \cup A_4) &= \sum_{i=1}^4 \text{Card}(A_i) - \sum_{1 \le i < j \le 4} \text{Card}(A_i \cap A_j) \\
    &\quad + \sum_{1 \le i < j < k \le 4} \text{Card}(A_i \cap A_j \cap A_k) - \text{Card}(A_1 \cap A_2 \cap A_3 \cap A_4)
    \end{aligned}
    \]
    \begin{enumerate}
        \item Calculer le nombre de termes dans la deuxième somme et dans la troisième somme.
        \item Calculer la valeur numérique de chacun des termes de la formule et montrer que :
        \[
        \text{Card}(A_1 \cup A_2 \cup A_3 \cup A_4) = 15
        \]
    \end{enumerate}
    \item En déduire le nombre de dérangements possibles pour $n=4$ personnes.
    \item \textbf{Généralisation} : On admet que pour $n$ personnes, le nombre de dérangements est donné par la formule :
    \[
    D_n = n! \sum_{k=0}^n \frac{(-1)^k}{k!}
    \]
    Vérifier que la formule donne bien la même valeur pour $n=4$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Distribuer 4 chapeaux distincts à 4 personnes distinctes correspond à ordonner les chapeaux, ce qui équivaut à une permutation des 4 éléments. Le nombre total de distributions est :
    \[
    4! = 24
    \]
    
    \item Calculons les cardinaux :
    \begin{enumerate}
        \item Dans $A_1$, la personne 1 reçoit son chapeau 1. Il reste à distribuer les 3 autres chapeaux aux 3 autres personnes de manière quelconque. Il y a donc $3! = 6$ façons.
        D'où $\text{Card}(A_1) = 6$. (Par symétrie, c'est aussi le cas pour $A_2, A_3, A_4$).
        
        \item Dans $A_1 \cap A_2$, la personne 1 reçoit son chapeau 1 et la personne 2 reçoit son chapeau 2. Il reste à distribuer les 2 chapeaux restants aux 2 personnes restantes.
        Il y a $2! = 2$ façons. D'où $\text{Card}(A_1 \cap A_2) = 2$.
        
        \item De manière générale, si $k$ personnes reçoivent leur propre chapeau, les positions de ces $k$ chapeaux sont fixées. Il reste alors à distribuer librement les $4-k$ chapeaux restants aux $4-k$ personnes restantes.
        Le nombre de distributions correspondantes est donc :
        \[
        (4-k)!
        \]
    \end{enumerate}
    
    \item Calculons la réunion par le principe d'inclusion-exclusion :
    \begin{enumerate}
        \item - Le nombre de termes dans la première somme est $C_{4}^{1} = 4$.
        - La deuxième somme porte sur les couples d'indices distincts $\{i, j\}$ tels que $1 \le i < j \le 4$. Le nombre de termes est le nombre de choix de 2 indices parmi 4, soit :
        \[
        C_{4}^{2} = 6
        \]
        - La troisième somme porte sur les triplets d'indices distincts $\{i, j, k\}$ tels que $1 \le i < j < k \le 4$. Le nombre de termes est :
        \[
        C_{4}^{3} = 4
        \]
        
        \item Évaluons chaque somme :
        - $\sum_{i=1}^4 \text{Card}(A_i) = C_{4}^{1} \times 3! = 4 \times 6 = 24$.
        - $\sum_{1 \le i < j \le 4} \text{Card}(A_i \cap A_j) = C_{4}^{2} \times 2! = 6 \times 2 = 12$.
        - $\sum_{1 \le i < j < k \le 4} \text{Card}(A_i \cap A_j \cap A_k) = C_{4}^{3} \times 1! = 4 \times 1 = 4$.
        - $\text{Card}(A_1 \cap A_2 \cap A_3 \cap A_4) = C_{4}^{4} \times 0! = 1 \times 1 = 1$.
        
        En injectant ces valeurs dans la formule :
        \[
        \text{Card}(A_1 \cup A_2 \cup A_3 \cup A_4) = 24 - 12 + 4 - 1 = 15
        \]
    \end{enumerate}
    
    \item Un dérangement est une distribution où personne ne reçoit son propre chapeau. C'est l'ensemble complémentaire de l'événement « au moins une personne reçoit son propre chapeau ».
    Le nombre de dérangements est donc :
    \[
    D_4 = \text{Total} - \text{Card}(A_1 \cup A_2 \cup A_3 \cup A_4) = 24 - 15 = 9
    \]
    Il y a 9 dérangements possibles.
    
    \item Pour $n=4$, la formule donne :
    \[
    \begin{aligned}
    D_4 &= 4! \sum_{k=0}^4 \frac{(-1)^k}{k!} \\
    &= 24 \left( \frac{(-1)^0}{0!} + \frac{(-1)^1}{1!} + \frac{(-1)^2}{2!} + \frac{(-1)^3}{3!} + \frac{(-1)^4}{4!} \right) \\
    &= 24 \left( 1 - 1 + \frac{1}{2} - \frac{1}{6} + \frac{1}{24} \right) \\
    &= 24 \left( \frac{12 - 4 + 1}{24} \right) = 9
    \end{aligned}
    \]
    La formule donne bien 9, ce qui confirme son exactitude.
\end{enumerate}
