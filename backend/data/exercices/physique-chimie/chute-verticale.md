### Exercice 1 : Bilan des forces sur une bille en chute
\begin{enonce}
Une bille sphérique de masse $m = 8{,}0\ \text{g}$ est lâchée sans vitesse initiale dans un récipient rempli d'huile. Au cours de sa chute, elle est soumise à son poids, à la poussée d'Archimède et à une force de frottement fluide $\vec{f}$ opposée au mouvement.

Faire le bilan des forces exercées sur la bille et donner l'expression vectorielle de chacune d'elles sur un axe vertical $(Oz)$ orienté vers le bas.
\end{enonce}

\textbf{Solution :}
Trois forces s'exercent sur la bille au cours de sa chute :
\begin{itemize}
    \item le poids $\vec{P}$, vertical et dirigé vers le bas : $\vec{P} = m\,\vec{g}$, soit $P_z = +mg$ ;
    \item la poussée d'Archimède $\vec{F_A}$, verticale et dirigée vers le haut, égale au poids du fluide déplacé : $F_A = \rho_f\,V\,g$, soit $(F_A)_z = -\rho_f\,V\,g$, où $\rho_f$ est la masse volumique du fluide et $V$ le volume de la bille ;
    \item la force de frottement fluide $\vec{f}$, opposée au vecteur vitesse donc dirigée vers le haut pendant la chute : $f_z = -k\,v$ (modèle linéaire) ou $f_z = -k\,v^2$ (modèle quadratique).
\end{itemize}
L'axe $(Oz)$ étant orienté vers le bas, le poids est compté positivement, tandis que la poussée d'Archimède et la force de frottement sont comptées négativement.

### Exercice 2 : Équation différentielle de la vitesse
\begin{enonce}
On considère la chute verticale d'un solide de masse $m$ dans un fluide. On néglige la poussée d'Archimède. La force de frottement fluide est modélisée par $f = k\,v$, où $k$ est une constante positive. L'axe $(Oz)$ est orienté vers le bas.

Établir l'équation différentielle vérifiée par la vitesse $v(t)$ du solide.
\end{enonce}

\textbf{Solution :}
On applique la deuxième loi de Newton au solide dans le référentiel terrestre supposé galiléen. En projection sur l'axe $(Oz)$ orienté vers le bas, le poids vaut $+mg$ et la force de frottement vaut $-k\,v$ :
\[
m\,\frac{\dd v}{\dd t} = mg - k\,v
\]
En divisant par $m$, on obtient l'équation différentielle sous forme canonique :
\[
\frac{\dd v}{\dd t} = g - \frac{k}{m}\,v
\]
C'est une équation différentielle linéaire du premier ordre à coefficients constants, avec second membre.

### Exercice 3 : Vitesse limite (sans poussée d'Archimède)
\begin{enonce}
Un solide de masse $m = 50\ \text{g}$ tombe dans un fluide. Sa vitesse vérifie l'équation différentielle :
\[
\frac{\dd v}{\dd t} = g - \frac{k}{m}\,v
\]
avec $k = 0{,}25\ \text{kg.s}^{-1}$ et $g = 9{,}8\ \text{m.s}^{-2}$.

Déterminer l'expression puis la valeur de la vitesse limite $v_\ell$.
\end{enonce}

\textbf{Solution :}
En régime permanent, la vitesse devient constante : elle ne varie plus, donc $\dfrac{\dd v}{\dd t} = 0$. En reportant dans l'équation différentielle :
\[
0 = g - \frac{k}{m}\,v_\ell \implies v_\ell = \frac{mg}{k}
\]
Application numérique :
\[
v_\ell = \frac{0{,}050 \times 9{,}8}{0{,}25} = 1{,}96\ \text{m.s}^{-1} \approx 2{,}0\ \text{m.s}^{-1}
\]

### Exercice 4 : Régime initial et temps caractéristique
\begin{enonce}
On reprend le solide de l'exercice précédent ($m = 50\ \text{g}$, $k = 0{,}25\ \text{kg.s}^{-1}$), lâché sans vitesse initiale.
\begin{enumerate}
    \item Déterminer l'accélération du solide à l'instant initial $t = 0$.
    \item Donner l'expression du temps caractéristique $\tau$ du mouvement et calculer sa valeur.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item À $t = 0$, la vitesse est nulle ($v = 0$). L'équation différentielle donne :
    \[
    \left(\frac{\dd v}{\dd t}\right)_{t=0} = g - \frac{k}{m}\times 0 = g = 9{,}8\ \text{m.s}^{-2}
    \]
    Au départ, le frottement est nul : le mouvement est quasiment celui d'une chute libre, l'accélération est maximale et vaut $g$.
    \item L'équation différentielle s'écrit $\dfrac{\dd v}{\dd t} + \dfrac{k}{m}\,v = g$. Par identification avec la forme canonique $\dfrac{\dd v}{\dd t} + \dfrac{v}{\tau} = g$, le temps caractéristique est :
    \[
    \tau = \frac{m}{k} = \frac{0{,}050}{0{,}25} = 0{,}20\ \text{s}
    \]
\end{enumerate}

### Exercice 5 : Prise en compte de la poussée d'Archimède
\begin{enonce}
Une bille de masse volumique $\rho = 2{,}5\times 10^{3}\ \text{kg.m}^{-3}$ et de volume $V$ tombe dans un liquide de masse volumique $\rho_f = 1{,}0\times 10^{3}\ \text{kg.m}^{-3}$. La force de frottement vaut $f = k\,v$. L'axe $(Oz)$ est orienté vers le bas.

Établir l'équation différentielle vérifiée par $v(t)$ en tenant compte de la poussée d'Archimède, et donner l'expression de la vitesse limite.
\end{enonce}

\textbf{Solution :}
La masse de la bille s'écrit $m = \rho\,V$. La deuxième loi de Newton projetée sur $(Oz)$ orienté vers le bas donne, avec le poids $+\rho V g$, la poussée d'Archimède $-\rho_f V g$ et le frottement $-k\,v$ :
\[
\rho V\,\frac{\dd v}{\dd t} = \rho V g - \rho_f V g - k\,v
\]
soit, en divisant par $m = \rho V$ :
\[
\frac{\dd v}{\dd t} = g\left(1 - \frac{\rho_f}{\rho}\right) - \frac{k}{\rho V}\,v
\]
En régime permanent, $\dfrac{\dd v}{\dd t} = 0$, d'où la vitesse limite :
\[
v_\ell = \frac{\rho V g\left(1 - \dfrac{\rho_f}{\rho}\right)}{k} = \frac{(\rho - \rho_f)\,V g}{k}
\]
La poussée d'Archimède diminue le poids apparent et donc la vitesse limite.

### Exercice 6 : Méthode d'Euler
\begin{enonce}
La vitesse d'un solide en chute dans un fluide vérifie :
\[
\frac{\dd v}{\dd t} = g - \frac{k}{m}\,v
\]
avec $g = 9{,}8\ \text{m.s}^{-2}$, $\dfrac{k}{m} = 2{,}0\ \text{s}^{-1}$ et $v(0) = 0$. On utilise la méthode d'Euler avec un pas $\Delta t = 0{,}10\ \text{s}$.

Calculer les vitesses $v_1$ et $v_2$ aux instants $t_1 = 0{,}10\ \text{s}$ et $t_2 = 0{,}20\ \text{s}$.
\end{enonce}

\textbf{Solution :}
La méthode d'Euler utilise la relation $v_{n+1} = v_n + a_n\,\Delta t$, où l'accélération $a_n = g - \dfrac{k}{m}\,v_n$ est calculée à chaque pas.

À $t_0 = 0$ : $v_0 = 0$ et $a_0 = 9{,}8 - 2{,}0\times 0 = 9{,}8\ \text{m.s}^{-2}$.
\[
v_1 = v_0 + a_0\,\Delta t = 0 + 9{,}8\times 0{,}10 = 0{,}98\ \text{m.s}^{-1}
\]
À $t_1 = 0{,}10\ \text{s}$ : $a_1 = 9{,}8 - 2{,}0\times 0{,}98 = 7{,}84\ \text{m.s}^{-2}$.
\[
v_2 = v_1 + a_1\,\Delta t = 0{,}98 + 7{,}84\times 0{,}10 = 1{,}76\ \text{m.s}^{-1}
\]
On retrouve que l'accélération diminue au fur et à mesure que la vitesse augmente, jusqu'à s'annuler à la vitesse limite $v_\ell = \dfrac{g}{k/m} = \dfrac{9{,}8}{2{,}0} = 4{,}9\ \text{m.s}^{-1}$.

### Exercice 7 : Frottement quadratique
\begin{enonce}
Un solide de masse $m = 0{,}20\ \text{kg}$ tombe dans l'air. La force de frottement est modélisée par $f = k\,v^2$ avec $k = 8{,}0\times 10^{-3}\ \text{kg.m}^{-1}$. On néglige la poussée d'Archimède et on prend $g = 9{,}8\ \text{m.s}^{-2}$.
\begin{enumerate}
    \item Établir l'équation différentielle vérifiée par $v(t)$.
    \item Déterminer la vitesse limite $v_\ell$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item La deuxième loi de Newton sur l'axe $(Oz)$ orienté vers le bas, avec le poids $+mg$ et le frottement $-k\,v^2$, donne :
    \[
    m\,\frac{\dd v}{\dd t} = mg - k\,v^2 \implies \frac{\dd v}{\dd t} = g - \frac{k}{m}\,v^2
    \]
    \item En régime permanent, $\dfrac{\dd v}{\dd t} = 0$ :
    \[
    g - \frac{k}{m}\,v_\ell^2 = 0 \implies v_\ell = \sqrt{\frac{mg}{k}}
    \]
    Application numérique :
    \[
    v_\ell = \sqrt{\frac{0{,}20 \times 9{,}8}{8{,}0\times 10^{-3}}} = \sqrt{245} \approx 15{,}7\ \text{m.s}^{-1}
    \]
\end{enumerate}

### Exercice 8 : Lecture d'une courbe v(t)
\begin{enonce}
On enregistre la vitesse d'une bille en chute dans un fluide. La courbe $v(t)$ part de l'origine, croît puis se stabilise. On relève les points suivants :
\begin{itemize}
    \item à $t = 0$, $v = 0$ ;
    \item la tangente à l'origine a pour coefficient directeur $9{,}8\ \text{m.s}^{-2}$ ;
    \item la vitesse se stabilise à $v_\ell = 0{,}60\ \text{m.s}^{-1}$.
\end{itemize}
La bille a une masse $m = 6{,}0\ \text{g}$ et on néglige la poussée d'Archimède.
\begin{enumerate}
    \item Que représente le coefficient directeur de la tangente à l'origine ?
    \item Déterminer la valeur du coefficient de frottement $k$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Le coefficient directeur de la tangente à l'origine est l'accélération initiale $\left(\dfrac{\dd v}{\dd t}\right)_{t=0}$. Comme $v(0)=0$, cette accélération vaut $g = 9{,}8\ \text{m.s}^{-2}$, ce qui confirme la valeur relevée : au départ, la chute est quasi libre.
    \item À la vitesse limite, $v_\ell = \dfrac{mg}{k}$, d'où :
    \[
    k = \frac{mg}{v_\ell} = \frac{6{,}0\times 10^{-3} \times 9{,}8}{0{,}60} = 9{,}8\times 10^{-2}\ \text{kg.s}^{-1}
    \]
\end{enumerate}
