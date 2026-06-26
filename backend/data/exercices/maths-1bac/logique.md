### Exercice 1 : Tables de vérité
\begin{enonce}
Soient $P$ et $Q$ deux propositions.
\begin{enumerate}
    \item Dresser la table de vérité de la proposition $R = (P \wedge \overline{Q})$.
    \item Dresser la table de vérité de la proposition $S = (\overline{P} \vee Q)$.
    \item En comparant les deux tables, reconnaître à quelle proposition usuelle est égale $S$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item On envisage les quatre combinaisons possibles de $P$ et $Q$ :
$$
\begin{array}{|c|c|c|c|}
\hline
P & Q & \overline{Q} & P \wedge \overline{Q} \\
\hline
\mathbf{V} & \mathbf{V} & \mathbf{F} & \mathbf{F} \\
\mathbf{V} & \mathbf{F} & \mathbf{V} & \mathbf{V} \\
\mathbf{F} & \mathbf{V} & \mathbf{F} & \mathbf{F} \\
\mathbf{F} & \mathbf{F} & \mathbf{V} & \mathbf{F} \\
\hline
\end{array}
$$
$R$ n'est vraie que dans le cas $P$ vraie et $Q$ fausse.
    \item De même :
$$
\begin{array}{|c|c|c|c|}
\hline
P & Q & \overline{P} & \overline{P} \vee Q \\
\hline
\mathbf{V} & \mathbf{V} & \mathbf{F} & \mathbf{V} \\
\mathbf{V} & \mathbf{F} & \mathbf{F} & \mathbf{F} \\
\mathbf{F} & \mathbf{V} & \mathbf{V} & \mathbf{V} \\
\mathbf{F} & \mathbf{F} & \mathbf{V} & \mathbf{V} \\
\hline
\end{array}
$$
    \item La colonne de $S$ coïncide exactement avec la table de vérité de l'implication $P \Rightarrow Q$ (fausse seulement quand $P$ est vraie et $Q$ fausse). On retrouve l'équivalence du cours : $\big(P \Rightarrow Q\big) = \big(\overline{P} \vee Q\big)$. On remarque d'ailleurs que $R$ est la négation de $S$, ce qui illustre $\overline{P \Rightarrow Q} = P \wedge \overline{Q}$.
\end{enumerate}

### Exercice 2 : Négation de propositions quantifiées
\begin{enonce}
Écrire la négation de chacune des propositions suivantes, puis préciser, en justifiant, si la proposition de départ est vraie ou fausse.
\begin{enumerate}
    \item $A : \forall x \in \R,\ x^2 + 1 > 0$.
    \item $B : \exists x \in \R,\ x^2 = -1$.
    \item $C : \forall x \in \R,\ \exists y \in \R,\ x + y = 0$.
    \item $D : \exists n \in \N,\ \forall m \in \N,\ m \le n$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
On échange les quantificateurs et on nie le prédicat.
\begin{enumerate}
    \item $\overline{A} : \exists x \in \R,\ x^2 + 1 \le 0$. La proposition $A$ est \textbf{vraie} car $x^2 \ge 0$ donc $x^2 + 1 \ge 1 > 0$ pour tout réel.
    \item $\overline{B} : \forall x \in \R,\ x^2 \neq -1$. La proposition $B$ est \textbf{fausse} : un carré de réel est toujours positif, donc ne peut valoir $-1$ ; c'est $\overline{B}$ qui est vraie.
    \item $\overline{C} : \exists x \in \R,\ \forall y \in \R,\ x + y \neq 0$. La proposition $C$ est \textbf{vraie} : pour $x$ fixé, il suffit de prendre $y = -x$ qui donne $x + y = 0$.
    \item $\overline{D} : \forall n \in \N,\ \exists m \in \N,\ m > n$. La proposition $D$ est \textbf{fausse} : il n'existe pas d'entier plus grand que tous les autres (pour tout $n$, l'entier $m = n+1$ le dépasse). C'est donc $\overline{D}$ qui est vraie.
\end{enumerate}

### Exercice 3 : Équivalences logiques
\begin{enonce}
Soient $P$ et $Q$ deux propositions.
\begin{enumerate}
    \item À l'aide d'une table de vérité, montrer la loi de De Morgan $\overline{P \vee Q} = \overline{P} \wedge \overline{Q}$.
    \item En déduire la négation de la proposition « $x \ge -2$ ou $x \le 5$ ».
    \item Montrer que la proposition $\big(P \Rightarrow Q\big) \wedge \big(P \Rightarrow \overline{Q}\big)$ est équivalente à $\overline{P}$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item On compare les deux membres :
$$
\begin{array}{|c|c|c|c|c|}
\hline
P & Q & \overline{P \vee Q} & \overline{P} & \overline{P} \wedge \overline{Q} \\
\hline
\mathbf{V} & \mathbf{V} & \mathbf{F} & \mathbf{F} & \mathbf{F} \\
\mathbf{V} & \mathbf{F} & \mathbf{F} & \mathbf{F} & \mathbf{F} \\
\mathbf{F} & \mathbf{V} & \mathbf{F} & \mathbf{V} & \mathbf{F} \\
\mathbf{F} & \mathbf{F} & \mathbf{V} & \mathbf{V} & \mathbf{V} \\
\hline
\end{array}
$$
Les colonnes $\overline{P \vee Q}$ et $\overline{P} \wedge \overline{Q}$ sont identiques : l'égalité est établie.
    \item La négation d'un « ou » est le « et » des négations : la négation de « $x \ge -2$ ou $x \le 5$ » est « $x < -2$ \textbf{et} $x > 5$ », ce qui est impossible. La proposition de départ est donc toujours vraie (tout réel vérifie au moins l'une des deux conditions).
    \item En utilisant $\big(P \Rightarrow Q\big) = \overline{P} \vee Q$ :
$$\big(P \Rightarrow Q\big) \wedge \big(P \Rightarrow \overline{Q}\big) = \big(\overline{P} \vee Q\big) \wedge \big(\overline{P} \vee \overline{Q}\big) = \overline{P} \vee \big(Q \wedge \overline{Q}\big).$$
Or $Q \wedge \overline{Q}$ est toujours fausse, donc l'expression vaut $\overline{P} \vee \mathbf{F} = \overline{P}$. On peut aussi le vérifier par une table de vérité : l'expression n'est vraie que lorsque $P$ est fausse.
\end{enumerate}

### Exercice 4 : Raisonnement par contraposée
\begin{enonce}
Soit $n$ un entier naturel.
\begin{enumerate}
    \item Énoncer la contraposée de l'implication : « si $n^2$ est impair, alors $n$ est impair ».
    \item Démontrer cette implication par contraposée.
    \item Soit $x$ un réel. Démontrer par contraposée que « si $x \neq 1$, alors $x^2 - 2x + 1 \neq 0$ ».
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item La contraposée de $P \Rightarrow Q$ est $\overline{Q} \Rightarrow \overline{P}$. Ici : « si $n$ est pair, alors $n^2$ est pair ».
    \item Démontrons la contraposée. Supposons $n$ pair : il existe $k \in \N$ tel que $n = 2k$. Alors $n^2 = 4k^2 = 2(2k^2)$ est pair. La contraposée est vraie, donc l'implication initiale, qui lui est équivalente, est vraie aussi.
    \item La contraposée est : « si $x^2 - 2x + 1 = 0$, alors $x = 1$ ». Supposons $x^2 - 2x + 1 = 0$. Comme $x^2 - 2x + 1 = (x-1)^2$, on a $(x-1)^2 = 0$, donc $x - 1 = 0$, c'est-à-dire $x = 1$. La contraposée étant vraie, l'implication de départ l'est également.
\end{enumerate}

### Exercice 5 : Absurde et contre-exemple
\begin{enonce}
\begin{enumerate}
    \item Démontrer par l'absurde qu'il n'existe pas de plus grand entier naturel.
    \item La proposition « pour tout réel $x$, $\sqrt{x^2} = x$ » est-elle vraie ? Justifier.
    \item La proposition « pour tous réels $a$ et $b$, si $a^2 = b^2$ alors $a = b$ » est-elle vraie ? Justifier.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Supposons par l'absurde qu'il existe un plus grand entier naturel, noté $N$. Alors $N + 1$ est aussi un entier naturel et $N + 1 > N$, ce qui contredit le fait que $N$ soit le plus grand. Cette contradiction prouve qu'un tel entier n'existe pas.
    \item La proposition est \textbf{fausse}. Il suffit d'un contre-exemple : pour $x = -3$, on a $\sqrt{(-3)^2} = \sqrt{9} = 3 \neq -3$. En réalité $\sqrt{x^2} = |x|$.
    \item La proposition est \textbf{fausse}. Contre-exemple : $a = 2$ et $b = -2$ vérifient $a^2 = b^2 = 4$, mais $a \neq b$. On a seulement $a^2 = b^2 \Leftrightarrow (a = b \text{ ou } a = -b)$.
\end{enumerate}

### Exercice 6 : Raisonnement par récurrence
\begin{enonce}
\begin{enumerate}
    \item Démontrer par récurrence que pour tout entier $n \ge 1$ :
    $$1 + 3 + 5 + \cdots + (2n - 1) = n^2.$$
    \item Démontrer par récurrence que pour tout entier $n \ge 0$, $2^n \ge n + 1$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Notons $P(n) : 1 + 3 + \cdots + (2n-1) = n^2$.

    \textbf{Initialisation.} Pour $n = 1$, le membre de gauche vaut $1$ et le membre de droite $1^2 = 1$. Donc $P(1)$ est vraie.

    \textbf{Hérédité.} Supposons $P(n)$ vraie pour un entier $n \ge 1$ fixé. Alors :
    $$\underbrace{1 + 3 + \cdots + (2n-1)}_{= \,n^2} + \big(2(n+1) - 1\big) = n^2 + (2n + 1) = (n+1)^2.$$
    C'est exactement $P(n+1)$.

    \textbf{Conclusion.} D'après le principe de récurrence, $P(n)$ est vraie pour tout $n \ge 1$.
    \item Notons $P(n) : 2^n \ge n + 1$.

    \textbf{Initialisation.} Pour $n = 0$, $2^0 = 1 \ge 0 + 1 = 1$. Donc $P(0)$ est vraie.

    \textbf{Hérédité.} Supposons $P(n)$ vraie pour un entier $n \ge 0$ fixé, soit $2^n \ge n + 1$. Alors :
    $$2^{n+1} = 2 \times 2^n \ge 2(n+1) = 2n + 2 = (n + 2) + n \ge n + 2,$$
    car $n \ge 0$. Donc $2^{n+1} \ge (n+1) + 1$, ce qui est $P(n+1)$.

    \textbf{Conclusion.} Par récurrence, $2^n \ge n + 1$ pour tout entier $n \ge 0$.
\end{enumerate}
