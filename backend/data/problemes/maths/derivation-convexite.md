### Problème 1 : Optimisation de la surface d'une boîte de conserve
\begin{enonce}
On souhaite concevoir une boîte de conserve cylindrique fermée de volume fixé $V = 1 \text{ dm}^3$ ($1000 \text{ cm}^3$). On note $r$ le rayon de la base du cylindre (en cm) et $h$ sa hauteur (en cm).
\begin{enumerate}
    \item Exprimer le volume $V$ en fonction de $r$ et $h$. En déduire $h$ en fonction de $r$.
    \item Montrer que l'aire totale $S(r)$ de la boîte de conserve (les deux bases circulaires et la paroi latérale) est donnée par :
    \[
    S(r) = 2\pi r^2 + \frac{2000}{r}
    \]
    \item Étudier les variations de la fonction $S$ sur $]0, +\infty[$.
    \item En déduire le rayon $r_0$ (en cm) qui permet de minimiser la quantité de métal utilisée pour fabriquer cette boîte. Calculer alors la hauteur correspondante $h_0$ et montrer que $h_0 = 2r_0$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Le volume d'un cylindre est donné par : $V = \pi r^2 h$.
    Puisque $V = 1000$, on a $\pi r^2 h = 1000 \implies h = \frac{1000}{\pi r^2}$.
    
    \item L'aire totale est la somme de l'aire latérale et de l'aire des deux bases :
    \[
    S(r) = 2 \times (\pi r^2) + 2\pi r h = 2\pi r^2 + 2\pi r \left( \frac{1000}{\pi r^2} \right) = 2\pi r^2 + \frac{2000}{r}
    \]
    
    \item La fonction $S$ est dérivable sur $]0, +\infty[$ :
    \[
    S'(r) = 4\pi r - \frac{2000}{r^2} = \frac{4\pi r^3 - 2000}{r^2} = \frac{4(\pi r^3 - 500)}{r^2}
    \]
    Le dénominateur $r^2$ étant positif, le signe de $S'(r)$ est celui de $\pi r^3 - 500$.
    \[
    S'(r) \ge 0 \iff \pi r^3 - 500 \ge 0 \iff r^3 \ge \frac{500}{\pi} \iff r \ge \sqrt[3]{\frac{500}{\pi}} \approx 5,42 \text{ cm}
    \]
    La fonction $S$ est donc strictement décroissante sur $\left]0, \sqrt[3]{\frac{500}{\pi}}\right]$ et strictement croissante sur $\left[\sqrt[3]{\frac{500}{\pi}}, +\infty\right[$.
    
    \item L'aire est minimale pour le rayon :
    \[
    r_0 = \sqrt[3]{\frac{500}{\pi}} \approx 5,42 \text{ cm}
    \]
    Calculons la hauteur $h_0$ correspondante en utilisant $r_0^3 = \frac{500}{\pi}$ :
    \[
    h_0 = \frac{1000}{\pi r_0^2} = \frac{2 \times 500}{\pi r_0^2} = \frac{2 \times (\pi r_0^3)}{\pi r_0^2} = 2r_0
    \]
    La hauteur optimale est égale au diamètre du cylindre, ce qui donne une boîte bien proportionnée.
\end{enumerate}

### Problème 2 : Recherche de tangentes communes
\begin{enonce}
On considère la courbe $\mathcal{C}_1$ associée à la fonction $f(x) = x^2$ et la courbe $\mathcal{C}_2$ associée à la fonction $g(x) = -x^2 + 2x - 3$.
Déterminer s'il existe une ou plusieurs droites tangentes simultanément à $\mathcal{C}_1$ et $\mathcal{C}_2$. Si oui, donner leurs équations.
\end{enonce}

\textbf{Solution :}
Soit $a$ l'abscisse du point de tangence sur $\mathcal{C}_1$ et $b$ l'abscisse du point de tangence sur $\mathcal{C}_2$.
- L'équation de la tangente $\mathcal{T}_a$ à $\mathcal{C}_1$ en $a$ est (avec $f'(x) = 2x$) :
  \[
  y = f'(a)(x-a) + f(a) \implies y = 2ax - 2a^2 + a^2 \implies y = 2ax - a^2
  \]
- L'équation de la tangente $\mathcal{T}_b$ à $\mathcal{C}_2$ en $b$ est (avec $g'(x) = -2x+2$) :
  \[
  y = g'(b)(x-b) + g(b) \implies y = (-2b+2)(x-b) - b^2 + 2b - 3 \implies y = (2-2b)x + b^2 - 3
  \]
Les deux droites sont confondues si et seulement si leurs coefficients directeurs et leurs ordonnées à l'origine sont égaux, d'où le système :
\[
\begin{cases}
2a = 2 - 2b \\
-a^2 = b^2 - 3
\end{cases} \iff 
\begin{cases}
a = 1 - b \\
-(1 - b)^2 = b^2 - 3
\end{cases}
\]
En développant la seconde équation :
\[
-(1 - 2b + b^2) = b^2 - 3 \iff -1 + 2b - b^2 = b^2 - 3 \iff 2b^2 - 2b - 2 = 0 \iff b^2 - b - 1 = 0
\]
Le discriminant est $\Delta = (-1)^2 - 4(1)(-1) = 5 > 0$.
Les solutions pour $b$ sont $b_1 = \frac{1-\sqrt{5}}{2}$ et $b_2 = \frac{1+\sqrt{5}}{2}$.
- Si $b = b_1 = \frac{1-\sqrt{5}}{2}$, alors le coefficient directeur est $m_1 = 2-2b_1 = 1+\sqrt{5}$, et $a_1 = 1-b_1 = \frac{1+\sqrt{5}}{2}$.
  L'ordonnée à l'origine est $-a_1^2 = -\left(\frac{1+\sqrt{5}}{2}\right)^2 = -\frac{3+\sqrt{5}}{2}$.
  L'équation de la première tangente commune est : $y = (1+\sqrt{5})x - \frac{3+\sqrt{5}}{2}$.
- Si $b = b_2 = \frac{1+\sqrt{5}}{2}$, alors le coefficient directeur est $m_2 = 2-2b_2 = 1-\sqrt{5}$, et $a_2 = 1-b_2 = \frac{1-\sqrt{5}}{2}$.
  L'ordonnée à l'origine est $-a_2^2 = -\left(\frac{1-\sqrt{5}}{2}\right)^2 = -\frac{3-\sqrt{5}}{2}$.
  L'équation de la deuxième tangente commune est : $y = (1-\sqrt{5})x - \frac{3-\sqrt{5}}{2}$.

Il existe donc exactement deux tangentes communes aux deux courbes.

### Problème 3 : Étude d'une fonction logarithme et branches infinies
\begin{enonce}
Soit la fonction $f$ définie sur l'intervalle $]0, +\infty[$ par :
\[
f(x) = x - 1 + \frac{\ln(x)}{x}
\]
On note $\mathcal{C}_f$ sa courbe représentative dans un repère orthonormé.
\begin{enumerate}
    \item Calculer la limite de $f$ en $0^+$. Donner une interprétation géométrique du résultat.
    \item Calculer la limite de $f$ en $+\infty$, puis montrer que la droite $D$ d'équation $y = x - 1$ est une asymptote oblique à la courbe $\mathcal{C}_f$ en $+\infty$.
    \item Étudier la position relative de la courbe $\mathcal{C}_f$ et de la droite $D$.
    \item Calculer la dérivée $f'(x)$ et montrer que pour tout $x > 0$ :
    \[
    f'(x) = \frac{x^2 + 1 - \ln(x)}{x^2}
    \]
    \item On admet que pour tout $x > 0$, $x^2 + 1 - \ln(x) > 0$. Dresser le tableau de variations de $f$.
    \item Démontrer que $f$ réalise une bijection de $]0, +\infty[$ sur $\R$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item En $0^+$ :
      On a $\lim_{x \to 0^+} (x-1) = -1$.
      Puisque $\lim_{x \to 0^+} \ln(x) = -\infty$ et $\lim_{x \to 0^+} \frac{1}{x} = +\infty$, on a par produit $\lim_{x \to 0^+} \frac{\ln(x)}{x} = -\infty$.
      Par somme de limites, on en conclut :
      \[
      \lim_{x \to 0^+} f(x) = -\infty
      \]
      Interprétation géométrique : La droite d'équation $x = 0$ (l'axe des ordonnées) est une **asymptote verticale** à la courbe $\mathcal{C}_f$.
      
    \item En $+\infty$ :
      On a $\lim_{x \to +\infty} (x-1) = +\infty$.
      D'après le cours sur les croissances comparées, $\lim_{x \to +\infty} \frac{\ln(x)}{x} = 0$.
      Par somme :
      \[
      \lim_{x \to +\infty} f(x) = +\infty
      \]
      Pour l'asymptote oblique : calculons la différence $f(x) - (x-1)$ :
      \[
      \lim_{x \to +\infty} [f(x) - (x-1)] = \lim_{x \to +\infty} \frac{\ln(x)}{x} = 0
      \]
      La droite $D$ d'équation $y = x-1$ est donc bien une **asymptote oblique** à la courbe $\mathcal{C}_f$ en $+\infty$.
      
    \item Étudions le signe de la différence $f(x) - (x-1) = \frac{\ln(x)}{x}$ sur $]0, +\infty[$ :
      Le dénominateur $x$ étant strictement positif, la différence est du signe de $\ln(x)$ :
      \begin{itemize}
          \item Si $0 < x < 1$, $\ln(x) < 0$ : la courbe $\mathcal{C}_f$ est située **en dessous** de la droite $D$.
          \item Si $x > 1$, $\ln(x) > 0$ : la courbe $\mathcal{C}_f$ est située **au-dessus** de la droite $D$.
          \item Si $x = 1$, la courbe $\mathcal{C}_f$ et la droite $D$ se coupent au point de coordonnées $(1, 0)$.
      \end{itemize}
      
    \item La fonction $f$ est dérivable sur $]0, +\infty[$ comme somme de fonctions dérivables :
      \[
      f'(x) = 1 - 0 + \frac{\frac{1}{x} \times x - \ln(x) \times 1}{x^2} = 1 + \frac{1 - \ln(x)}{x^2} = \frac{x^2 + 1 - \ln(x)}{x^2}
      \]
      
    \item D'après l'indication, $x^2 + 1 - \ln(x) > 0$ pour tout $x > 0$. De plus, $x^2 > 0$.
      La dérivée $f'(x)$ est donc strictement positive sur $]0, +\infty[$.
      La fonction $f$ est **strictement croissante** sur $]0, +\infty[$.
      
    \item La fonction $f$ est continue (car dérivable) et strictement croissante sur l'intervalle $I = ]0, +\infty[$.
      D'après le théorème de la bijection, $f$ réalise une bijection de $I$ sur l'intervalle image $J = f(I)$ :
      \[
      J = \left] \lim_{x \to 0^+} f(x), \lim_{x \to +\infty} f(x) \right[ = ]-\infty, +\infty[ = \R
      \]
\end{enumerate}

### Problème 4 : Concavité d'une fonction exponentielle
\begin{enonce}
Soit la fonction $f$ définie sur $\R$ par :
\[
f(x) = (x-2)e^x + x + 2
\]
On note $\mathcal{C}_f$ sa courbe représentative.
\begin{enumerate}
    \item Calculer la dérivée première $f'(x)$ et la dérivée seconde $f''(x)$ sur $\R$.
    \item Étudier le signe de $f''(x)$ sur $\R$.
    \item En déduire la concavité de la courbe $\mathcal{C}_f$.
    \item Montrer que la courbe $\mathcal{C}_f$ admet un point d'inflexion unique $I$ dont on donnera les coordonnées.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item La fonction $f$ est deux fois dérivable sur $\R$ par somme et produit de fonctions de référence :
      - Dérivée première :
      \[
      f'(x) = 1 \cdot e^x + (x-2)e^x + 1 = (x-1)e^x + 1
      \]
      - Dérivée seconde :
      \[
      f''(x) = 1 \cdot e^x + (x-1)e^x = x e^x
      \]
      
    \item Étudions le signe de $f''(x) = x e^x$ sur $\R$ :
      La fonction exponentielle $e^x$ étant strictement positive pour tout réel $x$, la dérivée seconde $f''(x)$ est du signe de $x$ :
      \begin{itemize}
          \item Pour $x < 0$, $f''(x) < 0$.
          \item Pour $x > 0$, $f''(x) > 0$.
          \item Pour $x = 0$, $f''(x) = 0$.
      \end{itemize}
      
    \item D'après le théorème du cours :
      \begin{itemize}
          \item Sur l'intervalle $]-\infty, 0]$, $f''(x) \le 0$, donc la courbe $\mathcal{C}_f$ est **concave**.
          \item Sur l'intervalle $[0, +\infty[$, $f''(x) \ge 0$, donc la courbe $\mathcal{C}_f$ est **convexe**.
      \end{itemize}
      
    \item La dérivée seconde $f''$ s'annule en 0 et change de signe autour de 0.
      La courbe $\mathcal{C}_f$ admet donc un unique point d'inflexion $I$ d'abscisse $x=0$.
      Calculons l'ordonnée de $I$ :
      \[
      f(0) = (0-2)e^0 + 0 + 2 = -2 \times 1 + 2 = 0
      \]
      Le point d'inflexion est l'origine du repère $I(0, 0)$.
\end{enumerate}

### Problème supplémentaire : Convexité et inégalité
\begin{enonce}
Soient $a, b > 0$. Étudier la convexité de la fonction logarithme et en déduire l'inégalité $\sqrt{ab} \le \frac{a+b}{2}$.
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Soit $f(x) = \ln(x)$. On a $f'(x) = \frac{1}{x}$ et $f''(x) = -\frac{1}{x^2}$.
    Comme $f''(x) < 0$ pour tout $x > 0$, la fonction logarithme est **strictement concave** sur $]0, +\infty[$.
    \item Par définition de la concavité, pour tous $a, b > 0$, on a :
    \[
    f\left(\frac{a+b}{2}\right) \ge \frac{f(a)+f(b)}{2} \implies \ln\left(\frac{a+b}{2}\right) \ge \frac{\ln(a)+\ln(b)}{2}
    \]
    On sait que $\frac{\ln(a)+\ln(b)}{2} = \frac{1}{2} \ln(ab) = \ln(\sqrt{ab})$.
    L'inégalité devient :
    \[
    \ln\left(\frac{a+b}{2}\right) \ge \ln(\sqrt{ab})
    \]
    Comme la fonction logarithme est strictement croissante sur $]0, +\infty[$, on en déduit par composition inverse :
    \[
    \frac{a+b}{2} \ge \sqrt{ab}
    \]
    Ce qui prouve que la moyenne géométrique de deux nombres positifs est toujours inférieure ou égale à leur moyenne arithmétique.
\end{enumerate}

### Problème 5 : Points d'inflexion d'une famille de courbes
\begin{enonce}
Pour tout réel $k \ne 0$, on considère la fonction $f_k$ définie sur $\R$ par :
\[
f_k(x) = x^3 - 3kx^2
\]
On note $\mathcal{C}_k$ sa courbe représentative.
\begin{enumerate}
    \item Calculer la dérivée seconde $f_k''(x)$.
    \item Montrer que pour tout $k \ne 0$, la courbe $\mathcal{C}_k$ admet un unique point d'inflexion $I_k$ dont on calculera les coordonnées en fonction de $k$.
    \item Montrer que lorsque $k$ varie dans $\R^*$, le point $I_k$ se déplace sur une courbe fixe $\Gamma$ d'équation $y = -2x^3$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Calculons les dérivées successives :
    \[
    f_k'(x) = 3x^2 - 6kx \implies f_k''(x) = 6x - 6k = 6(x-k)
    \]
    
    \item La dérivée seconde $f_k''(x) = 6(x-k)$ s'annule en changeant de signe en $x = k$ (elle est négative pour $x < k$ et positive pour $x > k$).
    La courbe $\mathcal{C}_k$ possède donc un unique point d'inflexion $I_k$ d'abscisse $x_I = k$.
    Calculons l'ordonnée correspondante $y_I = f_k(k)$ :
    \[
    y_I = k^3 - 3k(k^2) = k^3 - 3k^3 = -2k^3
    \]
    Les coordonnées du point d'inflexion sont donc :
    \[
    I_k(k, -2k^3)
    \]
    
    \item Soit $(x, y)$ les coordonnées de $I_k$. On a :
    \[
    \begin{cases}
    x = k \\
    y = -2k^3
    \end{cases} \implies y = -2x^3
    \]
    Lorsque $k$ varie dans $\R^*$, les coordonnées de $I_k$ vérifient l'équation $y = -2x^3$. Le point $I_k$ se déplace donc bien sur la courbe fixe $\Gamma$ d'équation $y = -2x^3$.
\end{enumerate}
