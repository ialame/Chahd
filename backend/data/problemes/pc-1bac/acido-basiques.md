### Problème 1 : Étude d'une solution d'acide chlorhydrique
\begin{enonce}
Pour préparer une solution $S$, on dissout $n = 5{,}0 \times 10^{-3}\ \text{mol}$ de chlorure d'hydrogène $\text{HCl}$ dans de l'eau, de façon à obtenir un volume total $V = 500\ \text{mL}$. L'acide chlorhydrique est un \textbf{acide fort} : il réagit \textbf{totalement} avec l'eau.
\begin{enumerate}
    \item Calculer la concentration $C$ de l'acide introduit.
    \item Écrire les demi-équations des couples $\text{HCl}/\text{Cl}^-$ et $\text{H}_3\text{O}^+/\text{H}_2\text{O}$, puis l'équation de la réaction de $\text{HCl}$ avec l'eau.
    \item L'acide étant fort, on a $[\text{H}_3\text{O}^+] = C$. En déduire le pH de la solution $S$.
    \item On prélève $V_1 = 50\ \text{mL}$ de $S$ que l'on complète avec de l'eau jusqu'à $V_2 = 500\ \text{mL}$. Calculer la nouvelle concentration puis le pH de la solution diluée. Commenter.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item La concentration est le rapport de la quantité de matière au volume (en litres) :
\[
C = \frac{n}{V} = \frac{5{,}0 \times 10^{-3}}{0{,}500} = 1{,}0 \times 10^{-2}\ \text{mol}\cdot\text{L}^{-1}
\]
    \item Demi-équations des deux couples :
\[
\begin{aligned}
\text{HCl} &= \text{Cl}^- + \text{H}^+ \\
\text{H}_2\text{O} + \text{H}^+ &= \text{H}_3\text{O}^+
\end{aligned}
\]
En additionnant, le proton $\text{H}^+$ se simplifie :
\[
\text{HCl} + \text{H}_2\text{O} \rightarrow \text{Cl}^- + \text{H}_3\text{O}^+
\]
    \item L'acide étant fort, $[\text{H}_3\text{O}^+] = C = 1{,}0 \times 10^{-2}\ \text{mol}\cdot\text{L}^{-1}$, donc :
\[
\text{pH} = -\log[\text{H}_3\text{O}^+] = -\log(10^{-2}) = 2
\]
    \item Le facteur de dilution est $F = \dfrac{V_2}{V_1} = \dfrac{500}{50} = 10$. La concentration en ions oxonium se conserve ($C_1 V_1 = C_2 V_2$) :
\[
C_2 = \frac{C \times V_1}{V_2} = \frac{10^{-2}}{10} = 10^{-3}\ \text{mol}\cdot\text{L}^{-1}, \qquad \text{pH}_2 = -\log(10^{-3}) = 3
\]
Le pH augmente d'une unité : en diluant 10 fois, la solution devient moins acide.
\end{enumerate}

### Problème 2 : Solution de soude et produit ionique de l'eau
\begin{enonce}
On dispose d'une solution de soude (hydroxyde de sodium $\text{NaOH}$) de concentration $C = 1{,}0 \times 10^{-2}\ \text{mol}\cdot\text{L}^{-1}$. La soude est une \textbf{base forte} : sa dissolution dans l'eau libère totalement des ions hydroxyde $\text{HO}^-$. À $25\,^{\circ}\text{C}$, le \textbf{produit ionique de l'eau} vaut $[\text{H}_3\text{O}^+] \times [\text{HO}^-] = K_e = 1{,}0 \times 10^{-14}$ (concentrations en $\text{mol}\cdot\text{L}^{-1}$).
\begin{enumerate}
    \item Écrire l'équation de dissolution de la soude dans l'eau. À quel couple acide/base de l'eau l'ion $\text{HO}^-$ appartient-il ?
    \item Donner la concentration $[\text{HO}^-]$ dans la solution.
    \item À l'aide du produit ionique, calculer $[\text{H}_3\text{O}^+]$, puis le pH. Conclure sur la nature de la solution.
    \item On dilue 100 fois cette solution. Calculer le nouveau pH. La solution est-elle plus ou moins basique ?
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item L'équation de dissolution s'écrit :
\[
\text{NaOH} \rightarrow \text{Na}^+ + \text{HO}^-
\]
L'ion $\text{HO}^-$ est la base du couple $\text{H}_2\text{O}/\text{HO}^-$ (l'eau y joue le rôle d'acide).
    \item La base étant forte, tout le $\text{NaOH}$ libère ses ions $\text{HO}^-$ :
\[
[\text{HO}^-] = C = 1{,}0 \times 10^{-2}\ \text{mol}\cdot\text{L}^{-1}
\]
    \item D'après le produit ionique :
\[
[\text{H}_3\text{O}^+] = \frac{K_e}{[\text{HO}^-]} = \frac{1{,}0 \times 10^{-14}}{1{,}0 \times 10^{-2}} = 1{,}0 \times 10^{-12}\ \text{mol}\cdot\text{L}^{-1}
\]
\[
\text{pH} = -\log(10^{-12}) = 12
\]
Comme $\text{pH} > 7$, la solution est \textbf{basique}.
    \item Après dilution par $100$, $[\text{HO}^-] = \dfrac{10^{-2}}{100} = 10^{-4}\ \text{mol}\cdot\text{L}^{-1}$, donc :
\[
[\text{H}_3\text{O}^+] = \frac{10^{-14}}{10^{-4}} = 10^{-10}\ \text{mol}\cdot\text{L}^{-1}, \qquad \text{pH} = -\log(10^{-10}) = 10
\]
Le pH passe de $12$ à $10$ : il diminue et se rapproche de $7$. La solution diluée est \textbf{moins basique}.
\end{enumerate}

### Problème 3 : Réaction acide-base et notion d'acide faible
\begin{enonce}
On étudie l'acide éthanoïque (vinaigre), de couple $\text{CH}_3\text{COOH}/\text{CH}_3\text{COO}^-$, et l'ammoniac, de couple $\text{NH}_4^+/\text{NH}_3$. On donne $\log 4 \approx 0{,}60$.

\textbf{Partie A — Réaction entre l'acide éthanoïque et l'ammoniac.}
\begin{enumerate}
    \item Parmi $\text{CH}_3\text{COOH}$ et $\text{NH}_3$, indiquer lequel joue le rôle d'acide et lequel joue celui de base.
    \item Écrire les deux demi-équations, puis l'équation de la réaction acido-basique entre ces deux espèces.
\end{enumerate}

\textbf{Partie B — L'acide éthanoïque est-il un acide fort ?}

On prépare une solution d'acide éthanoïque de concentration $C = 1{,}0 \times 10^{-2}\ \text{mol}\cdot\text{L}^{-1}$. Le pH-mètre indique $\text{pH} = 3{,}4$.
\begin{enumerate}
    \setcounter{enumi}{2}
    \item Calculer $[\text{H}_3\text{O}^+]$ dans cette solution.
    \item Quel pH obtiendrait-on pour un acide \textbf{fort} de même concentration $C$ ?
    \item Comparer $[\text{H}_3\text{O}^+]$ à $C$. Que peut-on en conclure sur la dissociation de l'acide éthanoïque dans l'eau ?
\end{enumerate}
\end{enonce}

\textbf{Solution :}

\textbf{Partie A.}
\begin{enumerate}
    \item L'acide éthanoïque $\text{CH}_3\text{COOH}$ peut céder un proton : c'est l'\textbf{acide}. L'ammoniac $\text{NH}_3$ peut capter un proton : c'est la \textbf{base}.
    \item Demi-équations (l'acide cède, la base capte) :
\[
\begin{aligned}
\text{CH}_3\text{COOH} &= \text{CH}_3\text{COO}^- + \text{H}^+ \\
\text{NH}_3 + \text{H}^+ &= \text{NH}_4^+
\end{aligned}
\]
En additionnant, le proton se simplifie :
\[
\text{CH}_3\text{COOH} + \text{NH}_3 \rightarrow \text{CH}_3\text{COO}^- + \text{NH}_4^+
\]
\end{enumerate}

\textbf{Partie B.}
\begin{enumerate}
    \setcounter{enumi}{2}
    \item $[\text{H}_3\text{O}^+] = 10^{-\text{pH}} = 10^{-3{,}4} \approx 4{,}0 \times 10^{-4}\ \text{mol}\cdot\text{L}^{-1}$.
    \item Pour un acide fort, $[\text{H}_3\text{O}^+] = C = 10^{-2}\ \text{mol}\cdot\text{L}^{-1}$, soit $\text{pH} = -\log(10^{-2}) = 2$.
    \item On compare : $[\text{H}_3\text{O}^+] = 4{,}0 \times 10^{-4}\ \text{mol}\cdot\text{L}^{-1}$ est bien \textbf{inférieure} à $C = 1{,}0 \times 10^{-2}\ \text{mol}\cdot\text{L}^{-1}$ (environ 25 fois plus petite). Toutes les molécules d'acide n'ont donc pas cédé leur proton : l'acide éthanoïque ne réagit que \textbf{partiellement} avec l'eau. C'est un \textbf{acide faible}, contrairement à un acide fort pour lequel on aurait $[\text{H}_3\text{O}^+] = C$ et $\text{pH} = 2$.
\end{enumerate}
