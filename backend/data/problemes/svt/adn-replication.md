### Problème 1 : Étude de la composition en bases d'un ADN
\begin{enonce}
On a analysé la composition en bases azotées de l'$\text{ADN}$ extrait de différentes espèces. Pour l'$\text{ADN}$ d'une espèce X, on a mesuré une proportion de **guanine (G) de $28\,\%$**.

L'$\text{ADN}$ de cette espèce est constitué d'une molécule double brin de **$10^{6}$ paires de bases**.
\begin{enumerate}
    \item Énoncer la règle de Chargaff et expliquer son origine.
    \item Déterminer les pourcentages des trois autres bases (C, A et T) dans l'$\text{ADN}$ de l'espèce X.
    \item Calculer le nombre de paires de bases C-G et le nombre de paires de bases A-T.
    \item Sachant qu'une paire A-T comporte $2$ liaisons hydrogène et une paire C-G en comporte $3$, calculer le nombre total de liaisons hydrogène de cette molécule.
    \item L'$\text{ADN}$ d'une autre espèce Y présente une proportion d'adénine de $20\,\%$. Les deux $\text{ADN}$ ont-ils la même composition ? Que peut-on dire de la structure de leurs molécules ?
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item La **règle de Chargaff** énonce que, dans l'$\text{ADN}$, la quantité d'adénine est égale à celle de thymine, et la quantité de cytosine est égale à celle de guanine : $\%A = \%T$ et $\%C = \%G$. Cette égalité provient de la **complémentarité des bases** (A toujours appariée à T, C toujours appariée à G) dans la double hélice.
    \item D'après Chargaff, $\%C = \%G = 28\,\%$. La somme des quatre bases vaut $100\,\%$ :
    \[
    \%A + \%T = 100 - (\%C + \%G) = 100 - 56 = 44\,\%
    \]
    Comme $\%A = \%T$ :
    \[
    \%A = \%T = \frac{44}{2} = 22\,\%
    \]
    Composition de X : $\%A = \%T = 22\,\%$ et $\%C = \%G = 28\,\%$.
    \item Sur un total de $10^{6}$ paires de bases, la proportion de paires C-G correspond à $\%G = 28\,\%$ et celle de paires A-T à $\%A = 22\,\%$ :
    \[
    n(\text{C-G}) = 0{,}28 \times 10^{6} = 2{,}8 \times 10^{5} \text{ paires}
    \]
    \[
    n(\text{A-T}) = 0{,}22 \times 10^{6} = 2{,}2 \times 10^{5} \text{ paires}
    \]
    \item Nombre total de liaisons hydrogène :
    \[
    N = n(\text{A-T}) \times 2 + n(\text{C-G}) \times 3
    \]
    \[
    N = (2{,}2 \times 10^{5}) \times 2 + (2{,}8 \times 10^{5}) \times 3 = 4{,}4 \times 10^{5} + 8{,}4 \times 10^{5} = 1{,}28 \times 10^{6} \text{ liaisons}
    \]
    \item Pour Y : $\%A = \%T = 20\,\%$, donc $\%C = \%G = \dfrac{100 - 40}{2} = 30\,\%$. Les deux $\text{ADN}$ ont des **compositions différentes** en bases (X : $22\,\%$ A ; Y : $20\,\%$ A). En revanche, leurs molécules ont la **même structure** (double hélice, mêmes nucléotides, même complémentarité A-T et C-G) : seule la **séquence et la proportion** des bases changent, ce qui porte l'information génétique propre à chaque espèce.
\end{enumerate}

### Problème 2 : L'expérience de Meselson et Stahl
\begin{enonce}
En $1958$, Meselson et Stahl ont cherché à déterminer le mode de réplication de l'$\text{ADN}$. Ils utilisent deux formes d'azote : l'azote **lourd ($^{15}$N)** et l'azote **léger ($^{14}$N)**. L'$\text{ADN}$ contenant du $^{15}$N est plus dense (plus lourd) que celui contenant du $^{14}$N ; après centrifugation, l'$\text{ADN}$ se positionne à une hauteur qui dépend de sa densité.

Le protocole et les résultats sont les suivants :
\begin{itemize}
    \item Des bactéries sont cultivées longtemps sur un milieu contenant uniquement de l'azote lourd $^{15}$N : leur $\text{ADN}$ est entièrement **lourd** (bande unique « lourde » après centrifugation).
    \item Ces bactéries sont ensuite transférées sur un milieu contenant uniquement de l'azote léger $^{14}$N, où elles se divisent.
    \item Après **une** génération (première réplication), on obtient une **bande unique de densité intermédiaire**, située à mi-chemin entre la position « lourde » et la position « légère ».
    \item Après **deux** générations, on obtient **deux bandes en quantités égales** : une bande **intermédiaire** et une bande **légère**.
\end{itemize}
\begin{enumerate}
    \item Pourquoi l'$\text{ADN}$ des bactéries cultivées sur $^{15}$N est-il entièrement lourd au départ ?
    \item Rappeler les trois hypothèses possibles pour la réplication : conservative, semi-conservative et dispersive.
    \item Interpréter le résultat obtenu après une génération. Quelle(s) hypothèse(s) peut-on déjà écarter ?
    \item Interpréter le résultat obtenu après deux générations. Conclure sur le mode de réplication.
    \item Prévoir, en justifiant, la proportion des bandes intermédiaire et légère attendue après une **troisième** génération sur milieu léger.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Les bactéries fabriquent leurs nucléotides à partir de l'azote présent dans le milieu. Sur un milieu ne contenant que de l'azote lourd $^{15}$N, **toutes les bases azotées** synthétisées contiennent du $^{15}$N : les deux brins de chaque molécule d'$\text{ADN}$ sont donc lourds.
    \item Trois hypothèses :
    \begin{itemize}
        \item **Conservative** : la molécule mère est conservée intacte et sert de modèle pour fabriquer une molécule fille entièrement neuve.
        \item **Semi-conservative** : les deux brins se séparent, chacun servant de matrice ; chaque molécule fille a un brin ancien et un brin neuf.
        \item **Dispersive** : les molécules filles sont faites d'un mélange de fragments anciens et neufs répartis sur les deux brins.
    \end{itemize}
    \item Après une génération sur milieu léger ($^{14}$N), chaque molécule d'$\text{ADN}$ comporte un brin ancien (lourd $^{15}$N) et un brin neuf (léger $^{14}$N) : la molécule est donc de densité **intermédiaire**, ce qui explique la bande unique intermédiaire. On peut **écarter l'hypothèse conservative** : si elle était vraie, on observerait deux bandes (une lourde = molécule mère conservée, une légère = molécule fille neuve), et non une seule bande intermédiaire.
    \item Après deux générations, les molécules intermédiaires se répliquent. Chacune sépare son brin lourd et son brin léger :
    \begin{itemize}
        \item le brin lourd ancien donne une molécule **intermédiaire** (brin lourd + brin neuf léger) ;
        \item le brin léger ancien donne une molécule **légère** (brin léger + brin neuf léger).
    \end{itemize}
    On obtient donc $\frac{1}{2}$ de molécules intermédiaires et $\frac{1}{2}$ de molécules légères, soit **deux bandes en quantités égales**, conformément à l'observation. Ce résultat **écarte l'hypothèse dispersive** (qui prévoirait une bande unique de densité de plus en plus légère, mais homogène) et **confirme l'hypothèse semi-conservative**.
    \item Après deux générations, on a $4$ molécules : $2$ intermédiaires et $2$ légères. Chaque molécule se réplique de façon semi-conservative pour la troisième génération ($8$ molécules) :
    \begin{itemize}
        \item chaque molécule **intermédiaire** donne $1$ intermédiaire $+ 1$ légère, soit $2 \times (1 + 1) = 2$ intermédiaires et $2$ légères ;
        \item chaque molécule **légère** donne $2$ légères, soit $2 \times 2 = 4$ légères.
    \end{itemize}
    Au total : $2$ intermédiaires et $6$ légères, soit $\dfrac{2}{8} = \dfrac{1}{4}$ d'$\text{ADN}$ intermédiaire et $\dfrac{6}{8} = \dfrac{3}{4}$ d'$\text{ADN}$ léger. La bande légère devient de plus en plus importante à chaque génération.
\end{enumerate}

### Problème 3 : Réplication et complémentarité d'un fragment d'ADN
\begin{enonce}
On étudie un fragment d'$\text{ADN}$ d'une cellule en phase de multiplication. L'un des deux brins de ce fragment a pour séquence :

\[
\text{Brin 1 : } \text{A-T-C-G-G-C-A-T-T-A-C-G}
\]

Ce fragment comporte donc $12$ paires de bases.
\begin{enumerate}
    \item Écrire la séquence du brin 2, complémentaire du brin 1.
    \item Dénombrer, dans cette molécule double brin, les paires A-T et les paires C-G. Calculer le nombre total de liaisons hydrogène.
    \item Lors de la réplication, ce fragment est dupliqué. Décrire les étapes du mécanisme (séparation des brins, rôle de brin matrice, action de l'ADN polymérase).
    \item Écrire la composition des deux molécules filles obtenues. Justifier qu'elles sont identiques à la molécule mère.
    \item En quoi cette réplication garantit-elle la conservation de l'information génétique au cours des divisions cellulaires ?
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item On applique la complémentarité A-T et C-G :
    \begin{itemize}
        \item Brin 1 : A-T-C-G-G-C-A-T-T-A-C-G
        \item Brin 2 : T-A-G-C-C-G-T-A-A-T-G-C
    \end{itemize}
    \item On compte les paires sur les $12$ positions :
    \begin{itemize}
        \item paires A-T (positions où l'on a A face à T ou T face à A) : positions $1, 2, 7, 8, 9, 10$, soit **$6$ paires A-T** ;
        \item paires C-G : positions $3, 4, 5, 6, 11, 12$, soit **$6$ paires C-G**.
    \end{itemize}
    Nombre total de liaisons hydrogène :
    \[
    N = 6 \times 2 + 6 \times 3 = 12 + 18 = 30 \text{ liaisons hydrogène}
    \]
    \item Étapes de la réplication :
    \begin{itemize}
        \item **Ouverture** de la double hélice : les liaisons hydrogène entre les deux brins sont rompues, les deux brins se **séparent**.
        \item Chaque brin sépare sert de **brin matrice** (modèle).
        \item L'enzyme **ADN polymérase** assemble, en face de chaque brin matrice, les nucléotides libres **complémentaires** (A face à T, C face à G), synthétisant ainsi un nouveau brin.
        \item On obtient deux molécules d'$\text{ADN}$, chacune formée d'un brin ancien (matrice) et d'un brin neuf : la réplication est **semi-conservative**.
    \end{itemize}
    \item Composition des deux molécules filles :
    \begin{itemize}
        \item Molécule fille 1 : brin 1 ancien (A-T-C-G-G-C-A-T-T-A-C-G) / brin neuf complémentaire (T-A-G-C-C-G-T-A-A-T-G-C).
        \item Molécule fille 2 : brin 2 ancien (T-A-G-C-C-G-T-A-A-T-G-C) / brin neuf complémentaire (A-T-C-G-G-C-A-T-T-A-C-G).
    \end{itemize}
    Comme chaque brin neuf est synthétisé par **complémentarité stricte** avec sa matrice, les deux molécules filles ont exactement la **même séquence** que la molécule mère : elles sont **identiques** entre elles et à la molécule de départ.
    \item Parce que chaque brin matrice impose la séquence du nouveau brin par complémentarité, les molécules filles reproduisent **fidèlement** la séquence des bases de la molécule mère. L'**ordre des nucléotides** (qui porte l'information génétique) est ainsi **transmis sans modification** de la cellule mère aux cellules filles à chaque division : l'information génétique est conservée.
\end{enumerate}
