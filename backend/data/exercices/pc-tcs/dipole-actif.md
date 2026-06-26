### Exercice 1 : Dipôle actif ou passif ?
\begin{enonce}
On trace la caractéristique $U = f(I)$ de deux dipôles $D_1$ et $D_2$ :
\begin{itemize}
    \item $D_1$ : droite passant par l'**origine**, de pente $20\,\Omega$ ;
    \item $D_2$ : droite **décroissante** coupant l'axe des tensions en $U = 6\,\text{V}$ et passant par le point $(I = 2\,\text{A} ;\, U = 4\,\text{V})$.
\end{itemize}
\begin{enumerate}
    \item Lequel de ces dipôles est **passif** ? Lequel est **actif** ? Justifier.
    \item De quelle nature est $D_1$ ? Donner sa valeur caractéristique.
    \item Pour $D_2$, donner la valeur de la force électromotrice $E$.
    \item Déterminer la résistance interne $r$ de $D_2$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item La caractéristique de $D_1$ **passe par l'origine** : ce dipôle est **passif**. Celle de $D_2$ **ne passe pas par l'origine** (il impose $U = 6\,\text{V}$ même pour $I = 0$) : c'est un dipôle **actif**, donc un générateur.
    \item $D_1$ est un **résistor** (ohmique) : sa caractéristique est une droite passant par l'origine, d'équation $U = R\,I$. La pente donne $R = 20\,\Omega$.
    \item Pour $D_2$, la f.é.m. $E$ est l'ordonnée à l'origine de la caractéristique, soit $E = 6\,\text{V}$.
    \item La loi d'Ohm du générateur s'écrit $U = E - r\,I$, donc $r = \dfrac{E - U}{I} = \dfrac{6 - 4}{2} = 1{,}0\,\Omega$.
\end{enumerate}

### Exercice 2 : Loi d'Ohm pour un générateur
\begin{enonce}
Une pile a pour force électromotrice $E = 4{,}5\,\text{V}$ et pour résistance interne $r = 1{,}2\,\Omega$. Elle débite un courant d'intensité $I$.
\begin{enumerate}
    \item Quelle est la tension $U$ à ses bornes lorsqu'elle ne débite aucun courant ($I = 0$) ?
    \item Calculer $U$ lorsqu'elle débite $I = 0{,}50\,\text{A}$.
    \item Pour quelle intensité $I$ la tension à ses bornes vaut-elle $U = 3{,}0\,\text{V}$ ?
    \item Calculer l'intensité du courant de **court-circuit** ($U = 0$).
\end{enumerate}
\end{enonce}

\textbf{Solution :}
On utilise la loi d'Ohm pour un générateur : $U = E - r\,I$.
\begin{enumerate}
    \item Si $I = 0$ : $U = E = 4{,}5\,\text{V}$ (tension à vide).
    \item $U = E - r\,I = 4{,}5 - 1{,}2 \times 0{,}50 = 4{,}5 - 0{,}60 = 3{,}9\,\text{V}$.
    \item De $U = E - r\,I$ on tire $I = \dfrac{E - U}{r} = \dfrac{4{,}5 - 3{,}0}{1{,}2} = \dfrac{1{,}5}{1{,}2} = 1{,}25\,\text{A}$.
    \item En court-circuit $U = 0$, donc $I_{cc} = \dfrac{E}{r} = \dfrac{4{,}5}{1{,}2} = 3{,}75\,\text{A}$.
\end{enumerate}

### Exercice 3 : Déterminer $E$ et $r$ à partir de deux mesures
\begin{enonce}
On mesure la tension $U$ aux bornes d'un générateur pour deux valeurs de l'intensité :
\begin{itemize}
    \item $I_1 = 0{,}20\,\text{A}$ : $U_1 = 5{,}6\,\text{V}$ ;
    \item $I_2 = 0{,}80\,\text{A}$ : $U_2 = 4{,}4\,\text{V}$.
\end{itemize}
\begin{enumerate}
    \item Sachant que $U = E - r\,I$, déterminer la résistance interne $r$.
    \item En déduire la force électromotrice $E$.
    \item Vérifier le résultat avec le deuxième couple de mesures.
    \item Calculer l'intensité du courant de court-circuit.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item On écrit la loi d'Ohm pour les deux points et on soustrait :
    $$U_1 - U_2 = (E - r\,I_1) - (E - r\,I_2) = r\,(I_2 - I_1).$$
    D'où $r = \dfrac{U_1 - U_2}{I_2 - I_1} = \dfrac{5{,}6 - 4{,}4}{0{,}80 - 0{,}20} = \dfrac{1{,}2}{0{,}60} = 2{,}0\,\Omega$.
    \item $E = U_1 + r\,I_1 = 5{,}6 + 2{,}0 \times 0{,}20 = 5{,}6 + 0{,}40 = 6{,}0\,\text{V}$.
    \item Avec le deuxième point : $U = E - r\,I_2 = 6{,}0 - 2{,}0 \times 0{,}80 = 6{,}0 - 1{,}6 = 4{,}4\,\text{V}$. On retrouve bien $U_2$.
    \item $I_{cc} = \dfrac{E}{r} = \dfrac{6{,}0}{2{,}0} = 3{,}0\,\text{A}$.
\end{enumerate}

### Exercice 4 : Point de fonctionnement (générateur + résistor)
\begin{enonce}
Un générateur de f.é.m. $E = 12\,\text{V}$ et de résistance interne $r = 2{,}0\,\Omega$ alimente un résistor de résistance $R = 10\,\Omega$.


\begin{enumerate}
    \item Écrire la caractéristique du générateur, puis celle du résistor.
    \item Déterminer l'intensité $I_0$ du courant qui s'établit dans le circuit.
    \item En déduire la tension $U_0$ aux bornes du résistor.
    \item Calculer le rendement du générateur.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Générateur : $U = E - r\,I = 12 - 2{,}0\,I$. Résistor : $U = R\,I = 10\,I$.
    \item Au point de fonctionnement, les deux tensions sont égales : $E - r\,I_0 = R\,I_0$, d'où $I_0 = \dfrac{E}{R + r} = \dfrac{12}{10 + 2{,}0} = 1{,}0\,\text{A}$.
    \item $U_0 = R\,I_0 = 10 \times 1{,}0 = 10\,\text{V}$. On vérifie côté générateur : $U_0 = 12 - 2{,}0 \times 1{,}0 = 10\,\text{V}$.
    \item $\eta = \dfrac{U_0}{E} = \dfrac{10}{12} \approx 0{,}83$, soit $83\,\%$.
\end{enumerate}

### Exercice 5 : Récepteur actif (moteur électrique)
\begin{enonce}
Un petit moteur électrique se comporte comme un récepteur actif de force contre-électromotrice $E' = 6{,}0\,\text{V}$ et de résistance interne $r' = 1{,}5\,\Omega$. Il est traversé par un courant d'intensité $I = 2{,}0\,\text{A}$.
\begin{enumerate}
    \item Écrire la loi d'Ohm pour un récepteur actif et calculer la tension $U$ à ses bornes.
    \item Calculer la puissance électrique $P$ reçue par le moteur.
    \item Calculer la puissance dissipée par effet Joule dans le moteur.
    \item En déduire la puissance utile (mécanique) et le rendement du moteur.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Pour un récepteur actif : $U = E' + r'\,I = 6{,}0 + 1{,}5 \times 2{,}0 = 6{,}0 + 3{,}0 = 9{,}0\,\text{V}$.
    \item $P = U\,I = 9{,}0 \times 2{,}0 = 18\,\text{W}$.
    \item Puissance Joule : $P_J = r'\,I^2 = 1{,}5 \times (2{,}0)^2 = 6{,}0\,\text{W}$.
    \item Puissance utile : $P_u = E'\,I = 6{,}0 \times 2{,}0 = 12\,\text{W}$ (on vérifie : $P_u + P_J = 12 + 6 = 18 = P$). Le rendement vaut $\eta = \dfrac{P_u}{P} = \dfrac{12}{18} \approx 0{,}67$, soit $67\,\%$.
\end{enumerate}

### Exercice 6 : Rendement d'un générateur
\begin{enonce}
Une batterie de f.é.m. $E = 9{,}0\,\text{V}$ et de résistance interne $r = 0{,}50\,\Omega$ débite un courant d'intensité $I = 2{,}0\,\text{A}$.
\begin{enumerate}
    \item Calculer la tension $U$ aux bornes de la batterie.
    \item Calculer la puissance totale produite et la puissance utile fournie au circuit.
    \item Calculer la puissance perdue par effet Joule dans la batterie.
    \item En déduire le rendement de la batterie.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item $U = E - r\,I = 9{,}0 - 0{,}50 \times 2{,}0 = 9{,}0 - 1{,}0 = 8{,}0\,\text{V}$.
    \item Puissance totale : $P_{tot} = E\,I = 9{,}0 \times 2{,}0 = 18\,\text{W}$. Puissance utile : $P_u = U\,I = 8{,}0 \times 2{,}0 = 16\,\text{W}$.
    \item Puissance Joule interne : $P_J = r\,I^2 = 0{,}50 \times (2{,}0)^2 = 2{,}0\,\text{W}$ (on vérifie : $P_u + P_J = 16 + 2 = 18 = P_{tot}$).
    \item $\eta = \dfrac{P_u}{P_{tot}} = \dfrac{U}{E} = \dfrac{8{,}0}{9{,}0} \approx 0{,}89$, soit $89\,\%$.
\end{enumerate}
