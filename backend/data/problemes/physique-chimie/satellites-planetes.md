### Problème 1 : Étude d'un satellite de télédétection
\begin{enonce}
Un satellite d'observation de la Terre, de masse $m = 2{,}0\times 10^{3}\ \text{kg}$, décrit une orbite circulaire d'altitude $h = 700\ \text{km}$ autour de la Terre. On suppose que le satellite n'est soumis qu'à la force de gravitation exercée par la Terre, et on néglige tout frottement.

Données :
\begin{itemize}
    \item constante de gravitation universelle : $G = 6{,}67\times 10^{-11}\ \text{N.m}^2\text{.kg}^{-2}$ ;
    \item masse de la Terre : $M_T = 5{,}97\times 10^{24}\ \text{kg}$ ;
    \item rayon de la Terre : $R_T = 6{,}38\times 10^{3}\ \text{km}$.
\end{itemize}
\begin{enumerate}
    \item Donner l'expression de l'intensité de la force de gravitation exercée par la Terre sur le satellite, puis calculer sa valeur.
    \item En appliquant la deuxième loi de Newton dans le repère de Frenet, montrer que le mouvement du satellite est uniforme.
    \item Établir l'expression de la vitesse $v$ du satellite et calculer sa valeur.
    \item En déduire l'expression de la période de révolution $T$ et calculer sa valeur en minutes.
    \item Vérifier que le rapport $\dfrac{T^2}{r^3}$ ne dépend pas des caractéristiques propres du satellite.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Le rayon de l'orbite est $r = R_T + h = 6{,}38\times 10^{6} + 0{,}70\times 10^{6} = 7{,}08\times 10^{6}\ \text{m}$. L'intensité de la force de gravitation est :
    \[
    F = G\,\frac{m\,M_T}{r^2} = 6{,}67\times 10^{-11}\times\frac{2{,}0\times 10^{3}\times 5{,}97\times 10^{24}}{\left(7{,}08\times 10^{6}\right)^2}
    \]
    \[
    F \approx 1{,}59\times 10^{4}\ \text{N}
    \]
    \item Le satellite n'est soumis qu'à la force de gravitation, dirigée du satellite vers le centre de la Terre. La deuxième loi de Newton s'écrit $\vec{F} = m\,\vec{a}$. Dans le repère de Frenet, on décompose l'accélération en une composante tangentielle $a_t = \dfrac{\dd v}{\dd t}$ et une composante normale $a_n = \dfrac{v^2}{r}$. Comme $\vec{F}$ est entièrement radiale (centripète), sa composante tangentielle est nulle :
    \[
    m\,\frac{\dd v}{\dd t} = 0 \implies v = \text{constante}
    \]
    Le mouvement est donc uniforme.
    \item En projetant la deuxième loi de Newton sur l'axe normal (dirigé vers le centre) :
    \[
    G\,\frac{m\,M_T}{r^2} = m\,\frac{v^2}{r}
    \]
    En simplifiant par $m$ et en multipliant par $r$ :
    \[
    v = \sqrt{\frac{G\,M_T}{r}} = \sqrt{\frac{6{,}67\times 10^{-11}\times 5{,}97\times 10^{24}}{7{,}08\times 10^{6}}} \approx 7{,}50\times 10^{3}\ \text{m.s}^{-1}
    \]
    Soit $v \approx 7{,}50\ \text{km.s}^{-1}$.
    \item Le mouvement étant uniforme, le satellite parcourt la circonférence $2\pi r$ en une période $T$ à la vitesse $v$ :
    \[
    T = \frac{2\pi r}{v} = 2\pi\sqrt{\frac{r^3}{G\,M_T}}
    \]
    Application numérique :
    \[
    T = 2\pi\sqrt{\frac{\left(7{,}08\times 10^{6}\right)^3}{6{,}67\times 10^{-11}\times 5{,}97\times 10^{24}}} \approx 5{,}93\times 10^{3}\ \text{s} \approx 99\ \text{min}
    \]
    \item En élevant l'expression de la période au carré :
    \[
    T^2 = 4\pi^2\,\frac{r^3}{G\,M_T} \implies \frac{T^2}{r^3} = \frac{4\pi^2}{G\,M_T}
    \]
    Ce rapport ne dépend que de $G$ et de la masse $M_T$ de l'astre central : il est indépendant de la masse $m$ du satellite et de l'altitude de son orbite. C'est la troisième loi de Kepler.
\end{enumerate}

### Problème 2 : Le satellite géostationnaire
\begin{enonce}
On souhaite placer un satellite de télécommunication de masse $m = 1{,}2\times 10^{3}\ \text{kg}$ sur une orbite géostationnaire : il doit alors paraître immobile pour un observateur terrestre.

Données :
\begin{itemize}
    \item $G = 6{,}67\times 10^{-11}\ \text{N.m}^2\text{.kg}^{-2}$ ;
    \item masse de la Terre : $M_T = 5{,}97\times 10^{24}\ \text{kg}$ ;
    \item rayon de la Terre : $R_T = 6{,}38\times 10^{3}\ \text{km}$ ;
    \item durée du jour sidéral : $T_0 = 86\,164\ \text{s}$.
\end{itemize}
\begin{enumerate}
    \item Préciser les trois conditions que doit remplir l'orbite d'un satellite géostationnaire (plan, sens, période).
    \item Pourquoi la période de révolution doit-elle être égale au jour sidéral $T_0$ et non à $24\ \text{h}$ exactement ?
    \item Établir, à partir de la troisième loi de Kepler, l'expression du rayon $r$ de l'orbite en fonction de $G$, $M_T$ et $T_0$.
    \item Calculer $r$, puis l'altitude $h$ du satellite.
    \item Calculer la vitesse $v$ du satellite sur son orbite.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Pour rester immobile au-dessus d'un point fixe de la Terre, le satellite doit :
    \begin{itemize}
        \item décrire une orbite située dans le plan de l'équateur terrestre ;
        \item tourner dans le même sens que la rotation de la Terre (d'ouest en est) ;
        \item avoir une période de révolution égale à la période de rotation propre de la Terre.
    \end{itemize}
    \item La période de rotation propre de la Terre par rapport aux étoiles est le jour sidéral $T_0 = 86\,164\ \text{s}$, légèrement inférieur à $24\ \text{h} = 86\,400\ \text{s}$ (jour solaire). C'est cette rotation propre, et non le jour solaire, qui doit être synchronisée avec le mouvement du satellite pour qu'il reste fixe par rapport au sol.
    \item En orbite circulaire, la gravitation est centripète : $G\dfrac{m\,M_T}{r^2} = m\dfrac{v^2}{r}$, d'où $v = \sqrt{\dfrac{G\,M_T}{r}}$ et $T = \dfrac{2\pi r}{v} = 2\pi\sqrt{\dfrac{r^3}{G\,M_T}}$. La troisième loi de Kepler donne :
    \[
    T_0^2 = \frac{4\pi^2}{G\,M_T}\,r^3 \implies r = \left(\frac{G\,M_T\,T_0^2}{4\pi^2}\right)^{1/3}
    \]
    \item Application numérique :
    \[
    r = \left(\frac{6{,}67\times 10^{-11}\times 5{,}97\times 10^{24}\times\left(86\,164\right)^2}{4\pi^2}\right)^{1/3} \approx 4{,}22\times 10^{7}\ \text{m}
    \]
    L'altitude vaut alors :
    \[
    h = r - R_T = 4{,}22\times 10^{7} - 6{,}38\times 10^{6} \approx 3{,}58\times 10^{7}\ \text{m} \approx 35\,800\ \text{km}
    \]
    \item La vitesse du satellite est :
    \[
    v = \sqrt{\frac{G\,M_T}{r}} = \sqrt{\frac{6{,}67\times 10^{-11}\times 5{,}97\times 10^{24}}{4{,}22\times 10^{7}}} \approx 3{,}07\times 10^{3}\ \text{m.s}^{-1}
    \]
    Soit environ $3{,}07\ \text{km.s}^{-1}$. On peut vérifier : $\dfrac{2\pi r}{v} = \dfrac{2\pi\times 4{,}22\times 10^{7}}{3{,}07\times 10^{3}} \approx 8{,}6\times 10^{4}\ \text{s}$, ce qui correspond bien au jour sidéral.
\end{enumerate}

### Problème 3 : Les lois de Kepler appliquées aux planètes du système solaire
\begin{enonce}
On étudie le mouvement de la Terre et de Mars autour du Soleil. On admet que leurs orbites sont quasi circulaires et on assimile le Soleil à un point matériel fixe de masse $M_S$.

Données :
\begin{itemize}
    \item $G = 6{,}67\times 10^{-11}\ \text{N.m}^2\text{.kg}^{-2}$ ;
    \item rayon de l'orbite terrestre : $r_T = 1{,}50\times 10^{11}\ \text{m}$ ;
    \item période de révolution de la Terre : $T_T = 365{,}25\ \text{jours}$ ;
    \item rayon de l'orbite de Mars : $r_M = 2{,}28\times 10^{11}\ \text{m}$.
\end{itemize}
\begin{enumerate}
    \item Énoncer les trois lois de Kepler.
    \item Montrer que pour toute planète en orbite circulaire autour du Soleil, le rapport $\dfrac{T^2}{r^3}$ a la même valeur. Exprimer cette constante.
    \item Calculer la valeur de cette constante à partir des données relatives à la Terre.
    \item En déduire la période de révolution $T_M$ de Mars, exprimée en années terrestres.
    \item Déterminer la masse $M_S$ du Soleil.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Les trois lois de Kepler :
    \begin{itemize}
        \item \textbf{Première loi (loi des orbites)} : dans le référentiel héliocentrique, chaque planète décrit une orbite elliptique dont le Soleil occupe l'un des foyers.
        \item \textbf{Deuxième loi (loi des aires)} : le rayon vecteur reliant le Soleil à la planète balaie des aires égales pendant des durées égales.
        \item \textbf{Troisième loi} : le carré de la période de révolution est proportionnel au cube du demi-grand axe $a$ de l'orbite : $\dfrac{T^2}{a^3} = \text{constante}$, la même pour toutes les planètes.
    \end{itemize}
    \item Pour une orbite circulaire de rayon $r$, la gravitation est centripète :
    \[
    G\,\frac{m\,M_S}{r^2} = m\,\frac{v^2}{r} \implies v^2 = \frac{G\,M_S}{r}
    \]
    Avec $v = \dfrac{2\pi r}{T}$, on a $v^2 = \dfrac{4\pi^2 r^2}{T^2}$, d'où :
    \[
    \frac{4\pi^2 r^2}{T^2} = \frac{G\,M_S}{r} \implies \frac{T^2}{r^3} = \frac{4\pi^2}{G\,M_S}
    \]
    Cette constante ne dépend que de $G$ et de la masse $M_S$ du Soleil : elle est donc identique pour toutes les planètes.
    \item Avec $T_T = 365{,}25\times 24\times 3600 = 3{,}156\times 10^{7}\ \text{s}$ :
    \[
    \frac{T_T^2}{r_T^3} = \frac{\left(3{,}156\times 10^{7}\right)^2}{\left(1{,}50\times 10^{11}\right)^3} \approx 2{,}95\times 10^{-19}\ \text{s}^2\text{.m}^{-3}
    \]
    \item Comme le rapport est le même pour Mars et la Terre, $\dfrac{T_M^2}{r_M^3} = \dfrac{T_T^2}{r_T^3}$, donc :
    \[
    T_M = T_T\left(\frac{r_M}{r_T}\right)^{3/2}
    \]
    Avec $\dfrac{r_M}{r_T} = \dfrac{2{,}28\times 10^{11}}{1{,}50\times 10^{11}} = 1{,}52$ :
    \[
    T_M = 1{,}00\times (1{,}52)^{3/2} \approx 1{,}87\ \text{année}
    \]
    La période de révolution de Mars est d'environ $1{,}87$ an, soit près de $687$ jours.
    \item À partir de la constante de Kepler :
    \[
    \frac{T^2}{r^3} = \frac{4\pi^2}{G\,M_S} \implies M_S = \frac{4\pi^2}{G}\cdot\frac{r_T^3}{T_T^2}
    \]
    \[
    M_S = \frac{4\pi^2}{6{,}67\times 10^{-11}}\times\frac{\left(1{,}50\times 10^{11}\right)^3}{\left(3{,}156\times 10^{7}\right)^2} \approx 2{,}01\times 10^{30}\ \text{kg}
    \]
    Cette valeur est en bon accord avec la masse connue du Soleil.
\end{enumerate}
