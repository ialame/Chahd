### Problème 1 : Étude dynamique du rail de Laplace
\begin{enonce}
Une tige conductrice $MN$, de longueur $l = 0{,}10\ \text{m}$ et de masse $m = 20\ \text{g}$, peut glisser sans frottement sur deux rails horizontaux reliés à un générateur. Elle est parcourue par un courant $I = 4{,}0\ \text{A}$ et plongée dans un champ magnétique uniforme $\vec{B}$ **vertical**, de valeur $B = 0{,}50\ \text{T}$, perpendiculaire à la tige. On prend $g = 10\ \text{N}\cdot\text{kg}^{-1}$.



\begin{enumerate}
    \item Préciser la direction et le sens de la force de Laplace $\vec{F}$, et calculer sa valeur.
    \item La tige partant du repos, déterminer l'accélération $a_0$ qu'elle acquiert (frottements négligés).
    \item On tient désormais compte d'une force de frottement constante $f = 0{,}050\ \text{N}$ qui s'oppose au mouvement. Calculer la nouvelle accélération $a$.
    \item En supposant le mouvement uniformément accéléré, calculer la vitesse $v$ atteinte par la tige après avoir parcouru la distance $d = 0{,}40\ \text{m}$ à partir du repos.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Le champ étant vertical et la tige horizontale, $\vec{F}$ est **horizontale**, perpendiculaire à la tige, dans le plan des rails (sens donné par la règle des trois doigts). Comme $\alpha = 90^\circ$ :
    $$F = B\,I\,l = 0{,}50 \times 4{,}0 \times 0{,}10 = 0{,}20\ \text{N}.$$
    \item Le poids et la réaction des rails se compensent verticalement ; la force de Laplace est la seule force horizontale. La deuxième loi de Newton donne $F = m\,a_0$ avec $m = 0{,}020\ \text{kg}$ :
    $$a_0 = \dfrac{F}{m} = \dfrac{0{,}20}{0{,}020} = 10\ \text{m}\cdot\text{s}^{-2}.$$
    \item Avec le frottement opposé au mouvement, la résultante horizontale vaut $F - f$ :
    $$a = \dfrac{F - f}{m} = \dfrac{0{,}20 - 0{,}050}{0{,}020} = \dfrac{0{,}15}{0{,}020} = 7{,}5\ \text{m}\cdot\text{s}^{-2}.$$
    \item Pour un mouvement rectiligne uniformément accéléré partant du repos, $v^2 = 2\,a\,d$, donc :
    $$v = \sqrt{2\,a\,d} = \sqrt{2 \times 7{,}5 \times 0{,}40} = \sqrt{6{,}0} \approx 2{,}4\ \text{m}\cdot\text{s}^{-1}.$$
\end{enumerate}

### Problème 2 : Équilibre d'une tige suspendue
\begin{enonce}
Une tige conductrice $MN$ horizontale, de longueur $l = 0{,}20\ \text{m}$ et de masse $m = 15\ \text{g}$, est suspendue par deux fils conducteurs souples et légers à un support fixe. Un champ magnétique $\vec{B}$ **horizontal**, perpendiculaire à la tige, est appliqué. Lorsqu'un courant $I$ traverse la tige, la force de Laplace est horizontale et les fils s'écartent de la verticale d'un angle $\theta$. On prend $g = 10\ \text{N}\cdot\text{kg}^{-1}$.



\begin{enumerate}
    \item Faire le bilan des forces appliquées à la tige à l'équilibre.
    \item Montrer qu'à l'équilibre $\tan\theta = \dfrac{B\,I\,l}{m\,g}$.
    \item Calculer l'angle $\theta$ pour $B = 0{,}40\ \text{T}$ et $I = 3{,}0\ \text{A}$.
    \item Quelle intensité $I'$ faudrait-il pour obtenir un écart $\theta' = 30^\circ$ ?
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item La tige est soumise à trois forces : son poids $\vec{P}$ (vertical, vers le bas, $P = mg$), la force de Laplace $\vec{F}$ (horizontale, $F = B\,I\,l$) et la tension résultante $\vec{T}$ des deux fils (dirigée le long des fils).
    \item À l'équilibre, $\vec{P} + \vec{F} + \vec{T} = \vec{0}$. La tension équilibre la somme du poids et de la force de Laplace ; elle est portée par les fils, inclinés de $\theta$ sur la verticale. En projetant :
    - horizontale : $T\sin\theta = F = B\,I\,l$ ;
    - verticale : $T\cos\theta = P = m\,g$.

    En divisant membre à membre :
    $$\tan\theta = \dfrac{B\,I\,l}{m\,g}.$$
    \item Application numérique : $F = B\,I\,l = 0{,}40 \times 3{,}0 \times 0{,}20 = 0{,}24\ \text{N}$ et $P = m\,g = 0{,}015 \times 10 = 0{,}15\ \text{N}$. Donc :
    $$\tan\theta = \dfrac{0{,}24}{0{,}15} = 1{,}6 \quad\Longrightarrow\quad \theta = \arctan(1{,}6) \approx 58^\circ.$$
    \item On veut $\tan\theta' = \tan 30^\circ \approx 0{,}577$. De $\tan\theta' = \dfrac{B\,I'\,l}{m\,g}$ on tire :
    $$I' = \dfrac{m\,g\,\tan\theta'}{B\,l} = \dfrac{0{,}15 \times 0{,}577}{0{,}40 \times 0{,}20} = \dfrac{0{,}0866}{0{,}080} \approx 1{,}1\ \text{A}.$$
\end{enumerate}

### Problème 3 : Roue de Barlow, un moteur électrique
\begin{enonce}
Une roue de Barlow est constituée d'un disque métallique tournant autour d'un axe horizontal. Sa partie inférieure trempe dans du mercure conducteur et plonge entre les pôles d'un aimant. La portion de rayon située dans le champ a une longueur $l = 5{,}0\ \text{cm}$, parcourue par un courant $I = 12\ \text{A}$ dans un champ $B = 0{,}20\ \text{T}$ perpendiculaire au rayon. La force de Laplace s'applique à la distance $d = 7{,}5\ \text{cm}$ de l'axe.
\begin{enumerate}
    \item Calculer la valeur de la force de Laplace $F$ exercée sur la portion de rayon.
    \item Calculer le moment $\mathcal{M}$ de cette force par rapport à l'axe. Justifier que la roue se met à tourner.
    \item La roue tourne en régime permanent à la fréquence $n = 120\ \text{tr}\cdot\text{min}^{-1}$. Calculer sa vitesse angulaire $\omega$, puis la puissance mécanique $P$ développée par la force de Laplace.
    \item En déduire le travail $W$ fourni par cette force pendant un tour complet.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Avec $l = 5{,}0\ \text{cm} = 0{,}050\ \text{m}$ et $\alpha = 90^\circ$ :
    $$F = B\,I\,l = 0{,}20 \times 12 \times 0{,}050 = 0{,}12\ \text{N}.$$
    \item La force étant perpendiculaire au rayon, son bras de levier vaut $d$ :
    $$\mathcal{M} = F \times d = 0{,}12 \times 0{,}075 = 9{,}0\times 10^{-3}\ \text{N}\cdot\text{m}.$$
    Ce moment, non nul et toujours dans le même sens, fait tourner la roue de manière continue : l'énergie électrique est convertie en énergie mécanique.
    \item La vitesse angulaire :
    $$\omega = \dfrac{2\pi n}{60} = \dfrac{2\pi \times 120}{60} = 4\pi \approx 12{,}6\ \text{rad}\cdot\text{s}^{-1}.$$
    La puissance mécanique développée par le moment :
    $$P = \mathcal{M}\,\omega = 9{,}0\times 10^{-3} \times 12{,}6 \approx 0{,}11\ \text{W}.$$
    \item Pendant un tour complet, l'angle balayé est $2\pi\ \text{rad}$, donc :
    $$W = \mathcal{M} \times 2\pi = 9{,}0\times 10^{-3} \times 2\pi \approx 5{,}7\times 10^{-2}\ \text{J}.$$
\end{enumerate}
