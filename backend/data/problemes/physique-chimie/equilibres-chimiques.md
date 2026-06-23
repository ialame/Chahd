### Problème 1 : Étude d'une solution d'acide éthanoïque et influence de la dilution
\begin{enonce}
On dispose d'une solution $(S_1)$ d'acide éthanoïque $\text{CH}_3\text{COOH}$ de concentration $C_1 = 1{,}0\times 10^{-2}\ \text{mol.L}^{-1}$ et de volume $V_1 = 100\ \text{mL}$. L'équation de la réaction de l'acide avec l'eau s'écrit :
\[
\text{CH}_3\text{COOH} + \text{H}_2\text{O} \rightleftharpoons \text{CH}_3\text{COO}^- + \text{H}_3\text{O}^+
\]
La mesure du pH de $(S_1)$ donne $\text{pH}_1 = 3{,}4$.
\begin{enumerate}
    \item Dresser le tableau d'avancement de la réaction et exprimer l'avancement maximal $x_{max}$.
    \item Déterminer l'avancement final $x_f$ à partir du pH, puis calculer le taux d'avancement final $\tau_1$. Conclure sur le caractère total ou non de la transformation.
    \item Donner l'expression du quotient de réaction à l'équilibre $Q_{r,\text{éq}}$, et montrer qu'il est égal à la constante d'équilibre $K$. Calculer $K$.
    \item On prépare une solution $(S_2)$ en diluant $(S_1)$ cent fois. On donne pour cette nouvelle solution $\text{pH}_2 = 4{,}4$. Calculer le nouveau taux d'avancement $\tau_2$.
    \item Vérifier que la constante d'équilibre conserve la même valeur. Comparer $\tau_1$ et $\tau_2$ et conclure sur l'effet de la dilution.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Tableau d'avancement (quantités en mol) :
    \begin{itemize}
        \item état initial : $\text{CH}_3\text{COOH} : n_0 = C_1 V_1$ ; $\text{CH}_3\text{COO}^- : 0$ ; $\text{H}_3\text{O}^+ : \approx 0$ ;
        \item état intermédiaire (avancement $x$) : $n_0 - x$ ; $x$ ; $x$ ;
        \item état final : $n_0 - x_f$ ; $x_f$ ; $x_f$.
    \end{itemize}
    L'acide est le réactif limitant ; si la réaction était totale, $n_0 - x_{max} = 0$, donc :
    \[
    x_{max} = n_0 = C_1 V_1 = 1{,}0\times 10^{-2} \times 0{,}100 = 1{,}0\times 10^{-3}\ \text{mol}
    \]
    \item L'avancement final correspond à la quantité d'ions oxonium formés :
    \[
    x_f = [\text{H}_3\text{O}^+]_f \times V_1 = 10^{-\text{pH}_1}\times V_1 = 10^{-3{,}4}\times 0{,}100
    \]
    \[
    x_f = 4{,}0\times 10^{-4} \times 0{,}100 = 4{,}0\times 10^{-5}\ \text{mol}
    \]
    Le taux d'avancement final vaut :
    \[
    \tau_1 = \frac{x_f}{x_{max}} = \frac{4{,}0\times 10^{-5}}{1{,}0\times 10^{-3}} = 4{,}0\times 10^{-2} = 4{,}0\,\%
    \]
    Comme $\tau_1 \ll 1$, la transformation n'est pas totale : à l'état final, l'acide et ses produits coexistent.
    \item Le quotient de réaction à l'équilibre s'écrit :
    \[
    Q_{r,\text{éq}} = \frac{[\text{CH}_3\text{COO}^-]_f\,[\text{H}_3\text{O}^+]_f}{[\text{CH}_3\text{COOH}]_f}
    \]
    À l'équilibre, ce quotient prend une valeur constante notée $K$ : $Q_{r,\text{éq}} = K$. Avec $[\text{H}_3\text{O}^+]_f = 10^{-3{,}4} = 4{,}0\times 10^{-4}\ \text{mol.L}^{-1}$, $[\text{CH}_3\text{COO}^-]_f = [\text{H}_3\text{O}^+]_f$ et
    \[
    [\text{CH}_3\text{COOH}]_f = C_1 - [\text{H}_3\text{O}^+]_f = 1{,}0\times 10^{-2} - 4{,}0\times 10^{-4} = 9{,}6\times 10^{-3}\ \text{mol.L}^{-1}
    \]
    on obtient :
    \[
    K = \frac{(4{,}0\times 10^{-4})^2}{9{,}6\times 10^{-3}} = 1{,}7\times 10^{-5}
    \]
    \item Après dilution centuple : $C_2 = \dfrac{C_1}{100} = 1{,}0\times 10^{-4}\ \text{mol.L}^{-1}$. On a $[\text{H}_3\text{O}^+]_f = 10^{-4{,}4} = 4{,}0\times 10^{-5}\ \text{mol.L}^{-1}$. Comme $[\text{H}_3\text{O}^+]_f = [\text{CH}_3\text{COO}^-]_f = \dfrac{x_f'}{V_2}$ et $x_{max}' = C_2 V_2$, le taux s'écrit :
    \[
    \tau_2 = \frac{[\text{H}_3\text{O}^+]_f}{C_2} = \frac{4{,}0\times 10^{-5}}{1{,}0\times 10^{-4}} = 0{,}40 = 40\,\%
    \]
    \item On recalcule $K$ pour $(S_2)$ :
    \[
    [\text{CH}_3\text{COOH}]_f = C_2 - [\text{H}_3\text{O}^+]_f = 1{,}0\times 10^{-4} - 4{,}0\times 10^{-5} = 6{,}0\times 10^{-5}\ \text{mol.L}^{-1}
    \]
    \[
    K = \frac{(4{,}0\times 10^{-5})^2}{6{,}0\times 10^{-5}} = 2{,}7\times 10^{-5}
    \]
    Aux incertitudes de mesure près, on retrouve $K \approx 2\times 10^{-5}$ : la constante d'équilibre est indépendante de l'état initial. En revanche $\tau_2 = 40\,\% > \tau_1 = 4{,}0\,\%$ : la dilution augmente le taux d'avancement, donc favorise la dissociation de l'acide (déplacement dans le sens direct).
\end{enumerate}

### Problème 2 : Constante d'équilibre et critère d'évolution spontanée
\begin{enonce}
On étudie la réaction entre l'acide éthanoïque et les ions méthanoate en solution aqueuse :
\[
\text{CH}_3\text{COOH} + \text{HCOO}^- \rightleftharpoons \text{CH}_3\text{COO}^- + \text{HCOOH}
\]
On donne les constantes d'acidité : $K_{A1} = 1{,}8\times 10^{-5}$ pour le couple $\text{CH}_3\text{COOH}/\text{CH}_3\text{COO}^-$ et $K_{A2} = 1{,}8\times 10^{-4}$ pour le couple $\text{HCOOH}/\text{HCOO}^-$.
\begin{enumerate}
    \item Exprimer le quotient de réaction $Q_r$ associé à l'équation ci-dessus.
    \item Montrer que la constante d'équilibre s'écrit $K = \dfrac{K_{A1}}{K_{A2}}$ et la calculer.
    \item On mélange des volumes égaux de quatre solutions de manière à obtenir, à l'instant initial, les concentrations suivantes :
    \[
    [\text{CH}_3\text{COOH}]_i = [\text{HCOO}^-]_i = 1{,}0\times 10^{-2}\ \text{mol.L}^{-1}
    \]
    \[
    [\text{CH}_3\text{COO}^-]_i = [\text{HCOOH}]_i = 1{,}0\times 10^{-3}\ \text{mol.L}^{-1}
    \]
    Calculer le quotient de réaction initial $Q_{r,i}$.
    \item En comparant $Q_{r,i}$ et $K$, déterminer le sens d'évolution spontanée du système. Préciser quelles espèces se forment.
    \item On prépare un second mélange tel que $Q_{r,i}' = 0{,}50$. Dans quel sens évolue alors le système ?
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Toutes les espèces sont dissoutes (l'eau, solvant, n'apparaît pas) :
    \[
    Q_r = \frac{[\text{CH}_3\text{COO}^-]\,[\text{HCOOH}]}{[\text{CH}_3\text{COOH}]\,[\text{HCOO}^-]}
    \]
    \item Les constantes d'acidité s'écrivent :
    \[
    K_{A1} = \frac{[\text{CH}_3\text{COO}^-]\,[\text{H}_3\text{O}^+]}{[\text{CH}_3\text{COOH}]}, \qquad
    K_{A2} = \frac{[\text{HCOO}^-]\,[\text{H}_3\text{O}^+]}{[\text{HCOOH}]}
    \]
    À l'équilibre, $K = Q_{r,\text{éq}}$. En formant le rapport, le terme $[\text{H}_3\text{O}^+]$ se simplifie :
    \[
    \frac{K_{A1}}{K_{A2}} = \frac{[\text{CH}_3\text{COO}^-]\,[\text{HCOOH}]}{[\text{CH}_3\text{COOH}]\,[\text{HCOO}^-]} = Q_{r,\text{éq}} = K
    \]
    Application numérique :
    \[
    K = \frac{K_{A1}}{K_{A2}} = \frac{1{,}8\times 10^{-5}}{1{,}8\times 10^{-4}} = 1{,}0\times 10^{-1} = 0{,}10
    \]
    \item Le quotient de réaction dans l'état initial vaut :
    \[
    Q_{r,i} = \frac{[\text{CH}_3\text{COO}^-]_i\,[\text{HCOOH}]_i}{[\text{CH}_3\text{COOH}]_i\,[\text{HCOO}^-]_i}
    = \frac{1{,}0\times 10^{-3}\times 1{,}0\times 10^{-3}}{1{,}0\times 10^{-2}\times 1{,}0\times 10^{-2}}
    \]
    \[
    Q_{r,i} = \frac{1{,}0\times 10^{-6}}{1{,}0\times 10^{-4}} = 1{,}0\times 10^{-2}
    \]
    \item On compare au $K$ trouvé :
    \[
    Q_{r,i} = 1{,}0\times 10^{-2} < K = 0{,}10
    \]
    Comme $Q_{r,i} < K$, le système évolue spontanément dans le sens direct (de gauche à droite) afin que $Q_r$ augmente jusqu'à $K$. Il se forme donc des ions éthanoate $\text{CH}_3\text{COO}^-$ et de l'acide méthanoïque $\text{HCOOH}$, tandis que $\text{CH}_3\text{COOH}$ et $\text{HCOO}^-$ sont consommés.
    \item Pour le second mélange :
    \[
    Q_{r,i}' = 0{,}50 > K = 0{,}10
    \]
    Comme $Q_{r,i}' > K$, le système évolue dans le sens inverse (de droite à gauche) : $Q_r$ doit diminuer jusqu'à $K$. Les ions $\text{CH}_3\text{COO}^-$ et l'acide $\text{HCOOH}$ sont alors consommés au profit de $\text{CH}_3\text{COOH}$ et $\text{HCOO}^-$.
\end{enumerate}

### Problème 3 : Équilibre en phase gazeuse et taux d'avancement
\begin{enonce}
À haute température, l'iodure d'hydrogène se décompose selon l'équilibre en phase gazeuse :
\[
2\,\text{HI}_{(g)} \rightleftharpoons \text{H}_{2(g)} + \text{I}_{2(g)}
\]
On introduit dans un récipient de volume $V = 1{,}0\ \text{L}$, maintenu à température constante, une quantité initiale $n_0 = 1{,}0\ \text{mol}$ de $\text{HI}$, en l'absence de $\text{H}_2$ et de $\text{I}_2$. À l'équilibre, on mesure une quantité de diiode $n(\text{I}_2) = 0{,}11\ \text{mol}$.
\begin{enumerate}
    \item Dresser le tableau d'avancement et exprimer les quantités de matière de chaque espèce en fonction de l'avancement $x$.
    \item Déterminer l'avancement final $x_f$, puis les concentrations des trois espèces à l'équilibre.
    \item Donner l'expression du quotient de réaction $Q_r$ et calculer la constante d'équilibre $K$.
    \item Calculer le taux d'avancement final $\tau$ de la réaction.
    \item À un autre instant, on relève les concentrations $[\text{HI}] = 0{,}40\ \text{mol.L}^{-1}$, $[\text{H}_2] = 0{,}30\ \text{mol.L}^{-1}$, $[\text{I}_2] = 0{,}30\ \text{mol.L}^{-1}$. Le système est-il à l'équilibre ? Sinon, dans quel sens évolue-t-il ?
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Tableau d'avancement (quantités en mol) :
    \begin{itemize}
        \item état initial : $\text{HI} : n_0$ ; $\text{H}_2 : 0$ ; $\text{I}_2 : 0$ ;
        \item état intermédiaire : $\text{HI} : n_0 - 2x$ ; $\text{H}_2 : x$ ; $\text{I}_2 : x$ ;
        \item état final : $\text{HI} : n_0 - 2x_f$ ; $\text{H}_2 : x_f$ ; $\text{I}_2 : x_f$.
    \end{itemize}
    \item La quantité de diiode à l'équilibre vaut $x_f$, donc :
    \[
    x_f = n(\text{I}_2) = 0{,}11\ \text{mol}
    \]
    Les quantités à l'équilibre sont :
    \[
    n(\text{HI}) = n_0 - 2x_f = 1{,}0 - 2\times 0{,}11 = 0{,}78\ \text{mol}, \quad n(\text{H}_2) = n(\text{I}_2) = 0{,}11\ \text{mol}
    \]
    Avec $V = 1{,}0\ \text{L}$, les concentrations (en $\text{mol.L}^{-1}$) sont numériquement égales aux quantités :
    \[
    [\text{HI}] = 0{,}78\ \text{mol.L}^{-1}, \quad [\text{H}_2] = [\text{I}_2] = 0{,}11\ \text{mol.L}^{-1}
    \]
    \item Le quotient de réaction s'écrit :
    \[
    Q_r = \frac{[\text{H}_2]\,[\text{I}_2]}{[\text{HI}]^2}
    \]
    À l'équilibre, $K = Q_{r,\text{éq}}$ :
    \[
    K = \frac{0{,}11\times 0{,}11}{(0{,}78)^2} = \frac{1{,}21\times 10^{-2}}{0{,}608} = 2{,}0\times 10^{-2}
    \]
    \item Si la réaction était totale, tout le $\text{HI}$ serait consommé : $n_0 - 2x_{max} = 0$, soit $x_{max} = \dfrac{n_0}{2} = 0{,}50\ \text{mol}$. D'où :
    \[
    \tau = \frac{x_f}{x_{max}} = \frac{0{,}11}{0{,}50} = 0{,}22 = 22\,\%
    \]
    La transformation est limitée : $\text{HI}$, $\text{H}_2$ et $\text{I}_2$ coexistent à l'équilibre.
    \item On calcule le quotient de réaction dans cet état :
    \[
    Q_{r,i} = \frac{[\text{H}_2]\,[\text{I}_2]}{[\text{HI}]^2} = \frac{0{,}30\times 0{,}30}{(0{,}40)^2} = \frac{0{,}090}{0{,}160} = 0{,}56
    \]
    On compare à $K$ :
    \[
    Q_{r,i} = 0{,}56 > K = 2{,}0\times 10^{-2}
    \]
    Le système n'est pas à l'équilibre. Comme $Q_{r,i} > K$, il évolue spontanément dans le sens inverse (formation de $\text{HI}$, consommation de $\text{H}_2$ et $\text{I}_2$) jusqu'à ce que $Q_r$ diminue à la valeur $K$.
\end{enumerate}
