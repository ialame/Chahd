### Exercice 1 : Dérivée d'une puissance de fonction
\begin{enonce}
Déterminer la dérivée de la fonction $f$ définie sur $\R$ par :
\[
f(x) = (3x^2 + 1)^5
\]
\end{enonce}

\textbf{Solution :}
La fonction $f$ est de la forme $u^n$ avec $u(x) = 3x^2 + 1$ et $n = 5$.
La fonction $u$ est dérivable sur $\R$ et $u'(x) = 6x$.
D'après la formule $(u^n)' = n u^{n-1} u'$, on a :
\[
f'(x) = 5(3x^2 + 1)^4 \times 6x = 30x(3x^2 + 1)^4
\]

### Exercice 2 : Dérivée d'une racine de fonction
\begin{enonce}
Déterminer la dérivée de la fonction $f$ définie sur $\R$ par :
\[
f(x) = \sqrt{e^x + x^2 + 1}
\]
\end{enonce}

\textbf{Solution :}
La fonction $f$ est de la forme $\sqrt{u}$ avec $u(x) = e^x + x^2 + 1$.
Puisque $e^x > 0$, $x^2 \ge 0$ et $1 > 0$, on a $u(x) > 0$ pour tout $x \in \R$.
La fonction $u$ est dérivable sur $\R$ et $u'(x) = e^x + 2x$.
D'après la formule $(\sqrt{u})' = \frac{u'}{2\sqrt{u}}$, on a :
\[
f'(x) = \frac{e^x + 2x}{2\sqrt{e^x + x^2 + 1}}
\]

### Exercice 3 : Dérivée de l'exponentielle d'une fonction
\begin{enonce}
Déterminer la dérivée de la fonction $f$ définie sur $\R$ par :
\[
f(x) = e^{2x^2 - 3x}
\]
\end{enonce}

\textbf{Solution :}
La fonction $f$ est de la forme $e^u$ avec $u(x) = 2x^2 - 3x$.
La fonction $u$ est dérivable sur $\R$ et $u'(x) = 4x - 3$.
D'après la formule $(e^u)' = u' e^u$, on a :
\[
f'(x) = (4x - 3)e^{2x^2 - 3x}
\]

### Exercice 4 : Dérivée du logarithme d'une fonction
\begin{enonce}
Déterminer la dérivée de la fonction $f$ définie sur $\R$ par :
\[
f(x) = \ln(x^2 + 1)
\]
\end{enonce}

\textbf{Solution :}
La fonction $f$ est de la forme $\ln(u)$ avec $u(x) = x^2 + 1$.
Pour tout $x \in \R$, $x^2 + 1 \ge 1 > 0$. $f$ est donc bien définie et dérivable sur $\R$.
La fonction $u$ est dérivable et $u'(x) = 2x$.
D'après la formule $(\ln(u))' = \frac{u'}{u}$, on a :
\[
f'(x) = \frac{2x}{x^2 + 1}
\]

### Exercice 5 : Calcul de dérivée seconde
\begin{enonce}
Déterminer la dérivée seconde de la fonction $f$ définie sur $\R$ par :
\[
f(x) = x e^x
\]
\end{enonce}

\textbf{Solution :}
La fonction $f$ est de la forme $uv$ avec $u(x) = x$ et $v(x) = e^x$.
- Dérivée première :
  \[
  f'(x) = u'(x)v(x) + u(x)v'(x) = 1 \cdot e^x + x \cdot e^x = (x+1)e^x
  \]
- Dérivée seconde (en dérivant $f'(x)$ qui est de la forme $g(x)e^x$ avec $g(x) = x+1$ et $g'(x) = 1$) :
  \[
  f''(x) = g'(x)e^x + g(x)e^x = 1 \cdot e^x + (x+1)e^x = (x+2)e^x
  \]

### Exercice 6 : Détermination des intervalles de convexité
\begin{enonce}
Étudier la convexité de la fonction $f$ définie sur $\R$ par $f(x) = 2x^3 - 9x^2 + 12x$.
\end{enonce}

\textbf{Solution :}
La fonction $f$ est polynomiale donc deux fois dérivable sur $\R$.
- $f'(x) = 6x^2 - 18x + 12$
- $f''(x) = 12x - 18 = 6(2x - 3)$
Étudions le signe de $f''(x)$ :
\[
f''(x) \ge 0 \iff 2x - 3 \ge 0 \iff x \ge \frac{3}{2}
\]
Ainsi :
\begin{itemize}
    \item $f$ est **concave** sur l'intervalle $\left]-\infty, \frac{3}{2}\right]$ car $f''(x) \le 0$.
    \item $f$ est **convexe** sur l'intervalle $\left[\frac{3}{2}, +\infty\right[$ car $f''(x) \ge 0$.
\end{itemize}

### Exercice 7 : Recherche de points d'inflexion
\begin{enonce}
Déterminer les coordonnées des points d'inflexion de la courbe représentative de la fonction $f$ définie sur $\R$ par :
\[
f(x) = x^4 - 6x^2
\]
\end{enonce}

\textbf{Solution :}
La fonction $f$ est deux fois dérivable sur $\R$.
- $f'(x) = 4x^3 - 12x$
- $f''(x) = 12x^2 - 12 = 12(x^2 - 1) = 12(x-1)(x+1)$
La dérivée seconde $f''$ s'annule pour $x = -1$ et $x = 1$. Le coefficient devant $x^2$ étant positif ($12>0$), $f''(x)$ change de signe en passant par ces racines (elle est positive à l'extérieur, négative à l'intérieur).
La courbe $\mathcal{C}_f$ admet donc deux points d'inflexion :
- Pour $x = -1$ : $f(-1) = (-1)^4 - 6(-1)^2 = 1 - 6 = -5$. Le point est $I_1(-1, -5)$.
- Pour $x = 1$ : $f(1) = 1^4 - 6(1)^2 = -5$. Le point est $I_2(1, -5)$.

### Exercice 8 : Démonstration d'inégalité par convexité
\begin{enonce}
Démontrer que la fonction exponentielle est convexe sur $\R$, et en déduire que pour tout $x \in \R$ :
\[
e^x \ge x + 1
\]
\end{enonce}

\textbf{Solution :}
Soit $f(x) = e^x$. La fonction $f$ est deux fois dérivable sur $\R$ et pour tout $x \in \R$, $f''(x) = e^x > 0$.
La fonction exponentielle est donc strictement convexe sur $\R$.
Par définition, sa courbe représentative $\mathcal{C}_f$ est située au-dessus de toutes ses tangentes.
Déterminons l'équation de la tangente $\mathcal{T}_0$ à la courbe en $x=0$ :
\[
y = f'(0)(x-0) + f(0) \implies y = e^0 x + e^0 \implies y = x + 1
\]
La courbe étant située au-dessus de sa tangente en 0, on a pour tout $x \in \R$ :
\[
e^x \ge x + 1
\]

### Exercice 9 : Convexité d'une fonction avec logarithme
\begin{enonce}
Soit la fonction $f$ définie sur $]0, +\infty[$ par $f(x) = x \ln(x)$. Étudier la convexité de $f$.
\end{enonce}

\textbf{Solution :}
La fonction $f$ est dérivable sur $]0, +\infty[$.
- Dérivée première : $f'(x) = 1 \cdot \ln(x) + x \cdot \frac{1}{x} = \ln(x) + 1$.
- Dérivée seconde : $f''(x) = \frac{1}{x}$.
Pour tout $x \in ]0, +\infty[$, $f''(x) = \frac{1}{x} > 0$.
Puisque sa dérivée seconde est strictement positive sur son ensemble de définition, la fonction $f$ est **strictement convexe** sur $]0, +\infty[$.

### Exercice 10 : Dérivée de l'inverse d'une fonction
\begin{enonce}
Soit $u$ une fonction dérivable et strictement positive sur un intervalle $I$. Soit $f = \frac{1}{u}$.
Rappeler la formule de la dérivée de $f$, et en déduire son sens de variation si $u$ est strictement croissante sur $I$.
\end{enonce}

\textbf{Solution :}
La fonction $f = \frac{1}{u}$ est dérivable sur $I$ et de dérivée :
\[
f'(x) = -\frac{u'(x)}{u(x)^2}
\]
Si $u$ est strictement croissante sur $I$, alors pour tout $x \in I$, $u'(x) > 0$.
De plus, $u(x)^2 > 0$ car $u$ est strictement positive.
Ainsi, le quotient $\frac{u'(x)}{u(x)^2}$ est strictement positif, et son opposé $f'(x) = -\frac{u'(x)}{u(x)^2}$ est strictement négatif.
On en déduit que la fonction $f = \frac{1}{u}$ est **strictement décroissante** sur $I$.

### Exercice 11 : Dérivée d'une fonction composée avec Arctangente
\begin{enonce}
Soit la fonction $f$ définie sur $\R$ par $f(x) = \arctan(e^x)$. Montrer que $f$ est dérivable sur $\R$ et calculer sa dérivée.
\end{enonce}

\textbf{Solution :}
La fonction $f$ est la composée de $u(x) = e^x$ et de $v(y) = \arctan(y)$.
- La fonction $u$ est dérivable sur $\R$ et pour tout $x \in \R$, $u'(x) = e^x$.
- La fonction $v$ est dérivable sur $\R$ et pour tout $y \in \R$, $v'(y) = \frac{1}{1+y^2}$.
D'après la formule de dérivation d'une fonction composée $(v \circ u)' = (v' \circ u) \times u'$, la fonction $f$ est dérivable sur $\R$ et :
\[
f'(x) = \frac{1}{1+(e^x)^2} \times e^x = \frac{e^x}{1+e^{2x}}
\]

### Exercice 12 : Application du Théorème des Accroissements Finis
\begin{enonce}
Démontrer que pour tous réels $a$ et $b$ tels que $0 \le a < b$ :
\[
\frac{b-a}{1+b^2} < \arctan(b) - \arctan(a) < \frac{b-a}{1+a^2}
\]
\end{enonce}

\textbf{Solution :}
Soit la fonction $g(x) = \arctan(x)$. La fonction $g$ est continue sur $[a, b]$ et dérivable sur $]a, b[$.
D'après le Théorème des Accroissements Finis (TAF), il existe un réel $c \in ]a, b[$ tel que :
\[
g(b) - g(a) = g'(c)(b-a) \implies \arctan(b) - \arctan(a) = \frac{b-a}{1+c^2}
\]
Puisque $0 \le a < c < b$, en élevant au carré et en ajoutant 1 (les termes étant positifs) :
\[
a^2 < c^2 < b^2 \implies 1+a^2 < 1+c^2 < 1+b^2 \implies \frac{1}{1+b^2} < \frac{1}{1+c^2} < \frac{1}{1+a^2}
\]
Comme $b-a > 0$, en multipliant par $b-a$, on obtient :
\[
\frac{b-a}{1+b^2} < \frac{b-a}{1+c^2} < \frac{b-a}{1+a^2}
\]
En remplaçant $\frac{b-a}{1+c^2}$ par sa valeur, on a bien :
\[
\frac{b-a}{1+b^2} < \arctan(b) - \arctan(a) < \frac{b-a}{1+a^2}
\]

### Exercice 13 : Détermination d'une branche parabolique
\begin{enonce}
Soit la fonction $f$ définie sur $[0, +\infty[$ par $f(x) = x + \sqrt{x}$. Déterminer la nature de la branche infinie en $+\infty$.
\end{enonce}

\textbf{Solution :}
1. Calculons d'abord la limite en $+\infty$ :
   \[
   \lim_{x \to +\infty} f(x) = \lim_{x \to +\infty} (x + \sqrt{x}) = +\infty
   \]
2. Étudions le comportement de $\frac{f(x)}{x}$ en $+\infty$ :
   \[
   \frac{f(x)}{x} = \frac{x + \sqrt{x}}{x} = 1 + \frac{\sqrt{x}}{x} = 1 + \frac{1}{\sqrt{x}}
   \]
   Puisque $\lim_{x \to +\infty} \frac{1}{\sqrt{x}} = 0$, on a :
   \[
   a = \lim_{x \to +\infty} \frac{f(x)}{x} = 1
   \]
3. Le coefficient $a$ étant non nul, étudions la limite de la différence $f(x) - ax$ en $+\infty$ :
   \[
   f(x) - 1x = (x + \sqrt{x}) - x = \sqrt{x}
   \]
   Ainsi :
   \[
   \lim_{x \to +\infty} [f(x) - x] = \lim_{x \to +\infty} \sqrt{x} = +\infty
   \]
On en conclut que la courbe représentative $\mathcal{C}_f$ admet une **branche parabolique de direction la droite d'équation $y = x$** en $+\infty$.
