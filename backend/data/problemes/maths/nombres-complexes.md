### Problème 1 : Étude géométrique et rotations
\begin{enonce}
Dans le plan complexe rapporté à un repère orthonormé direct $(O, \vec{u}, \vec{v})$, on considère les points $A, B$ et $C$ d'affixes respectives :
\[
z_A = \iud, \quad z_B = \sqrt{3}, \quad z_C = \sqrt{3} + \iud
\]
\begin{enumerate}
    \item Placer les points dans le plan complexe.
    \item Montrer que le triangle $OBC$ est rectangle en $B$.
    \item Soit $R$ la rotation de centre $O$ et d'angle $\frac{\pi}{3}$. Déterminer l'affixe du point $A'$ image de $A$ par $R$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Les coordonnées cartésiennes des points sont $A(0, 1)$, $B(\sqrt{3}, 0)$ et $C(\sqrt{3}, 1)$.
    \item Pour montrer que le triangle $OBC$ est rectangle en $B$, calculons le rapport :
    \[
    \frac{z_C - z_B}{z_O - z_B} = \frac{\sqrt{3} + \iud - \sqrt{3}}{0 - \sqrt{3}} = \frac{\iud}{-\sqrt{3}} = -\frac{1}{\sqrt{3}}\iud
    \]
    Le quotient est un imaginaire pur. Les vecteurs $\vec{BC}$ et $\vec{BO}$ sont donc orthogonaux. Le triangle $OBC$ est ainsi rectangle en $B$.
    \item La rotation $R$ a pour centre $O(0)$ et pour angle $\frac{\pi}{3}$. Son écriture complexe est :
    \[
    z' = e^{\iud\frac{\pi}{3}} z
    \]
    Calculons l'affixe de $A'$ :
    \[
    z_{A'} = e^{\iud\frac{\pi}{3}} z_A = \left(\frac{1}{2} + \iud\frac{\sqrt{3}}{2}\right)\iud = \frac{1}{2}\iud - \frac{\sqrt{3}}{2} = -\frac{\sqrt{3}}{2} + \frac{1}{2}\iud
    \]
\end{enumerate}

### Problème 2 : Cocyclicité et alignement
\begin{enonce}
Soient quatre points distincts $A, B, C, D$ d'affixes respectives :
\[
z_A = -2, \quad z_B = 2\iud, \quad z_C = 2, \quad z_D = -2\iud
\]
\begin{enumerate}
    \item Démontrer que les quatre points appartiennent à un même cercle dont on précisera le centre et le rayon.
    \item Calculer le rapport complexe $\frac{z_C - z_A}{z_B - z_D}$. En déduire une propriété géométrique des segments $[AC]$ et $[BD]$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Calculons le module de chaque affixe :
    - $|z_A| = |-2| = 2$
    - $|z_B| = |2\iud| = 2$
    - $|z_C| = |2| = 2$
    - $|z_D| = |-2\iud| = 2$
    Puisque $OA = OB = OC = OD = 2$, les points $A, B, C, D$ appartiennent au cercle de centre $O$ et de rayon 2.
    \item Calculons le quotient :
    \[
    \frac{z_C - z_A}{z_B - z_D} = \frac{2 - (-2)}{2\iud - (-2\iud)} = \frac{4}{4\iud} = \frac{1}{\iud} = -\iud
    \]
    - Puisque le module du quotient vaut $|-\iud| = 1$, on a $AC = BD$.
    - Puisque l'argument de $-\iud$ vaut $-\frac{\pi}{2} \pmod{2\pi}$, les segments $[AC]$ et $[BD]$ sont orthogonaux.
    Le quadrilatère $ABCD$ est en fait un carré inscrit dans le cercle de rayon 2.
\end{enumerate}
