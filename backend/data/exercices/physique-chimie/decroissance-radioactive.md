### Exercice 1 : Identifier le type de radioactivité
\begin{enonce}
Pour chacune des désintégrations suivantes, identifier le type de radioactivité ($\alpha$, $\beta^-$ ou $\beta^+$) :
\begin{enumerate}
    \item ${}^{226}_{88}\text{Ra} \rightarrow {}^{222}_{86}\text{Rn} + \text{X}$
    \item ${}^{14}_{6}\text{C} \rightarrow {}^{14}_{7}\text{N} + \text{X}$
    \item ${}^{30}_{15}\text{P} \rightarrow {}^{30}_{14}\text{Si} + \text{X}$
\end{enumerate}
\end{enonce}

\textbf{Solution :}
On applique les lois de conservation de Soddy : conservation du nombre de charge $Z$ et du nombre de masse $A$.
\begin{enumerate}
    \item $A$ : $226 = 222 + A_X$ donne $A_X = 4$ ; $Z$ : $88 = 86 + Z_X$ donne $Z_X = 2$. La particule X est ${}^{4}_{2}\text{He}$ : c'est une radioactivité $\alpha$.
    \item $A$ : $14 = 14 + A_X$ donne $A_X = 0$ ; $Z$ : $6 = 7 + Z_X$ donne $Z_X = -1$. La particule X est ${}^{0}_{-1}\text{e}$ : c'est une radioactivité $\beta^-$.
    \item $A$ : $30 = 30 + A_X$ donne $A_X = 0$ ; $Z$ : $15 = 14 + Z_X$ donne $Z_X = +1$. La particule X est ${}^{0}_{+1}\text{e}$ : c'est une radioactivité $\beta^+$.
\end{enumerate}

### Exercice 2 : Équilibrer une équation de désintégration
\begin{enonce}
Le noyau d'uranium ${}^{238}_{92}\text{U}$ est radioactif $\alpha$. Le noyau fils obtenu est à son tour radioactif $\beta^-$.

Écrire les deux équations de désintégration successives en précisant les noyaux produits.
\end{enonce}

\textbf{Solution :}
Désintégration $\alpha$ de l'uranium : il émet une particule ${}^{4}_{2}\text{He}$.
\[
{}^{238}_{92}\text{U} \rightarrow {}^{234}_{90}\text{Th} + {}^{4}_{2}\text{He}
\]
En effet $A = 238 - 4 = 234$ et $Z = 92 - 2 = 90$, ce qui correspond au thorium Th.

Le thorium ${}^{234}_{90}\text{Th}$ est radioactif $\beta^-$ : il émet une particule ${}^{0}_{-1}\text{e}$.
\[
{}^{234}_{90}\text{Th} \rightarrow {}^{234}_{91}\text{Pa} + {}^{0}_{-1}\text{e}
\]
Le nombre de masse reste $A = 234$ et $Z = 90 + 1 = 91$, ce qui correspond au protactinium Pa.

### Exercice 3 : De la demi-vie à la constante radioactive
\begin{enonce}
La demi-vie du cobalt 60 (${}^{60}_{27}\text{Co}$) est $t_{1/2} = 5{,}27\ \text{an}$.

Calculer sa constante radioactive $\lambda$ exprimée en $\text{an}^{-1}$ puis en $\text{s}^{-1}$.
\end{enonce}

\textbf{Solution :}
La demi-vie et la constante radioactive sont liées par $t_{1/2} = \dfrac{\ln 2}{\lambda}$, d'où :
\[
\lambda = \frac{\ln 2}{t_{1/2}} = \frac{0{,}693}{5{,}27} = 0{,}132\ \text{an}^{-1}
\]
Pour convertir en $\text{s}^{-1}$, on utilise $1\ \text{an} = 365{,}25 \times 24 \times 3600 \approx 3{,}16\times 10^{7}\ \text{s}$ :
\[
\lambda = \frac{0{,}132}{3{,}16\times 10^{7}} \approx 4{,}2\times 10^{-9}\ \text{s}^{-1}
\]

### Exercice 4 : Loi de décroissance et nombre de noyaux restants
\begin{enonce}
À l'instant $t = 0$, un échantillon contient $N_0 = 5{,}0\times 10^{20}$ noyaux radioactifs de demi-vie $t_{1/2} = 8{,}0\ \text{jours}$ (iode 131).
\begin{enumerate}
    \item Combien de noyaux reste-t-il au bout de $24\ \text{jours}$ ?
    \item Au bout de combien de demi-vies reste-t-il moins de $1\,\%$ des noyaux initiaux ?
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item La durée $24\ \text{jours}$ correspond à $n = \dfrac{24}{8{,}0} = 3$ demi-vies. À chaque demi-vie le nombre de noyaux est divisé par $2$ :
    \[
    N = \frac{N_0}{2^{n}} = \frac{5{,}0\times 10^{20}}{2^{3}} = \frac{5{,}0\times 10^{20}}{8} = 6{,}25\times 10^{19}\ \text{noyaux}
    \]
    \item On cherche $n$ tel que $\dfrac{1}{2^{n}} < 0{,}01$, soit $2^{n} > 100$. Comme $2^{6} = 64$ et $2^{7} = 128$, il faut $n = 7$ demi-vies, soit $56\ \text{jours}$.
\end{enumerate}

### Exercice 5 : Activité d'un échantillon
\begin{enonce}
Un échantillon contient $N = 2{,}0\times 10^{12}$ noyaux radioactifs de constante radioactive $\lambda = 3{,}6\times 10^{-3}\ \text{s}^{-1}$.

Calculer l'activité $a$ de l'échantillon, exprimée en becquerels (Bq).
\end{enonce}

\textbf{Solution :}
L'activité est le nombre de désintégrations par seconde, donnée par $a = \lambda N$ :
\[
a = \lambda N = 3{,}6\times 10^{-3} \times 2{,}0\times 10^{12} = 7{,}2\times 10^{9}\ \text{Bq}
\]
soit $a = 7{,}2\ \text{GBq}$. Un becquerel correspond à une désintégration par seconde.

### Exercice 6 : Datation au carbone 14
\begin{enonce}
Un morceau de bois prélevé sur un objet ancien présente une activité massique du carbone 14 égale à $0{,}25$ fois celle d'un bois vivant de référence. La demi-vie du carbone 14 est $t_{1/2} = 5{,}73\times 10^{3}\ \text{an}$.

Déterminer l'âge $t$ de l'objet.
\end{enonce}

\textbf{Solution :}
L'activité est proportionnelle au nombre de noyaux : $\dfrac{a}{a_0} = \dfrac{N}{N_0} = \e^{-\lambda t}$. Ici $\dfrac{a}{a_0} = 0{,}25 = \dfrac{1}{4} = \dfrac{1}{2^{2}}$.

Le rapport vaut $\dfrac{1}{2^{2}}$, ce qui correspond exactement à $2$ demi-vies :
\[
t = 2\,t_{1/2} = 2 \times 5{,}73\times 10^{3} = 1{,}15\times 10^{4}\ \text{an}
\]
On peut retrouver ce résultat par le calcul direct avec $\lambda = \dfrac{\ln 2}{t_{1/2}}$ :
\[
t = \frac{1}{\lambda}\ln\!\left(\frac{a_0}{a}\right) = \frac{t_{1/2}}{\ln 2}\,\ln 4 = \frac{t_{1/2}}{\ln 2}\times 2\ln 2 = 2\,t_{1/2}
\]

### Exercice 7 : Calcul d'une durée par la loi de décroissance
\begin{enonce}
Le radon 222 a une constante radioactive $\lambda = 2{,}1\times 10^{-6}\ \text{s}^{-1}$. À $t = 0$, un échantillon contient $N_0$ noyaux.

Déterminer la durée nécessaire pour que le nombre de noyaux soit réduit à $10\,\%$ de $N_0$.
\end{enonce}

\textbf{Solution :}
On part de la loi de décroissance $N(t) = N_0\,\e^{-\lambda t}$ avec $\dfrac{N}{N_0} = 0{,}10$ :
\[
\e^{-\lambda t} = 0{,}10 \implies -\lambda t = \ln(0{,}10) \implies t = \frac{\ln 10}{\lambda}
\]
\[
t = \frac{2{,}30}{2{,}1\times 10^{-6}} \approx 1{,}1\times 10^{6}\ \text{s}
\]
soit environ $13$ jours.

### Exercice 8 : Désintégration $\gamma$ accompagnant une émission
\begin{enonce}
Le cobalt 60 se désintègre selon :
\[
{}^{60}_{27}\text{Co} \rightarrow {}^{60}_{28}\text{Ni}^{*} + {}^{0}_{-1}\text{e}
\]
Le noyau de nickel est formé dans un état excité (noté ${}^{*}$), puis se désexcite.
\begin{enumerate}
    \item Préciser le type de radioactivité de la première étape.
    \item Écrire l'équation de désexcitation du noyau de nickel et nommer le rayonnement émis.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Une particule ${}^{0}_{-1}\text{e}$ est émise : il s'agit d'une radioactivité $\beta^-$. On vérifie les lois de Soddy : $A = 60$ conservé, $Z = 27 = 28 + (-1)$.
    \item Le noyau excité ${}^{60}_{28}\text{Ni}^{*}$ retourne à son état fondamental en libérant l'excès d'énergie sous forme d'un photon, sans modification de $A$ ni de $Z$ :
    \[
    {}^{60}_{28}\text{Ni}^{*} \rightarrow {}^{60}_{28}\text{Ni} + {}^{0}_{0}\gamma
    \]
    Le rayonnement émis est un rayonnement $\gamma$ (photon de haute énergie).
\end{enumerate}
