### Problème 1 : Autour de l'équation $2\cos x + 1 = 0$
\begin{enonce}
On considère l'équation $2\cos x + 1 = 0$.
\begin{enumerate}
    \item Résoudre cette équation dans $\mathbb{R}$.
    \item En déduire les solutions appartenant à $[0, 2\pi[$.
    \item Résoudre l'inéquation $2\cos x + 1 \ge 0$ dans $[-\pi, \pi]$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item L'équation équivaut à $\cos x = -\dfrac{1}{2}$. Comme $\cos \dfrac{2\pi}{3} = -\dfrac{1}{2}$, on prend $\alpha = \dfrac{2\pi}{3}$ :
    $$x = \frac{2\pi}{3} + 2k\pi \quad \text{ou} \quad x = -\frac{2\pi}{3} + 2k\pi, \quad k \in \mathbb{Z}.$$
    \item On sélectionne les solutions dans $[0, 2\pi[$ :
    \begin{itemize}
        \item Famille $\dfrac{2\pi}{3} + 2k\pi$ : pour $k = 0$, $x = \dfrac{2\pi}{3}$.
        \item Famille $-\dfrac{2\pi}{3} + 2k\pi$ : pour $k = 1$, $x = -\dfrac{2\pi}{3} + 2\pi = \dfrac{4\pi}{3}$.
    \end{itemize}
    Les solutions dans $[0, 2\pi[$ sont $\left\{\dfrac{2\pi}{3}, \ \dfrac{4\pi}{3}\right\}$.
    \item L'inéquation équivaut à $\cos x \ge -\dfrac{1}{2}$. Les frontières dans $[-\pi, \pi]$ sont $x = -\dfrac{2\pi}{3}$ et $x = \dfrac{2\pi}{3}$. Les points dont le cosinus est supérieur à $-\dfrac{1}{2}$ sont à droite de la verticale d'abscisse $-\dfrac{1}{2}$, c'est l'arc des angles compris entre $-\dfrac{2\pi}{3}$ et $\dfrac{2\pi}{3}$ :
    $$\left[-\frac{2\pi}{3}, \ \frac{2\pi}{3}\right].$$
\end{enumerate}

### Problème 2 : Autour de l'équation $2\sin x - \sqrt{3} = 0$
\begin{enonce}
On considère l'équation $2\sin x - \sqrt{3} = 0$.
\begin{enumerate}
    \item Résoudre cette équation dans $\mathbb{R}$.
    \item En déduire les solutions appartenant à $[0, 2\pi[$.
    \item Résoudre l'inéquation $2\sin x - \sqrt{3} \le 0$ dans $[0, 2\pi]$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item L'équation équivaut à $\sin x = \dfrac{\sqrt{3}}{2}$. Comme $\sin \dfrac{\pi}{3} = \dfrac{\sqrt{3}}{2}$, on prend $\alpha = \dfrac{\pi}{3}$ :
    $$x = \frac{\pi}{3} + 2k\pi \quad \text{ou} \quad x = \pi - \frac{\pi}{3} + 2k\pi = \frac{2\pi}{3} + 2k\pi, \quad k \in \mathbb{Z}.$$
    \item Dans $[0, 2\pi[$, on retient $k = 0$ pour chaque famille, d'où les solutions $\left\{\dfrac{\pi}{3}, \ \dfrac{2\pi}{3}\right\}$.
    \item L'inéquation équivaut à $\sin x \le \dfrac{\sqrt{3}}{2}$. Les frontières dans $[0, 2\pi]$ sont $x = \dfrac{\pi}{3}$ et $x = \dfrac{2\pi}{3}$. Les points dont l'ordonnée est inférieure à $\dfrac{\sqrt{3}}{2}$ sont au-dessous de l'horizontale d'ordonnée $\dfrac{\sqrt{3}}{2}$ : on garde les deux arcs situés de part et d'autre de l'arc $\left[\dfrac{\pi}{3}, \dfrac{2\pi}{3}\right]$ :
    $$\left[0, \ \frac{\pi}{3}\right] \cup \left[\frac{2\pi}{3}, \ 2\pi\right].$$
\end{enumerate}

### Problème 3 : Tangente et équation produit
\begin{enonce}
\begin{enumerate}
    \item Résoudre dans $\mathbb{R}$ l'équation $\tan x = -\sqrt{3}$ (on précisera la condition d'existence).
    \item En déduire les solutions appartenant à $[0, 2\pi[$.
    \item Résoudre dans $[0, 2\pi[$ l'équation $(2\sin x - 1)(\tan x + \sqrt{3}) = 0$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item On travaille sous la condition d'existence $x \neq \dfrac{\pi}{2} + k\pi$. Comme $\tan\left(-\dfrac{\pi}{3}\right) = -\sqrt{3}$, on prend $\alpha = -\dfrac{\pi}{3}$ :
    $$x = -\frac{\pi}{3} + k\pi, \quad k \in \mathbb{Z}.$$
    \item On sélectionne les valeurs dans $[0, 2\pi[$ :
    \begin{itemize}
        \item pour $k = 1$ : $x = -\dfrac{\pi}{3} + \pi = \dfrac{2\pi}{3}$ ;
        \item pour $k = 2$ : $x = -\dfrac{\pi}{3} + 2\pi = \dfrac{5\pi}{3}$.
    \end{itemize}
    Les solutions dans $[0, 2\pi[$ sont $\left\{\dfrac{2\pi}{3}, \ \dfrac{5\pi}{3}\right\}$.
    \item Un produit est nul si et seulement si l'un de ses facteurs est nul.
    \begin{itemize}
        \item $2\sin x - 1 = 0 \iff \sin x = \dfrac{1}{2}$ : dans $[0, 2\pi[$, $x = \dfrac{\pi}{6}$ ou $x = \dfrac{5\pi}{6}$.
        \item $\tan x + \sqrt{3} = 0 \iff \tan x = -\sqrt{3}$ : d'après la question 2, $x = \dfrac{2\pi}{3}$ ou $x = \dfrac{5\pi}{3}$ (ces valeurs vérifient bien la condition d'existence).
    \end{itemize}
    L'ensemble des solutions dans $[0, 2\pi[$ est :
    $$\left\{\frac{\pi}{6}, \ \frac{2\pi}{3}, \ \frac{5\pi}{6}, \ \frac{5\pi}{3}\right\}.$$
\end{enumerate}
