<div class="my-5 rounded-lg px-4 py-2.5 text-white font-bold" style="background:#1F4E79">Exercice 1 <span class="font-normal text-white/80 text-sm">(7,75 points)</span></div>

\textbf{Partie I} \\
On considère la fonction $f$ définie sur l'intervalle $I = [0, +\infty[$ par :
$$ f(0) = 0 \quad \text{et} \quad f(x) = \frac{x^2 \ln x}{x^2 + 1} \quad \text{si } x \in \,]0, +\infty[ $$
Et soit $(C)$ la courbe représentative de la fonction $f$ dans un repère orthonormé $(O, \vec{i}, \vec{j})$.

**1.a)** Étudier la continuité de $f$ à droite en $0$.

**1.b)** Étudier la dérivabilité de $f$ à droite en $0$ puis interpréter graphiquement le résultat obtenu.

**1.c)** Calculer $\lim\limits_{x \to +\infty} f(x)$ et $\lim\limits_{x \to +\infty} \dfrac{f(x)}{x}$ puis interpréter graphiquement le résultat obtenu.

**2)** Soit $\varphi$ la fonction définie sur $]0, +\infty[$ par : $\varphi(x) = x^2 + 1 + 2\ln x$.

**2.a)** Dresser le tableau de variations de $\varphi$.

**2.b)** Montrer que l'équation $\varphi(x) = 0$ admet une solution unique $\beta$ appartenant à l'intervalle $\left]\dfrac{1}{2}, \dfrac{1}{\sqrt{3}}\right[$ (On donne $\ln 2 \simeq 0{,}7$ et $\ln 3 \simeq 1{,}1$).

**2.c)** Montrer que : $f(\beta) = -\dfrac{\beta^2}{2}$.

**3.a)** Montrer que $f$ est dérivable sur $]0, +\infty[$ et que $\forall x \in \,]0, +\infty[$, $f'(x) = \dfrac{x\,\varphi(x)}{(x^2 + 1)^2}$.

**3.b)** Donner le tableau de variations de $f$.

**3.c)** Montrer que $\dfrac{1}{\beta}$ est l'unique solution de l'équation $f(x) = \dfrac{1}{2}$ sur $]\beta, +\infty[$.

**3.d)** Montrer que la droite d'équation $y = \beta x - \dfrac{1}{2}$ est la tangente à la courbe $(C)$ au point d'abscisse $\dfrac{1}{\beta}$.

**4)** Représenter graphiquement la courbe $(C)$ dans le repère $(O, \vec{i}, \vec{j})$ (On admet que la courbe $(C)$ possède deux points d'inflexion).

[figure : repère orthonormé $(O,\vec{i},\vec{j})$ pour tracer $(C)$]

\textbf{Partie II} \\
On pose $J = \,]\sqrt{3}, 2]$ et $\alpha = \dfrac{1}{\beta}$.

Soit $g$ la fonction définie sur $]0, +\infty[$ par : $g(x) = \sqrt{e^{1 + \frac{1}{x^2}}}$.

**1.a)** Étudier les variations de $g$.

**1.b)** Montrer que : $(\forall x \in J)$ ; $\sqrt{3} < g(x) < 2$ (On donne $\sqrt{3} \simeq 1{,}73$, $e^{\frac{2}{3}} \simeq 1{,}95$ et $e^{\frac{5}{8}} \simeq 1{,}87$).

**2.a)** En utilisant le résultat de la question I.3.c), montrer que : $g(\alpha) = \alpha$.

**2.b)** Montrer que : $(\forall x \in J)$ ; $|g'(x)| \le \dfrac{2}{3\sqrt{3}}$.

**2.c)** En déduire que : $(\forall x \in J)$ ; $|g(x) - \alpha| \le \dfrac{2}{3\sqrt{3}}|x - \alpha|$.

**3)** On considère la suite $(x_n)_{n \in \N}$ définie par :
$$ x_0 = \frac{7}{4} \quad \text{et pour tout } n \in \N, \quad x_{n+1} = g(x_n) $$

**3.a)** Montrer que : $(\forall n \in \N)$ ; $x_n \in J$.

**3.b)** Montrer par récurrence que : $(\forall n \in \N)$ ; $|x_n - \alpha| \le \left(\dfrac{2}{3\sqrt{3}}\right)^n |x_0 - \alpha|$.

**3.c)** En déduire que la suite $(x_n)_{n \in \N}$ converge vers $\alpha$.

<div class="my-5 rounded-lg px-4 py-2.5 text-white font-bold" style="background:#1F4E79">Exercice 2 <span class="font-normal text-white/80 text-sm">(2,25 points)</span></div>

On considère la suite numérique $(u_n)_{n \ge 2}$ définie par : $(\forall n \ge 2)$ ; $u_n = \dfrac{1}{n}\sum\limits_{k=1}^{n-1} \ln\left(\dfrac{k}{n}\right)$.

**1)** Soit $n$ un entier naturel supérieur ou égal à $2$.

**1.a)** Montrer que pour tout entier $k \in \{1, 2, \ldots, n-1\}$ et pour tout réel $x \in \left[\dfrac{k}{n}, \dfrac{k+1}{n}\right]$, on a : $\ln\left(\dfrac{k}{n}\right) \le \ln(x) \le \ln\left(\dfrac{k+1}{n}\right)$.

**1.b)** En déduire que : $\forall k \in \{1, 2, \ldots, n-1\}$ ; $\dfrac{1}{n}\ln\left(\dfrac{k}{n}\right) \le \displaystyle\int_{\frac{k}{n}}^{\frac{k+1}{n}} \ln(x)\,\mathrm{d}x \le \dfrac{1}{n}\ln\left(\dfrac{k+1}{n}\right)$.

**2.a)** Montrer que : $(\forall n \ge 2)$ ; $\dfrac{1}{n}\sum\limits_{k=1}^{n-1}\ln\left(\dfrac{k}{n}\right) \le \displaystyle\int_{\frac{1}{n}}^{1} \ln(x)\,\mathrm{d}x \le \dfrac{1}{n}\sum\limits_{k=2}^{n}\ln\left(\dfrac{k}{n}\right)$.

**2.b)** En déduire que : $(\forall n \ge 2)$ ; $u_n \le \displaystyle\int_{\frac{1}{n}}^{1} \ln(x)\,\mathrm{d}x \le u_n - \dfrac{1}{n}\ln\left(\dfrac{1}{n}\right)$.

**2.c)** Montrer que : $(\forall n \ge 2)$ ; $-1 + \dfrac{1}{n} \le u_n \le -1 + \dfrac{1}{n} - \dfrac{1}{n}\ln\left(\dfrac{1}{n}\right)$.

**2.d)** Déterminer $\lim\limits_{n \to +\infty} u_n$.

<div class="my-5 rounded-lg px-4 py-2.5 text-white font-bold" style="background:#1F4E79">Exercice 3 <span class="font-normal text-white/80 text-sm">(3,5 points)</span></div>

Soit $\theta \in [0, \pi[$.

\textbf{Partie I} \\
On considère dans l'ensemble des nombres complexes $\C$ l'équation $(E_\theta)$ d'inconnue $z$ :
$$ (E_\theta) : z^2 + (1 - i)e^{i\theta} z - i e^{i2\theta} = 0 $$

**1.a)** Vérifier que : $(E_\theta) \Leftrightarrow \left(2z + (1-i)e^{i\theta}\right)^2 = \left((1+i)e^{i\theta}\right)^2$.

**1.b)** En déduire les deux solutions $z_1$ et $z_2$ de l'équation $(E_\theta)$ avec $\mathrm{Im}(z_1) \le 0$.

**2.a)** Montrer que : $\dfrac{z_1 + 1}{z_2 + i} = -\tan\left(\dfrac{\theta}{2}\right)$.

**2.b)** En déduire la forme exponentielle du nombre complexe : $\dfrac{z_1 + i z_2}{z_2 + i}$.

\textbf{Partie II} \\
Dans le plan complexe $P$ muni d'un repère orthonormé direct $(O, \vec{u}, \vec{v})$, on considère les points $A$, $B$ et $C$ d'affixes respectives $a = e^{i\theta}$, $b = (1+i)e^{i\theta}$ et $c = b - a$.

Soient $m$ un nombre réel de $]0, 1[$, $R$ la rotation de centre $O$ et d'angle $\dfrac{\pi}{2}$ et le point $Q$ d'affixe $q = m e^{i\theta}$.

**1.a)** Déterminer l'affixe $p$ du point $P$ image du point $Q$ par la rotation $R$.

**1.b)** Vérifier que : $R(A) = C$.

**2)** Soit $H$ le point d'affixe $h = \dfrac{m}{m - i} e^{i\theta}$.

**2.a)** Montrer que : $\dfrac{p - a}{h} = \dfrac{m^2 + 1}{m} i$ et $\dfrac{h - a}{p - a} = \dfrac{1}{m^2 + 1}$.

**2.b)** En déduire que $H$ est le projeté orthogonal du point $O$ sur la droite $(AP)$.

**2.c)** Montrer que : $\dfrac{b - h}{q - h} = \dfrac{1}{m} i$.

**2.d)** En déduire que les droites $(QH)$ et $(HB)$ sont perpendiculaires.

**2.e)** Montrer que les points $A$, $Q$, $H$ et $B$ sont cocycliques.

<div class="my-5 rounded-lg px-4 py-2.5 text-white font-bold" style="background:#1F4E79">Exercice 4 <span class="font-normal text-white/80 text-sm">(3 points)</span></div>

On considère dans $\Z \times \Z$ l'équation $(E) : y = \dfrac{a}{b}x - \dfrac{c}{d}$ où $a, b, c$ et $d$ sont des entiers naturels non nuls vérifiant : $a \wedge b = c \wedge d = 1$.

**1)** On suppose que l'équation $(E)$ admet une solution $(x_0, y_0)$.

**1.a)** Montrer que : $d$ divise $bc$.

**1.b)** En déduire que : $d$ divise $b$.

**2)** On suppose que $d$ divise $b$ et on pose : $b = nd$ où $n$ est un entier naturel non nul.

**2.a)** Montrer qu'il existe $(u, v) \in \N \times \N$ tel que : $dnu - av = 1$.

**2.b)** En déduire que l'ensemble des solutions de l'équation $(E)$ est :
$$ S = \{(-vcn + bk\,;\, -ucn + ak) \,/\, k \in \Z\} $$

**3)** Résoudre dans $\Z \times \Z$ l'équation $(F) : y = \dfrac{3}{2975}x - \dfrac{2}{119}$ (On donne : $2975 = 119 \times 25$).

<div class="my-5 rounded-lg px-4 py-2.5 text-white font-bold" style="background:#1F4E79">Exercice 5 <span class="font-normal text-white/80 text-sm">(3,5 points)</span></div>

On rappelle que $(M_3(\R), +, \times)$ est un anneau unitaire non commutatif de zéro la matrice
$$ O = \begin{pmatrix} 0 & 0 & 0 \\ 0 & 0 & 0 \\ 0 & 0 & 0 \end{pmatrix} \quad \text{et d'unité la matrice} \quad I = \begin{pmatrix} 1 & 0 & 0 \\ 0 & 1 & 0 \\ 0 & 0 & 1 \end{pmatrix}. $$

On munit l'ensemble $E = \{x + yi \,/\, x \in \Z \text{ et } y \in \Z\}$ par la loi de composition interne $*$ définie par :
$$ \forall (x, y, x', y') \in \Z^4 \,;\, (x + yi) * (x' + y'i) = \left(x + (-1)^y x'\right) + (y + y')i $$

\textbf{Partie I} \\

**1.a)** Vérifier que : $(1 - i) * (3 + 2i) = -2 + i$.

**1.b)** Montrer que la loi $*$ n'est pas commutative dans $E$.

**2)** Montrer que la loi $*$ est associative dans $E$.

**3)** Montrer que $0$ est l'élément neutre pour la loi $*$ dans $E$.

**4.a)** Vérifier que $\forall (x, y) \in \Z^2$ ; $(x + yi) * \left((-1)^{(y+1)} x - yi\right) = 0$.

**4.b)** Montrer que $(E, *)$ est un groupe non commutatif.

\textbf{Partie II} \\
Soient les deux ensembles $F = \{x + 2yi \,/\, x \in \Z \text{ et } y \in \Z\}$ et
$$ G = \left\{ M(x, y) = \begin{pmatrix} 1 & x & y \\ 0 & 1 & 0 \\ 0 & 0 & 1 \end{pmatrix} \,/\, x \in \Z \text{ et } y \in \Z \right\}. $$

**1.a)** Montrer que $F$ est un sous-groupe de $(E, *)$.

**1.b)** Montrer que la loi $*$ est commutative dans $F$.

**2)** Soit $\varphi$ l'application définie de $F$ vers $M_3(\R)$ par : $\forall (x, y) \in \Z^2$ ; $\varphi(x + 2yi) = M(x, y)$.

**2.a)** Montrer que $\varphi$ est un homomorphisme de $(F, *)$ vers $(M_3(\R), \times)$.

**2.b)** Montrer que $\varphi(F) = G$.

**2.c)** En déduire que $(G, \times)$ est un groupe commutatif.
