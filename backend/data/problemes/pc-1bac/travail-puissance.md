### Problème 1 : Étude d'un téléski
\begin{enonce}
Un téléski tracte un skieur, de masse totale $m = 80\,\text{kg}$, le long d'une piste rectiligne inclinée d'un angle $\alpha = 18^\circ$ par rapport à l'horizontale. La perche exerce sur le skieur une force $\vec{F}$ **parallèle à la pente**, de valeur constante $F = 250\,\text{N}$. Le skieur parcourt $AB = 400\,\text{m}$ à **vitesse constante** $v = 2{,}5\,\text{m}\cdot\text{s}^{-1}$. Les frottements $\vec{f}$, parallèles à la pente, ont pour valeur $f = 35\,\text{N}$. On prend $g = 9{,}8\,\text{N}\cdot\text{kg}^{-1}$.
\begin{enumerate}
    \item Calculer le travail de la force de traction $\vec{F}$ sur le trajet $AB$.
    \item Calculer la hauteur $h$ gravie, puis le travail du poids $\vec{P}$.
    \item Calculer le travail de la force de frottement $\vec{f}$.
    \item Calculer la puissance moyenne développée par la perche. Retrouver ce résultat à partir de la puissance instantanée $P = \vec{F}\cdot\vec{v}$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item La force est parallèle au déplacement ($\alpha = 0$) :
    \[
    W(\vec{F}) = F\cdot AB = 250\times 400 = 1{,}0\times 10^{5}\,\text{J} \quad(\text{moteur}).
    \]
    \item La hauteur gravie vaut $h = AB\cdot\sin 18^\circ = 400\times 0{,}309 = 123{,}6\,\text{m}$. Le skieur monte, donc le travail du poids est résistant :
    \[
    W(\vec{P}) = -\,m\,g\,h = -80\times 9{,}8\times 123{,}6 \approx -9{,}7\times 10^{4}\,\text{J}.
    \]
    \item Le frottement s'oppose au mouvement :
    \[
    W(\vec{f}) = -f\cdot AB = -35\times 400 = -1{,}4\times 10^{4}\,\text{J}.
    \]
    \item La durée du trajet est $\Delta t = \dfrac{AB}{v} = \dfrac{400}{2{,}5} = 160\,\text{s}$, d'où :
    \[
    P = \dfrac{W(\vec{F})}{\Delta t} = \dfrac{1{,}0\times 10^{5}}{160} \approx 6{,}3\times 10^{2}\,\text{W}.
    \]
    On retrouve directement avec la puissance instantanée ($\vec{F}$ colinéaire à $\vec{v}$) :
    \[
    P = F\cdot v = 250\times 2{,}5 = 625\,\text{W} \approx 6{,}3\times 10^{2}\,\text{W}.
    \]
\end{enumerate}

### Problème 2 : Travail du poids et indépendance du chemin
\begin{enonce}
On déplace un bloc de masse $m = 2{,}0\,\text{kg}$ d'un point $A$ vers un point $B$ situé plus bas. Le dénivelé entre $A$ et $B$ est $h = 3{,}0\,\text{m}$. On prend $g = 9{,}8\,\text{N}\cdot\text{kg}^{-1}$.
\begin{enumerate}
    \item Le bloc descend d'abord **verticalement** de $A$ à $B$. Calculer le travail du poids $\vec{P}$. Préciser sa nature.
    \item Le bloc descend ensuite par un plan incliné rectiligne de longueur $L = 5{,}0\,\text{m}$, reliant $A$ à $B$. Déterminer l'angle $\beta$ d'inclinaison, puis calculer le travail du poids sur ce trajet. Comparer avec la question 1.
    \item Que vaut le travail du poids sur un trajet fermé $A\to B\to A$ ? Conclure sur la nature du poids.
    \item La descente verticale dure $\Delta t = 1{,}2\,\text{s}$. Calculer la puissance moyenne du poids.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Le bloc descend, le travail du poids est moteur :
    \[
    W(\vec{P}) = +\,m\,g\,h = 2{,}0\times 9{,}8\times 3{,}0 = 58{,}8\,\text{J} \approx 5{,}9\times 10^{1}\,\text{J}.
    \]
    \item On a $\sin\beta = \dfrac{h}{L} = \dfrac{3{,}0}{5{,}0} = 0{,}60$, soit $\beta \approx 37^\circ$. Le travail du poids vaut :
    \[
    W(\vec{P}) = m\,g\,L\,\sin\beta = 2{,}0\times 9{,}8\times 5{,}0\times 0{,}60 = 58{,}8\,\text{J}.
    \]
    On obtient **exactement la même valeur** qu'à la question 1 : le travail du poids ne dépend que du dénivelé $h$, pas du chemin suivi.
    \item Sur un trajet fermé, l'altitude finale est égale à l'altitude initiale, donc $h = 0$ et $W(\vec{P}) = 0\,\text{J}$. Le poids est une force **conservative**.
    \item Puissance moyenne du poids :
    \[
    P = \dfrac{W(\vec{P})}{\Delta t} = \dfrac{58{,}8}{1{,}2} = 49\,\text{W}.
    \]
\end{enumerate}

### Problème 3 : Levage par un treuil motorisé
\begin{enonce}
Un moteur électrique entraîne le tambour d'un treuil, de rayon $R = 0{,}20\,\text{m}$, qui enroule un câble pour lever une charge. Le couple moteur a un moment **constant** $M = 80\,\text{N}\cdot\text{m}$. Le tambour effectue $n = 15$ tours pour monter la charge, en une durée $\Delta t = 30\,\text{s}$. Les frottements sont négligés et $g = 9{,}8\,\text{N}\cdot\text{kg}^{-1}$.
\begin{enumerate}
    \item Calculer l'angle de rotation $\theta$ (rad), puis le travail $W$ du couple moteur.
    \item La hauteur de levage est $H = R\cdot\theta$ (longueur de câble enroulé). Calculer $H$.
    \item Le mouvement étant lent et sans frottement, le travail du couple est égal au travail à fournir contre le poids : $W = m\,g\,H$. En déduire la masse $m$ de la charge.
    \item Calculer la puissance moyenne développée par le moteur.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item L'angle de rotation est $\theta = n\times 2\pi = 15\times 2\pi = 30\pi \approx 94{,}2\,\text{rad}$. Le travail du couple vaut :
    \[
    W = M\cdot\theta = 80\times 94{,}2 \approx 7{,}5\times 10^{3}\,\text{J}.
    \]
    \item Longueur de câble enroulée, donc hauteur de levage :
    \[
    H = R\cdot\theta = 0{,}20\times 94{,}2 \approx 18{,}8\,\text{m}.
    \]
    \item De $W = m\,g\,H$ on tire :
    \[
    m = \dfrac{W}{g\,H} = \dfrac{7539{,}8}{9{,}8\times 18{,}8} \approx 41\,\text{kg}.
    \]
    (On peut vérifier par l'équilibre des moments $M = m\,g\,R$, soit $m = \dfrac{M}{gR} = \dfrac{80}{9{,}8\times 0{,}20} \approx 41\,\text{kg}$.)
    \item La puissance moyenne du moteur vaut :
    \[
    P = \dfrac{W}{\Delta t} = \dfrac{7539{,}8}{30} \approx 2{,}5\times 10^{2}\,\text{W}.
    \]
\end{enumerate}
