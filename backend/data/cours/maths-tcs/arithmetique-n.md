L'arithmétique est l'étude des nombres entiers et de leurs propriétés. Ce chapitre se place dans l'ensemble $\N$ des entiers naturels et met en place les outils de base du tronc commun : les multiples et les diviseurs, les critères de divisibilité, les nombres premiers et la décomposition en facteurs premiers, puis le PGCD et le PPCM de deux entiers. Ces notions, simples mais essentielles, permettent en particulier de simplifier les fractions et de les rendre irréductibles.

## Multiples et diviseurs dans $\N$

\begin{definition}[Multiple et diviseur]
Soient $a$ et $b$ deux entiers naturels avec $b \neq 0$. On dit que $b$ **divise** $a$, et on note $b \mid a$, s'il existe un entier naturel $k$ tel que $a = b \times k$.
On dit alors que $b$ est un **diviseur** de $a$, et que $a$ est un **multiple** de $b$.
\end{definition}

\begin{exemple}
$4 \mid 12$ car $12 = 4 \times 3$. Les diviseurs de $12$ sont $1, 2, 3, 4, 6, 12$, et ses premiers multiples sont $0, 12, 24, 36, 48, \dots$ Tout entier non nul divise $0$, et $1$ divise tout entier naturel.
\end{exemple}

\begin{propriete}[Propriétés des multiples et diviseurs]
Pour tous entiers naturels $a$, $b$, $c$ :
\begin{itemize}
    \item $a \mid a$, et $1 \mid a$, et $a \mid 0$.
    \item Si $a \mid b$ et $b \mid c$, alors $a \mid c$.
    \item Si $a \mid b$ et $a \mid c$, alors $a \mid (b + c)$ et $a \mid (b - c)$ (lorsque $b \ge c$).
    \item Si $a \mid b$ et $b \neq 0$, alors $a \le b$ : un entier non nul possède un nombre fini de diviseurs.
\end{itemize}
\end{propriete}

\begin{important}
Les diviseurs d'un entier se trouvent toujours « par paires ». Pour $36$, on a $1 \times 36$, $2 \times 18$, $3 \times 12$, $4 \times 9$, $6 \times 6$ : il suffit donc de tester les diviseurs jusqu'à $\sqrt{36} = 6$ pour les obtenir tous.
\end{important}

## Critères de divisibilité

\begin{propriete}[Critères de divisibilité]
Un entier naturel est divisible :
\begin{itemize}
    \item **par $2$** si son chiffre des unités est $0, 2, 4, 6$ ou $8$ (le nombre est pair) ;
    \item **par $5$** si son chiffre des unités est $0$ ou $5$ ;
    \item **par $10$** si son chiffre des unités est $0$ ;
    \item **par $4$** si le nombre formé par ses deux derniers chiffres est divisible par $4$ ;
    \item **par $3$** si la somme de ses chiffres est divisible par $3$ ;
    \item **par $9$** si la somme de ses chiffres est divisible par $9$.
\end{itemize}
\end{propriete}

\begin{exemple}
Considérons $n = 5\,238$.
\begin{itemize}
    \item Son chiffre des unités est $8$, donc $n$ est divisible par $2$, mais pas par $5$ ni par $10$.
    \item Ses deux derniers chiffres forment $38$, qui n'est pas divisible par $4$ : $n$ ne l'est pas non plus.
    \item La somme de ses chiffres est $5 + 2 + 3 + 8 = 18$, divisible par $3$ et par $9$ : donc $n$ est divisible par $3$ et par $9$.
\end{itemize}
\end{exemple}

\begin{methode}[Utiliser les critères]
Pour étudier la divisibilité d'un grand nombre, on applique les critères plutôt que d'effectuer la division. Par exemple, pour $7\,425$ : la somme des chiffres est $7+4+2+5 = 18$ (divisible par $9$ donc par $3$), et le chiffre des unités est $5$ (divisible par $5$). On en déduit immédiatement que $7\,425$ est divisible par $3$, $9$ et $5$, sans aucun calcul de division.
\end{methode}

## Les nombres premiers

\begin{definition}[Nombre premier]
Un entier naturel $p$ est dit **premier** lorsqu'il admet exactement **deux diviseurs** : $1$ et lui-même. En particulier $p \ge 2$.
Un entier $n \ge 2$ qui n'est pas premier est dit **composé** : il possède au moins un diviseur autre que $1$ et lui-même.
\end{definition}

\begin{exemple}
Les premiers nombres premiers sont $2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, \dots$ L'entier $1$ n'est pas premier (il n'a qu'un seul diviseur), et $2$ est le seul nombre premier pair.
\end{exemple}

\begin{methode}[Reconnaître un nombre premier]
Pour savoir si un entier $n \ge 2$ est premier, il suffit de tester sa divisibilité par les nombres premiers $p$ tels que $p \le \sqrt{n}$. Si aucun ne divise $n$, alors $n$ est premier.
Par exemple, pour $n = 97$, on a $\sqrt{97} \approx 9{,}8$ : on teste $2, 3, 5, 7$. Aucun ne divise $97$, donc $97$ est premier.
\end{methode}

## Décomposition en produit de facteurs premiers

\begin{theoreme}[Décomposition en facteurs premiers]
Tout entier naturel $n \ge 2$ s'écrit de manière **unique** (à l'ordre des facteurs près) comme un produit de nombres premiers :
$$n = p_1^{\alpha_1} \times p_2^{\alpha_2} \times \cdots \times p_k^{\alpha_k},$$
où les $p_i$ sont des nombres premiers distincts et les $\alpha_i$ des entiers naturels non nuls.
\end{theoreme}

\begin{methode}[Décomposer un entier]
On divise successivement l'entier par les nombres premiers $2, 3, 5, 7, \dots$ en commençant par le plus petit, jusqu'à obtenir $1$. Pour $360$ :
\begin{itemize}
    \item $360 = 2 \times 180$
    \item $180 = 2 \times 90$
    \item $90 = 2 \times 45$
    \item $45 = 3 \times 15$
    \item $15 = 3 \times 5$
    \item $5 = 5 \times 1$
\end{itemize}
D'où la décomposition : $360 = 2^3 \times 3^2 \times 5$.
\end{methode}

\begin{exemple}
De même, $84 = 2^2 \times 3 \times 7$ et $90 = 2 \times 3^2 \times 5$.
\end{exemple}

## PGCD et PPCM

\begin{definition}[PGCD et PPCM]
Soient $a$ et $b$ deux entiers naturels non nuls.
\begin{itemize}
    \item Le **plus grand commun diviseur** de $a$ et $b$, noté $\text{pgcd}(a, b)$, est le plus grand entier qui divise à la fois $a$ et $b$.
    \item Le **plus petit commun multiple** de $a$ et $b$, noté $\text{ppcm}(a, b)$, est le plus petit entier strictement positif qui est à la fois multiple de $a$ et de $b$.
\end{itemize}
\end{definition}

\begin{methode}[Recherche par les diviseurs et les multiples]
On peut trouver le PGCD et le PPCM directement à partir des listes. Pour $a = 12$ et $b = 18$ :
\begin{itemize}
    \item diviseurs de $12$ : $1, 2, 3, 4, 6, 12$ ; diviseurs de $18$ : $1, 2, 3, 6, 9, 18$. Le plus grand diviseur commun est $6$, donc $\text{pgcd}(12, 18) = 6$.
    \item multiples de $12$ : $12, 24, 36, 48, \dots$ ; multiples de $18$ : $18, 36, 54, \dots$ Le plus petit multiple commun est $36$, donc $\text{ppcm}(12, 18) = 36$.
\end{itemize}
\end{methode}

\begin{methode}[Recherche par la décomposition en facteurs premiers]
On décompose $a$ et $b$ en facteurs premiers, puis :
\begin{itemize}
    \item pour le **PGCD**, on prend chaque facteur premier **commun**, affecté du plus **petit** exposant ;
    \item pour le **PPCM**, on prend chaque facteur premier apparaissant dans $a$ ou $b$, affecté du plus **grand** exposant.
\end{itemize}
Avec $12 = 2^2 \times 3$ et $18 = 2 \times 3^2$ :
$$\text{pgcd}(12, 18) = 2^1 \times 3^1 = 6, \qquad \text{ppcm}(12, 18) = 2^2 \times 3^2 = 36.$$
\end{methode}

\begin{propriete}[Relation entre PGCD et PPCM]
Pour tous entiers naturels non nuls $a$ et $b$ :
$$\text{pgcd}(a, b) \times \text{ppcm}(a, b) = a \times b.$$
Ainsi, connaissant le PGCD, on obtient le PPCM par $\text{ppcm}(a, b) = \dfrac{a \times b}{\text{pgcd}(a, b)}$. Pour $a = 12$ et $b = 18$ : $\dfrac{12 \times 18}{6} = 36$.
\end{propriete}

## Nombres premiers entre eux et fractions irréductibles

\begin{definition}[Nombres premiers entre eux]
Deux entiers naturels non nuls $a$ et $b$ sont dits **premiers entre eux** lorsque $\text{pgcd}(a, b) = 1$, c'est-à-dire lorsque leur seul diviseur commun est $1$.
\end{definition}

\begin{exemple}
$8$ et $15$ sont premiers entre eux car $\text{pgcd}(8, 15) = 1$, bien qu'aucun des deux ne soit lui-même un nombre premier. En revanche, $12$ et $18$ ne le sont pas, puisque $\text{pgcd}(12, 18) = 6$.
\end{exemple}

\begin{definition}[Fraction irréductible]
Une fraction $\dfrac{a}{b}$ (avec $b \neq 0$) est dite **irréductible** lorsque son numérateur et son dénominateur sont premiers entre eux, c'est-à-dire lorsque $\text{pgcd}(a, b) = 1$. C'est l'écriture la plus simple de cette fraction.
\end{definition}

\begin{methode}[Rendre une fraction irréductible]
Pour simplifier une fraction, on divise le numérateur et le dénominateur par leur PGCD. Considérons $\dfrac{84}{90}$ :
\begin{itemize}
    \item $84 = 2^2 \times 3 \times 7$ et $90 = 2 \times 3^2 \times 5$, donc $\text{pgcd}(84, 90) = 2 \times 3 = 6$.
    \item On divise par $6$ : $\dfrac{84}{90} = \dfrac{84 \div 6}{90 \div 6} = \dfrac{14}{15}$.
\end{itemize}
Comme $\text{pgcd}(14, 15) = 1$, la fraction $\dfrac{14}{15}$ est irréductible.
\end{methode}

\begin{important}
Diviser le numérateur et le dénominateur par leur PGCD donne directement la forme irréductible en une seule étape. C'est l'application la plus courante de l'arithmétique : toute fraction admet une unique écriture irréductible.
\end{important}
