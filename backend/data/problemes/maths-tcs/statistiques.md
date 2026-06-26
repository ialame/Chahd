### Problème 1 : Étude complète d'une série de notes
\begin{enonce}
On a noté sur $20$ les copies des $25$ élèves d'une classe. La répartition est donnée par :

| Note $x_i$ | $6$ | $8$ | $10$ | $12$ | $14$ | $16$ | $18$ | Total |
|---|---|---|---|---|---|---|---|---|
| Effectif $n_i$ | $2$ | $3$ | $5$ | $6$ | $4$ | $3$ | $2$ | $25$ |

\begin{enumerate}
    \item Compléter le tableau avec les effectifs cumulés croissants (ECC).
    \item Calculer la moyenne $\bar{x}$ de la classe.
    \item Déterminer la médiane $M_e$, le mode et l'étendue.
    \item Calculer la variance $V$ puis l'écart-type $\sigma$ (arrondir à $0{,}01$).
    \item Interpréter les résultats obtenus.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Effectifs cumulés croissants :

| $x_i$ | $6$ | $8$ | $10$ | $12$ | $14$ | $16$ | $18$ |
|---|---|---|---|---|---|---|---|
| ECC | $2$ | $5$ | $10$ | $16$ | $20$ | $23$ | $25$ |

    \item Moyenne pondérée :
$$\bar{x} = \frac{6\times 2 + 8\times 3 + 10\times 5 + 12\times 6 + 14\times 4 + 16\times 3 + 18\times 2}{25} = \frac{12 + 24 + 50 + 72 + 56 + 48 + 36}{25} = \frac{298}{25} = 11{,}92.$$
    \item L'effectif total $N = 25$ est **impair** : la médiane est la valeur de rang $\dfrac{N+1}{2} = 13$. La première valeur dont l'ECC atteint $13$ est $12$ (ECC $= 16$), donc $M_e = 12$. Le mode est aussi $12$ (effectif maximal $6$). L'étendue vaut $18 - 6 = 12$.
    \item On utilise la formule de König-Huygens. La moyenne des carrés est :
$$\frac{1}{N}\sum n_i x_i^2 = \frac{2(36) + 3(64) + 5(100) + 6(144) + 4(196) + 3(256) + 2(324)}{25} = \frac{3828}{25} = 153{,}12.$$
D'où $V = 153{,}12 - (11{,}92)^2 = 153{,}12 - 142{,}0864 = 11{,}0336$, et $\sigma = \sqrt{11{,}0336} \approx 3{,}32.$
    \item La moyenne ($\approx 11{,}9$), la médiane ($12$) et le mode ($12$) sont très proches : la série est assez symétrique et bien centrée autour de $12$. L'écart-type d'environ $3{,}3$ points montre une dispersion modérée des notes autour de la moyenne.
\end{enumerate}

### Problème 2 : Comparaison de deux classes
\begin{enonce}
Deux classes ont passé le même contrôle. Les résultats (notes sur $20$) sont :

Classe A :

| Note $x_i$ | $9$ | $10$ | $11$ | $12$ | $13$ | Total |
|---|---|---|---|---|---|---|
| Effectif $n_i$ | $1$ | $3$ | $4$ | $3$ | $1$ | $12$ |

Classe B :

| Note $x_i$ | $6$ | $8$ | $10$ | $12$ | $14$ | $16$ | Total |
|---|---|---|---|---|---|---|---|
| Effectif $n_i$ | $2$ | $2$ | $2$ | $2$ | $2$ | $2$ | $12$ |

\begin{enumerate}
    \item Calculer la moyenne de chaque classe.
    \item Calculer l'écart-type de chaque classe (arrondir à $0{,}01$).
    \item Quelle classe est la plus homogène ? Justifier.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Classe A : $\bar{x}_A = \dfrac{9 + 30 + 44 + 36 + 13}{12} = \dfrac{132}{12} = 11.$ \\
    Classe B : $\bar{x}_B = \dfrac{12 + 16 + 20 + 24 + 28 + 32}{12} = \dfrac{132}{12} = 11.$ Les deux moyennes sont égales.
    \item Pour la classe A, la moyenne des carrés vaut :
$$\frac{81 + 300 + 484 + 432 + 169}{12} = \frac{1466}{12} \approx 122{,}17,$$
donc $V_A = 122{,}17 - 11^2 = 122{,}17 - 121 = 1{,}17$ et $\sigma_A = \sqrt{1{,}17} \approx 1{,}08.$ \\
    Pour la classe B :
$$\frac{2(36 + 64 + 100 + 144 + 196 + 256)}{12} = \frac{1592}{12} \approx 132{,}67,$$
donc $V_B = 132{,}67 - 121 = 11{,}67$ et $\sigma_B = \sqrt{11{,}67} \approx 3{,}42.$
    \item Les deux classes ont la même moyenne ($11$), mais $\sigma_A < \sigma_B$. La classe A est donc la plus **homogène** : ses notes sont resserrées autour de $11$, tandis que celles de la classe B sont beaucoup plus dispersées.
\end{enumerate}

### Problème 3 : Données continues regroupées en classes
\begin{enonce}
On a mesuré la taille (en cm) de $30$ élèves. Les données sont regroupées en classes :

| Taille (cm) | $[150,\,160[$ | $[160,\,170[$ | $[170,\,180[$ | $[180,\,190[$ | Total |
|---|---|---|---|---|---|
| Effectif $n_i$ | $4$ | $12$ | $9$ | $5$ | $30$ |

\begin{enumerate}
    \item Donner le centre $c_i$ de chaque classe.
    \item Calculer la taille moyenne $\bar{x}$ en utilisant les centres de classes.
    \item Déterminer la classe modale et la classe médiane.
    \item Calculer l'écart-type $\sigma$ (arrondir à $0{,}01$).
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Le centre d'une classe $[a,\,b[$ est $\dfrac{a+b}{2}$ : les centres sont $155,\ 165,\ 175,\ 185$.
    \item En remplaçant chaque classe par son centre :
$$\bar{x} = \frac{4\times 155 + 12\times 165 + 9\times 175 + 5\times 185}{30} = \frac{620 + 1980 + 1575 + 925}{30} = \frac{5100}{30} = 170 \text{ cm}.$$
    \item La classe modale est celle de plus grand effectif : $[160,\,170[$ (effectif $12$). Pour la classe médiane, les ECC sont $4,\ 16,\ 25,\ 30$ ; les rangs centraux ($15^\text{e}$ et $16^\text{e}$) tombent dans la classe $[160,\,170[$, qui est donc la classe médiane.
    \item Avec la formule de König-Huygens appliquée aux centres, la moyenne des carrés est :
$$\frac{4(155^2) + 12(165^2) + 9(175^2) + 5(185^2)}{30} = \frac{96100 + 326700 + 275625 + 171125}{30} = \frac{869550}{30} = 28985.$$
D'où $V = 28985 - 170^2 = 28985 - 28900 = 85$, et $\sigma = \sqrt{85} \approx 9{,}22 \text{ cm}.$ La taille moyenne est de $170$ cm, avec une dispersion d'environ $9{,}2$ cm.
\end{enumerate}
