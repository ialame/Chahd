### Problème 1 : Étude complète d'un amplificateur inverseur
\begin{enonce}
On étudie un amplificateur inverseur construit avec un AO idéal alimenté en $\pm 15\,\text{V}$ (donc $V_{sat} = 15\,\text{V}$). L'entrée non inverseuse est reliée à la masse, l'entrée $V_e$ est appliquée à travers $R_1 = 1\,\text{k}\Omega$, et $R_2 = 10\,\text{k}\Omega$ relie la sortie à l'entrée inverseuse.
\begin{enumerate}
    \item Préciser le régime de fonctionnement et donner la valeur de $V^{-}$.
    \item Établir l'expression de $V_s$ en fonction de $V_e$ et calculer le gain $A$.
    \item Pour $V_e = 1{,}2\,\text{V}$, calculer $V_s$ et le courant $i_1$ dans $R_1$.
    \item À partir de quelle valeur de $|V_e|$ l'AO se met-il à saturer ?
    \item Que vaut $V_s$ si l'on applique $V_e = 2\,\text{V}$ ?
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item La rétroaction se fait vers l'entrée $-$ : régime **linéaire**, donc $V^{-} = V^{+}$. Comme l'entrée $+$ est à la masse, $V^{+} = 0$ et donc $V^{-} = 0\,\text{V}$ (masse virtuelle).
    \item Avec $i^{-} = 0$, le courant de $R_1$ traverse $R_2$ : $\dfrac{V_e}{R_1} = \dfrac{-V_s}{R_2}$, d'où $V_s = -\dfrac{R_2}{R_1}\,V_e$. Le gain vaut $A = -\dfrac{R_2}{R_1} = -\dfrac{10}{1} = -10$.
    \item $V_s = -10 \times 1{,}2 = -12\,\text{V}$ (inférieur en valeur absolue à $15\,\text{V}$ : pas de saturation). Le courant : $i_1 = \dfrac{V_e - V^{-}}{R_1} = \dfrac{1{,}2}{1000} = 1{,}2\times 10^{-3}\,\text{A} = 1{,}2\,\text{mA}$.
    \item L'AO sature quand $|V_s| = V_{sat}$, soit $|A|\,|V_e| = 15$, donc $|V_e| = \dfrac{15}{10} = 1{,}5\,\text{V}$. Au-delà de $1{,}5\,\text{V}$ en valeur absolue, la sortie sature.
    \item Pour $V_e = 2\,\text{V}$, la valeur théorique serait $V_s = -10 \times 2 = -20\,\text{V}$, ce qui dépasse $-15\,\text{V}$. La sortie sature donc à $V_s = -V_{sat} = -15\,\text{V}$.
\end{enumerate}

### Problème 2 : Amplification en deux étages
\begin{enonce}
Pour amplifier fortement un faible signal $V_e = 0{,}5\,\text{V}$, on associe deux montages en cascade (AO idéaux, alimentation $\pm 15\,\text{V}$). La sortie du premier étage est l'entrée du second.
\begin{itemize}
    \item \textbf{Étage 1} : amplificateur **non inverseur**, $R_1 = 1\,\text{k}\Omega$ et $R_2 = 3\,\text{k}\Omega$.
    \item \textbf{Étage 2} : amplificateur **inverseur**, $R_3 = 2\,\text{k}\Omega$ et $R_4 = 10\,\text{k}\Omega$.
\end{itemize}
\begin{enumerate}
    \item Calculer le gain $A_1$ du premier étage et la tension de sortie $V_{s1}$.
    \item Calculer le gain $A_2$ du second étage et la tension de sortie finale $V_{s2}$.
    \item En déduire le gain total $A = \dfrac{V_{s2}}{V_e}$. Vérifier la cohérence avec $A_1$ et $A_2$.
    \item Aucun des deux AO n'est-il saturé ? Justifier.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Pour le montage non inverseur : $A_1 = 1 + \dfrac{R_2}{R_1} = 1 + \dfrac{3}{1} = 4$. Donc $V_{s1} = A_1\,V_e = 4 \times 0{,}5 = 2\,\text{V}$.
    \item Pour le montage inverseur : $A_2 = -\dfrac{R_4}{R_3} = -\dfrac{10}{2} = -5$. L'entrée du second étage est $V_{s1} = 2\,\text{V}$, donc $V_{s2} = A_2\,V_{s1} = -5 \times 2 = -10\,\text{V}$.
    \item Le gain total est $A = \dfrac{V_{s2}}{V_e} = \dfrac{-10}{0{,}5} = -20$. On retrouve bien $A = A_1 \times A_2 = 4 \times (-5) = -20$ : les gains de deux étages en cascade se multiplient.
    \item Étage 1 : $|V_{s1}| = 2\,\text{V} < 15\,\text{V}$. Étage 2 : $|V_{s2}| = 10\,\text{V} < 15\,\text{V}$. Aucun AO ne sature : les deux fonctionnent en régime linéaire.
\end{enumerate}

### Problème 3 : Détecteur de seuil de température
\begin{enonce}
Un capteur de température délivre une tension $V_e$ qui augmente avec la température. On veut déclencher une alarme lorsque la température dépasse un seuil. On utilise pour cela un AO idéal monté en **comparateur**, alimenté avec $V_{sat} = 12\,\text{V}$ : $V_e$ est appliquée sur l'entrée $+$ et une tension de référence $V_{ref} = 4\,\text{V}$ (correspondant au seuil) sur l'entrée $-$.
\begin{enumerate}
    \item Quel est le régime de fonctionnement de l'AO ? Quelle relation utilise-t-on ?
    \item Donner $V_s$ lorsque $V_e = 2{,}5\,\text{V}$, puis lorsque $V_e = 6\,\text{V}$.
    \item On observe à un instant donné $V_s = +12\,\text{V}$. Que peut-on dire de la température ?
    \item Avant le comparateur, on intercale un suiveur entre le capteur et l'entrée $+$. Quel est l'intérêt de ce suiveur ?
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Sans rétroaction négative, l'AO fonctionne en régime **saturé**. La sortie vaut $+V_{sat}$ si $V^{+} > V^{-}$ et $-V_{sat}$ si $V^{+} < V^{-}$, avec $V^{+} = V_e$ et $V^{-} = V_{ref} = 4\,\text{V}$.
    \item Pour $V_e = 2{,}5\,\text{V} < 4\,\text{V}$ : $V_s = -V_{sat} = -12\,\text{V}$. Pour $V_e = 6\,\text{V} > 4\,\text{V}$ : $V_s = +V_{sat} = +12\,\text{V}$.
    \item $V_s = +12\,\text{V}$ signifie $V_e > V_{ref}$, c'est-à-dire que la tension du capteur dépasse le seuil : la **température dépasse le seuil** fixé, l'alarme se déclenche.
    \item Le suiveur ($V_s = V_e$, $i^{+} = 0$) prélève la tension du capteur sans lui demander de courant : il évite que le comparateur ne perturbe la mesure. Il joue le rôle d'**adaptateur** entre le capteur (fragile) et le reste du circuit.
\end{enumerate}
