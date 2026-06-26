### Exercice 1 : Champ créé par un fil rectiligne
\begin{enonce}
Un long fil rectiligne vertical est parcouru par un courant continu d'intensité $I = 10\ \mathrm{A}$. On donne $\mu_0 = 4\pi \times 10^{-7}\ \mathrm{T \cdot m \cdot A^{-1}}$.
\begin{enumerate}
    \item Rappeler l'expression de l'intensité $B$ du champ magnétique créé par un fil rectiligne à la distance $d$. Préciser les unités.
    \item Calculer $B$ en un point $M$ situé à $d = 5\ \mathrm{cm}$ du fil.
    \item À quelle distance $d'$ du fil l'intensité du champ vaut-elle $2 \times 10^{-5}\ \mathrm{T}$ ?
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Le champ créé par un fil rectiligne à la distance $d$ a pour intensité :
$$B = \dfrac{\mu_0\, I}{2\pi\, d}$$
avec $B$ en tesla ($\mathrm{T}$), $I$ en ampère ($\mathrm{A}$) et $d$ en mètre ($\mathrm{m}$).
    \item On applique avec $d = 5\ \mathrm{cm} = 0{,}05\ \mathrm{m}$ :
$$B = \dfrac{4\pi \times 10^{-7} \times 10}{2\pi \times 0{,}05} = \dfrac{40\pi \times 10^{-7}}{0{,}1\,\pi} = 4 \times 10^{-5}\ \mathrm{T}$$
soit $B = 40\ \mu\mathrm{T}$.
    \item Comme $B$ est inversement proportionnel à $d$, passer de $4 \times 10^{-5}\ \mathrm{T}$ à $2 \times 10^{-5}\ \mathrm{T}$ (deux fois plus faible) revient à doubler la distance :
$$d' = \dfrac{\mu_0 I}{2\pi B} = \dfrac{4\pi \times 10^{-7} \times 10}{2\pi \times 2 \times 10^{-5}} = 0{,}10\ \mathrm{m} = 10\ \mathrm{cm}.$$
\end{enumerate}

### Exercice 2 : Champ à l'intérieur d'un solénoïde
\begin{enonce}


Un solénoïde de longueur $L = 50\ \mathrm{cm}$ comporte $N = 1000$ spires jointives. Il est parcouru par un courant d'intensité $I = 2\ \mathrm{A}$. On donne $\mu_0 = 4\pi \times 10^{-7}\ \mathrm{T \cdot m \cdot A^{-1}}$.
\begin{enumerate}
    \item Calculer le nombre de spires par unité de longueur $n$.
    \item Donner l'expression de l'intensité du champ à l'intérieur du solénoïde, puis calculer $B$.
    \item Comment doit-on modifier l'intensité $I$ pour doubler la valeur de $B$ ?
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Le nombre de spires par mètre vaut :
$$n = \dfrac{N}{L} = \dfrac{1000}{0{,}50} = 2000\ \text{spires/m}.$$
    \item À l'intérieur d'un solénoïde, le champ est uniforme et d'intensité $B = \mu_0\, n\, I$ :
$$B = 4\pi \times 10^{-7} \times 2000 \times 2 = 1{,}6\,\pi \times 10^{-3} \approx 5{,}0 \times 10^{-3}\ \mathrm{T}.$$
soit $B \approx 5{,}0\ \mathrm{mT}$.
    \item Comme $B$ est proportionnel à $I$, pour doubler $B$ il suffit de doubler l'intensité, soit $I' = 4\ \mathrm{A}$.
\end{enumerate}

### Exercice 3 : Spire et bobine plate
\begin{enonce}
Une spire circulaire de rayon $R = 10\ \mathrm{cm}$ est parcourue par un courant $I = 5\ \mathrm{A}$. L'intensité du champ au centre $O$ de la spire est $B = \dfrac{\mu_0\, I}{2R}$.
\begin{enumerate}
    \item Calculer l'intensité $B$ du champ au centre de la spire.
    \item On remplace la spire par une bobine plate de $N = 20$ spires de même rayon. Quelle est alors la nouvelle intensité du champ au centre ?
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Avec $R = 0{,}10\ \mathrm{m}$ :
$$B = \dfrac{\mu_0\, I}{2R} = \dfrac{4\pi \times 10^{-7} \times 5}{2 \times 0{,}10} = \dfrac{20\pi \times 10^{-7}}{0{,}20} = \pi \times 10^{-5} \approx 3{,}1 \times 10^{-5}\ \mathrm{T}.$$
    \item Pour une bobine plate de $N$ spires, le champ au centre vaut $B' = \dfrac{\mu_0\, N\, I}{2R} = N \times B$ :
$$B' = 20 \times 3{,}14 \times 10^{-5} \approx 6{,}3 \times 10^{-4}\ \mathrm{T}.$$
\end{enumerate}

### Exercice 4 : Détermination d'une intensité
\begin{enonce}
On mesure, à l'aide d'une sonde, l'intensité du champ magnétique créé par un fil rectiligne. En un point situé à $d = 4\ \mathrm{cm}$ du fil, on trouve $B = 1{,}0 \times 10^{-5}\ \mathrm{T}$.
\begin{enumerate}
    \item Déterminer l'intensité $I$ du courant qui circule dans le fil.
    \item Le champ magnétique terrestre a une intensité de l'ordre de $2 \times 10^{-5}\ \mathrm{T}$. Comparer et conclure sur la précaution à prendre lors de la mesure.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item À partir de $B = \dfrac{\mu_0 I}{2\pi d}$, on isole $I$ :
$$I = \dfrac{B \times 2\pi d}{\mu_0} = \dfrac{1{,}0 \times 10^{-5} \times 2\pi \times 0{,}04}{4\pi \times 10^{-7}} = \dfrac{0{,}08\,\pi \times 10^{-5}}{4\pi \times 10^{-7}} = 2{,}0\ \mathrm{A}.$$
    \item Le champ du fil ($1 \times 10^{-5}\ \mathrm{T}$) est du même ordre de grandeur que le champ terrestre ($2 \times 10^{-5}\ \mathrm{T}$). Pour une mesure correcte, il faut tenir compte de la composante terrestre (ou orienter le dispositif de façon à s'en affranchir), sinon l'erreur est importante.
\end{enumerate}

### Exercice 5 : Superposition de deux fils parallèles
\begin{enonce}
Deux longs fils rectilignes parallèles, distants de $20\ \mathrm{cm}$, sont parcourus par un même courant d'intensité $I = 8\ \mathrm{A}$. On étudie le champ au point $M$ situé au milieu du segment qui joint les deux fils (donc à $d = 10\ \mathrm{cm}$ de chacun).
\begin{enumerate}
    \item Calculer l'intensité $B_1$ du champ créé en $M$ par chacun des fils.
    \item Les deux courants circulent dans le \textbf{même} sens. Que vaut le champ résultant en $M$ ? Justifier.
    \item Les deux courants circulent en sens \textbf{contraires}. Que vaut alors le champ résultant en $M$ ?
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Chaque fil crée en $M$ un champ d'intensité :
$$B_1 = \dfrac{\mu_0 I}{2\pi d} = \dfrac{4\pi \times 10^{-7} \times 8}{2\pi \times 0{,}10} = \dfrac{32\pi \times 10^{-7}}{0{,}20\,\pi} = 1{,}6 \times 10^{-5}\ \mathrm{T}.$$
    \item Au milieu, lorsque les courants sont de \textbf{même sens}, les deux champs $\vec{B_1}$ et $\vec{B_2}$ sont de sens \textbf{opposés} et de même intensité : ils se compensent. Le champ résultant est nul :
$$B = B_1 - B_1 = 0.$$
    \item Lorsque les courants sont de \textbf{sens contraires}, les deux champs sont de \textbf{même sens} en $M$ : ils s'ajoutent.
$$B = B_1 + B_1 = 2 \times 1{,}6 \times 10^{-5} = 3{,}2 \times 10^{-5}\ \mathrm{T}.$$
\end{enumerate}

### Exercice 6 : Deux fils perpendiculaires
\begin{enonce}


Deux longs fils rectilignes sont disposés perpendiculairement (sans se toucher). Au point $M$, le fil 1 ($I_1 = 6\ \mathrm{A}$, distance $d_1 = 4\ \mathrm{cm}$) crée un champ $\vec{B_1}$ et le fil 2 ($I_2 = 8\ \mathrm{A}$, distance $d_2 = 4\ \mathrm{cm}$) crée un champ $\vec{B_2}$. Ces deux champs sont perpendiculaires en $M$.
\begin{enumerate}
    \item Calculer les intensités $B_1$ et $B_2$.
    \item Les vecteurs $\vec{B_1}$ et $\vec{B_2}$ étant perpendiculaires, déterminer l'intensité $B$ du champ résultant en $M$.
    \item Déterminer l'angle $\alpha$ que fait $\vec{B}$ avec la direction de $\vec{B_2}$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item On applique $B = \dfrac{\mu_0 I}{2\pi d}$ avec $d_1 = d_2 = 0{,}04\ \mathrm{m}$ :
$$B_1 = \dfrac{4\pi \times 10^{-7} \times 6}{2\pi \times 0{,}04} = 3{,}0 \times 10^{-5}\ \mathrm{T}, \qquad B_2 = \dfrac{4\pi \times 10^{-7} \times 8}{2\pi \times 0{,}04} = 4{,}0 \times 10^{-5}\ \mathrm{T}.$$
    \item Les champs étant perpendiculaires, l'intensité résultante se calcule par le théorème de Pythagore :
$$B = \sqrt{B_1^{\,2} + B_2^{\,2}} = \sqrt{(3{,}0)^2 + (4{,}0)^2} \times 10^{-5} = 5{,}0 \times 10^{-5}\ \mathrm{T}.$$
    \item L'angle avec $\vec{B_2}$ vérifie :
$$\tan \alpha = \dfrac{B_1}{B_2} = \dfrac{3{,}0}{4{,}0} = 0{,}75 \quad\Rightarrow\quad \alpha \approx 37^\circ.$$
\end{enumerate}
