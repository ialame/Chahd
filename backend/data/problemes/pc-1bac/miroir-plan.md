### Problème 1 : Le galvanomètre à miroir
\begin{enonce}
Pour mesurer de très faibles déviations, on fixe un petit miroir plan sur l'aiguille d'un appareil. Un faisceau lumineux fin frappe le miroir, et le rayon réfléchi forme un spot sur un écran gradué placé à $D = 1{,}20$ m du miroir. Au repos, le spot est à l'origine $O$ de l'écran et le rayon réfléchi y arrive perpendiculairement.


\begin{enumerate}
    \item Lorsque l'aiguille (donc le miroir) tourne d'un angle $\alpha$, de quel angle tourne le rayon réfléchi ? Justifier.
    \item Exprimer le déplacement $x$ du spot sur l'écran en fonction de $D$ et $\alpha$.
    \item On observe un déplacement $x = 12$ cm. Calculer l'angle $\alpha$ de rotation de l'aiguille.
    \item Pour de petits angles, montrer que $x \approx 2D\,\alpha$ (avec $\alpha$ en radians). Que vaut le facteur d'amplification si on remplaçait le faisceau par une simple aiguille rigide de $5$ cm ? Conclure sur l'intérêt du dispositif.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Le faisceau incident étant fixe, faire tourner le miroir de $\alpha$ fait tourner sa normale de $\alpha$ : l'angle d'incidence augmente de $\alpha$, et l'angle de réflexion aussi. Le rayon réfléchi tourne donc de $2\alpha$.
    \item Le rayon réfléchi tourne de $2\alpha$ par rapport à sa direction initiale (perpendiculaire à l'écran). Sur l'écran à la distance $D$, le spot se déplace de $x = D \, \tan(2\alpha)$.
    \item On a $\tan(2\alpha) = \dfrac{x}{D} = \dfrac{0{,}12}{1{,}20} = 0{,}10$, d'où $2\alpha = \arctan(0{,}10) \approx 5{,}71^\circ$ et $\alpha \approx 2{,}86^\circ$.
    \item Pour un petit angle, $\tan(2\alpha) \approx 2\alpha$ (en radians), donc $x \approx 2D\,\alpha$. L'écart est amplifié par le facteur $2D = 2{,}4$ m. Avec une aiguille rigide de $5$ cm, l'extrémité se déplacerait seulement de $\ell\,\alpha = 0{,}05\,\alpha$ : l'amplification serait $48$ fois plus faible. Le « bras de levier optique » $2D$, sans masse ni inertie, rend l'appareil extrêmement sensible.
\end{enumerate}

### Problème 2 : Deux miroirs et formation d'images multiples
\begin{enonce}
On associe deux miroirs plans $M_1$ et $M_2$ formant un angle $\theta$. Un objet ponctuel $A$ est placé entre les deux miroirs.



\textbf{Partie A — Images multiples.}
\begin{enumerate}
    \item Expliquer pourquoi un objet placé entre deux miroirs donne plusieurs images.
    \item Pour un angle $\theta$ tel que $\dfrac{360^\circ}{\theta}$ soit entier, le nombre d'images est $n = \dfrac{360^\circ}{\theta} - 1$. Calculer $n$ pour $\theta = 60^\circ$, puis pour $\theta = 90^\circ$.
    \item Que devient le nombre d'images quand $\theta \to 0$ (miroirs presque parallèles) ?
\end{enumerate}

\textbf{Partie B — Déviation d'un rayon.}
\begin{enumerate}
    \setcounter{enumi}{3}
    \item On a montré que les angles d'incidence vérifient $i_1 + i_2 = \theta$. En déduire que la déviation d'un rayon réfléchi successivement par $M_1$ puis $M_2$ vaut $2\theta$, indépendamment de l'incidence.
    \item Application : pour $\theta = 72^\circ$, calculer la déviation.
\end{enumerate}
\end{enonce}

\textbf{Solution :}

\textbf{Partie A.}
\begin{enumerate}
    \item L'image donnée par $M_1$ joue le rôle d'objet pour $M_2$, qui en donne une nouvelle image, laquelle se réfléchit à son tour... Les réflexions successives sur les deux miroirs engendrent plusieurs images, d'autant plus nombreuses que l'angle $\theta$ est petit.
    \item Pour $\theta = 60^\circ$ : $n = \dfrac{360^\circ}{60^\circ} - 1 = 6 - 1 = 5$ images. Pour $\theta = 90^\circ$ : $n = \dfrac{360^\circ}{90^\circ} - 1 = 4 - 1 = 3$ images.
    \item Quand $\theta \to 0$, $\dfrac{360^\circ}{\theta} \to \infty$ : le nombre d'images tend vers l'infini. Deux miroirs parallèles se renvoient les images indéfiniment (effet « couloir de miroirs »).
\end{enumerate}

\textbf{Partie B.}
\begin{enumerate}
    \setcounter{enumi}{3}
    \item La déviation sur $M_1$ est $180^\circ - 2i_1$, celle sur $M_2$ est $180^\circ - 2i_2$. La déviation totale est $360^\circ - 2(i_1 + i_2) = 360^\circ - 2\theta$, ce qui équivaut à un changement de direction de $2\theta$. Les incidences $i_1$ et $i_2$ ont disparu : la déviation $2\theta$ ne dépend que de l'angle des miroirs, pas de la façon dont le rayon arrive.
    \item Pour $\theta = 72^\circ$ : déviation $= 2\theta = 144^\circ$.
\end{enumerate}

### Problème 3 : Le périscope
\begin{enonce}
Un périscope simple est constitué de deux miroirs plans **parallèles**, inclinés chacun à $45^\circ$ et séparés verticalement d'une distance $e = 30$ cm. La lumière entre horizontalement par le haut, se réfléchit sur le miroir supérieur, descend verticalement, se réfléchit sur le miroir inférieur et ressort horizontalement.
\begin{enumerate}
    \item Faire un schéma du trajet d'un rayon horizontal traversant le périscope.
    \item Montrer que le rayon émergent est parallèle au rayon incident et de même sens. Quelle est la déviation totale ?
    \item De combien le rayon émergent est-il décalé par rapport au rayon incident ?
    \item L'image vue à travers le périscope est-elle inversée droite-gauche, comme dans un miroir unique ? Justifier en raisonnant sur le nombre de réflexions.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Le rayon horizontal frappe le miroir supérieur (incliné à $45^\circ$), est dévié à $90^\circ$ vers le bas, parcourt la distance verticale $e$, frappe le miroir inférieur (également à $45^\circ$) et est de nouveau dévié de $90^\circ$ pour ressortir horizontalement.
    \item Chaque miroir dévie le rayon de $90^\circ$, mais les deux rotations se font en **sens opposés** (l'une fait tourner vers le bas, l'autre vers le haut) : elles se compensent. La déviation totale est donc nulle et le rayon émergent est parallèle au rayon incident, de **même sens**. (Deux miroirs parallèles ne changent pas la direction de propagation.)
    \item Le rayon descend de la hauteur $e$ entre les deux miroirs : le rayon émergent est décalé latéralement (ici vers le bas) de $e = 30$ cm par rapport au rayon incident.
    \item Non : il y a un **nombre pair** de réflexions (deux). Un miroir unique inverse la droite et la gauche (image « non superposable », chiralité inversée) ; une seconde réflexion rétablit cette inversion. L'image vue dans le périscope est donc orientée correctement, sans inversion droite-gauche.
\end{enumerate}
