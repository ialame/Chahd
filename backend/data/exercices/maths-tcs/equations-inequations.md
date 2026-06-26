### Exercice 1 : Équations du premier et du second degré
\begin{enonce}
Résoudre dans $\mathbb{R}$ les équations suivantes :
\begin{enumerate}
    \item $3x - 7 = 5x + 1$
    \item $2x^2 - 7x + 3 = 0$
    \item $x^2 - 6x + 9 = 0$
    \item $x^2 + x + 1 = 0$
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item On regroupe : $3x - 5x = 1 + 7$, soit $-2x = 8$, d'où $x = -4$. Donc $S = \{-4\}$.
    \item Ici $a = 2$, $b = -7$, $c = 3$, donc $\Delta = (-7)^2 - 4 \times 2 \times 3 = 49 - 24 = 25 > 0$. Comme $\sqrt{\Delta} = 5$, on obtient $x_1 = \dfrac{7 - 5}{4} = \dfrac{1}{2}$ et $x_2 = \dfrac{7 + 5}{4} = 3$. Donc $S = \left\{ \dfrac{1}{2}\,;\, 3 \right\}$.
    \item $\Delta = (-6)^2 - 4 \times 1 \times 9 = 36 - 36 = 0$ : une solution double $x_0 = \dfrac{6}{2} = 3$. Donc $S = \{3\}$.
    \item $\Delta = 1^2 - 4 \times 1 \times 1 = 1 - 4 = -3 < 0$ : aucune solution réelle, donc $S = \varnothing$.
\end{enumerate}

### Exercice 2 : Équations produit et quotient
\begin{enonce}
Résoudre dans $\mathbb{R}$ :
\begin{enumerate}
    \item $(2x - 6)(x + 4) = 0$
    \item $x^2 - 5x = 0$
    \item $\dfrac{x^2 - 4}{x - 1} = 0$
    \item $\dfrac{2x - 1}{x + 3} = 0$
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Un produit est nul si l'un des facteurs est nul : $2x - 6 = 0$ ou $x + 4 = 0$, soit $x = 3$ ou $x = -4$. Donc $S = \{-4\,;\, 3\}$.
    \item On factorise par $x$ : $x(x - 5) = 0$, d'où $x = 0$ ou $x = 5$. Donc $S = \{0\,;\, 5\}$.
    \item Condition d'existence : $x - 1 \neq 0$, soit $x \neq 1$. Le numérateur s'annule pour $x^2 - 4 = 0$, c'est-à-dire $x = -2$ ou $x = 2$. Aucune de ces valeurs n'est interdite, donc $S = \{-2\,;\, 2\}$.
    \item Condition d'existence : $x \neq -3$. Le numérateur s'annule pour $2x - 1 = 0$, soit $x = \dfrac{1}{2}$, qui est autorisée. Donc $S = \left\{ \dfrac{1}{2} \right\}$.
\end{enumerate}

### Exercice 3 : Inéquations et tableaux de signes
\begin{enonce}
Résoudre dans $\mathbb{R}$ les inéquations suivantes :
\begin{enumerate}
    \item $-3x + 6 > 0$
    \item $x^2 - x - 6 \le 0$
    \item $(x - 1)(x + 2) > 0$
    \item $\dfrac{x - 3}{x + 1} \le 0$
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item $-3x + 6 > 0 \iff -3x > -6$. On divise par $-3 < 0$, donc on change le sens : $x < 2$. Donc $S = \left]-\infty\,;\, 2\right[$.
    \item $\Delta = (-1)^2 - 4 \times 1 \times (-6) = 1 + 24 = 25$, donc $x_1 = \dfrac{1 - 5}{2} = -2$ et $x_2 = \dfrac{1 + 5}{2} = 3$. Comme $a = 1 > 0$, le trinôme est négatif entre les racines. Donc $S = \left[-2\,;\, 3\right]$.
    \item Les facteurs s'annulent en $x = 1$ et $x = -2$. Le produit est strictement positif à l'extérieur de l'intervalle des racines. Donc $S = \left]-\infty\,;\, -2\right[ \cup \left]1\,;\, +\infty\right[$.
    \item Condition d'existence : $x \neq -1$. Le numérateur s'annule en $3$, le dénominateur en $-1$. Le quotient est négatif entre $-1$ et $3$ ; on retient la valeur $3$ (qui annule le quotient) mais pas $-1$ (interdite). Donc $S = \left]-1\,;\, 3\right]$.
\end{enumerate}

### Exercice 4 : Systèmes $2 \times 2$ par trois méthodes
\begin{enonce}
\begin{enumerate}
    \item Résoudre par substitution : $\begin{cases} x + 2y = 7 \\ 3x - y = 7 \end{cases}$
    \item Résoudre par combinaison linéaire : $\begin{cases} 2x + 3y = 13 \\ 5x - 3y = 1 \end{cases}$
    \item Résoudre par la méthode du déterminant : $\begin{cases} 3x + 2y = 8 \\ x - y = 1 \end{cases}$
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item La première équation donne $x = 7 - 2y$. On reporte dans la seconde : $3(7 - 2y) - y = 7$, soit $21 - 7y = 7$, d'où $-7y = -14$ et $y = 2$. Alors $x = 7 - 4 = 3$. Donc $S = \{(3\,;\, 2)\}$.
    \item Les coefficients de $y$ sont déjà opposés. En ajoutant les deux équations : $7x = 14$, donc $x = 2$. La première équation donne $4 + 3y = 13$, soit $y = 3$. Donc $S = \{(2\,;\, 3)\}$.
    \item Le déterminant vaut $\det = 3 \times (-1) - 1 \times 2 = -5 \neq 0$. Alors
    $$x = \dfrac{8 \times (-1) - 1 \times 2}{-5} = \dfrac{-10}{-5} = 2, \qquad y = \dfrac{3 \times 1 - 1 \times 8}{-5} = \dfrac{-5}{-5} = 1.$$
    Donc $S = \{(2\,;\, 1)\}$.
\end{enumerate}

### Exercice 5 : Systèmes d'inéquations
\begin{enonce}
Résoudre dans $\mathbb{R}$ les systèmes d'inéquations suivants :
\begin{enumerate}
    \item $\begin{cases} 2x - 1 \ge 3 \\ 5 - x > 0 \end{cases}$
    \item $\begin{cases} 3x + 1 \le 7 \\ x + 4 > 1 \end{cases}$
    \item $\begin{cases} x - 2 < 0 \\ 2x + 6 \ge 0 \end{cases}$
\end{enumerate}
\end{enonce}

\textbf{Solution :}
On résout chaque inéquation, puis on prend l'intersection des ensembles solutions.
\begin{enumerate}
    \item $2x - 1 \ge 3 \iff x \ge 2$ ; $5 - x > 0 \iff x < 5$. L'intersection est $S = \left[2\,;\, 5\right[$.
    \item $3x + 1 \le 7 \iff x \le 2$ ; $x + 4 > 1 \iff x > -3$. L'intersection est $S = \left]-3\,;\, 2\right]$.
    \item $x - 2 < 0 \iff x < 2$ ; $2x + 6 \ge 0 \iff x \ge -3$. L'intersection est $S = \left[-3\,;\, 2\right[$.
\end{enumerate}

### Exercice 6 : Factorisation, somme-produit et équation bicarrée
\begin{enonce}
\begin{enumerate}
    \item Résoudre $x^2 - 5x + 6 = 0$, puis factoriser le trinôme $x^2 - 5x + 6$.
    \item Vérifier que $1$ est une racine évidente de $x^2 - 7x + 6 = 0$, puis trouver l'autre racine à l'aide du produit des racines.
    \item Résoudre l'équation bicarrée $x^4 - 5x^2 + 4 = 0$ (on posera $X = x^2$).
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item $\Delta = (-5)^2 - 4 \times 6 = 25 - 24 = 1$, donc $x_1 = \dfrac{5 - 1}{2} = 2$ et $x_2 = \dfrac{5 + 1}{2} = 3$. On vérifie : $x_1 + x_2 = 5 = -\dfrac{b}{a}$ et $x_1 x_2 = 6 = \dfrac{c}{a}$. La factorisation est $x^2 - 5x + 6 = (x - 2)(x - 3)$.
    \item Pour $x = 1$ : $1 - 7 + 6 = 0$, donc $1$ est bien racine. Le produit des racines vaut $\dfrac{c}{a} = 6$ ; si $x_1 = 1$, alors $x_2 = \dfrac{6}{1} = 6$. Donc $S = \{1\,;\, 6\}$.
    \item En posant $X = x^2 \ge 0$, l'équation devient $X^2 - 5X + 4 = 0$. Son discriminant est $\Delta = 25 - 16 = 9$, donc $X_1 = \dfrac{5 - 3}{2} = 1$ et $X_2 = \dfrac{5 + 3}{2} = 4$. On revient à $x$ : $x^2 = 1$ donne $x = \pm 1$, et $x^2 = 4$ donne $x = \pm 2$. Donc $S = \{-2\,;\, -1\,;\, 1\,;\, 2\}$.
\end{enumerate}
