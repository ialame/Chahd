### Problème 1 : Triangle équilatéral construit sur un segment
\begin{enonce}
Soit $[AB]$ un segment du plan. On construit le point $C$ tel que le triangle $ABC$ soit équilatéral \textbf{direct} (c'est-à-dire que $C$ est l'image de $B$ par une rotation directe de centre $A$).
\begin{enumerate}
    \item Préciser l'angle de la rotation $r$ de centre $A$ qui transforme $B$ en $C$.
    \item Justifier que $AC = AB$.
    \item On considère maintenant la rotation $r'$ de centre $A$ et d'angle $-\dfrac{\pi}{3}$. Quelle est l'image de $C$ par $r'$ ? Quelle est l'image de $B$ par $r'$ ?
    \item Soit $M$ un point quelconque et $M' = r(M)$. Que vaut la distance $MM'$ lorsque $M$ décrit le segment $[AB]$ ? (On exprimera $MM'$ en fonction de $AM$.)
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Le triangle $ABC$ est équilatéral direct, donc $(\widehat{\overrightarrow{AB}, \overrightarrow{AC}}) = \dfrac{\pi}{3}$ (sens direct). La rotation cherchée est $r = r\left(A, \dfrac{\pi}{3}\right)$.
    \item Par définition de la rotation $r$, on a $AC = AB$ (conservation de la distance au centre). On retrouve bien deux côtés égaux du triangle équilatéral.
    \item La rotation $r'$ est la réciproque de $r$ (même centre, angle opposé $-\dfrac{\pi}{3}$). Comme $r(B) = C$, on a $r'(C) = B$. De plus, $r'$ envoie $B$ sur le point $D$ tel que $ABD$ soit équilatéral direct « de l'autre côté » : $r'(B)$ est le symétrique de $C$ par rapport à la droite $(AB)$. (En particulier $r'(B) \neq C$.)
    \item Le triangle $AMM'$ a pour angle au sommet $A$ la valeur $\dfrac{\pi}{3}$ et vérifie $AM = AM'$ : il est donc isocèle avec un angle de $60°$, donc équilatéral. Ainsi $MM' = AM$.
\end{enumerate}

### Problème 2 : Carré et rotation d'un quart de tour
\begin{enonce}
Soit $ABCD$ un carré \textbf{direct} de centre $O$ (les sommets $A$, $B$, $C$, $D$ se succèdent dans le sens direct). On note $r$ la rotation de centre $O$ et d'angle $\dfrac{\pi}{2}$.
\begin{enumerate}
    \item Justifier que $OA = OB = OC = OD$.
    \item Déterminer les images de $A$, $B$, $C$ et $D$ par $r$.
    \item En déduire que le carré $ABCD$ est globalement invariant par $r$.
    \item Déterminer la composée $r \circ r$ et donner l'image de $A$ par cette composée. Que vaut alors le point obtenu par rapport à $A$ ?
    \item Soit $I$ le milieu de $[AB]$. Déterminer l'image $I'$ de $I$ par $r$ et préciser de quel côté du carré il s'agit.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Le centre $O$ d'un carré est le point d'intersection des diagonales, situé à égale distance des quatre sommets (les diagonales sont égales et se coupent en leur milieu). Donc $OA = OB = OC = OD$.
    \item Les quatre sommets sont sur le cercle de centre $O$ et sont séparés deux à deux par un angle au centre de $\dfrac{2\pi}{4} = \dfrac{\pi}{2}$ dans le sens direct. Donc $r(A) = B$, $r(B) = C$, $r(C) = D$ et $r(D) = A$.
    \item L'image du carré $ABCD$ est le quadrilatère $BCDA$, qui est le \textbf{même carré} : $ABCD$ est globalement invariant par $r$.
    \item $r \circ r = r\left(O, \dfrac{\pi}{2} + \dfrac{\pi}{2}\right) = r(O, \pi)$, c'est la symétrie centrale de centre $O$. Son image de $A$ est $(r \circ r)(A) = r(B) = C$. Le point $C$ est donc le symétrique de $A$ par rapport à $O$ : $O$ est le milieu de $[AC]$, ce qui est cohérent car $[AC]$ est une diagonale.
    \item Comme $r$ envoie $A$ sur $B$ et $B$ sur $C$, elle envoie le milieu de $[AB]$ sur le milieu de $[BC]$ (conservation du milieu). Donc $I'$ est le \textbf{milieu du côté $[BC]$}.
\end{enumerate}

### Problème 3 : Composition et reconnaissance d'une symétrie centrale
\begin{enonce}
Dans le plan, on considère un point $O$ et trois rotations de même centre $O$ :
$$r_1 = r\left(O, \frac{\pi}{6}\right), \qquad r_2 = r\left(O, \frac{\pi}{3}\right), \qquad r_3 = r\left(O, \frac{\pi}{2}\right).$$
\begin{enumerate}
    \item Déterminer l'angle de la composée $r_3 \circ r_2 \circ r_1$. Quelle transformation reconnaît-on ?
    \item En déduire, pour un point $M$ d'image $M'$ par cette composée, la position de $O$ par rapport au segment $[MM']$.
    \item Déterminer une rotation $r_4$ de centre $O$ telle que $r_4 \circ r_3 \circ r_2 \circ r_1 = \text{Id}$.
    \item On pose $s = r_2 \circ r_2$. Montrer que $s$ est une rotation dont on précisera l'angle, puis déterminer $s \circ s \circ s$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Les trois rotations ont le même centre $O$, donc leur composée est la rotation de centre $O$ et d'angle la somme :
    $$\frac{\pi}{6} + \frac{\pi}{3} + \frac{\pi}{2} = \frac{\pi}{6} + \frac{2\pi}{6} + \frac{3\pi}{6} = \frac{6\pi}{6} = \pi.$$
    La composée est donc $r(O, \pi)$, c'est-à-dire la \textbf{symétrie centrale} de centre $O$.
    \item Pour la symétrie centrale de centre $O$, le point $O$ est le \textbf{milieu} du segment $[MM']$ (on a $\overrightarrow{OM'} = -\overrightarrow{OM}$).
    \item Il faut que la somme totale des angles soit nulle modulo $2\pi$. La composée des trois premières vaut $r(O, \pi)$ ; on prend donc $r_4 = r(O, -\pi)$ (ou $r(O, \pi)$, qui est sa propre réciproque), car $r(O,\pi) \circ r(O,\pi) = r(O, 2\pi) = \text{Id}$.
    \item $s = r_2 \circ r_2 = r\left(O, \dfrac{\pi}{3} + \dfrac{\pi}{3}\right) = r\left(O, \dfrac{2\pi}{3}\right)$ : c'est bien une rotation de centre $O$ et d'angle $\dfrac{2\pi}{3}$. Alors
    $$s \circ s \circ s = r\left(O, 3 \times \frac{2\pi}{3}\right) = r(O, 2\pi) = \text{Id}.$$
\end{enumerate}
