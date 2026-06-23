### Problème 1 : Étude d'une solution d'acide éthanoïque
\begin{enonce}
On prépare, à $25\ ^\circ\text{C}$, une solution aqueuse $(S)$ d'acide éthanoïque $\text{CH}_3\text{COOH}$ de concentration apportée $C = 2{,}0\times 10^{-2}\ \text{mol.L}^{-1}$. La mesure du pH de cette solution donne $\text{pH} = 3{,}2$.

On donne le produit ionique de l'eau $K_e = 10^{-14}$ à $25\ ^\circ\text{C}$.
\begin{enumerate}
    \item Écrire l'équation de la réaction de l'acide éthanoïque avec l'eau et préciser les deux couples acide/base mis en jeu.
    \item Calculer la concentration en ions oxonium $[\text{H}_3\text{O}^+]$ et la concentration en ions hydroxyde $[\text{OH}^-]$ dans la solution.
    \item En utilisant un tableau d'avancement (en concentrations), déterminer :
    \begin{enumerate}
        \item la concentration $[\text{CH}_3\text{COO}^-]$ de la base conjuguée ;
        \item la concentration $[\text{CH}_3\text{COOH}]$ de l'acide restant.
    \end{enumerate}
    \item Déterminer le taux d'avancement final $\tau$ de la réaction et conclure quant à la force de l'acide.
    \item Déterminer la constante d'acidité $K_A$ puis le $\text{p}K_A$ du couple $\text{CH}_3\text{COOH}/\text{CH}_3\text{COO}^-$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item L'acide éthanoïque réagit partiellement avec l'eau selon :
    \[
    \text{CH}_3\text{COOH} + \text{H}_2\text{O} \rightleftharpoons \text{CH}_3\text{COO}^- + \text{H}_3\text{O}^+
    \]
    Les deux couples mis en jeu sont $\text{CH}_3\text{COOH}/\text{CH}_3\text{COO}^-$ (l'acide) et $\text{H}_3\text{O}^+/\text{H}_2\text{O}$ (l'eau jouant le rôle de base).
    \item À partir du pH :
    \[
    [\text{H}_3\text{O}^+] = 10^{-\text{pH}} = 10^{-3{,}2} \approx 6{,}3\times 10^{-4}\ \text{mol.L}^{-1}
    \]
    \[
    [\text{OH}^-] = \frac{K_e}{[\text{H}_3\text{O}^+]} = \frac{10^{-14}}{6{,}3\times 10^{-4}} \approx 1{,}6\times 10^{-11}\ \text{mol.L}^{-1}
    \]
    \item On dresse le tableau d'avancement en concentrations (en $\text{mol.L}^{-1}$) :
    \[
    \begin{array}{l|ccc}
    & \text{CH}_3\text{COOH} & \text{CH}_3\text{COO}^- & \text{H}_3\text{O}^+ \\ \hline
    \text{initial} & C & 0 & \approx 0 \\
    \text{final} & C - x_f & x_f & x_f
    \end{array}
    \]
    où $x_f$ désigne l'avancement volumique final.
    \begin{enumerate}
        \item D'après le tableau et l'électroneutralité (en négligeant $[\text{OH}^-]$), $[\text{CH}_3\text{COO}^-] = [\text{H}_3\text{O}^+] = x_f$, soit :
        \[
        [\text{CH}_3\text{COO}^-] \approx 6{,}3\times 10^{-4}\ \text{mol.L}^{-1}
        \]
        \item La conservation de la matière donne :
        \[
        [\text{CH}_3\text{COOH}] = C - x_f = 2{,}0\times 10^{-2} - 6{,}3\times 10^{-4} \approx 1{,}9\times 10^{-2}\ \text{mol.L}^{-1}
        \]
    \end{enumerate}
    \item Le taux d'avancement final vaut :
    \[
    \tau = \frac{x_f}{x_{\max}} = \frac{[\text{H}_3\text{O}^+]}{C} = \frac{6{,}3\times 10^{-4}}{2{,}0\times 10^{-2}} \approx 3{,}2\times 10^{-2} = 3{,}2\ \%
    \]
    Comme $\tau \ll 1$, la réaction est limitée : l'acide éthanoïque est un acide faible.
    \item La constante d'acidité s'écrit :
    \[
    K_A = \frac{[\text{CH}_3\text{COO}^-]\,[\text{H}_3\text{O}^+]}{[\text{CH}_3\text{COOH}]} = \frac{(6{,}3\times 10^{-4})^2}{1{,}9\times 10^{-2}} \approx 2{,}1\times 10^{-5}
    \]
    \[
    \text{p}K_A = -\log K_A = -\log\left(2{,}1\times 10^{-5}\right) \approx 4{,}7
    \]
\end{enumerate}

### Problème 2 : Dosage d'un acide par une base et choix de l'indicateur
\begin{enonce}
On dose un volume $V_a = 20{,}0\ \text{mL}$ d'une solution d'acide éthanoïque $\text{CH}_3\text{COOH}$ de concentration $C_a$ inconnue par une solution d'hydroxyde de sodium (soude) de concentration $C_b = 0{,}10\ \text{mol.L}^{-1}$. Le suivi pH-métrique donne les points suivants de la courbe $\text{pH} = f(V_b)$, où $V_b$ est le volume de soude versé :
\begin{itemize}
    \item $V_b = 0{,}0\ \text{mL}$ : $\text{pH} = 3{,}0$ ;
    \item $V_b = 5{,}0\ \text{mL}$ : $\text{pH} = 4{,}3$ ;
    \item $V_b = 10{,}0\ \text{mL}$ : $\text{pH} = 4{,}8$ ;
    \item $V_b = 18{,}0\ \text{mL}$ : $\text{pH} = 5{,}9$ ;
    \item $V_b = 20{,}0\ \text{mL}$ : $\text{pH} = 8{,}4$ (point d'équivalence) ;
    \item $V_b = 22{,}0\ \text{mL}$ : $\text{pH} = 10{,}9$ ;
    \item $V_b = 30{,}0\ \text{mL}$ : $\text{pH} = 12{,}0$.
\end{itemize}
On donne les zones de virage de trois indicateurs colorés : hélianthine ($3{,}1 - 4{,}4$), bleu de bromothymol ($6{,}0 - 7{,}6$), phénolphtaléine ($8{,}2 - 10{,}0$).
\begin{enumerate}
    \item Écrire l'équation de la réaction de dosage.
    \item Déterminer, à partir des points fournis, les coordonnées du point d'équivalence $E$ et expliquer comment on le repère sur la courbe.
    \item Déterminer la concentration $C_a$ de la solution d'acide éthanoïque.
    \item Au point de demi-équivalence ($V_b = V_{bE}/2$), montrer que $\text{pH} = \text{p}K_A$ et en déduire la valeur du $\text{p}K_A$ du couple $\text{CH}_3\text{COOH}/\text{CH}_3\text{COO}^-$.
    \item Choisir, parmi les trois indicateurs proposés, celui qui convient le mieux pour repérer l'équivalence. Justifier.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item La réaction de dosage de l'acide éthanoïque par les ions hydroxyde est totale :
    \[
    \text{CH}_3\text{COOH} + \text{OH}^- \longrightarrow \text{CH}_3\text{COO}^- + \text{H}_2\text{O}
    \]
    \item Le point d'équivalence correspond au saut de pH le plus brutal : entre $V_b = 18{,}0\ \text{mL}$ et $V_b = 22{,}0\ \text{mL}$, le pH passe de $5{,}9$ à $10{,}9$. Le centre de ce saut (point d'inflexion de la courbe) est repéré pour $V_{bE} = 20{,}0\ \text{mL}$ et $\text{pH}_E = 8{,}4$. On le détermine par la méthode des tangentes parallèles (ou de la dérivée). Le point d'équivalence est donc $E(20{,}0\ \text{mL}\,;\ 8{,}4)$.
    \item À l'équivalence, les réactifs sont en proportions stœchiométriques : $n_a = n_b$, soit :
    \[
    C_a\,V_a = C_b\,V_{bE}
    \]
    \[
    C_a = \frac{C_b\,V_{bE}}{V_a} = \frac{0{,}10 \times 20{,}0}{20{,}0} = 0{,}10\ \text{mol.L}^{-1}
    \]
    \item Au point de demi-équivalence, on a versé la moitié du volume équivalent, donc la moitié de l'acide a été transformée en base conjuguée : $[\text{CH}_3\text{COOH}] = [\text{CH}_3\text{COO}^-]$. La relation :
    \[
    \text{pH} = \text{p}K_A + \log\frac{[\text{CH}_3\text{COO}^-]}{[\text{CH}_3\text{COOH}]}
    \]
    donne alors $\log 1 = 0$, soit $\text{pH} = \text{p}K_A$. Le volume de demi-équivalence vaut $V_b = V_{bE}/2 = 10{,}0\ \text{mL}$, où la lecture de la courbe donne $\text{pH} = 4{,}8$. On en déduit :
    \[
    \text{p}K_A = 4{,}8
    \]
    \item Un indicateur convient lorsque le pH à l'équivalence ($\text{pH}_E = 8{,}4$) appartient à sa zone de virage. Seule la phénolphtaléine ($8{,}2 - 10{,}0$) contient la valeur $8{,}4$ : c'est l'indicateur à choisir. L'hélianthine et le bleu de bromothymol vireraient avant l'équivalence et conduiraient à une erreur sur le volume équivalent.
\end{enumerate}

### Problème 3 : Comparaison acide fort / acide faible et produit ionique
\begin{enonce}
On dispose de deux solutions aqueuses à $25\ ^\circ\text{C}$, toutes deux de même concentration apportée $C = 1{,}0\times 10^{-2}\ \text{mol.L}^{-1}$ :
\begin{itemize}
    \item solution $(S_1)$ : acide chlorhydrique $\text{HCl}$, de pH mesuré $\text{pH}_1 = 2{,}0$ ;
    \item solution $(S_2)$ : acide méthanoïque $\text{HCOOH}$, de pH mesuré $\text{pH}_2 = 2{,}9$.
\end{itemize}
On donne $K_e = 10^{-14}$.
\begin{enumerate}
    \item Pour chaque solution, calculer la concentration $[\text{H}_3\text{O}^+]$.
    \item Pour la solution $(S_1)$, montrer que l'acide chlorhydrique est un acide fort. Que vaut son taux d'avancement final ?
    \item Pour la solution $(S_2)$, calculer le taux d'avancement final $\tau_2$ et conclure quant à la force de l'acide méthanoïque.
    \item Déterminer le $\text{p}K_A$ du couple $\text{HCOOH}/\text{HCOO}^-$.
    \item Comparer les deux acides : lequel est le plus fort ? Le résultat est-il cohérent avec les valeurs de pH mesurées ?
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Pour chaque solution, $[\text{H}_3\text{O}^+] = 10^{-\text{pH}}$ :
    \[
    [\text{H}_3\text{O}^+]_1 = 10^{-2{,}0} = 1{,}0\times 10^{-2}\ \text{mol.L}^{-1}
    \]
    \[
    [\text{H}_3\text{O}^+]_2 = 10^{-2{,}9} \approx 1{,}3\times 10^{-3}\ \text{mol.L}^{-1}
    \]
    \item Pour $(S_1)$, on constate que $[\text{H}_3\text{O}^+]_1 = 1{,}0\times 10^{-2}\ \text{mol.L}^{-1} = C$ : tout l'acide apporté a libéré un ion oxonium. La dissociation est totale, l'acide chlorhydrique est donc un acide fort. Son taux d'avancement final est :
    \[
    \tau_1 = \frac{[\text{H}_3\text{O}^+]_1}{C} = \frac{1{,}0\times 10^{-2}}{1{,}0\times 10^{-2}} = 1 = 100\ \%
    \]
    \item Pour $(S_2)$ :
    \[
    \tau_2 = \frac{[\text{H}_3\text{O}^+]_2}{C} = \frac{1{,}3\times 10^{-3}}{1{,}0\times 10^{-2}} \approx 0{,}13 = 13\ \%
    \]
    Comme $\tau_2 \ll 1$, la réaction est limitée : l'acide méthanoïque est un acide faible.
    \item Pour $(S_2)$, l'électroneutralité donne $[\text{HCOO}^-] = [\text{H}_3\text{O}^+]_2 \approx 1{,}3\times 10^{-3}\ \text{mol.L}^{-1}$ et la conservation de la matière donne :
    \[
    [\text{HCOOH}] = C - [\text{HCOO}^-] = 1{,}0\times 10^{-2} - 1{,}3\times 10^{-3} \approx 8{,}7\times 10^{-3}\ \text{mol.L}^{-1}
    \]
    D'où :
    \[
    K_A = \frac{[\text{HCOO}^-]\,[\text{H}_3\text{O}^+]}{[\text{HCOOH}]} = \frac{(1{,}3\times 10^{-3})^2}{8{,}7\times 10^{-3}} \approx 1{,}9\times 10^{-4}
    \]
    \[
    \text{p}K_A = -\log\left(1{,}9\times 10^{-4}\right) \approx 3{,}7
    \]
    \item À concentration apportée égale, l'acide chlorhydrique ($\tau_1 = 100\ \%$) est totalement dissocié alors que l'acide méthanoïque ($\tau_2 = 13\ \%$) ne l'est que partiellement : l'acide chlorhydrique est le plus fort. C'est cohérent avec les pH mesurés : pour une même concentration apportée, l'acide le plus fort libère le plus d'ions oxonium et possède donc le pH le plus faible ($\text{pH}_1 = 2{,}0 < \text{pH}_2 = 2{,}9$).
\end{enumerate}
