### Exercice 1 : Force de gravitation universelle Terre-Lune
\begin{enonce}
La Terre, de masse $M_T = 5{,}97\times 10^{24}\ \text{kg}$, et la Lune, de masse $M_L = 7{,}35\times 10^{22}\ \text{kg}$, ont leurs centres séparés d'une distance moyenne $d = 3{,}84\times 10^{8}\ \text{m}$. On donne la constante de gravitation universelle $G = 6{,}67\times 10^{-11}\ \text{N.m}^2\text{.kg}^{-2}$.

Calculer l'intensité $F$ de la force de gravitation exercée par la Terre sur la Lune.
\end{enonce}

\textbf{Solution :}
D'après la loi de gravitation universelle, l'intensité de la force est :
\[
F = G\,\frac{M_T\,M_L}{d^2}
\]
Application numérique :
\[
F = 6{,}67\times 10^{-11}\times\frac{5{,}97\times 10^{24}\times 7{,}35\times 10^{22}}{\left(3{,}84\times 10^{8}\right)^2}
\]
\[
F \approx 1{,}98\times 10^{20}\ \text{N}
\]
D'après le principe des actions réciproques, la Lune exerce sur la Terre une force de même intensité et de sens opposé.

### Exercice 2 : Vitesse d'un satellite en orbite circulaire
\begin{enonce}
Un satellite de masse $m$ décrit une orbite circulaire de rayon $r$ autour de la Terre (masse $M_T = 5{,}97\times 10^{24}\ \text{kg}$). Le rayon de la Terre est $R_T = 6{,}38\times 10^{3}\ \text{km}$ et le satellite évolue à une altitude $h = 800\ \text{km}$. On donne $G = 6{,}67\times 10^{-11}\ \text{N.m}^2\text{.kg}^{-2}$.
\begin{enumerate}
    \item Établir l'expression de la vitesse $v$ du satellite.
    \item Calculer sa valeur.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Le satellite n'est soumis qu'à la force de gravitation, qui joue le rôle de force centripète. Dans le repère de Frenet, en projetant la deuxième loi de Newton sur la direction radiale :
    \[
    G\,\frac{m\,M_T}{r^2} = m\,\frac{v^2}{r}
    \]
    En simplifiant par $m$ et $r$, on obtient :
    \[
    v = \sqrt{\frac{G\,M_T}{r}}
    \]
    \item Le rayon de l'orbite vaut $r = R_T + h = 6{,}38\times 10^{6} + 0{,}80\times 10^{6} = 7{,}18\times 10^{6}\ \text{m}$. Donc :
    \[
    v = \sqrt{\frac{6{,}67\times 10^{-11}\times 5{,}97\times 10^{24}}{7{,}18\times 10^{6}}} \approx 7{,}45\times 10^{3}\ \text{m.s}^{-1}
    \]
    Soit environ $7{,}45\ \text{km.s}^{-1}$.
\end{enumerate}

### Exercice 3 : Mouvement uniforme sur l'orbite circulaire
\begin{enonce}
On considère un satellite en orbite circulaire de rayon $r$ autour d'un astre de masse $M$.

Montrer que le mouvement du satellite est uniforme.
\end{enonce}

\textbf{Solution :}
On a établi que la vitesse vaut $v = \sqrt{\dfrac{G\,M}{r}}$. Comme $G$, $M$ et $r$ sont des constantes, la vitesse $v$ est constante au cours du mouvement : le mouvement est donc uniforme.

On peut aussi le justifier vectoriellement : la seule force, la gravitation, est dirigée vers le centre, donc radiale. Sa composante tangentielle est nulle. Or l'accélération tangentielle s'écrit $a_t = \dfrac{\dd v}{\dd t}$ ; elle est donc nulle, ce qui impose $v = \text{constante}$. Le mouvement circulaire est uniforme.

### Exercice 4 : Période de révolution
\begin{enonce}
Un satellite décrit une orbite circulaire de rayon $r = 7{,}18\times 10^{6}\ \text{m}$ autour de la Terre, à la vitesse $v = 7{,}45\times 10^{3}\ \text{m.s}^{-1}$.
\begin{enumerate}
    \item Établir l'expression de la période $T$ de révolution en fonction de $G$, $M_T$ et $r$.
    \item Calculer $T$ en minutes. On donne $G\,M_T = 3{,}98\times 10^{14}\ \text{m}^3\text{.s}^{-2}$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Le satellite parcourt la circonférence $2\pi r$ à la vitesse constante $v$, donc $T = \dfrac{2\pi r}{v}$. En remplaçant $v = \sqrt{\dfrac{G\,M_T}{r}}$ :
    \[
    T = \frac{2\pi r}{\sqrt{\dfrac{G\,M_T}{r}}} = 2\pi\sqrt{\frac{r^3}{G\,M_T}}
    \]
    \item Application numérique :
    \[
    T = 2\pi\sqrt{\frac{\left(7{,}18\times 10^{6}\right)^3}{3{,}98\times 10^{14}}} \approx 6{,}05\times 10^{3}\ \text{s}
    \]
    Soit $T \approx 101\ \text{min}$, c'est-à-dire environ $1\ \text{h}\ 41\ \text{min}$.
\end{enumerate}

### Exercice 5 : Troisième loi de Kepler
\begin{enonce}
Deux satellites $S_1$ et $S_2$ décrivent des orbites circulaires autour de la Terre, de rayons respectifs $r_1 = 7{,}0\times 10^{6}\ \text{m}$ et $r_2 = 1{,}4\times 10^{7}\ \text{m}$. La période de $S_1$ vaut $T_1 = 97\ \text{min}$.
\begin{enumerate}
    \item Énoncer la troisième loi de Kepler pour des orbites circulaires.
    \item En déduire la période $T_2$ de $S_2$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Pour tout satellite en orbite circulaire de rayon $r$ et de période $T$ autour d'un même astre central de masse $M$, le rapport $\dfrac{T^2}{r^3}$ est une constante :
    \[
    \frac{T^2}{r^3} = \frac{4\pi^2}{G\,M}
    \]
    \item Comme le rapport est le même pour les deux satellites, $\dfrac{T_1^2}{r_1^3} = \dfrac{T_2^2}{r_2^3}$, d'où :
    \[
    T_2 = T_1\sqrt{\left(\frac{r_2}{r_1}\right)^3} = T_1\left(\frac{r_2}{r_1}\right)^{3/2}
    \]
    Avec $\dfrac{r_2}{r_1} = 2$ :
    \[
    T_2 = 97\times 2^{3/2} = 97\times 2{,}83 \approx 274\ \text{min}
    \]
    Soit environ $4\ \text{h}\ 34\ \text{min}$.
\end{enumerate}

### Exercice 6 : Satellite géostationnaire
\begin{enonce}
Un satellite géostationnaire reste immobile au-dessus d'un point fixe de l'équateur terrestre. Sa période de révolution est donc égale à la période de rotation de la Terre, soit $T = 24\ \text{h}$. On donne $G\,M_T = 3{,}98\times 10^{14}\ \text{m}^3\text{.s}^{-2}$ et le rayon terrestre $R_T = 6{,}38\times 10^{3}\ \text{km}$.

Déterminer le rayon $r$ de son orbite, puis son altitude $h$.
\end{enonce}

\textbf{Solution :}
De la troisième loi de Kepler $T^2 = \dfrac{4\pi^2}{G\,M_T}\,r^3$, on tire :
\[
r = \left(\frac{G\,M_T\,T^2}{4\pi^2}\right)^{1/3}
\]
Avec $T = 24\times 3600 = 8{,}64\times 10^{4}\ \text{s}$ :
\[
r = \left(\frac{3{,}98\times 10^{14}\times \left(8{,}64\times 10^{4}\right)^2}{4\pi^2}\right)^{1/3} \approx 4{,}22\times 10^{7}\ \text{m}
\]
L'altitude est alors :
\[
h = r - R_T = 4{,}22\times 10^{7} - 6{,}38\times 10^{6} \approx 3{,}58\times 10^{7}\ \text{m}
\]
Soit environ $h \approx 36\,000\ \text{km}$.

### Exercice 7 : Loi des aires de Kepler
\begin{enonce}
Une planète décrit une orbite elliptique autour du Soleil. Sa distance au Soleil varie entre $r_P = 1{,}47\times 10^{11}\ \text{m}$ (au périhélie) et $r_A = 1{,}52\times 10^{11}\ \text{m}$ (à l'aphélie). Sa vitesse au périhélie est $v_P = 3{,}03\times 10^{4}\ \text{m.s}^{-1}$.
\begin{enumerate}
    \item Énoncer la deuxième loi de Kepler (loi des aires).
    \item En déduire la vitesse $v_A$ de la planète à l'aphélie.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Le segment de droite reliant le Soleil à la planète (rayon vecteur) balaie des aires égales pendant des durées égales. La vitesse de la planète est donc plus grande au périhélie qu'à l'aphélie.
    \item Aux points extrêmes (périhélie et aphélie), le vecteur vitesse est perpendiculaire au rayon vecteur. La loi des aires entraîne la conservation de la quantité $r\,v$ en ces points :
    \[
    r_P\,v_P = r_A\,v_A \implies v_A = \frac{r_P\,v_P}{r_A}
    \]
    Application numérique :
    \[
    v_A = \frac{1{,}47\times 10^{11}\times 3{,}03\times 10^{4}}{1{,}52\times 10^{11}} \approx 2{,}93\times 10^{4}\ \text{m.s}^{-1}
    \]
    La vitesse est bien plus faible à l'aphélie qu'au périhélie.
\end{enumerate}

### Exercice 8 : Masse de la planète centrale
\begin{enonce}
Le satellite Io tourne autour de Jupiter sur une orbite que l'on assimile à un cercle de rayon $r = 4{,}22\times 10^{8}\ \text{m}$ avec une période de révolution $T = 1{,}77\ \text{jours}$. On donne $G = 6{,}67\times 10^{-11}\ \text{N.m}^2\text{.kg}^{-2}$.

Déterminer la masse $M_J$ de Jupiter.
\end{enonce}

\textbf{Solution :}
La troisième loi de Kepler appliquée à l'orbite de Io s'écrit :
\[
\frac{T^2}{r^3} = \frac{4\pi^2}{G\,M_J}
\]
On en tire :
\[
M_J = \frac{4\pi^2\,r^3}{G\,T^2}
\]
Avec $T = 1{,}77\times 24\times 3600 = 1{,}53\times 10^{5}\ \text{s}$ :
\[
M_J = \frac{4\pi^2\times\left(4{,}22\times 10^{8}\right)^3}{6{,}67\times 10^{-11}\times\left(1{,}53\times 10^{5}\right)^2} \approx 1{,}90\times 10^{27}\ \text{kg}
\]
Cette valeur est conforme à la masse connue de Jupiter.
