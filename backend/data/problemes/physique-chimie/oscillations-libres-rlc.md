### Problème 1 : Étude des oscillations libres dans un circuit LC idéal
\begin{enonce}
On charge un condensateur de capacité $C = 4{,}0\ \mu\text{F}$ sous une tension constante $U_0 = 5{,}0\ \text{V}$. À l'instant $t = 0$, on relie ce condensateur à une bobine purement inductive d'inductance $L = 0{,}40\ \text{H}$ (de résistance négligeable). On note $q(t)$ la charge de l'armature reliée à la borne positive et $i(t) = \dfrac{\dd q}{\dd t}$ l'intensité du courant.
\begin{enumerate}
    \item Établir l'équation différentielle vérifiée par la charge $q(t)$.
    \item La solution s'écrit $q(t) = Q_{\max}\cos\!\left(\dfrac{2\pi}{T_0}\,t + \varphi\right)$. Déterminer l'expression de $T_0$ et en donner la valeur numérique.
    \item À l'aide des conditions initiales, déterminer $Q_{\max}$ et la phase $\varphi$.
    \item Donner l'expression de l'intensité $i(t)$ et calculer son intensité maximale $I_{\max}$.
    \item Exprimer puis calculer l'énergie totale $E$ du circuit. Montrer qu'elle se conserve.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item La loi d'additivité des tensions donne $u_C + u_L = 0$, avec $u_C = \dfrac{q}{C}$ et $u_L = L\dfrac{\dd i}{\dd t} = L\dfrac{\dd^2 q}{\dd t^2}$. On obtient :
    \[
    L\,\frac{\dd^2 q}{\dd t^2} + \frac{q}{C} = 0
    \quad\Longrightarrow\quad
    \frac{\dd^2 q}{\dd t^2} + \frac{1}{LC}\,q = 0
    \]
    \item En reportant la solution dans l'équation, on identifie $\left(\dfrac{2\pi}{T_0}\right)^2 = \dfrac{1}{LC}$, d'où :
    \[
    T_0 = 2\pi\sqrt{LC} = 2\pi\sqrt{0{,}40\times 4{,}0\times 10^{-6}} = 2\pi\sqrt{1{,}6\times 10^{-6}} \approx 7{,}9\times 10^{-3}\ \text{s} \approx 7{,}9\ \text{ms}
    \]
    \item À $t = 0$, le condensateur est chargé sous $U_0$ : $q(0) = C\,U_0 = 4{,}0\times 10^{-6}\times 5{,}0 = 2{,}0\times 10^{-5}\ \text{C}$. De plus, le courant est nul à $t = 0$ ($i(0) = 0$).
    \[
    i(t) = \frac{\dd q}{\dd t} = -Q_{\max}\,\frac{2\pi}{T_0}\,\sin\!\left(\frac{2\pi}{T_0}\,t + \varphi\right)
    \]
    La condition $i(0) = 0$ impose $\sin\varphi = 0$, soit $\varphi = 0$ (ou $\pi$). Comme $q(0) > 0$, on a $q(0) = Q_{\max}\cos\varphi > 0$, ce qui donne $\varphi = 0$. Alors $Q_{\max} = q(0) = 2{,}0\times 10^{-5}\ \text{C} = 20\ \mu\text{C}$.
    \item Avec $\varphi = 0$ :
    \[
    i(t) = -Q_{\max}\,\frac{2\pi}{T_0}\,\sin\!\left(\frac{2\pi}{T_0}\,t\right)
    \]
    L'intensité maximale est :
    \[
    I_{\max} = Q_{\max}\,\frac{2\pi}{T_0} = \frac{2{,}0\times 10^{-5}\times 2\pi}{7{,}9\times 10^{-3}} \approx 1{,}6\times 10^{-2}\ \text{A} = 16\ \text{mA}
    \]
    \item L'énergie totale est $E = \dfrac{1}{2}\dfrac{q^2}{C} + \dfrac{1}{2}L\,i^2$. À $t = 0$, $i = 0$ et $q = Q_{\max}$ :
    \[
    E = \frac{1}{2}\frac{Q_{\max}^2}{C} = \frac{1}{2}\,C\,U_0^2 = \frac{1}{2}\times 4{,}0\times 10^{-6}\times (5{,}0)^2 = 5{,}0\times 10^{-5}\ \text{J} = 50\ \mu\text{J}
    \]
    En dérivant : $\dfrac{\dd E}{\dd t} = i\left(\dfrac{q}{C} + L\dfrac{\dd^2 q}{\dd t^2}\right) = 0$ d'après l'équation différentielle. L'énergie est donc constante : elle oscille entre le condensateur et la bobine sans perte.
\end{enumerate}

### Problème 2 : Régime pseudo-périodique et bilan énergétique
\begin{enonce}
Un condensateur de capacité $C = 1{,}0\ \mu\text{F}$ est chargé sous une tension $U_0 = 12\ \text{V}$. À $t = 0$, on le branche sur un dipôle constitué d'une bobine d'inductance $L = 0{,}25\ \text{H}$ et de résistance interne $r$, en série avec un conducteur ohmique de résistance $R$. On observe la tension $u_C(t)$ aux bornes du condensateur : elle oscille en s'amortissant.

L'oscillogramme fournit les renseignements suivants :
\begin{itemize}
    \item la tension à $t = 0$ vaut $u_C(0) = 12\ \text{V}$ ;
    \item on relève $10$ pseudo-périodes successives sur une durée de $31{,}4\ \text{ms}$ ;
    \item la première crête positive après le départ atteint $u_C = 7{,}8\ \text{V}$.
\end{itemize}
\begin{enumerate}
    \item Préciser le régime observé et nommer la grandeur permettant de caractériser la durée d'une oscillation.
    \item Déterminer la pseudo-période $T$.
    \item En considérant l'amortissement faible ($T \approx T_0$), vérifier la valeur de $C$ par le calcul de $T_0$.
    \item Calculer l'énergie totale du circuit à $t = 0$.
    \item Au moment de la première crête positive ($u_C = 7{,}8\ \text{V}$), l'intensité du courant est nulle. Calculer l'énergie dissipée par effet Joule entre $t = 0$ et cet instant.
    \item Expliquer ce que devient l'énergie du circuit au bout d'un temps très long.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item La tension oscille en changeant de signe avec une amplitude qui décroît : c'est le \textbf{régime pseudo-périodique}. La durée d'une oscillation est caractérisée par la \textbf{pseudo-période} $T$.
    \item La pseudo-période vaut :
    \[
    T = \frac{31{,}4\times 10^{-3}}{10} = 3{,}14\times 10^{-3}\ \text{s} = 3{,}14\ \text{ms}
    \]
    \item Avec $T \approx T_0 = 2\pi\sqrt{LC}$ :
    \[
    T_0 = 2\pi\sqrt{0{,}25\times 1{,}0\times 10^{-6}} = 2\pi\sqrt{2{,}5\times 10^{-7}} \approx 3{,}14\times 10^{-3}\ \text{s} = 3{,}14\ \text{ms}
    \]
    On retrouve bien $T_0 \approx T$, ce qui confirme la valeur de $C = 1{,}0\ \mu\text{F}$ et la validité de l'hypothèse d'un faible amortissement.
    \item À $t = 0$, le courant est nul et toute l'énergie est dans le condensateur :
    \[
    E_0 = \frac{1}{2}\,C\,U_0^2 = \frac{1}{2}\times 1{,}0\times 10^{-6}\times (12)^2 = 7{,}2\times 10^{-5}\ \text{J} = 72\ \mu\text{J}
    \]
    \item À l'instant de la première crête positive, l'intensité est nulle : toute l'énergie restante est dans le condensateur, sous la tension $u_C = 7{,}8\ \text{V}$ :
    \[
    E_1 = \frac{1}{2}\,C\,u_C^2 = \frac{1}{2}\times 1{,}0\times 10^{-6}\times (7{,}8)^2 = 3{,}0\times 10^{-5}\ \text{J} = 30\ \mu\text{J}
    \]
    L'énergie dissipée par effet Joule entre ces deux instants est la diminution de l'énergie du circuit :
    \[
    E_J = E_0 - E_1 = 72 - 30 = 42\ \mu\text{J}
    \]
    \item Au bout d'un temps très long, les oscillations s'éteignent : la charge du condensateur et l'intensité tendent vers zéro, donc l'énergie du circuit tend vers zéro. La totalité de l'énergie initiale ($72\ \mu\text{J}$) finit par être dissipée par effet Joule dans les résistances $R$ et $r$.
\end{enumerate}

### Problème 3 : Influence de la résistance sur le régime
\begin{enonce}
On dispose d'un condensateur de capacité $C = 0{,}50\ \mu\text{F}$ chargé sous $U_0 = 10\ \text{V}$ et d'une bobine d'inductance $L = 0{,}20\ \text{H}$. On réalise des décharges du condensateur à travers la bobine en intercalant un conducteur ohmique de résistance $R$ réglable. On donne, pour ce circuit, la valeur de la résistance critique $R_c = 2\sqrt{\dfrac{L}{C}}$.
\begin{enumerate}
    \item Calculer la résistance critique $R_c$.
    \item Pour $R = 200\ \Omega$, indiquer en le justifiant le régime obtenu.
    \item Pour $R = 2{,}0\ \text{k}\Omega$, indiquer le régime obtenu.
    \item Dans le cas idéal ($R = 0$ et bobine sans résistance), calculer la période propre $T_0$ et l'énergie totale du circuit.
    \item Comparer qualitativement la durée d'extinction des oscillations dans les cas $R = 200\ \Omega$ et $R = 2{,}0\ \text{k}\Omega$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item La résistance critique vaut :
    \[
    R_c = 2\sqrt{\frac{L}{C}} = 2\sqrt{\frac{0{,}20}{0{,}50\times 10^{-6}}} = 2\sqrt{4{,}0\times 10^{5}} = 2\times 632 \approx 1{,}3\times 10^{3}\ \Omega = 1{,}3\ \text{k}\Omega
    \]
    \item Pour $R = 200\ \Omega < R_c$ : la résistance est inférieure à la résistance critique, l'amortissement est faible. Le régime est \textbf{pseudo-périodique} : la tension oscille en s'amortissant.
    \item Pour $R = 2{,}0\ \text{k}\Omega > R_c$ : la résistance dépasse la résistance critique, l'amortissement est fort. Le régime est \textbf{apériodique} : la charge revient à zéro sans osciller.
    \item Dans le cas idéal :
    \[
    T_0 = 2\pi\sqrt{LC} = 2\pi\sqrt{0{,}20\times 0{,}50\times 10^{-6}} = 2\pi\sqrt{1{,}0\times 10^{-7}} \approx 2{,}0\times 10^{-3}\ \text{s} = 2{,}0\ \text{ms}
    \]
    \[
    E = \frac{1}{2}\,C\,U_0^2 = \frac{1}{2}\times 0{,}50\times 10^{-6}\times (10)^2 = 2{,}5\times 10^{-5}\ \text{J} = 25\ \mu\text{J}
    \]
    \item Avec $R = 200\ \Omega$, le régime est pseudo-périodique : l'énergie se dissipe progressivement sur plusieurs oscillations, donc l'extinction est relativement lente en nombre d'oscillations mais visible. Avec $R = 2{,}0\ \text{k}\Omega$, le régime est apériodique : il n'y a aucune oscillation, mais comme la résistance est grande, le retour à l'équilibre est lent et sans dépassement. Dans les deux cas, toute l'énergie initiale ($25\ \mu\text{J}$ dans le cas idéal, ici dissipée) finit transformée en chaleur par effet Joule.
\end{enumerate}
