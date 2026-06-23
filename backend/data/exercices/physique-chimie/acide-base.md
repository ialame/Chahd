### Exercice 1 : pH et concentration en ions oxonium
\begin{enonce}
À $25\ ^\circ\text{C}$, une solution aqueuse a un pH égal à $2{,}8$.
\begin{enumerate}
    \item Calculer la concentration en ions oxonium $[\text{H}_3\text{O}^+]$.
    \item En déduire la concentration en ions hydroxyde $[\text{OH}^-]$, sachant que le produit ionique de l'eau vaut $K_e = 10^{-14}$.
    \item La solution est-elle acide, neutre ou basique ? Justifier.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Par définition $\text{pH} = -\log[\text{H}_3\text{O}^+]$, donc :
    \[
    [\text{H}_3\text{O}^+] = 10^{-\text{pH}} = 10^{-2{,}8} \approx 1{,}6\times 10^{-3}\ \text{mol.L}^{-1}
    \]
    \item Le produit ionique de l'eau impose $[\text{H}_3\text{O}^+]\,[\text{OH}^-] = K_e$, d'où :
    \[
    [\text{OH}^-] = \frac{K_e}{[\text{H}_3\text{O}^+]} = \frac{10^{-14}}{1{,}6\times 10^{-3}} \approx 6{,}3\times 10^{-12}\ \text{mol.L}^{-1}
    \]
    \item On a $[\text{H}_3\text{O}^+] > [\text{OH}^-]$ (ou $\text{pH} < 7$ à $25\ ^\circ\text{C}$) : la solution est acide.
\end{enumerate}

### Exercice 2 : pH d'une solution d'acide fort
\begin{enonce}
On dispose d'une solution d'acide chlorhydrique ($\text{H}_3\text{O}^+ + \text{Cl}^-$) de concentration apportée $C = 5{,}0\times 10^{-3}\ \text{mol.L}^{-1}$. L'acide chlorhydrique est un acide fort, totalement dissocié dans l'eau.

Calculer le pH de cette solution à $25\ ^\circ\text{C}$.
\end{enonce}

\textbf{Solution :}
L'acide chlorhydrique étant un acide fort, sa dissociation est totale :
\[
\text{HCl} + \text{H}_2\text{O} \longrightarrow \text{H}_3\text{O}^+ + \text{Cl}^-
\]
Chaque molécule d'acide libère un ion oxonium, donc $[\text{H}_3\text{O}^+] = C = 5{,}0\times 10^{-3}\ \text{mol.L}^{-1}$ (la concentration en ions oxonium issus de l'eau étant négligeable). On en déduit :
\[
\text{pH} = -\log[\text{H}_3\text{O}^+] = -\log\left(5{,}0\times 10^{-3}\right) \approx 2{,}3
\]

### Exercice 3 : Taux d'avancement final d'un acide faible
\begin{enonce}
Une solution d'acide éthanoïque (acide acétique $\text{CH}_3\text{COOH}$) de concentration apportée $C = 1{,}0\times 10^{-2}\ \text{mol.L}^{-1}$ a un pH égal à $3{,}4$ à $25\ ^\circ\text{C}$.
\begin{enumerate}
    \item Écrire l'équation de la réaction de l'acide avec l'eau.
    \item Déterminer le taux d'avancement final $\tau$ de cette réaction.
    \item L'acide éthanoïque est-il un acide fort ou un acide faible ? Justifier.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item La réaction de l'acide éthanoïque avec l'eau s'écrit :
    \[
    \text{CH}_3\text{COOH} + \text{H}_2\text{O} \rightleftharpoons \text{CH}_3\text{COO}^- + \text{H}_3\text{O}^+
    \]
    \item Le taux d'avancement final est le rapport de l'avancement final à l'avancement maximal. Pour un volume $V$ de solution :
    \[
    \tau = \frac{x_f}{x_{\max}} = \frac{[\text{H}_3\text{O}^+]}{C}
    \]
    car $x_{\max}$ correspondrait à une dissociation totale ($[\text{H}_3\text{O}^+]_{\max} = C$). Avec $[\text{H}_3\text{O}^+] = 10^{-3{,}4} \approx 4{,}0\times 10^{-4}\ \text{mol.L}^{-1}$ :
    \[
    \tau = \frac{4{,}0\times 10^{-4}}{1{,}0\times 10^{-2}} = 4{,}0\times 10^{-2} = 4{,}0\ \%
    \]
    \item Le taux d'avancement est très inférieur à $1$ ($\tau \ll 1$) : la réaction est limitée, l'acide n'est que partiellement dissocié. C'est donc un acide faible.
\end{enumerate}

### Exercice 4 : Constante d'acidité et pKA
\begin{enonce}
On considère le couple acide/base $\text{CH}_3\text{COOH}/\text{CH}_3\text{COO}^-$. Dans la solution de l'exercice précédent ($C = 1{,}0\times 10^{-2}\ \text{mol.L}^{-1}$, $\text{pH} = 3{,}4$), on souhaite déterminer la constante d'acidité $K_A$ et le $\text{p}K_A$ du couple.

Déterminer $K_A$ puis $\text{p}K_A$ à $25\ ^\circ\text{C}$.
\end{enonce}

\textbf{Solution :}
La constante d'acidité du couple s'écrit :
\[
K_A = \frac{[\text{CH}_3\text{COO}^-]\,[\text{H}_3\text{O}^+]}{[\text{CH}_3\text{COOH}]}
\]
On a $[\text{H}_3\text{O}^+] = 10^{-3{,}4} \approx 4{,}0\times 10^{-4}\ \text{mol.L}^{-1}$. La conservation de la charge donne $[\text{CH}_3\text{COO}^-] = [\text{H}_3\text{O}^+] = 4{,}0\times 10^{-4}\ \text{mol.L}^{-1}$ (en négligeant $[\text{OH}^-]$). La conservation de la matière donne :
\[
[\text{CH}_3\text{COOH}] = C - [\text{CH}_3\text{COO}^-] = 1{,}0\times 10^{-2} - 4{,}0\times 10^{-4} \approx 9{,}6\times 10^{-3}\ \text{mol.L}^{-1}
\]
D'où :
\[
K_A = \frac{(4{,}0\times 10^{-4})^2}{9{,}6\times 10^{-3}} \approx 1{,}7\times 10^{-5}
\]
\[
\text{p}K_A = -\log K_A = -\log\left(1{,}7\times 10^{-5}\right) \approx 4{,}8
\]

### Exercice 5 : Diagramme de prédominance
\begin{enonce}
Le couple $\text{NH}_4^+/\text{NH}_3$ a pour constante d'acidité $\text{p}K_A = 9{,}2$ à $25\ ^\circ\text{C}$.
\begin{enumerate}
    \item Établir le diagramme de prédominance des espèces $\text{NH}_4^+$ et $\text{NH}_3$ en fonction du pH.
    \item Dans une solution de pH $= 7{,}0$, quelle est l'espèce prédominante ?
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item La relation entre pH et $\text{p}K_A$ s'écrit :
    \[
    \text{pH} = \text{p}K_A + \log\frac{[\text{NH}_3]}{[\text{NH}_4^+]}
    \]
    \begin{itemize}
        \item Si $\text{pH} < \text{p}K_A = 9{,}2$ alors $[\text{NH}_4^+] > [\text{NH}_3]$ : l'acide $\text{NH}_4^+$ prédomine.
        \item Si $\text{pH} > \text{p}K_A = 9{,}2$ alors $[\text{NH}_3] > [\text{NH}_4^+]$ : la base $\text{NH}_3$ prédomine.
        \item Si $\text{pH} = \text{p}K_A = 9{,}2$, les deux espèces ont la même concentration.
    \end{itemize}
    \item À $\text{pH} = 7{,}0 < 9{,}2$, l'espèce prédominante est l'ion ammonium $\text{NH}_4^+$.
\end{enumerate}

### Exercice 6 : Comparaison de la force de deux acides
\begin{enonce}
On considère deux couples acide/base à $25\ ^\circ\text{C}$ :
\begin{itemize}
    \item acide éthanoïque $\text{CH}_3\text{COOH}/\text{CH}_3\text{COO}^-$ : $\text{p}K_{A1} = 4{,}8$ ;
    \item acide méthanoïque $\text{HCOOH}/\text{HCOO}^-$ : $\text{p}K_{A2} = 3{,}8$.
\end{itemize}
Lequel de ces deux acides est le plus fort ? Justifier en comparant les constantes d'acidité.
\end{enonce}

\textbf{Solution :}
Plus un acide est fort, plus il cède facilement son proton, plus sa constante d'acidité $K_A$ est grande, donc plus son $\text{p}K_A$ est petit. On a :
\[
K_{A1} = 10^{-4{,}8} \approx 1{,}6\times 10^{-5} \qquad K_{A2} = 10^{-3{,}8} \approx 1{,}6\times 10^{-4}
\]
Comme $\text{p}K_{A2} < \text{p}K_{A1}$ (soit $K_{A2} > K_{A1}$), l'acide méthanoïque $\text{HCOOH}$ est le plus fort des deux.

### Exercice 7 : Équivalence d'un dosage
\begin{enonce}
On dose un volume $V_a = 20{,}0\ \text{mL}$ d'une solution d'acide chlorhydrique (acide fort) de concentration inconnue $C_a$ par une solution d'hydroxyde de sodium (soude) de concentration $C_b = 0{,}10\ \text{mol.L}^{-1}$. L'équivalence est repérée pour un volume versé $V_{bE} = 16{,}0\ \text{mL}$.
\begin{enumerate}
    \item Écrire l'équation de la réaction de dosage.
    \item Déterminer la concentration $C_a$ de la solution d'acide.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item La réaction de dosage est une réaction acide-base totale :
    \[
    \text{H}_3\text{O}^+ + \text{OH}^- \longrightarrow 2\,\text{H}_2\text{O}
    \]
    \item À l'équivalence, les réactifs sont introduits dans les proportions stœchiométriques : $n_a = n_b$, soit :
    \[
    C_a\,V_a = C_b\,V_{bE}
    \]
    \[
    C_a = \frac{C_b\,V_{bE}}{V_a} = \frac{0{,}10 \times 16{,}0}{20{,}0} = 8{,}0\times 10^{-2}\ \text{mol.L}^{-1}
    \]
\end{enumerate}

### Exercice 8 : Choix de l'indicateur coloré
\begin{enonce}
On dose une solution d'acide éthanoïque (acide faible) par de la soude. Le pH à l'équivalence vaut $\text{pH}_E = 8{,}4$. On dispose des indicateurs colorés suivants :
\begin{itemize}
    \item hélianthine : zone de virage $3{,}1 - 4{,}4$ ;
    \item bleu de bromothymol (BBT) : zone de virage $6{,}0 - 7{,}6$ ;
    \item phénolphtaléine : zone de virage $8{,}2 - 10{,}0$.
\end{itemize}
Quel indicateur coloré faut-il choisir pour repérer l'équivalence ? Justifier.
\end{enonce}

\textbf{Solution :}
Un indicateur coloré convient lorsque le pH à l'équivalence appartient (ou est très proche de) sa zone de virage. Ici $\text{pH}_E = 8{,}4$.
\begin{itemize}
    \item Hélianthine ($3{,}1 - 4{,}4$) : $8{,}4$ hors zone, ne convient pas.
    \item BBT ($6{,}0 - 7{,}6$) : $8{,}4$ hors zone, ne convient pas.
    \item Phénolphtaléine ($8{,}2 - 10{,}0$) : $8{,}4$ est dans la zone de virage, convient.
\end{itemize}
On choisit donc la phénolphtaléine.
