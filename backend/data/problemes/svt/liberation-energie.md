### Problème 1 : Étude expérimentale du métabolisme de la levure
\begin{enonce}
La levure de boulanger (*Saccharomyces cerevisiae*) est un organisme capable de produire son énergie aussi bien par respiration que par fermentation. On cultive des levures dans un milieu riche en glucose et on suit, à l'aide de sondes, leur activité dans deux conditions différentes.
\begin{itemize}
    \item \textbf{Condition A} (milieu **aéré**, riche en $\text{O}_2$) : on mesure une consommation de $\text{O}_2$ et un dégagement de $\text{CO}_2$. Pour $1$ mmol de glucose consommé, on mesure $6$ mmol de $\text{O}_2$ consommées et $6$ mmol de $\text{CO}_2$ dégagées. Le bilan énergétique est de $38$ ATP par glucose.
    \item \textbf{Condition B} (milieu **privé de $\text{O}_2$**) : aucune consommation de $\text{O}_2$ ; on détecte un dégagement de $\text{CO}_2$ et la présence d'**éthanol** dans le milieu. Le bilan énergétique est de $2$ ATP par glucose.
\end{itemize}
\begin{enumerate}
    \item Identifier le type de métabolisme réalisé par les levures dans chaque condition. Justifier.
    \item Écrire l'équation bilan correspondant à chaque condition.
    \item Préciser, pour chaque condition, la localisation cellulaire des réactions mises en jeu.
    \item Dans la condition B, on fournit aux levures $4$ mmol de glucose. Calculer la quantité d'ATP produite et la quantité de $\text{CO}_2$ dégagée.
    \item Pour produire la même quantité d'ATP qu'en respirant $1$ mmol de glucose, combien de mmol de glucose la levure doit-elle fermenter ? Conclure sur l'intérêt de la respiration.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Identification :
    \begin{itemize}
        \item **Condition A** : il y a consommation de $\text{O}_2$ et oxydation complète du glucose ($\text{CO}_2 + \text{H}_2\text{O}$), avec un fort rendement ($38$ ATP) : c'est la **respiration cellulaire**.
        \item **Condition B** : absence de $\text{O}_2$, dégagement de $\text{CO}_2$ et production d'**éthanol**, avec un faible rendement ($2$ ATP) : c'est la **fermentation alcoolique**.
    \end{itemize}
    \item Équations bilan :
    \begin{itemize}
        \item Condition A (respiration) :
        \[
        \text{C}_6\text{H}_{12}\text{O}_6 + 6\,\text{O}_2 \rightarrow 6\,\text{CO}_2 + 6\,\text{H}_2\text{O}
        \]
        \item Condition B (fermentation alcoolique) :
        \[
        \text{C}_6\text{H}_{12}\text{O}_6 \rightarrow 2\,\text{C}_2\text{H}_5\text{OH} + 2\,\text{CO}_2
        \]
    \end{itemize}
    \item Localisation :
    \begin{itemize}
        \item Condition A : la **glycolyse** a lieu dans le **hyaloplasme**, le **cycle de Krebs** dans la **matrice mitochondriale**, la **chaîne respiratoire** sur la **membrane interne mitochondriale**.
        \item Condition B : la **fermentation** se déroule **entièrement dans le hyaloplasme** (la mitochondrie n'intervient pas).
    \end{itemize}
    \item Pour $4$ mmol de glucose fermenté :
    \begin{itemize}
        \item ATP : $4 \times 2 = 8$ mmol d'ATP.
        \item $\text{CO}_2$ : d'après l'équation, $1$ glucose donne $2\,\text{CO}_2$, donc $4 \times 2 = 8$ mmol de $\text{CO}_2$.
    \end{itemize}
    \item La respiration de $1$ mmol de glucose fournit $38$ mmol d'ATP. Or la fermentation fournit $2$ ATP par glucose ; il faut donc :
    \[
    \frac{38}{2} = 19 \text{ mmol de glucose à fermenter}
    \]
    La levure doit consommer **19 fois plus** de glucose en fermentation pour produire autant d'énergie. La **respiration** est donc un mode de production d'énergie beaucoup plus **économe** en glucose, grâce à l'oxydation complète du substrat permise par le dioxygène.
\end{enumerate}

### Problème 2 : Localisation des réactions et rôle de la mitochondrie
\begin{enonce}
Afin de localiser précisément les réactions de la respiration, on broie des cellules pour en extraire les différents constituants. On réalise quatre expériences en mettant en présence du glucose, de l'acide pyruvique et du dioxygène avec différentes fractions cellulaires. On mesure la **consommation de $\text{O}_2$** et la **production d'ATP**.
\begin{itemize}
    \item \textbf{Expérience 1} : hyaloplasme seul + glucose + $\text{O}_2$ $\rightarrow$ pas de consommation de $\text{O}_2$ ; production de $2$ ATP par glucose ; apparition d'acide pyruvique.
    \item \textbf{Expérience 2} : mitochondries intactes seules + glucose + $\text{O}_2$ $\rightarrow$ pas de consommation de $\text{O}_2$ ; pas d'ATP.
    \item \textbf{Expérience 3} : mitochondries intactes seules + acide pyruvique + $\text{O}_2$ $\rightarrow$ forte consommation de $\text{O}_2$ ; production d'ATP ; dégagement de $\text{CO}_2$.
    \item \textbf{Expérience 4} : mitochondries privées de leur membrane interne + acide pyruvique + $\text{O}_2$ $\rightarrow$ consommation de $\text{O}_2$ très faible ; production d'ATP quasi nulle ; dégagement de $\text{CO}_2$.
\end{itemize}
\begin{enumerate}
    \item À partir de l'expérience 1, indiquer où se déroule la glycolyse et quel en est le produit.
    \item Comparer les expériences 2 et 3. Que peut-on en déduire sur le substrat utilisé par la mitochondrie ?
    \item L'expérience 3 montre un dégagement de $\text{CO}_2$ : à quelle étape de la respiration ce dégagement correspond-il, et où se déroule-t-elle ?
    \item En comparant les expériences 3 et 4, déduire le rôle de la **membrane interne mitochondriale**.
    \item Construire un schéma fonctionnel (sous forme de texte) reliant les étapes de la respiration, leurs localisations et leur bilan en ATP.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Dans l'expérience 1, le hyaloplasme seul dégrade le glucose en **acide pyruvique** avec un bilan de $2$ ATP, sans consommer de $\text{O}_2$. La **glycolyse** se déroule donc dans le **hyaloplasme** ; son produit est l'**acide pyruvique**.
    \item Comparaison des expériences 2 et 3 :
    \begin{itemize}
        \item Avec du **glucose** (expérience 2), la mitochondrie ne consomme pas de $\text{O}_2$ et ne produit pas d'ATP.
        \item Avec de l'**acide pyruvique** (expérience 3), elle consomme du $\text{O}_2$ et produit de l'ATP.
    \end{itemize}
    On en déduit que la mitochondrie **ne peut pas utiliser directement le glucose** : son substrat est l'**acide pyruvique** issu de la glycolyse hyaloplasmique.
    \item Le dégagement de $\text{CO}_2$ correspond à l'**oxydation de l'acide pyruvique dans le cycle de Krebs**, qui se déroule dans la **matrice mitochondriale**.
    \item Comparaison des expériences 3 et 4 : lorsque la **membrane interne** est intacte (exp. 3), il y a forte consommation de $\text{O}_2$ et production d'ATP ; lorsqu'elle est détruite (exp. 4), la consommation de $\text{O}_2$ et la production d'ATP sont quasi nulles, **bien que le $\text{CO}_2$ soit encore dégagé** (cycle de Krebs fonctionnel dans la matrice). On en déduit que la **membrane interne** porte la **chaîne respiratoire** responsable de la consommation de $\text{O}_2$ et de la **phosphorylation oxydative** (synthèse de la majeure partie de l'ATP).
    \item Schéma fonctionnel :
    \begin{itemize}
        \item **Glucose** $\rightarrow$ (glycolyse, **hyaloplasme**) $\rightarrow$ **acide pyruvique** ; bilan : $2$ ATP.
        \item **Acide pyruvique** $\rightarrow$ (cycle de Krebs, **matrice mitochondriale**) $\rightarrow$ $\text{CO}_2$ + transporteurs réduits ; bilan : $2$ ATP.
        \item Transporteurs réduits $\rightarrow$ (chaîne respiratoire, **membrane interne**, consommation de $\text{O}_2$) $\rightarrow$ $\text{H}_2\text{O}$ ; bilan : $34$ ATP.
        \item Total : $2 + 2 + 34 = 38$ ATP par glucose.
    \end{itemize}
\end{enumerate}

### Problème 3 : Activité musculaire et transition respiration / fermentation
\begin{enonce}
Lors d'un effort physique, le muscle a besoin de produire rapidement de l'ATP. On mesure, chez un sportif, la consommation de $\text{O}_2$ et la concentration sanguine en **acide lactique** pour deux intensités d'effort.
\begin{itemize}
    \item \textbf{Effort modéré} : la consommation de $\text{O}_2$ par le muscle augmente proportionnellement à l'effort ; la concentration en acide lactique reste faible et stable.
    \item \textbf{Effort intense} : la consommation de $\text{O}_2$ atteint un palier maximal (elle ne peut plus augmenter) ; la concentration en acide lactique du sang augmente fortement.
\end{itemize}
On donne : respiration $\rightarrow 38$ ATP par glucose ; fermentation lactique $\rightarrow 2$ ATP par glucose.
\begin{enumerate}
    \item Quel métabolisme assure la production d'ATP lors de l'effort modéré ? Justifier à partir des données.
    \item Expliquer pourquoi, lors de l'effort intense, le muscle se met à produire de l'acide lactique.
    \item Écrire l'équation bilan de la fermentation lactique et préciser sa localisation cellulaire.
    \item Au cours d'un effort intense, un muscle dégrade $0{,}6$ mmol de glucose, dont $\frac{1}{3}$ par respiration et $\frac{2}{3}$ par fermentation lactique. Calculer la quantité totale d'ATP produite.
    \item Si la totalité de ce glucose ($0{,}6$ mmol) avait été dégradée par respiration, quelle quantité d'ATP aurait été obtenue ? Conclure sur le « coût » du recours à la fermentation.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Lors de l'effort modéré, la consommation de $\text{O}_2$ augmente avec l'effort et l'acide lactique reste faible : le muscle dispose d'assez de $\text{O}_2$ pour oxyder complètement le glucose. C'est donc la **respiration cellulaire** qui assure la production d'ATP.
    \item Lors de l'effort intense, l'apport de $\text{O}_2$ atteint un **palier** : il devient **insuffisant** pour répondre à la demande énergétique. Une partie de l'acide pyruvique produit par la glycolyse ne peut plus être oxydée dans la mitochondrie (faute de $\text{O}_2$) ; elle est donc transformée en **acide lactique** par **fermentation lactique**, qui produit de l'ATP sans $\text{O}_2$.
    \item Équation bilan de la fermentation lactique :
    \[
    \text{C}_6\text{H}_{12}\text{O}_6 \rightarrow 2\,\text{C}_3\text{H}_6\text{O}_3
    \]
    Elle se déroule **entièrement dans le hyaloplasme** (cytoplasme) de la cellule musculaire.
    \item Répartition du glucose :
    \begin{itemize}
        \item respiration : $\dfrac{1}{3} \times 0{,}6 = 0{,}2$ mmol $\rightarrow 0{,}2 \times 38 = 7{,}6$ mmol d'ATP ;
        \item fermentation : $\dfrac{2}{3} \times 0{,}6 = 0{,}4$ mmol $\rightarrow 0{,}4 \times 2 = 0{,}8$ mmol d'ATP.
    \end{itemize}
    Total : $7{,}6 + 0{,}8 = 8{,}4$ mmol d'ATP.
    \item Si tout le glucose était respiré :
    \[
    0{,}6 \times 38 = 22{,}8 \text{ mmol d'ATP}
    \]
    Le recours à la fermentation fait donc « perdre » $22{,}8 - 8{,}4 = 14{,}4$ mmol d'ATP pour la même quantité de glucose : la fermentation est un mode de secours **rapide mais peu rentable**, qui permet de produire de l'ATP en l'absence de $\text{O}_2$ suffisant, au prix d'un fort gaspillage de glucose et d'une accumulation d'acide lactique.
\end{enumerate}
