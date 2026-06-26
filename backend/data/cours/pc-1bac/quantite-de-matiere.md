Les atomes et molécules sont bien trop petits et trop nombreux pour être comptés un à un. Le chimiste introduit une grandeur adaptée à son échelle : la **quantité de matière**, exprimée en **moles**. Ce chapitre définit la **mole** et le nombre d'**Avogadro**, la **masse molaire**, le **volume molaire** des gaz, l'**équation d'état du gaz parfait** et la **concentration** d'une solution.

## 1. La mole et le nombre d'Avogadro

\begin{definition}[La mole]
La **mole** (symbole $mol$) est l'unité de **quantité de matière**. Une mole est la quantité de matière d'un système contenant autant d'entités élémentaires (atomes, molécules, ions, électrons...) qu'il y a d'atomes dans $12\ \text{g}$ de carbone 12.
\end{definition}

\begin{definition}[Nombre d'Avogadro]
Le nombre d'entités contenues dans une mole est le **nombre d'Avogadro** :
\[
\boxed{N_A = 6{,}02 \times 10^{23}\ \text{mol}^{-1}}
\]
\end{definition}

\begin{propriete}[Quantité de matière et nombre d'entités]
Si un échantillon contient $N$ entités, sa quantité de matière $n$ (en $mol$) est :
\[
\boxed{n = \frac{N}{N_A}} \qquad N = n \times N_A
\]
\end{propriete}

\begin{exemple}
Un échantillon contient $N = 3{,}01 \times 10^{23}$ molécules d'eau. Sa quantité de matière vaut :
\[
n = \frac{3{,}01 \times 10^{23}}{6{,}02 \times 10^{23}} = 0{,}5\ \text{mol}
\]
\end{exemple}

## 2. Masse molaire

\begin{definition}[Masse molaire atomique]
La **masse molaire atomique** $M$ d'un élément est la masse d'une mole de ses atomes. Elle s'exprime en $\text{g}\cdot\text{mol}^{-1}$ et se lit dans la classification périodique.
\end{definition}

\begin{definition}[Masse molaire moléculaire]
La **masse molaire moléculaire** d'un composé est la **somme** des masses molaires atomiques de tous les atomes de sa formule.
\end{definition}

\begin{exemple}
Pour l'eau $H_2O$, avec $M(H) = 1\ \text{g}\cdot\text{mol}^{-1}$ et $M(O) = 16\ \text{g}\cdot\text{mol}^{-1}$ :
\[
M(H_2O) = 2 \times M(H) + M(O) = 2 \times 1 + 16 = 18\ \text{g}\cdot\text{mol}^{-1}
\]
\end{exemple}

## 3. Quantité de matière et masse

\begin{loi}[Quantité de matière d'un échantillon]
La quantité de matière $n$ contenue dans un échantillon de masse $m$ se calcule à partir de sa masse molaire $M$ :
\[
\boxed{n = \frac{m}{M}}
\]
avec $n$ en $mol$, $m$ en $\text{g}$ et $M$ en $\text{g}\cdot\text{mol}^{-1}$.
\end{loi}

\begin{exemple}
Quelle quantité de matière dans $m = 36\ \text{g}$ d'eau ?
\[
n = \frac{m}{M(H_2O)} = \frac{36}{18} = 2\ \text{mol}
\]
\end{exemple}

\begin{methode}[Compter des entités à partir d'une masse]
\begin{itemize}
    \item calculer la masse molaire $M$ du composé ;
    \item en déduire la quantité de matière $n = \dfrac{m}{M}$ ;
    \item multiplier par $N_A$ pour obtenir le nombre d'entités $N = n \times N_A$.
\end{itemize}
\end{methode}

## 4. Le volume molaire des gaz

\begin{definition}[Volume molaire]
Le **volume molaire** $V_m$ est le volume occupé par **une mole** de gaz dans des conditions de température et de pression données. Il s'exprime en $\text{L}\cdot\text{mol}^{-1}$.
\end{definition}

\begin{propriete}[Loi d'Avogadro–Ampère]
Dans les mêmes conditions de température et de pression, des volumes égaux de gaz différents contiennent le **même nombre** de molécules. Le volume molaire est donc le **même pour tous les gaz**. Dans les **conditions normales** ($0\ ^{\circ}\text{C}$, $1013\ \text{hPa}$) : $V_m = 22{,}4\ \text{L}\cdot\text{mol}^{-1}$.
\end{propriete}

\begin{loi}[Quantité de matière d'un gaz]
Pour un gaz de volume $V$ sous un volume molaire $V_m$ :
\[
\boxed{n = \frac{V}{V_m}}
\]
\end{loi}

\begin{exemple}
Quelle quantité de matière dans $V = 5{,}6\ \text{L}$ de dioxygène mesurés dans les conditions normales ?
\[
n = \frac{V}{V_m} = \frac{5{,}6}{22{,}4} = 0{,}25\ \text{mol}
\]
\end{exemple}

## 5. Masse volumique et densité

\begin{definition}[Masse volumique]
La **masse volumique** $\rho$ d'un corps est le quotient de sa masse $m$ par son volume $V$ :
\[
\rho = \frac{m}{V}
\]
en $\text{kg}\cdot\text{m}^{-3}$ ou en $\text{g}\cdot\text{L}^{-1}$.
\end{definition}

\begin{definition}[Densité]
La **densité** $d$ d'un corps est le rapport de sa masse volumique à celle d'un corps de référence. C'est un nombre **sans unité**.
\begin{itemize}
    \item pour un **solide** ou un **liquide**, la référence est l'**eau** : $d = \dfrac{\rho}{\rho_{eau}}$ ;
    \item pour un **gaz**, la référence est l'**air** : $d = \dfrac{\rho_{gaz}}{\rho_{air}}$.
\end{itemize}
\end{definition}

\begin{remarque}
La masse volumique de l'eau vaut $\rho_{eau} = 1000\ \text{g}\cdot\text{L}^{-1} = 1\ \text{g}\cdot\text{cm}^{-3}$. Connaissant la densité $d$ d'un liquide, on retrouve sa masse volumique par $\rho = d \times \rho_{eau}$.
\end{remarque}

## 6. L'équation d'état du gaz parfait

\begin{definition}[Gaz parfait]
Le **gaz parfait** est un modèle dans lequel les molécules sont assimilées à des points sans interaction entre elles. La plupart des gaz réels se comportent comme des gaz parfaits aux pressions usuelles.
\end{definition}

\begin{loi}[Équation d'état du gaz parfait]
L'état d'un gaz parfait relie sa pression $P$, son volume $V$, sa quantité de matière $n$ et sa température absolue $T$ :
\[
\boxed{P\,V = n\,R\,T}
\]
\begin{itemize}
    \item $P$ en pascals ($\text{Pa}$) ;
    \item $V$ en mètres cubes ($\text{m}^{3}$) ;
    \item $n$ en moles ($\text{mol}$) ;
    \item $T$ en kelvins ($\text{K}$), avec $T = \theta + 273$ ($\theta$ en $^{\circ}\text{C}$) ;
    \item $R = 8{,}31\ \text{J}\cdot\text{mol}^{-1}\cdot\text{K}^{-1}$ est la **constante des gaz parfaits**.
\end{itemize}
\end{loi}

\begin{important}
Il faut impérativement utiliser les **unités du Système international** : $P$ en $\text{Pa}$, $V$ en $\text{m}^{3}$ et $T$ en $\text{K}$. Rappels de conversion : $1\ \text{L} = 10^{-3}\ \text{m}^{3}$ et $1\ \text{hPa} = 100\ \text{Pa}$.
\end{important}

\begin{exemple}
Quelle quantité de matière dans $V = 2{,}0\ \text{L}$ de gaz à $P = 1{,}0 \times 10^{5}\ \text{Pa}$ et $\theta = 27\ ^{\circ}\text{C}$ ?
On a $T = 27 + 273 = 300\ \text{K}$ et $V = 2{,}0 \times 10^{-3}\ \text{m}^{3}$ :
\[
n = \frac{P\,V}{R\,T} = \frac{1{,}0 \times 10^{5} \times 2{,}0 \times 10^{-3}}{8{,}31 \times 300} \approx 8{,}0 \times 10^{-2}\ \text{mol}
\]
\end{exemple}

## 7. La concentration d'une solution

\begin{definition}[Concentration molaire]
Lorsqu'on dissout un soluté dans un solvant, on obtient une **solution**. La **concentration molaire** $C$ du soluté est sa quantité de matière $n$ par litre de solution :
\[
\boxed{C = \frac{n}{V}}
\]
avec $C$ en $\text{mol}\cdot\text{L}^{-1}$, $n$ en $\text{mol}$ et $V$ en $\text{L}$.
\end{definition}

\begin{remarque}
On distingue la **concentration molaire** $C$ (en $\text{mol}\cdot\text{L}^{-1}$) de la **concentration massique** $C_m = \dfrac{m}{V}$ (en $\text{g}\cdot\text{L}^{-1}$). Elles sont reliées par $C_m = C \times M$.
\end{remarque}

\begin{exemple}
On dissout $n = 0{,}10\ \text{mol}$ de glucose dans de l'eau pour obtenir $V = 0{,}50\ \text{L}$ de solution :
\[
C = \frac{n}{V} = \frac{0{,}10}{0{,}50} = 0{,}20\ \text{mol}\cdot\text{L}^{-1}
\]
\end{exemple}

\begin{methode}[Préparer une solution de concentration donnée]
\begin{itemize}
    \item déterminer la quantité de matière voulue $n = C \times V$ ;
    \item en déduire la masse de soluté à peser $m = n \times M$ ;
    \item dissoudre cette masse et compléter avec de l'eau jusqu'au trait de jauge de la fiole de volume $V$.
\end{itemize}
\end{methode}
