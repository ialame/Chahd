Le dénombrement est l'art de compter les éléments d'un ensemble fini sans avoir à les énumérer un par un. Au cœur de l'analyse combinatoire, il fournit les outils nécessaires pour calculer le nombre de façons de réaliser un choix, un classement ou un tirage. Ces techniques — principes additif et multiplicatif, $p$-listes, arrangements, permutations et combinaisons — sont indispensables en probabilités, en algèbre et dans de nombreux problèmes concrets. Ce chapitre développe ces notions et culmine avec la formule du binôme de Newton.

## Cardinal d'un ensemble fini

\begin{definition}[Ensemble fini et cardinal]
Un ensemble $E$ est dit **fini** lorsqu'il possède un nombre fini d'éléments. Ce nombre d'éléments est appelé le **cardinal** de $E$ et se note $\text{card}(E)$ ou $|E|$.
Par convention, l'ensemble vide est fini et $\text{card}(\varnothing) = 0$.
\end{definition}

\begin{exemple}
Si $E = \{a, b, c, d\}$, alors $\text{card}(E) = 4$. L'ensemble des entiers compris entre $1$ et $n$, noté $\{1, 2, \dots, n\}$, a pour cardinal $n$.
\end{exemple}

\begin{propriete}[Cardinal d'une réunion]
Soient $A$ et $B$ deux ensembles finis. Alors :
$$\text{card}(A \cup B) = \text{card}(A) + \text{card}(B) - \text{card}(A \cap B)$$
En particulier, si $A$ et $B$ sont **disjoints** ($A \cap B = \varnothing$), alors $\text{card}(A \cup B) = \text{card}(A) + \text{card}(B)$.
\end{propriete}

\begin{propriete}[Cardinal du complémentaire et du produit]
Soit $E$ un ensemble fini et $A$ une partie de $E$, de complémentaire $\overline{A}$ dans $E$ :
\begin{itemize}
    \item $\text{card}(\overline{A}) = \text{card}(E) - \text{card}(A)$.
    \item $\text{card}(A \times B) = \text{card}(A) \times \text{card}(B)$.
    \item Si $\text{card}(E) = n$, le nombre de parties de $E$ est $\text{card}(\mathcal{P}(E)) = 2^n$.
\end{itemize}
\end{propriete}

## Les deux principes fondamentaux

\begin{theoreme}[Principe additif]
Si une situation peut se réaliser de $p$ façons mutuellement exclusives, et qu'un premier cas offre $n_1$ possibilités, un deuxième $n_2$, ..., un $p$-ième $n_p$, alors le nombre total de possibilités est :
$$n_1 + n_2 + \cdots + n_p$$
On l'utilise lorsque les choix correspondent à des cas séparés reliés par « ou ».
\end{theoreme}

\begin{theoreme}[Principe multiplicatif]
Si une expérience se décompose en $p$ étapes successives, la première offrant $n_1$ choix, la deuxième $n_2$ choix (quel que soit le choix précédent), ..., la $p$-ième $n_p$ choix, alors le nombre total de résultats possibles est :
$$n_1 \times n_2 \times \cdots \times n_p$$
On l'utilise lorsque les choix sont enchaînés et reliés par « et ».
\end{theoreme}

\begin{exemple}
Un menu propose $3$ entrées, $4$ plats et $2$ desserts. Par le principe multiplicatif, le nombre de repas complets différents est $3 \times 4 \times 2 = 24$.
Si l'on choisit **soit** une entrée seule (3 façons) **soit** un dessert seul (2 façons), le principe additif donne $3 + 2 = 5$ façons.
\end{exemple}

\begin{methode}[Choisir le bon principe]
Pour dénombrer, on schématise la situation par étapes. Si l'on construit un objet en faisant successivement plusieurs choix (« et »), on **multiplie**. Si l'on répartit en plusieurs cas disjoints (« ou »), on **additionne**. Un arbre de choix aide à visualiser le comptage.
\end{methode}

## $p$-listes (tirages avec ordre et répétition)

\begin{definition}[$p$-liste]
Soit $E$ un ensemble à $n$ éléments. Une **$p$-liste** (ou $p$-uplet) d'éléments de $E$ est une suite ordonnée $(x_1, x_2, \dots, x_p)$ de $p$ éléments de $E$, **non nécessairement distincts**.
Une $p$-liste modélise un tirage de $p$ éléments **avec ordre et avec répétition** (tirage successif avec remise).
\end{definition}

\begin{theoreme}[Nombre de $p$-listes]
Le nombre de $p$-listes d'un ensemble à $n$ éléments est :
$$n^p$$
\end{theoreme}

\begin{exemple}
Le nombre de codes de $4$ chiffres (de $0$ à $9$), où chaque chiffre peut être répété, est $10^4 = 10\,000$.
De même, le nombre d'applications d'un ensemble à $p$ éléments vers un ensemble à $n$ éléments est $n^p$.
\end{exemple}

## Arrangements (avec ordre, sans répétition)

\begin{definition}[Arrangement]
Soit $E$ un ensemble à $n$ éléments et $p$ un entier tel que $0 \le p \le n$. Un **arrangement** de $p$ éléments de $E$ est une suite ordonnée de $p$ éléments **distincts** de $E$.
Un arrangement modélise un tirage de $p$ éléments **avec ordre et sans répétition** (tirage successif sans remise).
\end{definition}

\begin{theoreme}[Nombre d'arrangements]
Le nombre d'arrangements de $p$ éléments parmi $n$, noté $A_n^p$, est :
$$A_n^p = n \times (n-1) \times \cdots \times (n-p+1) = \frac{n!}{(n-p)!}$$
où $n! = 1 \times 2 \times \cdots \times n$ désigne la **factorielle** de $n$, avec la convention $0! = 1$.
\end{theoreme}

\begin{exemple}
Dans une course de $8$ chevaux, le nombre de tiercés dans l'ordre (les $3$ premiers, distincts et ordonnés) est :
$$A_8^3 = 8 \times 7 \times 6 = 336 = \frac{8!}{5!}$$
\end{exemple}

## Permutations

\begin{definition}[Permutation]
Une **permutation** d'un ensemble $E$ à $n$ éléments est un arrangement de **tous** ses éléments, c'est-à-dire une suite ordonnée de ses $n$ éléments distincts. C'est donc un arrangement avec $p = n$.
\end{definition}

\begin{theoreme}[Nombre de permutations]
Le nombre de permutations d'un ensemble à $n$ éléments est :
$$A_n^n = n!$$
\end{theoreme}

\begin{exemple}
Le nombre de façons de ranger $5$ livres distincts sur une étagère est $5! = 120$.
Le nombre d'anagrammes (mots, avec ou sans sens) formés des $4$ lettres distinctes du mot « JEUX » est $4! = 24$.
\end{exemple}

## Combinaisons (sans ordre)

\begin{definition}[Combinaison]
Soit $E$ un ensemble à $n$ éléments et $0 \le p \le n$. Une **combinaison** de $p$ éléments de $E$ est une **partie** (un sous-ensemble) de $E$ ayant $p$ éléments. L'ordre des éléments **n'intervient pas** et il n'y a pas de répétition.
Une combinaison modélise un tirage **simultané** de $p$ éléments.
\end{definition}

\begin{theoreme}[Nombre de combinaisons]
Le nombre de combinaisons de $p$ éléments parmi $n$, noté $\binom{n}{p}$ (lire « $p$ parmi $n$ »), est :
$$\binom{n}{p} = \frac{A_n^p}{p!} = \frac{n!}{p!\,(n-p)!}$$
On divise le nombre d'arrangements par $p!$ car chaque sous-ensemble de $p$ éléments peut être ordonné de $p!$ manières.
\end{theoreme}

\begin{exemple}
Le nombre de mains de $5$ cartes que l'on peut former à partir d'un jeu de $32$ cartes est :
$$\binom{32}{5} = \frac{32!}{5!\,27!} = \frac{32 \times 31 \times 30 \times 29 \times 28}{120} = 201\,376$$
\end{exemple}

\begin{methode}[Avec ou sans ordre ?]
Pour choisir la bonne formule, on se demande si l'ordre du tirage compte :
\begin{itemize}
    \item **Avec ordre et avec répétition** (avec remise) : $p$-listes, $n^p$.
    \item **Avec ordre et sans répétition** (sans remise, successif) : arrangements, $A_n^p$.
    \item **Sans ordre et sans répétition** (simultané) : combinaisons, $\binom{n}{p}$.
\end{itemize}
\end{methode}

## Propriétés des combinaisons

\begin{propriete}[Valeurs particulières et symétrie]
Pour tous entiers $n$ et $p$ avec $0 \le p \le n$ :
\begin{itemize}
    \item $\displaystyle \binom{n}{0} = \binom{n}{n} = 1$ et $\displaystyle \binom{n}{1} = \binom{n}{n-1} = n$.
    \item **Symétrie** : $\displaystyle \binom{n}{p} = \binom{n}{n-p}$.
\end{itemize}
La symétrie traduit le fait que choisir $p$ éléments à garder revient à choisir les $n-p$ éléments à écarter.
\end{propriete}

\begin{theoreme}[Relation de Pascal]
Pour tous entiers $n \ge 1$ et $1 \le p \le n$ :
$$\binom{n-1}{p-1} + \binom{n-1}{p} = \binom{n}{p}$$
Cette relation permet de construire de proche en proche le **triangle de Pascal**, où chaque coefficient est la somme des deux situés au-dessus de lui.
\end{theoreme}

\begin{exemple}
$\displaystyle \binom{5}{2} = \binom{4}{1} + \binom{4}{2} = 4 + 6 = 10$, ce qui correspond bien à $\dfrac{5!}{2!\,3!} = 10$.
\end{exemple}

## Formule du binôme de Newton

\begin{theoreme}[Binôme de Newton]
Pour tous nombres réels (ou complexes) $a$ et $b$ et tout entier naturel $n$ :
$$(a + b)^n = \sum_{p=0}^{n} \binom{n}{p}\, a^{p}\, b^{\,n-p} = \binom{n}{0} b^n + \binom{n}{1} a\, b^{n-1} + \cdots + \binom{n}{n} a^n$$
Les coefficients $\binom{n}{p}$ sont appelés **coefficients binomiaux** et se lisent sur la $n$-ième ligne du triangle de Pascal.
\end{theoreme}

\begin{exemple}
Pour $n = 3$ :
$$(a+b)^3 = \binom{3}{0}b^3 + \binom{3}{1}ab^2 + \binom{3}{2}a^2 b + \binom{3}{3}a^3 = b^3 + 3ab^2 + 3a^2 b + a^3$$
\end{exemple}

\begin{propriete}[Conséquences remarquables]
En spécialisant le binôme de Newton :
\begin{itemize}
    \item Avec $a = b = 1$ : $\displaystyle \sum_{p=0}^{n} \binom{n}{p} = 2^n$, qui est aussi le nombre total de parties d'un ensemble à $n$ éléments.
    \item Avec $a = -1$ et $b = 1$ : $\displaystyle \sum_{p=0}^{n} (-1)^p \binom{n}{p} = 0$ (pour $n \ge 1$).
\end{itemize}
\end{propriete}

\begin{important}
La distinction fondamentale du dénombrement repose sur deux questions : **l'ordre compte-t-il ?** et **y a-t-il répétition ?**. Identifier correctement le type de tirage ($p$-liste, arrangement, permutation ou combinaison) est la clé de tout problème de comptage. La factorielle, les arrangements et les combinaisons s'expriment tous à partir de $n!$, avec la convention essentielle $0! = 1$.
\end{important}
