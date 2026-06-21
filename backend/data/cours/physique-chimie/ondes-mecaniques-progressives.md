Ce chapitre introduit la notion d'**onde mécanique**, c'est-à-dire la propagation d'une perturbation dans un milieu matériel. On y définit les grandeurs essentielles (célérité, retard, période, longueur d'onde) qui serviront pour toute l'étude des ondes, jusqu'à la lumière.

## 1. Notion d'onde mécanique progressive

### Définition

\begin{definition}[Onde mécanique progressive]
Une **onde mécanique progressive** est le phénomène de propagation d'une **perturbation** dans un **milieu matériel** (élastique), sans transport de matière mais **avec transport d'énergie**.
\end{definition}

Lorsqu'on crée une perturbation en un point d'un milieu (ébranlement d'une corde, choc à la surface de l'eau…), cette perturbation se déplace de proche en proche : chaque point du milieu reproduit, avec un certain **retard**, le mouvement du point qui le précède.

\begin{propriete}[Propriétés essentielles]
\begin{itemize}
    \item Une onde se propage, à partir de la source, dans **toutes les directions qui lui sont offertes**.
    \item Le **transport d'énergie** se fait sans transport de matière : un point du milieu ne fait qu'osciller autour de sa position d'équilibre.
    \item Deux ondes peuvent se **croiser** sans se perturber mutuellement (superposition).
\end{itemize}
\end{propriete}

### Ondes transversales et longitudinales

\begin{definition}[Direction de la perturbation]
\begin{itemize}
    \item Une onde est **transversale** si la perturbation est **perpendiculaire** à la direction de propagation (ex. : onde le long d'une corde).
    \item Une onde est **longitudinale** si la perturbation est **parallèle** à la direction de propagation (ex. : compression d'un ressort, **onde sonore**).
\end{itemize}
\end{definition}

## 2. Célérité d'une onde

\begin{definition}[Célérité]
La **célérité** $v$ (vitesse de propagation) d'une onde est la distance $d$ parcourue par la perturbation par unité de temps :
\[
v = \frac{d}{\Delta t}
\]
avec $v$ en $\mathrm{m\cdot s^{-1}}$, $d$ en $\mathrm{m}$ et $\Delta t$ en $\mathrm{s}$.
\end{definition}

\begin{remarque}
La célérité **dépend du milieu** (sa nature, sa température, sa tension…) mais **ne dépend pas** de l'amplitude de la perturbation. Dans l'air, la célérité du son vaut environ $v_{son} \approx 340~\mathrm{m\cdot s^{-1}}$.
\end{remarque}

## 3. Retard temporel

Soit une source $S$ et un point $M$ du milieu situé à la distance $d = SM$ dans la direction de propagation.

\begin{propriete}[Retard]
Le point $M$ reproduit le mouvement de la source $S$ avec un **retard** :
\[
\tau = \frac{SM}{v} = \frac{d}{v}
\]
L'élongation de $M$ à l'instant $t$ est donc égale à celle de $S$ à l'instant antérieur $t - \tau$ :
\[
y_M(t) = y_S(t - \tau)
\]
\end{propriete}

\begin{methode}[Calculer un retard]
1. Repérer la distance $d$ entre les deux points dans le sens de propagation.
2. Identifier (ou calculer) la célérité $v$.
3. Appliquer $\tau = \dfrac{d}{v}$.
\end{methode}

## 4. Ondes progressives périodiques

Si la source est animée d'un mouvement **périodique** de période $T$, l'onde émise est **périodique** : elle présente une **double périodicité**, dans le temps et dans l'espace.

### Périodicité temporelle

\begin{definition}[Période et fréquence]
La **période** $T$ (en $\mathrm{s}$) est la durée d'un motif élémentaire du mouvement. La **fréquence** $\nu$ (ou $f$, en $\mathrm{Hz}$) est le nombre de motifs par seconde :
\[
\nu = \frac{1}{T}
\]
\end{definition}

Chaque point du milieu reproduit, en retard, le mouvement périodique de la source : il oscille avec la **même période** $T$.

### Périodicité spatiale — longueur d'onde

\begin{definition}[Longueur d'onde]
La **longueur d'onde** $\lambda$ est la distance parcourue par l'onde pendant une période $T$. C'est aussi la plus petite distance entre deux points qui vibrent **en phase** :
\[
\boxed{\lambda = v\,T = \frac{v}{\nu}}
\]
$\lambda$ en $\mathrm{m}$, $v$ en $\mathrm{m\cdot s^{-1}}$, $T$ en $\mathrm{s}$, $\nu$ en $\mathrm{Hz}$.
\end{definition}

\begin{propriete}[Points en phase / en opposition de phase]
Deux points $M_1$ et $M_2$ distants de $d$ vibrent :
\begin{itemize}
    \item **en phase** si $d = k\,\lambda$ (avec $k$ entier) ;
    \item **en opposition de phase** si $d = \left(k + \tfrac{1}{2}\right)\lambda = (2k+1)\dfrac{\lambda}{2}$.
\end{itemize}
\end{propriete}

\begin{exemple}[Calcul d'une longueur d'onde]
Une onde se propage à la surface de l'eau à la célérité $v = 0{,}25~\mathrm{m\cdot s^{-1}}$. La source vibre à la fréquence $\nu = 50~\mathrm{Hz}$.
\[
\lambda = \frac{v}{\nu} = \frac{0{,}25}{50} = 5\times10^{-3}~\mathrm{m} = 5~\mathrm{mm}.
\]
\end{exemple}

## 5. Le milieu de propagation

\begin{definition}[Milieu dispersif]
Un milieu est **dispersif** si la célérité de l'onde y **dépend de sa fréquence**. Dans le cas contraire, le milieu est **non dispersif** (la célérité est la même pour toutes les fréquences).
\end{definition}

\begin{remarque}
Le vide et l'air sont **non dispersifs** pour les ondes sonores et lumineuses usuelles. Un prisme de verre, lui, est **dispersif** pour la lumière (d'où la décomposition de la lumière blanche, étudiée au chapitre suivant).
\end{remarque}

## L'essentiel

\begin{propriete}[À retenir]
\begin{itemize}
    \item Onde mécanique = propagation d'une perturbation, **sans transport de matière**, **avec transport d'énergie**.
    \item Transversale ($\perp$) ou longitudinale ($\parallel$ à la propagation).
    \item Célérité : $v = \dfrac{d}{\Delta t}$, propre au milieu.
    \item Retard : $\tau = \dfrac{d}{v}$ et $y_M(t) = y_S(t-\tau)$.
    \item Onde périodique : $\nu = \dfrac{1}{T}$ et $\lambda = vT = \dfrac{v}{\nu}$.
\end{itemize}
\end{propriete}
