### Exercice 1 : Sens de variation
\begin{enonce}
Étudier le sens de variation de chacune des suites suivantes, définies pour tout $n \in \mathbb{N}$ :
\begin{enumerate}
    \item $u_n = \dfrac{2n+1}{n+1}$ ;
    \item $v_n = \dfrac{3^n}{n+1}$ ;
    \item $w_n = n^2 - 5n$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item On remarque que $u_n = \dfrac{2(n+1)-1}{n+1} = 2 - \dfrac{1}{n+1}$. Alors :
    $$u_{n+1} - u_n = \frac{1}{n+1} - \frac{1}{n+2} = \frac{(n+2)-(n+1)}{(n+1)(n+2)} = \frac{1}{(n+1)(n+2)} > 0.$$
    La suite $(u_n)$ est donc **strictement croissante**.
    \item Tous les termes sont strictement positifs, on compare le quotient à $1$ :
    $$\frac{v_{n+1}}{v_n} = \frac{3^{n+1}}{n+2} \times \frac{n+1}{3^n} = \frac{3(n+1)}{n+2} = \frac{3n+3}{n+2}.$$
    Or $3n+3 > n+2 \iff 2n > -1$, ce qui est vrai pour tout $n \in \mathbb{N}$. Donc $\dfrac{v_{n+1}}{v_n} > 1$ : la suite $(v_n)$ est **strictement croissante**.
    \item On calcule la différence :
    $$w_{n+1} - w_n = \big[(n+1)^2 - 5(n+1)\big] - \big[n^2 - 5n\big] = 2n + 1 - 5 = 2n - 4 = 2(n-2).$$
    Ce signe dépend de $n$ : pour $n \le 1$ on a $w_{n+1}-w_n < 0$, et pour $n \ge 2$ on a $w_{n+1}-w_n \ge 0$. La suite $(w_n)$ **n'est pas monotone** : elle décroît de $w_0$ à $w_2$ puis croît à partir de $n=2$ (on a $w_2 = -6$, c'est le plus petit terme).
\end{enumerate}

### Exercice 2 : Suite arithmétique
\begin{enonce}
Soit $(u_n)$ une suite arithmétique de raison $r$ telle que $u_3 = 7$ et $u_8 = 22$.
\begin{enumerate}
    \item Déterminer la raison $r$, puis le premier terme $u_0$.
    \item Donner l'expression de $u_n$ en fonction de $n$, et calculer $u_{20}$.
    \item Calculer la somme $S = u_0 + u_1 + \cdots + u_{20}$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item On utilise $u_n = u_p + (n-p)r$ avec $n=8$ et $p=3$ : $u_8 = u_3 + 5r$, donc $22 = 7 + 5r$, d'où
    $$r = \frac{22 - 7}{5} = 3.$$
    Puis $u_0 = u_3 - 3r = 7 - 9 = -2$.
    \item Avec $u_n = u_0 + nr$ : $\;u_n = -2 + 3n$. On vérifie $u_8 = -2 + 24 = 22$. Et $u_{20} = -2 + 3\times 20 = 58$.
    \item La somme de $21$ termes (de $u_0$ à $u_{20}$) vaut :
    $$S = 21 \times \frac{u_0 + u_{20}}{2} = 21 \times \frac{-2 + 58}{2} = 21 \times 28 = 588.$$
\end{enumerate}

### Exercice 3 : Suite géométrique
\begin{enonce}
Soit $(v_n)$ une suite géométrique à termes strictement positifs telle que $v_2 = 12$ et $v_5 = 96$.
\begin{enumerate}
    \item Déterminer la raison $q$, puis le premier terme $v_0$.
    \item Exprimer $v_n$ en fonction de $n$.
    \item Calculer la somme $S = v_0 + v_1 + \cdots + v_8$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item On a $v_5 = v_2 \times q^{5-2} = v_2 \, q^3$, donc $q^3 = \dfrac{96}{12} = 8$, d'où $q = 2$ (la suite étant à termes positifs). Puis $v_0 = \dfrac{v_2}{q^2} = \dfrac{12}{4} = 3$.
    \item $v_n = v_0 \times q^n = 3 \times 2^n$. On vérifie $v_5 = 3 \times 32 = 96$.
    \item La somme de $9$ termes (de $v_0$ à $v_8$) vaut, avec $q = 2 \neq 1$ :
    $$S = v_0 \times \frac{1 - q^{9}}{1 - q} = 3 \times \frac{1 - 2^{9}}{1 - 2} = 3 \times \frac{1 - 512}{-1} = 3 \times 511 = 1533.$$
\end{enumerate}

### Exercice 4 : Suites bornées
\begin{enonce}
\begin{enumerate}
    \item Montrer que la suite $u_n = \dfrac{n+2}{n+1}$, définie pour $n \in \mathbb{N}$, est bornée.
    \item Montrer que la suite $v_n = (-1)^n \dfrac{n}{n+1}$ est bornée.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item On écrit $u_n = \dfrac{(n+1)+1}{n+1} = 1 + \dfrac{1}{n+1}$. Pour tout $n \in \mathbb{N}$, on a $0 < \dfrac{1}{n+1} \le 1$, donc
    $$1 < u_n \le 2.$$
    La suite est **minorée** par $1$ et **majorée** par $2$ : elle est donc **bornée**.
    \item Pour tout $n$, $\left| v_n \right| = \dfrac{n}{n+1} < 1$ car $n < n+1$. On a donc $-1 < v_n < 1$ : la suite est **bornée** (minorée par $-1$, majorée par $1$). Remarque : elle n'est pas monotone, ses termes étant alternativement positifs et négatifs.
\end{enumerate}

### Exercice 5 : Suite récurrente
\begin{enonce}
On considère la suite $(u_n)$ définie par $u_0 = 1$ et, pour tout $n \in \mathbb{N}$ :
$$u_{n+1} = \frac{1}{2}u_n + 3.$$
\begin{enumerate}
    \item Calculer $u_1$, $u_2$ et $u_3$.
    \item On pose $v_n = u_n - 6$. Montrer que $(v_n)$ est géométrique ; préciser sa raison et son premier terme.
    \item En déduire l'expression de $v_n$, puis celle de $u_n$, en fonction de $n$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item $u_1 = \dfrac{1}{2}\times 1 + 3 = \dfrac{7}{2} = 3{,}5$ ; $\;u_2 = \dfrac{1}{2}\times 3{,}5 + 3 = 4{,}75$ ; $\;u_3 = \dfrac{1}{2}\times 4{,}75 + 3 = 5{,}375$.
    \item Pour tout $n$ :
    $$v_{n+1} = u_{n+1} - 6 = \frac{1}{2}u_n + 3 - 6 = \frac{1}{2}u_n - 3 = \frac{1}{2}(u_n - 6) = \frac{1}{2}v_n.$$
    Donc $(v_n)$ est géométrique de raison $q = \dfrac{1}{2}$ et de premier terme $v_0 = u_0 - 6 = 1 - 6 = -5$.
    \item On a $v_n = v_0 \, q^n = -5 \left(\dfrac{1}{2}\right)^n$, d'où
    $$u_n = v_n + 6 = 6 - 5\left(\frac{1}{2}\right)^n.$$
    On vérifie $u_0 = 6 - 5 = 1$ et $u_1 = 6 - \dfrac{5}{2} = 3{,}5$.
\end{enumerate}

### Exercice 6 : Somme arithmétique
\begin{enonce}
Calculer la somme $S = 5 + 8 + 11 + 14 + \cdots + 101$.
\end{enonce}

\textbf{Solution :}
Les termes forment une suite arithmétique de premier terme $5$ et de raison $r = 3$ (on ajoute $3$ d'un terme au suivant). Le dernier terme est $101$ ; le nombre de termes est :
$$N = \frac{101 - 5}{3} + 1 = \frac{96}{3} + 1 = 32 + 1 = 33.$$
La somme vaut donc :
$$S = N \times \frac{\text{premier} + \text{dernier}}{2} = 33 \times \frac{5 + 101}{2} = 33 \times 53 = 1749.$$
