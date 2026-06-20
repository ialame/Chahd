### Exercice 1 : Écriture sous forme algébrique
\begin{enonce}
Écrire sous forme algébrique le nombre complexe :
\[
Z = \frac{3-\iud}{1+2\iud}
\]
\end{enonce}

\textbf{Solution :}
On multiplie le numérateur et le dénominateur par le conjugué du dénominateur, soit $1-2\iud$ :
\[
Z = \frac{(3-\iud)(1-2\iud)}{(1+2\iud)(1-2\iud)} = \frac{3 - 6\iud - \iud + 2\iud^2}{1^2 + 2^2} = \frac{3 - 2 - 7\iud}{5} = \frac{1-7\iud}{5} = \frac{1}{5} - \frac{7}{5}\iud
\]

### Exercice 2 : Forme exponentielle
\begin{enonce}
Déterminer la forme exponentielle de :
\[
z = -\sqrt{3} + \iud
\]
\end{enonce}

\textbf{Solution :}
1. Calculons le module de $z$ :
   \[
   |z| = \sqrt{(-\sqrt{3})^2 + 1^2} = \sqrt{3+1} = \sqrt{4} = 2
   \]
2. Déterminons un argument $\theta$ de $z$ :
   \[
   \cos(\theta) = -\frac{\sqrt{3}}{2} \quad \text{et} \quad \sin(\theta) = \frac{1}{2}
   \]
   L'angle de l'intervalle $]-\pi, \pi]$ qui convient est $\theta = \frac{5\pi}{6}$.
La forme exponentielle de $z$ est donc :
\[
z = 2 e^{\iud\frac{5\pi}{6}}
\]

### Exercice 3 : Résolution d'une équation du second degré
\begin{enonce}
Résoudre dans $\Cnum$ l'équation suivante :
\[
z^2 - 2z + 5 = 0
\]
\end{enonce}

\textbf{Solution :}
C'est une équation du second degré à coefficients réels. Calculons le discriminant :
\[
\Delta = (-2)^2 - 4(1)(5) = 4 - 20 = -16
\]
Puisque $\Delta < 0$, l'équation admet deux racines complexes conjuguées :
\[
z_1 = \frac{-(-2) - \iud\sqrt{16}}{2} = \frac{2 - 4\iud}{2} = 1 - 2\iud
\]
\[
z_2 = \overline{z_1} = 1 + 2\iud
\]
L'ensemble des solutions est $S = \{1-2\iud, 1+2\iud\}$.

### Exercice 4 : Détermination d'ensemble de points
\begin{enonce}
Déterminer l'ensemble des points $M$ d'affixe $z$ tels que :
\[
|z - 2 + \iud| = 3
\]
\end{enonce}

\textbf{Solution :}
Soit $A$ le point d'affixe $z_A = 2 - \iud$.
L'équation s'écrit :
\[
|z - (2 - \iud)| = 3 \iff |z - z_A| = 3 \iff AM = 3
\]
L'ensemble des points $M$ est donc le cercle de centre $A(2, -1)$ et de rayon 3.

### Exercice 5 : Formules d'Euler et linéarisation
\begin{enonce}
Linéariser l'expression $\sin^3(x)$ à l'aide des formules d'Euler.
\end{enonce}

\textbf{Solution :}
En utilisant la formule d'Euler pour le sinus :
\[
\sin(x) = \frac{e^{\iud x} - e^{-\iud x}}{2\iud}
\]
Élevons au cube :
\[
\sin^3(x) = \left(\frac{e^{\iud x} - e^{-\iud x}}{2\iud}\right)^3 = \frac{(e^{\iud x} - e^{-\iud x})^3}{(2\iud)^3}
\]
Puisque $(2\iud)^3 = 8\iud^3 = -8\iud$. Développons le numérateur à l'aide de l'identité $(a-b)^3 = a^3 - 3a^2b + 3ab^2 - b^3$ :
\[
(e^{\iud x} - e^{-\iud x})^3 = e^{\iud 3x} - 3e^{\iud 2x}e^{-\iud x} + 3e^{\iud x}e^{-\iud 2x} - e^{-\iud 3x} = e^{\iud 3x} - 3e^{\iud x} + 3e^{-\iud x} - e^{-\iud 3x}
\]
Regroupons les termes de même fréquence :
\[
\sin^3(x) = \frac{(e^{\iud 3x} - e^{-\iud 3x}) - 3(e^{\iud x} - e^{-\iud x})}{-8\iud} = -\frac{1}{4} \left( \frac{e^{\iud 3x} - e^{-\iud 3x}}{2\iud} \right) + \frac{3}{4} \left( \frac{e^{\iud x} - e^{-\iud x}}{2\iud} \right)
\]
En réutilisant Euler pour repasser en sinus :
\[
\sin^3(x) = -\frac{1}{4}\sin(3x) + \frac{3}{4}\sin(x)
\]
