### Exercice 1 : Conversions degré–radian
\begin{enonce}
\begin{enumerate}
    \item Convertir en radians les mesures suivantes : $135°$, $210°$, $300°$ et $18°$.
    \item Convertir en degrés les mesures suivantes : $\dfrac{5\pi}{6}$, $\dfrac{7\pi}{4}$ et $\dfrac{2\pi}{9}$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
On utilise la proportionnalité $\dfrac{x}{\pi} = \dfrac{\alpha}{180}$ : pour passer des degrés aux radians on multiplie par $\dfrac{\pi}{180}$, et inversement par $\dfrac{180}{\pi}$.
\begin{enumerate}
    \item Des degrés vers les radians :
    - $135° = 135 \times \dfrac{\pi}{180} = \dfrac{3\pi}{4}$ ;
    - $210° = 210 \times \dfrac{\pi}{180} = \dfrac{7\pi}{6}$ ;
    - $300° = 300 \times \dfrac{\pi}{180} = \dfrac{5\pi}{3}$ ;
    - $18° = 18 \times \dfrac{\pi}{180} = \dfrac{\pi}{10}$.
    \item Des radians vers les degrés :
    - $\dfrac{5\pi}{6} = \dfrac{5}{6} \times 180° = 150°$ ;
    - $\dfrac{7\pi}{4} = \dfrac{7}{4} \times 180° = 315°$ ;
    - $\dfrac{2\pi}{9} = \dfrac{2}{9} \times 180° = 40°$.
\end{enumerate}

### Exercice 2 : Valeurs remarquables
\begin{enonce}
Calculer, sans calculatrice, les expressions suivantes :
$$A = \cos^2\frac{\pi}{6} + \sin^2\frac{\pi}{3}, \qquad B = \tan\frac{\pi}{4} + 2\sin\frac{\pi}{6} - \cos 0, \qquad C = \cos\frac{\pi}{3}\,\tan\frac{\pi}{3}.$$
\end{enonce}

\textbf{Solution :}
On lit les valeurs usuelles dans le tableau.
- $A = \left(\dfrac{\sqrt{3}}{2}\right)^2 + \left(\dfrac{\sqrt{3}}{2}\right)^2 = \dfrac{3}{4} + \dfrac{3}{4} = \dfrac{3}{2}$.
- $B = 1 + 2 \times \dfrac{1}{2} - 1 = 1 + 1 - 1 = 1$.
- $C = \dfrac{1}{2} \times \sqrt{3} = \dfrac{\sqrt{3}}{2}$. On remarque que ce résultat vaut $\sin\dfrac{\pi}{3}$, ce qui est normal puisque $\cos x \, \tan x = \cos x \times \dfrac{\sin x}{\cos x} = \sin x$.

### Exercice 3 : Signe selon le quadrant
\begin{enonce}
\begin{enumerate}
    \item Pour chacun des réels suivants, préciser le quadrant et le signe de $\cos x$, $\sin x$ et $\tan x$ :
    $$x = \frac{2\pi}{3}, \qquad x = \frac{7\pi}{6}, \qquad x = \frac{5\pi}{3}.$$
    \item Un réel $x$ de $]0 ; 2\pi[$ vérifie $\cos x < 0$ et $\sin x < 0$. Dans quel quadrant se situe son point image ? Que peut-on dire du signe de $\tan x$ ?
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item On situe chaque angle entre les bornes $0$, $\dfrac{\pi}{2}$, $\pi$, $\dfrac{3\pi}{2}$, $2\pi$.
    - $\dfrac{2\pi}{3}$ est compris entre $\dfrac{\pi}{2}$ et $\pi$ : $2^{\text{e}}$ quadrant, donc $\cos x < 0$, $\sin x > 0$ et $\tan x < 0$.
    - $\dfrac{7\pi}{6}$ est compris entre $\pi$ et $\dfrac{3\pi}{2}$ : $3^{\text{e}}$ quadrant, donc $\cos x < 0$, $\sin x < 0$ et $\tan x > 0$.
    - $\dfrac{5\pi}{3}$ est compris entre $\dfrac{3\pi}{2}$ et $2\pi$ : $4^{\text{e}}$ quadrant, donc $\cos x > 0$, $\sin x < 0$ et $\tan x < 0$.
    \item Cosinus et sinus tous deux négatifs : le point image est dans le $3^{\text{e}}$ quadrant ($\pi < x < \dfrac{3\pi}{2}$). La tangente, quotient de deux nombres négatifs, est alors positive : $\tan x > 0$.
\end{enumerate}

### Exercice 4 : Calcul d'une ligne à partir d'une autre
\begin{enonce}
\begin{enumerate}
    \item Soit $x$ tel que $\sin x = \dfrac{3}{5}$ et $\dfrac{\pi}{2} < x < \pi$. Calculer $\cos x$ puis $\tan x$.
    \item Soit $x$ tel que $\cos x = -\dfrac{1}{3}$ et $\pi < x < \dfrac{3\pi}{2}$. Calculer $\sin x$ puis $\tan x$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
On utilise la relation fondamentale $\cos^2 x + \sin^2 x = 1$ et le quadrant pour choisir le signe.
\begin{enumerate}
    \item $\cos^2 x = 1 - \sin^2 x = 1 - \dfrac{9}{25} = \dfrac{16}{25}$. Comme $x$ est dans le $2^{\text{e}}$ quadrant, $\cos x < 0$, donc $\cos x = -\dfrac{4}{5}$. Alors $\tan x = \dfrac{\sin x}{\cos x} = \dfrac{3/5}{-4/5} = -\dfrac{3}{4}$.
    \item $\sin^2 x = 1 - \cos^2 x = 1 - \dfrac{1}{9} = \dfrac{8}{9}$. Comme $x$ est dans le $3^{\text{e}}$ quadrant, $\sin x < 0$, donc $\sin x = -\dfrac{\sqrt{8}}{3} = -\dfrac{2\sqrt{2}}{3}$. Alors $\tan x = \dfrac{\sin x}{\cos x} = \dfrac{-2\sqrt{2}/3}{-1/3} = 2\sqrt{2}$.
\end{enumerate}

### Exercice 5 : Angles associés
\begin{enonce}
À l'aide des angles associés, calculer les valeurs exactes de :
$$\cos\frac{5\pi}{4}, \quad \sin\frac{5\pi}{4}, \quad \cos\frac{7\pi}{6}, \quad \sin\frac{7\pi}{6}, \quad \cos\!\left(-\frac{\pi}{3}\right), \quad \sin\frac{11\pi}{6}.$$
\end{enonce}

\textbf{Solution :}
On ramène chaque angle à une valeur remarquable de $\left]0 ; \dfrac{\pi}{2}\right[$.
- $\dfrac{5\pi}{4} = \pi + \dfrac{\pi}{4}$, donc $\cos\dfrac{5\pi}{4} = -\cos\dfrac{\pi}{4} = -\dfrac{\sqrt{2}}{2}$ et $\sin\dfrac{5\pi}{4} = -\sin\dfrac{\pi}{4} = -\dfrac{\sqrt{2}}{2}$.
- $\dfrac{7\pi}{6} = \pi + \dfrac{\pi}{6}$, donc $\cos\dfrac{7\pi}{6} = -\cos\dfrac{\pi}{6} = -\dfrac{\sqrt{3}}{2}$ et $\sin\dfrac{7\pi}{6} = -\sin\dfrac{\pi}{6} = -\dfrac{1}{2}$.
- $\cos\!\left(-\dfrac{\pi}{3}\right) = \cos\dfrac{\pi}{3} = \dfrac{1}{2}$ (le cosinus est conservé par l'opposé).
- $\dfrac{11\pi}{6} = 2\pi - \dfrac{\pi}{6}$, donc $\sin\dfrac{11\pi}{6} = \sin\!\left(-\dfrac{\pi}{6}\right) = -\sin\dfrac{\pi}{6} = -\dfrac{1}{2}$.

### Exercice 6 : Simplification d'expressions
\begin{enonce}
Simplifier, pour tout réel $x$, les expressions suivantes :
$$P(x) = \cos(\pi - x) + \cos(\pi + x) + \cos(-x),$$
$$Q(x) = \sin\!\left(\frac{\pi}{2} - x\right) + \sin\!\left(\frac{\pi}{2} + x\right),$$
$$R(x) = \cos(\pi - x) + \sin\!\left(\frac{\pi}{2} - x\right).$$
\end{enonce}

\textbf{Solution :}
On remplace chaque terme par sa formule d'angle associé.
- $\cos(\pi - x) = -\cos x$, $\cos(\pi + x) = -\cos x$ et $\cos(-x) = \cos x$, donc
$$P(x) = -\cos x - \cos x + \cos x = -\cos x.$$
- $\sin\!\left(\dfrac{\pi}{2} - x\right) = \cos x$ et $\sin\!\left(\dfrac{\pi}{2} + x\right) = \cos x$, donc
$$Q(x) = \cos x + \cos x = 2\cos x.$$
- $\cos(\pi - x) = -\cos x$ et $\sin\!\left(\dfrac{\pi}{2} - x\right) = \cos x$, donc
$$R(x) = -\cos x + \cos x = 0.$$
L'expression $R(x)$ est donc nulle pour tout réel $x$.
