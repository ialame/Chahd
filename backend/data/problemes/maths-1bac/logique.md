### Problème 1 : Étude logique d'une implication
\begin{enonce}
Soit $n$ un entier naturel. On considère l'implication :
$$\mathcal{I} : \quad \big(n \text{ est divisible par } 6\big) \Rightarrow \big(n \text{ est divisible par } 3\big).$$
\begin{enumerate}
    \item Énoncer la réciproque de $\mathcal{I}$, puis donner un contre-exemple montrant qu'elle est fausse.
    \item Énoncer la contraposée de $\mathcal{I}$.
    \item Démontrer $\mathcal{I}$ par un raisonnement direct (déduction).
    \item À l'aide d'une table de vérité, vérifier que $\mathcal{I}$ et sa contraposée ont toujours la même valeur de vérité.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Notons $P : $ « $n$ est divisible par $6$ » et $Q : $ « $n$ est divisible par $3$ ». La réciproque est $Q \Rightarrow P$ : « si $n$ est divisible par $3$, alors $n$ est divisible par $6$ ». Elle est fausse : pour $n = 3$, $3$ est divisible par $3$ mais pas par $6$. C'est un contre-exemple.
    \item La contraposée est $\overline{Q} \Rightarrow \overline{P}$ : « si $n$ n'est pas divisible par $3$, alors $n$ n'est pas divisible par $6$ ».
    \item Supposons $P$ vraie : $n$ est divisible par $6$, donc il existe $k \in \N$ tel que $n = 6k$. Alors $n = 3 \times (2k)$, donc $n$ est divisible par $3$ : $Q$ est vraie. L'implication $\mathcal{I}$ est donc démontrée.
    \item On dresse la table de vérité :
$$
\begin{array}{|c|c|c|c|c|c|}
\hline
P & Q & P \Rightarrow Q & \overline{Q} & \overline{P} & \overline{Q} \Rightarrow \overline{P} \\
\hline
\mathbf{V} & \mathbf{V} & \mathbf{V} & \mathbf{F} & \mathbf{F} & \mathbf{V} \\
\mathbf{V} & \mathbf{F} & \mathbf{F} & \mathbf{V} & \mathbf{F} & \mathbf{F} \\
\mathbf{F} & \mathbf{V} & \mathbf{V} & \mathbf{F} & \mathbf{V} & \mathbf{V} \\
\mathbf{F} & \mathbf{F} & \mathbf{V} & \mathbf{V} & \mathbf{V} & \mathbf{V} \\
\hline
\end{array}
$$
Les colonnes $P \Rightarrow Q$ et $\overline{Q} \Rightarrow \overline{P}$ sont identiques : une implication et sa contraposée sont toujours équivalentes.
\end{enumerate}

### Problème 2 : Quantificateurs et négation
\begin{enonce}
On considère les propositions suivantes portant sur les réels :
$$A : \forall x \in \R,\ \exists y \in \R,\ x y = 1, \qquad B : \exists x \in \R,\ \forall y \in \R,\ x + y = y.$$
\begin{enumerate}
    \item Écrire la négation de $A$, puis déterminer si $A$ est vraie ou fausse en justifiant.
    \item Écrire la négation de $B$, puis déterminer si $B$ est vraie ou fausse en justifiant.
    \item On considère $C : \forall x \in \R,\ \big(x^2 = x \Rightarrow x = 1\big)$. Écrire la négation de $C$, puis conclure sur la valeur de vérité de $C$.
    \item Énoncer une proposition $D$ utilisant deux quantificateurs qui soit vraie, et dont la version obtenue en échangeant l'ordre des quantificateurs soit fausse.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item $\overline{A} : \exists x \in \R,\ \forall y \in \R,\ xy \neq 1$. La proposition $A$ est \textbf{fausse} : pour $x = 0$, on a $xy = 0 \neq 1$ pour tout $y$. La valeur $x = 0$ rend $\overline{A}$ vraie, donc $A$ est fausse.
    \item $\overline{B} : \forall x \in \R,\ \exists y \in \R,\ x + y \neq y$. La proposition $B$ est \textbf{vraie} : pour $x = 0$, on a $0 + y = y$ pour tout $y$. Le réel $x = 0$ convient, donc $B$ est vraie.
    \item En utilisant $\overline{P \Rightarrow Q} = P \wedge \overline{Q}$ : $\overline{C} : \exists x \in \R,\ \big(x^2 = x \text{ et } x \neq 1\big)$. Or $x^2 = x \Leftrightarrow x(x-1) = 0 \Leftrightarrow (x = 0 \text{ ou } x = 1)$. Le réel $x = 0$ vérifie $x^2 = x$ et $x \neq 1$ : $\overline{C}$ est vraie, donc $C$ est \textbf{fausse}.
    \item Par exemple $D : \forall x \in \R,\ \exists y \in \R,\ y > x$ est vraie (prendre $y = x + 1$). En échangeant l'ordre, $\exists y \in \R,\ \forall x \in \R,\ y > x$ est fausse, car aucun réel n'est strictement supérieur à tous les réels. Cela montre que l'ordre des quantificateurs de natures différentes est essentiel.
\end{enumerate}

### Problème 3 : Récurrence et raisonnement par l'absurde
\begin{enonce}
On considère la suite définie par $u_0 = 2$ et, pour tout entier $n \ge 0$, $u_{n+1} = 2 u_n - 1$.
\begin{enumerate}
    \item Calculer $u_1$, $u_2$ et $u_3$, puis conjecturer une expression de $u_n$ en fonction de $n$.
    \item Démontrer cette conjecture par récurrence.
    \item En déduire, par un raisonnement par l'absurde, que pour tout entier $n \ge 1$, $u_n$ est impair.
    \item Démontrer par récurrence que pour tout entier $n \ge 0$, $u_n \ge n + 1$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item $u_1 = 2 \times 2 - 1 = 3$, $u_2 = 2 \times 3 - 1 = 5$, $u_3 = 2 \times 5 - 1 = 9$. La suite $2, 3, 5, 9, \dots$ suggère $u_n = 2^n + 1$ (on vérifie : $2^0 + 1 = 2$, $2^1 + 1 = 3$, $2^2 + 1 = 5$, $2^3 + 1 = 9$). On conjecture $u_n = 2^n + 1$.
    \item Notons $P(n) : u_n = 2^n + 1$.

    \textbf{Initialisation.} Pour $n = 0$, $u_0 = 2$ et $2^0 + 1 = 2$. Donc $P(0)$ est vraie.

    \textbf{Hérédité.} Supposons $P(n)$ vraie pour un entier $n \ge 0$ fixé, soit $u_n = 2^n + 1$. Alors :
    $$u_{n+1} = 2 u_n - 1 = 2(2^n + 1) - 1 = 2^{n+1} + 2 - 1 = 2^{n+1} + 1.$$
    C'est exactement $P(n+1)$.

    \textbf{Conclusion.} Par récurrence, $u_n = 2^n + 1$ pour tout entier $n \ge 0$.
    \item Soit $n \ge 1$. Supposons par l'absurde que $u_n$ soit pair. Comme $u_n = 2^n + 1$, on aurait $2^n = u_n - 1$, donc $2^n$ serait impair (différence d'un pair et de $1$). Or pour tout $n \ge 1$, $2^n = 2 \times 2^{n-1}$ est pair. On aboutit à une contradiction : $2^n$ serait à la fois pair et impair. L'hypothèse est donc impossible, et $u_n$ est impair pour tout $n \ge 1$.
    \item Notons $Q(n) : u_n \ge n + 1$.

    \textbf{Initialisation.} Pour $n = 0$, $u_0 = 2 \ge 0 + 1 = 1$. Donc $Q(0)$ est vraie.

    \textbf{Hérédité.} Supposons $Q(n)$ vraie pour un entier $n \ge 0$ fixé, soit $u_n \ge n + 1$. Comme $u_n = 2^n + 1 \ge 2$, on a $u_n \ge 1$, donc :
    $$u_{n+1} = 2 u_n - 1 \ge 2(n + 1) - 1 = 2n + 1 = (n + 2) + n \ge n + 2.$$
    Ainsi $u_{n+1} \ge (n+1) + 1$, ce qui est $Q(n+1)$.

    \textbf{Conclusion.} Par récurrence, $u_n \ge n + 1$ pour tout entier $n \ge 0$.
\end{enumerate}
