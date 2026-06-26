### Problème 1 : Barre articulée maintenue horizontale
\begin{enonce}
Une barre homogène $OA$, de longueur $L = 1{,}2\ \text{m}$ et de poids $P = 30\ \text{N}$, est mobile autour d'un axe horizontal passant par $O$. Son poids s'applique en son centre $G$, situé à la distance $\frac{L}{2}$ de l'axe. Pour la maintenir horizontale, on exerce en $A$ une force verticale $\vec{F}$ dirigée vers le haut.
\begin{enumerate}
    \item Faire le bilan des forces exercées sur la barre et préciser celles dont le moment par rapport à l'axe est nul.
    \item En appliquant le théorème des moments par rapport à $O$, déterminer l'intensité $F$.
    \item On suspend de plus en $A$ une charge de poids $Q = 10\ \text{N}$. Calculer la nouvelle intensité $F'$ de la force à exercer en $A$ pour maintenir l'équilibre.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Les forces sont : le poids $\vec{P}$ appliqué en $G$, la force $\vec{F}$ appliquée en $A$, et la réaction $\vec{R}$ de l'axe appliquée en $O$. La droite d'action de $\vec{R}$ passe par l'axe : son moment est nul, elle n'intervient pas dans le théorème des moments.
    \item Le poids tend à faire tourner la barre dans un sens, la force $\vec{F}$ dans l'autre. Le théorème des moments par rapport à $O$ s'écrit :
    $$F \times L = P \times \dfrac{L}{2} \quad\Rightarrow\quad F = \dfrac{P}{2} = \dfrac{30}{2} = 15\ \text{N}.$$
    \item La charge $Q$, appliquée en $A$ à la distance $L$, ajoute un moment dans le même sens que le poids. L'équilibre des moments devient :
    $$F' \times L = P \times \dfrac{L}{2} + Q \times L.$$
    On divise par $L$ :
    $$F' = \dfrac{P}{2} + Q = 15 + 10 = 25\ \text{N}.$$
\end{enumerate}

### Problème 2 : Treuil à manivelle
\begin{enonce}
Un treuil est constitué d'un cylindre de rayon $r = 0{,}05\ \text{m}$, solidaire d'une manivelle de longueur $R = 0{,}25\ \text{m}$, l'ensemble pouvant tourner autour de l'axe du cylindre. Un câble enroulé sur le cylindre soutient une charge de poids $P = 200\ \text{N}$. On exerce à l'extrémité de la manivelle une force $\vec{F}$ perpendiculaire à celle-ci.
\begin{enumerate}
    \item Donner le bras de levier de la tension du câble, puis celui de la force $\vec{F}$, par rapport à l'axe.
    \item En appliquant le théorème des moments, déterminer l'intensité $F$ nécessaire pour maintenir la charge en équilibre.
    \item De quel facteur l'effort à fournir serait-il modifié si l'on doublait la longueur de la manivelle ?
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item À l'équilibre, la tension du câble est égale au poids de la charge, $T = P$. Son bras de levier est le rayon du cylindre, $r$. La force $\vec{F}$ étant perpendiculaire à la manivelle, son bras de levier est la longueur $R$.
    \item Le théorème des moments par rapport à l'axe donne :
    $$F \times R = P \times r \quad\Rightarrow\quad F = \dfrac{P \times r}{R} = \dfrac{200 \times 0{,}05}{0{,}25} = 40\ \text{N}.$$
    Il suffit d'une force de $40\ \text{N}$ pour retenir une charge de $200\ \text{N}$.
    \item En doublant $R$ (soit $R' = 0{,}50\ \text{m}$), l'effort devient $F' = \dfrac{200 \times 0{,}05}{0{,}50} = 20\ \text{N}$ : la force à fournir est divisée par deux. Plus la manivelle est longue, plus le treuil est facile à actionner.
\end{enumerate}

### Problème 3 : Enseigne soutenue par un câble
\begin{enonce}
Une barre horizontale $OA$, de longueur $L = 2{,}0\ \text{m}$ et de poids négligeable, est articulée en $O$ sur un mur vertical. Son extrémité $A$ est reliée au mur par un câble qui fait un angle $\alpha = 30^\circ$ avec la barre ; la tension $\vec{T}$ du câble s'exerce le long de celui-ci. Une enseigne de poids $P = 120\ \text{N}$ est suspendue en $A$.
\begin{enumerate}
    \item Exprimer le bras de levier de la tension $\vec{T}$ par rapport à l'axe $O$, puis le calculer.
    \item En appliquant le théorème des moments par rapport à $O$, déterminer l'intensité de la tension $T$.
    \item Que devient la tension si le câble fait un angle $\alpha' = 45^\circ$ avec la barre ? Commenter.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item La tension est appliquée en $A$, à la distance $L$ de l'axe, et fait l'angle $\alpha$ avec la barre. Son bras de levier (distance perpendiculaire de $O$ à la droite d'action) vaut :
    $$d_T = L \times \sin\alpha = 2{,}0 \times \sin 30^\circ = 2{,}0 \times 0{,}50 = 1{,}0\ \text{m}.$$
    \item Le poids $\vec{P}$, appliqué en $A$, a pour bras de levier $L$ (force verticale, barre horizontale). Le théorème des moments par rapport à $O$ donne :
    $$T \times d_T = P \times L \quad\Rightarrow\quad T = \dfrac{P \times L}{d_T} = \dfrac{P \times L}{L \sin\alpha} = \dfrac{P}{\sin\alpha} = \dfrac{120}{0{,}50} = 240\ \text{N}.$$
    \item Pour $\alpha' = 45^\circ$, $\sin 45^\circ \approx 0{,}71$, donc :
    $$T' = \dfrac{P}{\sin\alpha'} = \dfrac{120}{0{,}71} \approx 170\ \text{N}.$$
    Plus le câble se rapproche de la verticale (angle plus grand), plus son bras de levier augmente et plus la tension nécessaire diminue.
\end{enumerate}
