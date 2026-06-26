Les polynômes occupent une place centrale dans tout le programme de Tronc Commun : ils interviennent dès que l'on manipule des expressions algébriques, que l'on développe ou que l'on factorise. Ce chapitre met en place le vocabulaire (monôme, degré, coefficients), les opérations sur les polynômes, les identités remarquables et les techniques de factorisation. On apprend enfin à utiliser la notion de racine pour factoriser par $(x-a)$ et à dresser le tableau de signes d'un binôme ou d'un trinôme, outil indispensable pour résoudre inéquations et étudier les fonctions.

## Monômes et polynômes

\begin{definition}[Monôme]
On appelle **monôme** en la variable $x$ toute expression de la forme $a\,x^{n}$ où $a$ est un nombre réel appelé **coefficient** et $n$ un entier naturel appelé **degré** du monôme (lorsque $a \neq 0$).
\end{definition}

\begin{exemple}
$3x^{2}$ est un monôme de coefficient $3$ et de degré $2$. Le nombre $-5$ est un monôme de degré $0$ (car $-5 = -5\,x^{0}$). En revanche $\dfrac{2}{x}$ et $\sqrt{x}$ ne sont pas des monômes.
\end{exemple}

\begin{definition}[Polynôme]
Un **polynôme** en $x$ est une somme de monômes. Il s'écrit sous la forme
$$P(x) = a_n x^{n} + a_{n-1} x^{n-1} + \dots + a_1 x + a_0,$$
où les nombres réels $a_0, a_1, \dots, a_n$ sont les **coefficients** du polynôme.
Lorsque $a_n \neq 0$, l'entier $n$ est le **degré** de $P$, noté $\deg P$, et $a_n$ est appelé **coefficient dominant**. Le terme $a_0$ est le **terme constant**.
\end{definition}

\begin{exemple}
Pour $P(x) = 2x^{3} - 4x^{2} + x - 7$ : le degré est $3$, le coefficient dominant est $2$, le terme constant est $-7$.
Un polynôme de degré $1$ comme $3x+5$ est appelé **binôme** du premier degré ; un polynôme de degré $2$ comme $x^{2}-3x+2$ est appelé **trinôme** du second degré.
\end{exemple}

\begin{important}
Deux polynômes sont **égaux** si et seulement s'ils ont le même degré et les mêmes coefficients pour chaque puissance de $x$. Cette propriété, appelée **identification**, permet de déterminer des coefficients inconnus en égalant les termes de même degré.
\end{important}

## Opérations sur les polynômes

\begin{propriete}[Somme et différence]
Pour additionner (ou soustraire) deux polynômes, on regroupe et on ajoute (ou retranche) les coefficients des monômes de **même degré**.
$$\deg(P + Q) \le \max(\deg P,\ \deg Q).$$
\end{propriete}

\begin{exemple}
Avec $P(x) = 2x^{2} + 3x - 1$ et $Q(x) = x^{2} - 5x + 4$ :
$$P(x) + Q(x) = 3x^{2} - 2x + 3, \qquad P(x) - Q(x) = x^{2} + 8x - 5.$$
\end{exemple}

\begin{propriete}[Produit]
Pour multiplier deux polynômes, on développe en multipliant chaque monôme de l'un par chaque monôme de l'autre, puis on réduit les termes semblables. On a alors
$$\deg(P \times Q) = \deg P + \deg Q.$$
On rappelle la règle sur les puissances : $x^{m} \times x^{n} = x^{m+n}$.
\end{propriete}

\begin{exemple}
$$(2x - 1)(x^{2} + 3x - 2) = 2x^{3} + 6x^{2} - 4x - x^{2} - 3x + 2 = 2x^{3} + 5x^{2} - 7x + 2.$$
\end{exemple}

## Identités remarquables

\begin{propriete}[Les trois identités remarquables]
Pour tous nombres réels $a$ et $b$ :
\begin{itemize}
    \item $(a + b)^{2} = a^{2} + 2ab + b^{2}$ ;
    \item $(a - b)^{2} = a^{2} - 2ab + b^{2}$ ;
    \item $(a - b)(a + b) = a^{2} - b^{2}$.
\end{itemize}
\end{propriete}

\begin{exemple}
\begin{itemize}
    \item $(x + 3)^{2} = x^{2} + 6x + 9$.
    \item $(2x - 5)^{2} = 4x^{2} - 20x + 25$.
    \item $(3x - 1)(3x + 1) = 9x^{2} - 1$.
\end{itemize}
\end{exemple}

\begin{important}
Les identités remarquables se lisent **dans les deux sens**. De gauche à droite, elles servent à **développer** ; de droite à gauche, elles servent à **factoriser**. Reconnaître la forme $a^{2} - b^{2}$ ou $a^{2} \pm 2ab + b^{2}$ dans une expression est l'une des clés de la factorisation.
\end{important}

## Factorisation d'un polynôme

Factoriser un polynôme, c'est l'écrire sous la forme d'un **produit** de polynômes de degrés plus petits. Trois techniques principales se combinent.

\begin{methode}[Mise en évidence d'un facteur commun]
On repère un facteur présent dans tous les termes et on le met en facteur.
$$6x^{2} - 9x = 3x(2x - 3), \qquad (x-1)(x+2) + (x-1)(3x) = (x-1)(4x + 2).$$
\end{methode}

\begin{methode}[Factorisation à l'aide d'une identité remarquable]
On reconnaît une identité remarquable et on l'utilise « à l'envers ».
\begin{itemize}
    \item $x^{2} - 16 = x^{2} - 4^{2} = (x - 4)(x + 4)$.
    \item $9x^{2} - 30x + 25 = (3x)^{2} - 2\cdot 3x \cdot 5 + 5^{2} = (3x - 5)^{2}$.
    \item $4x^{2} - 1 = (2x - 1)(2x + 1)$.
\end{itemize}
\end{methode}

\begin{methode}[Factorisation par regroupement]
Lorsqu'aucun facteur n'est commun à tous les termes, on regroupe les termes par paquets faisant apparaître un facteur commun.
$$x^{3} + 2x^{2} + 3x + 6 = x^{2}(x + 2) + 3(x + 2) = (x + 2)(x^{2} + 3).$$
\end{methode}

\begin{important}
Une factorisation doit toujours être **poussée jusqu'au bout** : on vérifie que chaque facteur obtenu ne peut plus lui-même être factorisé. Par exemple, après $x^{4} - 1 = (x^{2}-1)(x^{2}+1)$, on continue : $x^{2} - 1 = (x-1)(x+1)$, donc $x^{4} - 1 = (x-1)(x+1)(x^{2}+1)$.
\end{important}

## Racine d'un polynôme et factorisation par $(x - a)$

\begin{definition}[Racine d'un polynôme]
On appelle **racine** (ou **zéro**) d'un polynôme $P$ tout nombre réel $a$ tel que $P(a) = 0$.
\end{definition}

\begin{exemple}
$2$ est une racine de $P(x) = x^{2} - 5x + 6$ car $P(2) = 4 - 10 + 6 = 0$. De même $3$ en est une autre car $P(3) = 9 - 15 + 6 = 0$.
\end{exemple}

\begin{theoreme}[Factorisation par $(x - a)$]
Un nombre réel $a$ est une racine du polynôme $P$ si et seulement si $P(x)$ peut s'écrire
$$P(x) = (x - a)\,Q(x),$$
où $Q$ est un polynôme de degré $\deg P - 1$.
\end{theoreme}

\begin{methode}[Trouver $Q(x)$]
Connaissant une racine $a$, on détermine $Q(x)$ par identification (ou par division). Pour $P(x) = x^{2} - 5x + 6$ et la racine $a = 2$, on cherche $Q(x) = x + b$ tel que
$$x^{2} - 5x + 6 = (x - 2)(x + b).$$
En développant : $(x-2)(x+b) = x^{2} + (b - 2)x - 2b$. L'identification donne $-2b = 6$, soit $b = -3$. Ainsi $P(x) = (x - 2)(x - 3)$.
\end{methode}

## Signe du binôme $ax + b$

\begin{propriete}[Signe de $ax + b$]
Soit $a \neq 0$. Le binôme $ax + b$ s'annule en sa racine $x = -\dfrac{b}{a}$. Il est :
\begin{itemize}
    \item du **signe de $a$** pour $x > -\dfrac{b}{a}$ ;
    \item du **signe de $-a$** (opposé) pour $x < -\dfrac{b}{a}$.
\end{itemize}
Règle mnémotechnique : « **signe de $a$ après la racine** ».
\end{propriete}

\begin{exemple}
Pour $2x - 6$ : la racine est $x = 3$ et $a = 2 > 0$.

| $x$ | $-\infty$ | | $3$ | | $+\infty$ |
|---|---|---|---|---|---|
| $2x - 6$ | | $-$ | $0$ | $+$ | |

Le binôme est négatif sur $]-\infty\,;\,3[$ et positif sur $]3\,;\,+\infty[$.
\end{exemple}

## Signe du trinôme $ax^2 + bx + c$

\begin{methode}[Signe d'un trinôme factorisé]
Lorsque le trinôme $ax^{2} + bx + c$ admet deux racines $x_1 < x_2$, il se factorise sous la forme $a(x - x_1)(x - x_2)$. On dresse alors le tableau de signes du produit en utilisant le signe de chaque facteur.
\end{methode}

\begin{propriete}[Règle générale du signe du trinôme]
Soit le trinôme $ax^{2} + bx + c$ avec $a \neq 0$.
\begin{itemize}
    \item S'il admet **deux racines** $x_1 < x_2$, il est du **signe de $-a$ entre les racines** et du **signe de $a$ à l'extérieur** des racines.
    \item S'il admet **une racine double** $x_0$, il est du **signe de $a$** partout, sauf en $x_0$ où il s'annule.
    \item S'il **n'a pas de racine** réelle, il est du **signe de $a$** pour tout $x$.
\end{itemize}
\end{propriete}

\begin{exemple}
Étudions le signe de $P(x) = x^{2} - 5x + 6 = (x - 2)(x - 3)$. Les racines sont $2$ et $3$, et $a = 1 > 0$.

| $x$ | $-\infty$ | | $2$ | | $3$ | | $+\infty$ |
|---|---|---|---|---|---|---|---|
| $x - 2$ | | $-$ | $0$ | $+$ | | $+$ | |
| $x - 3$ | | $-$ | | $-$ | $0$ | $+$ | |
| $P(x)$ | | $+$ | $0$ | $-$ | $0$ | $+$ | |

Ainsi $P(x) > 0$ sur $]-\infty\,;\,2[\,\cup\,]3\,;\,+\infty[$, $P(x) < 0$ sur $]2\,;\,3[$, conformément à la règle « signe de $-a$ entre les racines ».
\end{exemple}

\begin{important}
Le tableau de signes est l'outil de référence pour **résoudre une inéquation** : pour résoudre $ax^{2}+bx+c > 0$ (ou $< 0$), on factorise le trinôme, on dresse le tableau, puis on lit les intervalles correspondant au signe demandé.
\end{important}
