### Problème 1 : Encadrement des dimensions d'un rectangle
\begin{enonce}
Un rectangle a pour longueur $L$ et pour largeur $\ell$, avec :
$$4 \le L \le 6 \qquad \text{et} \qquad 2 \le \ell \le 3.$$
\begin{enumerate}
    \item Encadrer le périmètre $P = 2(L + \ell)$.
    \item Encadrer l'aire $A = L \times \ell$.
    \item Encadrer la différence $L - \ell$.
    \item Encadrer le quotient $\dfrac{L}{\ell}$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item On additionne les encadrements de $L$ et $\ell$ : $6 \le L + \ell \le 9$, puis on multiplie par $2 > 0$ :
    $$12 \le 2(L + \ell) \le 18, \quad \text{donc} \quad 12 \le P \le 18.$$
    \item Tous les termes étant positifs, on multiplie membre à membre : $4 \times 2 \le L\ell \le 6 \times 3$, soit $8 \le A \le 18$.
    \item De $2 \le \ell \le 3$ on tire $-3 \le -\ell \le -2$, puis on ajoute à $4 \le L \le 6$ :
    $$4 - 3 \le L - \ell \le 6 - 2, \quad \text{soit} \quad 1 \le L - \ell \le 4.$$
    \item De $2 \le \ell \le 3$ (réels positifs) on déduit $\dfrac{1}{3} \le \dfrac{1}{\ell} \le \dfrac{1}{2}$. Comme $\dfrac{L}{\ell} = L \times \dfrac{1}{\ell}$ avec tous les termes positifs :
    $$4 \times \frac{1}{3} \le \frac{L}{\ell} \le 6 \times \frac{1}{2}, \quad \text{soit} \quad \frac{4}{3} \le \frac{L}{\ell} \le 3.$$
\end{enumerate}

### Problème 2 : Valeur absolue, distance et intervalles
\begin{enonce}
\begin{enumerate}
    \item Résoudre dans $\R$ l'équation $|2x - 3| = 7$.
    \item Résoudre dans $\R$ l'inéquation $|3x - 1| \le 5$.
    \item Résoudre dans $\R$ l'inéquation $|x - 2| \ge 4$.
    \item Interpréter l'inéquation $|x - 2| \le 4$ en termes de distance, puis donner l'intervalle solution. Préciser son centre et son rayon.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item $|2x - 3| = 7 \iff 2x - 3 = 7 \ \text{ou} \ 2x - 3 = -7 \iff x = 5 \ \text{ou} \ x = -2$. Donc $S = \{-2 ; 5\}$.
    \item $|3x - 1| \le 5 \iff -5 \le 3x - 1 \le 5 \iff -4 \le 3x \le 6 \iff -\dfrac{4}{3} \le x \le 2$. Donc $S = \left[ -\dfrac{4}{3}, 2 \right]$.
    \item $|x - 2| \ge 4 \iff x - 2 \ge 4 \ \text{ou} \ x - 2 \le -4 \iff x \ge 6 \ \text{ou} \ x \le -2$. Donc $S = \,]-\infty, -2] \, \cup \, [6, +\infty[$.
    \item $|x - 2|$ est la distance de $x$ à $2$. L'inéquation $|x - 2| \le 4$ décrit les réels situés à une distance au plus $4$ de $2$, soit $-2 \le x \le 6$ : c'est l'intervalle $[-2, 6]$, de centre $a = 2$ et de rayon $r = 4$.
\end{enumerate}

### Problème 3 : Inégalités, inverses et partie entière
\begin{enonce}
\begin{enumerate}
    \item Montrer que pour tout réel $x$, on a $x^2 - x + 1 > 0$.
    \item Soit $x$ un réel tel que $2 \le x \le 5$. Encadrer $\dfrac{1}{x}$.
    \item En déduire un encadrement de $\dfrac{x + 1}{x}$.
    \item En remarquant que $\dfrac{x + 1}{x} = 1 + \dfrac{1}{x}$, déterminer $E\!\left( \dfrac{x + 1}{x} \right)$ pour $2 \le x \le 5$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item On met sous forme canonique :
    $$x^2 - x + 1 = \left( x - \frac{1}{2} \right)^2 + \frac{3}{4}.$$
    Cette expression est une somme d'un carré (positif ou nul) et de $\dfrac{3}{4} > 0$, donc elle est strictement positive pour tout réel $x$.
    \item Comme $2 \le x \le 5$ avec des réels strictement positifs, le passage à l'inverse change le sens : $\dfrac{1}{5} \le \dfrac{1}{x} \le \dfrac{1}{2}$.
    \item On a $\dfrac{x + 1}{x} = 1 + \dfrac{1}{x}$. En ajoutant $1$ à l'encadrement précédent :
    $$1 + \frac{1}{5} \le \frac{x + 1}{x} \le 1 + \frac{1}{2}, \quad \text{soit} \quad \frac{6}{5} \le \frac{x + 1}{x} \le \frac{3}{2}.$$
    \item L'encadrement précédent donne $1{,}2 \le \dfrac{x+1}{x} \le 1{,}5$, donc $\dfrac{x+1}{x}$ appartient à l'intervalle $[1{,}2 ; 1{,}5] \subset [1, 2[$. Pour tout $x$ de $[2, 5]$, on a donc $1 \le \dfrac{x+1}{x} < 2$, et par suite $E\!\left( \dfrac{x + 1}{x} \right) = 1$.
\end{enumerate}
