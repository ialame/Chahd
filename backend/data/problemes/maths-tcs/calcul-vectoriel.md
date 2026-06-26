### Problème 1 : Étude d'un quadrilatère dans un repère orthonormé
\begin{enonce}
Le plan est muni d'un repère **orthonormé** $(O, \vec{i}, \vec{j})$. On considère les points $A(-2\,;\,1)$, $B(2\,;\,3)$ et $C(4\,;\,-1)$.
\begin{enumerate}
    \item Déterminer les coordonnées des vecteurs $\overrightarrow{AB}$, $\overrightarrow{BC}$ et $\overrightarrow{AC}$.
    \item Calculer les longueurs $AB$, $BC$ et $AC$.
    \item Montrer que le triangle $ABC$ est rectangle et isocèle en $B$.
    \item Déterminer les coordonnées du point $D$ tel que $ABCD$ soit un parallélogramme.
    \item Montrer que $ABCD$ est un carré.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item $\overrightarrow{AB}\begin{pmatrix} 2-(-2) \\ 3-1 \end{pmatrix} = \begin{pmatrix} 4 \\ 2 \end{pmatrix}$, $\overrightarrow{BC}\begin{pmatrix} 4-2 \\ -1-3 \end{pmatrix} = \begin{pmatrix} 2 \\ -4 \end{pmatrix}$ et $\overrightarrow{AC}\begin{pmatrix} 4-(-2) \\ -1-1 \end{pmatrix} = \begin{pmatrix} 6 \\ -2 \end{pmatrix}$.
    \item Le repère étant orthonormé :
    $$AB = \sqrt{4^2 + 2^2} = \sqrt{20}, \quad BC = \sqrt{2^2 + (-4)^2} = \sqrt{20}, \quad AC = \sqrt{6^2 + (-2)^2} = \sqrt{40}.$$
    \item On a $AB = BC = \sqrt{20}$, donc le triangle est isocèle en $B$. De plus :
    $$AB^2 + BC^2 = 20 + 20 = 40 = AC^2.$$
    D'après la réciproque du théorème de Pythagore, le triangle $ABC$ est rectangle en $B$. Il est donc **rectangle et isocèle en $B$**.
    \item $ABCD$ est un parallélogramme si et seulement si $\overrightarrow{AB} = \overrightarrow{DC}$. En notant $D(x\,;\,y)$, $\overrightarrow{DC}\begin{pmatrix} 4-x \\ -1-y \end{pmatrix}$, d'où :
    $$\begin{cases} 4 - x = 4 \\ -1 - y = 2 \end{cases} \iff \begin{cases} x = 0 \\ y = -3 \end{cases}.$$
    Donc $D(0\,;\,-3)$.
    \item Calculons les quatre côtés. On a déjà $AB = BC = \sqrt{20}$. De plus $\overrightarrow{DC}\begin{pmatrix} 4 \\ 2 \end{pmatrix}$ donne $CD = \sqrt{20}$, et $\overrightarrow{AD}\begin{pmatrix} 0-(-2) \\ -3-1 \end{pmatrix} = \begin{pmatrix} 2 \\ -4 \end{pmatrix}$ donne $DA = \sqrt{20}$. Les quatre côtés sont égaux : $ABCD$ est un losange. Calculons les diagonales : $AC = \sqrt{40}$ et $\overrightarrow{BD}\begin{pmatrix} 0-2 \\ -3-3 \end{pmatrix} = \begin{pmatrix} -2 \\ -6 \end{pmatrix}$ donne $BD = \sqrt{4 + 36} = \sqrt{40}$. Les diagonales sont égales : le losange est aussi un rectangle. Un quadrilatère à la fois losange et rectangle est un **carré**.
\end{enumerate}

### Problème 2 : Colinéarité, alignement et paramètres
\begin{enonce}
Le plan est muni d'un repère $(O, \vec{i}, \vec{j})$. On donne les points $A(1\,;\,-1)$ et $B(4\,;\,5)$.
\begin{enumerate}
    \item Déterminer les coordonnées du vecteur $\overrightarrow{AB}$.
    \item Le point $F(7\,;\,11)$ appartient-il à la droite $(AB)$ ?
    \item Soit $C(t\,;\,3)$, où $t$ est un réel. Déterminer $t$ pour que les points $A$, $B$ et $C$ soient alignés.
    \item Déterminer le réel $m$ pour que le vecteur $\vec{u}\begin{pmatrix} m+1 \\ 2 \end{pmatrix}$ soit colinéaire à $\overrightarrow{AB}$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item $\overrightarrow{AB}\begin{pmatrix} 4-1 \\ 5-(-1) \end{pmatrix} = \begin{pmatrix} 3 \\ 6 \end{pmatrix}$.
    \item $\overrightarrow{AF}\begin{pmatrix} 7-1 \\ 11-(-1) \end{pmatrix} = \begin{pmatrix} 6 \\ 12 \end{pmatrix} = 2\overrightarrow{AB}$. Les vecteurs $\overrightarrow{AF}$ et $\overrightarrow{AB}$ sont colinéaires, donc $A$, $B$ et $F$ sont alignés : $F$ appartient bien à la droite $(AB)$.
    \item $\overrightarrow{AC}\begin{pmatrix} t-1 \\ 3-(-1) \end{pmatrix} = \begin{pmatrix} t-1 \\ 4 \end{pmatrix}$. Les points sont alignés lorsque $\det(\overrightarrow{AB}, \overrightarrow{AC}) = 0$ :
    $$3 \times 4 - 6 \times (t-1) = 0 \iff 12 - 6t + 6 = 0 \iff 18 - 6t = 0 \iff t = 3.$$
    Donc $C(3\,;\,3)$.
    \item $\vec{u}$ et $\overrightarrow{AB}$ sont colinéaires lorsque leur déterminant est nul :
    $$(m+1) \times 6 - 3 \times 2 = 0 \iff 6m + 6 - 6 = 0 \iff 6m = 0 \iff m = 0.$$
\end{enumerate}

### Problème 3 : Du raisonnement vectoriel aux coordonnées
\begin{enonce}
\textbf{Partie A.} $ABCD$ est un parallélogramme de centre $O$ (point d'intersection de ses diagonales).
\begin{enumerate}
    \item Montrer que $\overrightarrow{AB} + \overrightarrow{AD} = \overrightarrow{AC}$.
    \item Montrer que $\overrightarrow{OA} + \overrightarrow{OC} = \vec{0}$.
    \item Montrer que $\overrightarrow{AC} + \overrightarrow{BD} = 2\overrightarrow{BC}$.
\end{enumerate}
\textbf{Partie B.} Le plan est muni d'un repère $(O, \vec{i}, \vec{j})$. On donne $A(1\,;\,1)$, $B(5\,;\,2)$ et $C(6\,;\,5)$.
\begin{enumerate}
    \item[4.] Déterminer les coordonnées du point $D$ tel que $ABCD$ soit un parallélogramme.
    \item[5.] Déterminer les coordonnées du centre $\Omega$ de ce parallélogramme.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\textbf{Partie A.}
\begin{enumerate}
    \item Comme $ABCD$ est un parallélogramme, $\overrightarrow{AD} = \overrightarrow{BC}$. Donc $\overrightarrow{AB} + \overrightarrow{AD} = \overrightarrow{AB} + \overrightarrow{BC} = \overrightarrow{AC}$ (relation de Chasles). C'est la règle du parallélogramme.
    \item $O$ est le milieu de la diagonale $[AC]$, donc $\overrightarrow{OA}$ et $\overrightarrow{OC}$ sont opposés : $\overrightarrow{OC} = -\overrightarrow{OA}$, d'où $\overrightarrow{OA} + \overrightarrow{OC} = \vec{0}$.
    \item D'une part $\overrightarrow{AC} = \overrightarrow{AB} + \overrightarrow{BC}$. D'autre part, comme $\overrightarrow{CD} = -\overrightarrow{DC} = -\overrightarrow{AB}$,
    $$\overrightarrow{BD} = \overrightarrow{BC} + \overrightarrow{CD} = \overrightarrow{BC} - \overrightarrow{AB}.$$
    En additionnant : $\overrightarrow{AC} + \overrightarrow{BD} = (\overrightarrow{AB} + \overrightarrow{BC}) + (\overrightarrow{BC} - \overrightarrow{AB}) = 2\overrightarrow{BC}$.
\end{enumerate}
\textbf{Partie B.}
\begin{enumerate}
    \item[4.] $ABCD$ est un parallélogramme si et seulement si $\overrightarrow{AB} = \overrightarrow{DC}$. On a $\overrightarrow{AB}\begin{pmatrix} 4 \\ 1 \end{pmatrix}$. En notant $D(x\,;\,y)$, $\overrightarrow{DC}\begin{pmatrix} 6-x \\ 5-y \end{pmatrix}$, d'où :
    $$\begin{cases} 6 - x = 4 \\ 5 - y = 1 \end{cases} \iff \begin{cases} x = 2 \\ y = 4 \end{cases}.$$
    Donc $D(2\,;\,4)$.
    \item[5.] Le centre $\Omega$ est le milieu commun des diagonales. Avec la diagonale $[AC]$ :
    $$\Omega\left( \frac{1+6}{2}\,;\,\frac{1+5}{2} \right) = \Omega\left( \frac{7}{2}\,;\,3 \right).$$
    On vérifie avec $[BD]$ : $\left( \dfrac{5+2}{2}\,;\,\dfrac{2+4}{2} \right) = \left( \dfrac{7}{2}\,;\,3 \right)$. Les deux milieux coïncident.
\end{enumerate}
