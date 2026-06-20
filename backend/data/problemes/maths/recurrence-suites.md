### Problème 1 : Étude d'une suite arithmético-géométrique
\begin{enonce}
On considère la suite $(u_n)$ définie par $u_0 = 2$ et pour tout $n \in \N$ :
\[
u_{n+1} = 3u_n - 4
\]
\begin{enumerate}
    \item Déterminer le réel $\alpha$ tel que la fonction $f(x) = 3x - 4$ vérifie $f(\alpha) = \alpha$.
    \item Soit la suite $(v_n)$ définie pour tout $n \in \N$ par $v_n = u_n - \alpha$.
    Montrer que $(v_n)$ est une suite géométrique dont on précisera le premier terme et la raison.
    \item Exprimer $v_n$, puis $u_n$, en fonction de $n$.
    \item Déterminer la limite de la suite $(u_n)$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item L'équation $f(\alpha) = \alpha \iff 3\alpha - 4 = \alpha \iff 2\alpha = 4 \iff \alpha = 2$.
    \item Exprimons $v_{n+1}$ en fonction de $v_n$ :
    \[
    v_{n+1} = u_{n+1} - 2 = (3u_n - 4) - 2 = 3u_n - 6 = 3(u_n - 2) = 3v_n
    \]
    Ainsi, la suite $(v_n)$ est une suite géométrique de raison $q = 3$ et de premier terme $v_0 = u_0 - 2 = 2 - 2 = 0$.
    \item Puisque $(v_n)$ est géométrique, on a pour tout $n \in \N$ : $v_n = v_0 \times q^n = 0 \times 3^n = 0$.
    On en déduit que pour tout $n \in \N$ :
    \[
    u_n = v_n + 2 = 2
    \]
    La suite $(u_n)$ est en fait constante et égale à 2.
    \item La limite de la suite $(u_n)$ est évidemment :
    \[
    \lim_{n \to +\infty} u_n = 2
    \]
\end{enumerate}

### Problème 2 : Suite homographique
\begin{enonce}
Soit la suite $(u_n)$ définie par $u_0 = 3$ et pour tout $n \in \N$ :
\[
u_{n+1} = \frac{4u_n - 2}{u_n + 1}
\]
\begin{enumerate}
    \item Démontrer par récurrence que pour tout entier naturel $n$, $u_n > 2$.
    \item On définit la suite $(v_n)$ par $v_n = \frac{u_n - 2}{u_n - 1}$ pour tout $n \in \N$.
    Montrer que $(v_n)$ est une suite géométrique de raison $\frac{2}{3}$.
    \item Exprimer $v_n$ puis $u_n$ en fonction de $n$.
    \item Déterminer la limite de la suite $(u_n)$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Démontrons par récurrence que $u_n > 2$.
    \begin{itemize}
        \item \textbf{Initialisation} : Pour $n = 0$, $u_0 = 3 > 2$. Vrai.
        \item \textbf{Hérédité} : Supposons $u_k > 2$ pour un certain $k \ge 0$. Montrons $u_{k+1} > 2$.
        Calculons la différence $u_{k+1} - 2$ :
        \[
        u_{k+1} - 2 = \frac{4u_k - 2}{u_k + 1} - 2 = \frac{4u_k - 2 - 2(u_k + 1)}{u_k + 1} = \frac{2u_k - 4}{u_k + 1} = \frac{2(u_k - 2)}{u_k + 1}
        \]
        Par hypothèse de récurrence, $u_k > 2 \implies u_k - 2 > 0$ et $u_k + 1 > 3 > 0$.
        Le quotient est donc strictement positif, ce qui prouve que $u_{k+1} - 2 > 0 \implies u_{k+1} > 2$. Hérédité validée.
        \item \textbf{Conclusion} : Pour tout $n \in \N$, $u_n > 2$.
    \end{itemize}
    
    \item Exprimons $v_{n+1}$ :
    \[
    v_{n+1} = \frac{u_{n+1} - 2}{u_{n+1} - 1} = \frac{\frac{4u_n - 2}{u_n + 1} - 2}{\frac{4u_n - 2}{u_n + 1} - 1} = \frac{\frac{2(u_n - 2)}{u_n + 1}}{\frac{4u_n - 2 - (u_n + 1)}{u_n + 1}} = \frac{2(u_n - 2)}{3u_n - 3} = \frac{2(u_n - 2)}{3(u_n - 1)} = \frac{2}{3} v_n
    \]
    La suite $(v_n)$ est géométrique de raison $q = \frac{2}{3}$ et de premier terme $v_0 = \frac{u_0 - 2}{u_0 - 1} = \frac{3-2}{3-1} = \frac{1}{2}$.
    
    \item On a $v_n = v_0 \times q^n = \frac{1}{2} \left(\frac{2}{3}\right)^n$.
    Pour exprimer $u_n$ en fonction de $v_n$ :
    \[
    v_n = \frac{u_n - 2}{u_n - 1} \iff v_n(u_n - 1) = u_n - 2 \iff u_n v_n - v_n = u_n - 2 \iff u_n(v_n - 1) = v_n - 2 \iff u_n = \frac{2 - v_n}{1 - v_n}
    \]
    En remplaçant $v_n$ :
    \[
    u_n = \frac{2 - \frac{1}{2} \left(\frac{2}{3}\right)^n}{1 - \frac{1}{2} \left(\frac{2}{3}\right)^n}
    \]
    
    \item Comme $-1 < \frac{2}{3} < 1$, $\lim_{n \to +\infty} \left(\frac{2}{3}\right)^n = 0$.
    Donc $\lim_{n \to +\infty} v_n = 0$. Par limite de quotient :
    \[
    \lim_{n \to +\infty} u_n = \frac{2 - 0}{1 - 0} = 2
    \]
\end{enumerate}

### Problème 3 : Suites adjacentes et approximation du nombre $e$
\begin{enonce}
On considère les deux suites $(u_n)$ et $(v_n)$ définies pour tout $n \ge 1$ par :
\[
u_n = \sum_{k=0}^n \frac{1}{k!} = 1 + 1 + \frac{1}{2} + \dots + \frac{1}{n!} \quad \text{et} \quad v_n = u_n + \frac{1}{n \cdot n!}
\]
\begin{enumerate}
    \item Montrer que la suite $(u_n)$ est strictement croissante.
    \item Montrer que la suite $(v_n)$ est strictement décroissante.
    \item Montrer que $\lim_{n \to +\infty} (v_n - u_n) = 0$.
    \item En déduire que les suites $(u_n)$ et $(v_n)$ sont adjacentes et qu'elles convergent vers une limite commune. Note : cette limite est le nombre $e \approx 2,718$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Calculons la différence $u_{n+1} - u_n$ :
    \[
    u_{n+1} - u_n = \sum_{k=0}^{n+1} \frac{1}{k!} - \sum_{k=0}^n \frac{1}{k!} = \frac{1}{(n+1)!} > 0
    \]
    La suite $(u_n)$ est donc strictement croissante.
    
    \item Calculons $v_{n+1} - v_n$ :
    \[
    v_{n+1} - v_n = u_{n+1} + \frac{1}{(n+1)(n+1)!} - \left( u_n + \frac{1}{n \cdot n!} \right) = \frac{1}{(n+1)!} + \frac{1}{(n+1)(n+1)!} - \frac{1}{n \cdot n!}
    \]
    Mettons au dénominateur commun $n(n+1)(n+1)!$ sachant que $(n+1)! = (n+1)n!$ :
    \[
    v_{n+1} - v_n = \frac{n(n+1) + n - (n+1)^2}{n(n+1)(n+1)!} = \frac{n^2 + n + n - (n^2 + 2n + 1)}{n(n+1)(n+1)!} = \frac{-1}{n(n+1)(n+1)!} < 0
    \]
    La suite $(v_n)$ est donc strictement décroissante.
    
    \item Calculons la différence $v_n - u_n$ :
    \[
    v_n - u_n = \frac{1}{n \cdot n!}
    \]
    Pour $n \ge 1$, $n! \ge 1 \implies 0 < \frac{1}{n \cdot n!} \le \frac{1}{n}$.
    Comme $\lim_{n \to +\infty} \frac{1}{n} = 0$, on obtient d'après le théorème des Gendarmes :
    \[
    \lim_{n \to +\infty} (v_n - u_n) = 0
    \]
    
    \item Les suites $(u_n)$ et $(v_n)$ vérifient :
    - $(u_n)$ est croissante,
    - $(v_n)$ est décroissante,
    - $\lim (v_n - u_n) = 0$.
    Par définition, les suites $(u_n)$ et $(v_n)$ sont **adjacentes**.
    Le théorème sur les suites adjacentes garantit qu'elles convergent vers une même limite réelle $L$.
\end{enumerate}

### Problème 4 : Étude d'une suite d'intégrales
\begin{enonce}
On considère la suite $(I_n)$ définie pour tout $n \in \N$ par :
\[
I_n = \int_0^1 x^n e^{-x} \dd x
\]
\begin{enumerate}
    \item Calculer $I_0$.
    \item Montrer que la suite $(I_n)$ est décroissante, puis qu'elle est minorée. Que peut-on en déduire ?
    \item Établir par un encadrement la limite de la suite $(I_n)$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Pour $n = 0$ :
    \[
    I_0 = \int_0^1 x^0 e^{-x} \dd x = \int_0^1 e^{-x} \dd x = \Big[ -e^{-x} \Big]_0^1 = -e^{-1} - (-e^0) = 1 - e^{-1} = 1 - \frac{1}{e}
    \]
    
    \item Étudions le signe de $I_{n+1} - I_n$ :
    \[
    I_{n+1} - I_n = \int_0^1 x^{n+1} e^{-x} \dd x - \int_0^1 x^n e^{-x} \dd x = \int_0^1 x^n(x-1)e^{-x} \dd x
    \]
    Pour tout $x \in [0, 1]$, $x^n \ge 0$, $e^{-x} > 0$ et $x-1 \le 0$.
    Le produit $x^n(x-1)e^{-x}$ est donc négatif ou nul sur $[0,1]$.
    Par positivité de l'intégrale (les bornes étant dans l'ordre croissant $0 < 1$), on a :
    \[
    I_{n+1} - I_n \le 0
    \]
    La suite $(I_n)$ est donc décroissante.
    De plus, pour tout $x \in [0, 1]$, $x^n e^{-x} \ge 0$. Par positivité de l'intégrale, $I_n \ge 0$ pour tout $n \in \N$.
    La suite $(I_n)$ est décroissante et minorée par 0, elle est donc **convergente** d'après le théorème de convergence monotone.
    
    \item Encadrons $I_n$ :
    Pour tout $x \in [0, 1]$ :
    \[
    0 \le e^{-x} \le 1 \implies 0 \le x^n e^{-x} \le x^n
    \]
    Par intégration sur $[0, 1]$ :
    \[
    0 \le \int_0^1 x^n e^{-x} \dd x \le \int_0^1 x^n \dd x \implies 0 \le I_n \le \left[ \frac{x^{n+1}}{n+1} \right]_0^1 \implies 0 \le I_n \le \frac{1}{n+1}
    \]
    Puisque $\lim_{n \to +\infty} \frac{1}{n+1} = 0$, on obtient par le théorème des Gendarmes :
    \[
    \lim_{n \to +\infty} I_n = 0
    \]
\end{enumerate}

### Problème 5 : Suite d'équations implicites
\begin{enonce}
Pour tout entier naturel $n \ge 1$, on considère l'équation :
\[
(E_n) : \quad x^n + x - 1 = 0
\]
d'inconnue $x$ dans l'intervalle $[0, 1]$.
\begin{enumerate}
    \item Soit $f_n$ la fonction définie sur $[0, 1]$ par $f_n(x) = x^n + x - 1$.
    Montrer que l'équation $(E_n)$ possède une unique solution dans $[0, 1]$, notée $x_n$.
    \item Calculer $x_1$ et $x_2$.
    \item Comparer $f_{n+1}(x)$ et $f_n(x)$ pour tout $x \in [0, 1]$.
    \item En déduire que pour tout $n \ge 1$, $f_n(x_{n+1}) \le 0$, puis que la suite $(x_n)$ est croissante.
    \item Prouver la convergence de la suite $(x_n)$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item La fonction $f_n$ est polynomiale donc continue et dérivable sur $[0, 1]$.
    Sa dérivée est $f_n'(x) = n x^{n-1} + 1$.
    Pour tout $x \in [0, 1]$, $x^{n-1} \ge 0$, donc $f_n'(x) \ge 1 > 0$.
    La fonction $f_n$ est strictement croissante sur $[0, 1]$.
    De plus, $f_n(0) = -1 < 0$ et $f_n(1) = 1^n + 1 - 1 = 1 > 0$.
    Puisque $f_n$ est continue, strictement croissante, et change de signe sur $[0,1]$, d'après le corollaire du TVI, l'équation $f_n(x) = 0$ admet une unique solution $x_n$ dans $[0, 1]$.
    
    \item Pour $n = 1$ : $f_1(x) = x + x - 1 = 2x - 1 = 0 \iff x_1 = \frac{1}{2}$.
    Pour $n = 2$ : $f_2(x) = x^2 + x - 1 = 0$. Le discriminant de l'équation est $\Delta = 1 - 4(1)(-1) = 5$.
    L'unique solution dans $[0, 1]$ est la racine positive : $x_2 = \frac{-1+\sqrt{5}}{2} \approx 0,618$.
    
    \item Calculons la différence :
    \[
    f_{n+1}(x) - f_n(x) = (x^{n+1} + x - 1) - (x^n + x - 1) = x^{n+1} - x^n = x^n(x - 1)
    \]
    Pour tout $x \in [0, 1]$, $x^n \ge 0$ et $x-1 \le 0$, donc :
    \[
    f_{n+1}(x) - f_n(x) \le 0 \implies f_{n+1}(x) \le f_n(x)
    \]
    
    \item En appliquant le résultat précédent au point $x = x_{n+1}$ :
    \[
    f_n(x_{n+1}) \ge f_{n+1}(x_{n+1})
    \]
    Or, par définition de $x_{n+1}$, on a $f_{n+1}(x_{n+1}) = 0$. Ainsi :
    \[
    f_n(x_{n+1}) \ge 0 = f_n(x_n)
    \]
    Comme la fonction $f_n$ est strictement croissante sur $[0, 1]$, on en déduit :
    \[
    x_{n+1} \ge x_n
    \]
    La suite $(x_n)$ est donc croissante.
    
    \item La suite $(x_n)$ est croissante et elle est majorée par 1 (car pour tout $n$, $x_n \in [0, 1]$).
    D'après le théorème de convergence monotone, la suite $(x_n)$ est convergente.
\end{enumerate}
