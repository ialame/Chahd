### Exercice 1 : Principes additif et multiplicatif
\begin{enonce}
Une plaque d'immatriculation est formée de $2$ lettres (parmi les $26$ de l'alphabet) suivies de $3$ chiffres (de $0$ à $9$).
\begin{enumerate}
    \item Combien de plaques différentes peut-on former si les répétitions sont autorisées ?
    \item Combien en obtient-on si les $2$ lettres sont distinctes et les $3$ chiffres distincts ?
    \item Combien de plaques (avec répétitions autorisées) commencent par une voyelle prise parmi $\{A, E, I, O, U\}$ ?
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Chaque position est un choix indépendant : par le principe multiplicatif,
    $$26^2 \times 10^3 = 676 \times 1000 = 676\,000.$$
    \item Les lettres forment un arrangement de $2$ parmi $26$ et les chiffres un arrangement de $3$ parmi $10$ :
    $$A_{26}^2 \times A_{10}^3 = (26 \times 25) \times (10 \times 9 \times 8) = 650 \times 720 = 468\,000.$$
    \item La première lettre offre $5$ choix, la deuxième $26$ et chaque chiffre $10$ :
    $$5 \times 26 \times 10^3 = 130 \times 1000 = 130\,000.$$
\end{enumerate}

### Exercice 2 : Applications et injections
\begin{enonce}
Soit $E$ un ensemble à $4$ éléments et $F$ un ensemble à $6$ éléments.
\begin{enumerate}
    \item Combien existe-t-il d'applications de $E$ vers $F$ ?
    \item Combien d'entre elles sont injectives (deux éléments distincts ont des images distinctes) ?
    \item Combien existe-t-il d'applications de $F$ vers $E$ ?
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Une application associe à chacun des $4$ éléments de $E$ l'une des $6$ images possibles : c'est une $4$-liste de $F$, soit
    $$6^4 = 1296.$$
    \item Une application injective associe des images distinctes : c'est un arrangement de $4$ éléments parmi $6$,
    $$A_6^4 = 6 \times 5 \times 4 \times 3 = 360.$$
    \item De $F$ (à $6$ éléments) vers $E$ (à $4$ éléments) : chaque élément de $F$ a $4$ images possibles, soit
    $$4^6 = 4096.$$
\end{enumerate}

### Exercice 3 : Permutations et anagrammes
\begin{enonce}
On considère les $5$ lettres distinctes du mot « JEUDI ».
\begin{enumerate}
    \item Combien d'anagrammes (suites de ces $5$ lettres, ayant un sens ou non) peut-on former ?
    \item Combien commencent par une voyelle ?
    \item Combien commencent et finissent par une consonne ?
\end{enumerate}
\end{enonce}

\textbf{Solution :}
Les voyelles sont $E, U, I$ ($3$) et les consonnes $J, D$ ($2$).
\begin{enumerate}
    \item On ordonne $5$ lettres distinctes : $5! = 120$ anagrammes.
    \item On fixe une voyelle en première position ($3$ choix), puis on permute les $4$ lettres restantes :
    $$3 \times 4! = 3 \times 24 = 72.$$
    \item Première et dernière positions occupées par les $2$ consonnes ($J$ et $D$) : $A_2^2 = 2!$ façons de les placer, puis les $3$ voyelles au milieu : $3!$ façons. Total :
    $$2! \times 3! = 2 \times 6 = 12.$$
\end{enumerate}

### Exercice 4 : Combinaisons et comités
\begin{enonce}
Un club compte $12$ membres : $7$ femmes et $5$ hommes. On désire former un comité de $4$ personnes.
\begin{enumerate}
    \item Combien de comités différents peut-on constituer ?
    \item Combien comportent exactement $2$ femmes et $2$ hommes ?
    \item Combien comportent au moins un homme ?
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Un comité est un sous-ensemble de $4$ membres parmi $12$ (l'ordre ne compte pas) :
    $$\binom{12}{4} = \frac{12 \times 11 \times 10 \times 9}{24} = 495.$$
    \item On choisit $2$ femmes parmi $7$ et $2$ hommes parmi $5$ :
    $$\binom{7}{2} \times \binom{5}{2} = 21 \times 10 = 210.$$
    \item On retranche les comités sans aucun homme (donc $4$ femmes parmi $7$) :
    $$\binom{12}{4} - \binom{7}{4} = 495 - 35 = 460.$$
\end{enumerate}

### Exercice 5 : Formule du binôme de Newton
\begin{enonce}
\begin{enumerate}
    \item Développer $(x + 2)^4$ à l'aide de la formule du binôme.
    \item Déterminer le coefficient de $x^5$ dans le développement de $(2x - 1)^8$.
    \item En déduire la valeur de $\displaystyle \sum_{p=0}^{8} \binom{8}{p}$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Avec $\binom{4}{0}=1,\ \binom{4}{1}=4,\ \binom{4}{2}=6,\ \binom{4}{3}=4,\ \binom{4}{4}=1$ :
    $$(x+2)^4 = x^4 + 4 \cdot 2\, x^3 + 6 \cdot 4\, x^2 + 4 \cdot 8\, x + 16 = x^4 + 8x^3 + 24x^2 + 32x + 16.$$
    \item Le terme général est $\binom{8}{k}(2x)^k(-1)^{8-k}$. Le terme en $x^5$ correspond à $k = 5$ :
    $$\binom{8}{5}\, 2^5 (-1)^{3} = 56 \times 32 \times (-1) = -1792.$$
    \item En prenant $a = b = 1$ dans $(a+b)^8$ : $\displaystyle \sum_{p=0}^{8} \binom{8}{p} = 2^8 = 256.$
\end{enumerate}

### Exercice 6 : Équations avec coefficients binomiaux
\begin{enonce}
\begin{enumerate}
    \item Résoudre dans $\mathbb{N}$ l'équation $\displaystyle \binom{n}{2} = 28$.
    \item Déterminer tous les entiers $x$ tels que $\displaystyle \binom{12}{x} = \binom{12}{3}$.
    \item Vérifier la relation de Pascal pour $\displaystyle \binom{7}{3}$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item $\displaystyle \binom{n}{2} = \frac{n(n-1)}{2} = 28$ donne $n(n-1) = 56$. Comme $8 \times 7 = 56$, on obtient $n = 8$ (seule solution avec $n \ge 2$).
    \item Par la symétrie $\binom{12}{x} = \binom{12}{12-x}$, l'égalité $\binom{12}{x} = \binom{12}{3}$ a lieu pour $x = 3$ ou $x = 12 - 3 = 9$.
    \item Relation de Pascal : $\displaystyle \binom{7}{3} = \binom{6}{2} + \binom{6}{3} = 15 + 20 = 35$, ce qui coïncide bien avec $\dfrac{7!}{3!\,4!} = 35$.
\end{enumerate}
