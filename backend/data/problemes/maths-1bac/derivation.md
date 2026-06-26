### Problème 1 : Étude d'une fonction polynomiale du troisième degré
\begin{enonce}
Soit $f$ la fonction définie sur $\mathbb{R}$ par :
$$f(x) = x^3 - 3x^2 - 9x + 1.$$
\begin{enumerate}
    \item Calculer $f'(x)$ et le factoriser.
    \item Étudier le signe de $f'(x)$ et dresser le tableau de variations de $f$.
    \item Préciser les extremums locaux de $f$.
    \item Déterminer l'équation de la tangente $(T)$ à la courbe de $f$ au point d'abscisse $0$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item $f'(x) = 3x^2 - 6x - 9 = 3(x^2 - 2x - 3) = 3(x - 3)(x + 1).$
    \item $f'(x)$ est du signe de $(x-3)(x+1)$ : positif à l'extérieur des racines $-1$ et $3$, négatif entre elles.
    $$\begin{array}{c|ccccccc}
    x & -\infty & & -1 & & 3 & & +\infty \\ \hline
    f'(x) & & + & 0 & - & 0 & + & \\ \hline
    f & & \nearrow & 6 & \searrow & -26 & \nearrow &
    \end{array}$$
    avec $f(-1) = -1 - 3 + 9 + 1 = 6$ et $f(3) = 27 - 27 - 27 + 1 = -26$.
    \item $f$ admet un \textbf{maximum local} égal à $6$ en $x = -1$ et un \textbf{minimum local} égal à $-26$ en $x = 3$.
    \item On a $f(0) = 1$ et $f'(0) = 3(0-3)(0+1) = -9$. La tangente a pour équation $y = f'(0)(x - 0) + f(0)$ :
    $$y = -9x + 1.$$
\end{enumerate}

### Problème 2 : Fonction homographique et tangentes
\begin{enonce}
Soit $f$ la fonction définie par $f(x) = \dfrac{2x - 1}{x + 1}$, de courbe $(C)$.
\begin{enumerate}
    \item Préciser l'ensemble de définition de $f$.
    \item Calculer $f'(x)$ et en déduire le sens de variation de $f$ sur chaque intervalle de son domaine.
    \item La courbe $(C)$ admet-elle une tangente horizontale ? Justifier.
    \item Déterminer l'équation de la tangente à $(C)$ au point d'abscisse $0$.
    \item Déterminer les points de $(C)$ en lesquels la tangente a pour coefficient directeur $3$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item $f$ est définie pour $x + 1 \neq 0$, donc sur $\mathbb{R}\setminus\{-1\}$.
    \item Avec $u = 2x - 1$, $u' = 2$, $v = x + 1$, $v' = 1$ :
    $$f'(x) = \dfrac{2(x+1) - (2x-1)(1)}{(x+1)^2} = \dfrac{3}{(x+1)^2}.$$
    Comme $(x+1)^2 > 0$, on a $f'(x) > 0$ : $f$ est \textbf{strictement croissante} sur $]-\infty\,;\,-1[$ et sur $]-1\,;\,+\infty[$.
    \item Une tangente horizontale exigerait $f'(x) = 0$. Or $f'(x) = \dfrac{3}{(x+1)^2} \neq 0$ pour tout $x$ du domaine : $(C)$ n'admet \textbf{aucune tangente horizontale}.
    \item On a $f(0) = \dfrac{-1}{1} = -1$ et $f'(0) = \dfrac{3}{1} = 3$. La tangente a pour équation :
    $$y = 3(x - 0) + (-1) = 3x - 1.$$
    \item On cherche $x$ tel que $f'(x) = 3$, soit $\dfrac{3}{(x+1)^2} = 3$, d'où $(x+1)^2 = 1$, donc $x + 1 = 1$ ou $x + 1 = -1$, c'est-à-dire $x = 0$ ou $x = -2$. Les points cherchés sont $(0\,;\,-1)$ et, comme $f(-2) = \dfrac{-5}{-1} = 5$, le point $(-2\,;\,5)$.
\end{enumerate}

### Problème 3 : Optimisation d'une aire
\begin{enonce}
Un éleveur dispose de $100$ mètres de clôture pour délimiter un enclos rectangulaire le long d'un mur rectiligne. Le côté longeant le mur n'a pas besoin d'être clôturé. On note $x$ (en mètres) la longueur de chacun des deux côtés perpendiculaires au mur.
\begin{enumerate}
    \item Exprimer la longueur du côté parallèle au mur en fonction de $x$, puis l'aire $A(x)$ de l'enclos. Préciser l'intervalle des valeurs possibles de $x$.
    \item Calculer $A'(x)$ et étudier ses variations.
    \item En déduire les dimensions de l'enclos d'aire maximale et la valeur de cette aire.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item La clôture couvre les deux côtés perpendiculaires (de longueur $x$ chacun) et le côté parallèle au mur. Ce dernier mesure donc $100 - 2x$ mètres. L'aire vaut :
    $$A(x) = x\,(100 - 2x) = 100x - 2x^2.$$
    Les longueurs doivent être strictement positives : $x > 0$ et $100 - 2x > 0$, soit $x \in \;]0\,;\,50[$.
    \item $A'(x) = 100 - 4x$. On a $A'(x) > 0$ pour $x < 25$ et $A'(x) < 0$ pour $x > 25$.
    $$\begin{array}{c|ccccc}
    x & 0 & & 25 & & 50 \\ \hline
    A'(x) & & + & 0 & - & \\ \hline
    A & & \nearrow & 1250 & \searrow &
    \end{array}$$
    \item $A$ atteint son maximum en $x = 25$. L'enclos optimal a alors pour dimensions $25$ m (côtés perpendiculaires) sur $100 - 2\times 25 = 50$ m (côté parallèle au mur), pour une aire maximale :
    $$A(25) = 25 \times 50 = 1250 \text{ m}^2.$$
\end{enumerate}
