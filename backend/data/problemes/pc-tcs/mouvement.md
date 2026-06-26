### Problème 1 : Voyage en plusieurs étapes
\begin{enonce}
Une voiture effectue un trajet en trois étapes, sans s'arrêter entre elles :
\begin{itemize}
    \item étape 1 : $d_1 = 40\,\text{km}$ parcourus en $t_1 = 0{,}5\,\text{h}$ ;
    \item étape 2 : $d_2 = 90\,\text{km}$ parcourus en $t_2 = 1\,\text{h}$ ;
    \item étape 3 : $d_3 = 20\,\text{km}$ parcourus en $t_3 = 0{,}5\,\text{h}$.
\end{itemize}
\begin{enumerate}
    \item Calculer la vitesse moyenne de chaque étape, en $\text{km/h}$.
    \item Calculer la vitesse moyenne sur l'ensemble du trajet, en $\text{km/h}$, puis en $\text{m/s}$.
    \item La vitesse moyenne du trajet est-elle égale à la moyenne des trois vitesses précédentes ? Expliquer.
    \item Pendant l'étape 2, le compteur de la voiture indique parfois $100\,\text{km/h}$. Cette indication est-elle une vitesse moyenne ou une vitesse instantanée ?
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item On applique $v = \dfrac{d}{\Delta t}$ à chaque étape :
    $$v_1 = \dfrac{40}{0{,}5} = 80\,\text{km/h} \ ; \quad v_2 = \dfrac{90}{1} = 90\,\text{km/h} \ ; \quad v_3 = \dfrac{20}{0{,}5} = 40\,\text{km/h}$$
    \item Distance totale : $d = 40 + 90 + 20 = 150\,\text{km}$ ; durée totale : $\Delta t = 0{,}5 + 1 + 0{,}5 = 2\,\text{h}$. D'où :
    $$v_{moy} = \dfrac{150}{2} = 75\,\text{km/h} = \dfrac{75}{3{,}6} \approx 20{,}83\,\text{m/s}$$
    \item La moyenne des trois vitesses vaut $\dfrac{80 + 90 + 40}{3} = 70\,\text{km/h}$, différent de $75\,\text{km/h}$. La vitesse moyenne du trajet **n'est pas** la moyenne des vitesses : elle se calcule avec la **distance totale** et la **durée totale**, car les étapes n'ont pas toutes la même durée.
    \item Le compteur indique la vitesse à un instant donné : c'est une vitesse **instantanée**.
\end{enumerate}

### Problème 2 : Roue de vélo
\begin{enonce}
Un cycliste roule en ligne droite à la vitesse constante $v = 18\,\text{km/h}$. Les roues de son vélo ont un rayon $R = 0{,}35\,\text{m}$ et roulent sans glisser : la vitesse d'un point de la jante, dans le référentiel lié à l'axe de la roue, est égale à la vitesse $v$ du vélo.
\begin{enumerate}
    \item Exprimer la vitesse du vélo en $\text{m/s}$.
    \item En utilisant $v = R\,\omega$, calculer la vitesse angulaire $\omega$ des roues (en $\text{rad/s}$).
    \item En déduire la période $T$ de rotation d'une roue, puis le nombre de tours effectués par seconde.
    \item Une valve est fixée sur le pneu à la distance $r = 0{,}30\,\text{m}$ de l'axe. Calculer sa vitesse linéaire dans le référentiel lié à l'axe.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item $v = 18 \div 3{,}6 = 5\,\text{m/s}$.
    \item De $v = R\,\omega$ on tire $\omega = \dfrac{v}{R} = \dfrac{5}{0{,}35} \approx 14{,}29\,\text{rad/s}$.
    \item La période est $T = \dfrac{2\pi}{\omega} = \dfrac{2\pi}{14{,}29} \approx 0{,}44\,\text{s}$. Le nombre de tours par seconde est $f = \dfrac{1}{T} \approx \dfrac{1}{0{,}44} \approx 2{,}3\,\text{tours/s}$.
    \item Tous les points de la roue ont la même vitesse angulaire $\omega$. Pour la valve :
    $$v_{valve} = r\,\omega = 0{,}30 \times 14{,}29 \approx 4{,}29\,\text{m/s}$$
    Elle est plus petite que la vitesse du bord de la jante ($5\,\text{m/s}$), car la valve est plus proche de l'axe.
\end{enumerate}

### Problème 3 : Objet lâché dans un train et nature du mouvement
\begin{enonce}
Un train se déplace en ligne droite à vitesse constante par rapport au sol. Un voyageur, assis dans le wagon, lâche sans vitesse initiale une petite balle qui tombe au pied de son siège. Le train parcourt $d = 60\,\text{km}$ en $\Delta t = 0{,}5\,\text{h}$.
\begin{enumerate}
    \item Décrire la trajectoire de la balle dans le **référentiel lié au wagon**. Quelle est sa forme ?
    \item Décrire la trajectoire de la balle pour un **observateur immobile sur le quai**. Quelle est sa forme ?
    \item Que conclure sur la trajectoire d'un même corps selon le référentiel ?
    \item Calculer la vitesse moyenne du train en $\text{km/h}$, puis en $\text{m/s}$.
    \item Le train roulant à vitesse constante, quelle est la nature de son mouvement ?
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Dans le référentiel du wagon, le voyageur et le siège sont immobiles : la balle tombe **verticalement** au pied du siège. Sa trajectoire est une **droite** verticale : elle est **rectiligne**.
    \item Pour l'observateur du quai, la balle est entraînée horizontalement par le train tout en tombant : elle décrit une **courbe** (une portion de parabole). Sa trajectoire est **curviligne**.
    \item La trajectoire d'un même corps **dépend du référentiel** choisi : rectiligne dans le wagon, curviligne depuis le quai. La trajectoire est donc une notion **relative**.
    \item $v_{moy} = \dfrac{d}{\Delta t} = \dfrac{60}{0{,}5} = 120\,\text{km/h} = \dfrac{120}{3{,}6} \approx 33{,}33\,\text{m/s}$.
    \item La valeur de la vitesse reste **constante** : le mouvement du train est **rectiligne uniforme**.
\end{enumerate}
