### Problème 1 : Carrelage d'une pièce
\begin{enonce}
On veut paver le sol d'une pièce rectangulaire de $252\ \text{cm}$ de largeur et $360\ \text{cm}$ de longueur avec des dalles **carrées identiques**, sans découpe et sans espace.
\begin{enumerate}
    \item Quelle doit être la condition sur le côté $c$ (en cm) d'une dalle pour qu'elle pave exactement la pièce ?
    \item Quel est le plus grand côté $c$ possible ?
    \item Combien de dalles utilise-t-on alors ?
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Pour qu'il n'y ait ni découpe ni espace, le côté $c$ doit diviser à la fois la largeur $252$ et la longueur $360$ : $c$ est un **diviseur commun** de $252$ et $360$.
    \item Pour des dalles les plus grandes possibles, on prend $c = \text{pgcd}(252, 360)$. On décompose : $252 = 2^2 \times 3^2 \times 7$ et $360 = 2^3 \times 3^2 \times 5$. Les facteurs communs au plus petit exposant donnent $\text{pgcd}(252, 360) = 2^2 \times 3^2 = 36$. Le plus grand côté possible est $c = 36\ \text{cm}$.
    \item Sur la largeur on place $252 \div 36 = 7$ dalles, et sur la longueur $360 \div 36 = 10$ dalles, soit $7 \times 10 = 70$ dalles au total.
\end{enumerate}

### Problème 2 : Deux phares qui clignotent
\begin{enonce}
Deux phares s'allument à intervalles réguliers. Le premier émet un éclat toutes les $24$ secondes, le second toutes les $36$ secondes. À l'instant $t = 0$, ils émettent un éclat **en même temps**.
\begin{enumerate}
    \item Au bout de combien de secondes émettront-ils de nouveau un éclat simultanément pour la première fois ?
    \item Combien de fois (en dehors de l'instant initial) émettront-ils simultanément au cours des $6$ premières minutes ?
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Un éclat simultané a lieu lorsque le temps écoulé est à la fois un multiple de $24$ et un multiple de $36$. Le premier instant strictement positif est $\text{ppcm}(24, 36)$. Avec $24 = 2^3 \times 3$ et $36 = 2^2 \times 3^2$, on a $\text{ppcm}(24, 36) = 2^3 \times 3^2 = 72$. Ils émettront de nouveau ensemble au bout de $72$ secondes.
    \item Les éclats simultanés se produisent toutes les $72$ secondes. En $6$ minutes $= 360$ secondes, leur nombre est $360 \div 72 = 5$ : ils émettent donc simultanément $5$ fois (aux instants $72$, $144$, $216$, $288$ et $360$ secondes), sans compter l'instant initial.
\end{enumerate}

### Problème 3 : Nombre de diviseurs et fraction
\begin{enonce}
On pose $N = 600$.
\begin{enumerate}
    \item Décomposer $N$ en produit de facteurs premiers.
    \item Sachant qu'un entier $p_1^{\alpha_1} \times \cdots \times p_k^{\alpha_k}$ possède $(\alpha_1 + 1) \times \cdots \times (\alpha_k + 1)$ diviseurs, déterminer le nombre de diviseurs de $N$.
    \item Rendre irréductible la fraction $\dfrac{600}{840}$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item $600 = 2^3 \times 3 \times 5^2$ (en effet $8 \times 3 \times 25 = 600$).
    \item Avec les exposants $3$, $1$ et $2$, le nombre de diviseurs est $(3+1)(1+1)(2+1) = 4 \times 2 \times 3 = 24$. L'entier $600$ possède donc $24$ diviseurs.
    \item On décompose $840 = 2^3 \times 3 \times 5 \times 7$. Les facteurs communs à $600 = 2^3 \times 3 \times 5^2$ au plus petit exposant donnent $\text{pgcd}(600, 840) = 2^3 \times 3 \times 5 = 120$. On divise par $120$ : $\dfrac{600}{840} = \dfrac{5}{7}$. Comme $\text{pgcd}(5, 7) = 1$, la fraction $\dfrac{5}{7}$ est irréductible.
\end{enumerate}
