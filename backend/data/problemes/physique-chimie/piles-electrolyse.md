### Problème 1 : Étude complète d'une pile cuivre-argent
\begin{enonce}
On constitue une pile en associant une demi-pile (lame de cuivre dans une solution de sulfate de cuivre contenant les ions $\text{Cu}^{2+}$) et une demi-pile (lame d'argent dans une solution de nitrate d'argent contenant les ions $\text{Ag}^+$), reliées par un pont salin. La réaction spontanée associée à cette pile a pour équation :
\[
\text{Cu} + 2\,\text{Ag}^+ = \text{Cu}^{2+} + 2\,\text{Ag}
\]
La pile débite dans un circuit extérieur un courant d'intensité constante $I = 0{,}10\ \text{A}$. Initialement, la lame de cuivre a une masse $m_0 = 10{,}0\ \text{g}$.
\begin{enumerate}
    \item Écrire les demi-équations aux deux électrodes et préciser, pour chacune, s'il s'agit d'une oxydation ou d'une réduction.
    \item Identifier l'anode et la cathode, puis indiquer la polarité de chaque électrode.
    \item Préciser le sens de circulation des électrons et celui du courant dans le circuit extérieur.
    \item La pile fonctionne pendant $\Delta t = 2{,}0\ \text{h}$. Calculer la quantité d'électricité $Q$ débitée puis la quantité de matière d'électrons échangés.
    \item En déduire la masse de cuivre consommée et la masse d'argent déposée pendant cette durée.
    \item Calculer la masse finale de la lame de cuivre.
\end{enumerate}
Données : $F = 9{,}65\times 10^{4}\ \text{C.mol}^{-1}$ ; $M(\text{Cu}) = 63{,}5\ \text{g.mol}^{-1}$ ; $M(\text{Ag}) = 108\ \text{g.mol}^{-1}$.
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Dans la réaction spontanée, le cuivre est oxydé et les ions argent sont réduits.
    \begin{itemize}
        \item À la lame de cuivre (oxydation) :
        \[
        \text{Cu} = \text{Cu}^{2+} + 2\,\text{e}^-
        \]
        \item À la lame d'argent (réduction) :
        \[
        \text{Ag}^+ + \text{e}^- = \text{Ag}
        \]
    \end{itemize}
    \item L'électrode de cuivre, siège de l'oxydation, est l'\textbf{anode} ; c'est le \textbf{pôle} $\boldsymbol{-}$. L'électrode d'argent, siège de la réduction, est la \textbf{cathode} ; c'est le \textbf{pôle} $\boldsymbol{+}$.
    \item Les électrons sont libérés à l'anode (cuivre, pôle $-$) et circulent, dans le circuit extérieur, du cuivre vers l'argent, c'est-à-dire de la borne $-$ vers la borne $+$. Le courant conventionnel circule en sens inverse : de la borne $+$ (argent) vers la borne $-$ (cuivre) à l'extérieur de la pile.
    \item La durée en secondes vaut $\Delta t = 2{,}0\times 3600 = 7{,}2\times 10^{3}\ \text{s}$. La quantité d'électricité débitée est :
    \[
    Q = I\cdot \Delta t = 0{,}10 \times 7{,}2\times 10^{3} = 7{,}2\times 10^{2}\ \text{C}
    \]
    La quantité de matière d'électrons échangés est :
    \[
    n(\text{e}^-) = \frac{Q}{F} = \frac{7{,}2\times 10^{2}}{9{,}65\times 10^{4}} = 7{,}5\times 10^{-3}\ \text{mol}
    \]
    \item D'après la demi-équation à l'anode, $2$ électrons sont libérés par atome de cuivre consommé :
    \[
    n(\text{Cu}) = \frac{n(\text{e}^-)}{2} = \frac{7{,}5\times 10^{-3}}{2} = 3{,}75\times 10^{-3}\ \text{mol}
    \]
    \[
    m(\text{Cu})_{\text{consommée}} = n(\text{Cu})\cdot M(\text{Cu}) = 3{,}75\times 10^{-3} \times 63{,}5 = 0{,}24\ \text{g}
    \]
    D'après la demi-équation à la cathode, $1$ électron est consommé par atome d'argent déposé :
    \[
    n(\text{Ag}) = n(\text{e}^-) = 7{,}5\times 10^{-3}\ \text{mol}
    \]
    \[
    m(\text{Ag})_{\text{déposée}} = n(\text{Ag})\cdot M(\text{Ag}) = 7{,}5\times 10^{-3} \times 108 = 0{,}81\ \text{g}
    \]
    \item La lame de cuivre perd la masse consommée :
    \[
    m_{\text{finale}} = m_0 - m(\text{Cu})_{\text{consommée}} = 10{,}0 - 0{,}24 = 9{,}76\ \text{g}
    \]
\end{enumerate}

### Problème 2 : Pile et capacité, puis électrolyse de régénération
\begin{enonce}
Une pile au zinc fonctionne grâce à la réaction spontanée :
\[
\text{Zn} + \text{Cu}^{2+} = \text{Zn}^{2+} + \text{Cu}
\]
L'électrode négative contient initialement une masse $m_0 = 3{,}27\ \text{g}$ de zinc. La pile débite un courant constant $I_1 = 25\ \text{mA}$.

\textbf{Partie A — Étude de la pile}
\begin{enumerate}
    \item Préciser, à l'aide des demi-équations, le rôle de chaque électrode (anode/cathode, oxydation/réduction).
    \item Calculer la quantité maximale d'électricité $Q_{\max}$ que peut fournir la pile, limitée par la masse de zinc disponible.
    \item En déduire la capacité de la pile, c'est-à-dire sa durée de vie $\Delta t_1$.
\end{enumerate}

\textbf{Partie B — Électrolyse}
Après usure de la pile, on souhaite régénérer du zinc métallique par électrolyse d'une solution contenant des ions $\text{Zn}^{2+}$, à l'aide d'un générateur. Le zinc se dépose sur l'électrode reliée à la borne $-$ du générateur, selon $\text{Zn}^{2+} + 2\,\text{e}^- = \text{Zn}$. À l'autre électrode, il se produit un dégagement de dioxygène selon $2\,\text{H}_2\text{O} = \text{O}_2 + 4\,\text{H}^+ + 4\,\text{e}^-$. Le générateur impose un courant constant $I_2 = 0{,}50\ \text{A}$ pendant $\Delta t_2 = 1{,}0\ \text{h}$.
\begin{enumerate}
    \item[4.] Indiquer pourquoi cette transformation est dite forcée, et préciser l'anode et la cathode.
    \item[5.] Calculer la masse de zinc déposée à la cathode pendant l'électrolyse.
    \item[6.] Déterminer la quantité de matière de dioxygène dégagée à l'anode.
\end{enumerate}
Données : $F = 9{,}65\times 10^{4}\ \text{C.mol}^{-1}$ ; $M(\text{Zn}) = 65{,}4\ \text{g.mol}^{-1}$.
\end{enonce}

\textbf{Solution :}
\textbf{Partie A}
\begin{enumerate}
    \item Le zinc est oxydé : c'est l'\textbf{anode} (pôle $-$), siège de l'oxydation :
    \[
    \text{Zn} = \text{Zn}^{2+} + 2\,\text{e}^-
    \]
    Les ions cuivre sont réduits sur la lame de cuivre, qui est la \textbf{cathode} (pôle $+$), siège de la réduction :
    \[
    \text{Cu}^{2+} + 2\,\text{e}^- = \text{Cu}
    \]
    \item La quantité de zinc disponible est :
    \[
    n(\text{Zn}) = \frac{m_0}{M(\text{Zn})} = \frac{3{,}27}{65{,}4} = 0{,}0500\ \text{mol}
    \]
    Chaque atome de zinc libère $2$ électrons, donc :
    \[
    n(\text{e}^-) = 2\,n(\text{Zn}) = 0{,}100\ \text{mol}
    \]
    \[
    Q_{\max} = n(\text{e}^-)\cdot F = 0{,}100 \times 9{,}65\times 10^{4} = 9{,}65\times 10^{3}\ \text{C}
    \]
    \item La durée de vie, à courant constant $I_1$, est :
    \[
    \Delta t_1 = \frac{Q_{\max}}{I_1} = \frac{9{,}65\times 10^{3}}{25\times 10^{-3}} = 3{,}86\times 10^{5}\ \text{s} \approx 107\ \text{h}
    \]
\end{enumerate}

\textbf{Partie B}
\begin{enumerate}
    \item[4.] La transformation est \textbf{forcée} car elle ne se produit pas spontanément : c'est le générateur qui impose le sens du courant et provoque la réduction des ions $\text{Zn}^{2+}$ en zinc, réaction inverse de la dissolution spontanée du zinc. L'électrode reliée à la borne $-$ du générateur, où se dépose le zinc (réduction), est la \textbf{cathode} ; l'électrode reliée à la borne $+$, où se dégage le dioxygène (oxydation), est l'\textbf{anode}.
    \item[5.] La quantité d'électricité fournie par le générateur est :
    \[
    Q = I_2\cdot \Delta t_2 = 0{,}50 \times (1{,}0\times 3600) = 1{,}8\times 10^{3}\ \text{C}
    \]
    La demi-équation $\text{Zn}^{2+} + 2\,\text{e}^- = \text{Zn}$ indique $2$ électrons par atome de zinc :
    \[
    n(\text{Zn}) = \frac{Q}{2F} = \frac{1{,}8\times 10^{3}}{2\times 9{,}65\times 10^{4}} = 9{,}3\times 10^{-3}\ \text{mol}
    \]
    \[
    m(\text{Zn}) = n(\text{Zn})\cdot M(\text{Zn}) = 9{,}3\times 10^{-3} \times 65{,}4 = 0{,}61\ \text{g}
    \]
    \item[6.] La même quantité d'électricité traverse l'anode. La demi-équation $2\,\text{H}_2\text{O} = \text{O}_2 + 4\,\text{H}^+ + 4\,\text{e}^-$ montre que $4$ électrons sont échangés par molécule de dioxygène :
    \[
    n(\text{O}_2) = \frac{n(\text{e}^-)}{4} = \frac{Q}{4F} = \frac{1{,}8\times 10^{3}}{4\times 9{,}65\times 10^{4}} = 4{,}7\times 10^{-3}\ \text{mol}
    \]
\end{enumerate}

### Problème 3 : Affinage électrolytique du cuivre
\begin{enonce}
L'affinage électrolytique permet de purifier le cuivre. On dispose d'une anode en cuivre impur et d'une cathode en cuivre pur, plongées dans une solution de sulfate de cuivre ($\text{Cu}^{2+}$). Sous l'action d'un générateur, le cuivre de l'anode se dissout puis se redépose, purifié, sur la cathode. Les demi-équations sont :
\begin{itemize}
    \item à l'anode : $\text{Cu} = \text{Cu}^{2+} + 2\,\text{e}^-$ ;
    \item à la cathode : $\text{Cu}^{2+} + 2\,\text{e}^- = \text{Cu}$.
\end{itemize}
On fait passer un courant constant $I = 5{,}0\ \text{A}$ pendant $\Delta t = 3{,}0\ \text{h}$.
\begin{enumerate}
    \item Justifier que cet affinage est une transformation forcée, et préciser la polarité de chaque électrode.
    \item Calculer la quantité d'électricité $Q$ mise en jeu.
    \item En déduire la masse de cuivre pur déposée à la cathode.
    \item Quelle est la masse de cuivre dissoute à l'anode ? Justifier.
    \item On souhaite obtenir un dépôt de masse $m' = 50\ \text{g}$ de cuivre pur avec le même courant $I = 5{,}0\ \text{A}$. Calculer la durée nécessaire.
\end{enumerate}
Données : $F = 9{,}65\times 10^{4}\ \text{C.mol}^{-1}$ ; $M(\text{Cu}) = 63{,}5\ \text{g.mol}^{-1}$.
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item L'affinage est une transformation \textbf{forcée} car il est imposé par le générateur : sans apport d'énergie électrique, le cuivre ne se dissoudrait pas pour se redéposer. L'anode (cuivre impur), siège de l'oxydation, est reliée à la borne $+$ du générateur ; la cathode (cuivre pur), siège de la réduction, est reliée à la borne $-$.
    \item La durée en secondes est $\Delta t = 3{,}0\times 3600 = 1{,}08\times 10^{4}\ \text{s}$. La quantité d'électricité vaut :
    \[
    Q = I\cdot \Delta t = 5{,}0 \times 1{,}08\times 10^{4} = 5{,}4\times 10^{4}\ \text{C}
    \]
    \item La demi-équation à la cathode fait intervenir $2$ électrons par atome de cuivre :
    \[
    n(\text{Cu}) = \frac{Q}{2F} = \frac{5{,}4\times 10^{4}}{2\times 9{,}65\times 10^{4}} = 0{,}28\ \text{mol}
    \]
    \[
    m(\text{Cu}) = n(\text{Cu})\cdot M(\text{Cu}) = 0{,}28 \times 63{,}5 = 18\ \text{g}
    \]
    \item La masse dissoute à l'anode est \textbf{égale} à la masse déposée à la cathode, soit $18\ \text{g}$. En effet, la même quantité d'électrons traverse les deux électrodes, et les deux demi-équations mettent en jeu le même nombre d'électrons par atome de cuivre ($2$). Tout le cuivre dissous à l'anode se retrouve déposé à la cathode.
    \item Pour déposer $m' = 50\ \text{g}$ de cuivre :
    \[
    n'(\text{Cu}) = \frac{m'}{M(\text{Cu})} = \frac{50}{63{,}5} = 0{,}79\ \text{mol}
    \]
    La quantité d'électricité nécessaire est $Q' = n'(\text{e}^-)\cdot F = 2\,n'(\text{Cu})\cdot F$ :
    \[
    Q' = 2 \times 0{,}79 \times 9{,}65\times 10^{4} = 1{,}52\times 10^{5}\ \text{C}
    \]
    La durée correspondante est :
    \[
    \Delta t' = \frac{Q'}{I} = \frac{1{,}52\times 10^{5}}{5{,}0} = 3{,}0\times 10^{4}\ \text{s} \approx 8{,}4\ \text{h}
    \]
\end{enumerate}
