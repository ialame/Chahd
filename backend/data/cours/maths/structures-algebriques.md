Les structures algébriques constituent le langage unificateur des mathématiques modernes. Plutôt que d'étudier séparément les entiers, les réels, les matrices ou les fonctions, on dégage les **règles de calcul** communes à ces ensembles. On obtient ainsi des structures abstraites — groupes, anneaux, corps — dont chaque propriété, une fois démontrée, s'applique d'un seul coup à tous les exemples concrets.

## Lois de composition interne

### Définition

\begin{definition}[Loi de composition interne]
Soit $E$ un ensemble non vide. On appelle **loi de composition interne** (l.c.i.) sur $E$ toute application
\[
* : E \times E \longrightarrow E, \qquad (x, y) \longmapsto x * y .
\]
Le mot **interne** signifie que le résultat $x * y$ reste dans $E$ : l'ensemble $E$ est dit **stable** pour $*$.
\end{definition}

\begin{exemple}[Lois usuelles]
\begin{itemize}
    \item L'addition $+$ et la multiplication $\times$ sont des l.c.i. sur $\mathbb{N}$, $\mathbb{Z}$, $\mathbb{Q}$, $\mathbb{R}$ et $\mathbb{C}$.
    \item La soustraction $-$ est une l.c.i. sur $\mathbb{Z}$, mais **n'en est pas une** sur $\mathbb{N}$, car par exemple $2 - 5 = -3 \notin \mathbb{N}$.
    \item La composition $\circ$ des applications de $E$ dans $E$ est une l.c.i. sur l'ensemble $\mathcal{F}(E, E)$.
\end{itemize}
\end{exemple}

### Propriétés d'une loi

\begin{definition}[Associativité et commutativité]
Soit $*$ une l.c.i. sur $E$.
\begin{itemize}
    \item $*$ est **associative** si pour tous $x, y, z \in E$ : $(x * y) * z = x * (y * z)$.
    \item $*$ est **commutative** si pour tous $x, y \in E$ : $x * y = y * x$.
\end{itemize}
\end{definition}

\begin{definition}[Élément neutre]
Un élément $e \in E$ est un **élément neutre** pour la loi $*$ si, pour tout $x \in E$ :
\[
x * e = e * x = x .
\]
\end{definition}

\begin{propriete}[Unicité du neutre]
Si une loi $*$ admet un élément neutre, alors cet élément neutre est **unique**.
En effet, si $e$ et $e'$ sont deux neutres, alors $e = e * e' = e'$, le premier $*$ utilisant le fait que $e'$ est neutre, le second que $e$ l'est.
\end{propriete}

\begin{exemple}
Pour l'addition, le neutre est $0$ (car $x + 0 = x$). Pour la multiplication, le neutre est $1$ (car $x \times 1 = x$). Pour la composition $\circ$, le neutre est l'application identité $\mathrm{Id}$.
\end{exemple}

\begin{definition}[Élément symétrique]
On suppose que $*$ possède un neutre $e$. Un élément $x \in E$ admet un **symétrique** $x' \in E$ si :
\[
x * x' = x' * x = e .
\]
Pour l'addition on parle d'**opposé** (noté $-x$), pour la multiplication d'**inverse** (noté $x^{-1}$).
\end{definition}

\begin{propriete}[Unicité du symétrique]
Si $*$ est **associative** et possède un neutre $e$, alors lorsqu'un élément $x$ admet un symétrique, celui-ci est **unique**.
\end{propriete}

\begin{definition}[Élément régulier]
Un élément $a \in E$ est dit **régulier** (ou simplifiable) pour $*$ si pour tous $x, y \in E$ :
\[
a * x = a * y \implies x = y \qquad \text{et} \qquad x * a = y * a \implies x = y .
\]
\end{definition}

\begin{propriete}
Si la loi $*$ est associative et que $x$ admet un symétrique, alors $x$ est régulier. La réciproque est fausse : dans $(\mathbb{Z}, \times)$, l'élément $2$ est régulier mais n'admet pas d'inverse dans $\mathbb{Z}$.
\end{propriete}

### Partie stable

\begin{definition}[Partie stable]
Soit $*$ une l.c.i. sur $E$ et $F \subseteq E$ une partie non vide. On dit que $F$ est **stable** pour $*$ si :
\[
\forall x, y \in F, \quad x * y \in F .
\]
La restriction de $*$ à $F$ est alors une l.c.i. sur $F$, appelée **loi induite**.
\end{definition}

\begin{exemple}
L'ensemble $2\mathbb{Z}$ des entiers pairs est stable pour l'addition : la somme de deux entiers pairs est paire. En revanche, l'ensemble des entiers impairs n'est pas stable pour $+$ car $1 + 1 = 2$ est pair.
\end{exemple}

## Les groupes

### Définition

\begin{definition}[Groupe]
Soit $G$ un ensemble muni d'une l.c.i. $*$. On dit que $(G, *)$ est un **groupe** si :
\begin{enumerate}
    \item $*$ est **associative** ;
    \item $*$ possède un **élément neutre** $e$ ;
    \item **tout** élément de $G$ admet un **symétrique** dans $G$.
\end{enumerate}
Si de plus $*$ est commutative, on dit que le groupe est **commutatif** ou **abélien**.
\end{definition}

\begin{exemple}[Exemples fondamentaux]
\begin{itemize}
    \item $(\mathbb{Z}, +)$, $(\mathbb{Q}, +)$, $(\mathbb{R}, +)$ et $(\mathbb{C}, +)$ sont des groupes abéliens, de neutre $0$.
    \item $(\mathbb{Q}^*, \times)$, $(\mathbb{R}^*, \times)$ et $(\mathbb{C}^*, \times)$ sont des groupes abéliens, de neutre $1$.
    \item $(\mathbb{N}, +)$ **n'est pas** un groupe : l'élément $1$ n'a pas d'opposé dans $\mathbb{N}$.
    \item L'ensemble des bijections de $E$ dans $E$, muni de $\circ$, est un groupe (en général non commutatif).
\end{itemize}
\end{exemple}

### Sous-groupes

\begin{definition}[Sous-groupe]
Soit $(G, *)$ un groupe de neutre $e$ et $H \subseteq G$. On dit que $H$ est un **sous-groupe** de $G$ si $H$, muni de la loi induite, est lui-même un groupe.
\end{definition}

\begin{theoreme}[Caractérisation des sous-groupes]
Une partie $H$ de $G$ est un sous-groupe de $(G, *)$ si et seulement si :
\begin{enumerate}
    \item $e \in H$ (donc $H \neq \varnothing$) ;
    \item $\forall x, y \in H, \quad x * y \in H$ (stabilité) ;
    \item $\forall x \in H, \quad x^{-1} \in H$ (stabilité par symétrique).
\end{enumerate}
Ces trois conditions équivalent à la condition unique : $H \neq \varnothing$ et $\forall x, y \in H,\ x * y^{-1} \in H$.
\end{theoreme}

\begin{methode}[Montrer qu'une partie est un sous-groupe]
Pour démontrer que $H \subseteq G$ est un sous-groupe de $(G, *)$ :
\begin{enumerate}
    \item Vérifier que $e \in H$ (montre aussi que $H$ est non vide).
    \item Prendre deux éléments quelconques $x, y \in H$.
    \item Établir que $x * y^{-1} \in H$.
\end{enumerate}
\textbf{Application :} montrons que $2\mathbb{Z}$ est un sous-groupe de $(\mathbb{Z}, +)$. D'abord $0 = 2 \times 0 \in 2\mathbb{Z}$. Ensuite, si $x = 2k$ et $y = 2k'$ avec $k, k' \in \mathbb{Z}$, alors le symétrique de $y$ pour $+$ est $-y = 2(-k')$, et
\[
x + (-y) = 2k - 2k' = 2(k - k') \in 2\mathbb{Z}.
\]
Donc $2\mathbb{Z}$ est bien un sous-groupe de $(\mathbb{Z}, +)$.
\end{methode}

### Homomorphismes de groupes

\begin{definition}[Homomorphisme de groupes]
Soient $(G, *)$ et $(G', \perp)$ deux groupes. Une application $f : G \to G'$ est un **homomorphisme** (ou morphisme) de groupes si :
\[
\forall x, y \in G, \quad f(x * y) = f(x) \perp f(y) .
\]
Un homomorphisme **bijectif** est appelé **isomorphisme** ; les deux groupes sont alors dits **isomorphes**.
\end{definition}

\begin{propriete}[Propriétés d'un homomorphisme]
Si $f : (G, *) \to (G', \perp)$ est un homomorphisme de groupes, en notant $e$ et $e'$ les neutres respectifs :
\begin{itemize}
    \item $f(e) = e'$ ;
    \item pour tout $x \in G$ : $f(x^{-1}) = \big(f(x)\big)^{-1}$.
\end{itemize}
\end{propriete}

\begin{exemple}
L'application $\exp : (\mathbb{R}, +) \to (\mathbb{R}^*_+, \times)$ est un isomorphisme de groupes, car $\exp(x + y) = \exp(x) \times \exp(y)$. Sa réciproque est l'isomorphisme $\ln : (\mathbb{R}^*_+, \times) \to (\mathbb{R}, +)$.
\end{exemple}

## Les anneaux

\begin{definition}[Anneau]
Soit $A$ un ensemble muni de deux lois de composition internes, notées $+$ (addition) et $\times$ (multiplication). On dit que $(A, +, \times)$ est un **anneau** si :
\begin{enumerate}
    \item $(A, +)$ est un groupe **abélien**, de neutre noté $0_A$ ;
    \item $\times$ est **associative** ;
    \item $\times$ est **distributive** par rapport à $+$ : pour tous $x, y, z \in A$,
    \[
    x \times (y + z) = x \times y + x \times z \quad \text{et} \quad (y + z) \times x = y \times x + z \times x .
    \]
\end{enumerate}
\end{definition}

\begin{definition}[Anneau unitaire, anneau commutatif]
Soit $(A, +, \times)$ un anneau.
\begin{itemize}
    \item L'anneau est **unitaire** si $\times$ possède un élément neutre, noté $1_A$, avec $1_A \neq 0_A$.
    \item L'anneau est **commutatif** si $\times$ est commutative.
\end{itemize}
\end{definition}

\begin{exemple}
$(\mathbb{Z}, +, \times)$ est un anneau commutatif unitaire, de neutre additif $0$ et de neutre multiplicatif $1$. Il en va de même de $(\mathbb{Q}, +, \times)$, $(\mathbb{R}, +, \times)$ et $(\mathbb{C}, +, \times)$.
\end{exemple}

\begin{propriete}[Règles de calcul dans un anneau]
Dans tout anneau $(A, +, \times)$, pour tous $x, y \in A$ :
\begin{itemize}
    \item $0_A \times x = x \times 0_A = 0_A$ ;
    \item $(-x) \times y = x \times (-y) = -(x \times y)$.
\end{itemize}
\end{propriete}

## Les corps

\begin{definition}[Corps]
Un **corps** est un anneau **commutatif unitaire** $(K, +, \times)$, avec $1_K \neq 0_K$, dans lequel **tout élément non nul admet un inverse** pour la multiplication :
\[
\forall x \in K, \quad x \neq 0_K \implies \exists\, x^{-1} \in K, \quad x \times x^{-1} = 1_K .
\]
Autrement dit, $(K \setminus \{0_K\}, \times)$ est un groupe abélien.
\end{definition}

\begin{exemple}[Corps usuels et contre-exemple]
\begin{itemize}
    \item $(\mathbb{Q}, +, \times)$, $(\mathbb{R}, +, \times)$ et $(\mathbb{C}, +, \times)$ sont des corps.
    \item $(\mathbb{Z}, +, \times)$ **n'est pas** un corps : l'élément $2$ n'a pas d'inverse dans $\mathbb{Z}$, puisque $\frac{1}{2} \notin \mathbb{Z}$.
\end{itemize}
\end{exemple}

\begin{methode}[Reconnaître la nature d'une structure]
Face à un ensemble muni d'une ou deux lois, on procède par étapes croissantes :
\begin{enumerate}
    \item Vérifier d'abord que les lois sont bien **internes** (stabilité).
    \item Pour une seule loi : tester associativité, neutre, symétriques. Si les trois sont vérifiés, c'est un **groupe** ; ajouter la commutativité pour un groupe **abélien**.
    \item Pour deux lois : vérifier que $(A, +)$ est un groupe abélien, que $\times$ est associative et distributive sur $+$ : on obtient un **anneau**.
    \item Si de plus $\times$ est commutative, possède un neutre $1_A \neq 0_A$ et que tout élément non nul est inversible, c'est un **corps**.
\end{enumerate}
\end{methode}
