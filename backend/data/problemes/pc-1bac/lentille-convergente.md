### Problème 1 : Le projecteur de diapositives
\begin{enonce}
Un projecteur utilise un objectif assimilé à une lentille convergente de distance focale $f' = 10\,\text{cm}$. La diapositive (l'objet $AB$) mesure $\overline{AB} = 3\,\text{cm}$ et est placée à $\overline{OA} = -10{,}5\,\text{cm}$. On projette son image sur un écran.
\begin{enumerate}
    \item Calculer la vergence $C$ de l'objectif.
    \item Déterminer la position $\overline{OA'}$ de l'image. À quelle distance de l'objectif faut-il placer l'écran ?
    \item Calculer le grandissement $\gamma$ et la taille $\overline{A'B'}$ de l'image. Que constate-t-on sur son orientation ?
    \item On rapproche légèrement la diapositive du foyer, à $\overline{OA} = -10{,}2\,\text{cm}$. Calculer la nouvelle position de l'image. Conclure sur l'effet d'un objet plus proche de $F$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Avec $f' = 0{,}10\,\text{m}$ : $C = \dfrac{1}{f'} = \dfrac{1}{0{,}10} = 10\,\delta$.
    \item Relation de conjugaison :
\[
\dfrac{1}{\overline{OA'}} = \dfrac{1}{10} + \dfrac{1}{-10{,}5} = \dfrac{10{,}5 - 10}{10 \times 10{,}5} = \dfrac{0{,}5}{105} = \dfrac{1}{210},
\]
soit $\overline{OA'} = 210\,\text{cm} = 2{,}1\,\text{m}$. L'écran doit être placé à $2{,}1\,\text{m}$ derrière l'objectif (l'image est réelle, $\overline{OA'} > 0$).
    \item $\gamma = \dfrac{\overline{OA'}}{\overline{OA}} = \dfrac{210}{-10{,}5} = -20$, donc $\overline{A'B'} = -20 \times 3 = -60\,\text{cm}$. L'image mesure $60\,\text{cm}$ et, comme $\gamma < 0$, elle est \textbf{renversée} : c'est pourquoi on place la diapositive à l'envers dans le projecteur.
    \item Pour $\overline{OA} = -10{,}2\,\text{cm}$ :
\[
\dfrac{1}{\overline{OA'}} = \dfrac{1}{10} + \dfrac{1}{-10{,}2} = \dfrac{0{,}2}{102} = \dfrac{1}{510},
\]
soit $\overline{OA'} = 510\,\text{cm} = 5{,}1\,\text{m}$, avec $\gamma = \dfrac{510}{-10{,}2} = -50$ ($\overline{A'B'} = 150\,\text{cm}$). \textbf{Plus l'objet est proche du foyer $F$, plus l'image s'éloigne et s'agrandit} : on règle ainsi la taille de la projection avec la distance de l'écran.
\end{enumerate}

### Problème 2 : Détermination expérimentale de la distance focale
\begin{enonce}
Sur un banc d'optique, on place un objet lumineux $AB$ devant une lentille convergente. En déplaçant un écran, on obtient une image nette quand l'objet est à $\overline{OA} = -20\,\text{cm}$ et l'écran à $\overline{OA'} = +30\,\text{cm}$.
\begin{enumerate}
    \item À partir de ces mesures, déterminer la distance focale $f'$ et la vergence $C$ de la lentille.
    \item Calculer le grandissement $\gamma$ pour cette position.
    \item Où faudrait-il placer l'objet pour que l'image ait exactement la même taille que lui ? Vérifier par le calcul.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item La relation de conjugaison donne directement $\dfrac{1}{f'} = \dfrac{1}{\overline{OA'}} - \dfrac{1}{\overline{OA}}$ :
\[
\dfrac{1}{f'} = \dfrac{1}{30} - \dfrac{1}{-20} = \dfrac{1}{30} + \dfrac{1}{20} = \dfrac{2}{60} + \dfrac{3}{60} = \dfrac{5}{60} = \dfrac{1}{12},
\]
donc $f' = 12\,\text{cm}$. La vergence est $C = \dfrac{1}{0{,}12} \approx 8{,}3\,\delta$.
    \item $\gamma = \dfrac{\overline{OA'}}{\overline{OA}} = \dfrac{30}{-20} = -1{,}5$ : l'image est renversée et $1{,}5$ fois plus grande.
    \item L'image a la même taille que l'objet lorsque $|\gamma| = 1$, soit $\overline{OA'} = -\overline{OA}$ : c'est le cas où l'objet est en $2F$, donc à $\overline{OA} = -2f' = -24\,\text{cm}$. Vérification :
\[
\dfrac{1}{\overline{OA'}} = \dfrac{1}{12} + \dfrac{1}{-24} = \dfrac{2}{24} - \dfrac{1}{24} = \dfrac{1}{24},
\]
soit $\overline{OA'} = 24\,\text{cm}$ et $\gamma = \dfrac{24}{-24} = -1$. L'image, en $2F'$, est bien de même taille (renversée).
\end{enumerate}

### Problème 3 : L'œil et l'accommodation du cristallin
\begin{enonce}
On modélise l'œil par une lentille convergente (le cristallin) qui forme l'image sur la rétine, située à une distance fixe $\overline{OA'} = 1{,}7\,\text{cm}$ du centre optique. Le cristallin peut déformer sa courbure pour faire varier sa vergence : c'est l'\textbf{accommodation}.
\begin{enumerate}
    \item L'œil observe un objet très éloigné ($\overline{OA} \to -\infty$). Montrer que la vergence vaut alors $C_\infty = \dfrac{1}{\overline{OA'}}$ et la calculer.
    \item L'œil observe maintenant un objet au \textit{punctum proximum}, à $\overline{OA} = -25\,\text{cm}$. Calculer la vergence $C_p$ nécessaire pour que l'image reste nette sur la rétine.
    \item En déduire l'amplitude d'accommodation $\Delta C = C_p - C_\infty$.
    \item Préciser la nature de l'image rétinienne (réelle/virtuelle, droite/renversée).
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item La vergence vérifie $C = \dfrac{1}{\overline{OA'}} - \dfrac{1}{\overline{OA}}$. Quand $\overline{OA} \to -\infty$, le terme $\dfrac{1}{\overline{OA}} \to 0$, d'où $C_\infty = \dfrac{1}{\overline{OA'}}$. Avec $\overline{OA'} = 1{,}7\,\text{cm} = 0{,}017\,\text{m}$ :
\[
C_\infty = \dfrac{1}{0{,}017} \approx 58{,}8\,\delta .
\]
    \item Pour $\overline{OA} = -25\,\text{cm} = -0{,}25\,\text{m}$ et $\overline{OA'} = 0{,}017\,\text{m}$ :
\[
C_p = \dfrac{1}{0{,}017} - \dfrac{1}{-0{,}25} = 58{,}8 + 4{,}0 = 62{,}8\,\delta .
\]
    \item $\Delta C = C_p - C_\infty = 62{,}8 - 58{,}8 = 4{,}0\,\delta$ : pour passer de la vision de loin à la vision de près, le cristallin augmente sa vergence d'environ $4\,\delta$.
    \item Comme $\overline{OA'} > 0$, l'image rétinienne est \textbf{réelle} ; le grandissement $\gamma = \dfrac{\overline{OA'}}{\overline{OA}} < 0$ (objet réel, $\overline{OA} < 0$), donc elle est \textbf{renversée} — c'est le cerveau qui rétablit l'orientation perçue.
\end{enumerate}
