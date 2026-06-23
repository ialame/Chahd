### Exercice 1 : Transformation non totale et taux d'avancement
\begin{enonce}
On dissout une quantité $n_0 = 1{,}0\times 10^{-2}\ \text{mol}$ d'acide éthanoïque $\text{CH}_3\text{COOH}$ dans l'eau pour obtenir une solution de volume $V = 1{,}0\ \text{L}$. L'équation de la réaction est :
\[
\text{CH}_3\text{COOH} + \text{H}_2\text{O} \rightleftharpoons \text{CH}_3\text{COO}^- + \text{H}_3\text{O}^+
\]
La mesure du pH de la solution donne $\text{pH} = 3{,}4$.
\begin{enumerate}
    \item Déterminer l'avancement maximal $x_{max}$ en supposant la réaction totale.
    \item Déterminer l'avancement final $x_f$ à partir du pH.
    \item Calculer le taux d'avancement final $\tau$ et conclure.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Si la réaction était totale, l'acide serait entièrement consommé : $x_{max} = n_0 = 1{,}0\times 10^{-2}\ \text{mol}$.
    \item L'avancement final correspond à la quantité d'ions oxonium formés : $x_f = [\text{H}_3\text{O}^+]_f \times V$ avec $[\text{H}_3\text{O}^+]_f = 10^{-\text{pH}}$ :
    \[
    [\text{H}_3\text{O}^+]_f = 10^{-3{,}4} = 4{,}0\times 10^{-4}\ \text{mol.L}^{-1}
    \]
    \[
    x_f = 4{,}0\times 10^{-4} \times 1{,}0 = 4{,}0\times 10^{-4}\ \text{mol}
    \]
    \item Le taux d'avancement final vaut :
    \[
    \tau = \frac{x_f}{x_{max}} = \frac{4{,}0\times 10^{-4}}{1{,}0\times 10^{-2}} = 4{,}0\times 10^{-2} = 4{,}0\,\%
    \]
    Comme $\tau \ll 1$, la transformation est très limitée : réactifs et produits coexistent à l'état final.
\end{enumerate}

### Exercice 2 : Expression du quotient de réaction
\begin{enonce}
On considère les transformations suivantes en solution aqueuse :
\begin{enumerate}
    \item $\text{NH}_3 + \text{H}_2\text{O} \rightleftharpoons \text{NH}_4^+ + \text{HO}^-$
    \item $2\,\text{HI}_{(g)} \rightleftharpoons \text{H}_{2(g)} + \text{I}_{2(g)}$
\end{enumerate}
Donner l'expression du quotient de réaction $Q_r$ pour chacune.
\end{enonce}

\textbf{Solution :}
Le quotient de réaction fait intervenir les concentrations des espèces dissoutes (en $\text{mol.L}^{-1}$), à l'exclusion du solvant (l'eau) et des solides.
\begin{enumerate}
    \item L'eau est le solvant, elle n'apparaît pas :
    \[
    Q_r = \frac{[\text{NH}_4^+]\,[\text{HO}^-]}{[\text{NH}_3]}
    \]
    \item Toutes les espèces sont dissoutes, et le coefficient stœchiométrique de $\text{HI}$ devient un exposant :
    \[
    Q_r = \frac{[\text{H}_2]\,[\text{I}_2]}{[\text{HI}]^2}
    \]
\end{enumerate}

### Exercice 3 : Constante d'équilibre d'un acide
\begin{enonce}
Une solution d'acide méthanoïque $\text{HCOOH}$ de concentration $C = 1{,}0\times 10^{-2}\ \text{mol.L}^{-1}$ a un pH égal à $2{,}9$. L'équation de la réaction avec l'eau est :
\[
\text{HCOOH} + \text{H}_2\text{O} \rightleftharpoons \text{HCOO}^- + \text{H}_3\text{O}^+
\]
Déterminer la constante d'équilibre $K$ associée à cette réaction.
\end{enonce}

\textbf{Solution :}
À l'équilibre, $[\text{H}_3\text{O}^+]_f = 10^{-2{,}9} = 1{,}26\times 10^{-3}\ \text{mol.L}^{-1}$.
La réaction produit autant d'ions méthanoate que d'ions oxonium :
\[
[\text{HCOO}^-]_f = [\text{H}_3\text{O}^+]_f = 1{,}26\times 10^{-3}\ \text{mol.L}^{-1}
\]
La concentration d'acide restant vaut :
\[
[\text{HCOOH}]_f = C - [\text{H}_3\text{O}^+]_f = 1{,}0\times 10^{-2} - 1{,}26\times 10^{-3} = 8{,}7\times 10^{-3}\ \text{mol.L}^{-1}
\]
La constante d'équilibre est égale au quotient de réaction à l'équilibre :
\[
K = \frac{[\text{HCOO}^-]_f\,[\text{H}_3\text{O}^+]_f}{[\text{HCOOH}]_f}
= \frac{(1{,}26\times 10^{-3})^2}{8{,}7\times 10^{-3}} = 1{,}8\times 10^{-4}
\]

### Exercice 4 : La constante d'équilibre ne dépend pas de l'état initial
\begin{enonce}
On prépare deux solutions d'acide éthanoïque de concentrations différentes. À l'équilibre, on mesure :
\begin{itemize}
    \item solution (a) : $C_a = 1{,}0\times 10^{-2}\ \text{mol.L}^{-1}$, $\tau_a = 4{,}2\,\%$ ;
    \item solution (b) : $C_b = 1{,}0\times 10^{-3}\ \text{mol.L}^{-1}$, $\tau_b = 13\,\%$.
\end{itemize}
Vérifier que la constante d'équilibre $K$ est la même dans les deux cas. On rappelle que pour un acide $\text{AH}$ de concentration $C$ et de taux d'avancement $\tau$, $K = \dfrac{C\,\tau^2}{1-\tau}$.
\end{enonce}

\textbf{Solution :}
On applique la relation pour chaque solution.
Pour (a) :
\[
K_a = \frac{C_a\,\tau_a^2}{1-\tau_a} = \frac{1{,}0\times 10^{-2}\times (0{,}042)^2}{1-0{,}042} = 1{,}8\times 10^{-5}
\]
Pour (b) :
\[
K_b = \frac{C_b\,\tau_b^2}{1-\tau_b} = \frac{1{,}0\times 10^{-3}\times (0{,}13)^2}{1-0{,}13} = 1{,}9\times 10^{-5}
\]
Aux incertitudes près, $K_a \approx K_b \approx 1{,}8\times 10^{-5}$ : la constante d'équilibre ne dépend pas de l'état initial du système, contrairement au taux d'avancement $\tau$.

### Exercice 5 : Influence de la dilution sur le taux d'avancement
\begin{enonce}
On dilue dix fois une solution d'acide éthanoïque : sa concentration passe de $C_1 = 1{,}0\times 10^{-2}\ \text{mol.L}^{-1}$ à $C_2 = 1{,}0\times 10^{-3}\ \text{mol.L}^{-1}$. La constante d'équilibre de la réaction avec l'eau vaut $K = 1{,}8\times 10^{-5}$. On utilise l'approximation $\tau = \sqrt{\dfrac{K}{C}}$, valable lorsque $\tau \ll 1$.
\begin{enumerate}
    \item Calculer $\tau_1$ et $\tau_2$.
    \item Comment varie le taux d'avancement lors d'une dilution ? Conclure.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item On applique $\tau = \sqrt{K/C}$ :
    \[
    \tau_1 = \sqrt{\frac{1{,}8\times 10^{-5}}{1{,}0\times 10^{-2}}} = \sqrt{1{,}8\times 10^{-3}} = 4{,}2\times 10^{-2} = 4{,}2\,\%
    \]
    \[
    \tau_2 = \sqrt{\frac{1{,}8\times 10^{-5}}{1{,}0\times 10^{-3}}} = \sqrt{1{,}8\times 10^{-2}} = 1{,}3\times 10^{-1} = 13\,\%
    \]
    \item Lorsque la concentration diminue (dilution), le taux d'avancement final augmente : ici $\tau$ passe de $4{,}2\,\%$ à $13\,\%$. La dilution favorise la dissociation de l'acide, donc déplace l'équilibre dans le sens direct.
\end{enumerate}

### Exercice 6 : Critère d'évolution spontanée
\begin{enonce}
Un système chimique siège de la réaction
\[
\text{Fe}^{2+} + \text{Ce}^{4+} \rightleftharpoons \text{Fe}^{3+} + \text{Ce}^{3+}
\]
a une constante d'équilibre $K = 1{,}0\times 10^{12}$. À un instant donné, les concentrations sont :
\[
[\text{Fe}^{2+}] = [\text{Ce}^{4+}] = 0{,}10\ \text{mol.L}^{-1}, \quad [\text{Fe}^{3+}] = [\text{Ce}^{3+}] = 1{,}0\times 10^{-3}\ \text{mol.L}^{-1}
\]
Déterminer le sens d'évolution spontanée du système.
\end{enonce}

\textbf{Solution :}
On calcule le quotient de réaction dans l'état initial :
\[
Q_{r,i} = \frac{[\text{Fe}^{3+}]\,[\text{Ce}^{3+}]}{[\text{Fe}^{2+}]\,[\text{Ce}^{4+}]}
= \frac{(1{,}0\times 10^{-3})^2}{(0{,}10)^2} = 1{,}0\times 10^{-4}
\]
On compare à la constante d'équilibre :
\[
Q_{r,i} = 1{,}0\times 10^{-4} < K = 1{,}0\times 10^{12}
\]
Comme $Q_{r,i} < K$, le système évolue spontanément dans le sens direct (sens $1$, de gauche à droite) afin que $Q_r$ augmente jusqu'à atteindre la valeur $K$.

### Exercice 7 : Comparaison de Q et de K dans les deux sens
\begin{enonce}
On considère l'équilibre d'estérification en phase liquide :
\[
\text{acide} + \text{alcool} \rightleftharpoons \text{ester} + \text{eau}
\]
de constante $K = 4{,}0$ (l'eau n'est pas le solvant ici, elle figure dans $Q_r$). On part d'un mélange contenant : acide $0{,}50\ \text{mol}$, alcool $0{,}50\ \text{mol}$, ester $0{,}80\ \text{mol}$, eau $0{,}80\ \text{mol}$, dans un volume $V$.
\begin{enumerate}
    \item Exprimer $Q_{r,i}$ et le calculer (le volume se simplifie).
    \item En déduire le sens d'évolution du système.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Le quotient s'écrit avec les concentrations $[\,X\,] = n_X / V$ ; le volume se simplifie car il y a autant de termes au numérateur qu'au dénominateur :
    \[
    Q_{r,i} = \frac{n_{\text{ester}}\,n_{\text{eau}}}{n_{\text{acide}}\,n_{\text{alcool}}}
    = \frac{0{,}80 \times 0{,}80}{0{,}50 \times 0{,}50} = \frac{0{,}64}{0{,}25} = 2{,}56
    \]
    \item On compare : $Q_{r,i} = 2{,}56 < K = 4{,}0$. Comme $Q_{r,i} < K$, le système évolue dans le sens direct : il se forme davantage d'ester et d'eau jusqu'à ce que $Q_r = K$.
\end{enumerate}

### Exercice 8 : Sens inverse d'évolution
\begin{enonce}
Pour la réaction
\[
\text{CH}_3\text{COOH} + \text{H}_2\text{O} \rightleftharpoons \text{CH}_3\text{COO}^- + \text{H}_3\text{O}^+
\]
de constante $K = 1{,}8\times 10^{-5}$, on prépare un mélange tel que :
\[
[\text{CH}_3\text{COOH}] = 1{,}0\times 10^{-2}\ \text{mol.L}^{-1}, \quad [\text{CH}_3\text{COO}^-] = 5{,}0\times 10^{-2}\ \text{mol.L}^{-1}, \quad [\text{H}_3\text{O}^+] = 1{,}0\times 10^{-2}\ \text{mol.L}^{-1}
\]
Déterminer le sens d'évolution du système.
\end{enonce}

\textbf{Solution :}
Le quotient de réaction initial vaut :
\[
Q_{r,i} = \frac{[\text{CH}_3\text{COO}^-]\,[\text{H}_3\text{O}^+]}{[\text{CH}_3\text{COOH}]}
= \frac{5{,}0\times 10^{-2}\times 1{,}0\times 10^{-2}}{1{,}0\times 10^{-2}} = 5{,}0\times 10^{-2}
\]
On compare à $K$ :
\[
Q_{r,i} = 5{,}0\times 10^{-2} > K = 1{,}8\times 10^{-5}
\]
Comme $Q_{r,i} > K$, le système évolue spontanément dans le sens inverse (sens $2$, de droite à gauche) : les ions $\text{CH}_3\text{COO}^-$ et $\text{H}_3\text{O}^+$ se recombinent pour que $Q_r$ diminue jusqu'à $K$.
