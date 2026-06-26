Le calcul matriciel fournit un outil de calcul puissant, mais en filière Sciences Mathématiques son intérêt principal est **structurel** : les ensembles de matrices carrées $M_n(\mathbb{R})$ sont des terrains d'exercice idéaux pour les notions de groupe, d'anneau, de corps et d'espace vectoriel. Dans les épreuves du baccalauréat SM, les exercices portent sur les matrices carrées d'**ordre 2 ou d'ordre 3** (par exemple, des matrices $2\times 2$ en 2022 et 2023, mais des matrices $3\times 3$ de $M_3(\mathbb{R})$ à la session de rattrapage 2020). Ce chapitre couvre donc les **deux ordres**, et insiste sur la méthode-clé : montrer qu'un ensemble de matrices possède une structure algébrique donnée.

## Qu'est-ce qu'une matrice ?

\begin{definition}[Matrice $m \times n$]
Soient $m$ et $n$ deux entiers naturels non nuls. Une **matrice** de type $m \times n$ à coefficients réels est un tableau de $m$ **lignes** et $n$ **colonnes** :
$$
A = \begin{pmatrix} a_{11} & a_{12} & \cdots & a_{1n} \\ a_{21} & a_{22} & \cdots & a_{2n} \\ \vdots & \vdots & & \vdots \\ a_{m1} & a_{m2} & \cdots & a_{mn} \end{pmatrix} = (a_{ij}).
$$
Le réel $a_{ij}$ (ligne $i$, colonne $j$) est le **coefficient** d'indices $i,j$. On note $M_{m,n}(\mathbb{R})$ l'ensemble de ces matrices.
\end{definition}

- Une matrice **ligne** est de type $1 \times n$, une matrice **colonne** de type $m \times 1$.
- Si $m = n$, la matrice est **carrée d'ordre $n$** : on note $M_n(\mathbb{R})$. La matrice **identité** d'ordre $n$ est $I_n$ (des $1$ sur la diagonale principale, des $0$ ailleurs).
- Les opérations (somme, produit par un réel, produit, transposée) et les structures algébriques se définissent **pour tout ordre $n$**.

\begin{exemple}[Identités d'ordre 2 et 3]
$$
I_2 = \begin{pmatrix} 1 & 0 \\ 0 & 1 \end{pmatrix}, \qquad
I_3 = \begin{pmatrix} 1 & 0 & 0 \\ 0 & 1 & 0 \\ 0 & 0 & 1 \end{pmatrix}.
$$
\end{exemple}

\begin{definition}[Égalité de deux matrices]
Deux matrices de **même type** sont **égales** si et seulement si elles ont les mêmes coefficients, terme à terme :
$$
(a_{ij}) = (b_{ij}) \iff a_{ij} = b_{ij} \text{ pour tous } i, j.
$$
\end{definition}

\begin{definition}[Matrices nulle, identité, diagonale]
\begin{itemize}
    \item La **matrice nulle** d'ordre $n$, notée $O$ (ou $O_n$), n'a que des coefficients nuls.
    \item La **matrice identité** $I_n$ a des $1$ sur la diagonale principale et des $0$ ailleurs.
    \item Une matrice carrée est **diagonale** si tous ses coefficients hors de la diagonale principale sont nuls, et **scalaire** si elle s'écrit $\lambda I_n$.
\end{itemize}
\end{definition}

## Opérations sur les matrices

### Somme et multiplication par un réel

\begin{definition}[Somme et produit par un scalaire]
Soient $A = (a_{ij})$ et $B = (b_{ij})$ deux matrices de **même type** $m \times n$, et $\lambda \in \mathbb{R}$. On définit, coefficient par coefficient :
$$
A + B = (a_{ij} + b_{ij}), \qquad \lambda \cdot A = (\lambda\, a_{ij}).
$$
\end{definition}

\begin{propriete}[Règles de calcul pour $+$]
Pour toutes matrices $A, B, C$ de même type et tous réels $\lambda, \mu$ :
\begin{itemize}
    \item $A + B = B + A$ (commutativité) et $(A+B)+C = A+(B+C)$ (associativité) ;
    \item $A + O = A$ (la matrice nulle $O$ est le neutre) ;
    \item $A + (-A) = O$ où $-A = (-1)\cdot A$ (existence de l'opposé) ;
    \item $\lambda \cdot (A + B) = \lambda \cdot A + \lambda \cdot B$ et $(\lambda + \mu)\cdot A = \lambda \cdot A + \mu \cdot A$.
\end{itemize}
\end{propriete}

\begin{exemple}[En ordre 2 et en ordre 3]
$$
\begin{pmatrix} 1 & 2 \\ 3 & 4 \end{pmatrix} + \begin{pmatrix} 0 & -1 \\ 5 & 2 \end{pmatrix} = \begin{pmatrix} 1 & 1 \\ 8 & 6 \end{pmatrix},
\qquad
2\begin{pmatrix} 1 & 0 & -1 \\ 2 & 1 & 0 \\ 0 & 3 & 1 \end{pmatrix} = \begin{pmatrix} 2 & 0 & -2 \\ 4 & 2 & 0 \\ 0 & 6 & 2 \end{pmatrix}.
$$
\end{exemple}

### Produit matriciel

\begin{definition}[Produit de deux matrices]
Soient $A = (a_{ij})$ de type $m \times p$ et $B = (b_{jk})$ de type $p \times n$. Le **produit** $A \times B$ est la matrice $C = (c_{ik})$ de type $m \times n$ définie par la règle « lignes par colonnes » :
$$
c_{ik} = \sum_{j=1}^{p} a_{ij}\, b_{jk} = a_{i1}b_{1k} + a_{i2}b_{2k} + \cdots + a_{ip}b_{pk}.
$$
Le produit n'est défini que si le **nombre de colonnes de $A$ égale le nombre de lignes de $B$**. Pour des matrices carrées de même ordre $n$, le produit est toujours défini et reste dans $M_n(\mathbb{R})$.
\end{definition}

\begin{exemple}[Produit en ordre 2]
Avec $A = \begin{pmatrix} 1 & 2 \\ 3 & 4 \end{pmatrix}$ et $B = \begin{pmatrix} 0 & 1 \\ 1 & 0 \end{pmatrix}$ :
$$
A \times B = \begin{pmatrix} 2 & 1 \\ 4 & 3 \end{pmatrix}, \qquad
B \times A = \begin{pmatrix} 3 & 4 \\ 1 & 2 \end{pmatrix}.
$$
On constate que $A \times B \neq B \times A$ : le produit matriciel **n'est pas commutatif**.
\end{exemple}

\begin{exemple}[Produit en ordre 3]
Avec $A = \begin{pmatrix} 1 & 0 & 2 \\ 0 & 1 & 0 \\ 1 & 1 & 0 \end{pmatrix}$ et $B = \begin{pmatrix} 1 & 1 & 0 \\ 0 & 1 & 1 \\ 1 & 0 & 1 \end{pmatrix}$ :
$$
A \times B = \begin{pmatrix} 3 & 1 & 2 \\ 0 & 1 & 1 \\ 1 & 2 & 1 \end{pmatrix}.
$$
On calcule par exemple le coefficient de la 1\ière ligne et 1\ière colonne : $1\cdot 1 + 0\cdot 0 + 2\cdot 1 = 3$.
\end{exemple}

\begin{propriete}[Règles de calcul pour $\times$]
Pour toutes matrices $A, B, C$ de $M_n(\mathbb{R})$ :
\begin{itemize}
    \item $(A \times B) \times C = A \times (B \times C)$ (associativité) ;
    \item $A \times I_n = I_n \times A = A$ (la matrice $I_n$ est le neutre) ;
    \item $A \times (B + C) = A \times B + A \times C$ et $(A + B)\times C = A\times C + B\times C$ (distributivité) ;
    \item $A \times O = O \times A = O$.
\end{itemize}
**Attention :** dès que $n \geq 2$, la multiplication n'est **pas commutative**, et $A \times B = O$ n'entraîne pas $A = O$ ou $B = O$ (existence de **diviseurs de zéro**).
\end{propriete}

\begin{exemple}[Diviseurs de zéro en ordre 2]
Avec $A = \begin{pmatrix} 1 & 0 \\ 0 & 0 \end{pmatrix}$ et $B = \begin{pmatrix} 0 & 0 \\ 0 & 1 \end{pmatrix}$, on a $A \neq O$, $B \neq O$ et pourtant $A \times B = \begin{pmatrix} 0 & 0 \\ 0 & 0 \end{pmatrix} = O$.
\end{exemple}

### Transposée

\begin{definition}[Transposée]
La **transposée** d'une matrice $A = (a_{ij})$ de type $m \times n$ est la matrice ${}^t\! A = (a_{ji})$ de type $n \times m$, obtenue en échangeant lignes et colonnes.
\end{definition}

\begin{exemple}
$$
{}^t\!\begin{pmatrix} a & b \\ c & d \end{pmatrix} = \begin{pmatrix} a & c \\ b & d \end{pmatrix},
\qquad
{}^t\!\begin{pmatrix} 1 & 2 & 3 \\ 4 & 5 & 6 \\ 7 & 8 & 9 \end{pmatrix} = \begin{pmatrix} 1 & 4 & 7 \\ 2 & 5 & 8 \\ 3 & 6 & 9 \end{pmatrix}.
$$
\end{exemple}

\begin{propriete}
Pour toutes $A, B$ (de types compatibles) et $\lambda \in \mathbb{R}$ :
$$
{}^t({}^t\! A) = A, \quad {}^t(A+B) = {}^t\! A + {}^t\! B, \quad {}^t(\lambda A) = \lambda \,{}^t\! A, \quad {}^t(A\times B) = {}^t\! B \times {}^t\! A.
$$
Une matrice carrée $A$ est dite **symétrique** si ${}^t\! A = A$.
\end{propriete}

## Déterminant et inverse

### Déterminant d'ordre 2

\begin{definition}[Déterminant d'ordre 2]
Le **déterminant** de $A = \begin{pmatrix} a & b \\ c & d \end{pmatrix}$ est le réel
$$
\det(A) = \begin{vmatrix} a & b \\ c & d \end{vmatrix} = ad - bc.
$$
\end{definition}

### Déterminant d'ordre 3

\begin{definition}[Déterminant d'ordre 3]
Le déterminant de $A = \begin{pmatrix} a_{11} & a_{12} & a_{13} \\ a_{21} & a_{22} & a_{23} \\ a_{31} & a_{32} & a_{33} \end{pmatrix}$ se calcule par **développement** par rapport à la première ligne :
$$
\det(A) = a_{11}\begin{vmatrix} a_{22} & a_{23} \\ a_{32} & a_{33} \end{vmatrix} - a_{12}\begin{vmatrix} a_{21} & a_{23} \\ a_{31} & a_{33} \end{vmatrix} + a_{13}\begin{vmatrix} a_{21} & a_{22} \\ a_{31} & a_{32} \end{vmatrix}.
$$
On peut développer par rapport à **n'importe quelle ligne ou colonne**, en respectant la règle des signes $(-1)^{i+j}$ :
$$
\begin{pmatrix} + & - & + \\ - & + & - \\ + & - & + \end{pmatrix}.
$$
\end{definition}

\begin{methode}[Règle de Sarrus (ordre 3 uniquement)]
On recopie les deux premières colonnes à droite du déterminant, puis on additionne les produits des trois diagonales « descendantes » et on soustrait les produits des trois diagonales « montantes » :
$$
\det(A) = a_{11}a_{22}a_{33} + a_{12}a_{23}a_{31} + a_{13}a_{21}a_{32} - a_{13}a_{22}a_{31} - a_{11}a_{23}a_{32} - a_{12}a_{21}a_{33}.
$$
\textbf{Attention :} la règle de Sarrus ne fonctionne **que pour l'ordre 3**, jamais au-delà.
\end{methode}

\begin{exemple}[Sarrus]
Pour $A = \begin{pmatrix} 1 & 2 & 0 \\ 0 & 1 & 3 \\ 2 & 0 & 1 \end{pmatrix}$ :
$$
\det(A) = (1\cdot 1\cdot 1 + 2\cdot 3\cdot 2 + 0) - (0 + 1\cdot 3\cdot 0 + 2\cdot 0\cdot 1) = 1 + 12 = 13.
$$
\end{exemple}

\begin{propriete}[Multiplicativité]
Pour toutes $A, B \in M_n(\mathbb{R})$ : $\det(A \times B) = \det(A) \times \det(B)$, et $\det(I_n) = 1$. De plus $\det({}^t\! A) = \det(A)$.
\end{propriete}

### Matrice inverse

\begin{definition}[Matrice inversible]
Une matrice $A \in M_n(\mathbb{R})$ est **inversible** s'il existe $A^{-1} \in M_n(\mathbb{R})$ telle que
$$
A \times A^{-1} = A^{-1} \times A = I_n.
$$
\end{definition}

\begin{theoreme}[Critère d'inversibilité]
Une matrice carrée $A$ est inversible **si et seulement si** $\det(A) \neq 0$. Dans ce cas, $\det(A^{-1}) = \dfrac{1}{\det(A)}$.
\end{theoreme}

\begin{theoreme}[Formule de l'inverse en ordre 2]
La matrice $A = \begin{pmatrix} a & b \\ c & d \end{pmatrix}$ est inversible si et seulement si $ad - bc \neq 0$, et alors :
$$
A^{-1} = \frac{1}{ad - bc} \begin{pmatrix} d & -b \\ -c & a \end{pmatrix}.
$$
\end{theoreme}

\begin{exemple}[Inverse en ordre 2]
Soit $A = \begin{pmatrix} 2 & 1 \\ 3 & 2 \end{pmatrix}$. On a $\det(A) = 2\times 2 - 1\times 3 = 1 \neq 0$, donc
$$
A^{-1} = \frac{1}{1}\begin{pmatrix} 2 & -1 \\ -3 & 2 \end{pmatrix} = \begin{pmatrix} 2 & -1 \\ -3 & 2 \end{pmatrix}, \qquad A \times A^{-1} = I_2.
$$
\end{exemple}

\begin{methode}[Inverser une matrice d'ordre 3]
Il n'y a pas de formule courte. On dispose de deux méthodes classiques :
\begin{enumerate}
    \item \textbf{Méthode de la comatrice.} On calcule $\det(A)$ (s'il est nul, $A$ n'est pas inversible). Sinon $A^{-1} = \dfrac{1}{\det(A)}\, {}^t\!\big(\mathrm{com}(A)\big)$, où $\mathrm{com}(A)$ est la **comatrice** dont le coefficient $(i,j)$ est le **cofacteur** $(-1)^{i+j} \Delta_{ij}$, $\Delta_{ij}$ étant le déterminant d'ordre 2 obtenu en supprimant la ligne $i$ et la colonne $j$.
    \item \textbf{Méthode par résolution.} On résout le système $A X = Y$ d'inconnue $X$ ; en exprimant $X$ en fonction de $Y$ sous la forme $X = B Y$, on obtient $A^{-1} = B$. On peut aussi exploiter une **relation polynomiale** vérifiée par $A$ (par exemple $A^2 - A - 2I_3 = O$ donne $A^{-1} = \tfrac{1}{2}(A - I_3)$).
\end{enumerate}
\end{methode}

\begin{propriete}[Groupe linéaire]
L'ensemble des matrices inversibles de $M_n(\mathbb{R})$, muni du produit, forme un **groupe non abélien** (pour $n \geq 2$) appelé **groupe linéaire**, noté $GL_n(\mathbb{R})$. Pour $A, B$ inversibles : $(A\times B)^{-1} = B^{-1}\times A^{-1}$.
\end{propriete}

## Puissances d'une matrice

\begin{definition}[Puissance $n$-ième]
Pour $A \in M_p(\mathbb{R})$ et $n \in \mathbb{N}^*$, on pose $A^n = \underbrace{A \times A \times \cdots \times A}_{n \text{ fois}}$, avec la convention $A^0 = I_p$.
\end{definition}

\begin{methode}[Calculer $A^n$]
Pour déterminer $A^n$ :
\begin{enumerate}
    \item Calculer $A^2$, $A^3$ pour **conjecturer** une formule générale de $A^n$.
    \item Démontrer cette formule par **récurrence** : initialisation ($n=1$), puis on suppose la formule vraie au rang $n$ et on calcule $A^{n+1} = A^n \times A$ pour conclure.
\end{enumerate}
Si $A = I_p + N$ avec $N$ **nilpotente** (il existe $k$ tel que $N^k = O$), comme $I_p$ et $N$ commutent, la formule du binôme de Newton donne une somme **finie** :
$$
A^n = (I_p + N)^n = \sum_{j=0}^{k-1} C_{n}^{j} N^j.
$$
En particulier, si $N^2 = O$ : $A^n = I_p + nN$.
\end{methode}

\begin{exemple}[Cas nilpotent, ordre 2]
Soit $A = \begin{pmatrix} 1 & 1 \\ 0 & 1 \end{pmatrix} = I_2 + N$ avec $N = \begin{pmatrix} 0 & 1 \\ 0 & 0 \end{pmatrix}$. Comme $N^2 = O$ :
$$
A^n = I_2 + nN = \begin{pmatrix} 1 & n \\ 0 & 1 \end{pmatrix}, \qquad n \in \mathbb{N}.
$$
\end{exemple}

\begin{exemple}[Cas nilpotent, ordre 3]
Soit $N = \begin{pmatrix} 0 & 1 & 0 \\ 0 & 0 & 1 \\ 0 & 0 & 0 \end{pmatrix}$. Alors $N^2 = \begin{pmatrix} 0 & 0 & 1 \\ 0 & 0 & 0 \\ 0 & 0 & 0 \end{pmatrix}$ et $N^3 = O$. Pour $A = I_3 + N$ :
$$
A^n = I_3 + nN + C_{n}^{2}N^2 = \begin{pmatrix} 1 & n & \tfrac{n(n-1)}{2} \\ 0 & 1 & n \\ 0 & 0 & 1 \end{pmatrix}.
$$
\end{exemple}

\begin{exemple}[Cas diagonal]
Si $D = \begin{pmatrix} a & 0 \\ 0 & d \end{pmatrix}$, alors $D^n = \begin{pmatrix} a^n & 0 \\ 0 & d^n \end{pmatrix}$ ; de même en ordre 3 pour une matrice diagonale on élève chaque coefficient diagonal à la puissance $n$.
\end{exemple}

## La structure de $(M_n(\mathbb{R}), +, \times)$

\begin{theoreme}[$(M_n(\mathbb{R}), +, \times)$ est un anneau]
L'ensemble $M_n(\mathbb{R})$ muni de l'addition et de la multiplication des matrices est un **anneau unitaire non commutatif** (pour $n \geq 2$) :
\begin{itemize}
    \item $(M_n(\mathbb{R}), +)$ est un **groupe abélien** de neutre $O$ ;
    \item $\times$ est associative, distributive sur $+$, et admet $I_n$ pour neutre ;
    \item $\times$ n'est **pas commutative**, et l'anneau possède des **diviseurs de zéro**.
\end{itemize}
Muni de $+$ et de la multiplication par un réel, $(M_n(\mathbb{R}), +, \cdot)$ est aussi un **espace vectoriel** sur $\mathbb{R}$ de dimension $n^2$. Pour $n=2$, une base est $(E_{11}, E_{12}, E_{21}, E_{22})$ où $E_{ij}$ a un $1$ en position $(i,j)$ et des $0$ ailleurs ; pour $n=3$, la dimension est $9$.
\end{theoreme}

## Méthode-clé : structures sur un ensemble de matrices

C'est le cœur des sujets SM. On se donne un ensemble $E \subset M_n(\mathbb{R})$ et on doit montrer qu'il a une structure (sous-espace vectoriel, sous-groupe, anneau, corps).

\begin{methode}[Sous-espace vectoriel et sous-groupe additif]
Soit $E \subset M_n(\mathbb{R})$. Pour montrer que $E$ est un **sous-espace vectoriel** de $M_n(\mathbb{R})$ :
\begin{enumerate}
    \item $O \in E$ (en particulier $E \neq \varnothing$) ;
    \item **stabilité par combinaison linéaire** : pour toutes $A, B \in E$ et tous $\lambda, \mu \in \mathbb{R}$, $\lambda A + \mu B \in E$.
\end{enumerate}
En pratique, on écrit l'élément générique de $E$ comme une **combinaison linéaire** de matrices fixes : $M = x_1 B_1 + \cdots + x_p B_p$. Alors $E = \mathrm{Vect}(B_1, \dots, B_p)$. Si les $B_i$ sont **linéairement indépendantes**, elles forment une **base** et $\dim E = p$. Tout sous-espace vectoriel est en particulier un **sous-groupe** de $(M_n(\mathbb{R}), +)$ (stabilité par différence : $A - B \in E$).
\end{methode}

\begin{methode}[Sous-anneau, corps, homomorphisme]
Pour montrer que $(E, +, \times)$ est un **sous-anneau** de $M_n(\mathbb{R})$ : on vérifie que $E$ est un sous-groupe additif, que $E$ est **stable par produit** ($A, B \in E \Rightarrow A\times B \in E$), et que l'**unité** $I_n$ appartient à $E$. L'anneau est **commutatif** si le produit y est commutatif.

Pour conclure que $E$ est un **corps**, on montre que $(E, +, \times)$ est un anneau commutatif unitaire dans lequel **tout élément non nul est inversible**, l'inverse restant dans $E$. La stratégie standard consiste à exhiber un **isomorphisme** $\varphi$ entre $E$ et un ensemble connu (comme $\mathbb{R}^p$ ou $\mathbb{C}$) : $\varphi$ bijective vérifiant $\varphi(u+u') = \varphi(u)+\varphi(u')$ et $\varphi(u\cdot u') = \varphi(u)\times\varphi(u')$ **transporte** toute la structure.
\end{methode}

### Exemple-type 1 : un anneau de matrices d'ordre 2

On considère
$$
E = \left\{ M(a, b) = \begin{pmatrix} a & 3b \\ b & a \end{pmatrix} \ \middle|\ (a, b) \in \mathbb{R}^2 \right\}.
$$

\begin{exemple}[Étude complète, ordre 2]
\textbf{1. Sous-espace vectoriel.} On écrit $M(a,b) = a I_2 + b J$ avec $J = \begin{pmatrix} 0 & 3 \\ 1 & 0 \end{pmatrix}$. Donc $E = \mathrm{Vect}(I_2, J)$. Comme $I_2$ et $J$ ne sont pas colinéaires, $(I_2, J)$ est une **base** de $E$, et $\dim E = 2$. En particulier $E$ est un sous-groupe de $(M_2(\mathbb{R}), +)$.

\textbf{2. Stabilité par produit.} On calcule $J^2 = \begin{pmatrix} 0 & 3 \\ 1 & 0 \end{pmatrix}^2 = \begin{pmatrix} 3 & 0 \\ 0 & 3 \end{pmatrix} = 3 I_2$. Alors :
$$
(a I_2 + b J)(a' I_2 + b' J) = aa' I_2 + (ab' + a'b)J + bb' J^2 = (aa' + 3bb')I_2 + (ab' + a'b)J \in E.
$$
L'expression est **symétrique** en les deux facteurs : le produit est **commutatif**. De plus $I_2 = M(1,0) \in E$ est l'unité.

\textbf{3. Conclusion.} $(E, +, \times)$ est un **anneau commutatif unitaire**, sous-anneau de $M_2(\mathbb{R})$. L'application $\varphi : (a,b) \mapsto M(a,b)$ est un isomorphisme de $\mathbb{R}^2$ (muni de la loi produit adaptée) sur $E$.

\textbf{4. Corps ?} $\det M(a,b) = a^2 - 3b^2$, qui s'annule pour $a = b\sqrt 3 \neq 0$ : il existe des éléments non nuls non inversibles, donc $E$ **n'est pas un corps** (mais c'est un anneau commutatif unitaire qui n'est pas intègre).
\end{exemple}

### Exemple-type 2 : matrices d'ordre 3

On considère
$$
E = \left\{ M(x, y, z) = \begin{pmatrix} x & -y & -y \\ 0 & z & 0 \\ y & x-z & x \end{pmatrix} \ \middle|\ (x, y, z) \in \mathbb{R}^3 \right\}.
$$

\begin{exemple}[Étude complète, ordre 3]
\textbf{1. Sous-espace vectoriel et base.} On décompose l'élément générique :
$$
M(x,y,z) = x\, A + y\, B + z\, C, \quad A = \begin{pmatrix} 1 & 0 & 0 \\ 0 & 0 & 0 \\ 0 & 1 & 1 \end{pmatrix},\ B = \begin{pmatrix} 0 & -1 & -1 \\ 0 & 0 & 0 \\ 1 & 0 & 0 \end{pmatrix},\ C = \begin{pmatrix} 0 & 0 & 0 \\ 0 & 1 & 0 \\ 0 & -1 & 0 \end{pmatrix}.
$$
Donc $E = \mathrm{Vect}(A, B, C)$. La seule combinaison $xA + yB + zC = O$ impose (coefficients $(1,1)$, $(1,2)$, $(2,2)$) $x = y = z = 0$ : $(A, B, C)$ est **libre**, c'est une **base** de $E$ et $\dim E = 3$. Ainsi $E$ est un sous-espace vectoriel, donc un sous-groupe de $(M_3(\mathbb{R}), +)$.

\textbf{2. Élément unité.} On remarque que $M(1, 0, 1) = \begin{pmatrix} 1 & 0 & 0 \\ 0 & 1 & 0 \\ 0 & 0 & 1 \end{pmatrix} = I_3 \in E$.

\textbf{3. Stabilité par produit et commutativité.} On vérifie (calcul direct du produit lignes par colonnes) que
$$
M(x,y,z)\, M(x',y',z') = M\big(xx', \, xy' + x'y, \, zz'\big),
$$
expression **symétrique** en les deux triplets : le produit reste dans $E$ et est **commutatif**.

\textbf{4. Conclusion.} $(E, +, \times)$ est un **anneau commutatif unitaire** d'unité $I_3$, sous-anneau de $M_3(\mathbb{R})$. L'application $\varphi : (x,y,z) \mapsto M(x,y,z)$ est un isomorphisme d'espaces vectoriels de $\mathbb{R}^3$ sur $E$ qui transporte aussi le produit, ce qui permet d'étudier l'inversibilité d'un élément $M(x,y,z)$ en discutant son déterminant $\det M(x,y,z)$.
\end{exemple}

\begin{exemple}[Un ensemble qui est un corps]
Soit $F = \left\{ \begin{pmatrix} a & -b \\ b & a \end{pmatrix} \ \middle|\ (a,b) \in \mathbb{R}^2 \right\}$. L'application $\varphi : \mathbb{C} \to F$, $a + ib \mapsto \begin{pmatrix} a & -b \\ b & a \end{pmatrix}$ est un **isomorphisme d'anneaux**. Comme $(\mathbb{C}, +, \times)$ est un corps, $(F, +, \times)$ est un **corps commutatif** : toute matrice non nulle de $F$ a pour déterminant $a^2 + b^2 > 0$, donc est inversible, et son inverse appartient encore à $F$.
\end{exemple}
