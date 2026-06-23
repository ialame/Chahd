### Exercice 1 : Équation différentielle de l'oscillateur LC
\begin{enonce}
Un condensateur de capacité $C$, chargé sous une tension $U_0$, est associé à l'instant $t = 0$ à une bobine purement inductive d'inductance $L$ (résistance négligeable). On note $q(t)$ la charge de l'armature étudiée du condensateur.

Établir l'équation différentielle vérifiée par la charge $q(t)$.
\end{enonce}

\textbf{Solution :}
D'après la loi d'additivité des tensions dans le circuit LC :
\[
u_C + u_L = 0
\]
La tension aux bornes du condensateur est $u_C = \dfrac{q}{C}$ et celle aux bornes de la bobine idéale est $u_L = L\,\dfrac{\dd i}{\dd t}$, avec $i = \dfrac{\dd q}{\dd t}$. On obtient :
\[
\frac{q}{C} + L\,\frac{\dd^2 q}{\dd t^2} = 0
\]
soit, sous forme canonique :
\[
\frac{\dd^2 q}{\dd t^2} + \frac{1}{LC}\,q = 0
\]
C'est l'équation différentielle d'un oscillateur harmonique.

### Exercice 2 : Vérification de la solution et période propre
\begin{enonce}
On admet que la solution de l'équation précédente s'écrit $q(t) = Q_{\max}\cos\!\left(\dfrac{2\pi}{T_0}\,t + \varphi\right)$.

Vérifier que cette expression est solution et en déduire l'expression de la période propre $T_0$.
\end{enonce}

\textbf{Solution :}
On dérive deux fois $q(t) = Q_{\max}\cos\!\left(\dfrac{2\pi}{T_0}\,t + \varphi\right)$ :
\[
\frac{\dd q}{\dd t} = -Q_{\max}\,\frac{2\pi}{T_0}\,\sin\!\left(\frac{2\pi}{T_0}\,t + \varphi\right)
\]
\[
\frac{\dd^2 q}{\dd t^2} = -Q_{\max}\,\left(\frac{2\pi}{T_0}\right)^2\cos\!\left(\frac{2\pi}{T_0}\,t + \varphi\right) = -\left(\frac{2\pi}{T_0}\right)^2 q
\]
En reportant dans l'équation différentielle :
\[
-\left(\frac{2\pi}{T_0}\right)^2 q + \frac{1}{LC}\,q = 0
\]
Cette égalité est vraie à chaque instant si et seulement si $\left(\dfrac{2\pi}{T_0}\right)^2 = \dfrac{1}{LC}$, d'où :
\[
T_0 = 2\pi\sqrt{LC}
\]

### Exercice 3 : Calcul de la période propre
\begin{enonce}
On donne $L = 0{,}10\ \text{H}$ et $C = 1{,}0\ \mu\text{F}$.
\begin{enumerate}
    \item Calculer la période propre $T_0$ des oscillations.
    \item En déduire la fréquence propre $f_0$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item $T_0 = 2\pi\sqrt{LC} = 2\pi\sqrt{0{,}10 \times 1{,}0\times 10^{-6}} = 2\pi\sqrt{1{,}0\times 10^{-7}} \approx 1{,}99\times 10^{-3}\ \text{s} \approx 2{,}0\ \text{ms}$.
    \item $f_0 = \dfrac{1}{T_0} = \dfrac{1}{1{,}99\times 10^{-3}} \approx 5{,}0\times 10^{2}\ \text{Hz} = 0{,}50\ \text{kHz}$.
\end{enumerate}

### Exercice 4 : Conservation de l'énergie dans le circuit LC idéal
\begin{enonce}
Dans un circuit LC idéal, l'énergie totale s'écrit $E = \dfrac{1}{2}\dfrac{q^2}{C} + \dfrac{1}{2}L\,i^2$.

Montrer que cette énergie totale se conserve au cours du temps.
\end{enonce}

\textbf{Solution :}
On dérive l'énergie totale par rapport au temps, en utilisant $i = \dfrac{\dd q}{\dd t}$ :
\[
\frac{\dd E}{\dd t} = \frac{1}{C}\,q\,\frac{\dd q}{\dd t} + L\,i\,\frac{\dd i}{\dd t}
= \frac{q}{C}\,i + L\,i\,\frac{\dd^2 q}{\dd t^2}
\]
On met $i$ en facteur :
\[
\frac{\dd E}{\dd t} = i\left(\frac{q}{C} + L\,\frac{\dd^2 q}{\dd t^2}\right)
\]
Or l'équation différentielle de l'oscillateur impose $L\,\dfrac{\dd^2 q}{\dd t^2} + \dfrac{q}{C} = 0$. Le terme entre parenthèses est donc nul :
\[
\frac{\dd E}{\dd t} = 0
\]
L'énergie totale $E$ est constante : elle est échangée en permanence entre le condensateur et la bobine, sans perte.

### Exercice 5 : Échange d'énergie et valeur maximale de l'intensité
\begin{enonce}
Un condensateur de capacité $C = 1{,}0\ \mu\text{F}$, chargé sous $U_0 = 6{,}0\ \text{V}$, oscille dans une bobine idéale d'inductance $L = 0{,}10\ \text{H}$.
\begin{enumerate}
    \item Calculer l'énergie totale du circuit.
    \item En déduire l'intensité maximale $I_{\max}$ du courant.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item À $t = 0$, l'intensité est nulle et toute l'énergie est dans le condensateur :
    \[
    E = \frac{1}{2}\,C\,U_0^2 = \frac{1}{2}\times 1{,}0\times 10^{-6}\times (6{,}0)^2 = 1{,}8\times 10^{-5}\ \text{J} = 18\ \mu\text{J}
    \]
    \item L'intensité est maximale lorsque le condensateur est totalement déchargé : toute l'énergie est alors dans la bobine, soit $\dfrac{1}{2}L\,I_{\max}^2 = E$. Donc :
    \[
    I_{\max} = \sqrt{\frac{2E}{L}} = \sqrt{\frac{2\times 1{,}8\times 10^{-5}}{0{,}10}} = \sqrt{3{,}6\times 10^{-4}} = 1{,}9\times 10^{-2}\ \text{A} = 19\ \text{mA}
    \]
\end{enumerate}

### Exercice 6 : Les trois régimes du circuit RLC série
\begin{enonce}
On ajoute au circuit précédent un conducteur ohmique de résistance $R$. Le condensateur chargé se décharge alors dans la bobine et la résistance.

Nommer et décrire les trois régimes possibles selon la valeur de $R$.
\end{enonce}

\textbf{Solution :}
Selon l'importance de l'amortissement dû à la résistance $R$, on distingue trois régimes :
\begin{itemize}
    \item \textbf{Régime pseudo-périodique} (faible résistance) : la tension oscille en changeant de signe, mais l'amplitude des oscillations décroît progressivement. On parle de pseudo-période $T$, légèrement supérieure à $T_0$.
    \item \textbf{Régime critique} (résistance particulière $R_c$) : c'est le cas limite ; la charge revient le plus rapidement possible à zéro sans osciller.
    \item \textbf{Régime apériodique} (forte résistance) : la décharge se fait lentement, sans oscillation, plus lentement que le régime critique.
\end{itemize}
Dans tous les cas avec $R \neq 0$, l'énergie est progressivement dissipée par effet Joule dans la résistance.

### Exercice 7 : Pseudo-période et amortissement
\begin{enonce}
L'oscillogramme de la tension aux bornes d'un condensateur en régime pseudo-périodique montre que la durée séparant $5$ pseudo-périodes successives est de $10{,}0\ \text{ms}$. On suppose l'amortissement faible.
\begin{enumerate}
    \item Déterminer la pseudo-période $T$.
    \item Sachant que $T \approx T_0 = 2\pi\sqrt{LC}$ et que $L = 0{,}20\ \text{H}$, estimer la capacité $C$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item La pseudo-période est : $T = \dfrac{10{,}0\times 10^{-3}}{5} = 2{,}0\times 10^{-3}\ \text{s} = 2{,}0\ \text{ms}$.
    \item De $T \approx 2\pi\sqrt{LC}$ on tire $\sqrt{LC} = \dfrac{T}{2\pi}$, puis $LC = \left(\dfrac{T}{2\pi}\right)^2$ et :
    \[
    C = \frac{1}{L}\left(\frac{T}{2\pi}\right)^2 = \frac{1}{0{,}20}\left(\frac{2{,}0\times 10^{-3}}{2\pi}\right)^2 \approx \frac{1{,}01\times 10^{-7}}{0{,}20} \approx 5{,}1\times 10^{-7}\ \text{F} \approx 0{,}51\ \mu\text{F}
    \]
\end{enumerate}

### Exercice 8 : Dissipation de l'énergie par effet Joule
\begin{enonce}
Un condensateur de capacité $C = 2{,}0\ \mu\text{F}$ est chargé sous $U_0 = 8{,}0\ \text{V}$ puis se décharge dans un circuit RLC réel. Après un grand nombre d'oscillations, le régime s'éteint complètement.

Quelle est l'énergie totale dissipée par effet Joule dans la résistance ? Justifier.
\end{enonce}

\textbf{Solution :}
L'énergie initiale du circuit est entièrement stockée dans le condensateur (intensité nulle à $t = 0$) :
\[
E_0 = \frac{1}{2}\,C\,U_0^2 = \frac{1}{2}\times 2{,}0\times 10^{-6}\times (8{,}0)^2 = 6{,}4\times 10^{-5}\ \text{J} = 64\ \mu\text{J}
\]
À la fin, les oscillations sont éteintes : la charge du condensateur et l'intensité sont nulles, donc l'énergie restante dans le circuit est nulle. Par conservation de l'énergie, toute l'énergie initiale a été dissipée par effet Joule dans la résistance :
\[
E_J = E_0 = 64\ \mu\text{J}
\]
