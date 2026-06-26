### Problème 1 : Nature d'un quadrilatère
\begin{enonce}
Dans un repère orthonormé, on considère les points $A(1\,;\,1)$, $B(4\,;\,2)$, $C(5\,;\,5)$ et $D(2\,;\,4)$.
\begin{enumerate}
    \item Calculer les coordonnées des vecteurs $\overrightarrow{AB}$ et $\overrightarrow{DC}$. Que peut-on en déduire pour le quadrilatère $ABCD$ ?
    \item Calculer les longueurs $AB$ et $AD$. Quelle précision apporte ce calcul sur la nature de $ABCD$ ?
    \item Calculer $\overrightarrow{AC}\cdot\overrightarrow{BD}$. Interpréter géométriquement le résultat.
    \item Conclure sur la nature précise du quadrilatère $ABCD$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item $\overrightarrow{AB}\begin{pmatrix} 4-1 \\ 2-1 \end{pmatrix} = \begin{pmatrix} 3 \\ 1 \end{pmatrix}$ et $\overrightarrow{DC}\begin{pmatrix} 5-2 \\ 5-4 \end{pmatrix} = \begin{pmatrix} 3 \\ 1 \end{pmatrix}$. On a $\overrightarrow{AB} = \overrightarrow{DC}$, donc $ABCD$ est un **parallélogramme**.
    \item $AB = \sqrt{3^2 + 1^2} = \sqrt{10}$. Pour $\overrightarrow{AD}\begin{pmatrix} 1 \\ 3 \end{pmatrix}$, on obtient $AD = \sqrt{1^2 + 3^2} = \sqrt{10}$. Deux côtés consécutifs sont égaux ($AB = AD$) : le parallélogramme est un **losange**.
    \item Les diagonales sont $\overrightarrow{AC}\begin{pmatrix} 4 \\ 4 \end{pmatrix}$ et $\overrightarrow{BD}\begin{pmatrix} -2 \\ 2 \end{pmatrix}$. Alors :
    $$\overrightarrow{AC}\cdot\overrightarrow{BD} = 4\times(-2) + 4\times 2 = -8 + 8 = 0.$$
    Les diagonales $[AC]$ et $[BD]$ sont donc perpendiculaires.
    \item Le quadrilatère $ABCD$ est un parallélogramme à côtés consécutifs égaux et à diagonales perpendiculaires : c'est un **losange**. (Comme $AC = \sqrt{32} = 4\sqrt{2} \neq BD = \sqrt{8} = 2\sqrt{2}$, ce n'est pas un carré.)
\end{enumerate}

### Problème 2 : Calculs avec les normes et identités remarquables
\begin{enonce}
Soient $\vec{u}$ et $\vec{v}$ deux vecteurs du plan tels que :
$$\|\vec{u}\| = 3,\qquad \|\vec{v}\| = 5,\qquad \vec{u}\cdot\vec{v} = -6.$$
\begin{enumerate}
    \item Calculer $\|\vec{u} + \vec{v}\|$.
    \item Calculer $\|\vec{u} - \vec{v}\|$.
    \item Déterminer une mesure de l'angle $(\vec{u},\vec{v})$, arrondie au degré.
    \item Développer et calculer $(2\vec{u} + \vec{v})\cdot(\vec{u} - 3\vec{v})$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item D'après l'identité $\|\vec{u} + \vec{v}\|^2 = \|\vec{u}\|^2 + 2\,\vec{u}\cdot\vec{v} + \|\vec{v}\|^2$ :
    $$\|\vec{u} + \vec{v}\|^2 = 9 + 2\times(-6) + 25 = 9 - 12 + 25 = 22,$$
    donc $\|\vec{u} + \vec{v}\| = \sqrt{22} \approx 4{,}69$.
    \item De même, $\|\vec{u} - \vec{v}\|^2 = \|\vec{u}\|^2 - 2\,\vec{u}\cdot\vec{v} + \|\vec{v}\|^2 = 9 - 2\times(-6) + 25 = 9 + 12 + 25 = 46$, donc $\|\vec{u} - \vec{v}\| = \sqrt{46} \approx 6{,}78$.
    \item $\cos\big((\vec{u},\vec{v})\big) = \dfrac{\vec{u}\cdot\vec{v}}{\|\vec{u}\|\,\|\vec{v}\|} = \dfrac{-6}{3\times 5} = -\dfrac{6}{15} = -0{,}4$. L'angle est obtus : $(\vec{u},\vec{v}) \approx 114^\circ$.
    \item On développe par bilinéarité :
    $$(2\vec{u} + \vec{v})\cdot(\vec{u} - 3\vec{v}) = 2\,\vec{u}\cdot\vec{u} - 6\,\vec{u}\cdot\vec{v} + \vec{v}\cdot\vec{u} - 3\,\vec{v}\cdot\vec{v}.$$
    En regroupant ($\vec{u}\cdot\vec{u} = \|\vec{u}\|^2$, $\vec{v}\cdot\vec{v} = \|\vec{v}\|^2$, $\vec{v}\cdot\vec{u} = \vec{u}\cdot\vec{v}$) :
    $$= 2\|\vec{u}\|^2 - 5\,\vec{u}\cdot\vec{v} - 3\|\vec{v}\|^2 = 2\times 9 - 5\times(-6) - 3\times 25 = 18 + 30 - 75 = -27.$$
\end{enumerate}

### Problème 3 : Un terrain triangulaire (Al-Kashi)
\begin{enonce}
Un terrain a la forme d'un triangle $ABC$. On mesure deux côtés et l'angle qu'ils forment :
$$AB = 50\ \text{m},\qquad AC = 30\ \text{m},\qquad \widehat{A} = 120^\circ.$$
\begin{enumerate}
    \item Calculer la longueur $BC$ du troisième côté.
    \item Déterminer $\cos\widehat{B}$, puis une mesure de l'angle $\widehat{B}$ arrondie au degré.
    \item En déduire une mesure de l'angle $\widehat{C}$.
    \item Calculer l'aire du terrain (on rappelle que l'aire d'un triangle vaut $\tfrac{1}{2}\,AB\times AC\times\sin\widehat{A}$).
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Théorème d'Al-Kashi : $BC^2 = AB^2 + AC^2 - 2\,AB\times AC\times\cos\widehat{A}$. Comme $\cos(120^\circ) = -\tfrac{1}{2}$ :
    $$BC^2 = 50^2 + 30^2 - 2\times 50\times 30\times\left(-\tfrac{1}{2}\right) = 2500 + 900 + 1500 = 4900,$$
    donc $BC = \sqrt{4900} = 70$ m.
    \item On applique Al-Kashi pour le côté $[AC]$ opposé à $\widehat{B}$ :
    $$AC^2 = AB^2 + BC^2 - 2\,AB\times BC\times\cos\widehat{B},$$
    soit $900 = 2500 + 4900 - 2\times 50\times 70\times\cos\widehat{B} = 7400 - 7000\cos\widehat{B}$. Donc $7000\cos\widehat{B} = 6500$, d'où $\cos\widehat{B} = \dfrac{6500}{7000} = \dfrac{13}{14} \approx 0{,}929$, et $\widehat{B} \approx 22^\circ$.
    \item La somme des angles d'un triangle vaut $180^\circ$ :
    $$\widehat{C} = 180^\circ - \widehat{A} - \widehat{B} \approx 180^\circ - 120^\circ - 22^\circ = 38^\circ.$$
    \item Aire $= \dfrac{1}{2}\,AB\times AC\times\sin\widehat{A} = \dfrac{1}{2}\times 50\times 30\times\sin(120^\circ) = 750\times\dfrac{\sqrt{3}}{2} = 375\sqrt{3} \approx 649{,}5\ \text{m}^2$.
\end{enumerate}
