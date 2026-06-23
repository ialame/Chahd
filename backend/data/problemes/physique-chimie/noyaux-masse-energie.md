### Problème 1 : Étude énergétique du noyau d'uranium 235
\begin{enonce}
On étudie le noyau d'uranium ${}^{235}_{92}\text{U}$, principal combustible des centrales nucléaires. On donne les données suivantes :
\begin{itemize}
    \item masse du proton : $m_p = 1{,}00728\ \text{u}$ ;
    \item masse du neutron : $m_n = 1{,}00866\ \text{u}$ ;
    \item masse du noyau d'uranium : $m({}^{235}_{92}\text{U}) = 234{,}9942\ \text{u}$ ;
    \item équivalence : $1\ \text{u} = 931{,}5\ \text{MeV.c}^{-2}$ ;
    \item $1\ \text{u} = 1{,}66\times 10^{-27}\ \text{kg}$ et $c = 3{,}00\times 10^{8}\ \text{m.s}^{-1}$.
\end{itemize}
\begin{enumerate}
    \item Donner la composition (nombre de protons et de neutrons) du noyau ${}^{235}_{92}\text{U}$.
    \item Calculer le défaut de masse $\Delta m$ de ce noyau, en $\text{u}$.
    \item En déduire l'énergie de liaison $E_\ell$ de ce noyau, en $\text{MeV}$.
    \item Calculer l'énergie de liaison par nucléon $\dfrac{E_\ell}{A}$.
    \item Le noyau de nickel ${}^{62}_{28}\text{Ni}$ possède une énergie de liaison par nucléon égale à $8{,}79\ \text{MeV/nucléon}$. Lequel des deux noyaux, l'uranium ou le nickel, est le plus stable ? Justifier.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Le noyau ${}^{235}_{92}\text{U}$ comporte $Z = 92$ protons et $A - Z = 235 - 92 = 143$ neutrons.
    \item Le défaut de masse est la différence entre la masse des nucléons séparés et celle du noyau :
    \[
    \Delta m = \left[Z\,m_p + (A - Z)\,m_n\right] - m({}^{235}_{92}\text{U})
    \]
    \[
    \Delta m = \left[92\times 1{,}00728 + 143\times 1{,}00866\right] - 234{,}9942
    \]
    \[
    \Delta m = \left[92{,}66976 + 144{,}23838\right] - 234{,}9942 = 236{,}90814 - 234{,}9942
    \]
    \[
    \Delta m = 1{,}91394\ \text{u} \approx 1{,}914\ \text{u}
    \]
    \item L'énergie de liaison s'obtient par $E_\ell = \Delta m\,c^2$, avec $\Delta m$ en $\text{u}$ :
    \[
    E_\ell = 1{,}914 \times 931{,}5 \approx 1783\ \text{MeV}
    \]
    \item L'énergie de liaison par nucléon vaut :
    \[
    \frac{E_\ell}{A} = \frac{1783}{235} \approx 7{,}59\ \text{MeV/nucléon}
    \]
    \item Le noyau le plus stable est celui dont l'énergie de liaison par nucléon est la plus grande. Pour le nickel : $8{,}79\ \text{MeV/nucléon}$ ; pour l'uranium : $7{,}59\ \text{MeV/nucléon}$. Le noyau de nickel ${}^{62}_{28}\text{Ni}$ est donc \emph{plus stable} que celui d'uranium. C'est cohérent avec la courbe d'Aston, dont le maximum se situe vers $A \approx 56$ à $62$.
\end{enumerate}

### Problème 2 : Fission de l'uranium dans un réacteur nucléaire
\begin{enonce}
Dans le cœur d'un réacteur, un noyau d'uranium ${}^{235}_{92}\text{U}$ capture un neutron lent et subit la fission selon l'équation incomplète :
\[
{}^{235}_{92}\text{U} + {}^{1}_{0}\text{n} \longrightarrow {}^{140}_{54}\text{Xe} + {}^{A}_{Z}\text{Sr} + 2\,{}^{1}_{0}\text{n}
\]
On donne les masses des noyaux : $m({}^{235}_{92}\text{U}) = 234{,}9942\ \text{u}$, $m({}^{140}_{54}\text{Xe}) = 139{,}8920\ \text{u}$, $m({}^{94}_{38}\text{Sr}) = 93{,}8945\ \text{u}$, $m({}^{1}_{0}\text{n}) = 1{,}00866\ \text{u}$. On prend $1\ \text{u} = 931{,}5\ \text{MeV.c}^{-2}$ et $1\ \text{MeV} = 1{,}60\times 10^{-13}\ \text{J}$. Le nombre d'Avogadro vaut $N_A = 6{,}02\times 10^{23}\ \text{mol}^{-1}$ et la masse molaire de l'uranium $235$ est $M = 235\ \text{g.mol}^{-1}$.
\begin{enumerate}
    \item Déterminer les nombres $A$ et $Z$ du noyau de strontium, en énonçant les lois de conservation utilisées.
    \item Calculer l'énergie $|\Delta E|$ libérée par la fission d'un seul noyau d'uranium, en $\text{MeV}$ puis en joules.
    \item En déduire le nombre de noyaux contenus dans $1{,}0\ \text{g}$ d'uranium $235$.
    \item Calculer l'énergie totale libérée par la fission de $1{,}0\ \text{g}$ d'uranium $235$, en joules.
    \item La combustion de $1{,}0\ \text{g}$ de pétrole libère environ $4{,}2\times 10^{4}\ \text{J}$. Comparer et commenter.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item On applique les lois de conservation de Soddy : conservation du nombre de nucléons $A$ et du nombre de charge $Z$.
    \begin{itemize}
        \item Nombre de nucléons : $235 + 1 = 140 + A + 2\times 1$, donc $A = 236 - 142 = 94$.
        \item Nombre de charge : $92 + 0 = 54 + Z + 0$, donc $Z = 92 - 54 = 38$.
    \end{itemize}
    Le noyau formé est donc ${}^{94}_{38}\text{Sr}$.
    \item On calcule la perte de masse $|\Delta m| = m_i - m_f$. Masse des réactifs :
    \[
    m_i = m({}^{235}_{92}\text{U}) + m({}^{1}_{0}\text{n}) = 234{,}9942 + 1{,}00866 = 236{,}00286\ \text{u}
    \]
    Masse des produits (avec $2$ neutrons) :
    \[
    m_f = m({}^{140}_{54}\text{Xe}) + m({}^{94}_{38}\text{Sr}) + 2\,m({}^{1}_{0}\text{n})
    \]
    \[
    m_f = 139{,}8920 + 93{,}8945 + 2\times 1{,}00866 = 235{,}80382\ \text{u}
    \]
    Perte de masse :
    \[
    |\Delta m| = 236{,}00286 - 235{,}80382 = 0{,}19904\ \text{u}
    \]
    Énergie libérée par un noyau :
    \[
    |\Delta E| = |\Delta m|\,c^2 = 0{,}19904 \times 931{,}5 \approx 185\ \text{MeV}
    \]
    Soit, en joules :
    \[
    |\Delta E| = 185 \times 1{,}60\times 10^{-13} \approx 2{,}96\times 10^{-11}\ \text{J}
    \]
    \item Le nombre de noyaux contenus dans une masse $m = 1{,}0\ \text{g}$ est :
    \[
    N = \frac{m}{M}\,N_A = \frac{1{,}0}{235}\times 6{,}02\times 10^{23} \approx 2{,}56\times 10^{21}\ \text{noyaux}
    \]
    \item L'énergie totale libérée par la fission de tous ces noyaux est :
    \[
    E_{\text{tot}} = N \times |\Delta E| = 2{,}56\times 10^{21} \times 2{,}96\times 10^{-11}
    \]
    \[
    E_{\text{tot}} \approx 7{,}6\times 10^{10}\ \text{J}
    \]
    \item Pour la même masse de $1{,}0\ \text{g}$, le pétrole libère $4{,}2\times 10^{4}\ \text{J}$. Le rapport vaut :
    \[
    \frac{E_{\text{tot}}}{E_{\text{pétrole}}} = \frac{7{,}6\times 10^{10}}{4{,}2\times 10^{4}} \approx 1{,}8\times 10^{6}
    \]
    La fission d'un gramme d'uranium libère donc environ \emph{un à deux millions de fois} plus d'énergie que la combustion d'un gramme de pétrole. Cela illustre l'énorme densité énergétique du combustible nucléaire, conséquence directe de l'équivalence masse-énergie.
\end{enumerate}

### Problème 3 : Fusion thermonucléaire et bilan énergétique
\begin{enonce}
La fusion deutérium-tritium est la réaction envisagée pour les futurs réacteurs de type ITER :
\[
{}^{2}_{1}\text{H} + {}^{3}_{1}\text{H} \longrightarrow {}^{4}_{2}\text{He} + {}^{1}_{0}\text{n}
\]
On donne les masses des noyaux : $m({}^{2}_{1}\text{H}) = 2{,}01355\ \text{u}$, $m({}^{3}_{1}\text{H}) = 3{,}01550\ \text{u}$, $m({}^{4}_{2}\text{He}) = 4{,}00150\ \text{u}$, $m({}^{1}_{0}\text{n}) = 1{,}00866\ \text{u}$. On prend $1\ \text{u} = 931{,}5\ \text{MeV.c}^{-2}$ et $1\ \text{MeV} = 1{,}60\times 10^{-13}\ \text{J}$.
\begin{enumerate}
    \item Vérifier que cette équation respecte les lois de conservation de Soddy.
    \item Calculer l'énergie $|\Delta E|$ libérée par une réaction de fusion, en $\text{MeV}$.
    \item Calculer l'énergie libérée par nucléon mis en jeu et la comparer à la valeur de $0{,}79\ \text{MeV/nucléon}$ obtenue pour une fission typique de l'uranium. Conclure.
    \item Sachant qu'une réaction libère $|\Delta E|$, déterminer le nombre $n$ de réactions de fusion nécessaires pour libérer une énergie de $1{,}0\ \text{kWh}$, soit $3{,}6\times 10^{6}\ \text{J}$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Lois de conservation de Soddy :
    \begin{itemize}
        \item nombre de nucléons : $2 + 3 = 4 + 1$, soit $5 = 5$. Vérifié.
        \item nombre de charge : $1 + 1 = 2 + 0$, soit $2 = 2$. Vérifié.
    \end{itemize}
    L'équation est correctement équilibrée.
    \item On calcule la perte de masse $|\Delta m| = m_i - m_f$ :
    \[
    m_i = m({}^{2}_{1}\text{H}) + m({}^{3}_{1}\text{H}) = 2{,}01355 + 3{,}01550 = 5{,}02905\ \text{u}
    \]
    \[
    m_f = m({}^{4}_{2}\text{He}) + m({}^{1}_{0}\text{n}) = 4{,}00150 + 1{,}00866 = 5{,}01016\ \text{u}
    \]
    \[
    |\Delta m| = 5{,}02905 - 5{,}01016 = 1{,}889\times 10^{-2}\ \text{u}
    \]
    D'où l'énergie libérée :
    \[
    |\Delta E| = |\Delta m|\,c^2 = 1{,}889\times 10^{-2}\times 931{,}5 \approx 17{,}6\ \text{MeV}
    \]
    \item La réaction met en jeu $A = 5$ nucléons au total. L'énergie libérée par nucléon vaut :
    \[
    \frac{|\Delta E|}{A} = \frac{17{,}6}{5} \approx 3{,}5\ \text{MeV/nucléon}
    \]
    Cette valeur est environ $4$ à $5$ fois supérieure à celle de la fission ($0{,}79\ \text{MeV/nucléon}$). À masse de combustible égale, la fusion est donc bien plus énergétique que la fission ; c'est aussi la réaction qui alimente le Soleil.
    \item L'énergie libérée par une réaction, en joules, est :
    \[
    |\Delta E| = 17{,}6\times 1{,}60\times 10^{-13} \approx 2{,}82\times 10^{-12}\ \text{J}
    \]
    Le nombre de réactions nécessaires pour libérer $3{,}6\times 10^{6}\ \text{J}$ est :
    \[
    n = \frac{3{,}6\times 10^{6}}{2{,}82\times 10^{-12}} \approx 1{,}3\times 10^{18}\ \text{réactions}
    \]
\end{enumerate}
