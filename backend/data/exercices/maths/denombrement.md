### Exercice 1 : Codes d'accès et listes
\begin{enonce}
Un code d'accès de sécurité à un bâtiment est composé de 2 lettres distinctes de l'alphabet français (parmi 26) suivies de 4 chiffres distincts ou non (de 0 à 9).
\begin{enumerate}
    \item Combien de codes différents peut-on former au total ?
    \item Combien de ces codes commencent par la lettre A et se terminent par un chiffre impair ?
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Le choix des 2 lettres distinctes ordonnées correspond à un arrangement de 2 éléments parmi 26, soit :
    \[
    A_{26}^2 = 26 \times 25 = 650
    \]
    Le choix des 4 chiffres correspond à une liste de longueur 4 d'éléments choisis parmi les 10 chiffres possibles (de 0 à 9), soit :
    \[
    10^4 = 10\,000
    \]
    Par le principe multiplicatif, le nombre total de codes possibles est :
    \[
    N = A_{26}^2 \times 10^4 = 650 \times 10\,000 = 6\,500\,000
    \]
    
    \item Si le code commence par la lettre A, il n'y a qu'une seule possibilité pour la première lettre. La deuxième lettre doit être choisie parmi les 25 lettres restantes. Le choix des lettres offre donc $1 \times 25 = 25$ possibilités.
    
    Pour les chiffres :
    - Les 3 premiers chiffres peuvent être quelconques (de 0 à 9), ce qui donne $10^3 = 1000$ possibilités.
    - Le dernier chiffre doit être impair (1, 3, 5, 7 ou 9), ce qui offre 5 possibilités.
    
    Par le principe multiplicatif, le nombre de ces codes est :
    \[
    N' = 25 \times 10^3 \times 5 = 125\,000
    \]
\end{enumerate}

### Exercice 2 : Ordre et permutations
\begin{enonce}
Lors d'une finale de course de 100 mètres, 8 athlètes participent. On suppose qu'il n'y a pas d'ex-æquo à l'arrivée.
\begin{enumerate}
    \item Combien de podiums différents (les 3 premières places : Or, Argent, Bronze) sont possibles ?
    \item De combien de façons différentes les 8 athlètes peuvent-ils franchir la ligne d'arrivée ?
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Un podium correspond à un choix ordonné de 3 athlètes distincts parmi les 8 participants. Il s'agit d'un arrangement de 3 éléments parmi 8, soit :
    \[
    A_8^3 = 8 \times 7 \times 6 = 336 \text{ podiums possibles}
    \]
    
    \item L'ordre de franchissement de la ligne d'arrivée pour les 8 athlètes est une permutation de l'ensemble des 8 athlètes. Le nombre de façons différentes est donc :
    \[
    8! = 8 \times 7 \times 6 \times 5 \times 4 \times 3 \times 2 \times 1 = 40\,320 \text{ ordres possibles}
    \]
\end{enumerate}

### Exercice 3 : Calculs de coefficients binomiaux et propriétés
\begin{enonce}
\begin{enumerate}
    \item Calculer sans calculatrice $\binom{10}{3}$ et $\binom{12}{10}$.
    \item Démontrer que pour tous entiers $n$ et $k$ tels que $1 \le k \le n$, on a la relation :
    \[
    k \binom{n}{k} = n \binom{n-1}{k-1}
    \]
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item En appliquant la définition des coefficients binomiaux :
    \[
    \binom{10}{3} = \frac{10 \times 9 \times 8}{3 \times 2 \times 1} = \frac{720}{6} = 120
    \]
    Par la relation de symétrie, $\binom{12}{10} = \binom{12}{12-10} = \binom{12}{2}$ :
    \[
    \binom{12}{10} = \binom{12}{2} = \frac{12 \times 11}{2 \times 1} = 6 \times 11 = 66
    \]
    
    \item Exprimons le membre de gauche à l'aide des factorielles :
    \[
    k \binom{n}{k} = k \times \frac{n!}{k!(n-k)!}
    \]
    Comme $k! = k \times (k-1)!$, on peut simplifier par $k$ (puisque $k \ge 1$) :
    \[
    k \binom{n}{k} = \frac{n!}{(k-1)!(n-k)!}
    \]
    Exprimons maintenant le membre de droite :
    \[
    n \binom{n-1}{k-1} = n \times \frac{(n-1)!}{(k-1)!((n-1)-(k-1))!} = \frac{n \times (n-1)!}{(k-1)!(n-k)!} = \frac{n!}{(k-1)!(n-k)!}
    \]
    On constate que les deux expressions sont identiques, ce qui prouve l'égalité.
\end{enumerate}

### Exercice 4 : Comité sous contraintes
\begin{enonce}
Un club de sport compte 15 membres, composé de 9 hommes et 6 femmes. On souhaite élire un bureau de 4 personnes de rôles identiques.
\begin{enumerate}
    \item Combien de bureaux différents peut-on former ?
    \item Combien de bureaux comportent exactement 2 hommes et 2 femmes ?
    \item Combien de bureaux comportent au moins une femme ?
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item L'ordre des membres n'ayant pas d'importance, un bureau de 4 personnes choisi parmi les 15 membres est une combinaison de 4 éléments parmi 15. Le nombre de bureaux est :
    \[
    \binom{15}{4} = \frac{15 \times 14 \times 13 \times 12}{4 \times 3 \times 2 \times 1} = 1365
    \]
    
    \item Pour élire un bureau composé de 2 hommes et 2 femmes, on choisit simultanément 2 hommes parmi les 9 hommes et 2 femmes parmi les 6 femmes. Le nombre de façons est :
    \[
    \binom{9}{2} \times \binom{6}{2} = \frac{9 \times 8}{2} \times \frac{6 \times 5}{2} = 36 \times 15 = 540
    \]
    
    \item Calculons par le complémentaire. Les bureaux ne contenant aucune femme sont composés uniquement d'hommes. Le nombre de tels bureaux est le choix de 4 hommes parmi les 9 disponibles :
    \[
    \binom{9}{4} = \frac{9 \times 8 \times 7 \times 6}{4 \times 3 \times 2 \times 1} = 126
    \]
    Le nombre de bureaux contenant au moins une femme est donc :
    \[
    \text{Nombre total} - \text{Nombre de bureaux sans femme} = 1365 - 126 = 1239
    \]
\end{enumerate}

### Exercice 5 : Résolution d'équations avec coefficients binomiaux
\begin{enonce}
Résoudre dans $\N$ les équations suivantes :
\begin{enumerate}
    \item $\binom{n}{2} = 45$ (avec $n \ge 2$)
    \item $\binom{n}{1} + \binom{n}{2} = 2n$ (avec $n \ge 2$)
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Pour $n \ge 2$, l'équation s'écrit :
    \[
    \frac{n(n-1)}{2} = 45 \iff n^2 - n = 90 \iff n^2 - n - 90 = 0
    \]
    C'est une équation du second degré. Calculons le discriminant :
    \[
    \Delta = (-1)^2 - 4 \times 1 \times (-90) = 1 + 360 = 361 = 19^2
    \]
    Les racines sont :
    \[
    n_1 = \frac{1 - 19}{2} = -9 \quad \text{et} \quad n_2 = \frac{1 + 19}{2} = 10
    \]
    Comme $n \in \N$, la seule solution possible est $n=10$.
    
    \item Pour $n \ge 2$, on a $\binom{n}{1} = n$ et $\binom{n}{2} = \frac{n(n-1)}{2}$. L'équation devient :
    \[
    n + \frac{n(n-1)}{2} = 2n \iff \frac{n(n-1)}{2} = n
    \]
    Comme $n \ge 2$, $n$ est non nul. On peut diviser les deux membres par $n$ :
    \[
    \frac{n-1}{2} = 1 \iff n-1 = 2 \iff n = 3
    \]
    L'unique solution est $n=3$.
\end{enumerate}

### Exercice 6 : Dénombrement dans un jeu de cartes
\begin{enonce}
On tire simultanément 5 cartes d'un jeu de 32 cartes (qui comprend 4 couleurs : Cœur, Carreau, Pique, Trèfle, avec 8 cartes par couleur).
\begin{enumerate}
    \item Combien de tirages différents (mains) y a-t-il au total ?
    \item Combien de mains contiennent uniquement des cartes de Cœur ?
    \item Combien de mains contiennent exactement 3 Piques et 2 Trèfles ?
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Un tirage simultané de 5 cartes correspond à une combinaison de 5 cartes parmi les 32 cartes du jeu. Le nombre de tirages est :
    \[
    \binom{32}{5} = \frac{32 \times 31 \times 30 \times 29 \times 28}{5 \times 4 \times 3 \times 2 \times 1} = 201\,376
    \]
    
    \item Une main contenant uniquement des Cœurs est obtenue en choisissant 5 cartes parmi les 8 cartes de Cœur disponibles :
    \[
    \binom{8}{5} = \binom{8}{3} = \frac{8 \times 7 \times 6}{3 \times 2 \times 1} = 56
    \]
    
    \item Pour obtenir exactement 3 Piques et 2 Trèfles, on choisit simultanément 3 Piques parmi les 8 Piques possibles et 2 Trèfles parmi les 8 Trèfles possibles. Le nombre de mains est :
    \[
    \binom{8}{3} \times \binom{8}{2} = 56 \times \frac{8 \times 7}{2} = 56 \times 28 = 1568
    \]
\end{enumerate}

### Exercice 7 : Démonstration de la formule de Pascal
\begin{enonce}
Démontrer par le calcul la formule de Pascal :
\[
\binom{n}{p} + \binom{n}{p+1} = \binom{n+1}{p+1}
\]
pour tout $n \in \N$ et $p \in \N$ tel que $0 \le p \le n-1$.
\end{enonce}

\textbf{Solution :}
Exprimons la somme du membre de gauche à l'aide des factorielles :
\[
\binom{n}{p} + \binom{n}{p+1} = \frac{n!}{p!(n-p)!} + \frac{n!}{(p+1)!(n-p-1)!}
\]
Mettons ces deux fractions au même dénominateur. On remarque que :
- $(p+1)! = (p+1) \times p!$
- $(n-p)! = (n-p) \times (n-p-1)!$
Le dénominateur commun est donc $(p+1)!(n-p)!$. Multiplions la première fraction par $\frac{p+1}{p+1}$ et la deuxième par $\frac{n-p}{n-p}$ :
\[
\begin{aligned}
\binom{n}{p} + \binom{n}{p+1} &= \frac{n!(p+1)}{(p+1)p!(n-p)!} + \frac{n!(n-p)}{(p+1)!(n-p)(n-p-1)!} \\
&= \frac{n!(p+1)}{(p+1)!(n-p)!} + \frac{n!(n-p)}{(p+1)!(n-p)!} \\
&= \frac{n!\big( (p+1) + (n-p) \big)}{(p+1)!(n-p)!} \\
&= \frac{n!(n+1)}{(p+1)!(n-p)!} \\
&= \frac{(n+1)!}{(p+1)!\big( (n+1) - (p+1) \big)!} \\
&= \binom{n+1}{p+1}
\end{aligned}
\]
La formule est ainsi démontrée.

### Exercice 8 : Anagrammes avec répétitions de lettres
\begin{enonce}
Un anagramme d'un mot est un mot formé des mêmes lettres (ayant un sens ou non).
\begin{enumerate}
    \item Déterminer le nombre d'anagrammes du mot MATHS.
    \item Déterminer le nombre d'anagrammes du mot ANANAS.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Le mot MATHS comporte 5 lettres toutes distinctes (M, A, T, H, S). Un anagramme correspond à une permutation de ces 5 lettres. Le nombre d'anagrammes est :
    \[
    5! = 120
    \]
    
    \item Le mot ANANAS comporte 6 lettres au total. Cependant, certaines lettres sont répétées :
    - La lettre A apparaît 3 fois.
    - La lettre N apparaît 2 fois.
    - La lettre S apparaît 1 fois.
    
    Si toutes les lettres étaient distinctes, nous aurions $6!$ permutations. Pour obtenir les anagrammes uniques, nous devons diviser par le nombre de permutations possibles des lettres répétées (qui ne changent pas le mot) :
    \[
    N = \frac{6!}{3! \times 2! \times 1!} = \frac{720}{6 \times 2 \times 1} = \frac{720}{12} = 60
    \]
    Il y a 60 anagrammes possibles pour le mot ANANAS.
\end{enumerate}

### Exercice 9 : Nombre de sous-ensembles (Somme des coefficients binomiaux)
\begin{enonce}
Soit $E$ un ensemble fini à $n$ éléments.
\begin{enumerate}
    \item Justifier que le nombre de sous-ensembles de $E$ contenant exactement $k$ éléments ($0 \le k \le n$) est $\binom{n}{k}$.
    \item En utilisant la formule du binôme de Newton, en déduire le nombre total de sous-ensembles de $E$, c'est-à-dire la valeur de la somme :
    \[
    S = \sum_{k=0}^n \binom{n}{k}
    \]
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Choisir un sous-ensemble (ou partie) à $k$ éléments dans un ensemble à $n$ éléments revient à choisir $k$ éléments parmi $n$ sans ordre et sans répétition. C'est exactement le nombre de combinaisons de $k$ éléments parmi $n$, soit $\binom{n}{k}$.
    
    \item Le nombre total de sous-ensembles de $E$ est la somme du nombre de sous-ensembles à 0 élément, à 1 élément, ..., à $n$ éléments :
    \[
    S = \sum_{k=0}^n \binom{n}{k}
    \]
    Rappelons la formule du binôme de Newton pour tous réels $a$ et $b$ :
    \[
    (a+b)^n = \sum_{k=0}^n \binom{n}{k} a^k b^{n-k}
    \]
    En appliquant cette formule avec $a = 1$ et $b = 1$, nous obtenons :
    \[
    (1+1)^n = \sum_{k=0}^n \binom{n}{k} 1^k 1^{n-k} = \sum_{k=0}^n \binom{n}{k}
    \]
    D'où :
    \[
    S = 2^n
    \]
    Un ensemble à $n$ éléments possède donc $2^n$ sous-ensembles au total.
\end{enumerate}

### Exercice 10 : Tirage d'urnes sous conditions
\begin{enonce}
Une urne contient 12 boules indiscernables au toucher : 5 rouges, 4 vertes et 3 jaunes. On tire simultanément 3 boules de l'urne.
\begin{enumerate}
    \item Combien de tirages possibles y a-t-il au total ?
    \item Combien de tirages contiennent exactement une boule de chaque couleur ?
    \item Combien de tirages ne contiennent aucune boule rouge ?
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Le tirage est simultané, l'ordre n'importe pas. Un tirage est une combinaison de 3 boules parmi les 12 boules de l'urne :
    \[
    \binom{12}{3} = \frac{12 \times 11 \times 10}{3 \times 2 \times 1} = 2 \times 11 \times 10 = 220 \text{ tirages possibles}
    \]
    
    \item Un tirage contenant une boule de chaque couleur correspond au choix d'une rouge parmi 5, une verte parmi 4 et une jaune parmi 3 :
    \[
    \binom{5}{1} \times \binom{4}{1} \times \binom{3}{1} = 5 \times 4 \times 3 = 60 \text{ tirages}
    \]
    
    \item Ne contenir aucune boule rouge signifie que les 3 boules sont choisies parmi les boules vertes ou jaunes (soit $4 + 3 = 7$ boules non rouges) :
    \[
    \binom{7}{3} = \frac{7 \times 6 \times 5}{3 \times 2 \times 1} = 35 \text{ tirages}
    \]
\end{enumerate}
