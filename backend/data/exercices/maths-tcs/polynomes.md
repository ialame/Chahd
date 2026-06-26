### Exercice 1 : Degré et opérations
\begin{enonce}
On considère les polynômes $P(x) = 3x^{3} - 2x^{2} + 5x - 1$ et $Q(x) = -3x^{3} + x^{2} - 4$.
\begin{enumerate}
    \item Donner le degré, le coefficient dominant et le terme constant de $P$.
    \item Calculer $P(x) + Q(x)$ et préciser son degré.
    \item Calculer $P(x) - Q(x)$ et préciser son degré.
    \item Développer et réduire le produit $(2x - 1)(x^{2} - 3x + 4)$, puis donner son degré.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Le degré de $P$ est $3$, son coefficient dominant est $3$ et son terme constant est $-1$.
    \item On ajoute les coefficients de même degré :
    $$P(x) + Q(x) = (3 - 3)x^{3} + (-2 + 1)x^{2} + 5x + (-1 - 4) = -x^{2} + 5x - 5.$$
    Le terme en $x^{3}$ disparaît : le degré de la somme est donc $2$. On retrouve ici que $\deg(P+Q) \le \max(\deg P, \deg Q)$, l'inégalité pouvant être stricte.
    \item De même :
    $$P(x) - Q(x) = (3 + 3)x^{3} + (-2 - 1)x^{2} + 5x + (-1 + 4) = 6x^{3} - 3x^{2} + 5x + 3,$$
    qui est de degré $3$.
    \item On multiplie chaque terme :
    $$(2x - 1)(x^{2} - 3x + 4) = 2x^{3} - 6x^{2} + 8x - x^{2} + 3x - 4 = 2x^{3} - 7x^{2} + 11x - 4.$$
    Le degré du produit est $1 + 2 = 3$.
\end{enumerate}

### Exercice 2 : Identités remarquables
\begin{enonce}
\begin{enumerate}
    \item Développer à l'aide d'une identité remarquable :
    \begin{itemize}
        \item $(3x + 4)^{2}$ ;
        \item $(5x - 2)^{2}$ ;
        \item $(2x + 3)(2x - 3)$.
    \end{itemize}
    \item En utilisant une identité remarquable, calculer sans poser d'opération : $102^{2}$, $99^{2}$ et $103 \times 97$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item On applique $(a+b)^2$, $(a-b)^2$ et $(a-b)(a+b)$ :
    \begin{itemize}
        \item $(3x + 4)^{2} = (3x)^{2} + 2 \cdot 3x \cdot 4 + 4^{2} = 9x^{2} + 24x + 16$ ;
        \item $(5x - 2)^{2} = (5x)^{2} - 2 \cdot 5x \cdot 2 + 2^{2} = 25x^{2} - 20x + 4$ ;
        \item $(2x + 3)(2x - 3) = (2x)^{2} - 3^{2} = 4x^{2} - 9$.
    \end{itemize}
    \item On écrit chaque nombre comme une somme ou différence autour de $100$ :
    \begin{itemize}
        \item $102^{2} = (100 + 2)^{2} = 10000 + 400 + 4 = 10404$ ;
        \item $99^{2} = (100 - 1)^{2} = 10000 - 200 + 1 = 9801$ ;
        \item $103 \times 97 = (100 + 3)(100 - 3) = 100^{2} - 3^{2} = 10000 - 9 = 9991$.
    \end{itemize}
\end{enumerate}

### Exercice 3 : Factorisations
\begin{enonce}
Factoriser le plus complètement possible chacune des expressions suivantes :
\begin{enumerate}
    \item $12x^{3} - 8x^{2}$ ;
    \item $25x^{2} - 49$ ;
    \item $9x^{2} - 12x + 4$ ;
    \item $x^{3} + 5x^{2} + 3x + 15$ ;
    \item $(2x - 1)(x + 3) + (2x - 1)(x - 5)$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Facteur commun $4x^{2}$ : $\quad 12x^{3} - 8x^{2} = 4x^{2}(3x - 2)$.
    \item Différence de deux carrés : $\quad 25x^{2} - 49 = (5x)^{2} - 7^{2} = (5x - 7)(5x + 7)$.
    \item Carré parfait : $\quad 9x^{2} - 12x + 4 = (3x)^{2} - 2 \cdot 3x \cdot 2 + 2^{2} = (3x - 2)^{2}$.
    \item Factorisation par regroupement :
    $$x^{3} + 5x^{2} + 3x + 15 = x^{2}(x + 5) + 3(x + 5) = (x + 5)(x^{2} + 3).$$
    \item Le facteur $(2x - 1)$ est commun :
    $$(2x - 1)\big[(x + 3) + (x - 5)\big] = (2x - 1)(2x - 2) = 2(2x - 1)(x - 1).$$
\end{enumerate}

### Exercice 4 : Racine évidente et factorisation par $(x - a)$
\begin{enonce}
On considère le polynôme $P(x) = x^{3} - 2x^{2} - 5x + 6$.
\begin{enumerate}
    \item Vérifier que $1$ est une racine de $P$.
    \item Sachant que $P(x) = (x - 1)(x^{2} + bx + c)$, déterminer $b$ et $c$ par identification.
    \item Factoriser complètement $P(x)$.
    \item En déduire toutes les solutions de l'équation $P(x) = 0$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item $P(1) = 1 - 2 - 5 + 6 = 0$ : $1$ est bien une racine de $P$.
    \item On développe :
    $$(x - 1)(x^{2} + bx + c) = x^{3} + (b - 1)x^{2} + (c - b)x - c.$$
    L'identification avec $x^{3} - 2x^{2} - 5x + 6$ donne $b - 1 = -2$, soit $b = -1$, et $-c = 6$, soit $c = -6$. On vérifie le terme en $x$ : $c - b = -6 - (-1) = -5$. Ainsi $P(x) = (x - 1)(x^{2} - x - 6)$.
    \item On factorise le trinôme $x^{2} - x - 6$. Une racine évidente est $3$ (car $9 - 3 - 6 = 0$), donc $x^{2} - x - 6 = (x - 3)(x + 2)$. Finalement :
    $$P(x) = (x - 1)(x - 3)(x + 2).$$
    \item Un produit est nul si l'un de ses facteurs est nul, d'où $x = 1$, $x = 3$ ou $x = -2$. L'ensemble des solutions est $S = \{-2\,;\,1\,;\,3\}$.
\end{enumerate}

### Exercice 5 : Signe d'un produit de binômes
\begin{enonce}
\begin{enumerate}
    \item Étudier le signe du binôme $3x + 12$.
    \item Étudier le signe du binôme $-2x + 5$.
    \item À l'aide d'un tableau de signes, résoudre l'inéquation $(3x + 12)(-2x + 5) \ge 0$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item $3x + 12$ s'annule en $x = -4$ et $a = 3 > 0$ : il est négatif sur $]-\infty\,;\,-4[$ et positif sur $]-4\,;\,+\infty[$.
    \item $-2x + 5$ s'annule en $x = \dfrac{5}{2}$ et $a = -2 < 0$ : il est positif sur $\left]-\infty\,;\,\dfrac{5}{2}\right[$ et négatif sur $\left]\dfrac{5}{2}\,;\,+\infty\right[$.
    \item On dresse le tableau de signes du produit avec les valeurs $-4$ et $\dfrac{5}{2}$ :

| $x$ | $-\infty$ | | $-4$ | | $\frac{5}{2}$ | | $+\infty$ |
|---|---|---|---|---|---|---|---|
| $3x + 12$ | | $-$ | $0$ | $+$ | | $+$ | |
| $-2x + 5$ | | $+$ | | $+$ | $0$ | $-$ | |
| produit | | $-$ | $0$ | $+$ | $0$ | $-$ | |

    Le produit est positif ou nul sur $\left[-4\,;\,\dfrac{5}{2}\right]$. L'ensemble des solutions est donc $S = \left[-4\,;\,\dfrac{5}{2}\right]$.
\end{enumerate}

### Exercice 6 : Signe d'un trinôme et inéquation
\begin{enonce}
On pose $f(x) = x^{2} - 7x + 10$.
\begin{enumerate}
    \item Vérifier que $2$ est une racine de $f$, puis factoriser $f(x)$.
    \item Résoudre l'équation $f(x) = 0$.
    \item Dresser le tableau de signes de $f$.
    \item Résoudre l'inéquation $x^{2} - 7x + 10 < 0$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item $f(2) = 4 - 14 + 10 = 0$ : $2$ est une racine. On cherche $f(x) = (x - 2)(x - r)$ ; le terme constant donne $(-2)(-r) = 10$, soit $r = 5$. Ainsi $f(x) = (x - 2)(x - 5)$.
    \item $f(x) = 0$ équivaut à $(x - 2)(x - 5) = 0$, d'où $x = 2$ ou $x = 5$ : $S = \{2\,;\,5\}$.
    \item Le coefficient dominant est $a = 1 > 0$ ; les racines sont $2$ et $5$ :

| $x$ | $-\infty$ | | $2$ | | $5$ | | $+\infty$ |
|---|---|---|---|---|---|---|---|
| $x - 2$ | | $-$ | $0$ | $+$ | | $+$ | |
| $x - 5$ | | $-$ | | $-$ | $0$ | $+$ | |
| $f(x)$ | | $+$ | $0$ | $-$ | $0$ | $+$ | |

    \item D'après le tableau, $f(x) < 0$ entre les racines : $S = \,]2\,;\,5[$. Ceci illustre la règle « signe de $-a$ entre les racines ».
\end{enumerate}
