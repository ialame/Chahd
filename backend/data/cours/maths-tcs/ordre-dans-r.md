L'ensemble $\R$ des nombres réels n'est pas seulement un ensemble où l'on calcule : c'est un ensemble **ordonné**, dans lequel on peut comparer deux nombres et dire lequel est le plus grand. Ce chapitre du Tronc Commun précise les règles qui relient cet ordre aux opérations (addition, multiplication, passage à l'inverse), puis introduit les outils qui en découlent : les **encadrements**, la **valeur absolue** et la distance, les **intervalles**, la **partie entière** et enfin la comparaison d'un réel avec son carré et sa racine carrée. Ces notions sont fondamentales : elles servent partout, des inéquations à l'étude des fonctions.

## Comparaison de deux réels

\begin{definition}[Ordre dans $\R$]
Soient $a$ et $b$ deux réels. On dit que $a$ est **inférieur ou égal** à $b$, et on note $a \le b$, lorsque la différence $b - a$ est positive ou nulle :
$$a \le b \iff b - a \ge 0.$$
On dit que $a$ est **strictement inférieur** à $b$, noté $a < b$, lorsque $b - a > 0$.
\end{definition}

\begin{methode}[Comparer deux réels par le signe de la différence]
Pour comparer deux réels $a$ et $b$, on étudie le **signe de la différence** $a - b$ :
\begin{itemize}
    \item si $a - b > 0$, alors $a > b$ ;
    \item si $a - b < 0$, alors $a < b$ ;
    \item si $a - b = 0$, alors $a = b$.
\end{itemize}
Comparons par exemple $A = \dfrac{1}{3}$ et $B = \dfrac{2}{5}$ : $A - B = \dfrac{5 - 6}{15} = -\dfrac{1}{15} < 0$, donc $A < B$.
\end{methode}

\begin{exemple}
Comparons $x^2 + 1$ et $2x$ pour tout réel $x$. On calcule la différence :
$$(x^2 + 1) - 2x = (x - 1)^2 \ge 0,$$
donc $x^2 + 1 \ge 2x$ pour tout réel $x$, avec égalité si et seulement si $x = 1$.
\end{exemple}

\begin{propriete}[Propriétés de l'ordre]
Pour tous réels $a$, $b$ et $c$ :
\begin{itemize}
    \item **Réflexivité** : $a \le a$.
    \item **Antisymétrie** : si $a \le b$ et $b \le a$, alors $a = b$.
    \item **Transitivité** : si $a \le b$ et $b \le c$, alors $a \le c$.
    \item Deux réels sont toujours comparables : on a $a \le b$ ou $b \le a$ (l'ordre est **total**).
\end{itemize}
\end{propriete}

## Ordre et opérations

\begin{propriete}[Ordre et addition]
Pour tous réels $a$, $b$ et $c$ :
$$a \le b \iff a + c \le b + c.$$
On peut donc ajouter (ou retrancher) un même réel aux deux membres d'une inégalité sans changer son sens.
\end{propriete}

\begin{propriete}[Ordre et multiplication]
Soient $a$, $b$ deux réels tels que $a \le b$, et $c$ un réel.
\begin{itemize}
    \item Si $c > 0$ : $a c \le b c$ (l'inégalité **conserve** son sens).
    \item Si $c < 0$ : $a c \ge b c$ (l'inégalité **change** de sens).
\end{itemize}
\end{propriete}

\begin{important}
La règle à ne jamais oublier : multiplier (ou diviser) les deux membres d'une inégalité par un nombre **strictement négatif renverse le sens** de l'inégalité. Par exemple, de $-2 < 3$ on déduit, en multipliant par $-1$, que $2 > -3$.
\end{important}

\begin{propriete}[Addition d'inégalités de même sens]
Si $a \le b$ et $c \le d$, alors :
$$a + c \le b + d.$$
On peut **additionner membre à membre** deux inégalités de même sens. Attention : on ne peut pas les soustraire membre à membre.
\end{propriete}

\begin{propriete}[Produit d'inégalités entre réels positifs]
Si $0 \le a \le b$ et $0 \le c \le d$, alors :
$$a c \le b d.$$
On peut **multiplier membre à membre** deux inégalités de même sens lorsque tous les termes sont positifs.
\end{propriete}

\begin{propriete}[Passage à l'inverse]
Soient $a$ et $b$ deux réels **non nuls et de même signe**. Alors :
$$a \le b \iff \frac{1}{a} \ge \frac{1}{b}.$$
Le passage à l'inverse **change le sens** de l'inégalité (pour des réels de même signe). Par exemple, $2 < 5$ donne $\dfrac{1}{2} > \dfrac{1}{5}$.
\end{propriete}

\begin{important}
La propriété sur l'inverse n'est valable que si $a$ et $b$ ont le **même signe**. Si l'un est positif et l'autre négatif, on ne peut pas l'appliquer directement : par exemple $-2 < 3$ mais $\dfrac{1}{-2} < \dfrac{1}{3}$, le sens n'a pas changé.
\end{important}

## Encadrements

\begin{definition}[Encadrement]
**Encadrer** un réel $x$, c'est trouver deux réels $a$ et $b$ tels que :
$$a \le x \le b.$$
Le réel $b - a$ est appelé l'**amplitude** de l'encadrement : plus elle est petite, plus l'encadrement est précis.
\end{definition}

\begin{propriete}[Opérations sur les encadrements]
Soient $a \le x \le b$ et $c \le y \le d$.
\begin{itemize}
    \item **Somme** : $a + c \le x + y \le b + d$.
    \item **Opposé** : $-b \le -x \le -a$.
    \item **Différence** : $a - d \le x - y \le b - c$.
    \item **Produit** (si tous les termes sont positifs, $a, c \ge 0$) : $a c \le x y \le b d$.
\end{itemize}
\end{propriete}

\begin{methode}[Encadrer une différence]
Pour encadrer $x - y$, on encadre d'abord $-y$ en changeant le sens de l'inégalité, puis on additionne. Si $2 \le x \le 5$ et $1 \le y \le 3$, alors $-3 \le -y \le -1$, d'où :
$$2 + (-3) \le x - y \le 5 + (-1), \quad \text{soit} \quad -1 \le x - y \le 4.$$
\end{methode}

\begin{important}
On ne soustrait **jamais** deux encadrements membre à membre. Pour encadrer $x - y$, il faut toujours passer par l'encadrement de $-y$. De même, pour un produit, il faut faire attention aux signes des bornes.
\end{important}

## Valeur absolue et distance

\begin{definition}[Valeur absolue]
La **valeur absolue** d'un réel $x$, notée $|x|$, est définie par :
$$|x| = \begin{cases} x & \text{si } x \ge 0, \\ -x & \text{si } x < 0. \end{cases}$$
La valeur absolue d'un réel est toujours **positive ou nulle**, et $|x| = 0 \iff x = 0$.
\end{definition}

\begin{definition}[Distance entre deux réels]
Sur une droite graduée, la **distance** entre les points d'abscisses $a$ et $b$ est le réel positif :
$$d(a, b) = |b - a| = |a - b|.$$
En particulier, $|x|$ représente la distance du point d'abscisse $x$ à l'origine $0$.
\end{definition}

\begin{propriete}[Propriétés de la valeur absolue]
Pour tous réels $a$ et $b$ :
\begin{itemize}
    \item $|a| \ge 0$ et $|-a| = |a|$.
    \item $|a|^2 = a^2$ et $\sqrt{a^2} = |a|$.
    \item $|a \times b| = |a| \times |b|$ et $\left|\dfrac{a}{b}\right| = \dfrac{|a|}{|b|}$ (avec $b \neq 0$).
    \item **Inégalité triangulaire** : $|a + b| \le |a| + |b|$.
\end{itemize}
\end{propriete}

\begin{propriete}[Valeur absolue et inégalités]
Soit $r$ un réel positif. Pour tout réel $x$ :
\begin{itemize}
    \item $|x| \le r \iff -r \le x \le r$.
    \item $|x| \ge r \iff x \le -r \ \text{ou} \ x \ge r$.
\end{itemize}
Plus généralement, $|x - a| \le r \iff a - r \le x \le a + r$ : c'est l'ensemble des réels situés à une distance au plus $r$ de $a$.
\end{propriete}

\begin{methode}[Résoudre une équation ou inéquation avec valeur absolue]
Pour résoudre $|x - 3| = 5$, on interprète l'égalité comme une distance : $x$ est à distance $5$ de $3$, donc $x = 3 - 5 = -2$ ou $x = 3 + 5 = 8$.
Pour résoudre $|x - 3| \le 5$, on écrit $-5 \le x - 3 \le 5$, d'où $-2 \le x \le 8$.
\end{methode}

## Intervalles

\begin{definition}[Intervalles]
Soient $a$ et $b$ deux réels avec $a \le b$. On définit les intervalles :
\begin{itemize}
    \item $[a, b] = \{ x \in \R \mid a \le x \le b \}$ (intervalle **fermé**) ;
    \item $]a, b[ = \{ x \in \R \mid a < x < b \}$ (intervalle **ouvert**) ;
    \item $[a, b[$ et $]a, b]$ (intervalles **semi-ouverts**) ;
    \item $[a, +\infty[ = \{ x \in \R \mid x \ge a \}$ et $]-\infty, b] = \{ x \in \R \mid x \le b \}$.
\end{itemize}
Le symbole $\infty$ n'est jamais un nombre : un crochet tourné vers $+\infty$ ou $-\infty$ est toujours **ouvert**.
\end{definition}

\begin{propriete}[Centre et rayon d'un intervalle]
L'intervalle $[a - r, a + r]$ (avec $r \ge 0$) est l'ensemble des réels $x$ tels que $|x - a| \le r$. Le réel $a$ en est le **centre** et $r$ le **rayon**. On a alors :
$$a = \frac{(a-r) + (a+r)}{2}, \qquad r = \frac{(a+r) - (a-r)}{2}.$$
\end{propriete}

\begin{definition}[Intersection et réunion]
Pour deux intervalles $I$ et $J$ :
\begin{itemize}
    \item l'**intersection** $I \cap J$ est l'ensemble des réels appartenant à $I$ **et** à $J$ ;
    \item la **réunion** $I \cup J$ est l'ensemble des réels appartenant à $I$ **ou** à $J$.
\end{itemize}
\end{definition}

\begin{exemple}
$[1, 5] \cap [3, 8] = [3, 5]$ et $[1, 5] \cup [3, 8] = [1, 8]$. En revanche $[1, 2] \cap [5, 7] = \varnothing$ (intervalles disjoints).
\end{exemple}

## La partie entière

\begin{definition}[Partie entière]
La **partie entière** d'un réel $x$, notée $E(x)$ (ou $\lfloor x \rfloor$), est le plus grand entier relatif inférieur ou égal à $x$. C'est l'unique entier $n$ vérifiant :
$$n \le x < n + 1, \quad \text{c'est-à-dire} \quad E(x) \le x < E(x) + 1.$$
\end{definition}

\begin{exemple}
$E(3{,}7) = 3$, $E(5) = 5$, $E(-2{,}3) = -3$ (et non $-2$, car $-3 \le -2{,}3 < -2$).
\end{exemple}

\begin{important}
Pour un réel **négatif** non entier, la partie entière est l'entier situé **en dessous** : $E(-0{,}5) = -1$. C'est une erreur fréquente de croire que $E(x)$ s'obtient en « supprimant la partie décimale », ce qui n'est vrai que pour les réels positifs.
\end{important}

\begin{propriete}[Propriétés de la partie entière]
Pour tout réel $x$ :
\begin{itemize}
    \item $E(x) \le x < E(x) + 1$ et $x - 1 < E(x) \le x$.
    \item $E(x) = x$ si et seulement si $x$ est un entier relatif.
    \item Pour tout entier relatif $k$ : $E(x + k) = E(x) + k$.
\end{itemize}
\end{propriete}

## Comparaison de $a$, $a^2$ et $\sqrt{a}$

\begin{theoreme}[Comparaison selon la position par rapport à 1]
Soit $a$ un réel positif. Le signe de $a^2 - a = a(a - 1)$ permet de comparer $a$ et $a^2$ :
\begin{itemize}
    \item Si $0 \le a \le 1$, alors $a^2 \le a \le \sqrt{a}$.
    \item Si $a \ge 1$, alors $\sqrt{a} \le a \le a^2$.
\end{itemize}
Il y a égalité $a = a^2 = \sqrt{a}$ uniquement pour $a = 0$ et $a = 1$.
\end{theoreme}

\begin{methode}[Justifier la comparaison]
On compare $a$ et $a^2$ par le signe de $a^2 - a = a(a-1)$ : ce produit est négatif sur $[0, 1]$ et positif sur $[1, +\infty[$. Pour $\sqrt{a}$, on remarque que $\sqrt{a} = a \times \dfrac{1}{\sqrt a}$ (pour $a>0$) : si $a < 1$ alors $\sqrt a > a$, et si $a > 1$ alors $\sqrt a < a$.
\end{methode}

\begin{exemple}
Pour $a = \dfrac{1}{4}$ (compris entre $0$ et $1$) : $a^2 = \dfrac{1}{16}$, $a = \dfrac{1}{4}$, $\sqrt{a} = \dfrac{1}{2}$, et l'on vérifie bien $\dfrac{1}{16} \le \dfrac{1}{4} \le \dfrac{1}{2}$.
Pour $a = 9$ (supérieur à $1$) : $\sqrt{9} = 3 \le 9 \le 81 = 9^2$.
\end{exemple}
