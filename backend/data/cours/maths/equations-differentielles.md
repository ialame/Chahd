Ce chapitre introduit les **équations différentielles**, c'est-à-dire les équations dont l'inconnue n'est plus un nombre mais une fonction, et qui relient cette fonction à ses dérivées. Apparues au XVII$^e$ siècle avec le calcul infinitésimal de Newton et Leibniz, elles constituent le langage privilégié de la physique : tout phénomène d'évolution (refroidissement, désintégration radioactive, charge d'un condensateur, oscillation d'un ressort) se traduit naturellement par une telle équation. Au programme de Terminale, on se limite aux équations linéaires du premier et du second ordre à coefficients constants.

## Notion d'équation différentielle

\begin{definition}[Équation différentielle]
Une **équation différentielle** est une équation dont l'inconnue est une fonction $y$ d'une variable réelle $x$, et qui fait intervenir cette fonction ainsi qu'une ou plusieurs de ses dérivées $y'$, $y''$, …

**Résoudre** (ou **intégrer**) une équation différentielle sur un intervalle $I$, c'est déterminer **toutes** les fonctions $y$ dérivables sur $I$ qui la vérifient. Une telle fonction est appelée une **solution** de l'équation.
\end{definition}

On appelle **ordre** de l'équation l'ordre de la dérivée la plus élevée qui y figure. Ainsi $y' = 3y$ est du premier ordre, tandis que $y'' + 4y = 0$ est du second ordre.

\begin{exemple}[Vérifier qu'une fonction est solution]
Montrons que la fonction $f(x) = 5e^{2x}$ est solution de l'équation $y' = 2y$ sur $\R$.

On dérive : $f'(x) = 5 \times 2 e^{2x} = 10 e^{2x}$. Par ailleurs $2 f(x) = 2 \times 5 e^{2x} = 10 e^{2x}$.

On a bien $f'(x) = 2 f(x)$ pour tout réel $x$ : $f$ est donc solution.
\end{exemple}

\begin{propriete}[Lien avec les primitives]
L'équation différentielle la plus simple est $y' = g(x)$, où $g$ est une fonction continue donnée sur un intervalle $I$. Résoudre cette équation revient exactement à **chercher les primitives** de $g$ sur $I$.

Ses solutions sont les fonctions $y = G(x) + C$, où $G$ est une primitive de $g$ et $C \in \R$ une constante quelconque.
\end{propriete}

La présence de cette **constante arbitraire** est caractéristique : une équation différentielle possède en général une **infinité** de solutions, formant une famille de fonctions. Pour en isoler une seule, il faudra ajouter une **condition initiale**.

## Équation du premier ordre $y' = ay$

\begin{theoreme}[Équation $y' = ay$]
Soit $a$ un réel. Les solutions sur $\R$ de l'équation différentielle
\[
y' = a y
\]
sont exactement les fonctions de la forme
\[
y(x) = K\, e^{a x}, \qquad K \in \R.
\]
\end{theoreme}

\begin{methode}[Démonstration de l'unicité de la forme]
On admet que $y(x) = K e^{ax}$ est solution (il suffit de dériver : $y'(x) = aK e^{ax} = a y(x)$). Réciproquement, soit $y$ une solution quelconque. Posons $\varphi(x) = y(x)\, e^{-ax}$. Alors
\[
\varphi'(x) = y'(x) e^{-ax} - a\, y(x) e^{-ax} = \big(y'(x) - a\, y(x)\big) e^{-ax} = 0,
\]
car $y' = ay$. La fonction $\varphi$ est donc constante, égale à une valeur $K$, d'où $y(x) = K e^{ax}$.
\end{methode}

\begin{exemple}[Désintégration radioactive]
Le nombre $N(t)$ de noyaux radioactifs présents à l'instant $t$ vérifie $N'(t) = -\lambda N(t)$, où $\lambda > 0$ est la constante de désintégration. C'est une équation du type $y' = ay$ avec $a = -\lambda$.

Les solutions sont $N(t) = K e^{-\lambda t}$. La quantité décroît exponentiellement vers $0$ : c'est la loi de décroissance radioactive.
\end{exemple}

## Équation du premier ordre $y' = ay + b$

\begin{theoreme}[Équation $y' = ay + b$]
Soient $a$ et $b$ deux réels avec $a \neq 0$. Les solutions sur $\R$ de l'équation
\[
y' = a y + b
\]
sont les fonctions
\[
y(x) = K\, e^{a x} - \frac{b}{a}, \qquad K \in \R.
\]
\end{theoreme}

\begin{methode}[Méthode de résolution]
La résolution se fait en deux temps :
\begin{itemize}
    \item \textbf{Solution particulière constante.} On cherche une solution constante $y = c$. Comme $y' = 0$, l'équation donne $0 = ac + b$, d'où $c = -\dfrac{b}{a}$. La fonction constante $y_p = -\dfrac{b}{a}$ est solution.
    \item \textbf{Solution générale de l'équation sans second membre.} En posant $z = y - y_p$, on a $z' = y' = a y + b = a\big(z + y_p\big) + b = a z$ (car $a y_p + b = 0$). Donc $z' = az$, dont les solutions sont $z = K e^{ax}$.
\end{itemize}
Finalement $y = z + y_p = K e^{ax} - \dfrac{b}{a}$.
\end{methode}

\begin{exemple}[Refroidissement]
Un corps de température $T(t)$ placé dans une pièce à $20\,^\circ\!C$ se refroidit selon $T'(t) = -k\big(T(t) - 20\big)$ avec $k > 0$. En développant : $T' = -kT + 20k$, soit la forme $y' = ay + b$ avec $a = -k$ et $b = 20k$.

La solution particulière constante est $-\dfrac{b}{a} = -\dfrac{20k}{-k} = 20$, ce qui correspond à l'équilibre thermique. Les solutions sont $T(t) = K e^{-kt} + 20$, et $T(t) \to 20$ quand $t \to +\infty$.
\end{exemple}

## Conditions initiales et unicité

\begin{theoreme}[Problème de Cauchy]
Pour chacune des équations du premier ordre précédentes, et pour tout couple de réels $(x_0, y_0)$, il existe une **unique** solution $y$ vérifiant la **condition initiale**
\[
y(x_0) = y_0.
\]
\end{theoreme}

La condition initiale permet de **déterminer la constante** $K$ et ainsi de sélectionner une unique fonction parmi la famille des solutions. Géométriquement, par chaque point du plan passe une et une seule courbe solution.

\begin{methode}[Résoudre un problème avec condition initiale]
On procède en trois étapes :
\begin{enumerate}
    \item Écrire la **solution générale** de l'équation (avec la constante $K$).
    \item Remplacer $x$ par $x_0$ et utiliser $y(x_0) = y_0$ pour obtenir une équation en $K$.
    \item Résoudre cette équation pour trouver $K$, puis écrire la solution unique.
\end{enumerate}
\end{methode}

\begin{exemple}[Application complète]
Résolvons $y' = 3y - 6$ avec la condition $y(0) = 4$.

Ici $a = 3$, $b = -6$. La solution particulière constante est $-\dfrac{b}{a} = -\dfrac{-6}{3} = 2$. La solution générale est donc
\[
y(x) = K e^{3x} + 2.
\]
La condition $y(0) = 4$ donne $K e^{0} + 2 = 4$, soit $K + 2 = 4$, donc $K = 2$.

La solution unique est $y(x) = 2 e^{3x} + 2$.
\end{exemple}

## Équations du second ordre

On s'intéresse maintenant aux équations de la forme $y'' + \omega^2 y = 0$ et $y'' - \omega^2 y = 0$, où $\omega$ est un réel strictement positif. Elles décrivent respectivement les phénomènes oscillants et les évolutions exponentielles.

\begin{theoreme}[Équation $y'' + \omega^2 y = 0$]
Soit $\omega > 0$. Les solutions sur $\R$ de l'équation
\[
y'' + \omega^2 y = 0
\]
sont les fonctions
\[
y(x) = A \cos(\omega x) + B \sin(\omega x), \qquad A, B \in \R.
\]
\end{theoreme}

On vérifie aisément que $y = \cos(\omega x)$ convient : $y' = -\omega \sin(\omega x)$, $y'' = -\omega^2 \cos(\omega x) = -\omega^2 y$, donc $y'' + \omega^2 y = 0$. Il en va de même pour $\sin(\omega x)$. Ces solutions sont **périodiques** de période $T = \dfrac{2\pi}{\omega}$ : ce sont des oscillations.

\begin{theoreme}[Équation $y'' - \omega^2 y = 0$]
Soit $\omega > 0$. Les solutions sur $\R$ de l'équation
\[
y'' - \omega^2 y = 0
\]
sont les fonctions
\[
y(x) = A\, e^{\omega x} + B\, e^{-\omega x}, \qquad A, B \in \R.
\]
\end{theoreme}

La différence de signe est essentielle : avec $+\omega^2$ on obtient des oscillations bornées, avec $-\omega^2$ une combinaison d'exponentielles (croissante et décroissante).

\begin{propriete}[Conditions initiales au second ordre]
Une équation du second ordre possède **deux** constantes $A$ et $B$. Pour déterminer une solution unique, il faut donc **deux** conditions, par exemple $y(x_0)$ et $y'(x_0)$.
\end{propriete}

\begin{exemple}[Oscillateur harmonique]
Résolvons $y'' + 9y = 0$ avec $y(0) = 1$ et $y'(0) = 6$.

Ici $\omega^2 = 9$, donc $\omega = 3$. La solution générale est $y(x) = A\cos(3x) + B\sin(3x)$.
\begin{itemize}
    \item $y(0) = A\cos(0) + B\sin(0) = A = 1$, donc $A = 1$.
    \item $y'(x) = -3A\sin(3x) + 3B\cos(3x)$, d'où $y'(0) = 3B = 6$, donc $B = 2$.
\end{itemize}
La solution unique est $y(x) = \cos(3x) + 2\sin(3x)$.
\end{exemple}

## Applications en physique

\begin{exemple}[Circuit RC]
Lors de la charge d'un condensateur de capacité $C$ à travers une résistance $R$ sous une tension $E$, la tension $u(t)$ aux bornes du condensateur vérifie
\[
RC\, u'(t) + u(t) = E, \qquad \text{soit} \qquad u'(t) = -\frac{1}{RC}\, u(t) + \frac{E}{RC}.
\]
C'est une équation $y' = ay + b$ avec $a = -\dfrac{1}{RC}$. La solution particulière constante vaut $E$. Avec $u(0) = 0$, on obtient
\[
u(t) = E\left(1 - e^{-t/(RC)}\right).
\]
La grandeur $\tau = RC$ est la **constante de temps** du circuit.
\end{exemple}

\begin{exemple}[Circuit LC et oscillateur mécanique]
Dans un circuit $LC$ idéal, la charge $q(t)$ vérifie $L q''(t) + \dfrac{1}{C} q(t) = 0$, soit $q'' + \omega^2 q = 0$ avec $\omega = \dfrac{1}{\sqrt{LC}}$. De même, un ressort de raideur $k$ portant une masse $m$ donne $x'' + \dfrac{k}{m} x = 0$.

Dans les deux cas, le système oscille à la **pulsation propre** $\omega$, et la solution $A\cos(\omega t) + B\sin(\omega t)$ décrit une oscillation sinusoïdale entretenue.
\end{exemple}

## En résumé

\begin{propriete}[Tableau récapitulatif]
\begin{itemize}
    \item $y' = ay \ \Rightarrow\ y = K e^{ax}$.
    \item $y' = ay + b \ (a \neq 0) \ \Rightarrow\ y = K e^{ax} - \dfrac{b}{a}$.
    \item $y'' + \omega^2 y = 0 \ \Rightarrow\ y = A\cos(\omega x) + B\sin(\omega x)$.
    \item $y'' - \omega^2 y = 0 \ \Rightarrow\ y = A e^{\omega x} + B e^{-\omega x}$.
    \item Une condition initiale par constante à déterminer : $1$ au premier ordre, $2$ au second ordre.
\end{itemize}
\end{propriete}
