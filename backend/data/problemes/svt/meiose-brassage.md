### Problème 1 : Suivi d'une cellule au cours de la méiose
\begin{enonce}
On étudie la méiose chez une espèce animale dont la garniture chromosomique est $2n = 4$. La cellule mère (cellule germinale) contient donc deux paires de chromosomes homologues, notées la paire 1 (chromosomes longs) et la paire 2 (chromosomes courts). On désigne par $C^P$ un chromosome d'origine paternelle et par $C^M$ un chromosome d'origine maternelle.
\begin{enumerate}
    \item Avant le début de la méiose, la cellule subit une réplication de l'ADN. Indiquer ce que devient chaque chromosome après cette étape.
    \item Décrire les événements principaux de la prophase I et préciser ce qu'est un bivalent.
    \item À l'anaphase I, expliquer ce qui migre vers chaque pôle. En déduire la garniture des deux cellules obtenues à la fin de la première division.
    \item À l'anaphase II, expliquer ce qui migre vers chaque pôle, puis donner la garniture des quatre gamètes finaux.
    \item En tenant compte de la disposition au hasard des bivalents, déterminer le nombre de types de gamètes possibles et les écrire en utilisant les notations $C^P$ et $C^M$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item La réplication de l'ADN dédouble la molécule d'ADN de chaque chromosome : après cette étape, chaque chromosome est constitué de **deux chromatides sœurs identiques** reliées par un centromère. Le nombre de chromosomes reste $2n = 4$, mais la quantité d'ADN a doublé.
    \item En **prophase I**, les chromosomes homologues s'**apparient** deux à deux : chaque paire forme un **bivalent** (ou tétrade), structure constituée de **deux chromosomes homologues** (soit quatre chromatides). C'est aussi le moment où peuvent se produire les **crossing-over** entre chromatides homologues.
    \item À l'**anaphase I**, ce sont les **chromosomes homologues** de chaque bivalent qui se séparent et migrent vers les pôles opposés ; chaque chromosome garde ses deux chromatides. Chacune des deux cellules filles reçoit un chromosome de chaque paire, soit $n = 2$ chromosomes (à deux chromatides) : la première division est **réductionnelle** ($2n \rightarrow n$).
    \item À l'**anaphase II**, ce sont les **deux chromatides** de chaque chromosome qui se séparent et migrent vers les pôles opposés. Chaque cellule fille reçoit alors $n = 2$ chromosomes à une seule chromatide. On obtient au total **quatre gamètes** haploïdes ($n = 2$).
    \item À l'anaphase I, chaque bivalent se répartit **indépendamment** des autres. Avec $n = 2$ paires, le nombre de combinaisons est $2^n = 2^2 = 4$ types de gamètes :
    \begin{itemize}
        \item $(C_1^P,\ C_2^P)$
        \item $(C_1^P,\ C_2^M)$
        \item $(C_1^M,\ C_2^P)$
        \item $(C_1^M,\ C_2^M)$
    \end{itemize}
    Ce résultat illustre le **brassage interchromosomique**.
\end{enumerate}

### Problème 2 : Les deux brassages et la diversité des gamètes
\begin{enonce}
On considère un individu de génotype connu, hétérozygote pour quatre gènes. Deux de ces gènes, $A/a$ et $B/b$, sont portés par une même paire de chromosomes (gènes **liés**), de génotype $\dfrac{A\ B}{a\ b}$. Les deux autres gènes, $D/d$ et $E/e$, sont portés par deux autres paires de chromosomes **indépendantes**.
\begin{enumerate}
    \item Pour la paire portant $A/a$ et $B/b$, indiquer les gamètes obtenus **en l'absence** de crossing-over. Comment sont-ils qualifiés ?
    \item Indiquer les gamètes supplémentaires obtenus **en cas** de crossing-over entre $A$ et $B$. Nommer le brassage responsable et la phase de la méiose concernée.
    \item En ne considérant que le brassage interchromosomique (3 paires de chromosomes), combien de types de gamètes différents l'individu peut-il produire ?
    \item Expliquer pourquoi les types recombinés issus du crossing-over sont généralement **moins nombreux** que les types parentaux dans la descendance.
    \item Conclure sur le rôle combiné de la méiose et de la fécondation dans la diversité génétique des individus.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item En l'absence de crossing-over, les allèles restent associés comme sur les chromosomes parentaux : on obtient les gamètes AB et ab. Ce sont les gamètes de type **parental**.
    \item Un crossing-over entre les locus $A$ et $B$ échange des segments entre chromatides homologues et crée des chromosomes recombinés : apparaissent alors les gamètes Ab et aB, de type **recombiné**. C'est le **brassage intrachromosomique**, qui se produit en **prophase I** (lors de l'appariement des homologues).
    \item En considérant les 3 paires de chromosomes qui se répartissent indépendamment à l'anaphase I, le nombre de types de gamètes est :
    \[
    2^n = 2^3 = 8 \text{ types de gamètes.}
    \]
    \item Le crossing-over entre deux gènes liés est un événement **relativement rare** : il ne survient qu'au cours d'une fraction des méioses, et uniquement si le point d'échange se situe **entre** les deux locus. La majorité des gamètes conservent donc l'association parentale des allèles ; les types recombinés restent **minoritaires**.
    \item La **méiose** produit, grâce au **brassage interchromosomique** (répartition indépendante des homologues, $2^n$ combinaisons) et au **brassage intrachromosomique** (crossing-over), un très grand nombre de gamètes génétiquement différents. La **fécondation** réunit ensuite au hasard un gamète mâle et un gamète femelle, multipliant encore les combinaisons possibles. La méiose et la fécondation sont donc deux mécanismes complémentaires à l'origine de l'immense **diversité génétique** des individus d'une même espèce (tout en maintenant constant le nombre de chromosomes au fil des générations).
\end{enumerate}

### Problème 3 : Comparaison méiose / mitose et bilan chromosomique
\begin{enonce}
On dispose de deux cellules d'un même organisme dont la garniture est $2n = 8$. La cellule X entre en **mitose**, la cellule Y entre en **méiose**.
\begin{enumerate}
    \item Pour chacune des deux cellules, indiquer le nombre de divisions, le nombre de cellules filles obtenues et leur garniture chromosomique.
    \item Préciser, pour chaque cas, si les cellules filles sont génétiquement identiques ou différentes de la cellule mère, et pourquoi.
    \item À l'anaphase de mitose, ce sont les chromatides qui se séparent. Comparer avec ce qui se sépare à l'anaphase I de méiose.
    \item Un gamète de l'organisme contient $n = 4$ chromosomes. Justifier que la fécondation rétablit la garniture $2n = 8$ et explique la **stabilité du caryotype** au cours des générations.
    \item En considérant le seul brassage interchromosomique, combien de types de gamètes la cellule Y peut-elle engendrer ?
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Bilan des deux processus :
    \begin{itemize}
        \item **Mitose (cellule X)** : $1$ division $\rightarrow 2$ cellules filles **diploïdes** ($2n = 8$).
        \item **Méiose (cellule Y)** : $2$ divisions successives $\rightarrow 4$ cellules filles **haploïdes** ($n = 4$).
    \end{itemize}
    \item En **mitose**, les cellules filles sont **génétiquement identiques** à la cellule mère : la réplication produit des chromatides identiques, réparties également, sans brassage. En **méiose**, les cellules filles sont **génétiquement différentes** de la cellule mère et entre elles, en raison des brassages inter- et intrachromosomique.
    \item À l'**anaphase de mitose**, ce sont les **deux chromatides** de chaque chromosome qui se séparent. À l'**anaphase I de méiose**, ce sont au contraire les **chromosomes homologues** entiers (chacun à deux chromatides) qui se séparent : c'est cette différence qui rend la première division **réductionnelle** ($2n \rightarrow n$). La séparation des chromatides en méiose ne se produit qu'à l'**anaphase II**.
    \item Chaque gamète est haploïde ($n = 4$). La fécondation réunit un gamète mâle ($n = 4$) et un gamète femelle ($n = 4$) :
    \[
    n + n = 4 + 4 = 8 = 2n.
    \]
    La cellule-œuf retrouve donc la garniture **diploïde** $2n = 8$. La réduction de moitié par la méiose, compensée par le doublement à la fécondation, assure la **stabilité du caryotype** de l'espèce d'une génération à l'autre.
    \item Avec $n = 4$ paires se répartissant indépendamment :
    \[
    2^n = 2^4 = 16 \text{ types de gamètes (brassage interchromosomique seul).}
    \]
\end{enumerate}
