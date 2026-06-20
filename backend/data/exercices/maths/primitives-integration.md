### Exercice 1 : Primitive simple avec condition
\begin{enonce}
Déterminer la primitive $F$ de la fonction $f(x) = 3x^2 - x + 1$ sur $\R$ qui s'annule en 0.
\end{enonce}

\textbf{Solution :}
Les primitives de la fonction polynomiale $f$ sont de la forme :
\[
F(x) = 3\left(\frac{x^3}{3}\right) - \frac{x^2}{2} + x + C = x^3 - \frac{x^2}{2} + x + C
\]
où $C \in \R$.
On cherche la primitive qui s'annule en 0, soit :
\[
F(0) = 0 \iff 0^3 - \frac{0^2}{2} + 0 + C = 0 \iff C = 0
\]
La primitive cherchée est la fonction $F$ définie sur $\R$ par :
\[
F(x) = x^3 - \frac{x^2}{2} + x
\]

### Exercice 2 : Primitive de la forme $u'/u$
\begin{enonce}
Déterminer une primitive de la fonction $f$ définie sur $]-1, +\infty[$ par :
\[
f(x) = \frac{3x^2}{x^3 + 1}
\]
\end{enonce}

\textbf{Solution :}
Posons $u(x) = x^3 + 1$. La fonction $u$ est strictement positive et dérivable sur $]-1, +\infty[$ avec $u'(x) = 3x^2$.
La fonction $f$ s'écrit donc sous la forme $\frac{u'}{u}$.
Une primitive de $f$ sur cet intervalle est :
\[
F(x) = \ln(u(x)) = \ln(x^3 + 1)
\]

### Exercice 3 : Primitive de la forme $u' e^u$
\begin{enonce}
Déterminer une primitive de la fonction $f$ définie sur $\R$ par :
\[
f(x) = x e^{x^2 + 1}
\]
\end{enonce}

\textbf{Solution :}
Posons $u(x) = x^2 + 1$. La fonction $u$ est dérivable sur $\R$ avec $u'(x) = 2x$.
Exprimons $f(x)$ en fonction de $u'$ :
\[
f(x) = \frac{1}{2} (2x) e^{x^2 + 1} = \frac{1}{2} u'(x) e^{u(x)}
\]
La fonction $f$ est de la forme $\frac{1}{2} u' e^u$.
Une primitive de $f$ sur $\R$ est :
\[
F(x) = \frac{1}{2} e^{u(x)} = \frac{1}{2} e^{x^2 + 1}
\]

### Exercice 4 : Primitive de la forme $u' u^n$
\begin{enonce}
Déterminer une primitive de la fonction $f$ définie sur $\R$ par :
\[
f(x) = (2x + 1)^4
\]
\end{enonce}

\textbf{Solution :}
Posons $u(x) = 2x + 1$. La fonction $u$ est dérivable sur $\R$ avec $u'(x) = 2$.
Exprimons $f(x)$ en fonction de $u'$ :
\[
f(x) = \frac{1}{2} \times 2 (2x + 1)^4 = \frac{1}{2} u'(x) (u(x))^4
\]
La fonction $f$ est de la forme $\frac{1}{2} u' u^4$.
Une primitive de $f$ sur $\R$ est :
\[
F(x) = \frac{1}{2} \times \frac{u^5}{5} = \frac{1}{10} (2x + 1)^5
\]

### Exercice 5 : Primitive de la forme $u'/\sqrt{u}$
\begin{enonce}
Déterminer une primitive de la fonction $f$ définie sur $]-1/3, +\infty[$ par :
\[
f(x) = \frac{1}{\sqrt{3x + 1}}
\]
\end{enonce}

\textbf{Solution :}
Posons $u(x) = 3x + 1$. Sur $]-1/3, +\infty[$, $u(x) > 0$. Sa dérivée est $u'(x) = 3$.
Exprimons $f(x)$ en fonction de $u'$ :
\[
f(x) = \frac{1}{3} \times \frac{3}{\sqrt{3x+1}} = \frac{1}{3} \times \frac{u'(x)}{\sqrt{u(x)}} = \frac{2}{3} \times \frac{u'(x)}{2\sqrt{u(x)}}
\]
La fonction est de la forme $\frac{2}{3} \frac{u'}{2\sqrt{u}}$.
Une primitive de $f$ sur cet intervalle est :
\[
F(x) = \frac{2}{3} \sqrt{u(x)} = \frac{2}{3} \sqrt{3x + 1}
\]

### Exercice 6 : Calcul d'intégrale simple
\begin{enonce}
Calculer l'intégrale suivante :
\[
I = \int_0^1 (3x^2 - 2x + 1) \dd x
\]
\end{enonce}

\textbf{Solution :}
Une primitive de la fonction $x \mapsto 3x^2 - 2x + 1$ est $F(x) = x^3 - x^2 + x$.
On a :
\[
I = \Big[ x^3 - x^2 + x \Big]_0^1 = (1^3 - 1^2 + 1) - (0^3 - 0^2 + 0) = 1 - 0 = 1
\]

### Exercice 7 : Intégrale de la fonction inverse
\begin{enonce}
Calculer l'intégrale suivante :
\[
J = \int_1^e \frac{1}{x} \dd x
\]
\end{enonce}

\textbf{Solution :}
Une primitive de la fonction $x \mapsto \frac{1}{x}$ sur $]0, +\infty[$ est $F(x) = \ln(x)$.
On a :
\[
J = \Big[ \ln(x) \Big]_1^e = \ln(e) - \ln(1) = 1 - 0 = 1
\]

### Exercice 8 : Intégrale de fonction trigonométrique
\begin{enonce}
Calculer l'intégrale suivante :
\[
K = \int_0^{\pi} \sin(x) \dd x
\]
\end{enonce}

\textbf{Solution :}
Une primitive de la fonction $x \mapsto \sin(x)$ est $F(x) = -\cos(x)$.
On a :
\[
K = \Big[ -\cos(x) \Big]_0^{\pi} = -\cos(\pi) - (-\cos(0)) = -(-1) + 1 = 1 + 1 = 2
\]

### Exercice 9 : Calcul de la valeur moyenne
\begin{enonce}
Déterminer la valeur moyenne de la fonction $f(x) = 3x^2$ sur l'intervalle $[1, 3]$.
\end{enonce}

\textbf{Solution :}
La valeur moyenne est donnée par la formule :
\[
\mu = \frac{1}{3-1} \int_1^3 3x^2 \dd x = \frac{1}{2} \int_1^3 3x^2 \dd x
\]
Une primitive de $3x^2$ est $F(x) = x^3$.
\[
\int_1^3 3x^2 \dd x = \Big[ x^3 \Big]_1^3 = 3^3 - 1^3 = 27 - 1 = 26
\]
On obtient :
\[
\mu = \frac{1}{2} \times 26 = 13
\]

### Exercice 10 : Autre forme $u'/u$ avec exponentielle
\begin{enonce}
Déterminer une primitive de la fonction $f$ définie sur $\R$ par :
\[
f(x) = \frac{e^x}{e^x + 2}
\]
\end{enonce}

\textbf{Solution :}
Posons $u(x) = e^x + 2$. La fonction $u$ est dérivable et strictement positive sur $\R$ avec $u'(x) = e^x$.
La fonction $f$ s'écrit sous la forme $\frac{u'}{u}$.
Une primitive de $f$ sur $\R$ est :
\[
F(x) = \ln(u(x)) = \ln(e^x + 2)
\]

### Exercice 11 : Équation différentielle du premier ordre
\begin{enonce}
Résoudre sur $\R$ l'équation différentielle $y' - 3y = 6$ et déterminer l'unique solution $f$ telle que $f(0) = 1$.
\end{enonce}

\textbf{Solution :}
1. L'équation s'écrit $y' = 3y + 6$. C'est une équation de la forme $y' = ay + b$ avec $a=3 \ne 0$ et $b=6$.
   Les solutions générales sur $\R$ sont de la forme :
   \[
   y(x) = C e^{3x} - \frac{6}{3} = C e^{3x} - 2 \quad (\text{où } C \in \R)
   \]
2. Déterminons la solution $f$ vérifiant $f(0) = 1$ :
   \[
   f(0) = 1 \iff C e^{3(0)} - 2 = 1 \iff C - 2 = 1 \iff C = 3
   \]
La solution unique cherchée est la fonction $f$ définie sur $\R$ par :
\[
f(x) = 3 e^{3x} - 2
\]

### Exercice 12 : Équation différentielle du second ordre
\begin{enonce}
Résoudre sur $\R$ l'équation différentielle suivante :
\[
y'' - 2y' + 2y = 0
\]
\end{enonce}

\textbf{Solution :}
C'est une équation différentielle linéaire homogène du second ordre à coefficients réels.
Écrivons son équation caractéristique associée :
\[
r^2 - 2r + 2 = 0
\]
Calculons son discriminant :
\[
\Delta = (-2)^2 - 4(1)(2) = 4 - 8 = -4
\]
Puisque $\Delta < 0$, l'équation caractéristique admet deux racines complexes conjuguées :
\[
r_1 = \frac{2 - \iud\sqrt{4}}{2} = 1 - \iud \quad \text{et} \quad r_2 = 1 + \iud
\]
Ici, la partie réelle est $p = 1$ et la partie imaginaire est $q = 1$.
D'après le théorème du cours, les solutions de l'équation différentielle sur $\R$ sont les fonctions de la forme :
\[
y(x) = e^x \Big( \alpha \cos(x) + \beta \sin(x) \Big) \quad (\text{où } \alpha, \beta \in \R)
\]
