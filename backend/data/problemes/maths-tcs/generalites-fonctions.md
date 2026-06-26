### Problème 1 : Optimisation d'une aire (fonction carré)
\begin{enonce}
Un agriculteur dispose de $40$ mètres de clôture pour entourer un champ \textbf{rectangulaire}. On note $x$ (en mètres) la longueur d'un des côtés.
\begin{enumerate}
    \item Justifier que $x$ appartient à l'intervalle $]0, 20[$.
    \item Exprimer l'aire $A(x)$ du champ en fonction de $x$.
    \item Vérifier que $A(x) = -(x-10)^2 + 100$, puis en déduire l'aire maximale possible et les dimensions du champ correspondant.
    \item Dresser le tableau de variations de $A$ sur $]0, 20[$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Le périmètre vaut $40$, donc la somme de deux côtés consécutifs est $20$. Si un côté mesure $x$, l'autre mesure $20 - x$. Pour que le rectangle existe, il faut $x > 0$ et $20 - x > 0$, soit $0 < x < 20$. Donc $x \in \,]0, 20[$.
    \item L'aire est le produit des deux côtés : $A(x) = x(20 - x) = 20x - x^2$.
    \item En développant : $-(x-10)^2 + 100 = -(x^2 - 20x + 100) + 100 = -x^2 + 20x = A(x)$. L'égalité est vérifiée. Comme $(x-10)^2 \ge 0$, on a $A(x) = 100 - (x-10)^2 \le 100$, avec égalité lorsque $x = 10$. L'aire maximale est donc $\mathbf{100\ \text{m}^2}$, atteinte pour $x = 10$ : le champ est alors un \textbf{carré} de côté $10$ m.
    \item Par le taux de variation, $A$ est croissante sur $]0, 10]$ et décroissante sur $[10, 20[$ :
\end{enumerate}

| $x$ | $0$ | | $10$ | | $20$ |
|---|---|---|---|---|---|
| $A(x)$ | | $\nearrow$ | $100$ | $\searrow$ | |

### Problème 2 : Étude d'une fonction avec valeur absolue
\begin{enonce}
On considère la fonction $f$ définie sur $\mathbb{R}$ par $f(x) = |x - 2| + 1$.
\begin{enumerate}
    \item Écrire $f(x)$ sans valeur absolue, en distinguant deux cas.
    \item La fonction $f$ est-elle paire ? impaire ?
    \item En calculant le taux de variation de $f$, étudier son sens de variation sur $]-\infty, 2]$ puis sur $[2, +\infty[$.
    \item En déduire que $f$ admet un minimum sur $\mathbb{R}$ et préciser sa valeur.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Par définition de la valeur absolue :
    $$f(x) = \begin{cases} (x - 2) + 1 = x - 1 & \text{si } x \ge 2, \\[2pt] -(x-2) + 1 = -x + 3 & \text{si } x < 2. \end{cases}$$
    \item $D_f = \mathbb{R}$ est symétrique par rapport à $0$. On calcule $f(-x) = |-x - 2| + 1 = |x + 2| + 1$. Or $f(0) = 3$ et $f(-0) = 3$ ne suffit pas ; comparons en $x = 2$ : $f(2) = 1$ mais $f(-2) = |-4| + 1 = 5$. Ainsi $f(-2) \neq f(2)$ et $f(-2) \neq -f(2)$ : $f$ n'est \textbf{ni paire ni impaire}.
    \item Sur $[2, +\infty[$, $f(x) = x - 1$ : pour $a \neq b$, $T = \dfrac{(b-1)-(a-1)}{b-a} = 1 > 0$, donc $f$ est strictement \textbf{croissante}. Sur $]-\infty, 2]$, $f(x) = -x + 3$ : $T = \dfrac{(-b+3)-(-a+3)}{b-a} = -1 < 0$, donc $f$ est strictement \textbf{décroissante}.
    \item $f$ décroît jusqu'en $x = 2$ puis croît : elle atteint donc un minimum en $x = 2$, égal à $f(2) = |0| + 1 = \mathbf{1}$. On le confirme par : $|x-2| \ge 0$ donne $f(x) = |x-2| + 1 \ge 1$ pour tout $x$, avec égalité en $x = 2$.
\end{enumerate}

### Problème 3 : Fonction homographique (fonction inverse)
\begin{enonce}
Soit $f$ la fonction définie par $f(x) = \dfrac{2x + 3}{x + 1}$.
\begin{enumerate}
    \item Déterminer l'ensemble de définition $D_f$.
    \item Vérifier que, pour tout $x \in D_f$, $f(x) = 2 + \dfrac{1}{x+1}$.
    \item À l'aide du taux de variation, étudier le sens de variation de $f$ sur $]-\infty, -1[$ puis sur $]-1, +\infty[$.
    \item La fonction $f$ admet-elle un extremum sur $D_f$ ?
    \item Résoudre l'équation $f(x) = 3$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Le dénominateur ne doit pas s'annuler : $x + 1 \neq 0$, soit $x \neq -1$. Donc $D_f = \mathbb{R} \setminus \{-1\} = \,]-\infty, -1[\,\cup\,]-1, +\infty[$.
    \item On réduit au même dénominateur : $2 + \dfrac{1}{x+1} = \dfrac{2(x+1) + 1}{x+1} = \dfrac{2x + 2 + 1}{x+1} = \dfrac{2x + 3}{x+1} = f(x)$.
    \item Pour $a \neq b$ dans un même intervalle, en utilisant l'écriture $f(x) = 2 + \dfrac{1}{x+1}$ :
    $$T = \frac{f(b)-f(a)}{b-a} = \frac{1}{b-a}\left(\frac{1}{b+1} - \frac{1}{a+1}\right) = \frac{1}{b-a}\cdot\frac{(a+1) - (b+1)}{(a+1)(b+1)} = \frac{-(b-a)}{(b-a)(a+1)(b+1)} = \frac{-1}{(a+1)(b+1)}.$$
    \begin{itemize}
        \item Sur $]-1, +\infty[$ : $a + 1 > 0$ et $b + 1 > 0$, donc $(a+1)(b+1) > 0$ et $T < 0$ : $f$ est \textbf{strictement décroissante}.
        \item Sur $]-\infty, -1[$ : $a + 1 < 0$ et $b + 1 < 0$, donc leur produit est positif et $T < 0$ : $f$ est aussi \textbf{strictement décroissante}.
    \end{itemize}
    \item Sur chaque intervalle $f$ est strictement monotone (décroissante) sans changement de sens : elle n'atteint ni maximum ni minimum. Donc $f$ \textbf{n'admet pas d'extremum} sur $D_f$.
    \item $f(x) = 3 \iff 2 + \dfrac{1}{x+1} = 3 \iff \dfrac{1}{x+1} = 1 \iff x + 1 = 1 \iff x = 0$. Comme $0 \in D_f$, l'unique solution est $x = 0$ (et l'on vérifie $f(0) = \tfrac{3}{1} = 3$).
\end{enumerate}
