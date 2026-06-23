### Problème 1 : Propagation d'une onde le long d'une corde élastique
\begin{enonce}
Une lame vibrante anime l'extrémité $S$ d'une corde élastique tendue horizontalement d'un mouvement sinusoïdal vertical de fréquence $f = 50\ \text{Hz}$, à partir de l'instant $t = 0$. L'onde transversale ainsi créée se propage le long de la corde sans amortissement ni réflexion, avec une célérité $v = 10\ \text{m.s}^{-1}$.

On considère un point $M$ de la corde situé à la distance $d = 0{,}30\ \text{m}$ de la source $S$.
\begin{enumerate}
    \item Préciser la nature (transversale ou longitudinale) de l'onde le long de la corde. Justifier.
    \item Calculer la période temporelle $T$ et la longueur d'onde $\lambda$.
    \item Déterminer le retard temporel $\tau$ du mouvement de $M$ par rapport à celui de $S$.
    \item Le point $M$ vibre-t-il en phase ou en opposition de phase avec la source $S$ ? Justifier.
    \item On considère un point $N$ situé entre $S$ et $M$ et vibrant en opposition de phase avec $S$. Donner la plus petite distance $SN$ possible.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Les points de la corde se déplacent verticalement alors que l'onde se propage horizontalement : le déplacement est perpendiculaire à la direction de propagation, l'onde est donc \emph{transversale}.
    \item La période temporelle est :
    \[
    T = \frac{1}{f} = \frac{1}{50} = 2{,}0\times 10^{-2}\ \text{s} = 20\ \text{ms}
    \]
    La longueur d'onde est :
    \[
    \lambda = v\,T = \frac{v}{f} = \frac{10}{50} = 0{,}20\ \text{m} = 20\ \text{cm}
    \]
    \item Le point $M$ reproduit le mouvement de $S$ avec le retard :
    \[
    \tau = \frac{d}{v} = \frac{0{,}30}{10} = 3{,}0\times 10^{-2}\ \text{s} = 30\ \text{ms}
    \]
    \item On compare la distance $d$ à la longueur d'onde :
    \[
    \frac{d}{\lambda} = \frac{0{,}30}{0{,}20} = 1{,}5 = \frac{3}{2}
    \]
    Cette valeur est un multiple impair de $\dfrac{1}{2}$ : le point $M$ vibre donc \emph{en opposition de phase} avec la source $S$. On peut le vérifier avec le retard : $\tau = 30\ \text{ms} = 1{,}5\,T$, soit une demi-période de plus qu'un nombre entier de périodes.
    \item Un point $N$ vibre en opposition de phase avec $S$ si :
    \[
    SN = \left(k + \frac{1}{2}\right)\lambda \qquad (k \in \mathbb{N})
    \]
    La plus petite distance correspond à $k = 0$ :
    \[
    SN_{\min} = \frac{\lambda}{2} = \frac{0{,}20}{2} = 0{,}10\ \text{m} = 10\ \text{cm}
    \]
\end{enumerate}

### Problème 2 : Onde à la surface de l'eau
\begin{enonce}
Une pointe fixée à un vibreur frappe verticalement la surface libre de l'eau d'une cuve à ondes, au point $O$, avec une fréquence $f = 20\ \text{Hz}$. Il se forme à la surface de l'eau des rides circulaires concentriques constituant une onde progressive sinusoïdale, qui se propage sans amortissement.

Une photographie prise à un instant donné permet de mesurer la distance séparant la première et la sixième ride circulaire (crêtes), comptées à partir de $O$ : cette distance vaut $L = 5{,}0\ \text{cm}$.
\begin{enumerate}
    \item L'onde à la surface de l'eau est-elle transversale ou longitudinale ?
    \item Déduire de la mesure la valeur de la longueur d'onde $\lambda$.
    \item Calculer la célérité $v$ de propagation de l'onde.
    \item Déterminer le retard $\tau$ avec lequel vibre un point $P$ situé à la distance $OP = 3{,}0\ \text{cm}$ de la source.
    \item Combien de longueurs d'onde séparent le point $P$ de la source ? Le point $P$ est-il en phase ou en opposition de phase avec $O$ ?
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Les particules d'eau oscillent verticalement (de haut en bas) tandis que les rides se propagent horizontalement à la surface : le déplacement est perpendiculaire à la propagation, l'onde est donc \emph{transversale}.
    \item Entre la première et la sixième crête, il y a $5$ intervalles égaux à une longueur d'onde chacun. Donc :
    \[
    L = 5\lambda \implies \lambda = \frac{L}{5} = \frac{5{,}0}{5} = 1{,}0\ \text{cm} = 1{,}0\times 10^{-2}\ \text{m}
    \]
    \item La célérité se déduit de $\lambda = \dfrac{v}{f}$ :
    \[
    v = \lambda\,f = 1{,}0\times 10^{-2} \times 20 = 0{,}20\ \text{m.s}^{-1}
    \]
    \item Le retard du point $P$ par rapport à la source vaut :
    \[
    \tau = \frac{OP}{v} = \frac{3{,}0\times 10^{-2}}{0{,}20} = 0{,}15\ \text{s} = 150\ \text{ms}
    \]
    \item Le nombre de longueurs d'onde est :
    \[
    \frac{OP}{\lambda} = \frac{3{,}0}{1{,}0} = 3
    \]
    C'est un nombre entier : le point $P$ vibre donc \emph{en phase} avec la source $O$.
\end{enumerate}

### Problème 3 : Mesure de célérité et double périodicité
\begin{enonce}
On étudie la propagation d'une onde mécanique progressive sinusoïdale le long d'une corde tendue. Un dispositif d'acquisition enregistre le mouvement vertical de deux points distincts de la corde, $A$ et $B$, situés dans le sens de propagation et distants de $D = 0{,}25\ \text{m}$ ($B$ après $A$).

L'analyse des enregistrements montre que :
\begin{itemize}
    \item chaque point décrit un mouvement sinusoïdal de période $T = 25\ \text{ms}$ ;
    \item le mouvement de $B$ présente un retard $\tau = 12{,}5\ \text{ms}$ par rapport à celui de $A$.
\end{itemize}
\begin{enumerate}
    \item Calculer la fréquence $f$ de l'onde.
    \item Déterminer la célérité $v$ de l'onde le long de la corde.
    \item Calculer la longueur d'onde $\lambda$ de deux manières différentes et vérifier la cohérence des résultats.
    \item Les points $A$ et $B$ vibrent-ils en phase, en opposition de phase, ou autrement ? Justifier.
    \item Quelle distance minimale faut-il ajouter à $D$ pour qu'un point $C$, situé après $B$, vibre en phase avec $A$ ?
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item La fréquence est l'inverse de la période :
    \[
    f = \frac{1}{T} = \frac{1}{25\times 10^{-3}} = 40\ \text{Hz}
    \]
    \item La célérité se déduit du retard, qui correspond au temps mis pour parcourir la distance $D$ :
    \[
    v = \frac{D}{\tau} = \frac{0{,}25}{12{,}5\times 10^{-3}} = 20\ \text{m.s}^{-1}
    \]
    \item Première méthode, par la relation $\lambda = vT$ :
    \[
    \lambda = v\,T = 20 \times 25\times 10^{-3} = 0{,}50\ \text{m}
    \]
    Seconde méthode, en remarquant que $\tau = \dfrac{T}{2}$ correspond à $\dfrac{D}{\lambda} = \dfrac{\tau}{T}$, soit :
    \[
    \lambda = D\cdot\frac{T}{\tau} = 0{,}25 \times \frac{25}{12{,}5} = 0{,}50\ \text{m}
    \]
    Les deux méthodes donnent $\lambda = 0{,}50\ \text{m} = 50\ \text{cm}$ : résultats cohérents.
    \item On compare $D$ à $\lambda$ :
    \[
    \frac{D}{\lambda} = \frac{0{,}25}{0{,}50} = 0{,}5 = \frac{1}{2}
    \]
    La distance vaut une demi-longueur d'onde : $A$ et $B$ vibrent donc \emph{en opposition de phase}. C'est cohérent avec le retard $\tau = \dfrac{T}{2}$.
    \item Pour qu'un point $C$ vibre en phase avec $A$, la distance $AC$ doit être un multiple entier de $\lambda$. Comme $AB = \dfrac{\lambda}{2}$, le premier multiple entier de $\lambda$ supérieur à $AB$ est $\lambda$. La distance à ajouter est donc :
    \[
    BC = \lambda - \frac{\lambda}{2} = \frac{\lambda}{2} = \frac{0{,}50}{2} = 0{,}25\ \text{m} = 25\ \text{cm}
    \]
\end{enumerate}
