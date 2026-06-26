### Exercice 1 : Comparer par le signe de la différence
\begin{enonce}
\begin{enumerate}
    \item Comparer les réels $A = \dfrac{2}{7}$ et $B = \dfrac{3}{10}$.
    \item Montrer que pour tout réel $x$, on a $x^2 + 9 \ge 6x$.
    \item Soit $x$ un réel tel que $x \ge 1$. Comparer $x$ et $x^2$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item On étudie le signe de la différence :
    $$A - B = \frac{2}{7} - \frac{3}{10} = \frac{20}{70} - \frac{21}{70} = -\frac{1}{70} < 0,$$
    donc $A < B$.
    \item On calcule la différence et on reconnaît une identité remarquable :
    $$(x^2 + 9) - 6x = x^2 - 6x + 9 = (x - 3)^2 \ge 0,$$
    donc $x^2 + 9 \ge 6x$ pour tout réel $x$, avec égalité si et seulement si $x = 3$.
    \item On a $x^2 - x = x(x - 1)$. Comme $x \ge 1$, les facteurs $x$ et $x - 1$ sont positifs ou nuls, donc $x(x-1) \ge 0$, c'est-à-dire $x^2 \ge x$.
\end{enumerate}

### Exercice 2 : Opérations sur les inégalités
\begin{enonce}
Soient $a$ et $b$ deux réels tels que $a \le b$.
\begin{enumerate}
    \item Comparer $a + 5$ et $b + 5$.
    \item Comparer $-3a$ et $-3b$.
    \item On suppose de plus $0 < a \le b$. Comparer $\dfrac{1}{a}$ et $\dfrac{1}{b}$.
    \item Si $a \le b$ et $c \le d$, peut-on toujours en déduire $a - c \le b - d$ ? Justifier.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item On ajoute $5$ aux deux membres, ce qui ne change pas le sens : $a + 5 \le b + 5$.
    \item On multiplie par $-3 < 0$, ce qui \textbf{renverse} le sens de l'inégalité : $-3a \ge -3b$.
    \item Comme $a$ et $b$ sont strictement positifs (donc de même signe), le passage à l'inverse change le sens : de $a \le b$ on déduit $\dfrac{1}{a} \ge \dfrac{1}{b}$.
    \item Non. On peut additionner deux inégalités de même sens, mais pas les soustraire membre à membre. Contre-exemple : avec $a = 1 \le b = 1$ et $c = 0 \le d = 5$, on aurait $a - c = 1$ et $b - d = -4$, donc $a - c > b - d$. L'implication est fausse.
\end{enumerate}

### Exercice 3 : Encadrements
\begin{enonce}
Soient $x$ et $y$ deux réels tels que $3 \le x \le 5$ et $1 \le y \le 2$.
\begin{enumerate}
    \item Encadrer $x + y$.
    \item Encadrer $x - y$.
    \item Encadrer le produit $xy$.
    \item Encadrer le quotient $\dfrac{x}{y}$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item On additionne les deux encadrements (même sens) : $3 + 1 \le x + y \le 5 + 2$, soit $4 \le x + y \le 7$.
    \item De $1 \le y \le 2$ on tire $-2 \le -y \le -1$, puis on ajoute à $3 \le x \le 5$ :
    $$3 + (-2) \le x - y \le 5 + (-1), \quad \text{soit} \quad 1 \le x - y \le 4.$$
    \item Tous les termes sont positifs, on multiplie membre à membre : $3 \times 1 \le xy \le 5 \times 2$, soit $3 \le xy \le 10$.
    \item De $1 \le y \le 2$ (réels positifs) on déduit $\dfrac{1}{2} \le \dfrac{1}{y} \le 1$. Comme $\dfrac{x}{y} = x \times \dfrac{1}{y}$ avec tous les termes positifs :
    $$3 \times \frac{1}{2} \le \frac{x}{y} \le 5 \times 1, \quad \text{soit} \quad \frac{3}{2} \le \frac{x}{y} \le 5.$$
\end{enumerate}

### Exercice 4 : Valeur absolue et distance
\begin{enonce}
Résoudre dans $\R$ les équations et inéquations suivantes :
\begin{enumerate}
    \item $|2x - 1| = 5$ ;
    \item $|x - 4| \le 3$ ;
    \item $|x + 2| > 1$.
    \item Écrire à l'aide d'une valeur absolue l'ensemble des réels $x$ dont la distance à $3$ est inférieure ou égale à $2$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item $|2x - 1| = 5 \iff 2x - 1 = 5 \ \text{ou} \ 2x - 1 = -5 \iff x = 3 \ \text{ou} \ x = -2$. Donc $S = \{-2 ; 3\}$.
    \item $|x - 4| \le 3 \iff -3 \le x - 4 \le 3 \iff 1 \le x \le 7$. Donc $S = [1, 7]$.
    \item $|x + 2| > 1 \iff x + 2 > 1 \ \text{ou} \ x + 2 < -1 \iff x > -1 \ \text{ou} \ x < -3$. Donc $S = ]-\infty, -3[ \, \cup \, ]-1, +\infty[$.
    \item La distance de $x$ à $3$ est $|x - 3|$. L'ensemble cherché est défini par $|x - 3| \le 2$, ce qui correspond à l'intervalle $[1, 5]$.
\end{enumerate}

### Exercice 5 : Intervalles
\begin{enonce}
\begin{enumerate}
    \item On pose $I = [-2, 5]$ et $J = \,]1, 8]$. Déterminer $I \cap J$ et $I \cup J$.
    \item Écrire l'intervalle $[1, 7]$ sous la forme $\{ x \in \R \mid |x - a| \le r \}$ en précisant son centre $a$ et son rayon $r$.
    \item Traduire l'inéquation $|x + 1| < 2$ sous forme d'intervalle.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Sur une droite graduée : $I \cap J = \,]1, 5]$ (réels à la fois $> 1$ et $\le 5$) et $I \cup J = [-2, 8]$.
    \item Le centre est le milieu des bornes : $a = \dfrac{1 + 7}{2} = 4$, et le rayon est la demi-amplitude : $r = \dfrac{7 - 1}{2} = 3$. Donc $[1, 7] = \{ x \in \R \mid |x - 4| \le 3 \}$.
    \item $|x + 1| < 2 \iff -2 < x + 1 < 2 \iff -3 < x < 1$, soit l'intervalle $]-3, 1[$.
\end{enumerate}

### Exercice 6 : Partie entière
\begin{enonce}
\begin{enumerate}
    \item Calculer $E(3{,}7)$, $E(-2{,}3)$, $E(5)$ et $E(-4)$.
    \item Résoudre dans $\R$ l'équation $E(x) = 2$.
    \item Vérifier sur $x = 2{,}6$ l'égalité $E(x + 3) = E(x) + 3$, puis énoncer la propriété générale.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item $E(3{,}7) = 3$ (car $3 \le 3{,}7 < 4$) ; $E(-2{,}3) = -3$ (car $-3 \le -2{,}3 < -2$) ; $E(5) = 5$ ; $E(-4) = -4$.
    \item $E(x) = 2$ signifie que $2$ est le plus grand entier inférieur ou égal à $x$, c'est-à-dire $2 \le x < 3$. Donc $S = [2, 3[$.
    \item On a $E(2{,}6 + 3) = E(5{,}6) = 5$ et $E(2{,}6) + 3 = 2 + 3 = 5$ : l'égalité est vérifiée. Plus généralement, pour tout réel $x$ et tout entier relatif $k$, on a $E(x + k) = E(x) + k$.
\end{enumerate}
