### Problème 1 : Calcul d'aire délimitée par deux courbes
\begin{enonce}
On considère la fonction $f$ définie sur $[0, 1]$ par $f(x) = x^2$ et la fonction $g$ définie sur $[0, 1]$ par $g(x) = \sqrt{x}$. On note $\mathcal{C}_f$ et $\mathcal{C}_g$ leurs courbes représentatives.
\begin{enumerate}
    \item Démontrer que pour tout $x \in [0, 1]$, $g(x) \ge f(x)$.
    \item Calculer l'aire $\mathcal{A}$ de la région délimitée par les deux courbes $\mathcal{C}_f$ et $\mathcal{C}_g$ et les droites verticales d'équations $x=0$ et $x=1$ (exprimer le résultat en unités d'aire).
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Pour comparer $f(x)$ et $g(x)$ sur $[0, 1]$, calculons la différence :
    \[
    g(x) - f(x) = \sqrt{x} - x^2 = \sqrt{x}(1 - x\sqrt{x}) = \sqrt{x}(1 - x^{3/2})
    \]
    Pour tout $x \in [0, 1]$, on a $0 \le x \le 1 \implies 0 \le x^{3/2} \le 1 \implies 1 - x^{3/2} \ge 0$.
    Le produit est donc positif ou nul sur $[0, 1]$, ce qui montre que $g(x) \ge f(x)$.
    
    \item L'aire $\mathcal{A}$ de la région délimitée par les courbes est l'intégrale de la différence :
    \[
    \mathcal{A} = \int_0^1 (g(x) - f(x)) \dd x = \int_0^1 \left( \sqrt{x} - x^2 \right) \dd x
    \]
    Déterminons une primitive de $x \mapsto x^{1/2} - x^2$ :
    \[
    F(x) = \frac{x^{3/2}}{3/2} - \frac{x^3}{3} = \frac{2}{3}x\sqrt{x} - \frac{x^3}{3}
    \]
    Calculons l'intégrale :
    \[
    \mathcal{A} = \Big[ F(x) \Big]_0^1 = F(1) - F(0) = \left( \frac{2}{3}(1)(1) - \frac{1}{3} \right) - 0 = \frac{2}{3} - \frac{1}{3} = \frac{1}{3} \text{ u.a.}
    \]
    L'aire de la région en forme de fuseau fermée par les deux paraboles est égale à $1/3$ d'unité d'aire.
\end{enumerate}

### Problème 2 : Étude d'une fonction définie par une intégrale
\begin{enonce}
Soit la fonction $F$ définie sur $\R$ par :
\[
F(x) = \int_0^x e^{-t^2} \dd t
\]
\begin{enumerate}
    \item Justifier que la fonction $F$ est dérivable sur $\R$ et donner sa dérivée $F'(x)$.
    \item En déduire le sens de variation de $F$ sur $\R$.
    \item Démontrer que pour tout $t \ge 1$, $t^2 \ge t$, puis en déduire que $e^{-t^2} \le e^{-t}$.
    \item Montrer que pour tout $x \ge 1$ :
    \[
    F(x) \le F(1) + \frac{1}{e} - e^{-x}
    \]
    En déduire que la fonction $F$ est majorée sur $[0, +\infty[$. Que peut-on en déduire pour sa limite en $+\infty$ ?
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item La fonction $t \mapsto e^{-t^2}$ est continue sur $\R$.
    D'après le théorème fondamental de l'analyse, la fonction $F$ qui à tout $x \in \R$ associe l'intégrale de $0$ à $x$ de la fonction continue est l'unique primitive de cette fonction qui s'annule en 0.
    $F$ est donc dérivable sur $\R$ et pour tout $x \in \R$ :
    \[
    F'(x) = e^{-x^2}
    \]
    
    \item Puisque pour tout réel $x$, la fonction exponentielle est strictement positive, on a $F'(x) = e^{-x^2} > 0$.
    La fonction $F$ est donc **strictement croissante** sur $\R$.
    
    \item Pour tout $t \ge 1$ : en multipliant par $t$ (qui est positif) : $t \times t \ge 1 \times t \implies t^2 \ge t$.
    La fonction exponentielle étant strictement croissante :
    \[
    t^2 \ge t \implies -t^2 \le -t \implies e^{-t^2} \le e^{-t}
    \]
    
    \item Soit $x \ge 1$. En utilisant la relation de Chasles pour l'intégrale :
    \[
    F(x) = \int_0^1 e^{-t^2} \dd t + \int_1^x e^{-t^2} \dd t = F(1) + \int_1^x e^{-t^2} \dd t
    \]
    D'après la question précédente, pour $t \ge 1$, $e^{-t^2} \le e^{-t}$. Par conservation de l'ordre de l'intégrale (avec $1 \le x$) :
    \[
    \int_1^x e^{-t^2} \dd t \le \int_1^x e^{-t} \dd t
    \]
    Calculons cette dernière intégrale :
    \[
    \int_1^x e^{-t} \dd t = \Big[ -e^{-t} \Big]_1^x = -e^{-x} - (-e^{-1}) = \frac{1}{e} - e^{-x}
    \]
    On en déduit que pour tout $x \ge 1$ :
    \[
    F(x) \le F(1) + \frac{1}{e} - e^{-x}
    \]
    De plus, pour tout $x \ge 1$, $e^{-x} > 0 \implies -e^{-x} < 0$, ce qui montre que :
    \[
    F(x) < F(1) + \frac{1}{e}
    \]
    La fonction $F$ est donc majorée sur $[1, +\infty[$ par la valeur constante $M = F(1) + \frac{1}{e}$. Comme elle est continue sur $[0,1]$, elle est bornée sur $[0, +\infty[$.
    Puisque $F$ est croissante et majorée sur $[0, +\infty[$, d'après le théorème de convergence monotone, la fonction $F$ admet une limite finie lorsque $x \to +\infty$.
\end{enumerate}

### Problème 3 : Une suite d'intégrales par parties
\begin{enonce}
On considère la suite $(I_n)$ définie pour tout entier naturel $n$ par :
\[
I_n = \int_0^1 (1 - x^2)^n \dd x
\]
\begin{enumerate}
    \item Calculer la valeur de $I_0$ et $I_1$.
    \item Démontrer que la suite $(I_n)$ est décroissante.
    \item À l'aide d'une intégration par parties sur $I_n$ écrite sous la forme $\int_0^1 1 \times (1-x^2)^n \dd x$, démontrer que pour tout $n \ge 1$ :
    \[
    I_n = 2n \int_0^1 x^2 (1 - x^2)^{n-1} \dd x
    \]
    \item En écrivant $x^2 = 1 - (1 - x^2)$, montrer que pour tout $n \ge 1$ :
    \[
    I_n = \frac{2n}{2n + 1} I_{n-1}
    \]
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item - Pour $n = 0$ : $I_0 = \int_0^1 (1-x^2)^0 \dd x = \int_0^1 1 \dd x = [x]_0^1 = 1$.
      - Pour $n = 1$ : $I_1 = \int_0^1 (1-x^2) \dd x = \left[ x - \frac{x^3}{3} \right]_0^1 = 1 - \frac{1}{3} = \frac{2}{3}$.
      
    \item Pour tout $x \in [0, 1]$, $0 \le x^2 \le 1 \implies 0 \le 1-x^2 \le 1$.
      En multipliant par $(1-x^2)^n \ge 0$, on a : $(1-x^2)^{n+1} \le (1-x^2)^n$.
      Par conservation de l'ordre de l'intégrale :
      \[
      \int_0^1 (1-x^2)^{n+1} \dd x \le \int_0^1 (1-x^2)^n \dd x \implies I_{n+1} \le I_n
      \]
      La suite $(I_n)$ est donc décroissante.
      
    \item Appliquons une intégration par parties pour $I_n = \int_0^1 1 \times (1-x^2)^n \dd x$.
      Posons :
      \[
      \begin{cases}
      v(x) = (1-x^2)^n & \implies v'(x) = n(1-x^2)^{n-1}(-2x) = -2nx(1-x^2)^{n-1} \\
      u'(x) = 1 & \implies u(x) = x
      \end{cases}
      \]
      Les fonctions $u$ et $v$ sont bien dérivables à dérivées continues sur $[0, 1]$.
      \[
      I_n = \Big[ x(1-x^2)^n \Big]_0^1 - \int_0^1 x \left( -2nx(1-x^2)^{n-1} \right) \dd x
      \]
      Le crochet vaut $1(1-1^2)^n - 0 = 0$. On obtient :
      \[
      I_n = 2n \int_0^1 x^2 (1 - x^2)^{n-1} \dd x
      \]
      
    \item Transformons l'intégrale obtenue en écrivant $x^2 = 1 - (1-x^2)$ :
      \[
      \int_0^1 x^2 (1 - x^2)^{n-1} \dd x = \int_0^1 (1 - (1-x^2)) (1-x^2)^{n-1} \dd x = \int_0^1 (1-x^2)^{n-1} \dd x - \int_0^1 (1-x^2)^n \dd x
      \]
      Ce qui donne :
      \[
      \int_0^1 x^2 (1 - x^2)^{n-1} \dd x = I_{n-1} - I_n
      \]
      En remplaçant dans la relation de la question 3 :
      \[
      I_n = 2n(I_{n-1} - I_n) \iff I_n = 2n I_{n-1} - 2n I_n \iff I_n(1 + 2n) = 2n I_{n-1} \iff I_n = \frac{2n}{2n+1} I_{n-1}
      \]
\end{enumerate}

### Problème 4 : Double intégration par parties
\begin{enonce}
Calculer la valeur exacte de l'intégrale suivante :
\[
I = \int_0^{\pi} x^2 \sin(x) \dd x
\]
\end{enonce}

\textbf{Solution :}
Appliquons une première intégration par parties. Posons :
\[
\begin{cases}
v(x) = x^2 & \implies v'(x) = 2x \\
u'(x) = \sin(x) & \implies u(x) = -\cos(x)
\end{cases}
\]
Les fonctions $u$ et $v$ sont dérivables à dérivées continues sur $[0, \pi]$.
\[
I = \Big[ -x^2 \cos(x) \Big]_0^{\pi} - \int_0^{\pi} 2x (-\cos(x)) \dd x = \left( -\pi^2 \cos(\pi) - 0 \right) + 2 \int_0^{\pi} x \cos(x) \dd x
\]
Comme $\cos(\pi) = -1$, on a $\Big[ -x^2 \cos(x) \Big]_0^{\pi} = \pi^2$.
On obtient :
\[
I = \pi^2 + 2 J \quad \text{où} \quad J = \int_0^{\pi} x \cos(x) \dd x
\]
Calculons l'intégrale $J$ à l'aide d'une deuxième intégration par parties. Posons :
\[
\begin{cases}
v(x) = x & \implies v'(x) = 1 \\
u'(x) = \cos(x) & \implies u(x) = \sin(x)
\end{cases}
\]
Les fonctions sont dérivables et continues sur $[0, \pi]$.
\[
J = \Big[ x \sin(x) \Big]_0^{\pi} - \int_0^{\pi} 1 \cdot \sin(x) \dd x
\]
Le crochet vaut $\pi \sin(\pi) - 0 = 0$ car $\sin(\pi) = 0$.
Il reste :
\[
J = -\int_0^{\pi} \sin(x) \dd x = \Big[ \cos(x) \Big]_0^{\pi} = \cos(\pi) - \cos(0) = -1 - 1 = -2
\]
En remplaçant la valeur de $J$ dans la première équation :
\[
I = \pi^2 + 2(-2) = \pi^2 - 4
\]
La valeur exacte de l'intégrale est $\pi^2 - 4 \approx 5,87$.

### Problème 5 : Calcul de température moyenne journalière
\begin{enonce}
Dans une région, la température extérieure (en $^\circ$C) au cours d'une journée de 24 heures (de $t=0$ à $t=24$) est modélisée par la fonction :
\[
T(t) = 15 - 6 \cos\left( \frac{\pi(t - 4)}{12} \right)
\]
\begin{enumerate}
    \item Quelle est la température minimale sur la journée et à quelle heure est-elle atteinte ?
    \item Quelle est la température maximale sur la journée et à quelle heure est-elle atteinte ?
    \item Calculer la température moyenne journalière $\mu$ sur la période de 24 heures.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item La fonction cosinus varie entre $-1$ et $1$.
    La température est minimale lorsque le cosinus est maximal, c'est-à-dire quand $\cos\left( \frac{\pi(t - 4)}{12} \right) = 1$.
    La température minimale est alors $T_{\min} = 15 - 6(1) = 9^\circ$C.
    Cette valeur est atteinte quand :
    \[
    \frac{\pi(t - 4)}{12} = 0 \text{ (ou } 2\pi) \implies t - 4 = 0 \implies t = 4 \text{ heures}
    \]
    La température minimale de $9^\circ$C est atteinte à 4 heures du matin.
    
    \item La température est maximale lorsque le cosinus est minimal, c'est-à-dire quand $\cos\left( \frac{\pi(t - 4)}{12} \right) = -1$.
    La température maximale est alors $T_{\max} = 15 - 6(-1) = 21^\circ$C.
    Cette valeur est atteinte quand :
    \[
    \frac{\pi(t - 4)}{12} = \pi \implies t - 4 = 12 \implies t = 16 \text{ heures}
    \]
    La température maximale de $21^\circ$C est atteinte à 16 heures (4 heures de l'après-midi).
    
    \item La température moyenne journalière est la valeur moyenne de la fonction $T$ sur $[0, 24]$ :
    \[
    \mu = \frac{1}{24-0} \int_0^{24} T(t) \dd t = \frac{1}{24} \int_0^{24} \left[ 15 - 6 \cos\left( \frac{\pi(t - 4)}{12} \right) \right] \dd t
    \]
    Déterminons une primitive de la fonction $T$.
    Une primitive de $\cos(at+b)$ est $\frac{1}{a} \sin(at+b)$. Ici $a = \frac{\pi}{12}$, donc $\frac{1}{a} = \frac{12}{\pi}$.
    Une primitive de $T$ est :
    \[
    F(t) = 15t - 6 \times \frac{12}{\pi} \sin\left( \frac{\pi(t - 4)}{12} \right) = 15t - \frac{72}{\pi} \sin\left( \frac{\pi(t - 4)}{12} \right)
    \]
    Calculons l'intégrale :
    \[
    \int_0^{24} T(t) \dd t = F(24) - F(0)
    \]
    - $F(24) = 15(24) - \frac{72}{\pi} \sin\left( \frac{20\pi}{12} \right) = 360 - \frac{72}{\pi} \sin\left( \frac{5\pi}{3} \right) = 360 - \frac{72}{\pi} \left( -\frac{\sqrt{3}}{2} \right) = 360 + \frac{36\sqrt{3}}{\pi}$.
    - $F(0) = 15(0) - \frac{72}{\pi} \sin\left( -\frac{4\pi}{12} \right) = -\frac{72}{\pi} \sin\left( -\frac{\pi}{3} \right) = -\frac{72}{\pi} \left( -\frac{\sqrt{3}}{2} \right) = \frac{36\sqrt{3}}{\pi}$.
    La différence vaut :
    \[
    F(24) - F(0) = \left( 360 + \frac{36\sqrt{3}}{\pi} \right) - \frac{36\sqrt{3}}{\pi} = 360
    \]
    On obtient la valeur moyenne :
    \[
    \mu = \frac{1}{24} \times 360 = 15^\circ\text{C}
    \]
    La température moyenne sur la journée est de $15^\circ$C.
\end{enumerate}
