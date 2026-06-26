### Problème 1 : Étude complète d'un solide sur un plan incliné
\begin{enonce}
Un solide $(S)$ de masse $m = 2\,\text{kg}$ est posé sur un plan incliné **lisse** faisant un angle $\alpha$ réglable avec l'horizontale. Il est maintenu en équilibre par un fil parallèle à la ligne de plus grande pente. On prend $g = 9{,}8\,\text{N}\cdot\text{kg}^{-1}$.
\begin{enumerate}
    \item Faire le bilan des forces exercées sur $(S)$ et écrire la condition vectorielle d'équilibre.
    \item Établir, par projection, les expressions de la tension $T$ et de la réaction $R$ en fonction de $m$, $g$ et $\alpha$.
    \item Calculer $T$ et $R$ pour $\alpha = 30^\circ$.
    \item Calculer $T$ et $R$ pour $\alpha = 45^\circ$. Comparer avec la question précédente et décrire comment $T$ et $R$ évoluent quand $\alpha$ augmente.
    \item Pour quelle valeur de $\alpha$ la tension du fil serait-elle égale au poids du solide ?
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Trois forces s'exercent sur $(S)$ : le poids $\vec{P}$ (vertical, vers le bas, $P = mg$), la réaction $\vec{R}$ du plan (normale au plan, car lisse) et la tension $\vec{T}$ du fil (parallèle au plan, vers le haut). La condition d'équilibre s'écrit :
    $$\vec{P} + \vec{R} + \vec{T} = \vec{0}$$
    \item Dans le repère $(O,\vec{i},\vec{j})$ avec $\vec{i}$ parallèle au plan (vers le haut) et $\vec{j}$ perpendiculaire au plan :
    $$\begin{cases} Ox : & -P\sin\alpha + T = 0 \\ Oy : & -P\cos\alpha + R = 0 \end{cases} \quad\Rightarrow\quad T = mg\sin\alpha \;,\quad R = mg\cos\alpha$$
    \item Avec $P = mg = 2 \times 9{,}8 = 19{,}6\,\text{N}$ et $\alpha = 30^\circ$ :
    $$T = 19{,}6 \times \sin 30^\circ = 19{,}6 \times 0{,}5 = 9{,}8\,\text{N} \;,\qquad R = 19{,}6 \times \cos 30^\circ \approx 17{,}0\,\text{N}$$
    \item Pour $\alpha = 45^\circ$ ($\sin 45^\circ = \cos 45^\circ \approx 0{,}707$) :
    $$T = 19{,}6 \times 0{,}707 \approx 13{,}9\,\text{N} \;,\qquad R = 19{,}6 \times 0{,}707 \approx 13{,}9\,\text{N}$$
    Quand $\alpha$ augmente de $30^\circ$ à $45^\circ$, la tension $T = mg\sin\alpha$ **augmente** (de $9{,}8$ à $13{,}9\,\text{N}$) tandis que la réaction $R = mg\cos\alpha$ **diminue** (de $17{,}0$ à $13{,}9\,\text{N}$). Plus le plan est raide, plus le fil est tendu et moins le plan supporte le solide.
    \item Il faut $T = P$, soit $mg\sin\alpha = mg$, donc $\sin\alpha = 1$ et $\alpha = 90^\circ$ : le fil ne peut égaler le poids que si le plan est vertical (le solide est alors entièrement suspendu au fil).
\end{enumerate}

### Problème 2 : Influence du frottement
\begin{enonce}
Un solide de masse $m = 6\,\text{kg}$ est en équilibre sur un plan incliné d'angle $\alpha = 30^\circ$, retenu par un fil parallèle au plan. On prend $g = 9{,}8\,\text{N}\cdot\text{kg}^{-1}$.
\begin{enumerate}
    \item Le contact est d'abord supposé **lisse**. Calculer la tension $T_0$ du fil et la réaction $R_0$ du plan.
    \item En réalité, le plan exerce un frottement de valeur $f = 10\,\text{N}$, dirigé vers le haut du plan (le solide tend à glisser vers le bas). Calculer la nouvelle tension $T$ du fil.
    \item Calculer la composante normale $R_N$, la valeur de la réaction totale $R$, et l'angle $\varphi$ que fait $\vec{R}$ avec la normale au plan.
    \item On coupe le fil. Le frottement disponible étant au maximum $f = 10\,\text{N}$, le solide reste-t-il immobile ? Justifier.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
On a $P = mg = 6 \times 9{,}8 = 58{,}8\,\text{N}$, et l'on utilise $\sin 30^\circ = 0{,}5$, $\cos 30^\circ \approx 0{,}866$.
\begin{enumerate}
    \item Sans frottement, $T_0 = P\sin\alpha = 58{,}8 \times 0{,}5 = 29{,}4\,\text{N}$ et $R_0 = P\cos\alpha = 58{,}8 \times 0{,}866 \approx 50{,}9\,\text{N}$.
    \item La projection sur l'axe parallèle au plan donne $-P\sin\alpha + T + f = 0$, soit :
    $$T = P\sin\alpha - f = 29{,}4 - 10 = 19{,}4\,\text{N}$$
    Le frottement « aide » à retenir le solide : le fil est moins tendu qu'en l'absence de frottement.
    \item La composante normale vaut $R_N = P\cos\alpha \approx 50{,}9\,\text{N}$. La réaction totale :
    $$R = \sqrt{R_N^2 + f^2} = \sqrt{50{,}9^2 + 10^2} = \sqrt{2591 + 100} \approx 51{,}9\,\text{N}$$
    L'angle avec la normale : $\tan\varphi = \dfrac{f}{R_N} = \dfrac{10}{50{,}9} \approx 0{,}196$, donc $\varphi \approx 11^\circ$.
    \item Sans fil, seules deux forces subsisteraient : $\vec{P}$ et $\vec{R}$. L'équilibre exigerait une composante de frottement vers le haut égale à $P\sin\alpha = 29{,}4\,\text{N}$. Or le frottement disponible n'atteint que $10\,\text{N} < 29{,}4\,\text{N}$ : il est **insuffisant**, le solide **se met à glisser** vers le bas.
\end{enumerate}

### Problème 3 : Enseigne suspendue (deux fils)
\begin{enonce}
Une enseigne de masse $m = 1{,}5\,\text{kg}$ est suspendue à un point $O$. Elle est maintenue par deux câbles : le câble $OA$ est **horizontal** (fixé au mur) et le câble $OB$ est fixé au plafond en faisant un angle $\beta = 30^\circ$ avec l'**horizontale**. On prend $g = 9{,}8\,\text{N}\cdot\text{kg}^{-1}$.
\begin{enumerate}
    \item Quelles sont les trois forces s'exerçant au point $O$ ? Écrire la condition d'équilibre.
    \item Déterminer la tension $T_B$ du câble oblique $OB$.
    \item En déduire la tension $T_A$ du câble horizontal $OA$.
    \item Quel câble est le plus sollicité ?
\end{enumerate}
\end{enonce}

\textbf{Solution :}
Le poids de l'enseigne vaut $P = mg = 1{,}5 \times 9{,}8 = 14{,}7\,\text{N}$.
\begin{enumerate}
    \item Au point $O$ s'exercent : le poids $\vec{P}$ (vertical, vers le bas), la tension $\vec{T_A}$ du câble horizontal et la tension $\vec{T_B}$ du câble oblique. À l'équilibre : $\vec{P} + \vec{T_A} + \vec{T_B} = \vec{0}$.
    \item On projette sur l'axe vertical $Oy$. Seule $\vec{T_B}$ a une composante verticale, $T_B\sin\beta$, qui doit équilibrer le poids :
    $$T_B\sin\beta - P = 0 \quad\Rightarrow\quad T_B = \frac{P}{\sin\beta} = \frac{14{,}7}{\sin 30^\circ} = \frac{14{,}7}{0{,}5} = 29{,}4\,\text{N}$$
    \item Sur l'axe horizontal $Ox$ : la composante horizontale de $\vec{T_B}$ équilibre $\vec{T_A}$ :
    $$T_A - T_B\cos\beta = 0 \quad\Rightarrow\quad T_A = T_B\cos\beta = 29{,}4 \times \cos 30^\circ \approx 29{,}4 \times 0{,}866 \approx 25{,}5\,\text{N}$$
    On retrouve $T_A = P/\tan\beta = 14{,}7/\tan 30^\circ \approx 25{,}5\,\text{N}$.
    \item Le câble oblique $OB$ ($T_B \approx 29{,}4\,\text{N}$) est plus tendu que le câble horizontal $OA$ ($T_A \approx 25{,}5\,\text{N}$) : c'est lui qui est le **plus sollicité**, car il supporte à la fois le poids et la traction horizontale.
\end{enumerate}
