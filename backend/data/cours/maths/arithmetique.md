L'arithmétique est l'étude des nombres entiers et de leurs propriétés. Ce chapitre se place dans l'anneau $\mathbb{Z}$ des entiers relatifs et développe les outils fondamentaux : la divisibilité, la division euclidienne, les congruences, le PGCD, le PPCM et les nombres premiers. Ces notions, anciennes mais toujours vivantes, sont au cœur de la théorie des nombres et de nombreuses applications modernes comme la cryptographie.

## Divisibilité dans $\mathbb{Z}$

\begin{definition}[Divisibilité]
Soient $a$ et $b$ deux entiers relatifs. On dit que $b$ **divise** $a$, et on note $b \mid a$, s'il existe un entier $k \in \mathbb{Z}$ tel que $a = b \times k$.
On dit alors que $b$ est un **diviseur** de $a$, ou que $a$ est un **multiple** de $b$.
\end{definition}

\begin{exemple}
$3 \mid 12$ car $12 = 3 \times 4$. De même $-5 \mid 20$ car $20 = (-5) \times (-4)$. Enfin, tout entier divise $0$ car $0 = b \times 0$.
\end{exemple}

\begin{propriete}[Propriétés de la divisibilité]
Pour tous entiers relatifs $a$, $b$, $c$ :
\begin{itemize}
    \item **Réflexivité** : $a \mid a$.
    \item **Transitivité** : si $a \mid b$ et $b \mid c$, alors $a \mid c$.
    \item Si $a \mid b$ et $b \mid a$, alors $a = b$ ou $a = -b$ (c'est-à-dire $|a| = |b|$).
    \item Si $a \mid b$ et $a \mid c$, alors pour tous entiers $u$ et $v$ : $a \mid (ub + vc)$.
    \item Si $a \mid b$ et $b \neq 0$, alors $|a| \le |b|$.
\end{itemize}
\end{propriete}

\begin{methode}[Combinaison linéaire]
Pour montrer qu'un entier $d$ divise une expression, on cherche à l'écrire comme combinaison des termes que $d$ divise déjà. Par exemple, si $d \mid a$ et $d \mid b$, alors $d \mid (3a - 2b)$ car $3a - 2b = d(3k - 2k')$ en posant $a = dk$ et $b = dk'$.
\end{methode}

## Division euclidienne

\begin{theoreme}[Division euclidienne]
Soient $a \in \mathbb{Z}$ et $b \in \mathbb{Z}^*$. Il existe un **unique** couple d'entiers $(q, r)$ tel que :
$$a = bq + r \quad \text{avec} \quad 0 \le r < |b|$$
L'entier $q$ est appelé le **quotient** et $r$ le **reste** de la division euclidienne de $a$ par $b$.
\end{theoreme}

\begin{exemple}
La division euclidienne de $47$ par $5$ donne $47 = 5 \times 9 + 2$, donc $q = 9$ et $r = 2$.
Pour un dividende négatif, la division de $-47$ par $5$ donne $-47 = 5 \times (-10) + 3$, donc $q = -10$ et $r = 3$ : le reste reste toujours positif.
\end{exemple}

\begin{propriete}
Avec les notations précédentes, $b \mid a$ si et seulement si le reste $r$ de la division euclidienne de $a$ par $b$ est nul.
\end{propriete}

## Congruences modulo $n$

\begin{definition}[Congruence]
Soit $n$ un entier naturel non nul. On dit que deux entiers $a$ et $b$ sont **congrus modulo $n$**, et on note $a \equiv b \pmod{n}$, lorsque $n \mid (a - b)$.
\end{definition}

\begin{propriete}[Caractérisation par les restes]
$a \equiv b \pmod{n}$ si et seulement si $a$ et $b$ ont le **même reste** dans la division euclidienne par $n$.
\end{propriete}

\begin{exemple}
$17 \equiv 5 \pmod{3}$ car $17 - 5 = 12 = 3 \times 4$. On peut aussi vérifier que $17 = 3 \times 5 + 2$ et $5 = 3 \times 1 + 2$ : tous deux ont pour reste $2$.
\end{exemple}

\begin{theoreme}[Relation d'équivalence]
La relation de congruence modulo $n$ est **réflexive**, **symétrique** et **transitive** :
\begin{itemize}
    \item $a \equiv a \pmod{n}$ ;
    \item si $a \equiv b \pmod{n}$ alors $b \equiv a \pmod{n}$ ;
    \item si $a \equiv b \pmod{n}$ et $b \equiv c \pmod{n}$ alors $a \equiv c \pmod{n}$.
\end{itemize}
\end{theoreme}

\begin{theoreme}[Compatibilité avec les opérations]
Si $a \equiv b \pmod{n}$ et $c \equiv d \pmod{n}$, alors :
\begin{itemize}
    \item **Addition** : $a + c \equiv b + d \pmod{n}$ ;
    \item **Multiplication** : $a \times c \equiv b \times d \pmod{n}$ ;
    \item **Puissance** : pour tout $k \in \mathbb{N}$, $a^k \equiv b^k \pmod{n}$.
\end{itemize}
\end{theoreme}

\begin{methode}[Calcul d'un reste de puissance]
Pour déterminer le reste de $a^k$ modulo $n$, on cherche une petite puissance de $a$ congrue à $1$ ou $-1$. Par exemple, calculons le reste de $2^{100}$ modulo $7$. On a $2^3 = 8 \equiv 1 \pmod{7}$. Comme $100 = 3 \times 33 + 1$, on obtient :
$$2^{100} = (2^3)^{33} \times 2^1 \equiv 1^{33} \times 2 \equiv 2 \pmod{7}.$$
Le reste cherché est donc $2$.
\end{methode}

## PGCD, PPCM et algorithme d'Euclide

\begin{definition}[PGCD et PPCM]
Soient $a$ et $b$ deux entiers relatifs non tous deux nuls.
\begin{itemize}
    \item Le **plus grand commun diviseur** de $a$ et $b$, noté $\text{pgcd}(a, b)$ ou $a \wedge b$, est le plus grand entier positif divisant à la fois $a$ et $b$.
    \item Le **plus petit commun multiple** de $a$ et $b$, noté $\text{ppcm}(a, b)$ ou $a \vee b$, est le plus petit entier strictement positif multiple à la fois de $a$ et de $b$.
\end{itemize}
\end{definition}

\begin{theoreme}[Algorithme d'Euclide]
Soient $a$ et $b$ deux entiers avec $b \neq 0$. Si $r$ est le reste de la division euclidienne de $a$ par $b$, alors :
$$\text{pgcd}(a, b) = \text{pgcd}(b, r).$$
En répétant le procédé, le dernier reste non nul obtenu est égal au PGCD de $a$ et $b$.
\end{theoreme}

\begin{methode}[Algorithme d'Euclide en pratique]
Calculons $\text{pgcd}(252, 105)$ :
\begin{itemize}
    \item $252 = 105 \times 2 + 42$
    \item $105 = 42 \times 2 + 21$
    \item $42 = 21 \times 2 + 0$
\end{itemize}
Le dernier reste non nul est $21$, donc $\text{pgcd}(252, 105) = 21$.
\end{methode}

\begin{propriete}[Relation entre PGCD et PPCM]
Pour tous entiers naturels non nuls $a$ et $b$ :
$$\text{pgcd}(a, b) \times \text{ppcm}(a, b) = a \times b.$$
\end{propriete}

## Nombres premiers entre eux et théorème de Bézout

\begin{definition}[Nombres premiers entre eux]
Deux entiers relatifs $a$ et $b$ sont dits **premiers entre eux** lorsque $\text{pgcd}(a, b) = 1$.
\end{definition}

\begin{theoreme}[Théorème de Bézout]
Deux entiers relatifs $a$ et $b$ sont premiers entre eux **si et seulement si** il existe des entiers $u$ et $v$ tels que :
$$au + bv = 1.$$
Plus généralement (identité de Bézout), pour tous entiers $a$ et $b$ non tous deux nuls, il existe des entiers $u$ et $v$ tels que $au + bv = \text{pgcd}(a, b)$.
\end{theoreme}

\begin{exemple}
$8$ et $5$ sont premiers entre eux. En effet $8 \times 2 + 5 \times (-3) = 16 - 15 = 1$, ce qui fournit un couple de Bézout $(u, v) = (2, -3)$.
\end{exemple}

## Théorème de Gauss

\begin{theoreme}[Théorème de Gauss]
Soient $a$, $b$ et $c$ trois entiers relatifs. Si $a \mid bc$ et si $a$ et $b$ sont **premiers entre eux**, alors $a \mid c$.
\end{theoreme}

\begin{methode}[Application du théorème de Gauss]
Supposons que $7 \mid 5n$ pour un certain entier $n$. Comme $\text{pgcd}(7, 5) = 1$, le théorème de Gauss permet de conclure directement que $7 \mid n$. Cette technique est essentielle pour résoudre les équations diophantiennes du type $ax + by = c$.
\end{methode}

\begin{propriete}[Corollaire]
Si deux entiers $a$ et $b$, premiers entre eux, divisent chacun un même entier $c$, alors leur produit $ab$ divise $c$.
\end{propriete}

## Nombres premiers et décomposition

\begin{definition}[Nombre premier]
Un entier naturel $p$ est dit **premier** lorsqu'il admet exactement **deux diviseurs positifs distincts** : $1$ et lui-même. En particulier, $p \ge 2$.
\end{definition}

\begin{exemple}
Les premiers nombres premiers sont $2, 3, 5, 7, 11, 13, 17, 19, 23, \dots$ L'entier $1$ n'est pas premier (un seul diviseur), et $2$ est le seul nombre premier pair.
\end{exemple}

\begin{theoreme}[Infinité et critère]
\begin{itemize}
    \item Il existe une **infinité** de nombres premiers (Euclide).
    \item Si un entier $n \ge 2$ n'admet aucun diviseur premier $p$ tel que $p \le \sqrt{n}$, alors $n$ est premier.
\end{itemize}
\end{theoreme}

\begin{theoreme}[Théorème fondamental de l'arithmétique]
Tout entier naturel $n \ge 2$ se décompose de manière **unique** (à l'ordre des facteurs près) en produit de nombres premiers :
$$n = p_1^{\alpha_1} \times p_2^{\alpha_2} \times \cdots \times p_k^{\alpha_k},$$
où les $p_i$ sont des nombres premiers distincts et les $\alpha_i$ des entiers naturels non nuls.
\end{theoreme}

\begin{exemple}
La décomposition en facteurs premiers de $360$ est :
$$360 = 2^3 \times 3^2 \times 5.$$
À partir de la décomposition de deux entiers, on obtient le PGCD en prenant chaque facteur premier commun avec le plus **petit** exposant, et le PPCM avec le plus **grand** exposant.
\end{exemple}
