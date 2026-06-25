La logique mathématique fournit le langage et les règles de raisonnement qui permettent d'écrire et de justifier rigoureusement les mathématiques. Dans ce chapitre, on apprend à reconnaître une proposition, à combiner des propositions à l'aide de connecteurs logiques, à manier les quantificateurs et enfin à structurer une démonstration grâce aux différents types de raisonnement, dont le raisonnement par récurrence.

## Propositions et valeurs de vérité

\begin{definition}[Proposition]
Une **proposition** (ou assertion) est un énoncé mathématique qui est soit **vrai**, soit **faux**, sans ambiguïté possible. On dit qu'une proposition a une **valeur de vérité** : on note $\mathbf{V}$ (ou $1$) lorsqu'elle est vraie et $\mathbf{F}$ (ou $0$) lorsqu'elle est fausse.
\end{definition}

\begin{exemple}
\begin{itemize}
    \item « $3$ est un nombre impair » est une proposition vraie.
    \item « $2 + 2 = 5$ » est une proposition fausse.
    \item « $\sqrt{2}$ est un nombre rationnel » est une proposition fausse.
\end{itemize}
En revanche, « $x > 0$ » n'est pas une proposition tant que la valeur de $x$ n'est pas fixée : c'est un **prédicat**, dont la valeur de vérité dépend de $x$.
\end{exemple}

\begin{important}
Une phrase qui n'affirme rien (une question, un ordre) ou un énoncé dont on ne peut pas décider la vérité n'est pas une proposition. En logique classique, toute proposition prend exactement une des deux valeurs $\mathbf{V}$ ou $\mathbf{F}$ : c'est le **principe du tiers exclu**.
\end{important}

## Connecteurs logiques

À partir de propositions, on en construit de nouvelles à l'aide de **connecteurs logiques**. On résume leur effet dans des **tables de vérité**, qui donnent la valeur de la proposition obtenue pour toutes les valeurs possibles des propositions de départ.

### La négation

\begin{definition}[Négation]
La **négation** d'une proposition $P$ est la proposition, notée $\overline{P}$ (lue « non $P$ »), qui est vraie lorsque $P$ est fausse et fausse lorsque $P$ est vraie.
\end{definition}

\begin{propriete}[Table de vérité de la négation]
$$
\begin{array}{|c|c|}
\hline
P & \overline{P} \\
\hline
\mathbf{V} & \mathbf{F} \\
\mathbf{F} & \mathbf{V} \\
\hline
\end{array}
$$
La négation de la négation redonne la proposition initiale : $\overline{\overline{P}} = P$.
\end{propriete}

\begin{exemple}
La négation de « $5 \le 3$ » est « $5 > 3$ ». La négation de « $x = 2$ » est « $x \neq 2$ ».
\end{exemple}

### La conjonction et la disjonction

\begin{definition}[Conjonction et disjonction]
Soient $P$ et $Q$ deux propositions.
\begin{itemize}
    \item La **conjonction** « $P$ et $Q$ », notée $P \wedge Q$, est vraie uniquement lorsque $P$ et $Q$ sont **toutes les deux** vraies.
    \item La **disjonction** « $P$ ou $Q$ », notée $P \vee Q$, est vraie dès que **l'une au moins** des deux propositions est vraie. Le « ou » mathématique est inclusif.
\end{itemize}
\end{definition}

\begin{propriete}[Tables de vérité]
$$
\begin{array}{|c|c|c|c|}
\hline
P & Q & P \wedge Q & P \vee Q \\
\hline
\mathbf{V} & \mathbf{V} & \mathbf{V} & \mathbf{V} \\
\mathbf{V} & \mathbf{F} & \mathbf{F} & \mathbf{V} \\
\mathbf{F} & \mathbf{V} & \mathbf{F} & \mathbf{V} \\
\mathbf{F} & \mathbf{F} & \mathbf{F} & \mathbf{F} \\
\hline
\end{array}
$$
\end{propriete}

\begin{propriete}[Lois de De Morgan]
La négation transforme la conjonction en disjonction, et inversement :
$$\overline{P \wedge Q} = \overline{P} \vee \overline{Q} \qquad \text{et} \qquad \overline{P \vee Q} = \overline{P} \wedge \overline{Q}.$$
\end{propriete}

\begin{exemple}
La négation de « $x \ge 0$ **et** $x \le 1$ » est « $x < 0$ **ou** $x > 1$ ».
\end{exemple}

### L'implication

\begin{definition}[Implication]
L'**implication** « $P \Rightarrow Q$ » (lue « $P$ implique $Q$ ») est la proposition qui est fausse uniquement lorsque $P$ est vraie et $Q$ est fausse. On dit que $P$ est l'**hypothèse** et $Q$ la **conclusion**.
\end{definition}

\begin{propriete}[Table de vérité de l'implication]
$$
\begin{array}{|c|c|c|}
\hline
P & Q & P \Rightarrow Q \\
\hline
\mathbf{V} & \mathbf{V} & \mathbf{V} \\
\mathbf{V} & \mathbf{F} & \mathbf{F} \\
\mathbf{F} & \mathbf{V} & \mathbf{V} \\
\mathbf{F} & \mathbf{F} & \mathbf{V} \\
\hline
\end{array}
$$
En particulier, une implication dont l'hypothèse est fausse est toujours vraie. On a l'équivalence logique $\big(P \Rightarrow Q\big) = \big(\overline{P} \vee Q\big)$, d'où la négation : $\overline{P \Rightarrow Q} = P \wedge \overline{Q}$.
\end{propriete}

\begin{definition}[Réciproque et contraposée]
Soit l'implication $P \Rightarrow Q$.
\begin{itemize}
    \item Sa **réciproque** est l'implication $Q \Rightarrow P$.
    \item Sa **contraposée** est l'implication $\overline{Q} \Rightarrow \overline{P}$.
\end{itemize}
Une implication et sa contraposée ont **toujours la même valeur de vérité** : $\big(P \Rightarrow Q\big) = \big(\overline{Q} \Rightarrow \overline{P}\big)$. En revanche, une implication et sa réciproque ne sont pas forcément équivalentes.
\end{definition}

### L'équivalence

\begin{definition}[Équivalence]
L'**équivalence** « $P \Leftrightarrow Q$ » (lue « $P$ équivaut à $Q$ », ou « $P$ si et seulement si $Q$ ») est vraie lorsque $P$ et $Q$ ont la **même valeur de vérité**. Elle correspond à la conjonction des deux implications : $\big(P \Leftrightarrow Q\big) = \big(P \Rightarrow Q\big) \wedge \big(Q \Rightarrow P\big)$.
\end{definition}

\begin{propriete}[Table de vérité de l'équivalence]
$$
\begin{array}{|c|c|c|}
\hline
P & Q & P \Leftrightarrow Q \\
\hline
\mathbf{V} & \mathbf{V} & \mathbf{V} \\
\mathbf{V} & \mathbf{F} & \mathbf{F} \\
\mathbf{F} & \mathbf{V} & \mathbf{F} \\
\mathbf{F} & \mathbf{F} & \mathbf{V} \\
\hline
\end{array}
$$
\end{propriete}

\begin{exemple}
Pour un réel $x$ : « $x^2 = 4 \Leftrightarrow (x = 2 \text{ ou } x = -2)$ ». Démontrer une équivalence revient à démontrer les deux implications, dans un sens puis dans l'autre.
\end{exemple}

## Quantificateurs

Pour exprimer qu'un prédicat $P(x)$ est vrai pour certaines valeurs de $x$ dans un ensemble $E$, on utilise les quantificateurs.

\begin{definition}[Quantificateur universel et existentiel]
Soit $P(x)$ un prédicat portant sur les éléments $x$ d'un ensemble $E$.
\begin{itemize}
    \item Le **quantificateur universel** $\forall$ (« pour tout ») : la proposition $\forall x \in E,\ P(x)$ signifie que $P(x)$ est vraie pour **tous** les éléments $x$ de $E$.
    \item Le **quantificateur existentiel** $\exists$ (« il existe ») : la proposition $\exists x \in E,\ P(x)$ signifie qu'il existe **au moins un** élément $x$ de $E$ pour lequel $P(x)$ est vraie.
\end{itemize}
On note $\exists !\, x \in E,\ P(x)$ pour signifier qu'il existe un **unique** élément vérifiant $P(x)$.
\end{definition}

\begin{exemple}
\begin{itemize}
    \item « $\forall x \in \R,\ x^2 \ge 0$ » est vraie.
    \item « $\exists x \in \R,\ x^2 = 2$ » est vraie (par exemple $x = \sqrt{2}$).
    \item « $\forall n \in \N,\ n^2 + n + 41$ est premier » est fausse.
\end{itemize}
\end{exemple}

\begin{important}
L'**ordre** des quantificateurs est essentiel lorsqu'ils sont de natures différentes. Ainsi « $\forall x \in \R,\ \exists y \in \R,\ y > x$ » est vraie (tout réel est majoré par un autre), alors que « $\exists y \in \R,\ \forall x \in \R,\ y > x$ » est fausse (il n'existe pas de réel plus grand que tous les autres).
\end{important}

\begin{theoreme}[Négation d'une proposition quantifiée]
Pour nier une proposition quantifiée, on **échange** les quantificateurs ($\forall$ devient $\exists$ et inversement) et on **nie** le prédicat :
$$\overline{\big(\forall x \in E,\ P(x)\big)} = \exists x \in E,\ \overline{P(x)}$$
$$\overline{\big(\exists x \in E,\ P(x)\big)} = \forall x \in E,\ \overline{P(x)}$$
\end{theoreme}

\begin{exemple}
La négation de « $\forall x \in \R,\ x^2 \ge 1$ » est « $\exists x \in \R,\ x^2 < 1$ », qui est vraie (par exemple $x = 0$). La proposition de départ est donc fausse.
\end{exemple}

## Les types de raisonnement

Pour démontrer une proposition, on dispose de plusieurs méthodes de raisonnement.

\begin{methode}[Raisonnement par déduction]
On part de propositions connues comme vraies (hypothèses, définitions, théorèmes) et on enchaîne des implications jusqu'à la conclusion souhaitée. C'est le raisonnement direct le plus courant.

Par exemple, pour montrer que la somme de deux entiers pairs est paire : si $a = 2k$ et $b = 2k'$, alors $a + b = 2(k + k')$, donc $a + b$ est pair.
\end{methode}

\begin{methode}[Raisonnement par disjonction des cas]
Lorsqu'une démonstration dépend de la nature de l'objet étudié, on partage les possibilités en plusieurs **cas** que l'on traite séparément, en s'assurant de les couvrir tous.

Par exemple, pour montrer que $n(n+1)$ est pair pour tout $n \in \N$ : si $n$ est pair, $n(n+1)$ est pair ; si $n$ est impair, alors $n+1$ est pair et $n(n+1)$ l'est aussi. Dans tous les cas, $n(n+1)$ est pair.
\end{methode}

\begin{methode}[Raisonnement par contraposée]
Pour démontrer l'implication $P \Rightarrow Q$, on démontre sa contraposée $\overline{Q} \Rightarrow \overline{P}$, qui lui est équivalente. C'est utile quand l'hypothèse $\overline{Q}$ est plus simple à exploiter.

Par exemple, pour un entier $n$, montrons que « si $n^2$ est pair, alors $n$ est pair ». Par contraposée, supposons $n$ impair : $n = 2k+1$, donc $n^2 = 2(2k^2 + 2k) + 1$ est impair. La contraposée étant vraie, l'implication initiale l'est aussi.
\end{methode}

\begin{methode}[Raisonnement par l'absurde]
Pour démontrer qu'une proposition $P$ est vraie, on suppose qu'elle est **fausse** (on suppose $\overline{P}$) et on aboutit à une **contradiction**. Cette contradiction prouve que l'hypothèse de départ était impossible, donc que $P$ est vraie.

Par exemple, montrons que $\sqrt{2}$ est irrationnel. Supposons par l'absurde que $\sqrt{2} = \frac{p}{q}$ avec $\frac{p}{q}$ une fraction irréductible. Alors $p^2 = 2q^2$, donc $p^2$ est pair, donc $p$ est pair : $p = 2p'$. On obtient $2p'^2 = q^2$, donc $q$ est aussi pair. Ainsi $p$ et $q$ sont tous deux pairs, ce qui contredit l'irréductibilité de la fraction. Donc $\sqrt{2}$ est irrationnel.
\end{methode}

\begin{methode}[Raisonnement par contre-exemple]
Pour montrer qu'une proposition de la forme « $\forall x \in E,\ P(x)$ » est **fausse**, il suffit d'exhiber **un seul** élément $x_0$ de $E$ pour lequel $P(x_0)$ est fausse : c'est un **contre-exemple**.

Par exemple, la proposition « tout nombre premier est impair » est fausse : $2$ est un nombre premier pair.
\end{methode}

## Le raisonnement par récurrence

\begin{theoreme}[Principe de récurrence]
Soit $P(n)$ un prédicat dépendant d'un entier naturel $n$, et soit $n_0 \in \N$. Si :
\begin{itemize}
    \item **(Initialisation)** la proposition $P(n_0)$ est vraie ;
    \item **(Hérédité)** pour tout entier $n \ge n_0$, l'implication $P(n) \Rightarrow P(n+1)$ est vraie ;
\end{itemize}
alors la proposition $P(n)$ est vraie pour tout entier $n \ge n_0$.
\end{theoreme}

\begin{important}
Une démonstration par récurrence comporte toujours trois étapes : **l'initialisation** (vérifier le premier rang), **l'hérédité** (supposer $P(n)$ vraie — c'est l'**hypothèse de récurrence** — et en déduire $P(n+1)$), puis la **conclusion**. Oublier l'initialisation rend le raisonnement faux.
\end{important}

\begin{methode}[Démonstration par récurrence]
Montrons que pour tout entier $n \ge 1$ :
$$P(n) : \quad 1 + 2 + 3 + \cdots + n = \frac{n(n+1)}{2}.$$

**Initialisation.** Pour $n = 1$, le membre de gauche vaut $1$ et celui de droite $\frac{1 \times 2}{2} = 1$. Donc $P(1)$ est vraie.

**Hérédité.** Supposons $P(n)$ vraie pour un entier $n \ge 1$ fixé (hypothèse de récurrence). Alors :
$$1 + 2 + \cdots + n + (n+1) = \frac{n(n+1)}{2} + (n+1) = (n+1)\left(\frac{n}{2} + 1\right) = \frac{(n+1)(n+2)}{2}.$$
C'est exactement $P(n+1)$. L'hérédité est établie.

**Conclusion.** D'après le principe de récurrence, $P(n)$ est vraie pour tout entier $n \ge 1$.
\end{methode}
