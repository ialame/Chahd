### Exercice 1 : Reconnaître les éléments d'une rotation
\begin{enonce}
On considère la rotation $r$ de centre $O$ et d'angle $\theta = \dfrac{\pi}{3}$.
\begin{enumerate}
    \item Quelle est l'image du point $O$ par $r$ ?
    \item Soit $M$ un point tel que $OM = 4$. Quelle est la distance $OM'$, où $M' = r(M)$ ? Justifier.
    \item Donner la mesure de l'angle orienté $(\widehat{\overrightarrow{OM}, \overrightarrow{OM'}})$.
    \item Quelle est la rotation réciproque $r^{-1}$ ?
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Le centre est invariant : l'image de $O$ est $O$ lui-même.
    \item Une rotation conserve les distances (c'est une isométrie), et par définition $OM' = OM$. Donc $OM' = 4$.
    \item Par définition de la rotation, $(\widehat{\overrightarrow{OM}, \overrightarrow{OM'}}) = \theta = \dfrac{\pi}{3} \pmod{2\pi}$.
    \item La réciproque d'une rotation est la rotation de même centre et d'angle opposé : $r^{-1} = r\left(O, -\dfrac{\pi}{3}\right)$.
\end{enumerate}

### Exercice 2 : Symétrie centrale
\begin{enonce}
Soit $r$ la rotation de centre $O$ et d'angle $\theta = \pi$.
\begin{enumerate}
    \item Comment appelle-t-on cette transformation particulière ?
    \item Soit $A$ un point et $A' = r(A)$. Exprimer $\overrightarrow{OA'}$ en fonction de $\overrightarrow{OA}$.
    \item Quelle est la nature du point $O$ pour le segment $[AA']$ ?
    \item Soit $B$ le point de coordonnées $B(3 ; -2)$ dans un repère de centre $O$. Donner les coordonnées de $B' = r(B)$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item La rotation de centre $O$ et d'angle $\pi$ est la \textbf{symétrie centrale} de centre $O$.
    \item On a $\overrightarrow{OA'} = -\overrightarrow{OA}$.
    \item Comme $\overrightarrow{OA'} = -\overrightarrow{OA}$, le point $O$ est le \textbf{milieu} du segment $[AA']$.
    \item Le symétrique de $B(3 ; -2)$ par rapport à $O$ a pour coordonnées les opposées : $B'(-3 ; 2)$.
\end{enumerate}

### Exercice 3 : Image d'un triangle et conservation
\begin{enonce}
Soit $r$ une rotation et $ABC$ un triangle d'images respectives $A'$, $B'$, $C'$ par $r$. On donne $AB = 5$, $BC = 7$, $AC = 4$ et $\widehat{BAC} = 40°$.
\begin{enumerate}
    \item Donner les longueurs $A'B'$, $B'C'$ et $A'C'$. Justifier.
    \item Que peut-on dire de l'angle $\widehat{B'A'C'}$ ?
    \item Le triangle $A'B'C'$ est-il superposable au triangle $ABC$ ? A-t-il la même orientation ?
    \item Si l'aire de $ABC$ vaut $9{,}6$, que vaut l'aire de $A'B'C'$ ?
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Une rotation conserve les distances, donc $A'B' = AB = 5$, $B'C' = BC = 7$ et $A'C' = AC = 4$.
    \item Une rotation conserve les angles : $\widehat{B'A'C'} = \widehat{BAC} = 40°$.
    \item Oui, le triangle $A'B'C'$ est superposable à $ABC$ (mêmes côtés, mêmes angles) et, une rotation conservant l'orientation, il a la \textbf{même orientation}.
    \item Une rotation conserve les aires, donc l'aire de $A'B'C'$ vaut $9{,}6$.
\end{enumerate}

### Exercice 4 : Composée de deux rotations de même centre
\begin{enonce}
Soient $r_1 = r\left(O, \dfrac{\pi}{4}\right)$ et $r_2 = r\left(O, \dfrac{\pi}{2}\right)$ deux rotations de même centre $O$.
\begin{enumerate}
    \item Déterminer la nature et les éléments de la composée $r_2 \circ r_1$.
    \item Les rotations $r_1$ et $r_2$ commutent-elles ? A-t-on $r_2 \circ r_1 = r_1 \circ r_2$ ?
    \item Déterminer l'angle de la composée $r_2 \circ r_2$. Quelle transformation reconnaît-on ?
    \item Quelle rotation faut-il composer avec $r_1$ pour obtenir l'identité ?
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item La composée de deux rotations de même centre est la rotation de centre $O$ dont l'angle est la somme des angles :
    $$r_2 \circ r_1 = r\left(O, \frac{\pi}{4} + \frac{\pi}{2}\right) = r\left(O, \frac{\pi}{4} + \frac{2\pi}{4}\right) = r\left(O, \frac{3\pi}{4}\right).$$
    \item Oui : les rotations de même centre commutent, donc $r_2 \circ r_1 = r_1 \circ r_2 = r\left(O, \dfrac{3\pi}{4}\right)$.
    \item $r_2 \circ r_2 = r\left(O, \dfrac{\pi}{2} + \dfrac{\pi}{2}\right) = r(O, \pi)$ : c'est la \textbf{symétrie centrale} de centre $O$.
    \item Il faut composer avec la réciproque $r\left(O, -\dfrac{\pi}{4}\right)$, car $r\left(O, -\dfrac{\pi}{4}\right) \circ r_1 = r(O, 0) = \text{Id}$.
\end{enumerate}

### Exercice 5 : Triangle équilatéral et rotation
\begin{enonce}
Soit $ABC$ un triangle équilatéral \textbf{direct} de centre de gravité $O$. On note $r$ la rotation de centre $O$ et d'angle $\dfrac{2\pi}{3}$.
\begin{enumerate}
    \item Justifier que $OA = OB = OC$.
    \item Déterminer les images des points $A$, $B$ et $C$ par $r$.
    \item En déduire l'image du triangle $ABC$ par $r$.
    \item Déterminer l'image de $A$ par la composée $r \circ r$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Dans un triangle équilatéral, le centre de gravité $O$ coïncide avec le centre du cercle circonscrit : il est donc équidistant des trois sommets, d'où $OA = OB = OC$.
    \item Les sommets sont sur un même cercle de centre $O$, séparés par des angles $(\widehat{\overrightarrow{OA}, \overrightarrow{OB}}) = (\widehat{\overrightarrow{OB}, \overrightarrow{OC}}) = (\widehat{\overrightarrow{OC}, \overrightarrow{OA}}) = \dfrac{2\pi}{3}$ (sens direct). Donc $r(A) = B$, $r(B) = C$ et $r(C) = A$.
    \item L'image du triangle $ABC$ est le triangle $BCA$, c'est-à-dire le triangle $ABC$ lui-même : il est \textbf{globalement invariant} par $r$.
    \item $r \circ r = r\left(O, \dfrac{2\pi}{3} + \dfrac{2\pi}{3}\right) = r\left(O, \dfrac{4\pi}{3}\right)$. Comme $r(A) = B$ puis $r(B) = C$, on a $(r \circ r)(A) = C$.
\end{enumerate}

### Exercice 6 : Image d'un cercle et d'une droite
\begin{enonce}
Soit $r$ la rotation de centre $O$ et d'angle $\dfrac{\pi}{2}$.
\begin{enumerate}
    \item Soit $\mathcal{C}$ le cercle de centre $I$ et de rayon $R = 3$. Décrire l'image $\mathcal{C}'$ de $\mathcal{C}$ par $r$.
    \item Soit $(D)$ une droite. Quelle est la nature de l'image $(D')$ de $(D)$ par $r$ ?
    \item Soient $(D_1)$ et $(D_2)$ deux droites perpendiculaires. Que peut-on dire de leurs images $(D_1')$ et $(D_2')$ ?
    \item Soit $J$ le milieu d'un segment $[MN]$. Que représente $J' = r(J)$ pour le segment $[M'N']$ ?
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Une rotation transforme un cercle en un cercle de même rayon, de centre l'image du centre. Donc $\mathcal{C}'$ est le cercle de centre $I' = r(I)$ et de rayon $R = 3$.
    \item Une rotation transforme une droite en une droite : $(D')$ est une droite.
    \item Une rotation conserve l'orthogonalité, donc $(D_1')$ et $(D_2')$ sont également \textbf{perpendiculaires}.
    \item Une rotation conserve le milieu : $J' = r(J)$ est le \textbf{milieu} du segment $[M'N']$.
\end{enumerate}
