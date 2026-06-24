Le calcul matriciel fournit un outil de calcul puissant, mais en filière Sciences Mathématiques son intérêt principal est **structurel** : l'ensemble des matrices carrées $M_2(\mathbb{R})$ est un terrain d'exercice idéal pour les notions de groupe, d'anneau, de corps et d'espace vectoriel. Ce chapitre se concentre sur le calcul dans $M_2(\mathbb{R})$ et sur la méthode-clé des sujets : montrer qu'un ensemble de matrices possède une structure algébrique donnée.

## Définition et matrices particulières

### Définition d'une matrice carrée d'ordre 2

\begin{definition}[Matrice carrée d'ordre 2]
On appelle **matrice carrée d'ordre 2** à coefficients réels tout tableau de la forme
$$
A = \begin{pmatrix} a & b \\ c & d \end{pmatrix}, \qquad a, b, c, d \in \mathbb{R}.
$$
Les réels $a, b, c, d$ sont les **coefficients** de la matrice. L'ensemble de toutes ces matrices est noté $M_2(\mathbb{R})$.
\end{definition}

On note souvent $a_{ij}$ le coefficient situé à la ligne $i$ et à la colonne $j$ : ainsi $a_{11} = a$, $a_{12} = b$, $a_{21} = c$ et $a_{22} = d$.

\begin{definition}[Égalité de deux matrices]
Deux matrices $A = \begin{pmatrix} a & b \\ c & d \end{pmatrix}$ et $B = \begin{pmatrix} a' & b' \\ c' & d' \end{pmatrix}$ sont **égales** si et seulement si elles ont les mêmes coefficients :
$$
A = B \iff a = a',\; b = b',\; c = c',\; d = d'.
$$
\end{definition}

### Matrices particulières

\begin{definition}[Matrices nulle, identité, diagonale]
\begin{itemize}
    \item La **matrice nulle** est $O = \begin{pmatrix} 0 & 0 \\ 0 & 0 \end{pmatrix}$.
    \item La **matrice identité** d'ordre 2 est $I_2 = \begin{pmatrix} 1 & 0 \\ 0 & 1 \end{pmatrix}$ (parfois notée $I$).
    \item Une matrice est **diagonale** si elle s'écrit $\begin{pmatrix} a & 0 \\ 0 & d \end{pmatrix}$, et **scalaire** si $a = d$.
\end{itemize}
\end{definition}

## Opérations sur les matrices

### Somme et multiplication par un réel

\begin{definition}[Somme et produit par un scalaire]
Soient $A = \begin{pmatrix} a & b \\ c & d \end{pmatrix}$, $B = \begin{pmatrix} a' & b' \\ c' & d' \end{pmatrix}$ et $\lambda \in \mathbb{R}$. On définit :
$$
A + B = \begin{pmatrix} a+a' & b+b' \\ c+c' & d+d' \end{pmatrix}, \qquad
\lambda \cdot A = \begin{pmatrix} \lambda a & \lambda b \\ \lambda c & \lambda d \end{pmatrix}.
$$
\end{definition}

\begin{propriete}[Règles de calcul pour $+$]
Pour toutes matrices $A, B, C$ de $M_2(\mathbb{R})$ et tous réels $\lambda, \mu$ :
\begin{itemize}
    \item $A + B = B + A$ (commutativité) et $(A+B)+C = A+(B+C)$ (associativité) ;
    \item $A + O = A$ (la matrice nulle $O$ est le neutre) ;
    \item $A + (-A) = O$ où $-A = (-1)\cdot A$ (existence de l'opposé) ;
    \item $\lambda \cdot (A + B) = \lambda \cdot A + \lambda \cdot B$ et $(\lambda + \mu)\cdot A = \lambda \cdot A + \mu \cdot A$.
\end{itemize}
\end{propriete}

\begin{exemple}
Avec $A = \begin{pmatrix} 1 & 2 \\ 3 & 4 \end{pmatrix}$ et $B = \begin{pmatrix} 0 & -1 \\ 5 & 2 \end{pmatrix}$ :
$$
A + B = \begin{pmatrix} 1 & 1 \\ 8 & 6 \end{pmatrix}, \qquad
3A = \begin{pmatrix} 3 & 6 \\ 9 & 12 \end{pmatrix}.
$$
\end{exemple}

### Produit matriciel

\begin{definition}[Produit de deux matrices d'ordre 2]
Soient $A = \begin{pmatrix} a & b \\ c & d \end{pmatrix}$ et $B = \begin{pmatrix} a' & b' \\ c' & d' \end{pmatrix}$. Le **produit** $A \times B$ est la matrice obtenue par la règle « lignes par colonnes » :
$$
A \times B = \begin{pmatrix} aa' + bc' & ab' + bd' \\ ca' + dc' & cb' + dd' \end{pmatrix}.
$$
\end{definition}

\begin{exemple}
Avec $A = \begin{pmatrix} 1 & 2 \\ 3 & 4 \end{pmatrix}$ et $B = \begin{pmatrix} 0 & 1 \\ 1 & 0 \end{pmatrix}$ :
$$
A \times B = \begin{pmatrix} 2 & 1 \\ 4 & 3 \end{pmatrix}, \qquad
B \times A = \begin{pmatrix} 3 & 4 \\ 1 & 2 \end{pmatrix}.
$$
On constate que $A \times B \neq B \times A$ : le produit matriciel **n'est pas commutatif**.
\end{exemple}

\begin{propriete}[Règles de calcul pour $\times$]
Pour toutes matrices $A, B, C$ de $M_2(\mathbb{R})$ :
\begin{itemize}
    \item $(A \times B) \times C = A \times (B \times C)$ (associativité) ;
    \item $A \times I_2 = I_2 \times A = A$ (la matrice $I_2$ est le neutre) ;
    \item $A \times (B + C) = A \times B + A \times C$ et $(A + B)\times C = A\times C + B\times C$ (distributivité) ;
    \item $A \times O = O \times A = O$.
\end{itemize}
**Attention :** la multiplication n'est pas commutative, et $A \times B = O$ n'entraîne pas $A = O$ ou $B = O$ (existence de **diviseurs de zéro**).
\end{propriete}

\begin{exemple}[Diviseurs de zéro]
Avec $A = \begin{pmatrix} 1 & 0 \\ 0 & 0 \end{pmatrix}$ et $B = \begin{pmatrix} 0 & 0 \\ 0 & 1 \end{pmatrix}$, on a $A \neq O$, $B \neq O$ et pourtant $A \times B = \begin{pmatrix} 0 & 0 \\ 0 & 0 \end{pmatrix} = O$.
\end{exemple}

### Transposée

\begin{definition}[Transposée]
La **transposée** de $A = \begin{pmatrix} a & b \\ c & d \end{pmatrix}$ est la matrice obtenue en échangeant lignes et colonnes :
$$
{}^t\! A = \begin{pmatrix} a & c \\ b & d \end{pmatrix}.
$$
\end{definition}

\begin{propriete}
Pour toutes $A, B \in M_2(\mathbb{R})$ et $\lambda \in \mathbb{R}$ :
$$
{}^t({}^t\! A) = A, \quad {}^t(A+B) = {}^t\! A + {}^t\! B, \quad {}^t(\lambda A) = \lambda \,{}^t\! A, \quad {}^t(A\times B) = {}^t\! B \times {}^t\! A.
$$
\end{propriete}

## La structure de $(M_2(\mathbb{R}), +, \times)$

### Anneau et espace vectoriel

\begin{theoreme}[$(M_2(\mathbb{R}), +, \times)$ est un anneau]
L'ensemble $M_2(\mathbb{R})$ muni de l'addition et de la multiplication des matrices est un **anneau unitaire non commutatif** :
\begin{itemize}
    \item $(M_2(\mathbb{R}), +)$ est un **groupe abélien** de neutre $O$ ;
    \item $\times$ est associative, distributive sur $+$, et admet $I_2$ pour neutre ;
    \item $\times$ n'est **pas commutative**, et l'anneau possède des **diviseurs de zéro**.
\end{itemize}
Muni de l'addition et de la multiplication par un réel, $(M_2(\mathbb{R}), +, \cdot)$ est aussi un **espace vectoriel** sur $\mathbb{R}$, de dimension $4$, une base étant
$$
E_{11} = \begin{pmatrix} 1 & 0 \\ 0 & 0 \end{pmatrix},\ E_{12} = \begin{pmatrix} 0 & 1 \\ 0 & 0 \end{pmatrix},\ E_{21} = \begin{pmatrix} 0 & 0 \\ 1 & 0 \end{pmatrix},\ E_{22} = \begin{pmatrix} 0 & 0 \\ 0 & 1 \end{pmatrix}.
$$
\end{theoreme}

## Déterminant et inverse

### Déterminant

\begin{definition}[Déterminant d'ordre 2]
Le **déterminant** de $A = \begin{pmatrix} a & b \\ c & d \end{pmatrix}$ est le réel
$$
\det(A) = \begin{vmatrix} a & b \\ c & d \end{vmatrix} = ad - bc.
$$
\end{definition}

\begin{propriete}[Multiplicativité]
Pour toutes $A, B \in M_2(\mathbb{R})$ : $\det(A \times B) = \det(A) \times \det(B)$, et $\det(I_2) = 1$.
\end{propriete}

### Matrice inverse

\begin{definition}[Matrice inversible]
Une matrice $A \in M_2(\mathbb{R})$ est **inversible** s'il existe une matrice $A^{-1} \in M_2(\mathbb{R})$ telle que
$$
A \times A^{-1} = A^{-1} \times A = I_2.
$$
\end{definition}

\begin{theoreme}[Critère et formule de l'inverse]
La matrice $A = \begin{pmatrix} a & b \\ c & d \end{pmatrix}$ est inversible **si et seulement si** $\det(A) = ad - bc \neq 0$. Dans ce cas :
$$
A^{-1} = \frac{1}{ad - bc} \begin{pmatrix} d & -b \\ -c & a \end{pmatrix}.
$$
\end{theoreme}

\begin{exemple}
Soit $A = \begin{pmatrix} 2 & 1 \\ 3 & 2 \end{pmatrix}$. On a $\det(A) = 2\times 2 - 1\times 3 = 1 \neq 0$, donc $A$ est inversible et
$$
A^{-1} = \frac{1}{1}\begin{pmatrix} 2 & -1 \\ -3 & 2 \end{pmatrix} = \begin{pmatrix} 2 & -1 \\ -3 & 2 \end{pmatrix}.
$$
On vérifie : $A \times A^{-1} = \begin{pmatrix} 1 & 0 \\ 0 & 1 \end{pmatrix} = I_2$.
\end{exemple}

L'ensemble des matrices inversibles de $M_2(\mathbb{R})$, muni du produit, forme un groupe (non abélien) appelé **groupe linéaire**, noté $GL_2(\mathbb{R})$.

## Puissances d'une matrice

\begin{definition}[Puissance $n$-ième]
Pour $A \in M_2(\mathbb{R})$ et $n \in \mathbb{N}^*$, on pose $A^n = \underbrace{A \times A \times \cdots \times A}_{n \text{ fois}}$, avec la convention $A^0 = I_2$.
\end{definition}

\begin{methode}[Calculer $A^n$ par récurrence]
Pour déterminer $A^n$ :
\begin{enumerate}
    \item Calculer $A^2$, $A^3$ pour **conjecturer** une formule générale de $A^n$.
    \item Démontrer cette formule par **récurrence** sur $n$ : on vérifie l'initialisation ($n=1$), puis on suppose la formule vraie au rang $n$ et on calcule $A^{n+1} = A^n \times A$ pour conclure.
\end{enumerate}
Lorsque $A = I_2 + N$ avec $N$ **nilpotente** (par exemple $N^2 = O$), la formule du binôme s'applique car $I_2$ et $N$ commutent :
$$
A^n = (I_2 + N)^n = I_2 + nN \quad (\text{si } N^2 = O).
$$
\end{methode}

\begin{exemple}[Cas nilpotent]
Soit $A = \begin{pmatrix} 1 & 1 \\ 0 & 1 \end{pmatrix} = I_2 + N$ avec $N = \begin{pmatrix} 0 & 1 \\ 0 & 0 \end{pmatrix}$. Comme $N^2 = O$, on obtient
$$
A^n = I_2 + nN = \begin{pmatrix} 1 & n \\ 0 & 1 \end{pmatrix}, \qquad n \in \mathbb{N}.
$$
\end{exemple}

\begin{exemple}[Cas diagonal]
Si $D = \begin{pmatrix} a & 0 \\ 0 & d \end{pmatrix}$, alors par récurrence immédiate $D^n = \begin{pmatrix} a^n & 0 \\ 0 & d^n \end{pmatrix}$.
\end{exemple}

## Méthode-clé : structures sur un ensemble de matrices

### Sous-groupe et sous-espace vectoriel de $(M_2(\mathbb{R}), +)$

\begin{methode}[Montrer qu'un ensemble $E$ de matrices est un sous-groupe de $(M_2(\mathbb{R}), +)$]
Soit $E \subset M_2(\mathbb{R})$. Pour montrer que $(E, +)$ est un **sous-groupe** de $(M_2(\mathbb{R}), +)$, il suffit de vérifier :
\begin{enumerate}
    \item $E \neq \varnothing$ : en pratique on montre que $O \in E$ ;
    \item **Stabilité par différence** : pour toutes $A, B \in E$, on a $A - B \in E$.
\end{enumerate}
Pour montrer de plus que $E$ est un **sous-espace vectoriel**, on vérifie que $O \in E$ et la stabilité par combinaison linéaire : pour toutes $A, B \in E$ et tous $\lambda, \mu \in \mathbb{R}$, $\lambda A + \mu B \in E$.
\end{methode}

### Anneau, corps et homomorphisme : exemple complet

On considère l'ensemble
$$
E = \left\{ M(x, y) = \begin{pmatrix} x+y & y \\ 2y & x-y \end{pmatrix} \ \middle|\ (x, y) \in \mathbb{R}^2 \right\}.
$$

\begin{methode}[Étude type d'un ensemble de matrices]
\textbf{1. Sous-espace vectoriel.} On remarque que $M(x,y) = x\,M(1,0) + y\,M(0,1)$ avec
$$
M(1,0) = I_2 = \begin{pmatrix} 1 & 0 \\ 0 & 1 \end{pmatrix}, \qquad M(0,1) = J = \begin{pmatrix} 1 & 1 \\ 2 & -1 \end{pmatrix}.
$$
Donc $E = \{ x I_2 + y J \mid (x,y) \in \mathbb{R}^2 \} = \mathrm{Vect}(I_2, J)$. Comme $I_2$ et $J$ ne sont pas colinéaires, $E$ est un **sous-espace vectoriel** de $M_2(\mathbb{R})$ de dimension $2$, donc en particulier un sous-groupe de $(M_2(\mathbb{R}), +)$.

\textbf{2. Stabilité par produit.} On calcule $J^2 = \begin{pmatrix} 1 & 1 \\ 2 & -1 \end{pmatrix}^2 = \begin{pmatrix} 3 & 0 \\ 0 & 3 \end{pmatrix} = 3 I_2$. Alors pour deux éléments $x I_2 + y J$ et $x' I_2 + y' J$ :
$$
(x I_2 + y J)(x' I_2 + y' J) = xx' I_2 + (xy' + x'y) J + yy' J^2 = (xx' + 3yy') I_2 + (xy' + x'y) J \in E.
$$
Donc $E$ est **stable** par produit, le produit y est **commutatif** (l'expression est symétrique en les deux facteurs), et $I_2 = M(1,0) \in E$ est l'unité.

\textbf{3. Conclusion.} $(E, +, \times)$ est un **anneau commutatif unitaire**, et c'est un **sous-anneau** de $M_2(\mathbb{R})$.
\end{methode}

\begin{methode}[Utiliser un homomorphisme]
Pour relier $E$ à un ensemble connu, on construit une application $\varphi$ depuis un ensemble usuel vers $E$ et on montre que c'est un **homomorphisme**.

Par exemple, l'application $\varphi : \mathbb{R}^2 \to E$, $(x,y) \mapsto M(x,y)$ est **bijective** et vérifie $\varphi(u + u') = \varphi(u) + \varphi(u')$ et $\varphi(\lambda u) = \lambda \varphi(u)$ : c'est un **isomorphisme d'espaces vectoriels**, ce qui justifie que $E$ est un plan vectoriel.

Plus finement, un isomorphisme **d'anneaux** entre un ensemble connu (comme $\mathbb{R}[J]$ ou un produit/quotient bien choisi) et $E$ transporte automatiquement toutes les propriétés : élément inversible, intégrité, structure de corps. C'est la stratégie standard pour conclure qu'un ensemble de matrices est un **corps** : on l'identifie à un corps connu via un isomorphisme.
\end{methode}

\begin{exemple}[Un ensemble qui est un corps]
Soit $F = \left\{ \begin{pmatrix} a & -b \\ b & a \end{pmatrix} \ \middle|\ (a,b) \in \mathbb{R}^2 \right\}$. L'application $\varphi : \mathbb{C} \to F$, $a + ib \mapsto \begin{pmatrix} a & -b \\ b & a \end{pmatrix}$ est un **isomorphisme d'anneaux**. Comme $(\mathbb{C}, +, \times)$ est un corps, $(F, +, \times)$ est aussi un **corps commutatif**. Concrètement, toute matrice non nulle de $F$ a pour déterminant $a^2 + b^2 > 0$, donc est inversible, et son inverse appartient encore à $F$.
\end{exemple}
