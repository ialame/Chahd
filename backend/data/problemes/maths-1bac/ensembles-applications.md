### Problème 1 : Calcul sur les ensembles et différence symétrique
\begin{enonce}
Soient $A$, $B$ et $C$ trois parties d'un ensemble $E$. On définit la \textbf{différence symétrique} de $A$ et $B$ par
$$A \,\triangle\, B = (A \setminus B) \cup (B \setminus A).$$
\begin{enumerate}
    \item Dans $E = \{1,2,3,4,5,6\}$, avec $A = \{1,2,3,4\}$ et $B = \{3,4,5\}$, calculer $A \,\triangle\, B$.
    \item Démontrer que $A \,\triangle\, B = (A \cup B) \setminus (A \cap B)$.
    \item En déduire que $A \,\triangle\, B = \varnothing$ si et seulement si $A = B$.
    \item Démontrer la loi de distributivité $A \cap (B \cup C) = (A \cap B) \cup (A \cap C)$ par double inclusion.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item On a $A \setminus B = \{1, 2\}$ et $B \setminus A = \{5\}$, donc
$$A \,\triangle\, B = \{1, 2, 5\}.$$
    \item On utilise $A \setminus B = A \cap \overline{B}$ et $B \setminus A = B \cap \overline{A}$. Un élément $x$ appartient à $A \,\triangle\, B$ si et seulement si ($x \in A$ et $x \notin B$) ou ($x \in B$ et $x \notin A$), c'est-à-dire si $x$ est dans exactement l'un des deux ensembles. Cela revient à dire que $x \in A \cup B$ (il est dans au moins l'un) mais $x \notin A \cap B$ (il n'est pas dans les deux). Donc
$$A \,\triangle\, B = (A \cup B) \setminus (A \cap B).$$
    \item Si $A = B$, alors $A \cup B = A \cap B$, donc $(A\cup B)\setminus(A\cap B) = \varnothing$ d'après la question précédente. Réciproquement, si $A \,\triangle\, B = \varnothing$, alors $A \setminus B = \varnothing$ et $B \setminus A = \varnothing$. La première égalité donne $A \subset B$, la seconde $B \subset A$, d'où $A = B$.
    \item \emph{Inclusion $\subset$.} Soit $x \in A \cap (B \cup C)$ : alors $x \in A$ et ($x \in B$ ou $x \in C$). Si $x \in B$, alors $x \in A \cap B$ ; si $x \in C$, alors $x \in A \cap C$. Dans les deux cas $x \in (A \cap B) \cup (A \cap C)$.

\emph{Inclusion $\supset$.} Soit $x \in (A \cap B) \cup (A \cap C)$. Alors $x \in A \cap B$ ou $x \in A \cap C$ ; dans les deux cas $x \in A$, et de plus $x \in B$ ou $x \in C$, soit $x \in B \cup C$. Donc $x \in A \cap (B \cup C)$.

Par double inclusion, l'égalité est démontrée.
\end{enumerate}

### Problème 2 : Étude complète d'une application
\begin{enonce}
On considère l'application
$$f : \mathbb{R} \setminus \{1\} \longrightarrow \mathbb{R}, \qquad f(x) = \frac{2x + 1}{x - 1}.$$
\begin{enumerate}
    \item Montrer que $f$ est injective.
    \item Déterminer l'ensemble des valeurs prises par $f$, c'est-à-dire l'ensemble des $y \in \mathbb{R}$ ayant un antécédent. La valeur $y = 2$ est-elle atteinte ?
    \item En déduire que $f$ réalise une bijection de $\mathbb{R} \setminus \{1\}$ sur $\mathbb{R} \setminus \{2\}$, et déterminer la réciproque $f^{-1}$.
    \item Vérifier que $f \circ f^{-1} = \operatorname{id}$ sur $\mathbb{R} \setminus \{2\}$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Soient $x_1, x_2 \in \mathbb{R}\setminus\{1\}$ avec $f(x_1) = f(x_2)$, soit $\dfrac{2x_1+1}{x_1-1} = \dfrac{2x_2+1}{x_2-1}$. Par produit en croix :
$$(2x_1+1)(x_2-1) = (2x_2+1)(x_1-1).$$
En développant : $2x_1 x_2 - 2x_1 + x_2 - 1 = 2x_1 x_2 - 2x_2 + x_1 - 1$, d'où $-2x_1 + x_2 = -2x_2 + x_1$, soit $3x_2 = 3x_1$ et $x_1 = x_2$. Donc $f$ est injective.
    \item Soit $y \in \mathbb{R}$. On résout $y = \dfrac{2x+1}{x-1}$ d'inconnue $x \neq 1$ :
$$y(x-1) = 2x + 1 \iff yx - y = 2x + 1 \iff x(y - 2) = y + 1.$$
Si $y \neq 2$, on obtient l'unique $x = \dfrac{y+1}{y-2}$ ; on vérifie que $x \neq 1$ car $\dfrac{y+1}{y-2} = 1$ donnerait $y+1 = y-2$, impossible. Si $y = 2$, l'équation devient $0 = 3$, sans solution : la valeur $y = 2$ n'est pas atteinte. L'ensemble des valeurs prises est donc $\mathbb{R} \setminus \{2\}$.
    \item Pour tout $y \in \mathbb{R}\setminus\{2\}$, l'équation $f(x) = y$ admet l'unique solution $x = \dfrac{y+1}{y-2}$ dans $\mathbb{R}\setminus\{1\}$. L'application $f$ est donc une bijection de $\mathbb{R}\setminus\{1\}$ sur $\mathbb{R}\setminus\{2\}$, de réciproque
$$f^{-1} : \mathbb{R}\setminus\{2\} \longrightarrow \mathbb{R}\setminus\{1\}, \qquad y \longmapsto \frac{y+1}{y-2}.$$
    \item Pour $y \neq 2$, posons $x = f^{-1}(y) = \dfrac{y+1}{y-2}$. Alors
$$f(x) = \frac{2x+1}{x-1} = \frac{2\cdot\frac{y+1}{y-2} + 1}{\frac{y+1}{y-2} - 1} = \frac{\frac{2(y+1) + (y-2)}{y-2}}{\frac{(y+1)-(y-2)}{y-2}} = \frac{2y+2+y-2}{y+1-y+2} = \frac{3y}{3} = y.$$
Donc $f\big(f^{-1}(y)\big) = y$, c'est-à-dire $f \circ f^{-1} = \operatorname{id}$ sur $\mathbb{R}\setminus\{2\}$.
\end{enumerate}

### Problème 3 : Composition, injectivité et surjectivité
\begin{enonce}
Soient $E$, $F$, $G$ trois ensembles et deux applications $f : E \to F$ et $g : F \to G$.
\begin{enumerate}
    \item Démontrer que si $g \circ f$ est injective, alors $f$ est injective.
    \item Démontrer que si $g \circ f$ est surjective, alors $g$ est surjective.
    \item On prend $E = F = G = \mathbb{R}$, $f(x) = e^{x}$ et $g(x) = x^2$. Calculer $g \circ f$. L'application $g \circ f$ est-elle injective ? $g$ est-elle injective ? Que peut-on conclure quant à la réciproque de la propriété de la question 1 ?
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Supposons $g \circ f$ injective. Soient $x_1, x_2 \in E$ tels que $f(x_1) = f(x_2)$. En appliquant $g$, on obtient $g\big(f(x_1)\big) = g\big(f(x_2)\big)$, soit $(g \circ f)(x_1) = (g \circ f)(x_2)$. L'injectivité de $g \circ f$ donne $x_1 = x_2$. Donc $f$ est injective.
    \item Supposons $g \circ f$ surjective. Soit $z \in G$ quelconque. Comme $g \circ f$ est surjective, il existe $x \in E$ tel que $(g \circ f)(x) = z$, c'est-à-dire $g\big(f(x)\big) = z$. En posant $y = f(x) \in F$, on a $g(y) = z$ : tout $z \in G$ a un antécédent par $g$, donc $g$ est surjective.
    \item Pour tout $x \in \mathbb{R}$ : $(g \circ f)(x) = g(e^{x}) = (e^{x})^2 = e^{2x}$. La fonction $x \mapsto e^{2x}$ est strictement croissante sur $\mathbb{R}$, donc $g \circ f$ est injective. En revanche $g(x) = x^2$ n'est pas injective, car $g(-1) = g(1) = 1$. Ceci montre que la réciproque de la propriété de la question 1 est fausse : $g \circ f$ peut être injective sans que $g$ le soit (seule $f$ l'est nécessairement).
\end{enumerate}
