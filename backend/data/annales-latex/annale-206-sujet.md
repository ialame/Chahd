<div class="my-5 rounded-lg px-4 py-2.5 text-white font-bold" style="background:#1F4E79">Exercice 1 — Analyse <span class="font-normal text-white/80 text-sm">(10 points)</span></div>
        \textbf{A} \\
        
**1)** Vérifier que pour tout $x \in \mathbb{R}^{+}$ : $0 \le 1 - x + x^2 - \dfrac{1}{1+x} \le x^3$.

**2)** En déduire que pour tout $x \in \mathbb{R}^{+}$ : $0 \le x - \dfrac{x^2}{2} + \dfrac{x^3}{3} - \ln(1+x) \le \dfrac{x^4}{4}$.

        \textbf{B} \\
        On considère la fonction $f$ définie sur $I = [0, +\infty[$ par :
        \[ f(0) = \frac{1}{2} \quad \text{et pour tout } x \in \, ]0, +\infty[ \; : \quad f(x) = \frac{x - \ln(1+x)}{x^2}, \]
        et soit $(C)$ sa courbe représentative dans un repère orthonormé $(O,\vec{i},\vec{j})$.

**1.a)** Montrer que $f$ est continue à droite en $0$.

**1.b)** Montrer que $f$ est dérivable à droite en $0$.

**1.c)** Calculer $\lim\limits_{x \to +\infty} f(x)$, puis interpréter graphiquement le résultat obtenu.

**2.a)** Montrer que pour tout $x \in \, ]0, +\infty[$ : $f'(x) = -\dfrac{g(x)}{x^3}$, où $g(x) = x + \dfrac{x}{1+x} - 2\ln(1+x)$.

**2.b)** Montrer que pour tout $x \in I$ : $0 \le g'(x) \le x^2$.

**2.c)** En déduire que pour tout $x \in I$ : $0 \le g(x) \le \dfrac{x^3}{3}$.

**2.d)** Déterminer le sens de variation de $f$ sur $I$.

**3.a)** Dresser le tableau de variation de $f$.

**3.b)** Représenter graphiquement la courbe $(C)$ dans le repère $(O,\vec{i},\vec{j})$ (on prendra $\|\vec{i}\| = 2\,\text{cm}$ et $\|\vec{j}\| = 2\,\text{cm}$).

        \textbf{C} \\

**1)** Montrer qu'il existe un unique réel $\alpha \in \, ]0,1[$ tel que $f(\alpha) = \alpha$.

**2)** On considère la suite $(u_n)_{n \in \mathbb{N}}$ définie par :
        \[ u_0 = \frac{1}{3} \quad \text{et pour tout } n \in \mathbb{N} \; : \quad u_{n+1} = f(u_n). \]

**2.a)** Montrer que pour tout $n \in \mathbb{N}$ : $u_n \in [0,1]$.

**2.b)** Montrer que pour tout $n \in \mathbb{N}$ : $|u_{n+1} - \alpha| \le \dfrac{1}{3}|u_n - \alpha|$.

**2.c)** Montrer par récurrence que pour tout $n \in \mathbb{N}$ : $|u_n - \alpha| \le \left(\dfrac{1}{3}\right)^n$.

**2.d)** En déduire que la suite $(u_n)_{n \in \mathbb{N}}$ converge vers $\alpha$.

        \textbf{D} \\
        Pour tout $x \in I$, on pose $F(x) = \displaystyle\int_x^1 f(t)\,\mathrm{d}t$.

**1)** Montrer que la fonction $F$ est dérivable sur $I$ et calculer $F'(x)$ pour tout $x \in I$.

**2.a)** En utilisant la méthode d'intégration par parties, montrer que pour tout $x \in \, ]0,+\infty[$ :
        \[ F(x) = 2\ln 2 - \left(1 + \frac{1}{x}\right)\ln(1+x). \]

**2.b)** Calculer $\lim\limits_{x \to 0^+} F(x)$, puis en déduire que $\displaystyle\int_0^1 f(t)\,\mathrm{d}t = 2\ln 2 - 1$.

**2.c)** Calculer, en $\text{cm}^2$, l'aire du domaine plan limité par la courbe $(C)$, l'axe des abscisses, l'axe des ordonnées et la droite d'équation $x = 1$.

        \textbf{E} \\
        On pose, pour tout $k$ de $\mathbb{N}$ : $D_k = f(k) - \displaystyle\int_k^{k+1} f(t)\,\mathrm{d}t$,
        et pour tout $n$ de $\mathbb{N}^*$ : $S_n = \displaystyle\sum_{k=0}^{n-1} D_k$.

**1.a)** Vérifier que pour tout $k \in \mathbb{N}$ : $0 \le D_k \le f(k) - f(k+1)$.

**1.b)** En déduire que pour tout $n \in \mathbb{N}^*$ : $0 \le S_n \le \dfrac{1}{2}$.

**2.a)** Montrer que la suite $(S_n)_{n \in \mathbb{N}^*}$ est monotone.

**2.b)** En déduire que la suite $(S_n)_{n \in \mathbb{N}^*}$ est convergente.

**2.c)** Montrer que la limite $l$ de la suite $(S_n)_{n \in \mathbb{N}^*}$ vérifie : $\dfrac{3}{2} - 2\ln 2 \le l \le \dfrac{1}{2}$.

<div class="my-5 rounded-lg px-4 py-2.5 text-white font-bold" style="background:#1F4E79">Exercice 2 — Nombres complexes <span class="font-normal text-white/80 text-sm">(3,5 points)</span></div>
        Soit $m$ un nombre complexe non nul donné et $j = -\dfrac{1}{2} + \dfrac{\sqrt{3}}{2}\,i = e^{i\frac{2\pi}{3}}$.

        \textbf{I} \\
        On considère dans l'ensemble $\mathbb{C}$ l'équation d'inconnue $z$ :
        \[ (E_m) : \quad z^2 + m j^2 z + m^2 j = 0. \]

**1)** Vérifier que $j^3 = 1$ et $1 + j + j^2 = 0$.

**2.a)** Montrer que le discriminant de l'équation $(E_m)$ est $\Delta = \big(m(1-j)\big)^2$.

**2.b)** Déterminer $z_1$ et $z_2$ les deux solutions de l'équation $(E_m)$.

**3)** Dans cette question, on suppose que $m = 1 + i$. Montrer que $(z_1 + z_2)^{2022}$ est un imaginaire pur.

        \textbf{II} \\
        Le plan complexe est muni d'un repère orthonormé direct $(O,\vec{u},\vec{v})$.
        Soit $\varphi$ la transformation du plan complexe qui à tout point $M(z)$ fait correspondre le point $M'(z')$ tel que $z' = (1+j)z$.

**1)** Déterminer la nature et les éléments caractéristiques de l'application $\varphi$.

**2)** On considère les points $A$, $B$ et $C$ d'affixes respectives $m$, $mj$ et $mj^2$, et on note $A'(a')$, $B'(b')$ et $C'(c')$ les images respectives des points $A$, $B$ et $C$ par l'application $\varphi$, et soient $P(p)$, $Q(q)$ et $R(r)$ les milieux respectifs des segments $[A'B']$, $[B'C']$ et $[A'C']$.

**2.a)** Montrer que $a' = -mj^2$, $b' = -m$ et $c' = -mj$.

**2.b)** Montrer que $p + qj + rj^2 = 0$.

**2.c)** En déduire que le triangle $PQR$ est équilatéral.

<div class="my-5 rounded-lg px-4 py-2.5 text-white font-bold" style="background:#1F4E79">Exercice 3 — Arithmétique <span class="font-normal text-white/80 text-sm">(3 points)</span></div>
        Soit $n$ un entier naturel strictement supérieur à $1$.
        On considère dans $\mathbb{Z}^2$ l'équation $(E_n) : (x+1)^n - x^n = ny$.
        Soit $(x,y)$ une solution de l'équation $(E_n)$ dans $\mathbb{Z}^2$ et soit $p$ le plus petit diviseur premier de $n$.

**1.a)** Montrer que $(x+1)^n \equiv x^n \;[p]$.

**1.b)** Montrer que $p$ est premier avec $x$ et avec $(x+1)$.

**1.c)** En déduire que $(x+1)^{p-1} \equiv x^{p-1} \;[p]$.

**2)** Montrer que si $n$ est pair, alors l'équation $(E_n)$ n'admet pas de solution dans $\mathbb{Z}^2$.

**3)** On suppose que $n$ est impair.

**3.a)** Montrer qu'il existe un couple $(u,v)$ de $\mathbb{Z}^2$ tel que $nu + (p-1)v = 1$. (On rappelle que $p$ est le plus petit diviseur premier de $n$.)

**3.b)** Soient $q$ et $r$ respectivement le quotient et le reste dans la division euclidienne de $u$ par $(p-1)$. Vérifier que $nr = 1 - (p-1)(v + nq)$.

**3.c)** On pose $v' = -(v + nq)$. Montrer que $v' \ge 0$.

**3.d)** Montrer que l'équation $(E_n)$ n'admet pas de solution dans $\mathbb{Z}^2$.

<div class="my-5 rounded-lg px-4 py-2.5 text-white font-bold" style="background:#1F4E79">Exercice 4 — Structures algébriques <span class="font-normal text-white/80 text-sm">(3,5 points)</span></div>
        On rappelle que $(\mathcal{M}_2(\mathbb{R}), +, \times)$ est un anneau unitaire non commutatif d'unité $I = \begin{pmatrix} 1 & 0 \\ 0 & 1 \end{pmatrix}$, et que $(\mathbb{Z}, +, \times)$ est un anneau commutatif unitaire et intègre.

        Soit $E = \left\{ M(a,b) = \begin{pmatrix} a & 3b \\ b & a \end{pmatrix} \; / \; (a,b) \in \mathbb{Z}^2 \right\}$.

**1.a)** Montrer que $E$ est un sous-groupe de $(\mathcal{M}_2(\mathbb{R}), +)$.

**1.b)** Vérifier que pour tout $a, b, c$ et $d$ de $\mathbb{Z}$, on a : $M(a,b) \times M(c,d) = M(ac + 3bd, \; ad + bc)$.

**1.c)** Montrer que $(E, +, \times)$ est un anneau commutatif et unitaire.

**2)** Soit $\varphi$ l'application définie de $E$ vers $\mathbb{Z}$ par : pour tout $(a,b) \in \mathbb{Z}^2$, $\varphi(M(a,b)) = a^2 - 3b^2$.

        Montrer que $\varphi$ est un homomorphisme de $(E, \times)$ vers $(\mathbb{Z}, \times)$.

**3)** Soit $M(a,b) \in E$.

**3.a)** Montrer que $M(a,b) \times M(a,-b) = (a^2 - 3b^2)\,I$.

**3.b)** Montrer que si $M(a,b)$ est inversible dans $(E, \times)$ alors $\varphi(M(a,b)) = 1$.

**3.c)** On suppose que $\varphi(M(a,b)) = 1$. Montrer que $M(a,b)$ est inversible dans $(E, \times)$ et préciser son inverse.

**4.a)** Montrer que pour tout $(a,b) \in \mathbb{Z}^2$ : $\varphi(M(a,b)) = 0 \iff a = b = 0$.

**4.b)** En déduire que l'anneau $(E, +, \times)$ est intègre.

**4.c)** Est-ce que $(E, +, \times)$ est un corps ? Justifier votre réponse.
