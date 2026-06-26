### Problème 1 : Étude d'une fonction rationnelle paire
\begin{enonce}
On considère la fonction définie par $f(x) = \dfrac{x^2}{x^2 + 1}$.
\begin{enumerate}
    \item Déterminer l'ensemble de définition $D_f$.
    \item Étudier la parité de $f$. Quelle conséquence en tire-t-on pour l'étude de $f$ ?
    \item Vérifier que $f(x) = 1 - \dfrac{1}{x^2 + 1}$, puis montrer que $0 \le f(x) < 1$ pour tout réel $x$. La fonction $f$ est-elle bornée ?
    \item À l'aide du taux d'accroissement, étudier le sens de variation de $f$ sur $[0, +\infty[$, puis sur $\mathbb{R}$.
    \item En déduire l'extremum de $f$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Le dénominateur $x^2 + 1$ ne s'annule jamais (il est toujours $\ge 1$). Donc $D_f = \mathbb{R}$.
    \item $D_f = \mathbb{R}$ est symétrique par rapport à $0$, et $f(-x) = \dfrac{(-x)^2}{(-x)^2 + 1} = \dfrac{x^2}{x^2 + 1} = f(x)$. La fonction $f$ est \textbf{paire} : sa courbe est symétrique par rapport à l'axe des ordonnées, et il suffit de l'étudier sur $[0, +\infty[$.
    \item On écrit $f(x) = \dfrac{x^2 + 1 - 1}{x^2 + 1} = 1 - \dfrac{1}{x^2 + 1}$. Comme $x^2 + 1 \ge 1$, on a $0 < \dfrac{1}{x^2 + 1} \le 1$, donc $0 \le f(x) < 1$. Ainsi $f$ est minorée par $0$ et majorée par $1$ : elle est \textbf{bornée} sur $\mathbb{R}$.
    \item Pour $a \neq b$, avec $f(x) = 1 - \dfrac{1}{x^2+1}$ :
    $$f(b) - f(a) = \dfrac{1}{a^2 + 1} - \dfrac{1}{b^2 + 1} = \dfrac{b^2 - a^2}{(a^2 + 1)(b^2 + 1)},$$
    donc $T = \dfrac{f(b) - f(a)}{b - a} = \dfrac{a + b}{(a^2 + 1)(b^2 + 1)}$.
    Sur $[0, +\infty[$, pour $a, b \ge 0$ non tous deux nuls, $a + b > 0$ et le dénominateur est positif, donc $T > 0$ : $f$ est strictement \textbf{croissante} sur $[0, +\infty[$. Par parité, $f$ est strictement \textbf{décroissante} sur $]-\infty, 0]$.
    \item $f$ décroît puis croît, avec un changement en $0$ : elle admet un \textbf{minimum} égal à $f(0) = 0$, atteint en $x = 0$. Elle n'admet pas de maximum (la valeur $1$ n'est jamais atteinte).
\end{enumerate}

### Problème 2 : Comparaison de deux fonctions et composition
\begin{enonce}
On pose $f(x) = \sqrt{x + 3}$ et $g(x) = x + 1$.
\begin{enumerate}
    \item Déterminer les ensembles de définition $D_f$ et $D_g$, puis l'intervalle commun $I$.
    \item Résoudre sur $I$ l'équation $f(x) = g(x)$.
    \item En étudiant le signe de $f(x) - g(x)$, comparer $f$ et $g$ sur $I$. Interpréter graphiquement.
    \item Déterminer les fonctions $g \circ f$ et $f \circ g$ ainsi que leurs ensembles de définition.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Pour $f$ : $x + 3 \ge 0$, soit $D_f = [-3, +\infty[$. Pour $g$ : $D_g = \mathbb{R}$. L'intervalle commun est $I = [-3, +\infty[$.
    \item L'équation $\sqrt{x+3} = x + 1$ impose d'abord $x + 1 \ge 0$, soit $x \ge -1$. En élevant au carré : $x + 3 = (x+1)^2 = x^2 + 2x + 1$, soit $x^2 + x - 2 = 0$, c'est-à-dire $(x - 1)(x + 2) = 0$. Les solutions candidates sont $x = 1$ et $x = -2$ ; seule $x = 1$ vérifie $x \ge -1$. Donc $f(x) = g(x) \iff x = 1$ sur $I$.
    \item Les deux fonctions ne se croisent qu'en $x = 1$, où $f(1) = g(1) = 2$. En testant un point de chaque côté :
    \begin{itemize}
        \item en $x = 0$ : $f(0) = \sqrt{3} \approx 1{,}73 > g(0) = 1$, donc $f > g$ sur $[-3, 1[$ ;
        \item en $x = 6$ : $f(6) = 3 < g(6) = 7$, donc $f < g$ sur $]1, +\infty[$.
    \end{itemize}
    Graphiquement, la courbe de $f$ est au-dessus de la droite $y = x + 1$ sur $[-3, 1[$, la coupe en $(1, 2)$, puis passe en dessous sur $]1, +\infty[$.
    \item On compose :
    $$(g \circ f)(x) = g\big(\sqrt{x+3}\big) = \sqrt{x + 3} + 1, \qquad D_{g \circ f} = [-3, +\infty[.$$
    $$(f \circ g)(x) = f(x + 1) = \sqrt{(x+1) + 3} = \sqrt{x + 4}, \qquad D_{f \circ g} = [-4, +\infty[.$$
    (Pour $f \circ g$, il faut $g(x) \in D_f$, soit $x + 1 \ge -3$, c'est-à-dire $x \ge -4$.)
\end{enumerate}

### Problème 3 : Une fonction trigonométrique paire et périodique
\begin{enonce}
On considère la fonction $f(x) = \cos(2x) + 1$, définie sur $\mathbb{R}$.
\begin{enumerate}
    \item Étudier la parité de $f$.
    \item Montrer que $\pi$ est une période de $f$.
    \item Montrer que $f$ est bornée et préciser un majorant et un minorant.
    \item Déterminer les valeurs de $x$ pour lesquelles $f$ atteint son maximum, puis son minimum.
    \item Expliquer pourquoi l'étude de $f$ peut se limiter à l'intervalle $\left[0, \dfrac{\pi}{2}\right]$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item $D_f = \mathbb{R}$ est symétrique, et $f(-x) = \cos(-2x) + 1 = \cos(2x) + 1 = f(x)$ car le cosinus est pair. La fonction $f$ est \textbf{paire}.
    \item Pour tout réel $x$ :
    $$f(x + \pi) = \cos\big(2(x + \pi)\big) + 1 = \cos(2x + 2\pi) + 1 = \cos(2x) + 1 = f(x).$$
    Donc $\pi$ est une \textbf{période} de $f$.
    \item Pour tout réel $x$, $-1 \le \cos(2x) \le 1$, donc $0 \le f(x) \le 2$. La fonction $f$ est minorée par $0$, majorée par $2$, donc \textbf{bornée}.
    \item Le \textbf{maximum} $2$ est atteint lorsque $\cos(2x) = 1$, c'est-à-dire $2x = 2k\pi$, soit $x = k\pi$ ($k \in \mathbb{Z}$). Le \textbf{minimum} $0$ est atteint lorsque $\cos(2x) = -1$, c'est-à-dire $2x = \pi + 2k\pi$, soit $x = \dfrac{\pi}{2} + k\pi$ ($k \in \mathbb{Z}$).
    \item La fonction $f$ est périodique de période $\pi$ : il suffit de l'étudier sur un intervalle de longueur $\pi$, par exemple $\left[-\dfrac{\pi}{2}, \dfrac{\pi}{2}\right]$. De plus $f$ est paire : on peut se restreindre à la moitié positive $\left[0, \dfrac{\pi}{2}\right]$, et compléter la courbe par symétrie par rapport à l'axe des ordonnées, puis par périodicité.
\end{enumerate}
