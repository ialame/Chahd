### Problème 1 : Une famille de fractions irréductibles
\begin{enonce}
Soit $n$ un entier naturel. On pose $a = 2n + 1$ et $b = 3n + 2$.
\begin{enumerate}
    \item Soit $d$ un diviseur commun de $a$ et $b$. En considérant une combinaison linéaire bien choisie de $a$ et $b$, montrer que $d \mid 1$.
    \item En déduire que, pour tout entier naturel $n$, les entiers $2n + 1$ et $3n + 2$ sont premiers entre eux.
    \item Que peut-on en conclure pour la fraction $\dfrac{2n + 1}{3n + 2}$ ?
    \item Vérifier le résultat pour $n = 10$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Si $d \mid a$ et $d \mid b$, alors $d$ divise toute combinaison linéaire à coefficients entiers de $a$ et $b$. Or :
$$3a - 2b = 3(2n + 1) - 2(3n + 2) = 6n + 3 - 6n - 4 = -1.$$
Donc $d \mid (-1)$, c'est-à-dire $d \mid 1$.
    \item Le seul diviseur positif commun possible est donc $1$ : $\text{pgcd}(2n + 1, 3n + 2) = 1$. Ce raisonnement est valable quel que soit $n$, donc $2n + 1$ et $3n + 2$ sont premiers entre eux pour tout entier naturel $n$.
    \item Comme numérateur et dénominateur sont premiers entre eux, la fraction $\dfrac{2n + 1}{3n + 2}$ est **irréductible** pour tout entier naturel $n$ : elle ne peut jamais être simplifiée.
    \item Pour $n = 10$ : $a = 21 = 3 \times 7$ et $b = 32 = 2^5$. Ces deux nombres n'ont aucun facteur premier commun, donc $\text{pgcd}(21, 32) = 1$, conformément au résultat.
\end{enumerate}

### Problème 2 : Retrouver deux entiers à partir du PGCD et du PPCM
\begin{enonce}
On cherche tous les couples d'entiers naturels $(a, b)$ avec $a \le b$ tels que :
$$\text{pgcd}(a, b) = 15 \quad \text{et} \quad \text{ppcm}(a, b) = 90.$$
\begin{enumerate}
    \item Justifier que l'on peut écrire $a = 15a'$ et $b = 15b'$ avec $\text{pgcd}(a', b') = 1$.
    \item À l'aide de la relation $\text{pgcd}(a, b) \times \text{ppcm}(a, b) = a \times b$, montrer que $a' b' = 6$.
    \item En déduire tous les couples $(a, b)$ avec $a \le b$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Comme $\text{pgcd}(a, b) = 15$, l'entier $15$ divise $a$ et $b$ : on peut écrire $a = 15a'$ et $b = 15b'$. De plus, $a'$ et $b'$ sont premiers entre eux : si un entier $k > 1$ divisait à la fois $a'$ et $b'$, alors $15k$ diviserait $a$ et $b$, ce qui contredirait que $15$ est le **plus grand** diviseur commun.
    \item La relation fondamentale donne $\text{pgcd}(a, b) \times \text{ppcm}(a, b) = a \times b$, soit :
$$15 \times 90 = (15a')(15b') = 225 \, a'b'.$$
Donc $a'b' = \dfrac{15 \times 90}{225} = \dfrac{1350}{225} = 6$.
    \item On cherche les couples $(a', b')$ d'entiers naturels avec $a' \le b'$, $a'b' = 6$ et $\text{pgcd}(a', b') = 1$. Les factorisations de $6$ sont $1 \times 6$ et $2 \times 3$ ; les deux donnent des facteurs premiers entre eux. D'où :
$$(a', b') \in \{(1, 6),\ (2, 3)\} \ \Longrightarrow\ (a, b) \in \{(15, 90),\ (30, 45)\}.$$
On vérifie : $\text{pgcd}(15, 90) = 15$, $\text{ppcm}(15, 90) = 90$ ; et $\text{pgcd}(30, 45) = 15$, $\text{ppcm}(30, 45) = 90$.
\end{enumerate}

### Problème 3 : Diviseurs et carré parfait
\begin{enonce}
On considère l'entier $N = 2^4 \times 3^2 \times 5$.
\begin{enumerate}
    \item Calculer la valeur de $N$ et donner son nombre de diviseurs positifs.
    \item Combien de diviseurs positifs de $N$ sont pairs ?
    \item Déterminer le plus petit entier naturel $k \ge 1$ tel que $N \times k$ soit le carré d'un entier.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item On a $N = 2^4 \times 3^2 \times 5 = 16 \times 9 \times 5 = 720$. Avec la décomposition $N = 2^4 \times 3^2 \times 5^1$, le nombre de diviseurs positifs est :
$$(4 + 1)(2 + 1)(1 + 1) = 5 \times 3 \times 2 = 30.$$
    \item Un diviseur de $N$ est **impair** s'il ne contient aucun facteur $2$, c'est-à-dire s'il divise $3^2 \times 5$. Le nombre de tels diviseurs est $(2 + 1)(1 + 1) = 6$. Les diviseurs pairs sont les autres, soit $30 - 6 = 24$.
    \item Un entier est un carré parfait si et seulement si **tous** les exposants de sa décomposition en facteurs premiers sont pairs. Dans $N = 2^4 \times 3^2 \times 5^1$, les exposants de $2$ et de $3$ sont déjà pairs, mais celui de $5$ vaut $1$ (impair). Pour rendre tous les exposants pairs avec le plus petit facteur, il faut multiplier par $5$, donc $k = 5$. On obtient alors :
$$N \times 5 = 2^4 \times 3^2 \times 5^2 = (2^2 \times 3 \times 5)^2 = 60^2 = 3600.$$
\end{enumerate}
