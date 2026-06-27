### Problème 1 : Étude de la flore d'une prairie par quadrats
\begin{enonce}
Pour décrire la végétation d'une prairie, des élèves posent au hasard **20 quadrats** de $1\ \text{m}^2$. Pour trois espèces, ils notent le nombre de quadrats où l'espèce est présente et le nombre total de pieds dénombrés :

| Espèce | Quadrats de présence | Nombre total de pieds |
|---|---|---|
| Pâquerette | 18 | 120 |
| Trèfle | 12 | 90 |
| Plantain | 5 | 20 |

\begin{enumerate}
    \item Calculer la **fréquence** de chaque espèce.
    \item Calculer l'**abondance** (densité, en pieds/m²) de chaque espèce sur l'ensemble des 20 quadrats.
    \item Quelle espèce est la mieux répartie dans la prairie ? Quelle espèce est la plus dense là où elle est présente ? Justifier.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Avec $\text{Fréquence} = \dfrac{\text{quadrats de présence}}{20}\times 100$ :
    $$\text{Pâquerette} : \dfrac{18}{20}\times 100 = 90\,\% ;\quad \text{Trèfle} : \dfrac{12}{20}\times 100 = 60\,\% ;\quad \text{Plantain} : \dfrac{5}{20}\times 100 = 25\,\%.$$
    \item La surface totale est $20 \times 1 = 20\ \text{m}^2$, donc $\text{Abondance} = \dfrac{\text{nombre de pieds}}{20}$ :
    $$\text{Pâquerette} : \dfrac{120}{20} = 6 ;\quad \text{Trèfle} : \dfrac{90}{20} = 4{,}5 ;\quad \text{Plantain} : \dfrac{20}{20} = 1\ \text{pied/m}^2.$$
    \item L'espèce la mieux **répartie** est la **pâquerette** : c'est elle qui a la plus grande **fréquence** ($90\,\%$), donc on la retrouve presque partout. Pour la densité « là où elle pousse », on rapporte le nombre de pieds aux seuls quadrats de présence : pâquerette $120/18 \approx 6{,}7$ ; trèfle $90/12 = 7{,}5$ ; plantain $20/5 = 4$. C'est donc le **trèfle** qui est le plus **dense** dans les quadrats où il est présent, même s'il est moins fréquent que la pâquerette. Fréquence et abondance décrivent deux choses différentes : la **répartition** et le **nombre**.
\end{enumerate}

### Problème 2 : Détermination de l'aire minimale
\begin{enonce}
Avant de relever la flore d'une lande, un écologue construit une **courbe d'aire**. Il part d'un quadrat de $1\ \text{m}^2$ et double la surface à chaque étape :

| Surface (m²) | 1 | 2 | 4 | 8 | 16 | 32 | 64 | 128 |
|---|---|---|---|---|---|---|---|---|
| Nombre total d'espèces | 6 | 10 | 14 | 17 | 19 | 20 | 20 | 20 |

\begin{enumerate}
    \item Tracer l'allure de la courbe d'aire (nombre d'espèces en fonction de la surface) et décrire sa forme.
    \item Combien de **nouvelles espèces** apparaissent à chaque doublement de surface ? Que constate-t-on ?
    \item Déterminer l'**aire minimale** de ce milieu et justifier le choix.
    \item Un second milieu, une forêt, a une aire minimale de plusieurs centaines de $m^2$. Que peut-on en déduire en comparant les deux milieux ?
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item La courbe monte **rapidement au début**, puis sa pente diminue et elle finit par former un **palier horizontal** : c'est une courbe croissante qui se stabilise.
    \item Le nombre de nouvelles espèces par étape vaut : $+4$ (1→2), $+4$ (2→4), $+3$ (4→8), $+2$ (8→16), $+1$ (16→32), $+0$ (32→64), $+0$ (64→128). On constate que le **gain d'espèces diminue** à chaque doublement et devient **nul** : agrandir la surface n'apporte plus d'espèces nouvelles.
    \item L'**aire minimale** est la plus petite surface contenant la quasi-totalité des espèces ; elle correspond au début du palier. Ici, à partir de $32\ \text{m}^2$ on a 20 espèces et plus aucune n'apparaît : l'aire minimale est d'environ $32\ \text{m}^2$. (On peut déjà la situer vers $16$–$32\ \text{m}^2$, où le gain devient négligeable.)
    \item Plus un milieu est **riche et complexe**, plus son aire minimale est grande. La forêt, qui demande plusieurs centaines de $m^2$, est donc un milieu **plus diversifié et structuré** que la lande : il faut une surface bien plus grande pour y rencontrer la plupart des espèces.
\end{enumerate}

### Problème 3 : Répartition d'une espèce et facteurs écologiques
\begin{enonce}
Sur un versant de montagne, on suit la présence d'une plante, le **genêt**, le long d'un transect, en mesurant à chaque station l'altitude et la température moyenne :

| Station | Altitude (m) | Température moyenne (°C) | Présence du genêt |
|---|---|---|---|
| A | 600 | 14 | abondant |
| B | 900 | 12 | abondant |
| C | 1200 | 10 | rare |
| D | 1500 | 8 | absent |

\begin{enumerate}
    \item Quel type de technique d'étude utilise-t-on ici ? Pourquoi est-elle adaptée à ce milieu ?
    \item Décrire l'évolution de la présence du genêt le long du transect.
    \item Avec quels instruments mesure-t-on l'altitude et la température ?
    \item Peut-on affirmer que la température **seule** explique la disparition du genêt en altitude ? Justifier en t'appuyant sur les notions du cours.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item On utilise un **transect** : une ligne tracée à travers le milieu le long de laquelle on relève les espèces et les facteurs. Il est adapté parce que le versant présente un **gradient** d'altitude, donc une variation progressive des conditions (température).
    \item Le genêt est **abondant** en bas (stations A et B, 600–900 m), devient **rare** à 1200 m (station C), puis **absent** à 1500 m (station D) : sa présence **diminue quand l'altitude augmente** et que la température baisse.
    \item L'altitude se lit sur un **altimètre** (ou une carte topographique) ; la température se mesure avec un **thermomètre**.
    \item Non. Le cours rappelle que les facteurs écologiques **agissent ensemble** et de façon dépendante : la répartition d'une espèce résulte de la **combinaison de tous les facteurs** (température, mais aussi humidité, nature du sol, vent, exposition, concurrence d'autres plantes). La baisse de température accompagne la diminution du genêt, mais on ne peut pas conclure qu'elle en est la **seule** cause sans contrôler les autres facteurs.
\end{enumerate}
