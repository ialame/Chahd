### Problème 1 : Étude complète d'un angle
\begin{enonce}
Soit $x$ un réel tel que $\cos x = \dfrac{5}{13}$ et $x \in \left]0, \dfrac{\pi}{2}\right[$.
\begin{enumerate}
    \item Calculer $\sin x$, puis $\tan x$.
    \item À l'aide des formules de duplication, calculer $\cos(2x)$ et $\sin(2x)$.
    \item Simplifier l'expression $E = \cos(\pi - x) + \sin\!\left(\dfrac{\pi}{2} + x\right) + \cos(-x)$, puis donner sa valeur numérique.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Comme $x \in \left]0, \dfrac{\pi}{2}\right[$, on a $\sin x > 0$. L'identité fondamentale donne :
$$\sin^2 x = 1 - \cos^2 x = 1 - \frac{25}{169} = \frac{144}{169} \quad\Longrightarrow\quad \sin x = \frac{12}{13}.$$
On en déduit $\tan x = \dfrac{\sin x}{\cos x} = \dfrac{12/13}{5/13} = \dfrac{12}{5}$.
    \item Avec les formules de duplication :
$$\cos(2x) = 2\cos^2 x - 1 = 2\cdot\frac{25}{169} - 1 = \frac{50}{169} - \frac{169}{169} = -\frac{119}{169},$$
$$\sin(2x) = 2\sin x \cos x = 2\cdot\frac{12}{13}\cdot\frac{5}{13} = \frac{120}{169}.$$
    \item On utilise les angles associés : $\cos(\pi - x) = -\cos x$, $\sin\!\left(\dfrac{\pi}{2} + x\right) = \cos x$ et $\cos(-x) = \cos x$, donc :
$$E = -\cos x + \cos x + \cos x = \cos x = \frac{5}{13}.$$
\end{enumerate}

### Problème 2 : Une identité et ses applications
\begin{enonce}
\begin{enumerate}
    \item Montrer que pour tous réels $a$ et $b$ :
$$\cos(a + b)\cos(a - b) = \cos^2 a - \sin^2 b.$$
    \item En déduire la valeur exacte du produit $\cos\!\left(\dfrac{5\pi}{12}\right)\cos\!\left(\dfrac{\pi}{12}\right)$.
    \item À l'aide d'une formule de linéarisation, calculer la valeur exacte de $\cos^2\!\left(\dfrac{\pi}{8}\right)$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item On développe le produit à l'aide des formules d'addition :
$$\cos(a + b)\cos(a - b) = (\cos a \cos b - \sin a \sin b)(\cos a \cos b + \sin a \sin b) = \cos^2 a \cos^2 b - \sin^2 a \sin^2 b.$$
En remplaçant $\sin^2 a = 1 - \cos^2 a$ :
$$= \cos^2 a \cos^2 b - (1 - \cos^2 a)\sin^2 b = \cos^2 a (\cos^2 b + \sin^2 b) - \sin^2 b = \cos^2 a - \sin^2 b.$$
    \item On cherche $a$ et $b$ tels que $a + b = \dfrac{5\pi}{12}$ et $a - b = \dfrac{\pi}{12}$, c'est-à-dire $a = \dfrac{\pi}{4}$ et $b = \dfrac{\pi}{6}$. D'après la question 1 :
$$\cos\!\left(\frac{5\pi}{12}\right)\cos\!\left(\frac{\pi}{12}\right) = \cos^2\frac{\pi}{4} - \sin^2\frac{\pi}{6} = \left(\frac{\sqrt{2}}{2}\right)^2 - \left(\frac{1}{2}\right)^2 = \frac{1}{2} - \frac{1}{4} = \frac{1}{4}.$$
    \item La formule de linéarisation donne $\cos^2 \theta = \dfrac{1 + \cos(2\theta)}{2}$. Avec $\theta = \dfrac{\pi}{8}$, donc $2\theta = \dfrac{\pi}{4}$ :
$$\cos^2\!\left(\frac{\pi}{8}\right) = \frac{1 + \cos\frac{\pi}{4}}{2} = \frac{1 + \frac{\sqrt{2}}{2}}{2} = \frac{2 + \sqrt{2}}{4}.$$
\end{enumerate}

### Problème 3 : Résolution d'équations
\begin{enonce}
Résoudre dans l'intervalle $[0, 2\pi[$ les équations suivantes :
\begin{enumerate}
    \item $2\cos^2 x - 1 = 0$.
    \item $2\cos^2 x + \cos x - 1 = 0$.
\end{enumerate}
Résoudre enfin dans $\mathbb{R}$ l'équation :
\begin{enumerate}
    \setcounter{enumi}{2}
    \item $\sin(2x) = \sin x$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item On reconnaît $2\cos^2 x - 1 = \cos(2x)$. L'équation devient $\cos(2x) = 0$, soit :
$$2x = \frac{\pi}{2} + k\pi \quad\Longrightarrow\quad x = \frac{\pi}{4} + \frac{k\pi}{2}, \quad k \in \mathbb{Z}.$$
Dans $[0, 2\pi[$, on obtient quatre solutions : $\dfrac{\pi}{4}$, $\dfrac{3\pi}{4}$, $\dfrac{5\pi}{4}$ et $\dfrac{7\pi}{4}$.
    \item On pose $X = \cos x$. L'équation devient $2X^2 + X - 1 = 0$, de discriminant $\Delta = 1 + 8 = 9$, d'où :
$$X = \frac{-1 + 3}{4} = \frac{1}{2} \quad \text{ou} \quad X = \frac{-1 - 3}{4} = -1.$$
\quad $\bullet$ $\cos x = \dfrac{1}{2}$ donne, dans $[0, 2\pi[$, $x = \dfrac{\pi}{3}$ et $x = \dfrac{5\pi}{3}$ ;
\quad $\bullet$ $\cos x = -1$ donne, dans $[0, 2\pi[$, $x = \pi$.
Les solutions sont donc $\dfrac{\pi}{3}$, $\pi$ et $\dfrac{5\pi}{3}$.
    \item On utilise $\sin(2x) = 2\sin x \cos x$ et on factorise :
$$2\sin x \cos x - \sin x = 0 \quad\Longleftrightarrow\quad \sin x\,(2\cos x - 1) = 0.$$
Cela donne $\sin x = 0$ ou $\cos x = \dfrac{1}{2}$ :
$$\sin x = 0 \;\Longrightarrow\; x = k\pi, \qquad \cos x = \frac{1}{2} \;\Longrightarrow\; x = \frac{\pi}{3} + 2k\pi \ \text{ ou } \ x = -\frac{\pi}{3} + 2k\pi, \quad k \in \mathbb{Z}.$$
\end{enumerate}
