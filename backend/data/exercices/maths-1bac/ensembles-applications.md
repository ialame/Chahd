### Exercice 1 : Opérations sur des ensembles
\begin{enonce}
On travaille dans $E = \{0, 1, 2, 3, 4, 5, 6, 7\}$ et on considère les parties
$$A = \{0, 1, 2, 3, 4\}, \qquad B = \{3, 4, 5, 6\}.$$
\begin{enumerate}
    \item Déterminer $A \cap B$, $A \cup B$, puis $\overline{A}$ et $\overline{B}$ (complémentaires dans $E$).
    \item Calculer $A \setminus B$ et $B \setminus A$.
    \item Vérifier sur cet exemple la loi de De Morgan $\overline{A \cup B} = \overline{A} \cap \overline{B}$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Les éléments communs sont $3$ et $4$, donc $A \cap B = \{3, 4\}$. En réunissant tous les éléments :
$$A \cup B = \{0, 1, 2, 3, 4, 5, 6\}.$$
Le complémentaire contient les éléments de $E$ absents de la partie :
$$\overline{A} = \{5, 6, 7\}, \qquad \overline{B} = \{0, 1, 2, 7\}.$$
    \item $A \setminus B$ regroupe les éléments de $A$ qui ne sont pas dans $B$, et inversement :
$$A \setminus B = \{0, 1, 2\}, \qquad B \setminus A = \{5, 6\}.$$
    \item D'une part $\overline{A \cup B} = E \setminus \{0,1,2,3,4,5,6\} = \{7\}$. D'autre part $\overline{A} \cap \overline{B} = \{5,6,7\} \cap \{0,1,2,7\} = \{7\}$. Les deux ensembles coïncident.
\end{enumerate}

### Exercice 2 : Une égalité d'ensembles par double inclusion
\begin{enonce}
Soient $A$ et $B$ deux parties d'un ensemble $E$. Démontrer l'égalité
$$A \setminus (A \cap B) = A \setminus B.$$
\end{enonce}

\textbf{Solution :}
On rappelle que $A \setminus X = A \cap \overline{X}$. On procède par double inclusion sur les éléments.

\emph{Inclusion $\subset$.} Soit $x \in A \setminus (A \cap B)$. Alors $x \in A$ et $x \notin A \cap B$. Comme $x \in A$, la condition $x \notin A \cap B$ impose $x \notin B$ (sinon on aurait $x \in A$ et $x \in B$, donc $x \in A\cap B$). Ainsi $x \in A$ et $x \notin B$, c'est-à-dire $x \in A \setminus B$.

\emph{Inclusion $\supset$.} Soit $x \in A \setminus B$, donc $x \in A$ et $x \notin B$. En particulier $x \notin A \cap B$ (puisque $x \notin B$). Donc $x \in A$ et $x \notin A \cap B$, soit $x \in A \setminus (A \cap B)$.

Les deux inclusions donnent l'égalité annoncée.

### Exercice 3 : Ensemble des parties et produit cartésien
\begin{enonce}
On pose $E = \{a, b, c\}$ et $F = \{1, 2\}$.
\begin{enumerate}
    \item Combien $\mathcal{P}(E)$ possède-t-il d'éléments ? Les écrire tous.
    \item Déterminer le produit cartésien $E \times F$ ; combien a-t-il d'éléments ?
    \item Donner deux parties $X$ de $E$ telles que $X \in \mathcal{P}(E)$ et $\operatorname{card}(X) = 2$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Comme $\operatorname{card}(E) = 3$, on a $\operatorname{card}\big(\mathcal{P}(E)\big) = 2^3 = 8$. Ses éléments sont :
$$\mathcal{P}(E) = \big\{ \varnothing,\ \{a\},\ \{b\},\ \{c\},\ \{a,b\},\ \{a,c\},\ \{b,c\},\ \{a,b,c\} \big\}.$$
    \item On forme tous les couples $(x, y)$ avec $x \in E$ et $y \in F$ :
$$E \times F = \{ (a,1), (a,2), (b,1), (b,2), (c,1), (c,2) \}.$$
Il y a $3 \times 2 = 6$ éléments.
    \item Par exemple $X = \{a, b\}$ et $X = \{b, c\}$ : ce sont bien des parties de $E$ à deux éléments, donc des éléments de $\mathcal{P}(E)$.
\end{enumerate}

### Exercice 4 : Nature d'une application affine
\begin{enonce}
On considère l'application $f : \mathbb{R} \to \mathbb{R}$ définie par $f(x) = 3x - 5$.
\begin{enumerate}
    \item Montrer que $f$ est injective.
    \item Montrer que $f$ est surjective.
    \item En déduire que $f$ est bijective et déterminer sa réciproque $f^{-1}$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Soient $x_1, x_2 \in \mathbb{R}$ tels que $f(x_1) = f(x_2)$. Alors $3x_1 - 5 = 3x_2 - 5$, d'où $3x_1 = 3x_2$ puis $x_1 = x_2$. Donc $f$ est injective.
    \item Soit $y \in \mathbb{R}$ quelconque. On cherche $x$ tel que $3x - 5 = y$, ce qui donne $x = \dfrac{y + 5}{3}$. Ce réel $x$ existe et vérifie $f(x) = y$ : tout $y$ a un antécédent, donc $f$ est surjective.
    \item Injective et surjective, $f$ est bijective. Chaque $y$ a l'unique antécédent $x = \dfrac{y+5}{3}$, donc
$$f^{-1} : \mathbb{R} \to \mathbb{R}, \quad y \longmapsto \frac{y + 5}{3}.$$
\end{enumerate}

### Exercice 5 : Composée de deux applications
\begin{enonce}
On définit $f : \mathbb{R} \to \mathbb{R}$ par $f(x) = x + 1$ et $g : \mathbb{R} \to \mathbb{R}$ par $g(x) = x^2$.
\begin{enumerate}
    \item Déterminer les applications $g \circ f$ et $f \circ g$.
    \item La composition est-elle commutative ici ? Justifier par un calcul en $x = 1$.
    \item Calculer $(g \circ f)(2)$ et $(f \circ g)(2)$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Pour tout $x \in \mathbb{R}$ :
$$(g \circ f)(x) = g\big(f(x)\big) = g(x+1) = (x+1)^2,$$
$$(f \circ g)(x) = f\big(g(x)\big) = f(x^2) = x^2 + 1.$$
    \item Non : $(g\circ f)(1) = (1+1)^2 = 4$ tandis que $(f\circ g)(1) = 1^2 + 1 = 2$. Comme les deux résultats diffèrent, $g \circ f \neq f \circ g$.
    \item $(g \circ f)(2) = (2+1)^2 = 9$ et $(f \circ g)(2) = 2^2 + 1 = 5$.
\end{enumerate}

### Exercice 6 : Caractérisation de l'inclusion
\begin{enonce}
Soient $A$ et $B$ deux parties d'un ensemble $E$. Démontrer l'équivalence
$$A \subset B \iff A \cup B = B.$$
\end{enonce}

\textbf{Solution :}
On montre les deux implications.

\emph{Sens $\Rightarrow$.} Supposons $A \subset B$. On a toujours $B \subset A \cup B$. Réciproquement, soit $x \in A \cup B$ : alors $x \in A$ ou $x \in B$ ; dans le premier cas $x \in A \subset B$, dans le second $x \in B$. Dans tous les cas $x \in B$, donc $A \cup B \subset B$. Par double inclusion, $A \cup B = B$.

\emph{Sens $\Leftarrow$.} Supposons $A \cup B = B$. Soit $x \in A$. Alors $x \in A \cup B = B$, donc $x \in B$. On a montré $A \subset B$.

Les deux implications établissent l'équivalence.
