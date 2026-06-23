### Problème 1 : Cinétique de la réaction iodure – peroxodisulfate
\begin{enonce}
On étudie la transformation lente et totale entre les ions iodure et les ions peroxodisulfate, d'équation :
\[
\text{S}_2\text{O}_8^{2-} + 2\,\text{I}^- \longrightarrow 2\,\text{SO}_4^{2-} + \text{I}_2
\]
À l'instant $t = 0$, on mélange un volume $V_1 = 100\ \text{mL}$ d'une solution de peroxodisulfate de potassium de concentration $C_1 = 0{,}050\ \text{mol.L}^{-1}$ et un volume $V_2 = 100\ \text{mL}$ d'une solution d'iodure de potassium de concentration $C_2 = 0{,}20\ \text{mol.L}^{-1}$. Le volume total $V = 200\ \text{mL}$ reste constant.

On suit l'évolution de l'avancement $x$ par dosage du diiode formé. On obtient les valeurs suivantes :
\begin{itemize}
    \item $t = 0$ : $x = 0$ ;
    \item $t = 2\ \text{min}$ : $x = 1{,}8\times 10^{-3}\ \text{mol}$ ;
    \item $t = 5\ \text{min}$ : $x = 3{,}2\times 10^{-3}\ \text{mol}$ ;
    \item $t = 10\ \text{min}$ : $x = 4{,}3\times 10^{-3}\ \text{mol}$ ;
    \item $t = 20\ \text{min}$ : $x = 4{,}9\times 10^{-3}\ \text{mol}$ ;
    \item $t \to \infty$ : $x \to 5{,}0\times 10^{-3}\ \text{mol}$.
\end{itemize}
\begin{enumerate}
    \item Calculer les quantités de matière initiales des deux réactifs.
    \item Dresser le tableau d'avancement et déterminer le réactif limitant ainsi que $x_{\max}$. La valeur expérimentale finale est-elle cohérente ?
    \item Donner l'expression de la vitesse volumique de réaction $v$. Calculer sa valeur moyenne entre $t = 0$ et $t = 2\ \text{min}$.
    \item À l'instant $t = 5\ \text{min}$, la tangente à la courbe $x = f(t)$ passe par les points $(0\ ;\ 1{,}4\times 10^{-3}\ \text{mol})$ et $(10\ \text{min}\ ;\ 5{,}0\times 10^{-3}\ \text{mol})$. Déterminer la vitesse volumique à cet instant.
    \item Comment évolue la vitesse au cours du temps ? Quel facteur cinétique l'explique ?
    \item Déterminer graphiquement le temps de demi-réaction $t_{1/2}$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Quantités initiales :
    \[
    n_0(\text{S}_2\text{O}_8^{2-}) = C_1 V_1 = 0{,}050 \times 100\times 10^{-3} = 5{,}0\times 10^{-3}\ \text{mol}
    \]
    \[
    n_0(\text{I}^-) = C_2 V_2 = 0{,}20 \times 100\times 10^{-3} = 2{,}0\times 10^{-2}\ \text{mol}
    \]
    \item Tableau d'avancement (en mol) :
    \[
    \begin{aligned}
    &\text{S}_2\text{O}_8^{2-} \ + \ 2\,\text{I}^- \ \longrightarrow \ 2\,\text{SO}_4^{2-} \ + \ \text{I}_2 \\
    &\text{état } x : \quad 5{,}0\times 10^{-3} - x \ ; \ 2{,}0\times 10^{-2} - 2x \ ; \ 2x \ ; \ x
    \end{aligned}
    \]
    Si $\text{S}_2\text{O}_8^{2-}$ limitant : $x = 5{,}0\times 10^{-3}\ \text{mol}$. Si $\text{I}^-$ limitant : $x = 1{,}0\times 10^{-2}\ \text{mol}$.

    La plus petite valeur l'emporte : le réactif limitant est $\text{S}_2\text{O}_8^{2-}$ et $x_{\max} = 5{,}0\times 10^{-3}\ \text{mol}$. La valeur finale expérimentale ($5{,}0\times 10^{-3}\ \text{mol}$) coïncide : la transformation est bien totale.
    \item La vitesse volumique de réaction est :
    \[
    v = \frac{1}{V}\,\frac{\dd x}{\dd t}
    \]
    Entre $t = 0$ et $t = 2\ \text{min}$, en approchant la dérivée par le taux de variation :
    \[
    v_{\text{moy}} = \frac{1}{V}\,\frac{\Delta x}{\Delta t} = \frac{1}{0{,}200}\times \frac{1{,}8\times 10^{-3} - 0}{2{,}0 - 0} = \frac{1}{0{,}200}\times 9{,}0\times 10^{-4}
    \]
    \[
    v_{\text{moy}} = 4{,}5\times 10^{-3}\ \text{mol.L}^{-1}.\text{min}^{-1}
    \]
    \item À $t = 5\ \text{min}$, le coefficient directeur de la tangente vaut :
    \[
    \frac{\dd x}{\dd t} = \frac{5{,}0\times 10^{-3} - 1{,}4\times 10^{-3}}{10 - 0} = \frac{3{,}6\times 10^{-3}}{10} = 3{,}6\times 10^{-4}\ \text{mol.min}^{-1}
    \]
    D'où la vitesse à cet instant :
    \[
    v(5\ \text{min}) = \frac{1}{V}\,\frac{\dd x}{\dd t} = \frac{3{,}6\times 10^{-4}}{0{,}200} = 1{,}8\times 10^{-3}\ \text{mol.L}^{-1}.\text{min}^{-1}
    \]
    \item La vitesse \emph{diminue} au cours du temps : elle passe de $4{,}5\times 10^{-3}$ à $1{,}8\times 10^{-3}\ \text{mol.L}^{-1}.\text{min}^{-1}$, ce que confirme l'aplatissement progressif de la courbe $x = f(t)$. Le facteur cinétique responsable est la concentration des réactifs : à mesure que la réaction progresse, les réactifs sont consommés, leur concentration diminue et la transformation ralentit.
    \item Le temps de demi-réaction correspond à $x = \dfrac{x_{\max}}{2} = \dfrac{5{,}0\times 10^{-3}}{2} = 2{,}5\times 10^{-3}\ \text{mol}$. D'après les valeurs, cet avancement est atteint entre $t = 2\ \text{min}$ ($x = 1{,}8\times 10^{-3}$) et $t = 5\ \text{min}$ ($x = 3{,}2\times 10^{-3}$). Une lecture graphique donne :
    \[
    t_{1/2} \approx 3{,}5\ \text{min}
    \]
\end{enumerate}

### Problème 2 : Suivi conductimétrique d'une hydrolyse
\begin{enonce}
On étudie la transformation lente du 2-chloro-2-méthylpropane (noté $\text{R–Cl}$) avec l'eau, d'équation :
\[
\text{R–Cl} + 2\,\text{H}_2\text{O} \longrightarrow \text{R–OH} + \text{H}_3\text{O}^+ + \text{Cl}^-
\]
À $t = 0$, on introduit $n_0 = 1{,}0\times 10^{-2}\ \text{mol}$ de $\text{R–Cl}$ dans un volume $V = 1{,}0\ \text{L}$ d'eau. La transformation est totale et libère des ions $\text{H}_3\text{O}^+$ et $\text{Cl}^-$, ce qui augmente la conductivité $\sigma$ du milieu. La mesure de $\sigma$ permet de suivre l'avancement $x$ ; on obtient :
\begin{itemize}
    \item $t = 0$ : $x = 0$ ;
    \item $t = 20\ \text{s}$ : $x = 4{,}0\times 10^{-3}\ \text{mol}$ ;
    \item $t = 40\ \text{s}$ : $x = 6{,}5\times 10^{-3}\ \text{mol}$ ;
    \item $t = 80\ \text{s}$ : $x = 9{,}0\times 10^{-3}\ \text{mol}$ ;
    \item $t = 120\ \text{s}$ : $x = 9{,}8\times 10^{-3}\ \text{mol}$.
\end{itemize}
\begin{enumerate}
    \item Pourquoi la conductimétrie est-elle adaptée au suivi de cette transformation ?
    \item Établir le tableau d'avancement et déterminer l'avancement maximal $x_{\max}$.
    \item Exprimer la concentration $[\text{Cl}^-]$ en fonction de $x$ et $V$. Calculer sa valeur à $t = 40\ \text{s}$.
    \item Calculer la vitesse volumique moyenne de réaction entre $t = 20\ \text{s}$ et $t = 40\ \text{s}$.
    \item Déterminer le temps de demi-réaction $t_{1/2}$.
    \item On refait la même expérience à une température plus élevée. Indiquer, sans calcul, comment seraient modifiés l'allure de la courbe et le temps de demi-réaction.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item La conductimétrie est adaptée car la transformation fait apparaître des ions ($\text{H}_3\text{O}^+$ et $\text{Cl}^-$) alors que le réactif $\text{R–Cl}$ est une espèce moléculaire non chargée. La conductivité $\sigma$ du milieu augmente donc au cours du temps proportionnellement à l'avancement, ce qui permet un suivi continu et non destructif.
    \item Tableau d'avancement (en mol) :
    \[
    \begin{aligned}
    &\text{R–Cl} \ + \ 2\,\text{H}_2\text{O} \ \longrightarrow \ \text{R–OH} \ + \ \text{H}_3\text{O}^+ \ + \ \text{Cl}^- \\
    &\text{état } x : \quad n_0 - x \ ; \ \text{excès} \ ; \ x \ ; \ x \ ; \ x
    \end{aligned}
    \]
    L'eau étant en large excès (solvant), le réactif limitant est $\text{R–Cl}$ :
    \[
    n_0 - x_{\max} = 0 \implies x_{\max} = n_0 = 1{,}0\times 10^{-2}\ \text{mol}
    \]
    \item D'après le tableau, $n(\text{Cl}^-) = x$, donc :
    \[
    [\text{Cl}^-] = \frac{x}{V}
    \]
    À $t = 40\ \text{s}$ :
    \[
    [\text{Cl}^-] = \frac{6{,}5\times 10^{-3}}{1{,}0} = 6{,}5\times 10^{-3}\ \text{mol.L}^{-1}
    \]
    \item Vitesse volumique moyenne entre $t = 20\ \text{s}$ et $t = 40\ \text{s}$ :
    \[
    v_{\text{moy}} = \frac{1}{V}\,\frac{\Delta x}{\Delta t} = \frac{1}{1{,}0}\times \frac{6{,}5\times 10^{-3} - 4{,}0\times 10^{-3}}{40 - 20}
    \]
    \[
    v_{\text{moy}} = \frac{2{,}5\times 10^{-3}}{20} = 1{,}25\times 10^{-4}\ \text{mol.L}^{-1}.\text{s}^{-1}
    \]
    \item Le temps de demi-réaction correspond à $x = \dfrac{x_{\max}}{2} = 5{,}0\times 10^{-3}\ \text{mol}$. Cet avancement est atteint entre $t = 20\ \text{s}$ ($x = 4{,}0\times 10^{-3}$) et $t = 40\ \text{s}$ ($x = 6{,}5\times 10^{-3}$). Une interpolation (ou lecture graphique) donne :
    \[
    t_{1/2} \approx 28\ \text{s}
    \]
    \item La température est un facteur cinétique : en l'augmentant, la transformation est accélérée. La courbe $x = f(t)$ monterait plus rapidement vers la même valeur finale $x_{\max} = 1{,}0\times 10^{-2}\ \text{mol}$ (l'état final ne change pas), et le temps de demi-réaction $t_{1/2}$ serait \emph{plus petit}.
\end{enumerate}
