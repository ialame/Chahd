### Problème 1 : Tirages dans une urne
\begin{enonce}
Une urne contient $9$ boules indiscernables au toucher : $4$ rouges, $3$ vertes et $2$ bleues.
\begin{enumerate}
    \item On tire \textbf{simultanément} $3$ boules.
    \begin{enumerate}
        \item Combien de tirages possibles ?
        \item Combien de tirages constitués de $3$ boules de la même couleur ?
        \item Combien de tirages contenant exactement $2$ boules rouges ?
        \item Combien de tirages contenant au moins une boule bleue ?
    \end{enumerate}
    \item On tire maintenant $3$ boules \textbf{successivement}, en notant l'ordre. Dénombrer les résultats possibles avec remise, puis sans remise.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Un tirage simultané de $3$ boules parmi $9$ est une combinaison.
    \begin{enumerate}
        \item $\displaystyle C_{9}^{3} = \frac{9 \times 8 \times 7}{6} = 84.$
        \item Trois rouges : $C_{4}^{3} = 4$ ; trois vertes : $C_{3}^{3} = 1$ ; trois bleues : impossible car $C_{2}^{3} = 0$. Au total $4 + 1 + 0 = 5$ tirages.
        \item On choisit $2$ rouges parmi $4$ et $1$ boule parmi les $5$ non rouges :
        $$C_{4}^{2} \times C_{5}^{1} = 6 \times 5 = 30.$$
        \item On retranche les tirages sans aucune bleue (donc $3$ boules parmi les $7$ non bleues) :
        $$C_{9}^{3} - C_{7}^{3} = 84 - 35 = 49.$$
    \end{enumerate}
    \item Tirage successif avec ordre. \textbf{Avec remise} (répétitions possibles) : ce sont des $3$-listes, soit $9^3 = 729$. \textbf{Sans remise} (boules distinctes) : ce sont des arrangements, soit $A_9^3 = 9 \times 8 \times 7 = 504$.
\end{enumerate}

### Problème 2 : Anagrammes du mot « ANANAS »
\begin{enonce}
On s'intéresse aux anagrammes du mot « ANANAS », c'est-à-dire à tous les mots (ayant un sens ou non) formés en réordonnant ses $6$ lettres : trois $A$, deux $N$ et un $S$.
\begin{enumerate}
    \item Combien d'anagrammes distinctes peut-on former ?
    \item Combien commencent par la lettre $S$ ?
    \item Dans combien d'anagrammes les trois lettres $A$ sont-elles consécutives ?
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Si les $6$ lettres étaient distinctes, il y aurait $6!$ ordres. Mais les $3$ lettres $A$ sont indiscernables (on divise par $3!$) ainsi que les $2$ lettres $N$ (on divise par $2!$) :
    $$\frac{6!}{3!\,2!} = \frac{720}{12} = 60.$$
    \item On fixe le $S$ en première position ; il reste à ordonner $A, A, A, N, N$ (cinq lettres) :
    $$\frac{5!}{3!\,2!} = \frac{120}{12} = 10.$$
    \item On regroupe les trois $A$ en un seul bloc $\boxed{AAA}$. Il faut alors ordonner $4$ objets : le bloc, $N$, $N$ et $S$, les deux $N$ étant indiscernables :
    $$\frac{4!}{2!} = \frac{24}{2} = 12.$$
\end{enumerate}

### Problème 3 : Mains d'un jeu de $32$ cartes
\begin{enonce}
Un jeu de $32$ cartes comporte $4$ couleurs (cœur, carreau, trèfle, pique) et, dans chaque couleur, $8$ valeurs (du $7$ à l'As). On distribue une « main » de $5$ cartes, c'est-à-dire un choix simultané de $5$ cartes.
\begin{enumerate}
    \item Combien de mains différentes peut-on obtenir ?
    \item Combien de mains contiennent exactement $2$ rois (il y a $4$ rois) ?
    \item Combien de mains ne contiennent que des cœurs ?
    \item Combien de mains contiennent au moins un As ?
\end{enumerate}
\end{enonce}

\textbf{Solution :}
Une main est une combinaison de $5$ cartes parmi $32$.
\begin{enumerate}
    \item $\displaystyle C_{32}^{5} = \frac{32 \times 31 \times 30 \times 29 \times 28}{120} = 201\,376.$
    \item On choisit $2$ rois parmi $4$ et $3$ cartes parmi les $28$ qui ne sont pas des rois :
    $$C_{4}^{2} \times C_{28}^{3} = 6 \times 3276 = 19\,656.$$
    \item Il y a $8$ cœurs ; une main de cœurs est une combinaison de $5$ parmi $8$ :
    $$C_{8}^{5} = C_{8}^{3} = 56.$$
    \item On retranche les mains ne contenant aucun As (donc $5$ cartes parmi les $28$ non-As) :
    $$C_{32}^{5} - C_{28}^{5} = 201\,376 - 98\,280 = 103\,096.$$
\end{enumerate}
