Ce chapitre consolide l'étude de la fonction exponentielle et introduit les limites de croissances comparées associées, qui constituent des outils fondamentaux pour l'étude globale des fonctions et de leurs asymptotes.

## Compléments sur la Fonction Exponentielle

### Rappels et propriétés analytiques

La fonction exponentielle, notée $\exp$ ou $x \mapsto e^x$, est l'unique fonction dérivable sur $\R$ égale à sa propre dérivée et valant 1 en 0 ($f' = f$ et $f(0)=1$).

\begin{propriete}[Propriétés fondamentales]
\begin{itemize}
    \item Pour tout réel $x$, $e^x > 0$.
    \item La fonction $x \mapsto e^x$ est strictement croissante et continue sur $\R$.
    \item Les limites aux bornes sont :
    \[
    \lim_{x \to -\infty} e^x = 0 \quad \text{et} \quad \lim_{x \to +\infty} e^x = +\infty
    \]
    Ainsi, la droite d'équation $y=0$ est une asymptote horizontale à la courbe en $-\infty$.
\end{itemize}
\end{propriete}

### Croissances comparées

À l'infini, la fonction exponentielle croît beaucoup plus vite que n'importe quelle fonction puissance.

\begin{theoreme}[Croissances comparées pour $\exp$]
Pour tout entier naturel $n \ge 1$ :
\[
\lim_{x \to +\infty} \frac{e^x}{x^n} = +\infty \quad \text{et} \quad \lim_{x \to -\infty} x^n e^x = 0
\]
\end{theoreme}
