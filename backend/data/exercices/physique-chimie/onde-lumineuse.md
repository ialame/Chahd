### Exercice 1 : Écart angulaire de diffraction
\begin{enonce}
Un faisceau laser de longueur d'onde $\lambda = 633\ \text{nm}$ éclaire une fente fine de largeur $a = 0{,}10\ \text{mm}$. On observe sur un écran une figure de diffraction.

Calculer l'écart angulaire $\theta$ entre le milieu de la tache centrale et la première extinction.
\end{enonce}

\textbf{Solution :}
L'écart angulaire est donné par :
\[
\theta = \frac{\lambda}{a} = \frac{633\times 10^{-9}}{0{,}10\times 10^{-3}} = 6{,}33\times 10^{-3}\ \text{rad}
\]
L'angle étant très petit, on l'exprime en radians. La fente étant beaucoup plus large que la longueur d'onde, la diffraction reste peu marquée.

### Exercice 2 : Largeur de la tache centrale
\begin{enonce}
La fente précédente ($a = 0{,}10\ \text{mm}$) est éclairée par le même laser ($\lambda = 633\ \text{nm}$). L'écran est placé à la distance $D = 2{,}0\ \text{m}$ de la fente.

Déterminer la largeur $L$ de la tache centrale de diffraction.
\end{enonce}

\textbf{Solution :}
La largeur de la tache centrale, mesurée entre les deux premières extinctions, vaut :
\[
L = \frac{2\lambda D}{a} = \frac{2\times 633\times 10^{-9}\times 2{,}0}{0{,}10\times 10^{-3}} = 2{,}53\times 10^{-2}\ \text{m} \approx 2{,}5\ \text{cm}
\]
On retrouve $L = 2\theta D$ avec $\theta = \dfrac{\lambda}{a}$, puisque pour de petits angles $\tan\theta \approx \theta$.

### Exercice 3 : Influence de la largeur de la fente
\begin{enonce}
On éclaire successivement deux fentes de largeurs $a_1 = 0{,}20\ \text{mm}$ et $a_2 = 0{,}050\ \text{mm}$ avec le même laser et le même écran.

Comment évolue la largeur de la tache centrale lorsqu'on passe de $a_1$ à $a_2$ ? Justifier.
\end{enonce}

\textbf{Solution :}
La largeur de la tache centrale vaut $L = \dfrac{2\lambda D}{a}$ : elle est inversement proportionnelle à la largeur $a$ de la fente. En passant de $a_1$ à $a_2$ :
\[
\frac{L_2}{L_1} = \frac{a_1}{a_2} = \frac{0{,}20}{0{,}050} = 4
\]
La tache centrale est donc \textbf{quatre fois plus large} avec la fente $a_2$. Plus la fente est étroite, plus la diffraction est marquée.

### Exercice 4 : Mesure d'une longueur d'onde par diffraction
\begin{enonce}
Une fente de largeur $a = 80\ \mu\text{m}$ est éclairée par une lumière monochromatique. Sur un écran situé à $D = 1{,}5\ \text{m}$, on mesure une tache centrale de largeur $L = 1{,}9\ \text{cm}$.

Déterminer la longueur d'onde $\lambda$ de la lumière utilisée.
\end{enonce}

\textbf{Solution :}
De la relation $L = \dfrac{2\lambda D}{a}$ on tire :
\[
\lambda = \frac{L\,a}{2D} = \frac{1{,}9\times 10^{-2}\times 80\times 10^{-6}}{2\times 1{,}5}
\]
\[
\lambda = \frac{1{,}9\times 10^{-2}\times 80\times 10^{-6}}{3{,}0} = 5{,}1\times 10^{-7}\ \text{m} = 510\ \text{nm}
\]
Cette valeur appartient au domaine visible (lumière verte).

### Exercice 5 : Indice de réfraction et célérité dans un milieu
\begin{enonce}
La vitesse de la lumière dans le vide est $c = 3{,}00\times 10^{8}\ \text{m.s}^{-1}$. Dans un verre, la lumière se propage à la vitesse $v = 2{,}00\times 10^{8}\ \text{m.s}^{-1}$.

\begin{enumerate}
    \item Calculer l'indice de réfraction $n$ de ce verre.
    \item Le verre est-il un milieu dispersif ou non dispersif vis-à-vis de la vitesse ? Que peut-on dire de $n$ dans le vide ?
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item L'indice de réfraction est défini par :
    \[
    n = \frac{c}{v} = \frac{3{,}00\times 10^{8}}{2{,}00\times 10^{8}} = 1{,}50
    \]
    \item L'indice $n = 1{,}50 > 1$ : la lumière est ralentie dans le verre. Dans le vide, $v = c$ donc $n = 1$. Un milieu est dispersif si son indice dépend de la fréquence (donc de la couleur) de la lumière.
\end{enumerate}

### Exercice 6 : Longueur d'onde dans un milieu transparent
\begin{enonce}
Une radiation monochromatique a une longueur d'onde $\lambda_0 = 600\ \text{nm}$ dans le vide. Elle pénètre dans l'eau d'indice $n = 1{,}33$.

\begin{enumerate}
    \item La fréquence $f$ de la radiation change-t-elle en passant dans l'eau ? Justifier.
    \item Calculer la longueur d'onde $\lambda$ de cette radiation dans l'eau.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item La fréquence $f$ est imposée par la source et ne change pas lors du passage d'un milieu à un autre : c'est une grandeur caractéristique de la radiation. Seule la vitesse de propagation (et donc la longueur d'onde) est modifiée.
    \item La longueur d'onde dans le milieu vaut :
    \[
    \lambda = \frac{\lambda_0}{n} = \frac{600}{1{,}33} \approx 451\ \text{nm}
    \]
    Elle est plus petite que dans le vide, car la lumière y est ralentie tandis que $f$ reste constante.
\end{enumerate}

### Exercice 7 : Fréquence et longueur d'onde dans le vide
\begin{enonce}
Une lumière monochromatique rouge a une longueur d'onde dans le vide $\lambda_0 = 750\ \text{nm}$. On donne $c = 3{,}00\times 10^{8}\ \text{m.s}^{-1}$.

Calculer la fréquence $f$ de cette radiation.
\end{enonce}

\textbf{Solution :}
La relation entre célérité, longueur d'onde et fréquence dans le vide s'écrit $c = \lambda_0\, f$, d'où :
\[
f = \frac{c}{\lambda_0} = \frac{3{,}00\times 10^{8}}{750\times 10^{-9}} = 4{,}0\times 10^{14}\ \text{Hz}
\]
Cette fréquence est invariante : elle conserve la même valeur dans tout milieu traversé.

### Exercice 8 : Lumière monochromatique et polychromatique
\begin{enonce}
On dispose d'un faisceau de lumière blanche que l'on fait traverser un prisme en verre.

\begin{enumerate}
    \item Pourquoi observe-t-on à la sortie du prisme un étalement des couleurs (un spectre) ?
    \item Qu'observerait-on si l'on remplaçait la lumière blanche par un faisceau laser monochromatique ?
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item La lumière blanche est \textbf{polychromatique} : elle est composée de radiations de différentes longueurs d'onde. L'indice $n$ du verre dépend de la longueur d'onde (le verre est un milieu \textbf{dispersif}), donc chaque radiation est déviée d'un angle différent. Le rouge, de plus grande longueur d'onde, est le moins dévié ; le violet est le plus dévié. On obtient ainsi un spectre continu.
    \item Une lumière \textbf{monochromatique} ne contient qu'une seule longueur d'onde : elle est déviée d'un seul angle et ne se décompose pas. On observe à la sortie un faisceau unique de la même couleur, simplement dévié, sans étalement.
\end{enumerate}
