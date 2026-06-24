Au-delà des bases (forme algébrique, conjugué, module), le programme de 2 Bac Sciences Mathématiques exploite pleinement la **forme exponentielle** des nombres complexes. Celle-ci transforme les produits en sommes d'arguments, donne la **formule de Moivre** et les **formules d'Euler**, permet de calculer les **racines $n$-ièmes** d'un nombre complexe et fournit un outil géométrique d'une grande puissance pour décrire **rotations, homothéties et similitudes** du plan. Ce chapitre suppose connues la forme algébrique $z = x + \iud y$, le conjugué $\bar{z}$ et le module $|z| = \sqrt{x^2 + y^2}$.

## Argument et forme trigonométrique

\begin{definition}[Argument d'un nombre complexe non nul]
Soit $z$ un nombre complexe non nul de module $r = |z|$. On appelle **argument** de $z$ tout réel $\theta$ tel que :
$$\cos\theta = \frac{\mathrm{Re}(z)}{r} \quad \text{et} \quad \sin\theta = \frac{\mathrm{Im}(z)}{r}.$$
L'argument est défini **modulo $2\pi$** ; on le note $\arg(z)$ et on écrit $\arg(z) \equiv \theta \ [2\pi]$.
\end{definition}

\begin{propriete}[Forme trigonométrique]
Tout nombre complexe non nul $z$ de module $r$ et d'argument $\theta$ s'écrit de manière unique (à $2\pi$ près sur $\theta$) :
$$z = r\,(\cos\theta + \iud \sin\theta).$$
Réciproquement, si $z = \rho(\cos\alpha + \iud\sin\alpha)$ avec $\rho > 0$, alors $\rho = |z|$ et $\alpha$ est un argument de $z$.
\end{propriete}

\begin{exemple}[Forme trigonométrique de $z = 1 + \iud\sqrt{3}$]
On a $|z| = \sqrt{1 + 3} = 2$. Donc $\cos\theta = \frac{1}{2}$ et $\sin\theta = \frac{\sqrt{3}}{2}$, d'où $\theta \equiv \frac{\pi}{3}\ [2\pi]$. Ainsi :
$$z = 2\left(\cos\frac{\pi}{3} + \iud\sin\frac{\pi}{3}\right).$$
\end{exemple}

## La forme exponentielle

\begin{definition}[Notation exponentielle]
Pour tout réel $\theta$, on pose :
$$\e^{\iud\theta} = \cos\theta + \iud\sin\theta.$$
Par conséquent, tout nombre complexe non nul de module $r$ et d'argument $\theta$ s'écrit sous **forme exponentielle** :
$$z = r\,\e^{\iud\theta}.$$
\end{definition}

\begin{propriete}[Propriétés fondamentales]
Pour tous réels $\theta$ et $\theta'$ :
\begin{itemize}
    \item $|\e^{\iud\theta}| = 1$ et $\overline{\e^{\iud\theta}} = \e^{-\iud\theta}$ ;
    \item $\e^{\iud\theta} \times \e^{\iud\theta'} = \e^{\iud(\theta + \theta')}$ ;
    \item $\dfrac{1}{\e^{\iud\theta}} = \e^{-\iud\theta}$ et $\dfrac{\e^{\iud\theta}}{\e^{\iud\theta'}} = \e^{\iud(\theta-\theta')}$ ;
    \item $\e^{\iud\theta} = 1 \iff \theta \equiv 0\ [2\pi]$.
\end{itemize}
\end{propriete}

\begin{propriete}[Module et argument d'un produit et d'un quotient]
Soient $z = r\,\e^{\iud\theta}$ et $z' = r'\,\e^{\iud\theta'}$ deux nombres complexes non nuls. Alors :
$$z z' = r r'\,\e^{\iud(\theta+\theta')}, \qquad \frac{z}{z'} = \frac{r}{r'}\,\e^{\iud(\theta-\theta')}.$$
En particulier :
\begin{itemize}
    \item $|zz'| = |z|\,|z'|$ et $\arg(zz') \equiv \arg(z) + \arg(z')\ [2\pi]$ ;
    \item $\left|\dfrac{z}{z'}\right| = \dfrac{|z|}{|z'|}$ et $\arg\!\left(\dfrac{z}{z'}\right) \equiv \arg(z) - \arg(z')\ [2\pi]$ ;
    \item pour tout $n \in \Z$, $z^n = r^n\,\e^{\iud n\theta}$, donc $\arg(z^n) \equiv n\arg(z)\ [2\pi]$.
\end{itemize}
\end{propriete}

\begin{exemple}[Calcul d'une puissance]
Avec $z = 1 + \iud = \sqrt{2}\,\e^{\iud\pi/4}$, on obtient :
$$z^{8} = (\sqrt{2})^{8}\,\e^{\iud \cdot 8 \cdot \pi/4} = 16\,\e^{2\iud\pi} = 16.$$
\end{exemple}

## Formule de Moivre et formules d'Euler

\begin{theoreme}[Formule de Moivre]
Pour tout réel $\theta$ et tout entier $n \in \Z$ :
$$(\cos\theta + \iud\sin\theta)^n = \cos(n\theta) + \iud\sin(n\theta), \quad \text{c'est-à-dire} \quad \left(\e^{\iud\theta}\right)^n = \e^{\iud n\theta}.$$
\end{theoreme}

\begin{theoreme}[Formules d'Euler]
Pour tout réel $\theta$ :
$$\cos\theta = \frac{\e^{\iud\theta} + \e^{-\iud\theta}}{2}, \qquad \sin\theta = \frac{\e^{\iud\theta} - \e^{-\iud\theta}}{2\iud}.$$
\end{theoreme}

\begin{methode}[Linéariser $\cos^3\theta$ avec les formules d'Euler]
Pour transformer une puissance de $\cos$ ou $\sin$ en somme de cosinus/sinus d'angles multiples :
\begin{enumerate}
    \item Remplacer $\cos\theta$ par $\frac{\e^{\iud\theta} + \e^{-\iud\theta}}{2}$.
    \item Développer la puissance (binôme de Newton).
    \item Regrouper les termes conjugués $\e^{\iud k\theta} + \e^{-\iud k\theta} = 2\cos(k\theta)$.
\end{enumerate}
Application :
$$\cos^3\theta = \left(\frac{\e^{\iud\theta} + \e^{-\iud\theta}}{2}\right)^3 = \frac{1}{8}\left(\e^{3\iud\theta} + 3\e^{\iud\theta} + 3\e^{-\iud\theta} + \e^{-3\iud\theta}\right) = \frac{1}{4}\cos(3\theta) + \frac{3}{4}\cos\theta.$$
\end{methode}

\begin{exemple}[Calcul de $\cos(3\theta)$ par Moivre]
En développant $(\cos\theta + \iud\sin\theta)^3$ et en identifiant la partie réelle à $\cos(3\theta)$ :
$$\cos(3\theta) = \cos^3\theta - 3\cos\theta\sin^2\theta = 4\cos^3\theta - 3\cos\theta.$$
\end{exemple}

## Racines $n$-ièmes

\begin{definition}[Racine $n$-ième]
Soient $a$ un nombre complexe et $n \ge 1$ un entier. On appelle **racine $n$-ième** de $a$ tout nombre complexe $z$ tel que $z^n = a$.
\end{definition}

\begin{theoreme}[Racines $n$-ièmes de l'unité]
L'équation $z^n = 1$ admet exactement $n$ solutions distinctes, appelées **racines $n$-ièmes de l'unité** :
$$z_k = \e^{\iud \frac{2k\pi}{n}}, \qquad k \in \{0, 1, \dots, n-1\}.$$
Leur somme est nulle dès que $n \ge 2$ : $\displaystyle\sum_{k=0}^{n-1} z_k = 0$. Dans le plan complexe, ces points sont les sommets d'un **polygone régulier** à $n$ côtés inscrit dans le cercle unité.
\end{theoreme}

\begin{theoreme}[Racines $n$-ièmes d'un complexe non nul]
Soit $a = \rho\,\e^{\iud\varphi}$ avec $\rho > 0$. L'équation $z^n = a$ admet exactement $n$ solutions :
$$z_k = \rho^{1/n}\,\e^{\iud \frac{\varphi + 2k\pi}{n}}, \qquad k \in \{0, 1, \dots, n-1\}.$$
\end{theoreme}

\begin{exemple}[Racines cubiques de $8$]
On écrit $8 = 8\,\e^{\iud \cdot 0}$, donc $\rho^{1/3} = 2$ et les solutions de $z^3 = 8$ sont :
$$z_k = 2\,\e^{\iud \frac{2k\pi}{3}}, \quad k = 0, 1, 2, \quad \text{soit} \quad 2, \ -1 + \iud\sqrt{3}, \ -1 - \iud\sqrt{3}.$$
\end{exemple}

## Équations dans $\Cnum$

\begin{theoreme}[Équation du second degré à coefficients complexes]
Soit $az^2 + bz + c = 0$ avec $a, b, c \in \Cnum$ et $a \ne 0$. On pose $\Delta = b^2 - 4ac$. Soit $\delta$ **une** racine carrée complexe de $\Delta$ (vérifiant $\delta^2 = \Delta$). Les solutions sont :
$$z_1 = \frac{-b + \delta}{2a}, \qquad z_2 = \frac{-b - \delta}{2a}.$$
Lorsque $\Delta = 0$, il y a une solution double $z = -\frac{b}{2a}$.
\end{theoreme}

\begin{methode}[Trouver une racine carrée complexe de $\Delta = X + \iud Y$]
On cherche $\delta = x + \iud y$ tel que $\delta^2 = \Delta$. En identifiant :
\begin{enumerate}
    \item $x^2 - y^2 = X$ (partie réelle) ;
    \item $2xy = Y$ (partie imaginaire) ;
    \item $x^2 + y^2 = |\Delta| = \sqrt{X^2 + Y^2}$ (égalité des modules).
\end{enumerate}
On résout le système formé par (1) et (3) pour obtenir $x^2$ et $y^2$, puis le signe de (2) fixe les signes relatifs de $x$ et $y$.
\end{methode}

\begin{exemple}[Une équation à coefficients complexes]
Résolvons $z^2 - (3 + \iud)z + (2 + 2\iud) = 0$. On a $\Delta = (3+\iud)^2 - 4(2+2\iud) = 8 + 6\iud - 8 - 8\iud = -2\iud$. Une racine carrée de $-2\iud$ est $\delta = 1 - \iud$ (car $(1-\iud)^2 = -2\iud$). Donc :
$$z_1 = \frac{3 + \iud + 1 - \iud}{2} = 2, \qquad z_2 = \frac{3 + \iud - 1 + \iud}{2} = 1 + \iud.$$
\end{exemple}

## Interprétation géométrique

\begin{definition}[Affixe]
Dans le plan rapporté à un repère orthonormé direct $(O; \vec{u}, \vec{v})$, à tout point $M$ de coordonnées $(x, y)$ on associe son **affixe** $z_M = x + \iud y$. Réciproquement, $M$ est l'**image** de $z_M$.
\end{definition}

\begin{propriete}[Lectures géométriques]
Soient $A$ et $B$ d'affixes $z_A$ et $z_B$.
\begin{itemize}
    \item L'affixe du vecteur $\vec{AB}$ est $z_B - z_A$.
    \item La **distance** $AB = |z_B - z_A|$.
    \item L'**angle** $(\vec{u}, \vec{AB}) \equiv \arg(z_B - z_A)\ [2\pi]$.
    \item L'affixe du milieu de $[AB]$ est $\dfrac{z_A + z_B}{2}$.
\end{itemize}
\end{propriete}

\begin{propriete}[Le quotient $\frac{z_C - z_A}{z_B - z_A}$]
Pour trois points distincts $A$, $B$, $C$ :
$$\left|\frac{z_C - z_A}{z_B - z_A}\right| = \frac{AC}{AB}, \qquad \arg\!\left(\frac{z_C - z_A}{z_B - z_A}\right) \equiv (\vec{AB}, \vec{AC})\ [2\pi].$$
On en déduit :
\begin{itemize}
    \item $A$, $B$, $C$ sont **alignés** $\iff \dfrac{z_C - z_A}{z_B - z_A} \in \R$ ;
    \item $(AB) \perp (AC) \iff \dfrac{z_C - z_A}{z_B - z_A} \in \iud\R$ (imaginaire pur).
\end{itemize}
\end{propriete}

\begin{exemple}[Triangle équilatéral et ensembles de points]
Le triangle $ABC$ est équilatéral direct si et seulement si $\frac{z_C - z_A}{z_B - z_A} = \e^{\iud\pi/3}$. Par ailleurs, l'ensemble des points $M$ d'affixe $z$ tels que $|z - z_0| = R$ (avec $R > 0$) est le **cercle** de centre $\Omega(z_0)$ et de rayon $R$ ; l'ensemble des points tels que $|z - z_A| = |z - z_B|$ est la **médiatrice** de $[AB]$.
\end{exemple}

## Transformations du plan et nombres complexes

\begin{propriete}[Écriture complexe des transformations usuelles]
Soit $M$ d'affixe $z$ et $M'$ son image d'affixe $z'$.
\begin{itemize}
    \item **Translation** de vecteur $\vec{w}$ d'affixe $b$ : $z' = z + b$.
    \item **Homothétie** de centre $\Omega(\omega)$ et de rapport $k \in \R^*$ : $z' - \omega = k(z - \omega)$.
    \item **Rotation** de centre $\Omega(\omega)$ et d'angle $\theta$ : $z' - \omega = \e^{\iud\theta}(z - \omega)$.
\end{itemize}
\end{propriete}

\begin{theoreme}[Similitude directe]
Toute application $z \mapsto z' = az + b$ avec $a \in \Cnum^*$ et $b \in \Cnum$ est une **similitude directe** :
\begin{itemize}
    \item si $a = 1$, c'est la translation de vecteur d'affixe $b$ ;
    \item si $a \ne 1$, elle admet un unique **point fixe** $\omega = \dfrac{b}{1 - a}$ ; c'est la similitude de centre $\Omega(\omega)$, de **rapport** $|a|$ et d'**angle** $\arg(a)$. Elle s'écrit alors $z' - \omega = a(z - \omega)$.
\end{itemize}
\end{theoreme}

\begin{exemple}[Identifier une transformation]
Soit $z' = \iud z + 1 - \iud$. Ici $a = \iud$, $|a| = 1$ et $\arg(a) = \frac{\pi}{2}$ : il s'agit d'une **rotation** d'angle $\frac{\pi}{2}$. Son centre est le point fixe $\omega = \frac{1 - \iud}{1 - \iud} = 1$. C'est donc la rotation de centre $\Omega(1)$ et d'angle $\frac{\pi}{2}$.
\end{exemple}
