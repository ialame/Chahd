<div class="my-5 rounded-lg px-4 py-2.5 text-white font-bold" style="background:#1F4E79">Exercice 1 — Analyse <span class="font-normal text-white/80 text-sm">(10 points)</span></div>

**Partie I**

Pour tout entier naturel non nul $n$, on considère la fonction $f_n$ définie sur $I = [0, +\infty[$ par :
$$f_n(0) = 0 \quad \text{et} \quad (\forall x \in \,]0, +\infty[) \; ; \quad f_n(x) = \sqrt{x}\,(\ln x)^n$$
et soit $(C_n)$ sa courbe représentative dans un repère orthonormé $(O,\vec{i},\vec{j})$.

**1.a)** Vérifier que $(\forall x \in \,]0,+\infty[) \; ; \; \sqrt{x}\,(\ln x)^n = (2n)^n\left(x^{\frac{1}{2n}}\ln\!\left(x^{\frac{1}{2n}}\right)\right)^n$, puis en déduire que $f_n$ est continue à droite en $0$.

**1.b)** Calculer $\lim\limits_{x \to +\infty} f_n(x)$.

**1.c)** Vérifier que $(\forall x \in \,]0,+\infty[) \; ; \; \dfrac{f_n(x)}{x} = (2n)^n\left(\dfrac{\ln\!\left(x^{\frac{1}{2n}}\right)}{x^{\frac{1}{2n}}}\right)^n$, puis en déduire $\lim\limits_{x \to +\infty} \dfrac{f_n(x)}{x}$ et interpréter graphiquement le résultat obtenu.

**1.d)** Calculer, suivant la parité de $n$, $\lim\limits_{x \to 0^+} \dfrac{f_n(x)}{x}$ puis interpréter graphiquement le résultat obtenu.

**2.a)** Montrer que $f_n$ est dérivable sur $]0,+\infty[$ et que :
$$(\forall x \in \,]0,+\infty[) \; ; \quad f_n'(x) = \frac{1}{2\sqrt{x}}(\ln x)^{n-1}(2n + \ln x)$$

**2.b)** Vérifier que $\forall n \ge 2$, $f_n'(x) = 0$ si et seulement si $x = 1$ ou $x = e^{-2n}$.

**2.c)** Étudier, suivant la parité de $n$, le sens de variation de $f_n$ et donner son tableau de variations.

**2.d)** Montrer que si $n$ est impair et $n \ge 3$, alors le point d'abscisse $1$ est un point d'inflexion de $(C_n)$.

**Partie II**

**1)** Soit $\beta \in \,]1,e[$ un réel fixé. On considère la suite numérique $(u_n)_{n \ge 1}$ définie par :
$$(\forall n \in \mathbb{N}^*) \; ; \quad u_n = f_n(\beta)$$

**1.a)** Montrer que $(\forall n \in \mathbb{N}^*) \; ; \; 0 < u_n < \sqrt{e}$.

**1.b)** Montrer que la suite $(u_n)_{n \ge 1}$ est décroissante.

**1.c)** Déterminer $\lim\limits_{n \to +\infty} u_n$.

**2.a)** Montrer que pour tout entier $n$ non nul, il existe un unique réel $x_n \in \,]1,e[$ tel que $f_n(x_n) = 1$.

**2.b)** Montrer que la suite $(x_n)_{n \in \mathbb{N}^*}$ ainsi définie est croissante, en déduire qu'elle est convergente.

**3)** On pose $\ell = \lim\limits_{n \to +\infty} x_n$.

**3.a)** Montrer que $1 < \ell \le e$.

**3.b)** Montrer que $\lim\limits_{n \to +\infty}(\ln x_n)^n = \dfrac{1}{\sqrt{\ell}}$.

**3.c)** Montrer que si $\ell < e$ alors $\lim\limits_{n \to +\infty} n\ln(\ln x_n) = -\infty$.

**3.d)** En déduire la valeur de $\ell$.

**Partie III**

On pose pour tout $x \in I$, $F(x) = \displaystyle\int_x^1 \big(f_1(t)\big)^2 \, \mathrm{d}t$.

**1.a)** Montrer que la fonction $F$ est continue sur $I$.

**1.b)** En utilisant une double intégration par parties, montrer que :
$$(\forall x \in \,]0,+\infty[) \; ; \quad F(x) = -\frac{x^2}{2}\ln^2(x) + \frac{x^2}{2}\ln(x) + \frac{1}{4}(1 - x^2)$$

**2.a)** Calculer $\lim\limits_{\substack{x \to 0 \\ x>0}} F(x)$.

**2.b)** En déduire la valeur de $F(0)$.

**2.c)** Calculer, en $\mathrm{cm}^3$, le volume du solide engendré par la rotation d'un tour complet autour de l'axe des abscisses de la portion de la courbe $(C_1)$ relative à l'intervalle $[0,1]$. (On prendra $\|\vec{i}\| = 1\,\mathrm{cm}$.)

<div class="my-5 rounded-lg px-4 py-2.5 text-white font-bold" style="background:#1F4E79">Exercice 2 — Nombres complexes <span class="font-normal text-white/80 text-sm">(3,5 points)</span></div>

Les parties I et II peuvent être traitées indépendamment.

**Partie I**

On considère dans $\mathbb{R}_+^2$ le système suivant :
$$(S) : \begin{cases} \sqrt{x}\left(1 + \dfrac{1}{x+y}\right) = \dfrac{12}{5} \\[2mm] \sqrt{y}\left(1 - \dfrac{1}{x+y}\right) = \dfrac{4}{5} \end{cases}$$

**1)** Soit $(x,y) \in \mathbb{R}_+^2$ une solution du système $(S)$. On pose $z = \sqrt{x} + i\sqrt{y}$.

**1.a)** Montrer que $z + \dfrac{1}{z} = \dfrac{12}{5} + \dfrac{4}{5}i$.

**1.b)** Montrer que $z^2 - \left(\dfrac{12}{5} + \dfrac{4}{5}i\right)z + 1 = 0$, puis en déduire les valeurs possibles de $z$.
$$\left(\text{On remarque que : } \dfrac{28}{25} + \dfrac{96}{25}i = \left(\dfrac{2}{5}(4 + 3i)\right)^2\right)$$

**1.c)** En déduire les valeurs du couple $(x,y)$.

**2)** Résoudre dans $\mathbb{R}_+^2$ le système $(S)$.

**Partie II**

Le plan complexe est rapporté à un repère orthonormé direct $(O,\vec{u},\vec{v})$.

Soit $(U)$ le cercle de centre $O$ et de rayon $1$ et $A(a)$, $B(b)$ et $C(c)$ trois points du cercle $(U)$ deux à deux distincts.

**1)** Montrer que $(\forall z \in \mathbb{C}^*) \; ; \; |z| = 1 \iff \bar{z} = \dfrac{1}{z}$.

**2.a)** La droite passant par $A$ et parallèle à $(BC)$ coupe le cercle $(U)$ au point $P(p)$. Montrer que $p = \dfrac{bc}{a}$.

**2.b)** La droite passant par $A$ et perpendiculaire à $(BC)$ coupe le cercle $(U)$ au point $Q(q)$. Montrer que $q = -p$.

**2.c)** La droite passant par $C$ et parallèle à $(AB)$ coupe le cercle $(U)$ au point $R(r)$. Montrer que les deux droites $(PR)$ et $(OB)$ sont perpendiculaires.

<div class="my-5 rounded-lg px-4 py-2.5 text-white font-bold" style="background:#1F4E79">Exercice 3 — Structures algébriques <span class="font-normal text-white/80 text-sm">(3,5 points)</span></div>

On rappelle que $(M_3(\mathbb{R}), +, \times)$ est un anneau unitaire et non commutatif d'unité $I = \begin{pmatrix} 1 & 0 & 0 \\ 0 & 1 & 0 \\ 0 & 0 & 1 \end{pmatrix}$.

Soit $E = \left\{ M(a,b,c) = \begin{pmatrix} a & 0 & 0 \\ 0 & b & -c \\ 0 & c & b \end{pmatrix} \;/\; (a,b,c) \in \mathbb{R}^3 \right\}$.

**1)** Montrer que $E$ est un sous-groupe de $(M_3(\mathbb{R}), +)$.

**2)** On munit l'ensemble $\mathbb{R} \times \mathbb{C}$ de la loi de composition interne $*$ définie par :
$$\forall \big((x,z),(x',z')\big) \in (\mathbb{R}\times\mathbb{C})^2 \; ; \quad (x,z)*(x',z') = (x+x', z+z')$$
et on considère l'application $\varphi$ définie de $E$ vers $\mathbb{R}\times\mathbb{C}$ par :
$$\forall (a,b,c) \in \mathbb{R}^3 \; ; \quad \varphi(M(a,b,c)) = (a, b+ci)$$

**2.a)** Montrer que $\varphi$ est un homomorphisme de $(E,+)$ vers $(\mathbb{R}\times\mathbb{C}, *)$ et que $\varphi(E) = \mathbb{R}\times\mathbb{C}$.

**2.b)** En déduire que $(\mathbb{R}\times\mathbb{C}, *)$ est un groupe commutatif.

**3)** On munit $\mathbb{R}\times\mathbb{C}$ de la loi de composition interne $T$ définie par :
$$\forall \big((x,z),(x',z')\big) \in (\mathbb{R}\times\mathbb{C})^2 \; ; \quad (x,z)\,T\,(x',z') = \big(x\,\mathrm{Re}(z') + x'\,\mathrm{Re}(z),\, zz'\big)$$
($\mathrm{Re}(z)$ désigne la partie réelle du nombre complexe $z$).

**3.a)** Montrer que $T$ est commutative.

**3.b)** Vérifier que $(0,1)$ est l'élément neutre de $T$ dans $\mathbb{R}\times\mathbb{C}$.

**3.c)** Vérifier que $\forall x \in \mathbb{R}$, $(1,i)\,T\,(x,-i) = (0,1)$ ; en déduire que $T$ est non associative dans $\mathbb{R}\times\mathbb{C}$.

**4)** Soit $G = \big\{ (\mathrm{Im}(z), z) \;/\; z \in \mathbb{C} \big\}$ ($\mathrm{Im}(z)$ désigne la partie imaginaire du nombre complexe $z$).

**4.a)** Montrer que $G$ est un sous-groupe de $(\mathbb{R}\times\mathbb{C}, *)$.
$$\left(\text{On remarque que } (-\mathrm{Im}(z), -z) \text{ est le symétrique de } (\mathrm{Im}(z), z) \text{ pour la loi } *\right)$$

**4.b)** Soit $\psi$ l'application définie de $\mathbb{C}^*$ vers $\mathbb{R}\times\mathbb{C}$ par : $\forall z \in \mathbb{C}^* \; ; \; \psi(z) = (\mathrm{Im}(z), z)$. Montrer que $\psi$ est un homomorphisme de $(\mathbb{C}^*, \times)$ vers $(\mathbb{R}\times\mathbb{C}, T)$.

**4.c)** En déduire que $\big(G - \{(0,0)\}, T\big)$ est un groupe commutatif.

**5)** Montrer que $(G, *, T)$ est un corps commutatif.

<div class="my-5 rounded-lg px-4 py-2.5 text-white font-bold" style="background:#1F4E79">Exercice 4 — Arithmétique <span class="font-normal text-white/80 text-sm">(3 points)</span></div>

Soit $p$ un nombre premier impair. On pose : $S = 1 + p + p^2 + p^3 + \dots + p^{p-1}$.

Soit $q$ un nombre premier qui divise $S$.

**1.a)** Montrer que $p$ et $q$ sont premiers entre eux.

**1.b)** En déduire que $p^{q-1} \equiv 1 \;[q]$.

**1.c)** Vérifier que $p^p - 1 = (p-1)S$, en déduire que $p^p \equiv 1 \;[q]$.

**2.** On suppose que $p$ et $q-1$ sont premiers entre eux.

**2.a)** En utilisant le théorème de Bézout, montrer que $p \equiv 1 \;[q]$.

**2.b)** En déduire que $S \equiv 1 \;[q]$.

**3)** Montrer que $q \equiv 1 \;[p]$.
