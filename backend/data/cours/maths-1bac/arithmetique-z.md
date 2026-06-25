L'arithmétique est l'étude des nombres entiers et de leurs propriétés. Ce chapitre se place dans l'ensemble $\mathbb{Z}$ des entiers relatifs et met en place les outils fondamentaux de première année du baccalauréat : la divisibilité, la division euclidienne, les nombres premiers, ainsi que le PGCD et le PPCM de deux entiers. Ces notions, simples en apparence, sont à la base de toute la théorie des nombres et préparent les approfondissements (congruences, théorèmes de Bézout et de Gauss) abordés en deuxième année.

## Divisibilité dans $\mathbb{Z}$

\begin{definition}[Divisibilité]
Soient $a$ et $b$ deux entiers relatifs. On dit que $b$ **divise** $a$, et on note $b \mid a$, s'il existe un entier $k \in \mathbb{Z}$ tel que $a = b \times k$.
On dit alors que $b$ est un **diviseur** de $a$, ou que $a$ est un **multiple** de $b$.
\end{definition}

\begin{exemple}
$3 \mid 12$ car $12 = 3 \times 4$. De même $-5 \mid 20$ car $20 = (-5) \times (-4)$. Enfin, tout entier divise $0$ car $0 = b \times 0$, et $1$ divise tout entier.
\end{exemple}

\begin{propriete}[Propriétés de la divisibilité]
Pour tous entiers relatifs $a$, $b$, $c$ :
\begin{itemize}
    \item **Réflexivité** : $a \mid a$.
    \item **Transitivité** : si $a \mid b$ et $b \mid c$, alors $a \mid c$.
    \item Si $a \mid b$ et $b \mid a$, alors $|a| = |b|$, c'est-à-dire $a = b$ ou $a = -b$.
    \item Si $a \mid b$ et $a \mid c$, alors pour tous entiers $u$ et $v$ : $a \mid (ub + vc)$.
    \item Si $a \mid b$ et $b \neq 0$, alors $|a| \le |b|$. En particulier un entier non nul n'a qu'un nombre fini de diviseurs.
\end{itemize}
\end{propriete}

\begin{methode}[Montrer une divisibilité par combinaison linéaire]
Pour montrer qu'un entier $d$ divise une expression, on cherche à l'écrire comme combinaison des termes que $d$ divise déjà. Par exemple, si $d \mid a$ et $d \mid b$, alors $d \mid (3a - 2b)$ : en posant $a = dk$ et $b = dk'$, on obtient $3a - 2b = d(3k - 2k')$.
\end{methode}

## Division euclidienne

\begin{theoreme}[Division euclidienne]
Soient $a \in \mathbb{Z}$ et $b \in \mathbb{Z}^*$. Il existe un **unique** couple d'entiers $(q, r)$ tel que :
$$a = bq + r \quad \text{avec} \quad 0 \le r < |b|.$$
L'entier $q$ est appelé le **quotient** et $r$ le **reste** de la division euclidienne de $a$ par $b$.
\end{theoreme}

\begin{important}
Deux exigences sont indispensables : l'**existence** d'un tel couple, et son **unicité**. C'est l'encadrement $0 \le r < |b|$ qui rend le couple $(q, r)$ unique ; sans cette condition sur le reste, plusieurs écritures $a = bq + r$ seraient possibles.
\end{important}

\begin{exemple}
La division euclidienne de $47$ par $5$ donne $47 = 5 \times 9 + 2$, donc $q = 9$ et $r = 2$.
Pour un dividende négatif, la division de $-47$ par $5$ donne $-47 = 5 \times (-10) + 3$, donc $q = -10$ et $r = 3$ : le reste reste toujours positif.
\end{exemple}

\begin{propriete}
Avec les notations précédentes, $b \mid a$ si et seulement si le reste $r$ de la division euclidienne de $a$ par $b$ est nul.
\end{propriete}

## Nombres premiers

\begin{definition}[Nombre premier]
Un entier naturel $p$ est dit **premier** lorsqu'il admet exactement **deux diviseurs positifs distincts** : $1$ et lui-même. En particulier $p \ge 2$.
Un entier $n \ge 2$ qui n'est pas premier est dit **composé**.
\end{definition}

\begin{exemple}
Les premiers nombres premiers sont $2, 3, 5, 7, 11, 13, 17, 19, 23, 29, \dots$ L'entier $1$ n'est pas premier (il n'a qu'un seul diviseur positif), et $2$ est le seul nombre premier pair.
\end{exemple}

\begin{theoreme}[Critère de primalité]
Soit $n \ge 2$ un entier.
\begin{itemize}
    \item Si $n$ n'admet aucun diviseur premier $p$ vérifiant $p \le \sqrt{n}$, alors $n$ est **premier**.
    \item Tout entier $n \ge 2$ admet au moins un diviseur premier.
    \item Il existe une **infinité** de nombres premiers (Euclide).
\end{itemize}
\end{theoreme}

\begin{methode}[Tester si un entier est premier]
Pour savoir si $n$ est premier, il suffit de tester sa divisibilité par les nombres premiers inférieurs ou égaux à $\sqrt{n}$. Par exemple, pour $n = 149$, on a $\sqrt{149} \approx 12{,}2$ : on teste $2, 3, 5, 7, 11$. Aucun ne divise $149$, donc $149$ est premier.
\end{methode}

\begin{methode}[Crible d'Ératosthène]
Pour obtenir tous les nombres premiers jusqu'à un entier $N$, on écrit la liste des entiers de $2$ à $N$, puis on raye successivement tous les multiples de $2$ (sauf $2$), de $3$ (sauf $3$), de $5$, etc. Les entiers non rayés sont exactement les nombres premiers inférieurs ou égaux à $N$.
\end{methode}

## Décomposition en facteurs premiers

\begin{theoreme}[Théorème fondamental de l'arithmétique]
Tout entier naturel $n \ge 2$ se décompose de manière **unique** (à l'ordre des facteurs près) en produit de nombres premiers :
$$n = p_1^{\alpha_1} \times p_2^{\alpha_2} \times \cdots \times p_k^{\alpha_k},$$
où les $p_i$ sont des nombres premiers distincts et les $\alpha_i$ des entiers naturels non nuls.
\end{theoreme}

\begin{exemple}
La décomposition en facteurs premiers de $360$ s'obtient par divisions successives :
$$360 = 2^3 \times 3^2 \times 5.$$
\end{exemple}

\begin{propriete}[Nombre de diviseurs]
Si $n = p_1^{\alpha_1} \times \cdots \times p_k^{\alpha_k}$, alors le nombre de diviseurs positifs de $n$ est :
$$(\alpha_1 + 1)(\alpha_2 + 1)\cdots(\alpha_k + 1).$$
Par exemple, $360 = 2^3 \times 3^2 \times 5$ admet $(3+1)(2+1)(1+1) = 24$ diviseurs positifs.
\end{propriete}

## PGCD et algorithme d'Euclide

\begin{definition}[PGCD]
Soient $a$ et $b$ deux entiers relatifs non tous deux nuls. Le **plus grand commun diviseur** de $a$ et $b$, noté $\text{pgcd}(a, b)$ ou $a \wedge b$, est le plus grand entier positif divisant à la fois $a$ et $b$.
\end{definition}

\begin{theoreme}[Algorithme d'Euclide]
Soient $a$ et $b$ deux entiers avec $b \neq 0$. Si $r$ est le reste de la division euclidienne de $a$ par $b$, alors :
$$\text{pgcd}(a, b) = \text{pgcd}(b, r).$$
En répétant le procédé, le dernier reste non nul obtenu est égal au PGCD de $a$ et $b$.
\end{theoreme}

\begin{methode}[Algorithme d'Euclide en pratique]
Calculons $\text{pgcd}(252, 105)$ par divisions euclidiennes successives :
\begin{itemize}
    \item $252 = 105 \times 2 + 42$
    \item $105 = 42 \times 2 + 21$
    \item $42 = 21 \times 2 + 0$
\end{itemize}
Le dernier reste non nul est $21$, donc $\text{pgcd}(252, 105) = 21$.
\end{methode}

\begin{propriete}[Propriétés du PGCD]
Pour tous entiers naturels non nuls $a$, $b$ et $k$ :
\begin{itemize}
    \item $\text{pgcd}(a, b) = \text{pgcd}(b, a)$ et $\text{pgcd}(a, 0) = a$.
    \item $\text{pgcd}(ka, kb) = k \times \text{pgcd}(a, b)$.
    \item Un entier $d$ divise à la fois $a$ et $b$ si et seulement si $d$ divise $\text{pgcd}(a, b)$.
\end{itemize}
On peut aussi lire le PGCD sur les décompositions en facteurs premiers : on prend chaque facteur premier **commun** affecté du plus **petit** exposant.
\end{propriete}

## Nombres premiers entre eux

\begin{definition}[Nombres premiers entre eux]
Deux entiers relatifs $a$ et $b$ sont dits **premiers entre eux** lorsque $\text{pgcd}(a, b) = 1$, c'est-à-dire lorsque leur seul diviseur positif commun est $1$.
\end{definition}

\begin{exemple}
$8$ et $15$ sont premiers entre eux car $\text{pgcd}(8, 15) = 1$, bien qu'aucun des deux ne soit lui-même un nombre premier. En revanche $12$ et $18$ ne le sont pas, puisque $\text{pgcd}(12, 18) = 6$.
\end{exemple}

\begin{propriete}[Forme irréductible et simplification]
Pour tous entiers $a$ et $b$ non nuls, en posant $d = \text{pgcd}(a, b)$, il existe des entiers $a'$ et $b'$ tels que :
$$a = d \, a', \quad b = d \, b', \quad \text{avec} \quad \text{pgcd}(a', b') = 1.$$
La fraction $\dfrac{a'}{b'}$ est alors **irréductible** : diviser numérateur et dénominateur par leur PGCD donne la forme la plus simple d'une fraction.
\end{propriete}

## PPCM et lien avec le PGCD

\begin{definition}[PPCM]
Soient $a$ et $b$ deux entiers naturels non nuls. Le **plus petit commun multiple** de $a$ et $b$, noté $\text{ppcm}(a, b)$ ou $a \vee b$, est le plus petit entier strictement positif qui est à la fois multiple de $a$ et multiple de $b$.
\end{definition}

\begin{propriete}[Relation entre PGCD et PPCM]
Pour tous entiers naturels non nuls $a$ et $b$ :
$$\text{pgcd}(a, b) \times \text{ppcm}(a, b) = a \times b.$$
On peut aussi lire le PPCM sur les décompositions en facteurs premiers : on prend chaque facteur premier apparaissant dans $a$ ou dans $b$, affecté du plus **grand** exposant.
\end{propriete}

\begin{methode}[Calcul d'un PPCM]
Calculons $\text{ppcm}(252, 105)$. On a vu que $\text{pgcd}(252, 105) = 21$. La relation précédente donne :
$$\text{ppcm}(252, 105) = \frac{252 \times 105}{21} = \frac{26460}{21} = 1260.$$
\end{methode}

\begin{important}
La méthode la plus sûre consiste à calculer d'abord le PGCD (par l'algorithme d'Euclide), puis à en déduire le PPCM par la relation $\text{pgcd}(a,b) \times \text{ppcm}(a,b) = ab$. On retrouve ainsi PGCD et PPCM sans avoir à décomposer en facteurs premiers, ce qui est précieux pour de grands entiers.
\end{important}
