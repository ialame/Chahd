### Problème 1 : Suivi temporel d'une estérification équimolaire
\begin{enonce}
On étudie la synthèse de l'éthanoate d'éthyle $\text{CH}_3\text{COOC}_2\text{H}_5$ à partir de l'acide éthanoïque $\text{CH}_3\text{COOH}$ et de l'éthanol $\text{C}_2\text{H}_5\text{OH}$. À l'instant $t = 0$, on mélange $n_1 = 0{,}10\ \text{mol}$ d'acide et $n_2 = 0{,}10\ \text{mol}$ d'alcool, puis on maintient le mélange à température constante. On suit l'évolution de la quantité d'ester formé $n_{ester}$ au cours du temps. Les mesures donnent les points suivants de la courbe $n_{ester} = f(t)$ :
\begin{itemize}
    \item $t = 0\ \text{min}$ : $n_{ester} = 0\ \text{mol}$ ;
    \item $t = 20\ \text{min}$ : $n_{ester} = 0{,}030\ \text{mol}$ ;
    \item $t = 60\ \text{min}$ : $n_{ester} = 0{,}055\ \text{mol}$ ;
    \item $t = 120\ \text{min}$ : $n_{ester} = 0{,}065\ \text{mol}$ ;
    \item $t \geq 200\ \text{min}$ : $n_{ester} = 0{,}067\ \text{mol}$ (valeur stable).
\end{itemize}
Données : $M(\text{CH}_3\text{COOH}) = 60\ \text{g.mol}^{-1}$ ; $M(\text{C}_2\text{H}_5\text{OH}) = 46\ \text{g.mol}^{-1}$ ; $M(\text{CH}_3\text{COOC}_2\text{H}_5) = 88\ \text{g.mol}^{-1}$.
\begin{enumerate}
    \item Écrire l'équation de la réaction d'estérification et citer ses caractères.
    \item Dresser le tableau d'avancement et exprimer $n_{ester}$ en fonction de l'avancement $x$.
    \item Déterminer la valeur de l'avancement à l'équilibre $x_{eq}$ et la composition du mélange à l'équilibre.
    \item Calculer le rendement $r$ de la réaction. Commenter.
    \item Déterminer la vitesse volumique de réaction à $t = 0$, sachant que le volume du mélange est $V = 20\ \text{mL}$ et reste constant. (On utilisera la pente de la courbe à l'origine, estimée par les premiers points.)
    \item On refait l'expérience à une température plus élevée. Comment évoluent la durée pour atteindre l'équilibre et le rendement ?
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item L'équation de la réaction :
    \[
    \text{CH}_3\text{COOH} + \text{C}_2\text{H}_5\text{OH} \rightleftharpoons \text{CH}_3\text{COOC}_2\text{H}_5 + \text{H}_2\text{O}
    \]
    Cette réaction est \textbf{lente}, \textbf{limitée} (équilibrée) et \textbf{athermique}.
    \item Tableau d'avancement (en mol) :
    \[
    \begin{aligned}
    &\text{Initial :} && \text{acide : } 0{,}10 \quad \text{alcool : } 0{,}10 \quad \text{ester : } 0 \quad \text{eau : } 0 \\
    &\text{À l'instant } t\ (x) : && 0{,}10 - x \quad\ \ 0{,}10 - x \quad\ \ x \quad\quad x
    \end{aligned}
    \]
    L'ester se forme avec l'avancement, donc :
    \[
    n_{ester}(t) = x(t)
    \]
    \item À l'équilibre, $n_{ester}$ se stabilise à $0{,}067\ \text{mol}$, donc :
    \[
    x_{eq} = 0{,}067\ \text{mol}
    \]
    La composition à l'équilibre :
    \[
    \begin{aligned}
    n_{acide} &= 0{,}10 - 0{,}067 = 0{,}033\ \text{mol} \\
    n_{alcool} &= 0{,}10 - 0{,}067 = 0{,}033\ \text{mol} \\
    n_{ester} &= 0{,}067\ \text{mol} \\
    n_{eau} &= 0{,}067\ \text{mol}
    \end{aligned}
    \]
    \item Le mélange étant équimolaire, l'avancement maximal (réaction supposée totale) est $x_{max} = 0{,}10\ \text{mol}$. Le rendement :
    \[
    r = \frac{n_{ester,f}}{n_{ester,max}} = \frac{x_{eq}}{x_{max}} = \frac{0{,}067}{0{,}10} = 0{,}67 = 67\,\%
    \]
    Ce rendement de $67\,\%$ confirme que la réaction est limitée et que l'éthanol est un alcool primaire.
    \item La vitesse volumique de réaction est $v = \dfrac{1}{V}\,\dfrac{\dd x}{\dd t}$. À $t = 0$, on estime la pente avec les premiers points :
    \[
    \frac{\dd x}{\dd t}\bigg|_{t=0} \approx \frac{0{,}030 - 0}{20 - 0} = 1{,}5\times 10^{-3}\ \text{mol.min}^{-1}
    \]
    Avec $V = 20\ \text{mL} = 20\times 10^{-3}\ \text{L}$ :
    \[
    v(0) = \frac{1}{V}\,\frac{\dd x}{\dd t}\bigg|_{t=0} = \frac{1{,}5\times 10^{-3}}{20\times 10^{-3}} = 7{,}5\times 10^{-2}\ \text{mol.L}^{-1}.\text{min}^{-1}
    \]
    \item À température plus élevée, la réaction est \textbf{plus rapide} : l'équilibre est atteint en un temps plus court. En revanche, comme la réaction est athermique, le \textbf{rendement reste pratiquement inchangé} (environ $67\,\%$) : la température est un facteur cinétique, pas un facteur d'équilibre.
\end{enumerate}

### Problème 2 : Amélioration du rendement et hydrolyse
\begin{enonce}
Un élève souhaite préparer un maximum d'éthanoate d'éthyle. Il dispose de $0{,}20\ \text{mol}$ d'acide éthanoïque et envisage plusieurs protocoles.
\begin{enumerate}
    \item \textbf{Protocole A.} Il mélange $0{,}20\ \text{mol}$ d'acide et $0{,}20\ \text{mol}$ d'éthanol. À l'équilibre, il obtient $0{,}134\ \text{mol}$ d'ester. Vérifier que le rendement vaut $67\,\%$.
    \item \textbf{Protocole B.} Il garde $0{,}20\ \text{mol}$ d'acide mais utilise $0{,}60\ \text{mol}$ d'éthanol. À l'équilibre, il obtient $0{,}170\ \text{mol}$ d'ester. Identifier le réactif limitant et calculer le nouveau rendement. Conclure sur l'effet de l'excès d'alcool.
    \item \textbf{Protocole C.} Avec le mélange équimolaire du protocole A, il élimine au fur et à mesure l'eau formée (par distillation). Dans quel sens cela déplace-t-il l'équilibre ? Quel est l'effet sur le rendement ?
    \item L'élève ajoute quelques gouttes d'acide sulfurique au mélange équimolaire du protocole A. Quel est le rôle de cet ajout ? Modifie-t-il le rendement ? Justifier.
    \item Pour vérifier la réversibilité, il part de $0{,}20\ \text{mol}$ d'éthanoate d'éthyle pur et $0{,}20\ \text{mol}$ d'eau. Écrire l'équation de la réaction qui se produit. Sachant qu'on atteint le même état d'équilibre, déterminer la quantité d'acide présente à l'équilibre.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Le mélange est équimolaire, donc $x_{max} = 0{,}20\ \text{mol}$ et $n_{ester,max} = 0{,}20\ \text{mol}$. Le rendement :
    \[
    r_A = \frac{n_{ester,f}}{n_{ester,max}} = \frac{0{,}134}{0{,}20} = 0{,}67 = 67\,\%
    \]
    Le rendement est bien de $67\,\%$, valeur typique d'un mélange équimolaire avec un alcool primaire.
    \item L'acide ($0{,}20\ \text{mol}$) est en plus faible quantité que l'alcool ($0{,}60\ \text{mol}$) : c'est le \textbf{réactif limitant}, donc $n_{ester,max} = 0{,}20\ \text{mol}$. Le rendement :
    \[
    r_B = \frac{0{,}170}{0{,}20} = 0{,}85 = 85\,\%
    \]
    L'excès d'alcool déplace l'équilibre dans le sens direct et \textbf{augmente le rendement} (de $67\,\%$ à $85\,\%$).
    \item En éliminant l'eau formée, on retire en continu un produit de la réaction. D'après le principe de modération (loi de Le Chatelier), le système réagit en consommant davantage de réactifs : l'équilibre est \textbf{déplacé dans le sens direct} (formation de l'ester). Le \textbf{rendement augmente} et peut tendre vers $100\,\%$ ; la réaction devient pratiquement totale.
    \item L'acide sulfurique apporte des ions $\text{H}^+$ qui jouent le rôle de \textbf{catalyseur} : ils \textbf{accélèrent la réaction} (l'équilibre est atteint plus vite). En revanche, un catalyseur \textbf{ne modifie pas le rendement} : il agit uniquement sur la vitesse, pas sur l'état d'équilibre final, qui reste à $67\,\%$.
    \item La réaction est l'\textbf{hydrolyse} de l'ester (réaction inverse de l'estérification) :
    \[
    \text{CH}_3\text{COOC}_2\text{H}_5 + \text{H}_2\text{O} \rightleftharpoons \text{CH}_3\text{COOH} + \text{C}_2\text{H}_5\text{OH}
    \]
    On atteint le même état d'équilibre que le protocole A, qui contenait $0{,}134\ \text{mol}$ d'ester. Or, par hydrolyse, l'avancement vaut $x_{eq} = n_{acide} = n_{alcool}$, et il reste à l'équilibre $0{,}134\ \text{mol}$ d'ester, soit $x_{eq} = 0{,}20 - 0{,}134 = 0{,}066\ \text{mol}$. La quantité d'acide formée :
    \[
    n_{acide} = x_{eq} = 0{,}066\ \text{mol} \approx 0{,}066\ \text{mol}
    \]
    On retrouve bien la même composition d'équilibre, ce qui illustre que l'estérification et l'hydrolyse conduisent au même équilibre.
\end{enumerate}

### Problème 3 : Détermination expérimentale du rendement par titrage
\begin{enonce}
On prépare un mélange contenant $n_1 = 0{,}50\ \text{mol}$ d'acide méthanoïque $\text{HCOOH}$ et $n_2 = 0{,}50\ \text{mol}$ de méthanol $\text{CH}_3\text{OH}$ (alcool primaire). Le mélange est chauffé en présence de quelques gouttes d'acide sulfurique. Après plusieurs heures, l'équilibre est atteint. Pour déterminer la composition finale, on dose l'acide $\text{HCOOH}$ restant : on prélève la totalité du mélange et on le titre par une solution d'hydroxyde de sodium de concentration $C_B = 2{,}0\ \text{mol.L}^{-1}$. L'équivalence est obtenue pour un volume $V_B = 82{,}5\ \text{mL}$.
\begin{enumerate}
    \item Écrire l'équation de la réaction d'estérification.
    \item Écrire l'équation de la réaction de titrage entre $\text{HCOOH}$ et les ions hydroxyde $\text{HO}^-$.
    \item Déterminer la quantité d'acide $\text{HCOOH}$ restant à l'équilibre.
    \item En déduire l'avancement à l'équilibre $x_{eq}$ et la quantité d'ester formé.
    \item Calculer le rendement de l'estérification.
    \item Le rôle de l'acide sulfurique est-il d'augmenter ce rendement ? Expliquer comment on pourrait réellement l'améliorer.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item L'estérification de l'acide méthanoïque par le méthanol :
    \[
    \text{HCOOH} + \text{CH}_3\text{OH} \rightleftharpoons \text{HCOOCH}_3 + \text{H}_2\text{O}
    \]
    L'ester formé est le méthanoate de méthyle.
    \item Le titrage acido-basique de l'acide par la soude :
    \[
    \text{HCOOH} + \text{HO}^- \rightarrow \text{HCOO}^- + \text{H}_2\text{O}
    \]
    \item À l'équivalence, la quantité d'ions hydroxyde versés est égale à la quantité d'acide restant :
    \[
    n_{acide,restant} = C_B \times V_B = 2{,}0 \times 82{,}5\times 10^{-3} = 0{,}165\ \text{mol}
    \]
    \item Initialement il y avait $0{,}50\ \text{mol}$ d'acide. L'avancement à l'équilibre correspond à l'acide consommé :
    \[
    x_{eq} = n_{1} - n_{acide,restant} = 0{,}50 - 0{,}165 = 0{,}335\ \text{mol}
    \]
    La quantité d'ester formé est égale à l'avancement :
    \[
    n_{ester,f} = x_{eq} = 0{,}335\ \text{mol}
    \]
    \item Le mélange étant équimolaire, $x_{max} = 0{,}50\ \text{mol}$ et $n_{ester,max} = 0{,}50\ \text{mol}$. Le rendement :
    \[
    r = \frac{n_{ester,f}}{n_{ester,max}} = \frac{0{,}335}{0{,}50} = 0{,}67 = 67\,\%
    \]
    Ce résultat est cohérent : un alcool primaire en mélange équimolaire donne un rendement d'environ $67\,\%$.
    \item \textbf{Non} : l'acide sulfurique n'est qu'un \textbf{catalyseur}. Il accélère la réaction (l'équilibre est atteint plus rapidement) mais ne modifie pas le rendement, qui reste $67\,\%$. Pour réellement améliorer le rendement, il faut déplacer l'équilibre dans le sens direct :
    \begin{itemize}
        \item utiliser un \textbf{excès} d'un des réactifs (par exemple plus d'alcool) ;
        \item \textbf{éliminer un produit} au fur et à mesure (distiller l'eau ou l'ester formé).
    \end{itemize}
\end{enumerate}
