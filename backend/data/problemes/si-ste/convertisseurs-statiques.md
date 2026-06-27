### Problème 1 : Alimentation continue d'une carte électronique
\begin{enonce}
Une carte électronique doit être alimentée en continu à partir du réseau monophasé. La chaîne d'alimentation comporte un transformateur abaisseur suivi d'un pont de Graetz, puis d'un hacheur série qui ajuste la tension finale.

\textbf{Partie A — Redressement.} Le réseau d'entrée vaut $U_1 = 220\ \text{V}$ (efficace), $f = 50\ \text{Hz}$. Le transformateur a un rapport de transformation $m = \dfrac{U_2}{U_1} = 0{,}1$.

\begin{enumerate}
    \item Calculer la valeur efficace $U_2$ de la tension au secondaire du transformateur.
    \item En déduire la valeur maximale $U_{2max}$ de cette tension ($U_{2max} = U_2\sqrt{2}$).
    \item Le secondaire alimente un pont de Graetz. Calculer la valeur moyenne $U_{moy}$ de la tension redressée.
    \item Quelle est la fréquence de la tension redressée en sortie du pont ?
\end{enumerate}

\textbf{Partie B — Hachage.} La tension redressée et filtrée, supposée continue et égale à $U = 28\ \text{V}$, alimente un hacheur série qui doit fournir $U_{moy}' = 5\ \text{V}$ à la carte.

\begin{enumerate}
    \setcounter{enumi}{4}
    \item Calculer le rapport cyclique $\alpha$ nécessaire.
    \item La fréquence de hachage est $f_h = 20\ \text{kHz}$. Calculer la durée de conduction $t_{on}$ de l'interrupteur.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Tension efficace au secondaire :
$$U_2 = m \times U_1 = 0{,}1 \times 220 = 22\ \text{V}.$$
    \item Valeur maximale :
$$U_{2max} = U_2\sqrt{2} = 22\sqrt{2} \approx 31{,}1\ \text{V}.$$
    \item Valeur moyenne du pont de Graetz (double alternance) :
$$U_{moy} = \dfrac{2\,U_{2max}}{\pi} = \dfrac{2 \times 31{,}1}{\pi} \approx 19{,}8\ \text{V}.$$
    \item En double alternance la fréquence est doublée :
$$f_{redr} = 2f = 100\ \text{Hz}.$$
    \item Rapport cyclique du hacheur :
$$\alpha = \dfrac{U_{moy}'}{U} = \dfrac{5}{28} \approx 0{,}18.$$
    \item Période de hachage $T = \dfrac{1}{f_h} = \dfrac{1}{20\,000} = 50\ \mu\text{s}$, d'où :
$$t_{on} = \alpha T = 0{,}18 \times 50 \approx 9\ \mu\text{s}.$$
\end{enumerate}

### Problème 2 : Onduleur d'une installation photovoltaïque
\begin{enonce}
Une installation photovoltaïque fournit une tension continue $U = 310\ \text{V}$. Un onduleur en pont la transforme en une tension alternative destinée au réseau ($230\ \text{V}$ efficace, $50\ \text{Hz}$). On étudie d'abord la commande la plus simple (créneaux), puis on la compare à la MLI.



\textbf{Partie A — Commande en créneaux.}
\begin{enumerate}
    \item Tracer (décrire) l'allure de la tension de sortie : valeurs prises et durée de chaque demi-période pour une fréquence de $50\ \text{Hz}$.
    \item Calculer la période $T$ de la tension de sortie.
    \item Pour une tension en créneaux d'amplitude $U$ et de rapport cyclique $0{,}5$, la valeur efficace vaut $U_{eff} = U$. La comparer à la valeur efficace souhaitée de $230\ \text{V}$. Conclure sur l'intérêt de la commande en créneaux.
\end{enumerate}

\textbf{Partie B — Commande MLI.}
\begin{enumerate}
    \setcounter{enumi}{3}
    \item Expliquer comment la MLI permet d'obtenir une tension quasi sinusoïdale.
    \item Citer un avantage de la MLI pour l'alimentation d'un moteur asynchrone.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item La tension alterne entre $+U = +310\ \text{V}$ pendant la première demi-période et $-U = -310\ \text{V}$ pendant la seconde. À $50\ \text{Hz}$, chaque demi-période dure $\dfrac{T}{2} = 10\ \text{ms}$.
    \item Période de sortie :
$$T = \dfrac{1}{f} = \dfrac{1}{50} = 20\ \text{ms}.$$
    \item La valeur efficace du créneau est $U_{eff} = U = 310\ \text{V}$, supérieure aux $230\ \text{V}$ visés, et surtout la forme est très éloignée d'une sinusoïde (riche en harmoniques). La commande en créneaux est donc simple mais de mauvaise qualité : elle ne convient pas telle quelle pour le réseau.
    \item La MLI découpe chaque alternance en une série d'impulsions de largeurs variables : la valeur moyenne instantanée suit une loi sinusoïdale. Après filtrage, on obtient une tension quasi sinusoïdale de valeur efficace et de fréquence maîtrisées.
    \item Pour un moteur asynchrone, la MLI fournit un courant proche d'une sinusoïde : elle réduit les harmoniques, donc les pertes et les vibrations, et permet de régler finement la fréquence (donc la vitesse).
\end{enumerate}
