### Problème 1 : Étude de la décroissance de l'iode 131
\begin{enonce}
L'iode 131 (${}^{131}_{53}\text{I}$) est un noyau radioactif $\beta^-$ utilisé en médecine. Sa demi-vie est $t_{1/2} = 8{,}0\ \text{jours}$. On dispose à l'instant $t = 0$ d'un échantillon contenant $N_0 = 1{,}5\times 10^{18}$ noyaux d'iode 131.

On donne le tableau de mesures du nombre de noyaux restants $N$ en fonction du temps :
\begin{itemize}
    \item à $t = 0$ : $N = 1{,}50\times 10^{18}$ ;
    \item à $t = 8{,}0\ \text{jours}$ : $N = 0{,}75\times 10^{18}$ ;
    \item à $t = 16\ \text{jours}$ : $N = 0{,}375\times 10^{18}$ ;
    \item à $t = 24\ \text{jours}$ : $N = 0{,}188\times 10^{18}$.
\end{itemize}
\begin{enumerate}
    \item Écrire l'équation de la désintégration de l'iode 131, sachant que le noyau fils est un isotope du xénon Xe.
    \item Donner l'expression de la loi de décroissance radioactive $N(t)$ et calculer la constante radioactive $\lambda$ en $\text{jour}^{-1}$.
    \item Vérifier la cohérence des données du tableau avec la valeur de $t_{1/2}$.
    \item Calculer l'activité initiale $a_0$ de l'échantillon (en Bq).
    \item Déterminer la durée au bout de laquelle l'activité de l'échantillon n'est plus que de $5{,}0\,\%$ de sa valeur initiale.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Radioactivité $\beta^-$ : émission d'une particule ${}^{0}_{-1}\text{e}$. Les lois de Soddy imposent $A$ conservé ($131$) et $Z = 53 + 1 = 54$ pour le noyau fils, ce qui correspond au xénon Xe :
    \[
    {}^{131}_{53}\text{I} \rightarrow {}^{131}_{54}\text{Xe} + {}^{0}_{-1}\text{e}
    \]
    \item La loi de décroissance s'écrit :
    \[
    N(t) = N_0\,\e^{-\lambda t}
    \]
    La constante radioactive se déduit de la demi-vie par $t_{1/2} = \dfrac{\ln 2}{\lambda}$ :
    \[
    \lambda = \frac{\ln 2}{t_{1/2}} = \frac{0{,}693}{8{,}0} = 8{,}7\times 10^{-2}\ \text{jour}^{-1}
    \]
    \item À chaque intervalle de $8{,}0\ \text{jours}$, le nombre de noyaux est divisé par $2$ : $1{,}50 \rightarrow 0{,}75 \rightarrow 0{,}375 \rightarrow 0{,}188$ (en $10^{18}$). Le temps de demi-vie observé dans le tableau est bien $8{,}0\ \text{jours}$, en accord avec la valeur donnée.
    \item L'activité initiale vaut $a_0 = \lambda N_0$. On exprime $\lambda$ en $\text{s}^{-1}$ avec $8{,}0\ \text{jours} = 8{,}0 \times 24 \times 3600 = 6{,}91\times 10^{5}\ \text{s}$ :
    \[
    \lambda = \frac{0{,}693}{6{,}91\times 10^{5}} = 1{,}00\times 10^{-6}\ \text{s}^{-1}
    \]
    \[
    a_0 = \lambda N_0 = 1{,}00\times 10^{-6} \times 1{,}5\times 10^{18} = 1{,}5\times 10^{12}\ \text{Bq}
    \]
    \item L'activité suit la même loi que $N$ : $a(t) = a_0\,\e^{-\lambda t}$. On cherche $t$ tel que $\dfrac{a}{a_0} = 0{,}050$ :
    \[
    \e^{-\lambda t} = 0{,}050 \implies t = \frac{-\ln(0{,}050)}{\lambda} = \frac{\ln 20}{\lambda}
    \]
    En utilisant $\lambda = 8{,}7\times 10^{-2}\ \text{jour}^{-1}$ :
    \[
    t = \frac{3{,}00}{8{,}7\times 10^{-2}} \approx 34\ \text{jours}
    \]
\end{enumerate}

### Problème 2 : Datation d'un site préhistorique au carbone 14
\begin{enonce}
Le carbone 14 (${}^{14}_{6}\text{C}$) est produit en permanence dans la haute atmosphère et se désintègre selon une radioactivité $\beta^-$. Dans un organisme vivant, la proportion de ${}^{14}_{6}\text{C}$ reste constante. À sa mort, l'organisme cesse de renouveler son carbone et le carbone 14 décroît. La demi-vie du carbone 14 est $t_{1/2} = 5{,}73\times 10^{3}\ \text{an}$.

Lors de fouilles, on prélève un fragment d'os. On mesure une activité massique $a = 9{,}6\ \text{Bq}$ par gramme de carbone, alors qu'un échantillon vivant de référence présente une activité massique $a_0 = 13{,}6\ \text{Bq}$ par gramme de carbone.
\begin{enumerate}
    \item Écrire l'équation de désintégration du carbone 14, le noyau fils étant un isotope de l'azote N.
    \item Calculer la constante radioactive $\lambda$ du carbone 14 (en $\text{an}^{-1}$).
    \item Établir la relation donnant l'âge $t$ de l'échantillon en fonction de $a$, $a_0$ et $\lambda$.
    \item Calculer l'âge du fragment d'os.
    \item Expliquer pourquoi la datation au carbone 14 n'est plus fiable pour des objets âgés de plusieurs dizaines de milliers d'années.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Radioactivité $\beta^-$ : émission d'une particule ${}^{0}_{-1}\text{e}$. Conservation : $A = 14$ et $Z = 6 + 1 = 7$, soit l'azote N :
    \[
    {}^{14}_{6}\text{C} \rightarrow {}^{14}_{7}\text{N} + {}^{0}_{-1}\text{e}
    \]
    \item La constante radioactive vaut :
    \[
    \lambda = \frac{\ln 2}{t_{1/2}} = \frac{0{,}693}{5{,}73\times 10^{3}} = 1{,}21\times 10^{-4}\ \text{an}^{-1}
    \]
    \item L'activité massique est proportionnelle au nombre de noyaux de carbone 14, donc $a(t) = a_0\,\e^{-\lambda t}$. On en tire :
    \[
    \e^{-\lambda t} = \frac{a}{a_0} \implies -\lambda t = \ln\!\left(\frac{a}{a_0}\right) \implies t = \frac{1}{\lambda}\ln\!\left(\frac{a_0}{a}\right)
    \]
    \item Application numérique :
    \[
    t = \frac{1}{1{,}21\times 10^{-4}}\ln\!\left(\frac{13{,}6}{9{,}6}\right) = \frac{\ln(1{,}42)}{1{,}21\times 10^{-4}} = \frac{0{,}349}{1{,}21\times 10^{-4}}
    \]
    \[
    t \approx 2{,}9\times 10^{3}\ \text{an}
    \]
    Le fragment d'os est donc âgé d'environ $2900\ \text{ans}$.
    \item Au-delà de plusieurs dizaines de milliers d'années (soit plusieurs demi-vies), l'activité restante devient très faible et difficile à mesurer précisément : l'incertitude relative sur $a$ devient grande, ce qui rend l'âge calculé peu fiable. En pratique la méthode est limitée à environ $50\,000\ \text{ans}$.
\end{enumerate}

### Problème 3 : Famille radioactive et activité du radium
\begin{enonce}
Le radium ${}^{226}_{88}\text{Ra}$ est un noyau radioactif $\alpha$ de demi-vie $t_{1/2} = 1{,}60\times 10^{3}\ \text{an}$. On considère un échantillon de masse $m = 1{,}00\ \text{mg}$ de radium 226. On donne la masse molaire $M = 226\ \text{g}\cdot\text{mol}^{-1}$ et le nombre d'Avogadro $N_A = 6{,}02\times 10^{23}\ \text{mol}^{-1}$.
\begin{enumerate}
    \item Écrire l'équation de la désintégration du radium 226, sachant que le noyau fils est un isotope du radon Rn.
    \item Calculer le nombre $N_0$ de noyaux de radium contenus dans l'échantillon à $t = 0$.
    \item Calculer la constante radioactive $\lambda$ (en $\text{s}^{-1}$).
    \item En déduire l'activité initiale $a_0$ de l'échantillon (en Bq).
    \item Calculer le nombre de noyaux restants et l'activité de l'échantillon au bout de $4{,}80\times 10^{3}\ \text{an}$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Radioactivité $\alpha$ : émission d'une particule ${}^{4}_{2}\text{He}$. Conservation : $A = 226 - 4 = 222$ et $Z = 88 - 2 = 86$, soit le radon Rn :
    \[
    {}^{226}_{88}\text{Ra} \rightarrow {}^{222}_{86}\text{Rn} + {}^{4}_{2}\text{He}
    \]
    \item Le nombre de noyaux se déduit de la masse :
    \[
    N_0 = \frac{m}{M}\,N_A = \frac{1{,}00\times 10^{-3}}{226}\times 6{,}02\times 10^{23} = 2{,}66\times 10^{18}\ \text{noyaux}
    \]
    \item On convertit la demi-vie en secondes : $t_{1/2} = 1{,}60\times 10^{3} \times 3{,}16\times 10^{7} = 5{,}06\times 10^{10}\ \text{s}$. Alors :
    \[
    \lambda = \frac{\ln 2}{t_{1/2}} = \frac{0{,}693}{5{,}06\times 10^{10}} = 1{,}37\times 10^{-11}\ \text{s}^{-1}
    \]
    \item L'activité initiale vaut :
    \[
    a_0 = \lambda N_0 = 1{,}37\times 10^{-11} \times 2{,}66\times 10^{18} = 3{,}6\times 10^{7}\ \text{Bq}
    \]
    \item La durée $4{,}80\times 10^{3}\ \text{an}$ correspond à $n = \dfrac{4{,}80\times 10^{3}}{1{,}60\times 10^{3}} = 3$ demi-vies. Le nombre de noyaux est divisé par $2^{3} = 8$ :
    \[
    N = \frac{N_0}{8} = \frac{2{,}66\times 10^{18}}{8} = 3{,}3\times 10^{17}\ \text{noyaux}
    \]
    L'activité étant proportionnelle au nombre de noyaux, elle est aussi divisée par $8$ :
    \[
    a = \frac{a_0}{8} = \frac{3{,}6\times 10^{7}}{8} = 4{,}5\times 10^{6}\ \text{Bq}
    \]
\end{enumerate}
