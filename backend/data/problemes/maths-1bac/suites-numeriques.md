### Problème 1 : Deux formules d'épargne
\begin{enonce}
Un épargnant dispose de $5000$ dirhams qu'il place pendant plusieurs années. Deux banques lui proposent chacune un contrat. On note $n$ le nombre d'années écoulées depuis le placement.
\begin{itemize}
    \item \textbf{Contrat A} (intérêts simples) : chaque année, la banque ajoute $200$ dirhams au capital. On note $A_n$ le capital au bout de $n$ années, avec $A_0 = 5000$.
    \item \textbf{Contrat B} (intérêts composés) : chaque année, le capital augmente de $4\,\%$. On note $B_n$ le capital au bout de $n$ années, avec $B_0 = 5000$.
\end{itemize}
\begin{enumerate}
    \item Quelle est la nature de la suite $(A_n)$ ? Exprimer $A_n$ en fonction de $n$.
    \item Quelle est la nature de la suite $(B_n)$ ? Exprimer $B_n$ en fonction de $n$.
    \item Calculer $A_5$ et $B_5$ (arrondir au centime). Quel contrat est le plus avantageux au bout de $5$ ans ?
    \item Calculer $A_{10}$ et $B_{10}$. Comparer.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item On ajoute toujours le même nombre $200$ : $(A_n)$ est **arithmétique** de raison $r = 200$ et de premier terme $A_0 = 5000$. Donc :
    $$A_n = A_0 + nr = 5000 + 200\,n.$$
    \item Augmenter de $4\,\%$ revient à multiplier par $1{,}04$ : $(B_n)$ est **géométrique** de raison $q = 1{,}04$ et de premier terme $B_0 = 5000$. Donc :
    $$B_n = B_0 \times q^n = 5000 \times 1{,}04^{\,n}.$$
    \item $A_5 = 5000 + 200\times 5 = 6000$ dirhams.
    Pour $B_5$, on a $1{,}04^5 \approx 1{,}2166529$, donc
    $$B_5 = 5000 \times 1{,}04^5 \approx 6083{,}26 \text{ dirhams}.$$
    Au bout de $5$ ans, le contrat B rapporte un peu plus ($6083{,}26 > 6000$).
    \item $A_{10} = 5000 + 200 \times 10 = 7000$ dirhams. Et $1{,}04^{10} \approx 1{,}4802443$, donc
    $$B_{10} = 5000 \times 1{,}04^{10} \approx 7401{,}22 \text{ dirhams}.$$
    L'écart se creuse : la croissance **géométrique** du contrat B finit par dépasser nettement la croissance **arithmétique** du contrat A.
\end{enumerate}

### Problème 2 : Étude d'une suite récurrente
\begin{enonce}
On considère la suite $(u_n)$ définie par $u_0 = 5$ et, pour tout $n \in \mathbb{N}$ :
$$u_{n+1} = \frac{u_n + 6}{2}.$$
\begin{enumerate}
    \item Calculer $u_1$, $u_2$ et $u_3$.
    \item Montrer par récurrence que, pour tout $n \in \mathbb{N}$, on a $5 \le u_n < 6$. Que peut-on en déduire pour la suite ?
    \item Montrer que $(u_n)$ est croissante.
    \item On pose $v_n = u_n - 6$. Montrer que $(v_n)$ est géométrique, puis exprimer $u_n$ en fonction de $n$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item $u_1 = \dfrac{5 + 6}{2} = \dfrac{11}{2} = 5{,}5$ ; $\;u_2 = \dfrac{5{,}5 + 6}{2} = 5{,}75$ ; $\;u_3 = \dfrac{5{,}75 + 6}{2} = 5{,}875$.
    \item \textbf{Initialisation :} $u_0 = 5$, donc $5 \le u_0 < 6$ : la propriété est vraie au rang $0$.
    \textbf{Hérédité :} supposons $5 \le u_n < 6$ pour un rang $n$. En ajoutant $6$ : $11 \le u_n + 6 < 12$, puis en divisant par $2$ :
    $$5{,}5 \le \frac{u_n + 6}{2} < 6, \qquad \text{c'est-à-dire} \qquad 5{,}5 \le u_{n+1} < 6.$$
    En particulier $5 \le u_{n+1} < 6$. La propriété est donc héréditaire, donc vraie pour tout $n$. La suite $(u_n)$ est ainsi **minorée par $5$ et majorée par $6$**, donc **bornée**.
    \item On calcule la différence :
    $$u_{n+1} - u_n = \frac{u_n + 6}{2} - u_n = \frac{u_n + 6 - 2u_n}{2} = \frac{6 - u_n}{2}.$$
    Or d'après la question 2, $u_n < 6$, donc $6 - u_n > 0$, d'où $u_{n+1} - u_n > 0$. La suite $(u_n)$ est donc **croissante**.
    \item Pour tout $n$ :
    $$v_{n+1} = u_{n+1} - 6 = \frac{u_n + 6}{2} - 6 = \frac{u_n - 6}{2} = \frac{1}{2}v_n.$$
    Donc $(v_n)$ est géométrique de raison $\dfrac{1}{2}$ et de premier terme $v_0 = u_0 - 6 = -1$. Ainsi $v_n = -\left(\dfrac{1}{2}\right)^n$, d'où
    $$u_n = 6 - \left(\frac{1}{2}\right)^n.$$
    On vérifie $u_0 = 6 - 1 = 5$ et $u_1 = 6 - \dfrac{1}{2} = 5{,}5$. Ceci confirme à la fois la croissance et la majoration par $6$.
\end{enumerate}

### Problème 3 : La légende de l'échiquier
\begin{enonce}
D'après une légende, l'inventeur du jeu d'échecs demanda comme récompense : $1$ grain de blé sur la première case de l'échiquier, $2$ grains sur la deuxième, $4$ grains sur la troisième, et ainsi de suite, en doublant à chaque case. L'échiquier compte $64$ cases. On note $w_k$ le nombre de grains posés sur la case numéro $k$ (avec $k$ allant de $1$ à $64$).
\begin{enumerate}
    \item Exprimer $w_k$ en fonction de $k$. Quelle est la nature de la suite $(w_k)$ ?
    \item Combien de grains sont posés sur la $10^{\text{e}}$ case ? Sur la $20^{\text{e}}$ case ?
    \item Calculer le nombre total de grains posés sur les $10$ premières cases.
    \item Donner le nombre total de grains posés sur l'échiquier entier, sous forme d'une puissance de $2$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item La case $1$ porte $1 = 2^0$ grain, la case $2$ porte $2 = 2^1$, la case $3$ porte $4 = 2^2$\ldots Le nombre de grains double à chaque case, donc :
    $$w_k = 2^{\,k-1}.$$
    La suite $(w_k)$ est **géométrique** de raison $q = 2$ et de premier terme $w_1 = 1$.
    \item $w_{10} = 2^{9} = 512$ grains ; $\;w_{20} = 2^{19} = 524\,288$ grains.
    \item La somme des $10$ premières cases est une somme géométrique de premier terme $1$, de raison $2$ et de $10$ termes :
    $$S_{10} = 1 \times \frac{1 - 2^{10}}{1 - 2} = \frac{1 - 1024}{-1} = 1023 \text{ grains}.$$
    \item Le total sur les $64$ cases est :
    $$S_{64} = 1 \times \frac{1 - 2^{64}}{1 - 2} = 2^{64} - 1.$$
    Ce nombre vaut environ $1{,}84 \times 10^{19}$ grains : une quantité colossale, impossible à fournir. C'est l'illustration de la croissance **explosive** d'une suite géométrique de raison supérieure à $1$.
\end{enumerate}
