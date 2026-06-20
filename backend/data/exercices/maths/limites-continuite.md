### Exercice 1 : Levée d'indétermination par simplification
\begin{enonce}
Déterminer la limite en 2 de la fonction $f$ définie sur $\R \setminus \{1; 2\}$ par :
\[
f(x) = \frac{x^2 - 4}{x^2 - 3x + 2}
\]
\end{enonce}

\textbf{Solution :}
En évaluant directement en $x=2$, on obtient une forme indéterminée du type « $\frac{0}{0}$ ».
Factorisons le numérateur et le dénominateur :
- Le numérateur est une différence de carrés : $x^2 - 4 = (x-2)(x+2)$.
- Le dénominateur $x^2 - 3x + 2$ admet pour racine évidente 2 (car $2^2 - 3(2) + 2 = 0$). L'autre racine est 1. On peut donc factoriser par $x^2 - 3x + 2 = (x-2)(x-1)$.
Pour tout $x \in \R \setminus \{1; 2\}$, simplifions l'expression :
\[
f(x) = \frac{(x-2)(x+2)}{(x-2)(x-1)} = \frac{x+2}{x-1}
\]
Ainsi :
\[
\lim_{x \to 2} f(x) = \lim_{x \to 2} \frac{x+2}{x-1} = \frac{2+2}{2-1} = 4
\]

### Exercice 2 : Levée d'indétermination par quantité conjuguée
\begin{enonce}
Déterminer la limite en $+\infty$ de la fonction $f$ définie sur $[0, +\infty[$ par :
\[
f(x) = \sqrt{x^2 + x} - x
\]
\end{enonce}

\textbf{Solution :}
C'est une forme indéterminée du type « $\infty - \infty$ ». Utilisons l'expression conjuguée :
\[
f(x) = \frac{\left(\sqrt{x^2+x}-x\right)\left(\sqrt{x^2+x}+x\right)}{\sqrt{x^2+x}+x} = \frac{(x^2+x) - x^2}{\sqrt{x^2+x}+x} = \frac{x}{\sqrt{x^2\left(1 + \frac{1}{x}\right)}+x}
\]
Pour $x > 0$, $\sqrt{x^2} = x$, donc :
\[
f(x) = \frac{x}{x\sqrt{1+\frac{1}{x}}+x} = \frac{x}{x\left(\sqrt{1+\frac{1}{x}}+1\right)} = \frac{1}{\sqrt{1+\frac{1}{x}}+1}
\]
Comme $\lim_{x \to +\infty} \frac{1}{x} = 0$, on a par limite de somme et de quotient :
\[
\lim_{x \to +\infty} f(x) = \frac{1}{\sqrt{1+0}+1} = \frac{1}{2}
\]

### Exercice 3 : Limite de fonctions trigonométriques par encadrement
\begin{enonce}
Déterminer la limite en $+\infty$ de la fonction $f$ définie sur $]0, +\infty[$ par :
\[
f(x) = \frac{\cos(x)}{x}
\]
\end{enonce}

\textbf{Solution :}
Pour tout réel $x > 0$, on sait que $-1 \le \cos(x) \le 1$.
En divisant par $x$ (qui est strictement positif), on obtient :
\[
-\frac{1}{x} \le \frac{\cos(x)}{x} \le \frac{1}{x}
\]
Or, $\lim_{x \to +\infty} -\frac{1}{x} = 0$ et $\lim_{x \to +\infty} \frac{1}{x} = 0$.
D'après le théorème des Gendarmes, on en déduit :
\[
\lim_{x \to +\infty} f(x) = 0
\]

### Exercice 4 : Recherche d'asymptotes
\begin{enonce}
Déterminer les asymptotes à la courbe représentative de la fonction $f$ définie sur $]1, +\infty[$ par :
\[
f(x) = \frac{2x+3}{x-1}
\]
\end{enonce}

\textbf{Solution :}
\begin{itemize}
    \item \textbf{Limite en $1^+$} : Le numérateur tend vers $2(1)+3 = 5$. Le dénominateur tend vers $0^+$. Par quotient :
    \[
    \lim_{x \to 1^+} f(x) = +\infty
    \]
    La droite d'équation $x = 1$ est donc une **asymptote verticale** à la courbe $\mathcal{C}_f$.
    
    \item \textbf{Limite en $+\infty$} : Factorisons par $x$ au numérateur et au dénominateur :
    \[
    f(x) = \frac{x\left(2 + \frac{3}{x}\right)}{x\left(1 - \frac{1}{x}\right)} = \frac{2 + \frac{3}{x}}{1 - \frac{1}{x}}
    \]
    Puisque $\lim_{x \to +\infty} \frac{1}{x} = 0$, on a par quotient :
    \[
    \lim_{x \to +\infty} f(x) = \frac{2+0}{1-0} = 2
    \]
    La droite d'équation $y = 2$ est donc une **asymptote horizontale** à la courbe $\mathcal{C}_f$ en $+\infty$.
\end{itemize}

### Exercice 5 : Étude de la continuité en un point
\begin{enonce}
Soit la fonction $f$ définie sur $\R$ par :
\[
f(x) = 
\begin{cases} 
2x + 1 & \text{si } x \le 1 \\
x^2 + 2 & \text{si } x > 1
\end{cases}
\]
La fonction $f$ est-elle continue en 1 ?
\end{enonce}

\textbf{Solution :}
La fonction $f$ est continue en 1 si et seulement si $\lim_{x \to 1^-} f(x) = \lim_{x \to 1^+} f(x) = f(1)$.
- Calculons $f(1)$ : par définition pour $x \le 1$, $f(1) = 2(1) + 1 = 3$.
- Limite à gauche en 1 : $\lim_{x \to 1^-} f(x) = \lim_{x \to 1^-} (2x+1) = 3$.
- Limite à droite en 1 : $\lim_{x \to 1^+} f(x) = \lim_{x \to 1^+} (x^2+2) = 1^2 + 2 = 3$.
Puisque $\lim_{x \to 1^-} f(x) = \lim_{x \to 1^+} f(x) = f(1) = 3$, la fonction $f$ est **continue en 1**.

### Exercice 6 : Application du théorème des valeurs intermédiaires
\begin{enonce}
Démontrer que l'équation $x^3 + 3x - 5 = 0$ admet au moins une solution réelle dans l'intervalle $[1, 2]$.
\end{enonce}

\textbf{Solution :}
Soit la fonction $f$ définie sur $[1, 2]$ par $f(x) = x^3 + 3x - 5$.
- $f$ est une fonction polynomiale, elle est donc continue sur $[1, 2]$.
- Calculons les valeurs aux bornes :
  - $f(1) = 1^3 + 3(1) - 5 = 1 + 3 - 5 = -1$.
  - $f(2) = 2^3 + 3(2) - 5 = 8 + 6 - 5 = 9$.
- On constate que $f(1) < 0$ et $f(2) > 0$. Le nombre 0 est donc compris entre $f(1)$ et $f(2)$.
D'après le Théorème des Valeurs Intermédiaires (TVI), il existe au moins un réel $c \in [1, 2]$ tel que $f(c) = 0$.
L'équation admet donc au moins une solution sur $[1,2]$.

### Exercice 7 : Continuité par définition de limite
\begin{enonce}
Démontrer que la fonction $f(x) = \frac{1}{x}$ est continue en tout point $a > 0$ en revenant à la définition.
\end{enonce}

\textbf{Solution :}
Pour tout $a > 0$, calculons la limite de $f(x)$ quand $x$ tend vers $a$ :
\[
\lim_{x \to a} f(x) = \lim_{x \to a} \frac{1}{x} = \frac{1}{a}
\]
Puisque la limite de $f(x)$ quand $x \to a$ existe et vaut précisément $f(a) = \frac{1}{a}$, la fonction $f$ est continue en $a$. Comme cela est vrai pour tout $a > 0$, la fonction $f$ est continue sur l'intervalle $]0, +\infty[$.

### Exercice 8 : Limite d'une fonction composée
\begin{enonce}
Déterminer la limite en $0^+$ de la fonction $h(x) = \cos(\sqrt{x})$.
\end{enonce}

\textbf{Solution :}
La fonction $h$ est la composée de $u(x) = \sqrt{x}$ et de $v(y) = \cos(y)$.
1. Cherchons la limite de $u(x)$ en $0^+$ :
   \[
   \lim_{x \to 0^+} \sqrt{x} = 0
   \]
2. Cherchons la limite de $v(y)$ en 0 :
   \[
   \lim_{y \to 0} \cos(y) = \cos(0) = 1
   \]
D'après le théorème de la limite d'une fonction composée, on conclut :
\[
\lim_{x \to 0^+} \cos(\sqrt{x}) = 1
\]

### Exercice 9 : Limite oscillante amortie
\begin{enonce}
Déterminer la limite en $0^+$ de la fonction $f$ définie sur $]0, +\infty[$ par :
\[
f(x) = x \sin\left(\frac{1}{x}\right)
\]
\end{enonce}

\textbf{Solution :}
Pour tout $x > 0$, $-1 \le \sin\left(\frac{1}{x}\right) \le 1$.
En multipliant par $x$ (qui est strictement positif) :
\[
-x \le x \sin\left(\frac{1}{x}\right) \le x
\]
Or, $\lim_{x \to 0^+} -x = 0$ et $\lim_{x \to 0^+} x = 0$.
D'après le théorème des Gendarmes, la limite en $0^+$ de $f(x)$ est :
\[
\lim_{x \to 0^+} x \sin\left(\frac{1}{x}\right) = 0
\]

### Exercice 10 : Continuité globale et paramètre
\begin{enonce}
Déterminer la valeur du réel $a$ pour laquelle la fonction $f$ définie sur $\R$ par :
\[
f(x) = 
\begin{cases} 
3x + a & \text{si } x < 2 \\
x^2 - 1 & \text{si } x \ge 2
\end{cases}
\]
est continue sur $\R$.
\end{enonce}

\textbf{Solution :}
Les fonctions $x \mapsto 3x+a$ et $x \mapsto x^2-1$ sont des polynômes, donc continues sur $]-\infty, 2[$ et $]2, +\infty[$ respectivement, quelle que soit la valeur de $a$.
La fonction $f$ est continue sur $\R$ si et seulement si elle est continue en 2, soit $\lim_{x \to 2^-} f(x) = f(2)$.
- $f(2) = 2^2 - 1 = 3$.
- $\lim_{x \to 2^+} f(x) = \lim_{x \to 2^+} (x^2-1) = 3$.
- $\lim_{x \to 2^-} f(x) = \lim_{x \to 2^-} (3x+a) = 3(2) + a = 6 + a$.
Pour assurer la continuité, on doit avoir :
\[
6 + a = 3 \iff a = -3
\]

### Exercice 11 : Calcul de limite avec racine troisième
\begin{enonce}
Déterminer la limite en $+\infty$ de la fonction suivante :
\[
f(x) = \sqrt[3]{x^3 + x^2} - x
\]
\end{enonce}

\textbf{Solution :}
C'est une forme indéterminée de la forme « $\infty - \infty$ ». Utilisons l'identité algébrique $a^3 - b^3 = (a-b)(a^2 + ab + b^2)$, qui donne $a-b = \frac{a^3 - b^3}{a^2 + ab + b^2}$.
Ici, posons $a = \sqrt[3]{x^3+x^2}$ et $b = x$. On a :
\[
f(x) = \frac{(x^3 + x^2) - x^3}{(\sqrt[3]{x^3 + x^2})^2 + x\sqrt[3]{x^3 + x^2} + x^2} = \frac{x^2}{(\sqrt[3]{x^3(1 + 1/x)})^2 + x\sqrt[3]{x^3(1 + 1/x)} + x^2}
\]
Puisque $\sqrt[3]{x^3} = x$ pour $x > 0$, on a :
\[
f(x) = \frac{x^2}{x^2(\sqrt[3]{1 + 1/x})^2 + x^2\sqrt[3]{1 + 1/x} + x^2} = \frac{x^2}{x^2 \left( (\sqrt[3]{1 + 1/x})^2 + \sqrt[3]{1 + 1/x} + 1 \right)}
\]
Pour $x > 0$, on simplifie par $x^2$ :
\[
f(x) = \frac{1}{(\sqrt[3]{1 + 1/x})^2 + \sqrt[3]{1 + 1/x} + 1}
\]
Puisque $\lim_{x\to +\infty} \frac{1}{x} = 0$, on obtient par limite de somme et de quotient :
\[
\lim_{x \to +\infty} f(x) = \frac{1}{1^2 + 1 + 1} = \frac{1}{3}
\]

### Exercice 12 : Simplification avec la fonction Arctangente
\begin{enonce}
Démontrer que pour tout $x > 0$ :
\[
\arctan(x) + \arctan\left(\frac{1}{x}\right) = \frac{\pi}{2}
\]
\end{enonce}

\textbf{Solution :}
Soit $x > 0$. Posons $\theta = \arctan(x)$.
Puisque $x > 0$, on a $\theta \in \left]0, \frac{\pi}{2}\right[$.
On a $\tan(\theta) = x$.
Étudions le nombre $\frac{\pi}{2} - \theta$. Comme $\theta \in \left]0, \frac{\pi}{2}\right[$, on a également $\frac{\pi}{2} - \theta \in \left]0, \frac{\pi}{2}\right[$.
Calculons la tangente de cet angle en utilisant la formule trigonométrique $\tan\left(\frac{\pi}{2} - \theta\right) = \frac{1}{\tan(\theta)}$ :
\[
\tan\left(\frac{\pi}{2} - \theta\right) = \frac{1}{\tan(\theta)} = \frac{1}{x}
\]
Ainsi, $\frac{\pi}{2} - \theta$ est l'unique angle dans $\left]-\frac{\pi}{2}, \frac{\pi}{2}\right[$ dont la tangente vaut $\frac{1}{x}$.
Par définition de la fonction Arctangente, on a donc :
\[
\arctan\left(\frac{1}{x}\right) = \frac{\pi}{2} - \theta = \frac{\pi}{2} - \arctan(x)
\]
Ce qui donne bien :
\[
\arctan(x) + \arctan\left(\frac{1}{x}\right) = \frac{\pi}{2}
\]
