### Problème 1 : Étude d'un enregistrement sur table à coussin d'air
\begin{enonce}
On lance un mobile autoporteur de masse $m = 0{,}60$ kg sur une table à coussin d'air **horizontale**. Un dispositif enregistre les positions de son centre d'inertie toutes les $\tau = 60$ ms. On mesure les distances entre points successifs :
\begin{center}
$M_0M_1 = M_1M_2 = M_2M_3 = M_3M_4 = 2{,}4$ cm
\end{center}
et tous les points sont alignés. On prendra $g = 10$ N/kg.
\begin{enumerate}
    \item Décrire la trajectoire et l'évolution de la vitesse. En déduire la nature du mouvement du centre d'inertie.
    \item Calculer la valeur de la vitesse du centre d'inertie.
    \item Faire le bilan des forces s'exerçant sur le mobile (la table étant horizontale et sans frottement). Représenter ces forces.
    \item En utilisant le principe d'inertie, montrer la cohérence entre le mouvement observé et le bilan des forces. Déterminer l'intensité de la réaction $\vec{R}$ du coussin d'air.
    \item On incline légèrement la table. L'enregistrement montre alors des points de plus en plus espacés. Le mobile est-il encore pseudo-isolé ? Justifier sans calcul.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Les points sont **alignés** : la trajectoire est **rectiligne**. Ils sont **équidistants** : pendant des durées égales $\tau$, le mobile parcourt la même distance, donc la vitesse est **constante**. Le mouvement est **rectiligne uniforme**.
    \item $v = \dfrac{M_0M_1}{\tau} = \dfrac{2{,}4 \times 10^{-2}}{60 \times 10^{-3}} = 0{,}40$ m/s. La vitesse est la même entre tous les points puisqu'ils sont équidistants.
    \item Le mobile est soumis à deux forces : son poids $\vec{P}$ (vertical, vers le bas, $P = m\,g$) et la réaction $\vec{R}$ du coussin d'air (verticale, vers le haut, la table étant horizontale et sans frottement).
    \item Le centre d'inertie est en mouvement rectiligne uniforme : d'après le sens réciproque du principe d'inertie, les forces se compensent, $\vec{P} + \vec{R} = \vec{0}$. Le bilan (deux forces opposées) est donc cohérent avec le MRU observé : le mobile est pseudo-isolé. On en déduit $R = P = m\,g = 0{,}60 \times 10 = 6{,}0$ N, réaction verticale dirigée vers le haut.
    \item Non. Les points de plus en plus espacés montrent une vitesse **croissante** : le mouvement n'est plus uniforme. D'après le principe d'inertie, si la vitesse change, c'est que $\sum \vec{F} \neq \vec{0}$ : les forces ne se compensent plus (la composante du poids le long de la pente n'est plus équilibrée). Le mobile n'est plus pseudo-isolé.
\end{enumerate}

### Problème 2 : Convoi tracté à vitesse constante
\begin{enonce}
Un wagon de masse $m = 5{,}0$ tonnes est tiré sur une voie rectiligne et horizontale par un câble. Il avance en **mouvement rectiligne uniforme**. Il est soumis :
\begin{itemize}
    \item à son poids $\vec{P}$ ;
    \item à la réaction $\vec{R}$ des rails ;
    \item à la force de traction $\vec{T}$ du câble, horizontale, dirigée vers l'avant ;
    \item aux forces de frottement $\vec{f}$, horizontales, dirigées vers l'arrière.
\end{itemize}
On donne $g = 10$ N/kg et l'intensité de la traction $T = 1{,}2 \times 10^{4}$ N.
\begin{enumerate}
    \item Quelle relation vectorielle relie ces quatre forces ? Justifier par le principe d'inertie.
    \item Calculer l'intensité du poids $\vec{P}$.
    \item En projetant la relation vectorielle sur un axe vertical, déterminer l'intensité de la réaction $\vec{R}$ des rails.
    \item En projetant sur un axe horizontal, déterminer l'intensité $f$ des frottements.
    \item Le câble casse. En appliquant le principe d'inertie, expliquer pourquoi le wagon finit par s'arrêter (et n'est donc plus en MRU).
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Le wagon est en mouvement rectiligne uniforme : d'après le principe d'inertie, les forces se compensent : $\vec{P} + \vec{R} + \vec{T} + \vec{f} = \vec{0}$.
    \item $P = m\,g = 5{,}0 \times 10^{3} \times 10 = 5{,}0 \times 10^{4}$ N.
    \item Sur un axe vertical orienté vers le haut, seules $\vec{P}$ (vers le bas) et $\vec{R}$ (vers le haut) ont une composante : $R - P = 0$, donc $R = P = 5{,}0 \times 10^{4}$ N, dirigée vers le haut.
    \item Sur un axe horizontal orienté vers l'avant, seules $\vec{T}$ (vers l'avant) et $\vec{f}$ (vers l'arrière) interviennent : $T - f = 0$, donc $f = T = 1{,}2 \times 10^{4}$ N.
    \item Une fois le câble cassé, la traction $\vec{T}$ disparaît. Il reste les frottements $\vec{f}$ vers l'arrière, qui ne sont plus compensés : $\sum \vec{F} \neq \vec{0}$. La condition du principe d'inertie n'est plus remplie, donc le mouvement ne peut plus être uniforme : la vitesse diminue et le wagon finit par s'arrêter.
\end{enumerate}

### Problème 3 : Du principe d'inertie à l'inertie de la matière
\begin{enonce}
On étudie deux palets A et B identiques par la forme, lancés successivement sur une même piste horizontale sans frottement. Leurs masses valent $m_A = 0{,}20$ kg et $m_B = 1{,}0$ kg.
\begin{enumerate}
    \item On lance A et B avec la même vitesse. Les deux gardent un mouvement rectiligne uniforme. Ce résultat dépend-il de la masse ? Quelle loi le justifie ?
    \item Pour arrêter chaque palet, on applique une force opposée au mouvement. Lequel sera le plus difficile à arrêter ? Relier cette difficulté à la notion d'inertie.
    \item Définir précisément l'inertie d'un corps et indiquer la grandeur physique qui la mesure.
    \item Un élève affirme : « Le palet B se déplace, donc une force le pousse en permanence vers l'avant. » Réfuter cette affirmation à l'aide du principe d'inertie.
    \item Expliquer, à l'aide du principe d'inertie, pourquoi un passager non attaché est projeté vers l'avant lorsqu'une voiture freine brusquement.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Non, ce résultat ne dépend pas de la masse. Chaque palet est pseudo-isolé ($\vec{P}$ compensé par $\vec{R}$, frottements nuls), donc $\sum \vec{F} = \vec{0}$. Le **principe d'inertie** affirme alors que tout corps pseudo-isolé conserve son mouvement rectiligne uniforme, quelle que soit sa masse.
    \item Le palet **B** ($m_B = 1{,}0$ kg) sera le plus difficile à arrêter : sa masse plus grande lui confère une **inertie** plus grande, donc une plus grande résistance au changement de son mouvement.
    \item L'**inertie** est la propriété d'un corps de s'opposer aux changements de son mouvement (de sa vitesse, en direction comme en valeur). Elle est mesurée par la **masse** du corps : plus la masse est grande, plus l'inertie est grande.
    \item C'est faux. D'après le principe d'inertie, le mouvement rectiligne uniforme ne nécessite **aucune** force motrice : il correspond justement à $\sum \vec{F} = \vec{0}$. Le palet avance parce qu'il a été lancé et qu'aucune force ne s'oppose à son mouvement (pas de frottement) ; ce n'est pas le mouvement, mais son **changement**, qui exigerait une force.
    \item Avant le freinage, le passager est en mouvement rectiligne uniforme avec la voiture. Par inertie, il tend à **conserver** ce mouvement (même vitesse, même direction). Lorsque la voiture freine, elle ralentit, mais le passager, soumis à aucune force horizontale suffisante pour le ralentir avec elle, continue à avancer : il est projeté vers l'avant. C'est une manifestation directe du principe d'inertie (et le rôle de la ceinture est de fournir la force qui le ralentit avec le véhicule).
\end{enumerate}
