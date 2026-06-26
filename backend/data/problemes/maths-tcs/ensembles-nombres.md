### Problème 1 : Nombres décimaux, rationnels et irrationnels
\begin{enonce}
On s'intéresse à la nature des nombres et à la chaîne d'inclusions $\N \subset \Z \subset \D \subset \Q \subset \R$.
\begin{enumerate}
    \item Justifier que $\dfrac{7}{28}$ est un nombre décimal et donner son écriture décimale.
    \item Montrer que $\dfrac{4}{15}$ n'est pas un nombre décimal.
    \item Le nombre $0{,}666\dots = 0{,}\overline{6}$ (le $6$ se répète indéfiniment) est-il rationnel ? On pourra poser $x = 0{,}\overline{6}$ et calculer $10x - x$.
    \item On admet que $\sqrt{2}$ est irrationnel. Le nombre $3 + \sqrt{2}$ est-il rationnel ou irrationnel ? Justifier.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item On simplifie la fraction : $\dfrac{7}{28} = \dfrac{1}{4}$. Le dénominateur $4 = 2^2$ ne contient que le facteur premier $2$, donc le nombre est décimal. Son écriture est $\dfrac{1}{4} = 0{,}25$.
    \item On rend la fraction irréductible : $\dfrac{4}{15}$ est déjà irréductible ($4 = 2^2$ et $15 = 3 \times 5$ n'ont aucun facteur commun). Le dénominateur $15$ contient le facteur premier $3$, qui n'est ni $2$ ni $5$ : le nombre n'est donc pas décimal. Son écriture décimale, $0{,}2666\dots$, est illimitée.
    \item Posons $x = 0{,}\overline{6}$. Alors $10x = 6{,}\overline{6}$, donc
    $$10x - x = 6{,}\overline{6} - 0{,}\overline{6} = 6 \quad\Longrightarrow\quad 9x = 6 \quad\Longrightarrow\quad x = \dfrac{6}{9} = \dfrac{2}{3}.$$
    Ce nombre s'écrit comme un quotient de deux entiers : il est donc rationnel (mais pas décimal, car le dénominateur $3$ n'est ni $2$ ni $5$).
    \item Supposons que $3 + \sqrt{2}$ soit rationnel et notons-le $r \in \Q$. Alors $\sqrt{2} = r - 3$. Or la différence de deux rationnels est un rationnel, donc $\sqrt{2}$ serait rationnel, ce qui contredit l'hypothèse. Par conséquent $3 + \sqrt{2}$ est irrationnel.
\end{enumerate}

### Problème 2 : Calcul exact avec racines carrées
\begin{enonce}
On considère les nombres $a = \dfrac{1}{\sqrt{2}}$ et $b = \dfrac{1}{\sqrt{2}+1}$.
\begin{enumerate}
    \item Rendre rationnel le dénominateur de $a$.
    \item Montrer que $(\sqrt{2}+1)(\sqrt{2}-1) = 1$.
    \item En déduire que $b = \sqrt{2} - 1$.
    \item Calculer $A = (\sqrt{3} + \sqrt{12})^2$ et donner le résultat sous la forme la plus simple.
    \item On donne $\sqrt{2} \approx 1{,}414$. En déduire une valeur approchée de $a$ et de $b$, puis vérifier la cohérence avec les écritures exactes obtenues.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item On multiplie haut et bas par $\sqrt{2}$ :
    $$a = \dfrac{1}{\sqrt{2}} = \dfrac{\sqrt{2}}{\sqrt{2}\times\sqrt{2}} = \dfrac{\sqrt{2}}{2}.$$
    \item On développe avec l'identité $(p+q)(p-q) = p^2 - q^2$ :
    $$(\sqrt{2}+1)(\sqrt{2}-1) = (\sqrt{2})^2 - 1^2 = 2 - 1 = 1.$$
    \item On multiplie $b$ par $\dfrac{\sqrt{2}-1}{\sqrt{2}-1}$ (l'expression conjuguée) :
    $$b = \dfrac{1}{\sqrt{2}+1} = \dfrac{\sqrt{2}-1}{(\sqrt{2}+1)(\sqrt{2}-1)} = \dfrac{\sqrt{2}-1}{1} = \sqrt{2}-1.$$
    \item On simplifie d'abord $\sqrt{12} = \sqrt{4 \times 3} = 2\sqrt{3}$, donc $\sqrt{3} + \sqrt{12} = \sqrt{3} + 2\sqrt{3} = 3\sqrt{3}$. Ainsi
    $$A = (3\sqrt{3})^2 = 3^2 \times (\sqrt{3})^2 = 9 \times 3 = 27.$$
    \item Avec $\sqrt{2} \approx 1{,}414$ : $a = \dfrac{\sqrt{2}}{2} \approx \dfrac{1{,}414}{2} \approx 0{,}707$, et $b = \sqrt{2} - 1 \approx 0{,}414$. On vérifie : $\dfrac{1}{\sqrt{2}} \approx \dfrac{1}{1{,}414} \approx 0{,}707$ et $\dfrac{1}{\sqrt{2}+1} \approx \dfrac{1}{2{,}414} \approx 0{,}414$ : les valeurs approchées coïncident bien avec les formes exactes.
\end{enumerate}

### Problème 3 : Valeur absolue, distance et intervalles
\begin{enonce}
Sur la droite réelle, la distance entre deux réels $x$ et $a$ est $|x - a|$.
\begin{enumerate}
    \item Décrire par une condition de la forme $|x - a| \le r$ l'ensemble des réels $x$ dont la distance à $5$ est inférieure ou égale à $2$, puis traduire cet ensemble par un intervalle.
    \item Résoudre l'inéquation $|2x - 6| \le 4$ et donner l'ensemble des solutions sous forme d'intervalle.
    \item Réciproquement, écrire l'intervalle $[1\,;\,9]$ sous la forme d'une inéquation $|x - a| \le r$ en précisant le centre $a$ et le rayon $r$.
    \item Résoudre $|x + 3| > 1$ et donner l'ensemble des solutions comme réunion d'intervalles.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item La distance de $x$ à $5$ vaut $|x - 5|$ ; la condition est $|x - 5| \le 2$. Cela signifie que $x$ est à une distance au plus $2$ de $5$, soit $5 - 2 \le x \le 5 + 2$, c'est-à-dire $x \in [3\,;\,7]$.
    \item On isole d'abord la valeur absolue : $|2x - 6| \le 4$ équivaut à $-4 \le 2x - 6 \le 4$. En ajoutant $6$ : $2 \le 2x \le 10$, puis en divisant par $2$ : $1 \le x \le 5$. Donc $x \in [1\,;\,5]$.
    \item L'intervalle $[1\,;\,9]$ a pour centre $a = \dfrac{1 + 9}{2} = 5$ et pour rayon $r = \dfrac{9 - 1}{2} = 4$. Il s'écrit donc $|x - 5| \le 4$.
    \item $|x + 3| > 1$ s'écrit $|x - (-3)| > 1$ : la distance de $x$ à $-3$ dépasse $1$. Cela équivaut à $x + 3 > 1$ ou $x + 3 < -1$, soit $x > -2$ ou $x < -4$. L'ensemble des solutions est $\,]-\infty\,;\,-4[ \,\cup\, ]-2\,;\,+\infty[$.
\end{enumerate}
