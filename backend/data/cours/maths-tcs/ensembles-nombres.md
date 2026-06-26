Pour mesurer, compter, partager ou repérer, on a besoin de différentes sortes de nombres. Les mathématiciens ont construit progressivement plusieurs **ensembles de nombres**, emboîtés les uns dans les autres : les entiers naturels $\N$, les entiers relatifs $\Z$, les nombres décimaux $\D$, les nombres rationnels $\Q$ et enfin les nombres réels $\R$. Ce chapitre présente ces ensembles et leurs notations, puis les outils qui permettent de travailler dans $\R$ : les intervalles, la valeur absolue, les puissances, les racines carrées et l'approximation décimale.

## Les ensembles de nombres

\begin{definition}[Les cinq ensembles de nombres]
On utilise les ensembles suivants :
\begin{itemize}
    \item $\N$ : l'ensemble des **entiers naturels** $\{0, 1, 2, 3, \dots\}$.
    \item $\Z$ : l'ensemble des **entiers relatifs** $\{\dots, -2, -1, 0, 1, 2, \dots\}$.
    \item $\D$ : l'ensemble des **nombres décimaux**, c'est-à-dire les nombres qui s'écrivent $\dfrac{a}{10^n}$ avec $a \in \Z$ et $n \in \N$.
    \item $\Q$ : l'ensemble des **nombres rationnels**, c'est-à-dire les nombres qui s'écrivent $\dfrac{a}{b}$ avec $a \in \Z$ et $b \in \Z^*$.
    \item $\R$ : l'ensemble des **nombres réels**, qui regroupe tous les nombres précédents ainsi que les nombres irrationnels.
\end{itemize}
\end{definition}

\begin{important}
Ces ensembles sont **emboîtés** : tout entier naturel est un entier relatif, tout entier relatif est décimal, tout décimal est rationnel, et tout rationnel est réel. On écrit cette chaîne d'inclusions :
$$\N \subset \Z \subset \D \subset \Q \subset \R.$$
\end{important}

\begin{definition}[Notations utiles]
On note avec une étoile l'ensemble privé de $0$, et avec un signe les nombres positifs ou négatifs :
\begin{itemize}
    \item $\R^*$ désigne $\R$ privé de $0$, de même $\N^*$, $\Z^*$, $\Q^*$.
    \item $\R_+$ désigne l'ensemble des réels positifs ou nuls, et $\R_-$ celui des réels négatifs ou nuls.
    \item $\R_+^*$ désigne les réels strictement positifs, et $\R_-^*$ les réels strictement négatifs.
\end{itemize}
\end{definition}

## Décimaux, rationnels et irrationnels

\begin{definition}[Nombre rationnel]
Un nombre **rationnel** est un quotient de deux entiers : il s'écrit $\dfrac{a}{b}$ avec $a \in \Z$ et $b \in \Z^*$. Un même rationnel admet plusieurs écritures, par exemple $\dfrac{2}{3} = \dfrac{4}{6} = \dfrac{6}{9}$.
\end{definition}

\begin{exemple}
$\dfrac{7}{2} = 3{,}5$ est rationnel et décimal. $\dfrac{1}{3} = 0{,}333\dots$ est rationnel mais **n'est pas** décimal : son écriture décimale est illimitée. Tout entier est rationnel, car $n = \dfrac{n}{1}$.
\end{exemple}

\begin{propriete}[Reconnaître un nombre décimal]
Un nombre rationnel est décimal si et seulement si, une fois la fraction rendue irréductible, son dénominateur ne contient que les facteurs premiers $2$ et $5$. Ainsi $\dfrac{3}{20} = 0{,}15$ est décimal (car $20 = 2^2 \times 5$), tandis que $\dfrac{5}{6}$ ne l'est pas (car $6 = 2 \times 3$).
\end{propriete}

\begin{definition}[Nombre irrationnel]
Un nombre réel qui **n'est pas** rationnel est dit **irrationnel** : il ne peut s'écrire sous la forme d'aucun quotient d'entiers. Son écriture décimale est illimitée et non périodique.
\end{definition}

\begin{exemple}
$\sqrt{2}$, $\sqrt{3}$ et $\pi$ sont des nombres irrationnels. Par exemple, on peut montrer que $\sqrt{2}$ n'est égal à aucune fraction $\dfrac{a}{b}$, son écriture $\sqrt{2} = 1{,}41421356\dots$ ne se répète jamais.
\end{exemple}

## Les intervalles de $\R$

\begin{definition}[Intervalles bornés]
Soient $a$ et $b$ deux réels avec $a \le b$. On définit :
\begin{itemize}
    \item $[a, b] = \{x \in \R \mid a \le x \le b\}$ : intervalle **fermé**.
    \item $\,]a, b[\, = \{x \in \R \mid a < x < b\}$ : intervalle **ouvert**.
    \item $[a, b[\, = \{x \in \R \mid a \le x < b\}$ et $\,]a, b] = \{x \in \R \mid a < x \le b\}$ : intervalles **semi-ouverts**.
\end{itemize}
Un crochet **tourné vers le nombre** signifie que la borne est incluse, un crochet **tourné vers l'extérieur** qu'elle est exclue.
\end{definition}

\begin{definition}[Intervalles non bornés]
À l'aide des symboles $+\infty$ et $-\infty$ (qui ne sont jamais inclus) :
\begin{itemize}
    \item $[a, +\infty[\, = \{x \in \R \mid x \ge a\}$ et $\,]a, +\infty[\, = \{x \in \R \mid x > a\}$.
    \item $\,]-\infty, b] = \{x \in \R \mid x \le b\}$ et $\,]-\infty, b[\, = \{x \in \R \mid x < b\}$.
    \item $\,]-\infty, +\infty[\, = \R$ tout entier.
\end{itemize}
\end{definition}

\begin{exemple}
L'inéquation $-2 \le x < 5$ a pour ensemble de solutions l'intervalle $[-2, 5[$. L'inéquation $x > 3$ a pour solutions $\,]3, +\infty[$.
\end{exemple}

\begin{definition}[Intersection et réunion]
Pour deux intervalles $I$ et $J$ :
\begin{itemize}
    \item l'**intersection** $I \cap J$ est l'ensemble des réels appartenant à $I$ **et** à $J$ ;
    \item la **réunion** $I \cup J$ est l'ensemble des réels appartenant à $I$ **ou** à $J$.
\end{itemize}
\end{definition}

\begin{exemple}
$[-1, 4] \cap \,]2, 7[\, = \,]2, 4]$ et $[-1, 2] \cup [3, 5] = [-1, 2] \cup [3, 5]$ (cette réunion ne se simplifie pas en un seul intervalle, car il manque $]2,3[$).
\end{exemple}

## La valeur absolue

\begin{definition}[Valeur absolue]
La **valeur absolue** d'un réel $x$, notée $|x|$, est définie par :
$$|x| = \begin{cases} x & \text{si } x \ge 0, \\ -x & \text{si } x < 0. \end{cases}$$
C'est toujours un nombre positif ou nul : c'est la **distance** entre $x$ et $0$ sur la droite réelle.
\end{definition}

\begin{exemple}
$|5| = 5$, $\;|-3| = 3$ et $|0| = 0$. La distance entre deux réels $a$ et $b$ est $|a - b|$ : par exemple la distance entre $-2$ et $6$ vaut $|-2 - 6| = 8$.
\end{exemple}

\begin{propriete}[Propriétés de la valeur absolue]
Pour tous réels $x$ et $y$ :
\begin{itemize}
    \item $|x| \ge 0$, et $|x| = 0$ si et seulement si $x = 0$.
    \item $|-x| = |x|$ et $|x|^2 = x^2$, donc $\sqrt{x^2} = |x|$.
    \item $|xy| = |x| \times |y|$ et $\left|\dfrac{x}{y}\right| = \dfrac{|x|}{|y|}$ (avec $y \neq 0$).
    \item **Inégalité triangulaire** : $|x + y| \le |x| + |y|$.
\end{itemize}
\end{propriete}

\begin{methode}[Résoudre une équation ou inéquation avec valeur absolue]
Pour $r > 0$ :
\begin{itemize}
    \item $|x| = r$ équivaut à $x = r$ ou $x = -r$.
    \item $|x| \le r$ équivaut à $-r \le x \le r$, soit $x \in [-r, r]$.
    \item $|x| \ge r$ équivaut à $x \le -r$ ou $x \ge r$.
\end{itemize}
Plus généralement, $|x - a| \le r$ signifie que $x$ est à une distance au plus $r$ de $a$, soit $x \in [a - r, a + r]$.
\end{methode}

## Les puissances

\begin{definition}[Puissance entière]
Pour un réel $a$ et un entier naturel $n \ge 1$ :
$$a^n = \underbrace{a \times a \times \cdots \times a}_{n \text{ facteurs}}.$$
Par convention, $a^0 = 1$ (pour $a \neq 0$), et pour $a \neq 0$ et $n \in \N^*$ : $a^{-n} = \dfrac{1}{a^n}$.
\end{definition}

\begin{propriete}[Règles de calcul sur les puissances]
Pour tous réels non nuls $a$, $b$ et tous entiers relatifs $m$, $n$ :
\begin{itemize}
    \item $a^m \times a^n = a^{m+n}$.
    \item $\dfrac{a^m}{a^n} = a^{m-n}$.
    \item $(a^m)^n = a^{mn}$.
    \item $(a \times b)^n = a^n \times b^n$ et $\left(\dfrac{a}{b}\right)^n = \dfrac{a^n}{b^n}$.
\end{itemize}
\end{propriete}

\begin{exemple}
$2^3 \times 2^4 = 2^7 = 128$, $\;\dfrac{5^6}{5^4} = 5^2 = 25$, $\;(3^2)^3 = 3^6 = 729$ et $10^{-2} = \dfrac{1}{100} = 0{,}01$.
\end{exemple}

\begin{important}
Attention aux signes : $(-a)^n$ vaut $a^n$ si $n$ est **pair**, et $-a^n$ si $n$ est **impair**. Ainsi $(-2)^4 = 16$ mais $(-2)^3 = -8$. Il ne faut pas confondre $(-2)^4 = 16$ avec $-2^4 = -16$.
\end{important}

## Les racines carrées

\begin{definition}[Racine carrée]
Pour un réel positif $a \ge 0$, la **racine carrée** de $a$, notée $\sqrt{a}$, est l'unique réel **positif** dont le carré vaut $a$ :
$$\sqrt{a} \ge 0 \quad \text{et} \quad (\sqrt{a})^2 = a.$$
La racine carrée d'un nombre **strictement négatif** n'existe pas dans $\R$.
\end{definition}

\begin{exemple}
$\sqrt{9} = 3$, $\;\sqrt{0} = 0$ et $\sqrt{2} \approx 1{,}414$. On a aussi $\sqrt{x^2} = |x|$ : par exemple $\sqrt{(-7)^2} = \sqrt{49} = 7 = |-7|$.
\end{exemple}

\begin{propriete}[Règles de calcul sur les racines carrées]
Pour tous réels positifs $a$ et $b$ :
\begin{itemize}
    \item $\sqrt{a \times b} = \sqrt{a} \times \sqrt{b}$.
    \item $\sqrt{\dfrac{a}{b}} = \dfrac{\sqrt{a}}{\sqrt{b}}$ (avec $b > 0$).
    \item $(\sqrt{a})^2 = a$.
\end{itemize}
\end{propriete}

\begin{important}
En général $\sqrt{a + b} \neq \sqrt{a} + \sqrt{b}$. Par exemple $\sqrt{9 + 16} = \sqrt{25} = 5$, alors que $\sqrt{9} + \sqrt{16} = 3 + 4 = 7$. La racine carrée **ne se distribue pas** sur l'addition.
\end{important}

\begin{methode}[Simplifier une racine carrée]
Pour simplifier $\sqrt{a}$, on extrait les carrés parfaits qui divisent $a$. Par exemple :
$$\sqrt{50} = \sqrt{25 \times 2} = \sqrt{25} \times \sqrt{2} = 5\sqrt{2}.$$
Pour rendre rationnel un dénominateur, on multiplie par la racine : $\dfrac{1}{\sqrt{2}} = \dfrac{1 \times \sqrt{2}}{\sqrt{2} \times \sqrt{2}} = \dfrac{\sqrt{2}}{2}$.
\end{methode}

## Encadrement et approximation décimale

\begin{definition}[Encadrement]
**Encadrer** un réel $x$, c'est trouver deux décimaux $m$ et $M$ tels que $m \le x \le M$. L'**amplitude** de l'encadrement est la différence $M - m$ : plus elle est petite, plus l'encadrement est précis.
\end{definition}

\begin{definition}[Troncature et arrondi]
Soit $x$ un réel et $n$ un entier naturel.
\begin{itemize}
    \item La **troncature** de $x$ à $10^{-n}$ s'obtient en gardant les $n$ premières décimales et en supprimant les suivantes.
    \item L'**arrondi** de $x$ à $10^{-n}$ est le décimal le plus proche de $x$ ayant $n$ décimales : on regarde la décimale suivante, et on arrondit au supérieur si elle vaut $5$ ou plus.
\end{itemize}
\end{definition}

\begin{exemple}
Pour $\pi = 3{,}14159\dots$ :
\begin{itemize}
    \item la troncature à $10^{-2}$ est $3{,}14$ ;
    \item l'arrondi à $10^{-2}$ est $3{,}14$ (la décimale suivante est $1 < 5$) ;
    \item l'arrondi à $10^{-3}$ est $3{,}142$ (la décimale suivante est $5$).
\end{itemize}
\end{exemple}

\begin{methode}[Encadrer $\sqrt{a}$ par essais]
Pour encadrer $\sqrt{30}$, on cherche les carrés qui entourent $30$ : $5^2 = 25$ et $6^2 = 36$, donc $5 < \sqrt{30} < 6$. On affine : $5{,}4^2 = 29{,}16$ et $5{,}5^2 = 30{,}25$, donc $5{,}4 < \sqrt{30} < 5{,}5$. On obtient ainsi un encadrement d'amplitude $0{,}1$, que l'on peut resserrer autant que voulu.
\end{methode}

\begin{important}
La valeur d'un nombre comme $\pi$ ou $\sqrt{2}$ affichée par la calculatrice n'est qu'une **valeur approchée**. Dans un calcul exact, on garde l'écriture symbolique ($\sqrt{2}$, $\pi$, $\dfrac{1}{3}$) le plus longtemps possible, et on ne remplace par une valeur décimale approchée qu'à la toute fin.
\end{important}
