### Exercice 1 : Loi de Coulomb
\begin{enonce}
Deux charges ponctuelles $q_A = +1\times 10^{-6}\,\text{C}$ et $q_B = +4\times 10^{-6}\,\text{C}$ sont placées dans le vide, distantes de $r = 0{,}3\,\text{m}$. On donne $k = 9\times 10^{9}\ \text{N}\cdot\text{m}^2\cdot\text{C}^{-2}$.
\begin{enumerate}
    \item Calculer la valeur de la force d'interaction électrostatique entre ces deux charges.
    \item Ces charges s'attirent-elles ou se repoussent-elles ? Justifier.
    \item Que devient la valeur de la force si l'on double la distance entre les charges ?
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item On applique la loi de Coulomb :
$$F = k\,\frac{|q_A\,q_B|}{r^{2}} = 9\times 10^{9}\times\frac{1\times 10^{-6}\times 4\times 10^{-6}}{(0{,}3)^2} = 9\times 10^{9}\times\frac{4\times 10^{-12}}{0{,}09} = 0{,}4\,\text{N}.$$
    \item Les deux charges sont **positives** (de même signe) : elles se **repoussent**. Les forces sont portées par la droite $(AB)$ et dirigées vers l'extérieur.
    \item La force varie en $1/r^{2}$. Si la distance double, la force est divisée par $2^{2} = 4$ :
$$F' = \frac{F}{4} = \frac{0{,}4}{4} = 0{,}1\,\text{N}.$$
\end{enumerate}

### Exercice 2 : Champ d'une charge ponctuelle
\begin{enonce}
Une charge ponctuelle $q = +5\times 10^{-9}\,\text{C}$ est placée dans le vide. On donne $k = 9\times 10^{9}$ (unités SI).
\begin{enumerate}
    \item Calculer la valeur du champ électrostatique $E$ créé par cette charge en un point $M$ situé à $r = 0{,}2\,\text{m}$ de la charge.
    \item Préciser la direction et le sens du vecteur $\vec{E}$ en $M$.
    \item À quelle distance $r'$ de la charge la valeur du champ vaut-elle $E' = 500\,\text{N}\cdot\text{C}^{-1}$ ?
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Champ d'une charge ponctuelle :
$$E = k\,\frac{|q|}{r^{2}} = 9\times 10^{9}\times\frac{5\times 10^{-9}}{(0{,}2)^2} = \frac{45}{0{,}04} = 1125\ \text{N}\cdot\text{C}^{-1}\approx 1{,}1\times 10^{3}\ \text{N}\cdot\text{C}^{-1}.$$
    \item Le vecteur $\vec{E}$ est porté par la droite joignant la charge à $M$. Comme $q > 0$, son sens est **centrifuge** : il s'éloigne de la charge.
    \item On isole $r'$ dans $E' = k\,|q|/r'^{2}$ :
$$r' = \sqrt{\frac{k\,|q|}{E'}} = \sqrt{\frac{9\times 10^{9}\times 5\times 10^{-9}}{500}} = \sqrt{\frac{45}{500}} = \sqrt{0{,}09} = 0{,}3\,\text{m}.$$
\end{enumerate}

### Exercice 3 : Force subie par une charge test
\begin{enonce}
Dans une région de l'espace règne un champ électrostatique uniforme de valeur $E = 2\times 10^{3}\ \text{N}\cdot\text{C}^{-1}$. On y place une charge ponctuelle $q = -3\times 10^{-6}\,\text{C}$.
\begin{enumerate}
    \item Rappeler la relation entre la force $\vec{F}$ subie par la charge et le champ $\vec{E}$.
    \item Calculer la valeur de la force électrostatique subie par cette charge.
    \item Préciser le sens de $\vec{F}$ par rapport à $\vec{E}$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item La force subie par une charge $q$ placée dans un champ $\vec{E}$ est $\vec{F} = q\,\vec{E}$.
    \item Sa valeur est :
$$F = |q|\,E = 3\times 10^{-6}\times 2\times 10^{3} = 6\times 10^{-3}\,\text{N} = 6\,\text{mN}.$$
    \item Comme $q < 0$, le vecteur $\vec{F} = q\,\vec{E}$ est de **sens opposé** au champ $\vec{E}$.
\end{enumerate}

### Exercice 4 : Superposition de deux champs
\begin{enonce}
Deux charges ponctuelles **positives** identiques $q_A = q_B = +1\times 10^{-6}\,\text{C}$ sont placées en $A$ et $B$ distants de $AB = 0{,}2\,\text{m}$. On note $M$ le **milieu** du segment $[AB]$.



\begin{enumerate}
    \item Calculer la valeur du champ $\vec{E}_A$ créé par $q_A$ seule au point $M$.
    \item En déduire le champ électrostatique total $\vec{E}$ au point $M$. Justifier par un argument de symétrie.
    \item Que vaudrait le champ total en $M$ si l'on remplaçait $q_B$ par une charge négative $-1\times 10^{-6}\,\text{C}$ ?
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Le point $M$ est à $r = AB/2 = 0{,}1\,\text{m}$ de chaque charge :
$$E_A = k\,\frac{|q_A|}{r^{2}} = 9\times 10^{9}\times\frac{1\times 10^{-6}}{(0{,}1)^2} = 9\times 10^{5}\ \text{N}\cdot\text{C}^{-1}.$$
Par symétrie, $E_B = E_A = 9\times 10^{5}\ \text{N}\cdot\text{C}^{-1}$.
    \item Les deux charges sont positives : $\vec{E}_A$ s'éloigne de $A$ (vers $B$) et $\vec{E}_B$ s'éloigne de $B$ (vers $A$). En $M$ ces deux vecteurs ont **même valeur** et des **sens opposés** : ils se compensent. Donc
$$\vec{E} = \vec{E}_A + \vec{E}_B = \vec{0}.$$
    \item Si $q_B = -1\times 10^{-6}\,\text{C}$, alors $\vec{E}_B$ pointe **vers** $B$, c'est-à-dire dans le même sens que $\vec{E}_A$. Les vecteurs s'ajoutent :
$$E = E_A + E_B = 2\times 9\times 10^{5} = 1{,}8\times 10^{6}\ \text{N}\cdot\text{C}^{-1},$$
dirigé de $A$ vers $B$.
\end{enumerate}

### Exercice 5 : Champ uniforme d'un condensateur
\begin{enonce}
Un condensateur plan est formé de deux plaques parallèles distantes de $d = 3\,\text{cm}$, soumises à une tension $U = 600\,\text{V}$. On donne la charge élémentaire $e = 1{,}6\times 10^{-19}\,\text{C}$.



\begin{enumerate}
    \item Calculer la valeur du champ électrostatique $E$ entre les plaques.
    \item Préciser la direction et le sens du vecteur $\vec{E}$.
    \item Un électron est placé entre les plaques. Calculer la valeur de la force électrostatique qu'il subit.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Le champ entre les plaques est uniforme. Avec $d = 3\,\text{cm} = 0{,}03\,\text{m}$ :
$$E = \frac{U}{d} = \frac{600}{0{,}03} = 2\times 10^{4}\ \text{V}\cdot\text{m}^{-1}.$$
    \item Le champ uniforme est dirigé par des **droites parallèles**, perpendiculaires aux plaques, orientées de la plaque **positive** vers la plaque **négative**.
    \item La force subie par l'électron (de charge $|q| = e$) vaut :
$$F = e\,E = 1{,}6\times 10^{-19}\times 2\times 10^{4} = 3{,}2\times 10^{-15}\,\text{N}.$$
L'électron étant négatif, cette force est de sens opposé à $\vec{E}$ (donc dirigée vers la plaque positive).
\end{enumerate}

### Exercice 6 : Point de champ nul
\begin{enonce}
Deux charges positives $q_A = +9\times 10^{-6}\,\text{C}$ et $q_B = +1\times 10^{-6}\,\text{C}$ sont placées respectivement en $A$ et $B$, distants de $AB = 0{,}4\,\text{m}$. On cherche le point $P$ du segment $[AB]$ où le champ électrostatique total est nul.
\begin{enumerate}
    \item Expliquer pourquoi ce point existe et se trouve entre $A$ et $B$.
    \item Déterminer la position de $P$, repérée par sa distance $x = AP$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Entre les deux charges positives, $\vec{E}_A$ (créé par $q_A$) pointe vers $B$ et $\vec{E}_B$ (créé par $q_B$) pointe vers $A$ : ils sont de **sens opposés**. Près de $A$, $E_A$ domine ; près de $B$, $E_B$ domine. Il existe donc un point intermédiaire où les deux valeurs s'égalent et où le champ total s'annule.
    \item On écrit l'égalité des valeurs avec $AP = x$ et $BP = 0{,}4 - x$ :
$$k\,\frac{q_A}{x^{2}} = k\,\frac{q_B}{(0{,}4 - x)^{2}}\quad\Longrightarrow\quad \frac{0{,}4 - x}{x} = \sqrt{\frac{q_B}{q_A}} = \sqrt{\frac{1}{9}} = \frac{1}{3}.$$
D'où $3(0{,}4 - x) = x$, soit $1{,}2 = 4x$ et
$$x = 0{,}3\,\text{m}.$$
Le point $P$ est à $0{,}3\,\text{m}$ de $A$ (et $0{,}1\,\text{m}$ de $B$). Vérification : $E_A = 9\times 10^{9}\times 9\times 10^{-6}/(0{,}3)^2 = 9\times 10^{5}$ et $E_B = 9\times 10^{9}\times 1\times 10^{-6}/(0{,}1)^2 = 9\times 10^{5}\ \text{N}\cdot\text{C}^{-1}$ : les deux champs se compensent bien.
\end{enumerate}
