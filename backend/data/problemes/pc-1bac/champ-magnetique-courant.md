### Problème 1 : Étude complète d'un solénoïde
\begin{enonce}


Un solénoïde de longueur $L = 40\ \mathrm{cm}$ comporte $N = 800$ spires jointives. On donne $\mu_0 = 4\pi \times 10^{-7}\ \mathrm{T \cdot m \cdot A^{-1}}$.
\begin{enumerate}
    \item Calculer le nombre de spires par mètre $n$.
    \item Le solénoïde est parcouru par un courant $I = 1{,}5\ \mathrm{A}$. Calculer l'intensité $B$ du champ magnétique à l'intérieur.
    \item Quelle intensité de courant faut-il imposer pour obtenir un champ $B = 5{,}0\ \mathrm{mT}$ ?
    \item Le solénoïde est horizontal et le courant, vu de l'observateur regardant la face de droite, circule dans le sens des aiguilles d'une montre. Indiquer, en justifiant par une règle d'orientation, le sens du vecteur $\vec{B}$ à l'intérieur et la nature (Nord ou Sud) de la face de droite.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Nombre de spires par mètre :
$$n = \dfrac{N}{L} = \dfrac{800}{0{,}40} = 2000\ \text{spires/m}.$$
    \item Le champ à l'intérieur vaut $B = \mu_0\, n\, I$ :
$$B = 4\pi \times 10^{-7} \times 2000 \times 1{,}5 \approx 3{,}8 \times 10^{-3}\ \mathrm{T} = 3{,}8\ \mathrm{mT}.$$
    \item On isole $I$ dans $B = \mu_0 n I$ :
$$I = \dfrac{B}{\mu_0\, n} = \dfrac{5{,}0 \times 10^{-3}}{4\pi \times 10^{-7} \times 2000} = \dfrac{5{,}0 \times 10^{-3}}{2{,}51 \times 10^{-3}} \approx 2{,}0\ \mathrm{A}.$$
    \item Vue de droite, le courant tourne dans le sens horaire : par la règle de l'observateur d'Ampère (ou la règle de la main droite, doigts dans le sens du courant), les lignes de champ sortent par cette face. Le vecteur $\vec{B}$ intérieur est donc dirigé vers la droite, et la face de droite, par laquelle les lignes de champ \textbf{sortent}, se comporte comme un pôle \textbf{Nord}.
\end{enumerate}

### Problème 2 : Superposition — deux fils parallèles d'intensités différentes
\begin{enonce}
Deux longs fils rectilignes parallèles $A$ et $B$ sont distants de $D = 8\ \mathrm{cm}$. Le fil $A$ est parcouru par $I_A = 10\ \mathrm{A}$, le fil $B$ par $I_B = 15\ \mathrm{A}$. On donne $\mu_0 = 4\pi \times 10^{-7}\ \mathrm{T \cdot m \cdot A^{-1}}$.
\begin{enumerate}
    \item Calculer l'intensité du champ créé par chaque fil au point $M$, milieu du segment $[AB]$ (à $4\ \mathrm{cm}$ de chacun).
    \item Les deux courants sont de \textbf{même sens}. Calculer l'intensité du champ résultant en $M$.
    \item Les deux courants sont de \textbf{sens contraires}. Calculer l'intensité du champ résultant en $M$.
    \item Les courants étant de même sens, déterminer la position du point $P$ du segment $[AB]$ où le champ magnétique est \textbf{nul}.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item À $d = 4\ \mathrm{cm} = 0{,}04\ \mathrm{m}$ :
$$B_A = \dfrac{\mu_0 I_A}{2\pi d} = \dfrac{4\pi \times 10^{-7} \times 10}{2\pi \times 0{,}04} = 5{,}0 \times 10^{-5}\ \mathrm{T},$$
$$B_B = \dfrac{\mu_0 I_B}{2\pi d} = \dfrac{4\pi \times 10^{-7} \times 15}{2\pi \times 0{,}04} = 7{,}5 \times 10^{-5}\ \mathrm{T}.$$
    \item Pour des courants de \textbf{même sens}, les deux champs sont de sens opposés en $M$ : ils se retranchent.
$$B = B_B - B_A = 7{,}5 \times 10^{-5} - 5{,}0 \times 10^{-5} = 2{,}5 \times 10^{-5}\ \mathrm{T}.$$
    \item Pour des courants de \textbf{sens contraires}, les deux champs sont de même sens en $M$ : ils s'ajoutent.
$$B = B_A + B_B = 5{,}0 \times 10^{-5} + 7{,}5 \times 10^{-5} = 1{,}25 \times 10^{-4}\ \mathrm{T}.$$
    \item Avec des courants de même sens, le champ s'annule entre les fils là où les deux intensités sont égales. En notant $x = AP$ et $D - x = PB$ :
$$\dfrac{\mu_0 I_A}{2\pi x} = \dfrac{\mu_0 I_B}{2\pi (D - x)} \;\Longrightarrow\; \dfrac{I_A}{x} = \dfrac{I_B}{D - x}.$$
D'où $I_A (D - x) = I_B\, x$, soit $10(8 - x) = 15\,x$, donc $80 = 25\,x$ et $x = 3{,}2\ \mathrm{cm}$. Le champ est nul à $3{,}2\ \mathrm{cm}$ du fil $A$ (et donc à $4{,}8\ \mathrm{cm}$ du fil $B$), plus proche du fil de plus faible intensité.
\end{enumerate}

### Problème 3 : Trois façons de créer un champ de $1\ \mathrm{mT}$
\begin{enonce}
On souhaite produire un champ magnétique d'intensité $B = 1{,}0 \times 10^{-3}\ \mathrm{T}$ en utilisant un courant d'intensité $I = 2{,}0\ \mathrm{A}$. On donne $\mu_0 = 4\pi \times 10^{-7}\ \mathrm{T \cdot m \cdot A^{-1}}$.
\begin{enumerate}
    \item \textbf{Avec un fil rectiligne.} À quelle distance $d$ du fil obtient-on cette valeur de $B$ ? Commenter le résultat.
    \item \textbf{Avec une bobine plate} de rayon $R = 5{,}0\ \mathrm{cm}$ ($B = \dfrac{\mu_0 N I}{2R}$). Combien de spires $N$ faut-il ?
    \item \textbf{Avec un solénoïde} de longueur $L = 20\ \mathrm{cm}$. Calculer le nombre de spires par mètre $n$, puis le nombre total de spires $N$.
    \item Comparer les trois solutions et indiquer laquelle est la plus adaptée pour obtenir un champ uniforme.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Pour un fil, $B = \dfrac{\mu_0 I}{2\pi d}$, d'où :
$$d = \dfrac{\mu_0 I}{2\pi B} = \dfrac{4\pi \times 10^{-7} \times 2{,}0}{2\pi \times 1{,}0 \times 10^{-3}} = 4{,}0 \times 10^{-4}\ \mathrm{m} = 0{,}40\ \mathrm{mm}.$$
Il faudrait se placer à $0{,}40\ \mathrm{mm}$ du fil : c'est pratiquement impossible et le champ y est très peu étendu. Un simple fil est donc inadapté.
    \item Pour la bobine plate, on isole $N$ :
$$N = \dfrac{2R\,B}{\mu_0 I} = \dfrac{2 \times 0{,}050 \times 1{,}0 \times 10^{-3}}{4\pi \times 10^{-7} \times 2{,}0} = \dfrac{1{,}0 \times 10^{-4}}{2{,}51 \times 10^{-6}} \approx 40\ \text{spires}.$$
    \item Pour le solénoïde, $B = \mu_0 n I$ donne :
$$n = \dfrac{B}{\mu_0 I} = \dfrac{1{,}0 \times 10^{-3}}{4\pi \times 10^{-7} \times 2{,}0} = \dfrac{1{,}0 \times 10^{-3}}{2{,}51 \times 10^{-6}} \approx 398\ \text{spires/m}.$$
Le nombre total de spires est $N = n \times L = 398 \times 0{,}20 \approx 80\ \text{spires}$.
    \item Le fil seul exige une distance irréaliste et ne donne pas un champ utilisable. La bobine plate ($\approx 40$ spires) crée un champ intense au centre mais peu uniforme. Le solénoïde ($\approx 80$ spires) produit un champ \textbf{uniforme} dans tout son volume intérieur : c'est la solution la mieux adaptée pour disposer d'un champ magnétique constant.
\end{enumerate}
