### Exercice 1 : Somme des termes d'une suite géométrique
\begin{enonce}
Démontrer par récurrence que pour tout réel $q \ne 1$ et pour tout entier naturel $n \ge 0$ :
\[
\sum_{k=0}^n q^k = 1 + q + q^2 + \dots + q^n = \frac{1-q^{n+1}}{1-q}
\]
\end{enonce}

\textbf{Solution :}
Soit $P(n)$ la propriété : $\sum_{k=0}^n q^k = \frac{1-q^{n+1}}{1-q}$.
\begin{itemize}
    \item \textbf{Initialisation} : Pour $n = 0$, le membre de gauche vaut $q^0 = 1$. Le membre de droite vaut $\frac{1-q^{0+1}}{1-q} = \frac{1-q}{1-q} = 1$. La propriété $P(0)$ est donc vraie.
    \item \textbf{Hérédité} : Supposons la propriété $P(m)$ vraie pour un certain entier $m \ge 0$, c'est-à-dire $\sum_{k=0}^m q^k = \frac{1-q^{m+1}}{1-q}$.
    Montrons que $P(m+1)$ est vraie, soit $\sum_{k=0}^{m+1} q^k = \frac{1-q^{m+2}}{1-q}$.
    En utilisant l'hypothèse de récurrence :
    \[
    \sum_{k=0}^{m+1} q^k = \left( \sum_{k=0}^m q^k \right) + q^{m+1} = \frac{1-q^{m+1}}{1-q} + q^{m+1} = \frac{1-q^{m+1} + q^{m+1}(1-q)}{1-q} = \frac{1-q^{m+2}}{1-q}
    \]
    La propriété est donc héréditaire.
    \item \textbf{Conclusion} : La propriété est vraie au rang 0 et elle est héréditaire, donc pour tout $n \ge 0$, $\sum_{k=0}^n q^k = \frac{1-q^{n+1}}{1-q}$.
\end{itemize}

### Exercice 2 : Inégalité classique par récurrence
\begin{enonce}
Démontrer par récurrence que pour tout entier naturel $n \ge 1$ :
\[
2^n \ge n + 1
\]
\end{enonce}

\textbf{Solution :}
Soit $P(n)$ la propriété : $2^n \ge n + 1$.
\begin{itemize}
    \item \textbf{Initialisation} : Pour $n = 1$, $2^1 = 2$ et $1 + 1 = 2$. Comme $2 \ge 2$, $P(1)$ est vraie.
    \item \textbf{Hérédité} : Supposons la propriété vraie pour un certain entier $k \ge 1$, soit $2^k \ge k+1$.
    Montrons que $2^{k+1} \ge k+2$.
    En multipliant l'hypothèse de récurrence par 2 (qui est positif) :
    \[
    2^{k+1} = 2 \times 2^k \ge 2(k+1) = 2k + 2
    \]
    Or, pour tout $k \ge 1$, on a $k \ge 0 \implies 2k + 2 = k + k + 2 \ge k + 2$.
    On en déduit par transitivité : $2^{k+1} \ge k+2$. L'hérédité est établie.
    \item \textbf{Conclusion} : Par récurrence, pour tout entier $n \ge 1$, $2^n \ge n+1$.
\end{itemize}

### Exercice 3 : Divisibilité et récurrence
\begin{enonce}
Démontrer par récurrence que pour tout entier naturel $n \ge 0$, l'entier $4^n + 2$ est un multiple de 3.
\end{enonce}

\textbf{Solution :}
Soit $P(n)$ la propriété : « $4^n + 2$ est un multiple de 3 », c'est-à-dire qu'il existe un entier $a_n \in \Z$ tel que $4^n + 2 = 3 a_n$.
\begin{itemize}
    \item \textbf{Initialisation} : Pour $n=0$, $4^0 + 2 = 1 + 2 = 3 = 3 \times 1$. $P(0)$ est vraie.
    \item \textbf{Hérédité} : Supposons que pour un certain entier $k \ge 0$, $4^k + 2 = 3 a_k$ avec $a_k \in \Z$, ce qui donne $4^k = 3 a_k - 2$.
    Montrons que $4^{k+1} + 2$ est un multiple de 3 :
    \[
    4^{k+1} + 2 = 4 \times 4^k + 2 = 4(3 a_k - 2) + 2 = 12 a_k - 8 + 2 = 12 a_k - 6 = 3(4a_k - 2)
    \]
    Comme $a_k$ est un entier, $4a_k - 2$ est également un entier. Donc $4^{k+1} + 2$ est bien un multiple de 3. L'hérédité est prouvée.
    \item \textbf{Conclusion} : Pour tout entier naturel $n \ge 0$, $4^n + 2$ est un multiple de 3.
\end{itemize}

### Exercice 4 : Calcul de limite d'une suite rationnelle
\begin{enonce}
Déterminer la limite de la suite $(u_n)$ définie pour tout entier $n \ge 1$ par :
\[
u_n = \frac{3n^2 - 5n + 2}{2n^2 + 7n - 1}
\]
\end{enonce}

\textbf{Solution :}
C'est une forme indéterminée du type « $\frac{\infty}{\infty}$ ». Mettons en facteur le terme de plus haut degré $n^2$ au numérateur et au dénominateur :
\[
u_n = \frac{n^2 \left( 3 - \frac{5}{n} + \frac{2}{n^2} \right)}{n^2 \left( 2 + \frac{7}{n} - \frac{1}{n^2} \right)} = \frac{3 - \frac{5}{n} + \frac{2}{n^2}}{2 + \frac{7}{n} - \frac{1}{n^2}}
\]
Puisque $\lim_{n \to +\infty} \frac{1}{n} = 0$ et $\lim_{n \to +\infty} \frac{1}{n^2} = 0$, on en déduit par somme et quotient de limites :
\[
\lim_{n \to +\infty} u_n = \frac{3 - 0 + 0}{2 + 0 - 0} = \frac{3}{2}
\]

### Exercice 5 : Théorème des Gendarmes
\begin{enonce}
Déterminer la limite de la suite $(u_n)$ définie pour $n \ge 1$ par :
\[
u_n = \frac{(-1)^n \sin(n)}{n^2 + 1}
\]
\end{enonce}

\textbf{Solution :}
Pour tout entier naturel $n$, on a $-1 \le \sin(n) \le 1$ et $-1 \le (-1)^n \le 1$, ce qui implique :
\[
-|(-1)^n \sin(n)| \le (-1)^n \sin(n) \le |(-1)^n \sin(n)| \implies -1 \le (-1)^n \sin(n) \le 1
\]
Puisque $n^2 + 1 > 0$, en divisant chaque membre par $n^2+1$, on obtient :
\[
-\frac{1}{n^2 + 1} \le u_n \le \frac{1}{n^2 + 1}
\]
Or, $\lim_{n \to +\infty} -\frac{1}{n^2 + 1} = 0$ et $\lim_{n \to +\infty} \frac{1}{n^2 + 1} = 0$.
D'après le théorème des Gendarmes, la suite $(u_n)$ converge et :
\[
\lim_{n \to +\infty} u_n = 0
\]

### Exercice 6 : Convergence de suites géométriques
\begin{enonce}
Étudier la convergence et déterminer la limite de la suite $(u_n)$ définie par :
\[
u_n = 5 \times (0,9)^n - 3
\]
\end{enonce}

\textbf{Solution :}
La suite $(u_n)$ est construite à partir de la suite géométrique de terme général $q^n$ avec $q = 0,9$.
Comme $-1 < 0,9 < 1$, on sait d'après le cours que :
\[
\lim_{n \to +\infty} (0,9)^n = 0
\]
Par produit et somme de limites :
\[
\lim_{n \to +\infty} u_n = 5 \times 0 - 3 = -3
\]
La suite $(u_n)$ est donc convergente vers $-3$.

### Exercice 7 : Majoration par récurrence
\begin{enonce}
Soit la suite $(u_n)$ définie par $u_0 = 1$ et pour tout $n \in \N$, $u_{n+1} = \frac{1}{2} u_n + 3$.
Démontrer par récurrence que pour tout entier naturel $n$, $u_n < 6$.
\end{enonce}

\textbf{Solution :}
Soit $P(n)$ la propriété : $u_n < 6$.
\begin{itemize}
    \item \textbf{Initialisation} : Pour $n = 0$, $u_0 = 1$. Comme $1 < 6$, $P(0)$ est vraie.
    \item \textbf{Hérédité} : Supposons la propriété vraie au rang $k \ge 0$, c'est-à-dire $u_k < 6$.
    Montrons que $u_{k+1} < 6$. En utilisant la définition de la suite :
    \[
    u_k < 6 \implies \frac{1}{2} u_k < 3 \implies \frac{1}{2} u_k + 3 < 3 + 3 \implies u_{k+1} < 6
    \]
    La propriété est donc héritée au rang $k+1$.
    \item \textbf{Conclusion} : Par récurrence, pour tout $n \in \N$, $u_n < 6$.
\end{itemize}

### Exercice 8 : Limite avec expressions conjuguées
\begin{enonce}
Déterminer la limite de la suite $(u_n)$ définie pour $n \ge 1$ par $u_n = \sqrt{n^2 + 2n} - n$.
\end{enonce}

\textbf{Solution :}
C'est une forme indéterminée de la forme « $\infty - \infty$ ». Utilisons l'expression conjuguée :
\[
u_n = \frac{\left(\sqrt{n^2 + 2n} - n\right)\left(\sqrt{n^2 + 2n} + n\right)}{\sqrt{n^2 + 2n} + n} = \frac{(n^2 + 2n) - n^2}{\sqrt{n^2 + 2n} + n} = \frac{2n}{\sqrt{n^2\left(1 + \frac{2}{n}\right)} + n}
\]
Comme $n > 0$, $\sqrt{n^2} = n$, donc :
\[
u_n = \frac{2n}{n\sqrt{1 + \frac{2}{n}} + n} = \frac{2n}{n \left( \sqrt{1 + \frac{2}{n}} + 1 \right)} = \frac{2}{\sqrt{1 + \frac{2}{n}} + 1}
\]
Puisque $\lim_{n \to +\infty} \frac{2}{n} = 0$, on a par limite de somme et de quotient :
\[
\lim_{n \to +\infty} u_n = \frac{2}{\sqrt{1+0} + 1} = \frac{2}{2} = 1
\]

### Exercice 9 : Limite de somme par encadrement
\begin{enonce}
Soit la suite $(u_n)$ définie pour tout entier $n \ge 1$ par :
\[
u_n = \sum_{k=1}^n \frac{1}{n^2 + k} = \frac{1}{n^2 + 1} + \frac{1}{n^2 + 2} + \dots + \frac{1}{n^2 + n}
\]
Calculer la limite de $(u_n)$.
\end{enonce}

\textbf{Solution :}
La somme comporte $n$ termes. Encadrons chaque terme de la somme :
Pour tout $k \in \llbracket 1, n \rrbracket$, on a :
\[
n^2 + 1 \le n^2 + k \le n^2 + n \implies \frac{1}{n^2 + n} \le \frac{1}{n^2 + k} \le \frac{1}{n^2 + 1}
\]
En sommant ces inégalités pour $k$ allant de $1$ à $n$, on obtient :
\[
n \times \frac{1}{n^2 + n} \le u_n \le n \times \frac{1}{n^2 + 1} \implies \frac{n}{n^2 + n} \le u_n \le \frac{n}{n^2 + 1}
\]
Or :
\[
\lim_{n \to +\infty} \frac{n}{n^2 + n} = \lim_{n \to +\infty} \frac{n}{n(n+1)} = \lim_{n \to +\infty} \frac{1}{n+1} = 0
\]
et $\lim_{n \to +\infty} \frac{n}{n^2+1} = \lim_{n \to +\infty} \frac{n}{n^2(1+1/n^2)} = 0$.
Par le théorème des Gendarmes, on conclut que :
\[
\lim_{n \to +\infty} u_n = 0
\]

### Exercice 10 : Recherche analytique de seuil
\begin{enonce}
Soit la suite $(u_n)$ définie pour tout $n \in \N$ par $u_n = n^2 - 100n$.
Déterminer le plus petit entier $n$ tel que $u_n > 10\,000$.
\end{enonce}

\textbf{Solution :}
On cherche à résoudre l'inéquation $n^2 - 100n > 10\,000 \iff n^2 - 100n - 10\,000 > 0$.
C'est un trinôme du second degré de variable $n$. Calculons le discriminant :
\[
\Delta = (-100)^2 - 4(1)(-10\,000) = 10\,000 + 40\,000 = 50\,000
\]
Les racines réelles sont :
\[
n_1 = \frac{100 - \sqrt{50\,000}}{2} \approx -61,8 \quad \text{et} \quad n_2 = \frac{100 + \sqrt{50\,000}}{2} = \frac{100 + 100\sqrt{5}}{2} = 50 + 50\sqrt{5} \approx 161,8
\]
Comme $n$ est positif et le trinôme est strictement positif à l'extérieur des racines (car $a=1>0$), on doit avoir :
\[
n > 50 + 50\sqrt{5} \approx 161,8
\]
Comme $n$ doit être un entier naturel, le plus petit entier satisfaisant cette condition est :
\[
n = 162
\]
