### Exercice 1 : Divisibilité et combinaison linéaire
\begin{enonce}
Soit $n$ un entier naturel. On pose $a = 5n + 3$ et $b = 3n + 1$.
\begin{enumerate}
    \item Soit $d$ un diviseur commun de $a$ et $b$. Montrer que $d \mid 4$.
    \item En déduire les valeurs possibles de $\text{pgcd}(a, b)$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Si $d \mid a$ et $d \mid b$, alors $d$ divise toute combinaison linéaire de $a$ et $b$. Or :
$$3a - 5b = 3(5n + 3) - 5(3n + 1) = 15n + 9 - 15n - 5 = 4.$$
Donc $d \mid 4$.
    \item Le PGCD de $a$ et $b$ est un diviseur commun, il divise donc $4$. Les diviseurs positifs de $4$ sont $1$, $2$ et $4$, donc $\text{pgcd}(a, b) \in \{1, 2, 4\}$. (Par exemple, pour $n = 1$ on a $a = 8$, $b = 4$ et $\text{pgcd}(8, 4) = 4$ ; pour $n = 2$ on a $a = 13$, $b = 7$ et $\text{pgcd}(13, 7) = 1$.)
\end{enumerate}

### Exercice 2 : Division euclidienne
\begin{enonce}
\begin{enumerate}
    \item Effectuer la division euclidienne de $2024$ par $7$.
    \item Effectuer la division euclidienne de $-2024$ par $7$.
    \item Un entier $a$ a pour reste $4$ dans la division euclidienne par $6$. Quel est le reste de $2a$ dans la division par $6$ ?
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item On cherche $(q, r)$ avec $0 \le r < 7$. Comme $7 \times 289 = 2023$, on a $2024 = 7 \times 289 + 1$, donc $q = 289$ et $r = 1$.
    \item Le reste doit rester dans $[0, 7[$. Comme $7 \times (-290) = -2030$, on écrit $-2024 = 7 \times (-290) + 6$, donc $q = -290$ et $r = 6$. (Attention : ce n'est pas $-289$ avec un reste négatif.)
    \item Par hypothèse $a = 6k + 4$ pour un entier $k$. Alors :
$$2a = 12k + 8 = 6(2k + 1) + 2.$$
Comme $0 \le 2 < 6$, le reste de $2a$ dans la division par $6$ est $2$.
\end{enumerate}

### Exercice 3 : Nombres premiers
\begin{enonce}
\begin{enumerate}
    \item Le nombre $149$ est-il premier ?
    \item Le nombre $221$ est-il premier ? Si non, le décomposer.
    \item Montrer que si un entier $n \ge 2$ est composé, alors il admet un diviseur premier $p$ tel que $p \le \sqrt{n}$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item On a $\sqrt{149} \approx 12{,}2$ : il suffit de tester les nombres premiers $\le 12$, soit $2, 3, 5, 7, 11$. Aucun ne divise $149$ ($149$ est impair, non multiple de $3$ car $1+4+9 = 14$, ne finit pas par $0$ ni $5$, etc.). Donc $149$ est **premier**.
    \item On a $\sqrt{221} \approx 14{,}9$ : on teste $2, 3, 5, 7, 11, 13$. On trouve $221 = 13 \times 17$. Donc $221$ est **composé**, de décomposition $221 = 13 \times 17$.
    \item Comme $n$ est composé, il s'écrit $n = a \times b$ avec $2 \le a \le b$. Si l'on avait $a > \sqrt{n}$, alors $b \ge a > \sqrt{n}$, d'où $n = ab > \sqrt{n} \times \sqrt{n} = n$, ce qui est absurde. Donc $a \le \sqrt{n}$. Or $a \ge 2$ admet un diviseur premier $p$, et $p \le a \le \sqrt{n}$, avec $p \mid a \mid n$. Cet entier $p$ convient.
\end{enumerate}

### Exercice 4 : Décomposition en facteurs premiers
\begin{enonce}
\begin{enumerate}
    \item Décomposer $504$ et $600$ en produits de facteurs premiers.
    \item Déterminer le nombre de diviseurs positifs de $504$.
    \item En déduire $\text{pgcd}(504, 600)$ et $\text{ppcm}(504, 600)$ à partir des décompositions.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Par divisions successives :
$$504 = 2^3 \times 3^2 \times 7, \qquad 600 = 2^3 \times 3 \times 5^2.$$
(On vérifie $8 \times 9 \times 7 = 504$ et $8 \times 3 \times 25 = 600$.)
    \item Avec $504 = 2^3 \times 3^2 \times 7^1$, le nombre de diviseurs positifs est :
$$(3 + 1)(2 + 1)(1 + 1) = 4 \times 3 \times 2 = 24.$$
    \item Pour le PGCD, on prend chaque facteur **commun** avec son plus **petit** exposant : seuls $2$ et $3$ sont communs, d'où $\text{pgcd} = 2^3 \times 3^1 = 24$. Pour le PPCM, on prend chaque facteur présent avec son plus **grand** exposant :
$$\text{ppcm}(504, 600) = 2^3 \times 3^2 \times 5^2 \times 7 = 8 \times 9 \times 25 \times 7 = 12600.$$
On vérifie : $\text{pgcd} \times \text{ppcm} = 24 \times 12600 = 302400 = 504 \times 600$.
\end{enumerate}

### Exercice 5 : Algorithme d'Euclide
\begin{enonce}
\begin{enumerate}
    \item Calculer $\text{pgcd}(1071, 462)$ par l'algorithme d'Euclide.
    \item Calculer $\text{pgcd}(1112, 695)$ par l'algorithme d'Euclide.
    \item Les entiers $1112$ et $695$ sont-ils premiers entre eux ?
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item On effectue les divisions euclidiennes successives :
$$1071 = 462 \times 2 + 147, \quad 462 = 147 \times 3 + 21, \quad 147 = 21 \times 7 + 0.$$
Le dernier reste non nul est $21$, donc $\text{pgcd}(1071, 462) = 21$.
    \item De même :
$$1112 = 695 \times 1 + 417, \quad 695 = 417 \times 1 + 278,$$
$$417 = 278 \times 1 + 139, \quad 278 = 139 \times 2 + 0.$$
Le dernier reste non nul est $139$, donc $\text{pgcd}(1112, 695) = 139$.
    \item Comme $\text{pgcd}(1112, 695) = 139 \neq 1$, les entiers $1112$ et $695$ ne sont **pas** premiers entre eux. (En fait $1112 = 139 \times 8$ et $695 = 139 \times 5$.)
\end{enumerate}

### Exercice 6 : Fractions irréductibles et PPCM
\begin{enonce}
\begin{enumerate}
    \item Rendre la fraction $\dfrac{252}{105}$ irréductible.
    \item Calculer $\text{ppcm}(252, 105)$ à l'aide de la relation reliant PGCD et PPCM.
    \item Calculer $\dfrac{1}{252} + \dfrac{1}{105}$ et donner le résultat sous forme irréductible.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item L'algorithme d'Euclide donne $\text{pgcd}(252, 105) = 21$. En divisant numérateur et dénominateur par $21$ :
$$\frac{252}{105} = \frac{252 : 21}{105 : 21} = \frac{12}{5}.$$
Comme $\text{pgcd}(12, 5) = 1$, la fraction $\dfrac{12}{5}$ est irréductible.
    \item La relation $\text{pgcd}(a, b) \times \text{ppcm}(a, b) = a \times b$ donne :
$$\text{ppcm}(252, 105) = \frac{252 \times 105}{21} = \frac{26460}{21} = 1260.$$
    \item On réduit au dénominateur commun $\text{ppcm}(252, 105) = 1260$. Comme $1260 = 252 \times 5 = 105 \times 12$ :
$$\frac{1}{252} + \frac{1}{105} = \frac{5}{1260} + \frac{12}{1260} = \frac{17}{1260}.$$
Comme $1260 = 2^2 \times 3^2 \times 5 \times 7$ et que $17$ est premier et ne divise pas $1260$, on a $\text{pgcd}(17, 1260) = 1$ : la fraction $\dfrac{17}{1260}$ est irréductible.
\end{enumerate}
