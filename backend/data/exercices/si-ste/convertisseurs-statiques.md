### Exercice 1 : Pont de Graetz alimentant une charge
\begin{enonce}
Un pont de Graetz à quatre diodes redresse la tension du réseau $u(t) = U_{max}\sin(\omega t)$, de valeur efficace $U = 220\ \text{V}$ et de fréquence $f = 50\ \text{Hz}$. On rappelle que $U_{max} = U\sqrt{2}$.



\begin{enumerate}
    \item Calculer la valeur maximale $U_{max}$ de la tension d'entrée.
    \item Donner l'expression de la valeur moyenne $U_{moy}$ de la tension redressée pour un redressement double alternance, puis la calculer.
    \item La fréquence de la tension redressée est-elle égale à $50\ \text{Hz}$ ? Justifier.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Valeur maximale de la tension du réseau :
$$U_{max} = U\sqrt{2} = 220\sqrt{2} \approx 311\ \text{V}.$$
    \item En redressement double alternance, les deux alternances sont exploitées :
$$U_{moy} = \dfrac{2\,U_{max}}{\pi} = \dfrac{2 \times 311}{\pi} \approx 198\ \text{V}.$$
    \item Non. En double alternance, l'alternance négative est « repliée » : la tension redressée présente deux bosses par période du réseau. Sa fréquence est donc doublée :
$$f_{redr} = 2f = 2 \times 50 = 100\ \text{Hz}.$$
\end{enumerate}

### Exercice 2 : Redressement simple alternance
\begin{enonce}
Une diode unique, en série avec une charge résistive, redresse la tension $u(t) = U_{max}\sin(\omega t)$ avec $U_{max} = 24\ \text{V}$.



\begin{enumerate}
    \item Quelles alternances sont transmises à la charge ? Quelles sont bloquées ?
    \item Donner l'expression de la valeur moyenne $U_{moy}$ en simple alternance, puis la calculer.
    \item Comparer cette valeur moyenne à celle qu'on obtiendrait avec un pont de Graetz alimenté par la même tension.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item La diode laisse passer les alternances positives ($u(t) > 0$) et bloque les alternances négatives (elle est alors polarisée en inverse).
    \item En redressement simple alternance :
$$U_{moy} = \dfrac{U_{max}}{\pi} = \dfrac{24}{\pi} \approx 7{,}6\ \text{V}.$$
    \item Avec un pont de Graetz : $U_{moy}' = \dfrac{2\,U_{max}}{\pi} = \dfrac{2 \times 24}{\pi} \approx 15{,}3\ \text{V}$. La valeur moyenne est exactement le double : le pont de Graetz exploite les deux alternances.
\end{enumerate}

### Exercice 3 : Hacheur série et variation de vitesse
\begin{enonce}
Un hacheur série est alimenté par une source continue $U = 48\ \text{V}$ et commande un moteur à courant continu. La fréquence de hachage est $f_{h} = 1\ \text{kHz}$.
\begin{enumerate}
    \item Calculer la période de hachage $T$.
    \item Le rapport cyclique est réglé à $\alpha = 0{,}25$. Calculer la durée de conduction $t_{on}$ de l'interrupteur.
    \item Calculer la tension moyenne $U_{moy}$ appliquée au moteur.
    \item Pour quelle valeur de $\alpha$ obtiendrait-on $U_{moy} = 36\ \text{V}$ ?
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Période de hachage :
$$T = \dfrac{1}{f_{h}} = \dfrac{1}{1000} = 1\ \text{ms}.$$
    \item Durée de conduction :
$$t_{on} = \alpha T = 0{,}25 \times 1\ \text{ms} = 0{,}25\ \text{ms}.$$
    \item Tension moyenne :
$$U_{moy} = \alpha\,U = 0{,}25 \times 48 = 12\ \text{V}.$$
    \item On isole $\alpha$ dans $U_{moy} = \alpha U$ :
$$\alpha = \dfrac{U_{moy}}{U} = \dfrac{36}{48} = 0{,}75.$$
\end{enumerate}

### Exercice 4 : Onduleur en pont (commande en créneaux)
\begin{enonce}
Un onduleur en pont (pont en H) est alimenté par une tension continue $U = 310\ \text{V}$. Les interrupteurs sont commandés pour fournir une tension alternative en créneaux de période $T = 20\ \text{ms}$.
\begin{enumerate}
    \item Quelles valeurs de tension la charge reçoit-elle pendant chacune des deux demi-périodes ?
    \item Calculer la fréquence $f$ de la tension de sortie.
    \item Quel rôle joue la commande MLI dans un onduleur réel ?
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Pendant la première demi-période, une paire d'interrupteurs ferme : la charge reçoit $+U = +310\ \text{V}$. Pendant la seconde demi-période, la paire opposée ferme : la charge reçoit $-U = -310\ \text{V}$.
    \item Fréquence de sortie :
$$f = \dfrac{1}{T} = \dfrac{1}{20 \times 10^{-3}} = 50\ \text{Hz}.$$
    \item La commande en créneaux est riche en harmoniques. La Modulation de Largeur d'Impulsion (MLI) découpe la sortie en impulsions de largeurs variables dont la valeur moyenne instantanée suit une loi sinusoïdale : après filtrage, on obtient une tension quasi sinusoïdale.
\end{enumerate}

### Exercice 5 : Identifier le convertisseur
\begin{enonce}
Pour chacune des situations, indiquer le convertisseur statique adapté et la conversion réalisée.
\begin{enumerate}
    \item Charger la batterie continue d'un téléphone à partir du secteur $220\ \text{V}$ alternatif.
    \item Régler la vitesse d'un moteur à courant continu alimenté par une batterie $24\ \text{V}$.
    \item Injecter sur le réseau alternatif l'énergie continue produite par des panneaux photovoltaïques.
    \item Faire varier l'éclairage d'une lampe branchée sur le secteur, sans changer la fréquence.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Un \textbf{redresseur} ($AC \rightarrow DC$) : il transforme le secteur alternatif en tension continue pour la batterie.
    \item Un \textbf{hacheur série} ($DC \rightarrow DC$) : en réglant le rapport cyclique $\alpha$, on règle $U_{moy} = \alpha U$, donc la vitesse du moteur.
    \item Un \textbf{onduleur} ($DC \rightarrow AC$) : il crée une tension alternative synchronisée sur le réseau à partir du continu des panneaux.
    \item Un \textbf{gradateur} ($AC \rightarrow AC$) : il conserve la fréquence $50\ \text{Hz}$ et règle la valeur efficace par l'angle de retard $\theta$ des thyristors.
\end{enumerate}
