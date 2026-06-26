### Problème 1 : De la différence de carrés au signe
\begin{enonce}
On considère l'expression $A(x) = (2x + 3)^{2} - (x - 1)^{2}$.
\begin{enumerate}
    \item Développer et réduire $A(x)$.
    \item Factoriser $A(x)$ à l'aide de l'identité $a^{2} - b^{2} = (a - b)(a + b)$.
    \item Résoudre l'équation $A(x) = 0$.
    \item Dresser le tableau de signes de $A(x)$ et en déduire l'ensemble des $x$ tels que $A(x) > 0$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item On développe chaque carré :
    $$A(x) = (4x^{2} + 12x + 9) - (x^{2} - 2x + 1) = 3x^{2} + 14x + 8.$$
    \item On reconnaît $a^{2} - b^{2}$ avec $a = 2x + 3$ et $b = x - 1$ :
    $$A(x) = \big[(2x + 3) - (x - 1)\big]\big[(2x + 3) + (x - 1)\big] = (x + 4)(3x + 2).$$
    On vérifie : $(x + 4)(3x + 2) = 3x^{2} + 2x + 12x + 8 = 3x^{2} + 14x + 8$.
    \item $A(x) = 0$ équivaut à $(x + 4)(3x + 2) = 0$, soit $x = -4$ ou $x = -\dfrac{2}{3}$. Donc $S = \left\{-4\,;\,-\dfrac{2}{3}\right\}$.
    \item Le coefficient dominant est $3 > 0$ et les racines sont $-4$ et $-\dfrac{2}{3}$ :

| $x$ | $-\infty$ | | $-4$ | | $-\frac{2}{3}$ | | $+\infty$ |
|---|---|---|---|---|---|---|---|
| $x + 4$ | | $-$ | $0$ | $+$ | | $+$ | |
| $3x + 2$ | | $-$ | | $-$ | $0$ | $+$ | |
| $A(x)$ | | $+$ | $0$ | $-$ | $0$ | $+$ | |

    On a donc $A(x) > 0$ sur $\,]-\infty\,;\,-4[\,\cup\,\left]-\dfrac{2}{3}\,;\,+\infty\right[$.
\end{enumerate}

### Problème 2 : Factorisation d'un polynôme de degré 3
\begin{enonce}
On considère le polynôme $P(x) = x^{3} - 3x^{2} - x + 3$.
\begin{enumerate}
    \item Vérifier que $1$ est une racine de $P$.
    \item Déterminer un trinôme $Q(x)$ tel que $P(x) = (x - 1)\,Q(x)$.
    \item Factoriser complètement $P(x)$.
    \item Dresser le tableau de signes de $P(x)$.
    \item Résoudre l'inéquation $P(x) \le 0$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item $P(1) = 1 - 3 - 1 + 3 = 0$ : $1$ est bien une racine de $P$.
    \item On cherche $Q(x) = x^{2} + bx + c$ tel que $P(x) = (x - 1)(x^{2} + bx + c)$. En développant :
    $$(x - 1)(x^{2} + bx + c) = x^{3} + (b - 1)x^{2} + (c - b)x - c.$$
    L'identification donne $b - 1 = -3$ soit $b = -2$, et $-c = 3$ soit $c = -3$. On contrôle le terme en $x$ : $c - b = -3 - (-2) = -1$. Donc $Q(x) = x^{2} - 2x - 3$.
    \item On factorise $Q(x) = x^{2} - 2x - 3$ : une racine évidente est $3$ (car $9 - 6 - 3 = 0$), d'où $Q(x) = (x - 3)(x + 1)$. Finalement :
    $$P(x) = (x - 1)(x - 3)(x + 1).$$
    \item Les trois racines, rangées dans l'ordre croissant, sont $-1$, $1$ et $3$ ; le coefficient dominant est $1 > 0$ :

| $x$ | $-\infty$ | | $-1$ | | $1$ | | $3$ | | $+\infty$ |
|---|---|---|---|---|---|---|---|---|---|
| $x + 1$ | | $-$ | $0$ | $+$ | | $+$ | | $+$ | |
| $x - 1$ | | $-$ | | $-$ | $0$ | $+$ | | $+$ | |
| $x - 3$ | | $-$ | | $-$ | | $-$ | $0$ | $+$ | |
| $P(x)$ | | $-$ | $0$ | $+$ | $0$ | $-$ | $0$ | $+$ | |

    \item D'après le tableau, $P(x) \le 0$ sur $\,]-\infty\,;\,-1]\,\cup\,[1\,;\,3]$.
\end{enumerate}

### Problème 3 : Mise en équation géométrique
\begin{enonce}
Un terrain rectangulaire a pour longueur $(x + 5)$ mètres et pour largeur $(x + 2)$ mètres, où $x > 0$ est exprimé en mètres.
\begin{enumerate}
    \item Exprimer l'aire $A(x)$ du terrain sous forme développée et réduite.
    \item On agrandit le terrain pour obtenir un carré de côté $(x + 5)$ mètres. Montrer que l'aire supplémentaire $B(x)$ ajoutée est $B(x) = 3x + 15$.
    \item Déterminer la valeur de $x$ pour laquelle l'aire $A(x)$ du terrain vaut $28\ \text{m}^{2}$.
    \item Justifier que, pour tout $x > 0$, l'aire $A(x)$ est strictement positive.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item $A(x) = (x + 5)(x + 2) = x^{2} + 2x + 5x + 10 = x^{2} + 7x + 10$ (en m$^{2}$).
    \item Le carré a pour aire $(x + 5)^{2}$, donc l'aire supplémentaire est
    $$B(x) = (x + 5)^{2} - (x + 5)(x + 2) = (x + 5)\big[(x + 5) - (x + 2)\big] = (x + 5) \times 3 = 3x + 15.$$
    \item On résout $A(x) = 28$, c'est-à-dire $x^{2} + 7x + 10 = 28$, soit $x^{2} + 7x - 18 = 0$. Une racine évidente est $2$ (car $4 + 14 - 18 = 0$), d'où la factorisation $(x - 2)(x + 9) = 0$. Les solutions sont $x = 2$ et $x = -9$. Comme $x > 0$, seule $x = 2$ convient : le terrain mesure alors $7\ \text{m}$ sur $4\ \text{m}$, soit bien $28\ \text{m}^{2}$.
    \item On a $A(x) = (x + 2)(x + 5)$. Pour $x > 0$, les deux facteurs $x + 2$ et $x + 5$ sont strictement positifs ; leur produit l'est donc aussi, et $A(x) > 0$.
\end{enumerate}
