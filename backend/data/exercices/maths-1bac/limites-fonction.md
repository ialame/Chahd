### Exercice 1 : Limites par opérations directes
\begin{enonce}
Calculer, sans qu'aucune forme indéterminée n'apparaisse, les limites suivantes :
\begin{enumerate}
    \item $\displaystyle\lim_{x \to 2} \left(x^2 - 3x + 5\right)$ ;
    \item $\displaystyle\lim_{x \to +\infty} \left(x^3 - 2x + 1\right)$ ;
    \item $\displaystyle\lim_{x \to -\infty} \left(-2x^2 + x\right)$ ;
    \item $\displaystyle\lim_{x \to +\infty} \left(3 + \frac{2}{x} - \frac{1}{x^2}\right)$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item La fonction polynomiale est définie en $2$, on remplace : $2^2 - 3 \times 2 + 5 = 4 - 6 + 5 = 3$, donc la limite vaut $3$.
    \item En $+\infty$, un polynôme se comporte comme son terme de plus haut degré : $\lim_{x \to +\infty} x^3 = +\infty$, donc la limite est $+\infty$.
    \item Le terme dominant est $-2x^2$. Comme $\lim_{x \to -\infty} x^2 = +\infty$, on a $\lim_{x \to -\infty} (-2x^2) = -\infty$, donc la limite est $-\infty$.
    \item Quand $x \to +\infty$, $\dfrac{2}{x} \to 0$ et $\dfrac{1}{x^2} \to 0$, donc la limite vaut $3 + 0 - 0 = 3$.
\end{enumerate}

### Exercice 2 : Forme indéterminée $\frac{\infty}{\infty}$ (terme dominant)
\begin{enonce}
Lever l'indétermination et calculer :
\begin{enumerate}
    \item $\displaystyle\lim_{x \to +\infty} \frac{3x^2 - x + 2}{2x^2 + 5}$ ;
    \item $\displaystyle\lim_{x \to +\infty} \frac{2x + 1}{x^2 - 3}$ ;
    \item $\displaystyle\lim_{x \to -\infty} \frac{x^3 + 1}{x^2 - x}$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
Pour une fonction rationnelle en $\pm\infty$, on factorise par le terme de plus haut degré au numérateur et au dénominateur (ou, plus rapidement, on remplace par le quotient des termes dominants).
\begin{enumerate}
    \item En factorisant par $x^2$ : $\dfrac{3x^2 - x + 2}{2x^2 + 5} = \dfrac{x^2\left(3 - \frac{1}{x} + \frac{2}{x^2}\right)}{x^2\left(2 + \frac{5}{x^2}\right)} = \dfrac{3 - \frac{1}{x} + \frac{2}{x^2}}{2 + \frac{5}{x^2}}$. Chaque terme en $\frac{1}{x}$ tend vers $0$, donc la limite vaut $\dfrac{3}{2}$.
    \item Le terme dominant donne $\dfrac{2x}{x^2} = \dfrac{2}{x} \to 0$. La limite vaut $0$ (le degré du dénominateur l'emporte).
    \item Le terme dominant donne $\dfrac{x^3}{x^2} = x \to -\infty$. La limite est donc $-\infty$.
\end{enumerate}

### Exercice 3 : Forme indéterminée $\frac{0}{0}$ (factorisation)
\begin{enonce}
Calculer les limites suivantes après avoir factorisé :
\begin{enumerate}
    \item $\displaystyle\lim_{x \to 3} \frac{x^2 - 9}{x - 3}$ ;
    \item $\displaystyle\lim_{x \to 2} \frac{x^2 - 5x + 6}{x - 2}$ ;
    \item $\displaystyle\lim_{x \to 1} \frac{x^3 - 1}{x^2 - 1}$ ;
    \item $\displaystyle\lim_{x \to -1} \frac{x^2 - 1}{x^2 + 3x + 2}$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
Le numérateur et le dénominateur s'annulent tous deux en la valeur visée : on est en présence de la F.I. $\frac{0}{0}$. On factorise par $(x - a)$ pour simplifier.
\begin{enumerate}
    \item $x^2 - 9 = (x - 3)(x + 3)$, donc $\dfrac{x^2 - 9}{x - 3} = x + 3$ pour $x \neq 3$. La limite vaut $3 + 3 = 6$.
    \item $x^2 - 5x + 6 = (x - 2)(x - 3)$, donc $\dfrac{x^2 - 5x + 6}{x - 2} = x - 3$. La limite vaut $2 - 3 = -1$.
    \item $x^3 - 1 = (x - 1)(x^2 + x + 1)$ et $x^2 - 1 = (x - 1)(x + 1)$, donc le quotient vaut $\dfrac{x^2 + x + 1}{x + 1}$. La limite est $\dfrac{1 + 1 + 1}{1 + 1} = \dfrac{3}{2}$.
    \item $x^2 - 1 = (x - 1)(x + 1)$ et $x^2 + 3x + 2 = (x + 1)(x + 2)$, donc le quotient vaut $\dfrac{x - 1}{x + 2}$. La limite est $\dfrac{-1 - 1}{-1 + 2} = \dfrac{-2}{1} = -2$.
\end{enumerate}

### Exercice 4 : Forme indéterminée avec une racine (conjugué)
\begin{enonce}
Calculer en multipliant par la quantité conjuguée :
\begin{enumerate}
    \item $\displaystyle\lim_{x \to +\infty} \left(\sqrt{x^2 + 1} - x\right)$ ;
    \item $\displaystyle\lim_{x \to 0} \frac{\sqrt{x + 1} - 1}{x}$ ;
    \item $\displaystyle\lim_{x \to 4} \frac{\sqrt{x} - 2}{x - 4}$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Forme $\infty - \infty$. On multiplie et divise par le conjugué $\sqrt{x^2 + 1} + x$ :
    $$\sqrt{x^2 + 1} - x = \frac{(x^2 + 1) - x^2}{\sqrt{x^2 + 1} + x} = \frac{1}{\sqrt{x^2 + 1} + x}.$$
    Quand $x \to +\infty$, le dénominateur tend vers $+\infty$, donc la limite vaut $0$.
    \item Forme $\frac{0}{0}$. On multiplie par le conjugué $\sqrt{x + 1} + 1$ :
    $$\frac{\sqrt{x + 1} - 1}{x} = \frac{(x + 1) - 1}{x\left(\sqrt{x + 1} + 1\right)} = \frac{x}{x\left(\sqrt{x + 1} + 1\right)} = \frac{1}{\sqrt{x + 1} + 1}.$$
    Quand $x \to 0$, la limite vaut $\dfrac{1}{\sqrt{1} + 1} = \dfrac{1}{2}$.
    \item Forme $\frac{0}{0}$. On remarque que $x - 4 = (\sqrt{x} - 2)(\sqrt{x} + 2)$, donc :
    $$\frac{\sqrt{x} - 2}{x - 4} = \frac{\sqrt{x} - 2}{(\sqrt{x} - 2)(\sqrt{x} + 2)} = \frac{1}{\sqrt{x} + 2}.$$
    Quand $x \to 4$, la limite vaut $\dfrac{1}{2 + 2} = \dfrac{1}{4}$.
\end{enumerate}

### Exercice 5 : Limites à droite et à gauche d'un quotient
\begin{enonce}
On considère $f(x) = \dfrac{2x + 1}{x - 3}$, définie sur $\mathbb{R} \setminus \{3\}$.
\begin{enumerate}
    \item Calculer $\displaystyle\lim_{x \to 3^+} f(x)$ et $\displaystyle\lim_{x \to 3^-} f(x)$. Qu'en déduit-on graphiquement ?
    \item Calculer $\displaystyle\lim_{x \to +\infty} f(x)$ et $\displaystyle\lim_{x \to -\infty} f(x)$. Qu'en déduit-on ?
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Quand $x \to 3$, le numérateur tend vers $2 \times 3 + 1 = 7 > 0$ et le dénominateur $x - 3$ tend vers $0$ : on étudie son signe.
    Pour $x > 3$, $x - 3 > 0$, donc $\dfrac{7}{0^+} = +\infty$ : $\displaystyle\lim_{x \to 3^+} f(x) = +\infty$.
    Pour $x < 3$, $x - 3 < 0$, donc $\dfrac{7}{0^-} = -\infty$ : $\displaystyle\lim_{x \to 3^-} f(x) = -\infty$.
    La droite d'équation $x = 3$ est donc une \textbf{asymptote verticale} à $(C_f)$.
    \item En $\pm\infty$, c'est une F.I. $\frac{\infty}{\infty}$ que l'on lève par le terme dominant : $\dfrac{2x}{x} = 2$. Ainsi $\displaystyle\lim_{x \to +\infty} f(x) = \lim_{x \to -\infty} f(x) = 2$.
    La droite d'équation $y = 2$ est une \textbf{asymptote horizontale} à $(C_f)$ en $+\infty$ et en $-\infty$.
\end{enumerate}

### Exercice 6 : Limites de fonctions composées
\begin{enonce}
En posant $u = f(x)$ et en utilisant le théorème de la limite d'une composée, calculer :
\begin{enumerate}
    \item $\displaystyle\lim_{x \to 2} \sqrt{x^2 + 5}$ ;
    \item $\displaystyle\lim_{x \to +\infty} \frac{1}{\sqrt{x + 1}}$ ;
    \item $\displaystyle\lim_{x \to +\infty} \sqrt{\frac{4x^2 + 1}{x^2 - 1}}$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
On utilise : si $\lim_{x \to a} f(x) = b$ et $\lim_{u \to b} g(u) = \ell$, alors $\lim_{x \to a} g\big(f(x)\big) = \ell$.
\begin{enumerate}
    \item On pose $u = x^2 + 5$. Quand $x \to 2$, $u \to 4 + 5 = 9$, et $\sqrt{u} \to \sqrt{9} = 3$. La limite vaut $3$.
    \item On pose $u = x + 1$. Quand $x \to +\infty$, $u \to +\infty$, donc $\sqrt{u} \to +\infty$ et $\dfrac{1}{\sqrt{u}} \to 0$. La limite vaut $0$.
    \item À l'intérieur de la racine, c'est une F.I. $\frac{\infty}{\infty}$ levée par le terme dominant : $\dfrac{4x^2 + 1}{x^2 - 1} \to \dfrac{4x^2}{x^2} = 4$. En posant $u = \dfrac{4x^2 + 1}{x^2 - 1} \to 4$, on obtient $\sqrt{u} \to \sqrt{4} = 2$. La limite vaut $2$.
\end{enumerate}
