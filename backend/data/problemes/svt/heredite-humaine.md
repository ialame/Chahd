### Problème 1 : Étude d'une maladie autosomique récessive
\begin{enonce}
On étudie la transmission d'une maladie héréditaire dans une famille à l'aide de l'arbre généalogique décrit ci-dessous.
\begin{itemize}
    \item \textbf{Génération I} : le couple I-1 (homme sain) et I-2 (femme saine) ont trois enfants.
    \item \textbf{Génération II} : II-1 (fille saine), II-2 (garçon atteint) et II-3 (fille saine). Par ailleurs, II-1 épouse II-4 (homme sain venant d'une autre famille).
    \item \textbf{Génération III} : le couple II-1 × II-4 a deux enfants, III-1 (garçon sain) et III-2 (fille atteinte).
\end{itemize}
On note $N$ l'allèle normal et $a$ l'allèle responsable de la maladie.
\begin{enumerate}
    \item Montrer que l'allèle responsable de la maladie est **récessif**.
    \item Montrer que le gène est porté par un **autosome** et non par le chromosome $X$.
    \item Donner les génotypes des individus I-1, I-2, II-2 et III-2.
    \item Déterminer le génotype de II-1 (mère de III-2) en justifiant.
    \item Le couple II-1 × II-4 envisage d'avoir un autre enfant. Calculer, à l'aide d'un échiquier de croisement, la probabilité que cet enfant soit atteint.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Le couple I-1 et I-2 est **sain**, mais leur fils II-2 est **atteint**. L'allèle de la maladie était donc présent chez les deux parents sans s'exprimer : il ne s'exprime pas à l'état hétérozygote, il est donc **récessif**. L'allèle normal $N$ est **dominant**.
    \item Si le gène était porté par le chromosome $X$, le père d'une fille atteinte devrait lui transmettre un chromosome $X^a$ et serait donc lui-même atteint. Or III-2 est une **fille atteinte** dont le père II-4 est **sain** : c'est impossible pour un gène lié à l'$X$. Le gène est donc porté par un **autosome**.
    \item Les individus atteints sont homozygotes récessifs : II-2 $= a//a$ et III-2 $= a//a$. Les parents I-1 et I-2, sains mais ayant un enfant atteint, sont **hétérozygotes (porteurs sains)** : I-1 $= N//a$ et I-2 $= N//a$.
    \item II-1 est **saine** mais a une fille III-2 **atteinte** ($a//a$) : elle a donc transmis un allèle $a$, elle est forcément **hétérozygote** : II-1 $= N//a$ (porteuse saine). De même, le père II-4, sain avec une fille atteinte, est $N//a$.
    \item Le croisement est $N//a \times N//a$. Chaque parent produit deux gamètes équiprobables $N$ et $a$. L'échiquier de croisement donne :
    \begin{itemize}
        \item $\frac{1}{4}$ de $N//N$ : sain non porteur ;
        \item $\frac{2}{4}$ de $N//a$ : sain porteur ;
        \item $\frac{1}{4}$ de $a//a$ : **atteint**.
    \end{itemize}
    La probabilité que le prochain enfant soit atteint est :
    \[
    \frac{1}{4} = 0{,}25 \quad (25\,\%)
    \]
\end{enumerate}

### Problème 2 : Le daltonisme, maladie récessive liée au chromosome X
\begin{enonce}
Le daltonisme (anomalie de la vision des couleurs) est une maladie récessive dont le gène est porté par le chromosome $X$. On note $X^D$ l'allèle normal (dominant) et $X^d$ l'allèle du daltonisme. On étudie l'arbre généalogique suivant.
\begin{itemize}
    \item \textbf{Génération I} : le couple I-1 (homme **daltonien**) et I-2 (femme saine, non conductrice) ont une fille.
    \item \textbf{Génération II} : cette fille, II-1, est saine ; elle épouse II-2 (homme sain).
    \item \textbf{Génération III} : le couple II-1 × II-2 a deux enfants : III-1 (garçon **daltonien**) et III-2 (fille saine).
\end{itemize}
\begin{enumerate}
    \item Pourquoi le daltonisme touche-t-il plus souvent les hommes que les femmes ?
    \item Donner les génotypes de I-1 et I-2.
    \item En déduire, avec justification, le génotype de leur fille II-1.
    \item Montrer que le garçon daltonien III-1 a reçu son allèle $X^d$ de sa mère.
    \item Calculer, à l'aide d'un échiquier de croisement, la probabilité que le couple II-1 × II-2 ait un enfant daltonien, puis la probabilité d'avoir une fille daltonienne.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item L'homme ($XY$) ne possède qu'un seul chromosome $X$ : un seul allèle $X^d$ suffit pour qu'il soit daltonien, car le chromosome $Y$ ne porte pas l'allèle correspondant. La femme ($XX$) doit porter l'allèle $X^d$ sur ses **deux** chromosomes $X$ pour être daltonienne ; si elle n'en a qu'un, elle est seulement **conductrice (porteuse saine)**. C'est pourquoi la maladie touche **plus souvent les hommes**.
    \item L'homme daltonien I-1 a son unique $X$ porteur de l'allèle de la maladie : I-1 $= X^d Y$. La femme I-2, saine et non conductrice, est homozygote pour l'allèle normal : I-2 $= X^D X^D$.
    \item La fille II-1 reçoit un chromosome $X$ de chaque parent : un $X^D$ de sa mère ($X^D X^D$) et obligatoirement le $X^d$ de son père daltonien ($X^d Y$). Son génotype est donc $X^D X^d$ : elle est **saine mais conductrice**.
    \item Le père II-2 est sain : son génotype est $X^D Y$. Il transmet à ses fils son chromosome $Y$ (et non un $X$). Le garçon daltonien III-1 ($X^d Y$) a donc reçu le $Y$ de son père et le $X^d$ de sa **mère** II-1, qui est conductrice ($X^D X^d$). Cela confirme le génotype de II-1.
    \item Le croisement est $X^D X^d$ (mère conductrice) $\times$ $X^D Y$ (père sain). La mère produit deux ovules équiprobables ($X^D$, $X^d$) et le père deux spermatozoïdes équiprobables ($X^D$, $Y$). L'échiquier de croisement donne quatre combinaisons équiprobables :
    \begin{itemize}
        \item $X^D X^D$ : fille saine ;
        \item $X^D X^d$ : fille conductrice (saine) ;
        \item $X^D Y$ : garçon sain ;
        \item $X^d Y$ : garçon **daltonien**.
    \end{itemize}
    Un seul des quatre enfants possibles est atteint (un garçon). La probabilité d'avoir un enfant daltonien est :
    \[
    \frac{1}{4} = 0{,}25 \quad (25\,\%)
    \]
    Aucune des combinaisons ne donne de fille daltonienne ($X^d X^d$), car le père transmet toujours un $X^D$ à ses filles. La probabilité d'avoir une **fille daltonienne** est donc **nulle** ($0$).
\end{enumerate}

### Problème 3 : Déterminer le mode de transmission d'une maladie inconnue
\begin{enonce}
Une maladie héréditaire est étudiée dans une famille. On dispose de l'arbre généalogique décrit ci-dessous et l'on cherche à déterminer son mode de transmission.
\begin{itemize}
    \item \textbf{Génération I} : le couple I-1 (homme atteint) et I-2 (femme saine) ont deux enfants.
    \item \textbf{Génération II} : II-1 (fille saine) et II-2 (fille atteinte). II-1 épouse II-3 (homme sain).
    \item \textbf{Génération III} : le couple II-1 × II-3 a deux enfants, III-1 (garçon atteint) et III-2 (fille saine).
\end{itemize}
\begin{enumerate}
    \item L'allèle responsable de la maladie est-il dominant ou récessif ? Discuter les deux hypothèses à partir du couple II-1 × II-3.
    \item Le gène peut-il être porté par le chromosome $X$ ? Justifier à l'aide de l'individu III-1.
    \item Conclure sur le mode de transmission de la maladie (dominance et localisation).
    \item En notant $N$ l'allèle normal (dominant) et $a$ l'allèle de la maladie (récessif), donner les génotypes de II-1, II-3 et III-1.
    \item Calculer la probabilité que le prochain enfant du couple II-1 × II-3 soit atteint.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Examinons le couple II-1 (saine) × II-3 (sain), qui a un enfant atteint III-1.
    \begin{itemize}
        \item \textbf{Hypothèse récessive} : deux parents sains peuvent être tous deux porteurs et avoir un enfant atteint. Cette hypothèse est **compatible** avec ce couple.
        \item \textbf{Hypothèse dominante} : si la maladie était dominante, un enfant atteint aurait obligatoirement un parent atteint. Or les deux parents (II-1 et II-3) sont **sains** : cette hypothèse est **impossible**.
    \end{itemize}
    L'allèle responsable est donc **récessif**.
    \item Si le gène était porté par le chromosome $X$, le garçon atteint III-1 ($X^a Y$) recevrait son $X^a$ de sa mère II-1 (qui serait conductrice $X^D X^a$) et son $Y$ de son père : cela est **possible** pour un gène lié à l'$X$. Cependant, considérons la fille atteinte II-2 ($X^a X^a$) : elle devrait recevoir un $X^a$ de chacun de ses parents. Son père I-1 est atteint ($X^a Y$), ce qui est compatible, mais sa mère I-2 devrait être au moins conductrice. Aucune contradiction n'exclut formellement l'$X$ à elle seule ; toutefois, la maladie touche ici **aussi bien des filles que des garçons** sans excès masculin, ce qui est mieux expliqué par un gène **autosomique**. On retient donc l'hypothèse la plus simple et la plus cohérente : un gène **autosomique**.
    \item La maladie est donc transmise par un allèle **récessif** porté par un **autosome** (maladie autosomique récessive).
    \item Les individus atteints sont homozygotes récessifs : III-1 (atteint) $= a//a$. Le couple parental II-1 (saine) et II-3 (sain) a un enfant atteint : ils ont chacun transmis un allèle $a$, ils sont donc tous deux **hétérozygotes porteurs sains** : II-1 $= N//a$ et II-3 $= N//a$.
    \item Le croisement $N//a \times N//a$ donne, par l'échiquier de croisement : $\frac{1}{4}\,N//N$ (sain), $\frac{2}{4}\,N//a$ (sain porteur) et $\frac{1}{4}\,a//a$ (atteint). La probabilité que le prochain enfant soit atteint est :
    \[
    \frac{1}{4} = 0{,}25 \quad (25\,\%)
    \]
\end{enumerate}
