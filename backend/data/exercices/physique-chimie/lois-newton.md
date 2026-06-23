### Exercice 1 : Énoncé des trois lois de Newton
\begin{enonce}
Rappeler l'énoncé des trois lois de Newton et donner l'expression vectorielle de la deuxième loi pour un solide de masse $m$ en translation, dont le centre d'inertie est noté $G$.
\end{enonce}

\textbf{Solution :}
\begin{itemize}
    \item \textbf{Première loi (principe d'inertie) :} dans un référentiel galiléen, si la somme des forces extérieures appliquées à un solide est nulle ($\sum \vec{F}_{ext} = \vec{0}$), alors son centre d'inertie $G$ est soit au repos, soit animé d'un mouvement rectiligne uniforme. La réciproque est vraie.
    \item \textbf{Deuxième loi (principe fondamental de la dynamique) :} dans un référentiel galiléen, la somme des forces extérieures appliquées à un solide est égale au produit de sa masse par le vecteur accélération de son centre d'inertie :
    \[
    \sum \vec{F}_{ext} = m\,\vec{a}_G
    \]
    \item \textbf{Troisième loi (actions réciproques) :} lorsqu'un corps $A$ exerce sur un corps $B$ une force $\vec{F}_{A/B}$, le corps $B$ exerce simultanément sur $A$ une force $\vec{F}_{B/A}$ telle que $\vec{F}_{A/B} = -\vec{F}_{B/A}$. Ces deux forces ont même droite d'action, même intensité et des sens opposés.
\end{itemize}

### Exercice 2 : Principe d'inertie et équilibre d'un solide
\begin{enonce}
Un solide de masse $m = 2{,}0\ \text{kg}$ est suspendu, immobile, à un fil vertical inextensible. On prend $g = 9{,}8\ \text{m.s}^{-2}$.

Faire le bilan des forces puis déterminer la valeur de la tension $T$ du fil.
\end{enonce}

\textbf{Solution :}
Le solide est immobile dans le référentiel terrestre supposé galiléen. Il est soumis à deux forces :
\begin{itemize}
    \item son poids $\vec{P}$, vertical vers le bas, de valeur $P = m\,g$ ;
    \item la tension $\vec{T}$ du fil, verticale vers le haut.
\end{itemize}
D'après le principe d'inertie, le solide étant en équilibre :
\[
\sum \vec{F}_{ext} = \vec{0} \implies \vec{P} + \vec{T} = \vec{0}
\]
En projetant sur un axe vertical orienté vers le haut : $T - P = 0$, d'où :
\[
T = P = m\,g = 2{,}0 \times 9{,}8 = 19{,}6\ \text{N} \approx 20\ \text{N}
\]

### Exercice 3 : Accélération d'un solide tiré sur un plan horizontal
\begin{enonce}
Un solide de masse $m = 5{,}0\ \text{kg}$ est posé sur un plan horizontal. Il est tiré par une force horizontale constante $\vec{F}$ de valeur $F = 30\ \text{N}$. Les frottements sont équivalents à une force unique $\vec{f}$, horizontale, opposée au mouvement, de valeur $f = 10\ \text{N}$.

Déterminer la valeur de l'accélération $a$ du centre d'inertie du solide.
\end{enonce}

\textbf{Solution :}
On travaille dans le référentiel terrestre galiléen. Le bilan des forces extérieures donne : le poids $\vec{P}$, la réaction normale $\vec{R}_N$ du support, la force motrice $\vec{F}$ et la force de frottement $\vec{f}$.

On choisit un repère $(O, \vec{i}, \vec{j})$ avec $\vec{i}$ horizontal dans le sens du mouvement et $\vec{j}$ vertical vers le haut. La deuxième loi de Newton s'écrit :
\[
\vec{P} + \vec{R}_N + \vec{F} + \vec{f} = m\,\vec{a}_G
\]
Projection sur $\vec{i}$ (mouvement horizontal, $\vec{a}_G$ porté par $\vec{i}$) :
\[
F - f = m\,a
\]
d'où :
\[
a = \frac{F - f}{m} = \frac{30 - 10}{5{,}0} = 4{,}0\ \text{m.s}^{-2}
\]

### Exercice 4 : Réaction du support sur un plan horizontal
\begin{enonce}
On reprend le solide de l'exercice précédent ($m = 5{,}0\ \text{kg}$, $F = 30\ \text{N}$ horizontale, $f = 10\ \text{N}$). On prend $g = 9{,}8\ \text{m.s}^{-2}$.

Déterminer la valeur $R_N$ de la réaction normale du plan sur le solide.
\end{enonce}

\textbf{Solution :}
Le mouvement étant horizontal, l'accélération $\vec{a}_G$ n'a pas de composante verticale. La projection de la deuxième loi de Newton sur l'axe vertical $\vec{j}$ (orienté vers le haut) donne :
\[
R_N - P = 0
\]
car le poids et la réaction normale sont les seules forces ayant une composante verticale ($\vec{F}$ et $\vec{f}$ sont horizontales). On en déduit :
\[
R_N = P = m\,g = 5{,}0 \times 9{,}8 = 49\ \text{N}
\]

### Exercice 5 : Solide en descente sur un plan incliné sans frottement
\begin{enonce}
Un solide de masse $m = 2{,}0\ \text{kg}$ est lâché sans vitesse initiale sur un plan incliné d'un angle $\alpha = 30^\circ$ par rapport à l'horizontale. Les frottements sont négligés. On prend $g = 10\ \text{m.s}^{-2}$.

Déterminer la valeur de l'accélération $a$ du centre d'inertie lors de la descente.
\end{enonce}

\textbf{Solution :}
Dans le référentiel terrestre galiléen, le solide est soumis à son poids $\vec{P}$ et à la réaction normale $\vec{R}_N$ du plan (frottements négligés).

On choisit un repère $(O, \vec{i}, \vec{j})$ avec $\vec{i}$ parallèle au plan, orienté dans le sens de la descente, et $\vec{j}$ perpendiculaire au plan. La deuxième loi de Newton s'écrit :
\[
\vec{P} + \vec{R}_N = m\,\vec{a}_G
\]
Projection sur $\vec{i}$ : le poids a pour composante $P\sin\alpha = m\,g\sin\alpha$ ($\vec{R}_N$ est perpendiculaire à $\vec{i}$) :
\[
m\,g\sin\alpha = m\,a \implies a = g\sin\alpha
\]
Application numérique :
\[
a = 10 \times \sin 30^\circ = 10 \times 0{,}50 = 5{,}0\ \text{m.s}^{-2}
\]

### Exercice 6 : Plan incliné avec frottement
\begin{enonce}
Un solide de masse $m = 3{,}0\ \text{kg}$ glisse en descendant un plan incliné d'angle $\alpha = 25^\circ$. Les frottements sont modélisés par une force $\vec{f}$ parallèle au plan, opposée au mouvement, de valeur constante $f = 6{,}0\ \text{N}$. On prend $g = 9{,}8\ \text{m.s}^{-2}$.

Déterminer la valeur de l'accélération $a$ du centre d'inertie.
\end{enonce}

\textbf{Solution :}
Le solide est soumis à son poids $\vec{P}$, à la réaction normale $\vec{R}_N$ et à la force de frottement $\vec{f}$ (dirigée vers le haut du plan, puisque le mouvement est descendant).

Repère $(O, \vec{i}, \vec{j})$ : $\vec{i}$ parallèle au plan orienté vers le bas (sens de la descente), $\vec{j}$ perpendiculaire au plan. La deuxième loi de Newton donne :
\[
\vec{P} + \vec{R}_N + \vec{f} = m\,\vec{a}_G
\]
Projection sur $\vec{i}$ :
\[
m\,g\sin\alpha - f = m\,a
\]
d'où :
\[
a = \frac{m\,g\sin\alpha - f}{m} = \frac{3{,}0 \times 9{,}8 \times \sin 25^\circ - 6{,}0}{3{,}0}
\]
Avec $\sin 25^\circ \approx 0{,}423$ :
\[
a = \frac{3{,}0 \times 9{,}8 \times 0{,}423 - 6{,}0}{3{,}0} = \frac{12{,}4 - 6{,}0}{3{,}0} \approx 2{,}1\ \text{m.s}^{-2}
\]

### Exercice 7 : Mouvement rectiligne uniformément varié
\begin{enonce}
Un mobile, partant du repos, se déplace en ligne droite avec une accélération constante $a = 2{,}5\ \text{m.s}^{-2}$.
\begin{enumerate}
    \item Établir les équations horaires de la vitesse $v(t)$ et de la position $x(t)$ (origine des positions et des temps confondues avec le départ).
    \item Calculer la vitesse et la distance parcourue à l'instant $t = 4{,}0\ \text{s}$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Le mouvement étant rectiligne uniformément varié, l'accélération est constante : $a_x = a$. Par intégrations successives, avec $v(0) = 0$ et $x(0) = 0$ :
    \[
    v(t) = a\,t \qquad ; \qquad x(t) = \frac{1}{2}\,a\,t^2
    \]
    \item À $t = 4{,}0\ \text{s}$ :
    \[
    v = a\,t = 2{,}5 \times 4{,}0 = 10\ \text{m.s}^{-1}
    \]
    \[
    x = \frac{1}{2}\,a\,t^2 = \frac{1}{2} \times 2{,}5 \times (4{,}0)^2 = 20\ \text{m}
    \]
\end{enumerate}

### Exercice 8 : Troisième loi de Newton
\begin{enonce}
Un livre de masse $m = 0{,}80\ \text{kg}$ est posé, immobile, sur une table horizontale. On prend $g = 9{,}8\ \text{m.s}^{-2}$.
\begin{enumerate}
    \item Déterminer la valeur de la réaction $\vec{R}$ exercée par la table sur le livre.
    \item En utilisant la troisième loi de Newton, déterminer la valeur de la force exercée par le livre sur la table.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Le livre est en équilibre, soumis à son poids $\vec{P}$ et à la réaction $\vec{R}$ de la table (verticale, car pas de frottement horizontal). Le principe d'inertie impose $\vec{P} + \vec{R} = \vec{0}$, soit en projection sur la verticale ascendante :
    \[
    R = P = m\,g = 0{,}80 \times 9{,}8 = 7{,}8\ \text{N}
    \]
    \item D'après la troisième loi de Newton, le livre exerce sur la table une force $\vec{R}\,'$ telle que $\vec{R}\,' = -\vec{R}$. Elle a donc la même valeur, soit $R' = 7{,}8\ \text{N}$, mais elle est dirigée verticalement vers le bas (sens opposé à $\vec{R}$).
\end{enumerate}
