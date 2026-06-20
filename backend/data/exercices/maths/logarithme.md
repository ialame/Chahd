### Exercice 1 : Équation logarithmique simple
\begin{enonce}
Résoudre dans $\R$ l'équation suivante :
\[
\ln(2x - 1) = 3
\]
\end{enonce}

\textbf{Solution :}
1. **Domaine d'étude** : L'expression sous le logarithme doit être strictement positive :
   \[
   2x - 1 > 0 \iff x > \frac{1}{2} \implies D = \left] \frac{1}{2}, +\infty \right[
   \]
2. **Résolution** :
   \[
   \ln(2x - 1) = 3 \iff 2x - 1 = e^3 \iff 2x = e^3 + 1 \iff x = \frac{e^3 + 1}{2}
   \]
3. **Vérification** : Comme $e^3 > 0$, $\frac{e^3 + 1}{2} > \frac{1}{2}$, la solution appartient bien à $D$.
L'ensemble des solutions est :
\[
S = \left\{ \frac{e^3 + 1}{2} \right\}
\]

### Exercice 2 : Inéquation logarithmique
\begin{enonce}
Résoudre dans $\R$ l'inéquation suivante :
\[
\ln(x^2 - 1) \ge \ln(3)
\]
\end{enonce}

\textbf{Solution :}
1. **Domaine d'étude** : On doit avoir $x^2 - 1 > 0 \iff x^2 > 1 \iff x \in ]-\infty, -1[ \cup ]1, +\infty[ = D$.
2. **Résolution** : Par stricte croissance de la fonction $\ln$ sur $]0, +\infty[$ :
   \[
   \ln(x^2 - 1) \ge \ln(3) \iff x^2 - 1 \ge 3 \iff x^2 \ge 4 \iff x \in ]-\infty, -2] \cup [2, +\infty[
   \]
3. **Vérification** : L'ensemble obtenu est entièrement inclus dans le domaine d'étude $D$.
L'ensemble des solutions est :
\[
S = ]-\infty, -2] \cup [2, +\infty[
\]

### Exercice 3 : Limite par croissance comparée
\begin{enonce}
Déterminer la limite en $+\infty$ de la fonction $f$ définie sur $]0, +\infty[$ par :
\[
f(x) = \frac{\ln(x)}{x^2}
\]
\end{enonce}

\textbf{Solution :}
C'est une forme indéterminée du type « $\frac{\infty}{\infty}$ ».
D'après le théorème des croissances comparées, pour tout entier $n \ge 1$, $\lim_{x \to +\infty} \frac{\ln(x)}{x^n} = 0$.
En choisissant $n = 2$, on obtient directement :
\[
\lim_{x \to +\infty} f(x) = 0
\]

### Exercice 4 : Limite en 0 par croissance comparée
\begin{enonce}
Déterminer la limite en $0^+$ de la fonction $f$ définie sur $]0, +\infty[$ par :
\[
f(x) = x \ln(x)
\]
\end{enonce}

\textbf{Solution :}
C'est une forme indéterminée du type « $0 \times (-\infty)$ ».
D'après le cours, le théorème des croissances comparées en $0^+$ énonce que pour tout $n \ge 1$ :
\[
\lim_{x \to 0^+} x^n \ln(x) = 0
\]
En posant $n = 1$, on obtient :
\[
\lim_{x \to 0^+} f(x) = 0
\]

### Exercice 5 : Limite de quotient sans indétermination
\begin{enonce}
Déterminer la limite en $0^+$ de la fonction $f$ définie sur $]0, +\infty[$ par :
\[
f(x) = \frac{\ln(x)}{x}
\]
\end{enonce}

\textbf{Solution :}
Étudions séparément la limite du numérateur et du dénominateur :
- $\lim_{x \to 0^+} \ln(x) = -\infty$.
- $\lim_{x \to 0^+} \frac{1}{x} = +\infty$.
Puisque $f(x) = \ln(x) \times \frac{1}{x}$, par produit de limites (« $-\infty \times (+\infty)$ ») :
\[
\lim_{x \to 0^+} f(x) = -\infty
\]
Il n'y avait pas d'indétermination ici.

### Exercice 6 : Dérivation d'un logarithme composé
\begin{enonce}
Déterminer la dérivée de la fonction $f$ définie sur $]1, 2[$ par :
\[
f(x) = \ln(-x^2 + 3x - 2)
\]
\end{enonce}

\textbf{Solution :}
La fonction $f$ est de la forme $\ln(u)$ avec $u(x) = -x^2 + 3x - 2$.
Pour $x \in ]1, 2[$, le trinôme $u(x)$ est strictement positif (car ses racines sont 1 et 2, et le coefficient devant $x^2$ est négatif). La fonction est donc dérivable.
Sa dérivée est $u'(x) = -2x + 3$.
D'après la formule $(\ln(u))' = \frac{u'}{u}$, on obtient :
\[
f'(x) = \frac{-2x + 3}{-x^2 + 3x - 2}
\]

### Exercice 7 : Équation de type second degré en $\ln(x)$
\begin{enonce}
Résoudre dans $]0, +\infty[$ l'équation suivante :
\[
(\ln(x))^2 - 3\ln(x) + 2 = 0
\]
\end{enonce}

\textbf{Solution :}
Posons le changement de variable $X = \ln(x)$. L'équation devient :
\[
X^2 - 3X + 2 = 0
\]
C'est une équation du second degré. Le discriminant est $\Delta = (-3)^2 - 4(1)(2) = 1 > 0$.
Les solutions pour $X$ sont :
\[
X_1 = \frac{3-1}{2} = 1 \quad \text{et} \quad X_2 = \frac{3+1}{2} = 2
\]
Revenons à la variable $x$ :
- $\ln(x) = 1 \iff x = e^1 = e$.
- $\ln(x) = 2 \iff x = e^2$.
Les deux solutions appartiennent bien au domaine $]0, +\infty[$.
L'ensemble des solutions est :
\[
S = \{e; e^2\}
\]

### Exercice 8 : Limite par factorisation forcée
\begin{enonce}
Déterminer la limite en $+\infty$ de la fonction $f$ définie sur $]0, +\infty[$ par :
\[
f(x) = \ln(x) - x
\]
\end{enonce}

\textbf{Solution :}
C'est une forme indéterminée du type « $\infty - \infty$ ». Facteur commun $x$ :
\[
f(x) = x \left( \frac{\ln(x)}{x} - 1 \right)
\]
D'après les croissances comparées, $\lim_{x \to +\infty} \frac{\ln(x)}{x} = 0$.
Le terme dans la parenthèse tend donc vers $0-1 = -1$.
Par produit de limites (« $+\infty \times (-1)$ ») :
\[
\lim_{x \to +\infty} f(x) = -\infty
\]

### Exercice 9 : Équation de tangente
\begin{enonce}
Déterminer l'équation de la droite tangente $\mathcal{T}_e$ à la courbe de la fonction logarithme $f(x) = \ln(x)$ au point d'abscisse $x=e$.
\end{enonce}

\textbf{Solution :}
L'équation de la tangente en $a = e$ est :
\[
y = f'(e)(x-e) + f(e)
\]
On sait que $f(e) = \ln(e) = 1$.
De plus, $f'(x) = \frac{1}{x}$, donc $f'(e) = \frac{1}{e}$.
L'équation de la tangente est donc :
\[
y = \frac{1}{e}(x-e) + 1 \implies y = \frac{1}{e}x - 1 + 1 \implies y = \frac{1}{e}x
\]

### Exercice 10 : Domaine de définition
\begin{enonce}
Déterminer le domaine de définition de la fonction $g$ définie par :
\[
g(x) = \ln\left( \frac{x-1}{2-x} \right)
\]
\end{enonce}

\textbf{Solution :}
La fonction logarithme n'est définie que pour des valeurs strictement positives. On doit donc résoudre l'inéquation :
\[
\frac{x-1}{2-x} > 0
\]
Dresseur un tableau de signes pour ce quotient :
- Le numérateur $x-1$ s'annule en $x=1$ et est positif pour $x > 1$.
- Le dénominateur $2-x$ s'annule en $x=2$ (valeur interdite) et est positif pour $x < 2$.
Le quotient est donc strictement positif entre les valeurs 1 et 2.
Le domaine de définition de $g$ est :
\[
D_g = ]1, 2[
\]
