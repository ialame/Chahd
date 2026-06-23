### Problème 1 : Étude de la diffraction par une fente
\begin{enonce}
On réalise une expérience de diffraction à l'aide d'un laser hélium-néon émettant une lumière monochromatique de longueur d'onde $\lambda = 633\ \text{nm}$ dans le vide. Le faisceau éclaire une fente verticale de largeur $a$ réglable. La figure de diffraction est observée sur un écran placé à la distance $D = 3{,}0\ \text{m}$ de la fente. On donne $c = 3{,}00\times 10^{8}\ \text{m.s}^{-1}$.

\begin{enumerate}
    \item La lumière du laser est-elle monochromatique ou polychromatique ? Calculer la fréquence $f$ de cette radiation.
    \item Décrire la figure observée sur l'écran. Quelle condition la largeur $a$ doit-elle vérifier pour que le phénomène de diffraction soit nettement observable ?
    \item Pour une largeur $a = 0{,}12\ \text{mm}$, calculer l'écart angulaire $\theta$ correspondant à la première extinction.
    \item En déduire la largeur $L$ de la tache centrale de diffraction.
    \item On réduit la largeur de la fente à $a' = 0{,}040\ \text{mm}$. Sans nouveau calcul détaillé, indiquer par quel facteur la largeur de la tache centrale est multipliée.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Le laser émet une seule longueur d'onde : sa lumière est \textbf{monochromatique}. La fréquence dans le vide est donnée par $c = \lambda f$, d'où :
    \[
    f = \frac{c}{\lambda} = \frac{3{,}00\times 10^{8}}{633\times 10^{-9}} = 4{,}74\times 10^{14}\ \text{Hz}
    \]
    \item Sur l'écran, on observe une série de taches lumineuses alignées perpendiculairement à la fente, séparées par des zones sombres (extinctions). La tache centrale est la plus large et la plus brillante. Le phénomène de diffraction est nettement observable lorsque la largeur de la fente est du même ordre de grandeur que la longueur d'onde, c'est-à-dire $a$ suffisamment petite (typiquement $a$ comparable à quelques dizaines de fois $\lambda$ au plus).
    \item L'écart angulaire de la première extinction vaut :
    \[
    \theta = \frac{\lambda}{a} = \frac{633\times 10^{-9}}{0{,}12\times 10^{-3}} = 5{,}3\times 10^{-3}\ \text{rad}
    \]
    \item Pour les petits angles, $\tan\theta \approx \theta$, donc la largeur de la tache centrale vaut :
    \[
    L = 2 D \theta = \frac{2\lambda D}{a} = \frac{2\times 633\times 10^{-9}\times 3{,}0}{0{,}12\times 10^{-3}}
    \]
    \[
    L = 3{,}2\times 10^{-2}\ \text{m} = 3{,}2\ \text{cm}
    \]
    \item La largeur $L$ est inversement proportionnelle à $a$. En passant de $a = 0{,}12\ \text{mm}$ à $a' = 0{,}040\ \text{mm}$ :
    \[
    \frac{L'}{L} = \frac{a}{a'} = \frac{0{,}12}{0{,}040} = 3
    \]
    La tache centrale devient donc \textbf{trois fois plus large}.
\end{enumerate}

### Problème 2 : Propagation de la lumière dans un milieu transparent
\begin{enonce}
Une fibre optique a un cœur en verre d'indice de réfraction $n = 1{,}48$. On y injecte une lumière monochromatique de longueur d'onde dans le vide $\lambda_0 = 1{,}3\ \mu\text{m}$. On donne $c = 3{,}00\times 10^{8}\ \text{m.s}^{-1}$.

\begin{enumerate}
    \item Calculer la vitesse $v$ de propagation de la lumière dans le cœur de la fibre.
    \item Cette radiation est-elle visible ? Justifier (le domaine visible s'étend d'environ $400\ \text{nm}$ à $800\ \text{nm}$).
    \item Calculer la fréquence $f$ de la radiation. Cette fréquence change-t-elle dans la fibre ?
    \item Déterminer la longueur d'onde $\lambda$ de la radiation dans le cœur de la fibre.
    \item Le signal lumineux parcourt une fibre de longueur $\ell = 50\ \text{km}$. Calculer la durée $\Delta t$ mise par la lumière pour traverser la fibre.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item L'indice de réfraction est défini par $n = \dfrac{c}{v}$, d'où :
    \[
    v = \frac{c}{n} = \frac{3{,}00\times 10^{8}}{1{,}48} = 2{,}03\times 10^{8}\ \text{m.s}^{-1}
    \]
    \item La longueur d'onde dans le vide vaut $\lambda_0 = 1{,}3\ \mu\text{m} = 1300\ \text{nm}$. Cette valeur est supérieure à $800\ \text{nm}$ : la radiation appartient au domaine \textbf{infrarouge}, elle n'est donc \textbf{pas visible}.
    \item La fréquence est donnée par $c = \lambda_0 f$ :
    \[
    f = \frac{c}{\lambda_0} = \frac{3{,}00\times 10^{8}}{1{,}3\times 10^{-6}} = 2{,}3\times 10^{14}\ \text{Hz}
    \]
    La fréquence est une caractéristique de la source : elle \textbf{ne change pas} lors de la propagation dans la fibre.
    \item La longueur d'onde dans le milieu d'indice $n$ vaut :
    \[
    \lambda = \frac{\lambda_0}{n} = \frac{1{,}3\times 10^{-6}}{1{,}48} = 8{,}8\times 10^{-7}\ \text{m} = 0{,}88\ \mu\text{m}
    \]
    On vérifie que $\lambda = \dfrac{v}{f} = \dfrac{2{,}03\times 10^{8}}{2{,}3\times 10^{14}} \approx 8{,}8\times 10^{-7}\ \text{m}$.
    \item La lumière se propage à la vitesse $v$ dans la fibre, donc :
    \[
    \Delta t = \frac{\ell}{v} = \frac{50\times 10^{3}}{2{,}03\times 10^{8}} = 2{,}5\times 10^{-4}\ \text{s} = 0{,}25\ \text{ms}
    \]
\end{enumerate}

### Problème 3 : Dispersion de la lumière blanche par un prisme
\begin{enonce}
On éclaire un prisme en verre avec un faisceau de lumière blanche. À la sortie du prisme, on observe sur un écran un étalement de couleurs allant du rouge au violet. L'indice de réfraction du verre dépend de la longueur d'onde de la radiation selon les valeurs suivantes :
\begin{itemize}
    \item radiation rouge ($\lambda_R = 700\ \text{nm}$ dans le vide) : $n_R = 1{,}512$ ;
    \item radiation violette ($\lambda_V = 400\ \text{nm}$ dans le vide) : $n_V = 1{,}532$.
\end{itemize}
On donne $c = 3{,}00\times 10^{8}\ \text{m.s}^{-1}$.

\begin{enumerate}
    \item Qu'appelle-t-on lumière blanche ? Comment qualifie-t-on le verre, qui décompose cette lumière ?
    \item Calculer la vitesse de propagation $v_R$ de la radiation rouge et $v_V$ de la radiation violette dans le verre. Laquelle est la plus rapide ?
    \item Calculer la longueur d'onde de chacune de ces deux radiations dans le verre.
    \item Comparer les fréquences des deux radiations dans le verre et dans le vide.
    \item La radiation la plus déviée par le prisme est celle dont l'indice est le plus grand. Quelle couleur, du rouge ou du violet, est la plus déviée ? Justifier.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item La lumière blanche est une lumière \textbf{polychromatique} : elle est constituée d'une infinité de radiations monochromatiques de longueurs d'onde différentes (tout le spectre visible). Le verre, dont l'indice dépend de la longueur d'onde, est un milieu \textbf{dispersif}.
    \item L'indice vérifie $n = \dfrac{c}{v}$, donc $v = \dfrac{c}{n}$ :
    \[
    v_R = \frac{c}{n_R} = \frac{3{,}00\times 10^{8}}{1{,}512} = 1{,}98\times 10^{8}\ \text{m.s}^{-1}
    \]
    \[
    v_V = \frac{c}{n_V} = \frac{3{,}00\times 10^{8}}{1{,}532} = 1{,}96\times 10^{8}\ \text{m.s}^{-1}
    \]
    La radiation \textbf{rouge} est la plus rapide, car son indice est le plus faible.
    \item La longueur d'onde dans le verre est $\lambda = \dfrac{\lambda_0}{n}$ :
    \[
    \lambda_R^{(verre)} = \frac{700}{1{,}512} \approx 463\ \text{nm}
    \]
    \[
    \lambda_V^{(verre)} = \frac{400}{1{,}532} \approx 261\ \text{nm}
    \]
    \item La fréquence est imposée par la source et ne dépend pas du milieu : elle est donc la même dans le verre et dans le vide. Pour le rouge :
    \[
    f_R = \frac{c}{\lambda_R} = \frac{3{,}00\times 10^{8}}{700\times 10^{-9}} = 4{,}3\times 10^{14}\ \text{Hz}
    \]
    Pour le violet :
    \[
    f_V = \frac{c}{\lambda_V} = \frac{3{,}00\times 10^{8}}{400\times 10^{-9}} = 7{,}5\times 10^{14}\ \text{Hz}
    \]
    La radiation violette a la fréquence la plus élevée.
    \item L'indice du violet ($n_V = 1{,}532$) est supérieur à celui du rouge ($n_R = 1{,}512$). La radiation \textbf{violette} est donc la \textbf{plus déviée} par le prisme, tandis que le rouge est le moins dévié. C'est ce qui explique l'ordre des couleurs observé dans le spectre.
\end{enumerate}
