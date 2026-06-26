### Exercice 1 : Appartenance aux ensembles de nombres
\begin{enonce}
Pour chacun des nombres suivants, indiquer le plus petit ensemble parmi $\N$, $\Z$, $\D$, $\Q$, $\R$ auquel il appartient :
\begin{enumerate}
    \item $a = \dfrac{15}{3}$
    \item $b = -\dfrac{7}{4}$
    \item $c = \dfrac{2}{3}$
    \item $d = \sqrt{16}$
    \item $e = \sqrt{5}$
    \item $f = \dfrac{12}{8}$
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item $a = \dfrac{15}{3} = 5$ : c'est un entier naturel, donc $a \in \N$.
    \item $b = -\dfrac{7}{4} = -1{,}75$ : c'est un nombre décimal négatif, donc $b \in \D$ (mais $b \notin \Z$).
    \item $c = \dfrac{2}{3}$ : le dénominateur de la fraction irréductible contient le facteur $3$, donc $c$ n'est pas décimal. C'est un rationnel : $c \in \Q$.
    \item $d = \sqrt{16} = 4$ : c'est un entier naturel, donc $d \in \N$.
    \item $e = \sqrt{5}$ : la racine carrée de $5$ n'est pas un carré parfait, c'est un nombre irrationnel : $e \in \R$ (et $e \notin \Q$).
    \item $f = \dfrac{12}{8} = \dfrac{3}{2} = 1{,}5$ : c'est un nombre décimal, donc $f \in \D$.
\end{enumerate}

### Exercice 2 : Calculs sur les puissances
\begin{enonce}
Écrire chacune des expressions suivantes sous la forme d'une seule puissance, puis donner sa valeur lorsque c'est un entier :
\begin{enumerate}
    \item $A = 2^5 \times 2^{-2}$
    \item $B = \dfrac{3^7}{3^4}$
    \item $C = (5^2)^3 \times 5^{-4}$
    \item $D = \dfrac{10^{-3} \times 10^6}{10^2}$
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item $A = 2^5 \times 2^{-2} = 2^{5-2} = 2^3 = 8$.
    \item $B = \dfrac{3^7}{3^4} = 3^{7-4} = 3^3 = 27$.
    \item $C = (5^2)^3 \times 5^{-4} = 5^6 \times 5^{-4} = 5^{6-4} = 5^2 = 25$.
    \item $D = \dfrac{10^{-3} \times 10^6}{10^2} = \dfrac{10^{-3+6}}{10^2} = \dfrac{10^3}{10^2} = 10^{3-2} = 10^1 = 10$.
\end{enumerate}

### Exercice 3 : Simplification et rationalisation de racines
\begin{enonce}
\begin{enumerate}
    \item Simplifier les racines $\sqrt{72}$ et $\sqrt{98}$.
    \item En déduire la forme simplifiée de $E = \sqrt{72} - \sqrt{98} + \sqrt{2}$.
    \item Rendre rationnel le dénominateur de $F = \dfrac{3}{\sqrt{3}}$ et de $G = \dfrac{5}{2\sqrt{5}}$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item On extrait les carrés parfaits :
    $$\sqrt{72} = \sqrt{36 \times 2} = 6\sqrt{2}, \qquad \sqrt{98} = \sqrt{49 \times 2} = 7\sqrt{2}.$$
    \item En remplaçant : $E = 6\sqrt{2} - 7\sqrt{2} + \sqrt{2} = (6 - 7 + 1)\sqrt{2} = 0\sqrt{2} = 0$.
    \item Pour $F$, on multiplie par $\sqrt{3}$ :
    $$F = \dfrac{3}{\sqrt{3}} = \dfrac{3\sqrt{3}}{\sqrt{3}\times\sqrt{3}} = \dfrac{3\sqrt{3}}{3} = \sqrt{3}.$$
    Pour $G$, on multiplie par $\sqrt{5}$ :
    $$G = \dfrac{5}{2\sqrt{5}} = \dfrac{5\sqrt{5}}{2 \times \sqrt{5} \times \sqrt{5}} = \dfrac{5\sqrt{5}}{2 \times 5} = \dfrac{\sqrt{5}}{2}.$$
\end{enumerate}

### Exercice 4 : Équations et inéquations avec valeur absolue
\begin{enonce}
Résoudre dans $\R$ les équations et inéquations suivantes, et exprimer chaque ensemble de solutions à l'aide d'intervalles lorsque c'est possible :
\begin{enumerate}
    \item $|x| = 7$
    \item $|x - 3| = 5$
    \item $|x| \le 4$
    \item $|x - 2| < 3$
    \item $|x| \ge 6$
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item $|x| = 7$ équivaut à $x = 7$ ou $x = -7$. L'ensemble des solutions est $\{-7\,;\,7\}$.
    \item $|x - 3| = 5$ équivaut à $x - 3 = 5$ ou $x - 3 = -5$, soit $x = 8$ ou $x = -2$. Solutions : $\{-2\,;\,8\}$.
    \item $|x| \le 4$ équivaut à $-4 \le x \le 4$, soit $x \in [-4\,;\,4]$.
    \item $|x - 2| < 3$ signifie que $x$ est à une distance strictement inférieure à $3$ de $2$ : $-3 < x - 2 < 3$, donc $-1 < x < 5$, soit $x \in \,]-1\,;\,5[$.
    \item $|x| \ge 6$ équivaut à $x \le -6$ ou $x \ge 6$, soit $x \in \,]-\infty\,;\,-6] \cup [6\,;\,+\infty[$.
\end{enumerate}

### Exercice 5 : Intervalles, intersection et réunion
\begin{enonce}
On considère les intervalles $I = [-3\,;\,4]$, $J = \,]1\,;\,7]$ et $K = \,]-\infty\,;\,2[$.
\begin{enumerate}
    \item Déterminer $I \cap J$.
    \item Déterminer $I \cup J$.
    \item Déterminer $I \cap K$.
    \item Traduire « $x$ appartient à $I$ et $x$ n'appartient pas à $K$ » par un intervalle.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item $I \cap J$ regroupe les réels qui sont à la fois dans $[-3\,;\,4]$ et dans $\,]1\,;\,7]$. La borne basse commune est $1$ (exclue, car ouverte dans $J$) et la borne haute commune est $4$ (incluse). Donc $I \cap J = \,]1\,;\,4]$.
    \item $I \cup J$ couvre de $-3$ (inclus) à $7$ (inclus) sans trou, car $I$ et $J$ se chevauchent sur $\,]1\,;\,4]$. Donc $I \cup J = [-3\,;\,7]$.
    \item $I \cap K$ : on garde les réels de $[-3\,;\,4]$ qui vérifient aussi $x < 2$. Cela donne $I \cap K = [-3\,;\,2[$.
    \item « $x \in I$ et $x \notin K$ » signifie $-3 \le x \le 4$ et $x \ge 2$, soit $2 \le x \le 4$ : l'intervalle $[2\,;\,4]$.
\end{enumerate}

### Exercice 6 : Encadrement et approximation
\begin{enonce}
\begin{enumerate}
    \item Donner deux entiers consécutifs encadrant $\sqrt{30}$, puis un encadrement d'amplitude $0{,}1$.
    \item On donne $\sqrt{30} = 5{,}4772\dots$ Donner la troncature et l'arrondi de $\sqrt{30}$ à $10^{-2}$.
    \item Sachant que $3 < x < 5$ et $1 < y < 2$, encadrer la somme $x + y$ puis le produit $xy$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Comme $5^2 = 25$ et $6^2 = 36$, on a $25 < 30 < 36$, donc $5 < \sqrt{30} < 6$. En affinant : $5{,}4^2 = 29{,}16$ et $5{,}5^2 = 30{,}25$, donc $29{,}16 < 30 < 30{,}25$ et ainsi $5{,}4 < \sqrt{30} < 5{,}5$, encadrement d'amplitude $0{,}1$.
    \item À partir de $\sqrt{30} = 5{,}4772\dots$ : la troncature à $10^{-2}$ garde deux décimales, soit $5{,}47$ ; l'arrondi à $10^{-2}$ regarde la 3\ieme{} décimale ($7 \ge 5$), donc on arrondit au supérieur : $5{,}48$.
    \item Pour la somme, on ajoute membre à membre : $3 + 1 < x + y < 5 + 2$, soit $4 < x + y < 7$. Pour le produit, comme tous les termes sont positifs, on multiplie membre à membre : $3 \times 1 < xy < 5 \times 2$, soit $3 < xy < 10$.
\end{enumerate}
