### Exercice 1 : Travail et énergie potentielle
\begin{enonce}
Une charge ponctuelle $q = 2{,}0\times 10^{-6}\ \text{C}$ se déplace d'un point $A$ de potentiel $V_A = 300\ \text{V}$ vers un point $B$ de potentiel $V_B = 100\ \text{V}$, dans une région où règne un champ électrique.
\begin{enumerate}
    \item Calculer la tension $U_{AB}$ entre $A$ et $B$.
    \item Déterminer le travail $W_{AB}$ de la force électrique lors de ce déplacement.
    \item Calculer l'énergie potentielle électrostatique $E_p(A)$ et $E_p(B)$, puis vérifier la relation $W_{AB} = E_p(A) - E_p(B)$.
    \item Quel serait le travail de la force électrique si la charge revenait ensuite de $B$ jusqu'en $A$ par un autre chemin ?
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item La tension est la différence de potentiel : $U_{AB} = V_A - V_B = 300 - 100 = 200\ \text{V}$.
    \item Le travail vaut $W_{AB} = q\,U_{AB} = 2{,}0\times 10^{-6}\times 200 = 4{,}0\times 10^{-4}\ \text{J}$. Il est positif : la force électrique est motrice.
    \item $E_p(A) = q\,V_A = 2{,}0\times 10^{-6}\times 300 = 6{,}0\times 10^{-4}\ \text{J}$ et $E_p(B) = q\,V_B = 2{,}0\times 10^{-6}\times 100 = 2{,}0\times 10^{-4}\ \text{J}$. Alors $E_p(A) - E_p(B) = 4{,}0\times 10^{-4}\ \text{J} = W_{AB}$ : la relation est vérifiée.
    \item Le travail ne dépend que des potentiels de départ et d'arrivée. Sur le trajet retour $B \to A$, $W_{BA} = q\,U_{BA} = q\,(V_B - V_A) = -4{,}0\times 10^{-4}\ \text{J}$. Sur le trajet fermé $A \to B \to A$, le travail total est nul.
\end{enumerate}

### Exercice 2 : Champ et force entre deux plaques
\begin{enonce}
Deux plaques métalliques parallèles, distantes de $d = 5{,}0\ \text{cm}$, sont soumises à une tension $U = 1000\ \text{V}$. Un proton (charge $q = +e = +1{,}6\times 10^{-19}\ \text{C}$) traverse l'espace entre les plaques, de la plaque positive vers la plaque négative.
\begin{enumerate}
    \item Calculer la valeur du champ électrique $E$ entre les plaques.
    \item Déterminer la valeur de la force électrique $\vec{F}$ subie par le proton.
    \item Calculer le travail de la force électrique sur toute la traversée, par deux méthodes ($W = q\,E\,d$ et $W = q\,U$).
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item $E = \dfrac{U}{d} = \dfrac{1000}{5{,}0\times 10^{-2}} = 2{,}0\times 10^{4}\ \text{V}\cdot\text{m}^{-1}$.
    \item $F = e\,E = 1{,}6\times 10^{-19}\times 2{,}0\times 10^{4} = 3{,}2\times 10^{-15}\ \text{N}$, dirigée comme $\vec{E}$ (de la plaque $+$ vers la plaque $-$) car la charge est positive.
    \item Première méthode : $W = q\,E\,d = 1{,}6\times 10^{-19}\times 2{,}0\times 10^{4}\times 5{,}0\times 10^{-2} = 1{,}6\times 10^{-16}\ \text{J}$. Seconde méthode : $W = q\,U = 1{,}6\times 10^{-19}\times 1000 = 1{,}6\times 10^{-16}\ \text{J}$. Les deux résultats coïncident.
\end{enumerate}

### Exercice 3 : Accélération d'un proton (théorème de l'énergie cinétique)
\begin{enonce}
Un proton de masse $m = 1{,}67\times 10^{-27}\ \text{kg}$ et de charge $q = +e$, initialement au repos, est accéléré par une tension $U = 2000\ \text{V}$. On néglige le poids devant la force électrique.
\begin{enumerate}
    \item Énoncer le théorème de l'énergie cinétique pour ce proton.
    \item Calculer l'énergie cinétique acquise par le proton.
    \item En déduire la vitesse $v$ atteinte.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Le proton n'est soumis qu'à la force électrique : $\Delta E_c = W = q\,U$, soit $\tfrac{1}{2}m\,v^2 - 0 = e\,U$.
    \item $E_c = e\,U = 1{,}6\times 10^{-19}\times 2000 = 3{,}2\times 10^{-16}\ \text{J}$.
    \item $v = \sqrt{\dfrac{2\,e\,U}{m}} = \sqrt{\dfrac{2\times 1{,}6\times 10^{-19}\times 2000}{1{,}67\times 10^{-27}}} = \sqrt{3{,}83\times 10^{11}} \approx 6{,}2\times 10^{5}\ \text{m}\cdot\text{s}^{-1}$.
\end{enumerate}

### Exercice 4 : Canon à électrons
\begin{enonce}
Dans un canon à électrons, des électrons émis sans vitesse initiale par un filament sont accélérés sous une tension $U = 4000\ \text{V}$. On donne $m = 9{,}1\times 10^{-31}\ \text{kg}$ et $e = 1{,}6\times 10^{-19}\ \text{C}$.
\begin{enumerate}
    \item Calculer l'énergie cinétique acquise par un électron.
    \item En déduire la vitesse $v$ de l'électron à la sortie.
    \item Comparer cette vitesse à celle de la lumière ($c = 3{,}0\times 10^{8}\ \text{m}\cdot\text{s}^{-1}$) ; l'étude classique est-elle acceptable ?
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item $E_c = e\,U = 1{,}6\times 10^{-19}\times 4000 = 6{,}4\times 10^{-16}\ \text{J}$.
    \item $v = \sqrt{\dfrac{2\,e\,U}{m}} = \sqrt{\dfrac{2\times 1{,}6\times 10^{-19}\times 4000}{9{,}1\times 10^{-31}}} = \sqrt{1{,}41\times 10^{15}} \approx 3{,}8\times 10^{7}\ \text{m}\cdot\text{s}^{-1}$.
    \item $\dfrac{v}{c} = \dfrac{3{,}8\times 10^{7}}{3{,}0\times 10^{8}} \approx 0{,}13$, soit environ $13\ \%$ de la vitesse de la lumière. L'approximation classique reste acceptable (effets relativistes faibles).
\end{enumerate}

### Exercice 5 : Accélération d'un électron entre deux plaques
\begin{enonce}
Un électron ($m = 9{,}1\times 10^{-31}\ \text{kg}$, charge $q = -e$) se déplace dans le champ uniforme régnant entre deux plaques distantes de $d = 4{,}0\ \text{cm}$, soumises à une tension $U = 200\ \text{V}$.
\begin{enumerate}
    \item Calculer la valeur du champ électrique $E$.
    \item Déterminer la valeur de la force électrique subie par l'électron.
    \item En déduire la valeur de son accélération $a$. Quelle est la nature du mouvement ?
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item $E = \dfrac{U}{d} = \dfrac{200}{4{,}0\times 10^{-2}} = 5{,}0\times 10^{3}\ \text{V}\cdot\text{m}^{-1}$.
    \item $F = e\,E = 1{,}6\times 10^{-19}\times 5{,}0\times 10^{3} = 8{,}0\times 10^{-16}\ \text{N}$. La force est dirigée en sens opposé à $\vec{E}$ (la charge est négative), donc vers la plaque positive.
    \item $a = \dfrac{F}{m} = \dfrac{8{,}0\times 10^{-16}}{9{,}1\times 10^{-31}} \approx 8{,}8\times 10^{14}\ \text{m}\cdot\text{s}^{-2}$. Le vecteur accélération est constant : le mouvement est rectiligne uniformément accéléré.
\end{enumerate}

### Exercice 6 : Le travail ne dépend pas du chemin
\begin{enonce}
Dans une région, le champ électrique est uniforme, horizontal, de valeur $E = 1{,}0\times 10^{4}\ \text{V}\cdot\text{m}^{-1}$. Une charge $q = +5{,}0\times 10^{-9}\ \text{C}$ se déplace du point $A$ au point $B$, le segment $AB$ étant parallèle au champ et de longueur $\ell = 8{,}0\ \text{cm}$.
\begin{enumerate}
    \item Calculer le travail $W_1$ de la force électrique lorsque la charge va directement de $A$ à $B$.
    \item La charge va maintenant de $A$ à $B$ en passant par un point $C$ tel que $AC$ est perpendiculaire au champ. Que vaut le travail sur le segment $AC$ ? En déduire le travail total $W_2$ et comparer à $W_1$.
    \item Quel est le travail de la force électrique sur le trajet fermé $A \to C \to B \to A$ ?
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item $W_1 = q\,E\,\ell = 5{,}0\times 10^{-9}\times 1{,}0\times 10^{4}\times 8{,}0\times 10^{-2} = 4{,}0\times 10^{-6}\ \text{J}$.
    \item Sur $AC$, la force $\vec{F} = q\vec{E}$ est perpendiculaire au déplacement : son travail est nul. Sur $CB$ (qui ramène le même écart parallèle au champ que $AB$), le travail vaut $4{,}0\times 10^{-6}\ \text{J}$. Donc $W_2 = 0 + 4{,}0\times 10^{-6} = 4{,}0\times 10^{-6}\ \text{J} = W_1$ : le travail ne dépend pas du chemin suivi.
    \item Sur un trajet fermé, le point de départ et le point d'arrivée sont confondus : $V_A - V_A = 0$, donc le travail total est nul. La force électrique est conservative.
\end{enumerate}
