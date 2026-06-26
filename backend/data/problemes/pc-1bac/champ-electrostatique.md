### Problème 1 : Champ créé par deux charges hors de l'axe
\begin{enonce}
Deux charges ponctuelles positives identiques $q_A = q_B = +5\times 10^{-9}\,\text{C}$ sont placées en $A$ et $B$ distants de $AB = 0{,}6\,\text{m}$. On considère le point $M$ situé sur la **médiatrice** de $[AB]$, tel que $MA = MB = 0{,}5\,\text{m}$ (la distance de $M$ à la droite $(AB)$ vaut alors $h = 0{,}4\,\text{m}$). On prend $k = 9\times 10^{9}$ (unités SI).
\begin{enumerate}
    \item Calculer la valeur du champ $\vec{E}_A$ créé par $q_A$ seule au point $M$.
    \item Par un argument de symétrie, préciser la direction du champ total $\vec{E}$ en $M$.
    \item Sachant que chaque vecteur fait avec la médiatrice un angle $\alpha$ tel que $\cos\alpha = h/MA$, calculer la valeur du champ total $E$ en $M$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Avec $r = MA = 0{,}5\,\text{m}$ :
$$E_A = k\,\frac{|q_A|}{r^{2}} = 9\times 10^{9}\times\frac{5\times 10^{-9}}{(0{,}5)^2} = \frac{45}{0{,}25} = 180\ \text{N}\cdot\text{C}^{-1}.$$
Par symétrie $E_B = E_A = 180\ \text{N}\cdot\text{C}^{-1}$.
    \item $M$ est sur la médiatrice : les deux charges sont symétriques par rapport à cette droite. Les **composantes parallèles** à $(AB)$ de $\vec{E}_A$ et $\vec{E}_B$ sont opposées et se compensent ; les **composantes perpendiculaires** (le long de la médiatrice) s'ajoutent. Le champ total $\vec{E}$ est donc porté par la **médiatrice**, dirigé en s'éloignant de $(AB)$.
    \item Chaque vecteur contribue par sa composante sur la médiatrice $E_A\cos\alpha$, avec $\cos\alpha = h/MA = 0{,}4/0{,}5 = 0{,}8$ :
$$E = 2\,E_A\cos\alpha = 2\times 180\times 0{,}8 = 288\ \text{N}\cdot\text{C}^{-1}.$$
\end{enumerate}

### Problème 2 : Somme vectorielle de deux forces de Coulomb
\begin{enonce}
Trois charges ponctuelles sont placées dans le vide. Une charge $q_0 = +1\times 10^{-6}\,\text{C}$ est au point $O$, origine d'un repère. Une charge $q_A = +2\times 10^{-6}\,\text{C}$ est placée en $A$ sur l'axe $Ox$ à la distance $OA = 0{,}1\,\text{m}$, et une charge $q_B = +2\times 10^{-6}\,\text{C}$ est placée en $B$ sur l'axe $Oy$ à la distance $OB = 0{,}1\,\text{m}$. On donne $k = 9\times 10^{9}$ (unités SI).
\begin{enumerate}
    \item Calculer la valeur de la force $\vec{F}_A$ exercée par $q_A$ sur $q_0$, puis préciser son sens.
    \item Calculer de même la valeur de la force $\vec{F}_B$ exercée par $q_B$ sur $q_0$.
    \item Les deux forces étant perpendiculaires, calculer la valeur de la force résultante $\vec{F}$ subie par $q_0$ et préciser sa direction.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Loi de Coulomb avec $r = OA = 0{,}1\,\text{m}$ :
$$F_A = k\,\frac{|q_0\,q_A|}{r^{2}} = 9\times 10^{9}\times\frac{1\times 10^{-6}\times 2\times 10^{-6}}{(0{,}1)^2} = 9\times 10^{9}\times\frac{2\times 10^{-12}}{0{,}01} = 1{,}8\,\text{N}.$$
$q_0$ et $q_A$ sont positives : la force est **répulsive**, dirigée de $A$ vers $O$, donc selon $-\vec{x}$.
    \item Par le même calcul, puisque $q_B = q_A$ et $OB = OA$ :
$$F_B = 1{,}8\,\text{N},$$
répulsive, dirigée de $B$ vers $O$, donc selon $-\vec{y}$.
    \item $\vec{F}_A \perp \vec{F}_B$ et $F_A = F_B$. La résultante a pour valeur :
$$F = \sqrt{F_A^{2} + F_B^{2}} = \sqrt{2}\times 1{,}8 \approx 2{,}5\,\text{N}.$$
Comme les deux composantes sont égales, $\vec{F}$ fait un angle de $45^{\circ}$ avec chaque axe ; elle est dirigée selon la bissectrice du troisième quadrant (sens $-\vec{x}$, $-\vec{y}$).
\end{enumerate}

### Problème 3 : Goutte chargée en équilibre dans un condensateur
\begin{enonce}
Un condensateur plan est constitué de deux plaques horizontales distantes de $d = 5\,\text{cm}$, soumises à une tension $U = 1000\,\text{V}$ ; la plaque supérieure est positive. Une petite goutte d'huile de masse $m = 3{,}2\times 10^{-15}\,\text{kg}$, portant une charge $q$, reste **immobile** entre les plaques. On donne $g = 10\ \text{N}\cdot\text{kg}^{-1}$ et $e = 1{,}6\times 10^{-19}\,\text{C}$.



\begin{enumerate}
    \item Calculer la valeur $E$ du champ électrostatique entre les plaques et préciser son sens.
    \item Écrire la condition d'équilibre de la goutte et en déduire le signe de $q$.
    \item Calculer la valeur de la charge $q$ portée par la goutte.
    \item En déduire le nombre $n$ d'électrons en excès sur la goutte.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Le champ entre les plaques est uniforme. Avec $d = 5\,\text{cm} = 0{,}05\,\text{m}$ :
$$E = \frac{U}{d} = \frac{1000}{0{,}05} = 2\times 10^{4}\ \text{V}\cdot\text{m}^{-1}.$$
La plaque supérieure est positive : $\vec{E}$ est dirigé **vers le bas** (de la plaque + vers la plaque $-$).
    \item À l'équilibre, le poids $\vec{P}$ (vertical, vers le bas) et la force électrique $\vec{F} = q\,\vec{E}$ se compensent :
$$\vec{F} + \vec{P} = \vec{0}.$$
Pour que $\vec{F}$ soit dirigée **vers le haut** (opposée à $\vec{P}$) alors que $\vec{E}$ pointe vers le bas, il faut $q < 0$ : la goutte porte une charge **négative**.
    \item En valeur, $F = P$ donne $|q|\,E = m\,g$, soit :
$$|q| = \frac{m\,g}{E} = \frac{3{,}2\times 10^{-15}\times 10}{2\times 10^{4}} = \frac{3{,}2\times 10^{-14}}{2\times 10^{4}} = 1{,}6\times 10^{-18}\,\text{C}.$$
    \item Le nombre d'électrons en excès est :
$$n = \frac{|q|}{e} = \frac{1{,}6\times 10^{-18}}{1{,}6\times 10^{-19}} = 10.$$
La goutte porte donc **10 électrons** en excès.
\end{enumerate}
