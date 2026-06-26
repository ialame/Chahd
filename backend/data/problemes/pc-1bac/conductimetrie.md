### Problème 1 : De la cellule au dosage du sérum physiologique
\begin{enonce}
Le sérum physiologique est une solution aqueuse de chlorure de sodium $(Na^{+} + Cl^{-})$. On veut vérifier sa concentration par conductimétrie.

\textit{Données} : $\lambda_{Na^{+}} = 5{,}0\times10^{-3}\ \text{S}\cdot\text{m}^2\cdot\text{mol}^{-1}$ ; $\lambda_{Cl^{-}} = 7{,}6\times10^{-3}\ \text{S}\cdot\text{m}^2\cdot\text{mol}^{-1}$ ; masse molaire $M(NaCl) = 58{,}5\ \text{g}\cdot\text{mol}^{-1}$.

\textbf{Partie A — Caractérisation de la cellule.} La cellule possède deux plaques de surface $S = 1{,}0\ \text{cm}^2$ distantes de $L = 0{,}50\ \text{cm}$.
\begin{enumerate}
    \item Calculer la constante de cellule $k = \dfrac{S}{L}$ en unités SI.
    \item On y plonge une solution de $NaCl$ de concentration $C = 5{,}0\times10^{-3}\ \text{mol}\cdot\text{L}^{-1}$. Calculer sa conductivité $\sigma$.
    \item En déduire la conductance $G$ que mesurerait la cellule.
\end{enumerate}

\textbf{Partie B — Dosage du sérum.} On dilue le sérum physiologique $10$ fois. La conductivité de la solution diluée vaut $\sigma_d = 0{,}189\ \text{S}\cdot\text{m}^{-1}$.
\begin{enumerate}
    \setcounter{enumi}{3}
    \item Déterminer la concentration $C_d$ de la solution diluée (en $\text{mol}\cdot\text{m}^{-3}$ puis en $\text{mol}\cdot\text{L}^{-1}$).
    \item En déduire la concentration $C_0$ du sérum non dilué.
    \item Calculer la concentration massique du sérum et la comparer à la valeur attendue de $9\ \text{g}\cdot\text{L}^{-1}$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item $S = 1{,}0\times10^{-4}\ \text{m}^2$ et $L = 0{,}50\times10^{-2} = 5{,}0\times10^{-3}\ \text{m}$, donc :
    $$k = \dfrac{S}{L} = \dfrac{1{,}0\times10^{-4}}{5{,}0\times10^{-3}} = 2{,}0\times10^{-2}\ \text{m}.$$
    \item $C = 5{,}0\times10^{-3}\ \text{mol}\cdot\text{L}^{-1} = 5{,}0\ \text{mol}\cdot\text{m}^{-3}$, avec $[Na^{+}] = [Cl^{-}] = C$ :
    $$\sigma = \big(\lambda_{Na^{+}} + \lambda_{Cl^{-}}\big)\,C = (5{,}0 + 7{,}6)\times10^{-3}\times 5{,}0 = 0{,}063\ \text{S}\cdot\text{m}^{-1}.$$
    \item $G = \sigma\,k = 0{,}063 \times 2{,}0\times10^{-2} = 1{,}26\times10^{-3}\ \text{S} \approx 1{,}3\ \text{mS}.$
    \item De $\sigma_d = \big(\lambda_{Na^{+}} + \lambda_{Cl^{-}}\big)\,C_d$ on tire :
    $$C_d = \dfrac{\sigma_d}{\lambda_{Na^{+}} + \lambda_{Cl^{-}}} = \dfrac{0{,}189}{12{,}6\times10^{-3}} = 15{,}0\ \text{mol}\cdot\text{m}^{-3} = 1{,}50\times10^{-2}\ \text{mol}\cdot\text{L}^{-1}.$$
    \item La dilution a divisé la concentration par $10$, donc :
    $$C_0 = 10\times C_d = 10\times1{,}50\times10^{-2} = 0{,}15\ \text{mol}\cdot\text{L}^{-1}.$$
    \item Concentration massique : $C_m = C_0 \times M = 0{,}15 \times 58{,}5 = 8{,}8\ \text{g}\cdot\text{L}^{-1}$. Cette valeur est très proche des $9\ \text{g}\cdot\text{L}^{-1}$ attendus : le sérum est bien conforme.
\end{enumerate}

### Problème 2 : Détermination d'une conductivité molaire ionique
\begin{enonce}
On étudie des solutions de chlorure de potassium $(K^{+} + Cl^{-})$ de différentes concentrations $C$. On mesure leur conductivité $\sigma$ et on trace $\sigma = f(C)$ (avec $C$ exprimée en $\text{mol}\cdot\text{m}^{-3}$) : on obtient une droite passant par l'origine, de coefficient directeur $a = 15{,}0\times10^{-3}\ \text{S}\cdot\text{m}^2\cdot\text{mol}^{-1}$.

\textit{Donnée} : $\lambda_{Cl^{-}} = 7{,}6\times10^{-3}\ \text{S}\cdot\text{m}^2\cdot\text{mol}^{-1}$.
\begin{enumerate}
    \item Établir l'expression de $\sigma$ en fonction de $C$, $\lambda_{K^{+}}$ et $\lambda_{Cl^{-}}$. À quelle grandeur correspond le coefficient directeur $a$ ?
    \item En déduire la valeur de la conductivité molaire ionique $\lambda_{K^{+}}$.
    \item Pour $C = 2{,}0\times10^{-2}\ \text{mol}\cdot\text{L}^{-1}$, calculer $\sigma$, puis la conductance $G$ mesurée par une cellule de constante $k = 1{,}0\times10^{-2}\ \text{m}$.
    \item On dilue cette dernière solution deux fois. Sans nouveau calcul complet, donner les nouvelles valeurs de $\sigma$ et de $G$. Justifier.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item La dissolution donne $[K^{+}] = [Cl^{-}] = C$, d'où par la loi de Kohlrausch :
    $$\sigma = \lambda_{K^{+}}[K^{+}] + \lambda_{Cl^{-}}[Cl^{-}] = \big(\lambda_{K^{+}} + \lambda_{Cl^{-}}\big)\,C.$$
    La conductivité est proportionnelle à $C$ : le coefficient directeur est $a = \lambda_{K^{+}} + \lambda_{Cl^{-}}$.
    \item $\lambda_{K^{+}} = a - \lambda_{Cl^{-}} = 15{,}0\times10^{-3} - 7{,}6\times10^{-3} = 7{,}4\times10^{-3}\ \text{S}\cdot\text{m}^2\cdot\text{mol}^{-1}.$
    \item $C = 2{,}0\times10^{-2}\ \text{mol}\cdot\text{L}^{-1} = 20\ \text{mol}\cdot\text{m}^{-3}$, donc :
    $$\sigma = a\,C = 15{,}0\times10^{-3}\times 20 = 0{,}30\ \text{S}\cdot\text{m}^{-1}, \qquad G = \sigma\,k = 0{,}30\times1{,}0\times10^{-2} = 3{,}0\times10^{-3}\ \text{S} = 3{,}0\ \text{mS}.$$
    \item Comme $\sigma$ et $G$ sont proportionnels à $C$, diviser la concentration par $2$ divise les deux par $2$ : $\sigma = 0{,}15\ \text{S}\cdot\text{m}^{-1}$ et $G = 1{,}5\ \text{mS}$.
\end{enumerate}

### Problème 3 : Contrôle de la salinité d'une eau par étalonnage
\begin{enonce}
Pour contrôler la concentration en chlorure de sodium d'une eau, on utilise une cellule de constante $k = 1{,}0\times10^{-2}\ \text{m}$. On mesure la conductance $G$ de solutions étalons de $NaCl$ de concentration $C$ connue :

\begin{center}
\begin{tabular}{|c|c|c|c|c|c|}
\hline
$C\ (\text{mmol}\cdot\text{L}^{-1})$ & $1{,}0$ & $2{,}0$ & $3{,}0$ & $4{,}0$ & $5{,}0$ \\
\hline
$G\ (\text{mS})$ & $0{,}126$ & $0{,}252$ & $0{,}378$ & $0{,}504$ & $0{,}630$ \\
\hline
\end{tabular}
\end{center}

\begin{enumerate}
    \item Pour chaque solution, calculer la conductivité $\sigma = \dfrac{G}{k}$. Que constate-t-on vis-à-vis de $C$ ?
    \item Déterminer le coefficient directeur de la droite $\sigma = f(C)$ (avec $C$ en $\text{mol}\cdot\text{m}^{-3}$). Le comparer à $\lambda_{Na^{+}} + \lambda_{Cl^{-}} = 12{,}6\times10^{-3}\ \text{S}\cdot\text{m}^2\cdot\text{mol}^{-1}$.
    \item L'eau à contrôler donne une conductance $G = 0{,}44\ \text{mS}$. Déterminer sa concentration $C$ en ions chlorure (en $\text{mmol}\cdot\text{L}^{-1}$).
    \item Citer deux conditions à respecter pour que cette méthode d'étalonnage reste valable.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item $\sigma = \dfrac{G}{k}$. Par exemple pour $G = 0{,}126\ \text{mS}$ : $\sigma = \dfrac{0{,}126\times10^{-3}}{1{,}0\times10^{-2}} = 0{,}0126\ \text{S}\cdot\text{m}^{-1}$. De même on obtient $0{,}0252$ ; $0{,}0378$ ; $0{,}0504$ ; $0{,}0630\ \text{S}\cdot\text{m}^{-1}$. Le rapport $\dfrac{\sigma}{C}$ est constant : $\sigma$ est proportionnelle à $C$.
    \item Avec $C$ en $\text{mol}\cdot\text{m}^{-3}$ (soit $C = 5{,}0\ \text{mol}\cdot\text{m}^{-3}$ pour le dernier point) :
    $$a = \dfrac{\sigma}{C} = \dfrac{0{,}0630}{5{,}0} = 1{,}26\times10^{-2}\ \text{S}\cdot\text{m}^2\cdot\text{mol}^{-1}.$$
    Cette valeur est égale à $\lambda_{Na^{+}} + \lambda_{Cl^{-}}$, conformément à la loi de Kohlrausch.
    \item La conductivité de l'eau vaut $\sigma = \dfrac{G}{k} = \dfrac{0{,}44\times10^{-3}}{1{,}0\times10^{-2}} = 0{,}044\ \text{S}\cdot\text{m}^{-1}$. D'où, à partir de la droite d'étalonnage :
    $$C = \dfrac{\sigma}{a} = \dfrac{0{,}044}{1{,}26\times10^{-2}} = 3{,}5\ \text{mol}\cdot\text{m}^{-3} = 3{,}5\ \text{mmol}\cdot\text{L}^{-1}.$$
    \item La solution doit être **diluée** (proportionnalité $\sigma$–$C$ valable seulement aux faibles concentrations) et la mesure doit se faire à **température constante** (les $\lambda_i$ dépendent fortement de la température). On utilise aussi toujours la **même cellule** pour conserver la même constante $k$.
\end{enumerate}
