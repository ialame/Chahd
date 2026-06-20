### Problème 1 : Étude complète et résolution approchée par dichotomie
\begin{enonce}
Soit la fonction $f$ définie sur $\R$ par :
\[
f(x) = x^3 - 3x - 1
\]
\begin{enumerate}
    \item Dresser le tableau de variations complet de $f$ sur $\R$.
    \item Montrer que l'équation $f(x) = 0$ admet exactement trois solutions réelles $\alpha, \beta, \gamma$ que l'on localisera dans des intervalles de longueur 1.
    \item On s'intéresse à la solution positive $\gamma$. Démontrer que $\gamma \in [1, 2]$.
    \item Simuler les trois premières étapes de l'algorithme de dichotomie sur l'intervalle $[1, 2]$ pour déterminer un encadrement plus précis de $\gamma$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item La fonction $f$ est polynomiale, donc dérivable sur $\R$. Sa dérivée est :
    \[
    f'(x) = 3x^2 - 3 = 3(x^2 - 1) = 3(x-1)(x+1)
    \]
    Le signe de $f'(x)$ est positif à l'extérieur des racines $-1$ et $1$, et négatif entre elles.
    - Limites : $\lim_{x \to -\infty} f(x) = \lim_{x \to -\infty} x^3 = -\infty$ et $\lim_{x \to +\infty} f(x) = +\infty$.
    - Extremums : $f(-1) = (-1)^3 - 3(-1) - 1 = -1 + 3 - 1 = 1$ et $f(1) = 1^3 - 3(1) - 1 = -3$.
    Ainsi, $f$ est strictement croissante sur $]-\infty, -1]$, strictement décroissante sur $[-1, 1]$, et strictement croissante sur $[1, +\infty[$.
    
    \item Appliquons le corollaire du TVI sur trois intervalles :
    - Sur $]-\infty, -1]$ : $f$ est continue et strictement croissante. L'image de cet intervalle est $]-\infty, 1]$. Comme $0 \in ]-\infty, 1]$, il existe une unique solution $\alpha \in ]-\infty, -1]$. Comme $f(-2) = -8+6-1 = -3 < 0$, on a $\alpha \in [-2, -1]$.
    - Sur $[-1, 1]$ : $f$ est continue et strictement décroissante. $f(-1) = 1 > 0$ et $f(1) = -3 < 0$. Comme 0 est compris entre $-3$ et 1, il existe une unique solution $\beta \in [-1, 1]$. Comme $f(0) = -1 < 0$, on a $\beta \in [-1, 0]$.
    - Sur $[1, +\infty[$ : $f$ est continue et strictement croissante. L'image est $[-3, +\infty[$. Comme $0 \in [-3, +\infty[$, il existe une unique solution $\gamma \in [1, +\infty[$. Comme $f(2) = 8-6-1 = 1 > 0$, on a $\gamma \in [1, 2]$.
    L'équation $f(x)=0$ possède donc exactement trois solutions réelles.
    
    \item D'après la question précédente, $f(1) = -3 < 0$ et $f(2) = 1 > 0$. La fonction étant continue et strictement croissante sur $[1, 2]$, la solution unique $\gamma$ appartient bien à $[1, 2]$.
    
    \item Appliquons l'algorithme de dichotomie sur $[a, b] = [1, 2]$ :
    - \textbf{Étape 1} : Le milieu est $m_1 = \frac{1+2}{2} = 1,5$.
      Calculons $f(1,5) = 1,5^3 - 3(1,5) - 1 = 3,375 - 4,5 - 1 = -2,125 < 0$.
      Comme $f(1,5) < 0$ et $f(2) > 0$, la solution $\gamma$ est dans $[1,5; 2]$.
    - \textbf{Étape 2} : Le nouveau milieu est $m_2 = \frac{1,5+2}{2} = 1,75$.
      Calculons $f(1,75) = 1,75^3 - 3(1,75) - 1 = 5,359 - 5,25 - 1 = -0,891 < 0$.
      Comme $f(1,75) < 0$ et $f(2) > 0$, la solution $\gamma$ est dans $[1,75; 2]$.
    - \textbf{Étape 3} : Le nouveau milieu est $m_3 = \frac{1,75+2}{2} = 1,875$.
      Calculons $f(1,875) = 1,875^3 - 3(1,875) - 1 \approx 6,592 - 5,625 - 1 = -0,033 < 0$.
      Comme $f(1,875) < 0$ et $f(2) > 0$, la solution $\gamma$ est dans $[1,875; 2]$.
    Ainsi, à l'issue de ces 3 étapes, on obtient l'encadrement : $1,875 < \gamma < 2$.
\end{enumerate}

### Problème 2 : Le théorème du point fixe
\begin{enonce}
Soit $f$ une fonction continue d'un intervalle $[0, 1]$ dans lui-même (c'est-à-dire que pour tout $x \in [0, 1]$, $f(x) \in [0, 1]$).
\begin{enumerate}
    \item Soit $g$ la fonction définie sur $[0, 1]$ par $g(x) = f(x) - x$.
    Montrer que $g(0) \ge 0$ et $g(1) \le 0$.
    \item En déduire qu'il existe au moins un réel $c \in [0, 1]$ tel que $f(c) = c$. (Un tel point est appelé un \textbf{point fixe} de $f$).
    \item Application : Démontrer que la fonction $f(x) = \cos(x)$ admet au moins un point fixe sur l'intervalle $[0, \pi/2]$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Par hypothèse, pour tout $x \in [0, 1]$, $f(x) \in [0, 1]$, donc $0 \le f(x) \le 1$.
    - Pour $x = 0$ : $g(0) = f(0) - 0 = f(0)$. Comme $f(0) \ge 0$, on a bien $g(0) \ge 0$.
    - Pour $x = 1$ : $g(1) = f(1) - 1$. Comme $f(1) \le 1$, on a bien $f(1) - 1 \le 0 \implies g(1) \le 0$.
    
    \item La fonction $f$ est continue sur $[0, 1]$, et la fonction $x \mapsto x$ l'est également. Par différence, la fonction $g$ est continue sur $[0, 1]$.
    On a $g(0) \ge 0$ et $g(1) \le 0$. Le nombre 0 est donc compris entre $g(1)$ et $g(0)$.
    D'après le Théorème des Valeurs Intermédiaires (TVI), il existe au moins un réel $c \in [0, 1]$ tel que $g(c) = 0$.
    Or, $g(c) = 0 \iff f(c) - c = 0 \iff f(c) = c$.
    Il existe donc bien un point fixe $c \in [0, 1]$ pour la fonction $f$.
    
    \item Soit la fonction $f(x) = \cos(x)$ sur $[0, \pi/2]$.
    Puisque pour tout $x \in [0, \pi/2]$, $\cos(x) \in [0, 1] \subset [0, \pi/2]$ (car $\pi/2 \approx 1,57 > 1$), $f$ envoie bien $[0, \pi/2]$ dans lui-même.
    La fonction $f$ étant continue sur $[0, \pi/2]$, on peut appliquer le théorème précédent (adapté à l'intervalle $[0, \pi/2]$).
    Il existe donc au moins un réel $c \in [0, \pi/2]$ tel que $\cos(c) = c$.
\end{enumerate}

### Problème 3 : Prolongement par continuité
\begin{enonce}
Soit la fonction $f$ définie sur l'intervalle $]0, +\infty[$ par :
\[
f(x) = \frac{\sqrt{x+1} - 1}{x}
\]
\begin{enumerate}
    \item Montrer que la fonction $f$ n'est pas définie en 0.
    \item Déterminer la limite de $f(x)$ lorsque $x$ tend vers 0 (par valeurs supérieures).
    \item En déduire qu'il est possible de prolonger la fonction $f$ par continuité en 0. Définir ce prolongement $g$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item La valeur $x=0$ annule le dénominateur de $f(x)$. La fonction $f$ n'est donc pas définie en 0.
    
    \item En évaluant directement la limite en 0, on obtient une forme indéterminée « $\frac{0}{0}$ ».
    Levons cette indétermination en utilisant l'expression conjuguée du numérateur :
    \[
    f(x) = \frac{\left(\sqrt{x+1}-1\right)\left(\sqrt{x+1}+1\right)}{x\left(\sqrt{x+1}+1\right)} = \frac{(x+1) - 1}{x\left(\sqrt{x+1}+1\right)} = \frac{x}{x\left(\sqrt{x+1}+1\right)}
    \]
    Pour tout $x > 0$, on peut simplifier par $x$ :
    \[
    f(x) = \frac{1}{\sqrt{x+1} + 1}
    \]
    Calculons la limite :
    \[
    \lim_{x \to 0^+} f(x) = \lim_{x \to 0^+} \frac{1}{\sqrt{x+1} + 1} = \frac{1}{\sqrt{0+1} + 1} = \frac{1}{2}
    \]
    
    \item Puisque la limite de $f$ en 0 existe et est finie (vaut $1/2$), on peut prolonger $f$ par continuité en 0.
    La fonction prolongée $g$ est définie sur $[0, +\infty[$ par :
    \[
    g(x) = 
    \begin{cases}
    \frac{\sqrt{x+1}-1}{x} & \text{si } x > 0 \\
    \frac{1}{2} & \text{si } x = 0
    \end{cases}
    \]
\end{enumerate}

### Problème 4 : Étude d'une fonction avec paramètre réel
\begin{enonce}
Pour tout réel $a$, on considère la fonction $f_a$ définie sur l'intervalle $]1, +\infty[$ par :
\[
f_a(x) = \frac{x^2 + ax}{x-1}
\]
\begin{enumerate}
    \item Déterminer les limites de $f_a$ en $1^+$ et en $+\infty$.
    \item Calculer la dérivée $f_a'(x)$ et montrer que son signe est celui de $x^2 - 2x - a$.
    \item Montrer que si $a > -1$, la fonction $f_a$ admet un unique minimum sur $]1, +\infty[$.
    \item Montrer que la droite d'équation $y = x + a + 1$ est une asymptote oblique à la courbe $\mathcal{C}_{f_a}$ en $+\infty$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item - En $1^+$ : Le dénominateur tend vers $0^+$. Le numérateur tend vers $1+a$.
      Si $a > -1$, $1+a > 0$, donc $\lim_{x \to 1^+} f_a(x) = +\infty$.
      Si $a < -1$, $1+a < 0$, donc $\lim_{x \to 1^+} f_a(x) = -\infty$.
      - En $+\infty$ :
      \[
      \lim_{x \to +\infty} f_a(x) = \lim_{x \to +\infty} \frac{x^2}{x} = \lim_{x \to +\infty} x = +\infty
      \]
      
    \item La fonction $f_a$ est un quotient de fonctions dérivables, elle est donc dérivable sur $]1, +\infty[$.
    \[
    f_a'(x) = \frac{(2x+a)(x-1) - (x^2+ax)(1)}{(x-1)^2} = \frac{2x^2 - 2x + ax - a - x^2 - ax}{(x-1)^2} = \frac{x^2 - 2x - a}{(x-1)^2}
    \]
    Le dénominateur $(x-1)^2$ étant strictement positif sur $]1, +\infty[$, le signe de $f_a'(x)$ est bien celui du trinôme $x^2 - 2x - a$.
    
    \item Le trinôme $x^2 - 2x - a$ a pour discriminant $\Delta = (-2)^2 - 4(1)(-a) = 4 + 4a = 4(1+a)$.
    Si $a > -1$, alors $1+a > 0$, donc $\Delta > 0$. Le trinôme admet deux racines réelles :
    \[
    x_1 = \frac{2 - 2\sqrt{1+a}}{2} = 1 - \sqrt{1+a} \quad \text{et} \quad x_2 = 1 + \sqrt{1+a}
    \]
    Puisque $a > -1 \implies 1+a > 0 \implies \sqrt{1+a} > 0$.
    Ainsi, $x_1 < 1$ et $x_2 > 1$.
    Sur l'intervalle $]1, +\infty[$, la seule racine est $x_2$. Le trinôme $x^2-2x-a$ (avec le coefficient devant $x^2$ positif) est négatif sur $]1, x_2[$ et positif sur $]x_2, +\infty[$.
    La fonction $f_a$ est donc strictement décroissante sur $]1, x_2[$ puis strictement croissante sur $]x_2, +\infty[$.
    Elle admet donc un unique minimum au point d'abscisse $x_2 = 1 + \sqrt{1+a}$.
    
    \item Effectuons la division euclidienne de $x^2+ax$ par $x-1$ :
    \[
    x^2 + ax = x(x-1) + (a+1)x = x(x-1) + (a+1)(x-1) + (a+1) = (x + a + 1)(x-1) + (a+1)
    \]
    Ainsi, pour tout $x > 1$ :
    \[
    f_a(x) = x + a + 1 + \frac{a+1}{x-1}
    \]
    Calculons la limite de la différence $f_a(x) - (x+a+1)$ :
    \[
    \lim_{x \to +\infty} \left[ f_a(x) - (x+a+1) \right] = \lim_{x \to +\infty} \frac{a+1}{x-1} = 0
    \]
    La droite d'équation $y = x + a + 1$ est donc bien une asymptote oblique à la courbe $\mathcal{C}_{f_a}$ en $+\infty$.
\end{enumerate}

### Problème 5 : Limite et continuité sur un intervalle non borné
\begin{enonce}
Soit $f$ une fonction continue sur $[0, +\infty[$ telle que $f(0) < 0$ et $\lim_{x \to +\infty} f(x) = +\infty$.
\begin{enumerate}
    \item Montrer qu'il existe un réel $A > 0$ tel que $f(A) > 0$.
    \item En déduire que l'équation $f(x) = 0$ admet au moins une solution sur $[0, +\infty[$.
    \item Application : Montrer que l'équation $\sqrt{x} + x^2 - 4 = 0$ admet une unique solution sur $[0, +\infty[$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Par hypothèse, $\lim_{x \to +\infty} f(x) = +\infty$.
    Par définition de la limite infinie, pour tout réel $M$, il existe un seuil à partir duquel $f(x) > M$.
    En choisissant $M = 1 > 0$, il existe un réel $A > 0$ tel que $f(A) > 1 > 0$. Donc $f(A) > 0$.
    
    \item Considérons la restriction de la fonction $f$ à l'intervalle fermé borné $[0, A]$.
    - La fonction $f$ est continue sur $[0, A]$ car elle est continue sur $[0, +\infty[$.
    - On a $f(0) < 0$ et $f(A) > 0$. Le nombre 0 est donc compris entre $f(0)$ et $f(A)$.
    D'après le Théorème des Valeurs Intermédiaires (TVI), il existe au moins un réel $c \in [0, A]$ tel que $f(c) = 0$.
    Puisque $[0, A] \subset [0, +\infty[$, l'équation $f(x) = 0$ admet au moins une solution sur $[0, +\infty[$.
    
    \item Soit $h(x) = \sqrt{x} + x^2 - 4$ définie sur $[0, +\infty[$.
    - $h$ est continue sur $[0, +\infty[$ (somme de fonctions continues de référence).
    - $h(0) = 0 + 0 - 4 = -4 < 0$.
    - $\lim_{x \to +\infty} h(x) = \lim_{x \to +\infty} (\sqrt{x} + x^2 - 4) = +\infty$.
    D'après les questions 1 et 2, il existe au moins une solution à $h(x) = 0$ sur $[0, +\infty[$.
    Étudions la monotonie de $h$ pour prouver l'unicité. La fonction $h$ est dérivable sur $]0, +\infty[$ :
    \[
    h'(x) = \frac{1}{2\sqrt{x}} + 2x
    \]
    Pour tout $x > 0$, $h'(x) > 0$. La fonction $h$ est donc strictement croissante sur $[0, +\infty[$.
    D'après le corollaire du TVI, l'équation $h(x) = 0$ admet donc une **unique** solution sur $[0, +\infty[$.
\end{enumerate}
