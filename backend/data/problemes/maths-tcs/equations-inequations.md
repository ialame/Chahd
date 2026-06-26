### Problème 1 : Dimensions d'un jardin rectangulaire
\begin{enonce}
Un jardin rectangulaire a une aire de $70 \ \text{m}^2$ et un périmètre de $34 \ \text{m}$. On note $L$ sa longueur et $\ell$ sa largeur (en mètres).
\begin{enumerate}
    \item Traduire les données par un système d'équations vérifié par $L$ et $\ell$.
    \item Montrer que $L$ et $\ell$ sont les solutions de l'équation $X^2 - 17X + 70 = 0$, puis résoudre cette équation.
    \item En déduire les dimensions du jardin.
    \item La longueur dépasse-t-elle la largeur de $3 \ \text{m}$ ?
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Le périmètre vaut $2(L + \ell) = 34$, soit $L + \ell = 17$, et l'aire vaut $L \times \ell = 70$. D'où le système :
    $$\begin{cases} L + \ell = 17 \\ L \times \ell = 70 \end{cases}$$
    \item Deux nombres de somme $S = 17$ et de produit $P = 70$ sont les racines de $X^2 - SX + P = 0$, soit $X^2 - 17X + 70 = 0$. Son discriminant est $\Delta = (-17)^2 - 4 \times 70 = 289 - 280 = 9$, donc $\sqrt{\Delta} = 3$ et
    $$X_1 = \dfrac{17 - 3}{2} = 7, \qquad X_2 = \dfrac{17 + 3}{2} = 10.$$
    \item La longueur étant la plus grande des deux valeurs, $L = 10 \ \text{m}$ et $\ell = 7 \ \text{m}$. Vérification : $2(10 + 7) = 34$ et $10 \times 7 = 70$.
    \item On a $L - \ell = 10 - 7 = 3 \ \text{m}$ : oui, la longueur dépasse bien la largeur de $3 \ \text{m}$.
\end{enumerate}

### Problème 2 : Tarifs au cinéma (système linéaire)
\begin{enonce}
Au cinéma, on note $a$ le prix (en dirhams) d'un billet adulte et $e$ le prix d'un billet enfant. Une première famille paie $49 \ \text{dh}$ pour $3$ billets adultes et $2$ billets enfants. Une seconde famille paie $51 \ \text{dh}$ pour $2$ billets adultes et $5$ billets enfants.
\begin{enumerate}
    \item Mettre le problème en équation sous forme d'un système $2 \times 2$.
    \item Résoudre ce système par combinaison linéaire.
    \item Retrouver le résultat par la méthode du déterminant.
    \item Combien paiera une famille pour $4$ billets adultes et $3$ billets enfants ?
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Les données se traduisent par :
    $$\begin{cases} 3a + 2e = 49 \\ 2a + 5e = 51 \end{cases}$$
    \item Pour éliminer $a$, on multiplie la première équation par $2$ et la seconde par $3$ :
    $$\begin{cases} 6a + 4e = 98 \\ 6a + 15e = 153 \end{cases}$$
    En soustrayant la première de la seconde : $11e = 55$, donc $e = 5$. La première équation initiale donne $3a + 10 = 49$, soit $3a = 39$ et $a = 13$. Donc $a = 13 \ \text{dh}$ et $e = 5 \ \text{dh}$.
    \item Le déterminant vaut $\det = 3 \times 5 - 2 \times 2 = 11 \neq 0$. Alors
    $$a = \dfrac{49 \times 5 - 51 \times 2}{11} = \dfrac{245 - 102}{11} = \dfrac{143}{11} = 13, \qquad e = \dfrac{3 \times 51 - 2 \times 49}{11} = \dfrac{153 - 98}{11} = \dfrac{55}{11} = 5.$$
    On retrouve $a = 13 \ \text{dh}$ et $e = 5 \ \text{dh}$.
    \item Le coût est $4a + 3e = 4 \times 13 + 3 \times 5 = 52 + 15 = 67 \ \text{dh}$.
\end{enumerate}

### Problème 3 : Étude d'un bénéfice (second degré et inéquation)
\begin{enonce}
Une entreprise vend $x$ objets par jour ($x$ entier, $0 \le x \le 60$). Son bénéfice journalier, en dirhams, est modélisé par :
$$B(x) = -2x^2 + 120x - 1000.$$
\begin{enumerate}
    \item Pour quelles valeurs de $x$ le bénéfice est-il nul ?
    \item Résoudre l'inéquation $B(x) > 0$ et interpréter le résultat.
    \item Déterminer le nombre d'objets à vendre pour rendre le bénéfice maximal, et calculer ce bénéfice maximal.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item On résout $-2x^2 + 120x - 1000 = 0$, équivalent à $x^2 - 60x + 500 = 0$ (en divisant par $-2$). Le discriminant est $\Delta = (-60)^2 - 4 \times 500 = 3600 - 2000 = 1600$, donc $\sqrt{\Delta} = 40$ et
    $$x_1 = \dfrac{60 - 40}{2} = 10, \qquad x_2 = \dfrac{60 + 40}{2} = 50.$$
    Le bénéfice est nul pour $x = 10$ ou $x = 50$.
    \item Le trinôme $B(x) = -2x^2 + 120x - 1000$ a pour coefficient dominant $a = -2 < 0$ : il est strictement positif entre ses racines. Donc $B(x) > 0 \iff 10 < x < 50$. L'entreprise réalise un bénéfice strictement positif lorsqu'elle vend entre $11$ et $49$ objets.
    \item Le maximum d'un trinôme de coefficient dominant négatif est atteint au milieu des racines : $x = \dfrac{10 + 50}{2} = 30$. Alors
    $$B(30) = -2 \times 30^2 + 120 \times 30 - 1000 = -1800 + 3600 - 1000 = 800.$$
    Le bénéfice est maximal pour $30$ objets vendus et vaut $800 \ \text{dh}$.
\end{enumerate}
