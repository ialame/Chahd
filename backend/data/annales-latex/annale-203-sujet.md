<div class="my-5 rounded-lg px-4 py-2.5 text-white font-bold" style="background:#1F4E79">Exercice 1 — Arithmétique <span class="font-normal text-white/80 text-sm">(3,5 points — au choix)</span></div>

Soient $p$ et $q$ deux nombres premiers vérifiant $p < q$ et $9^{p+q-1} \equiv 1 \ [pq]$.

**1.a)** Montrer que $p$ et $9$ sont premiers entre eux.

**1.b)** En déduire que $9^{p-1} \equiv 1 \ [p]$ et que $9^{q} \equiv 1 \ [p]$.

**2.a)** Montrer que $p-1$ et $q$ sont premiers entre eux.

**2.b)** En utilisant le théorème de Bézout, montrer que $p = 2$.

**3.a)** En utilisant le théorème de Fermat, montrer que $9^{q-1} \equiv 1 \ [q]$.

**3.b)** En déduire que $q = 5$.

<div class="my-5 rounded-lg px-4 py-2.5 text-white font-bold" style="background:#1F4E79">Exercice 2 — Structures algébriques <span class="font-normal text-white/80 text-sm">(3,5 points — au choix)</span></div>

On note $M_3(\mathbb{R})$ l'ensemble des matrices d'ordre $3$ à coefficients réels. On rappelle que $(M_3(\mathbb{R}),+,\cdot)$ est un espace vectoriel réel de dimension $9$ et que $(M_3(\mathbb{R}),+,\times)$ est un anneau non commutatif unitaire, de zéro $O$ et d'unité $I$ :

$$ O = \begin{pmatrix} 0 & 0 & 0 \\ 0 & 0 & 0 \\ 0 & 0 & 0 \end{pmatrix}, \qquad I = \begin{pmatrix} 1 & 0 & 0 \\ 0 & 1 & 0 \\ 0 & 0 & 1 \end{pmatrix}. $$

On considère le sous-ensemble :

$$ E = \left\{ M(x,y,z) = \begin{pmatrix} x & -y & -y \\ 0 & z & 0 \\ y & x-z & x \end{pmatrix} \ ; \ (x,y,z) \in \mathbb{R}^3 \right\}. $$

**Première partie**

**1.a)** Montrer que $E$ est un sous-espace vectoriel de $(M_3(\mathbb{R}),+,\cdot)$.

**1.b)** Déterminer une base de $(E,+,\cdot)$.

**2.a)** Vérifier que pour tous $(x,y,z) \in \mathbb{R}^3$ et $(x',y',z') \in \mathbb{R}^3$ :
$$ M(x,y,z) \times M(x',y',z') = M(xx'-yy',\, xy'+yx',\, zz'). $$

**2.b)** Montrer que $(E,+,\times)$ est un anneau commutatif.

**Deuxième partie**

On considère le sous-ensemble $F$ de $E$ des matrices de la forme $M(x,y,0)$ où $(x,y) \in \mathbb{R}^2$.

**1)** Montrer que $F$ est un sous-groupe du groupe $(E,+)$.

**2)** On note $\varphi$ l'application de $\mathbb{C}^*$ vers $E$ définie par :
$$ \forall (x,y) \in \mathbb{R}^2 \ ; \quad \varphi(x+iy) = M(x,y,0). $$

**2.a)** Montrer que $\varphi$ est un homomorphisme de $(\mathbb{C}^*,\times)$ vers $(E,\times)$.

**2.b)** En déduire que $(F^*,\times)$ est un groupe commutatif ($F^*$ désigne $F \setminus \{O\}$).

**2.c)** Montrer que $(F,+,\times)$ est un corps commutatif dont on précisera l'unité.

**3.a)** Vérifier que pour tout $M(x,y,0) \in F$ :
$$ M(x,y,0) \times \begin{pmatrix} 0 & 1 & 0 \\ 0 & 0 & 0 \\ 0 & 0 & 0 \end{pmatrix} = O. $$

**3.b)** En déduire qu'aucun des éléments du sous-ensemble $F$ n'admet d'inverse pour la multiplication dans $M_3(\mathbb{R})$.

<div class="my-5 rounded-lg px-4 py-2.5 text-white font-bold" style="background:#1F4E79">Exercice 3 — Nombres complexes <span class="font-normal text-white/80 text-sm">(3,5 points — obligatoire)</span></div>

**Partie I**

Soit $m$ un nombre réel non nul. On considère dans l'ensemble des nombres complexes $\mathbb{C}$ les deux équations :
$$ (E) : z^2 + 2z + 1 + m^2 = 0 \qquad \text{et} $$
$$ (F) : z^3 + 2(1-i)z^2 + (1+m^2-4i)z - 2i(1+m^2) = 0. $$

**1)** Résoudre dans $\mathbb{C}$ l'équation $(E)$.

**2.a)** Montrer que l'équation $(F)$ admet une solution imaginaire pure que l'on déterminera.

**2.b)** Résoudre dans $\mathbb{C}$ l'équation $(F)$.

**Partie II**

Le plan complexe est rapporté à un repère orthonormé direct $(O,\vec{u},\vec{v})$. On considère les deux points $A(-1+im)$ et $B(-1-im)$.

Soient $W$ le milieu du segment $[AB]$, $A'$ le milieu du segment $[OB]$ et $B'$ le milieu du segment $[OA]$.

La rotation de centre $W$ et d'angle $\frac{\pi}{2}$ transforme $A$ en $P(p)$ ; la rotation de centre $A'$ et d'angle $\frac{\pi}{2}$ transforme $B$ en $Q(q)$ ; et la rotation de centre $B'$ et d'angle $\frac{\pi}{2}$ transforme $O$ en $R(r)$.

**1)** Montrer que $p = -1 + m$, $\ q = \dfrac{1-i}{2}(-1-im)$ et $r = \bar{q}$.

**2.a)** Vérifier que $q - r = -ip$.

**2.b)** En déduire que $OP = QR$ et que les deux droites $(OP)$ et $(QR)$ sont orthogonales.

<div class="my-5 rounded-lg px-4 py-2.5 text-white font-bold" style="background:#1F4E79">Exercice 4 — Analyse <span class="font-normal text-white/80 text-sm">(13 points — obligatoire)</span></div>

**Première partie**

On considère la fonction $f$ définie sur l'intervalle $I = [0,1]$ par $f(x) = x\ln(2-x)$, et soit $(C)$ sa courbe représentative dans un repère orthonormé $(O,\vec{i},\vec{j})$.

**1.a)** Montrer que $f$ est dérivable sur $I$ et que pour tout $x \in I$ : $\ f'(x) = \ln(2-x) - \dfrac{x}{2-x}$.

**1.b)** Montrer que la fonction dérivée $f'$ est strictement décroissante sur $I$.

**1.c)** Montrer qu'il existe un unique réel $a \in \ ]0,1[$ tel que $f'(a) = 0$ et $f(a) = \dfrac{a^2}{2-a}$.

**2.a)** Étudier les variations de $f$, puis dresser son tableau de variations.

**2.b)** Montrer que la courbe $(C)$ est concave.

**2.c)** Montrer que pour tout $t \in I$ et tout $x \in I$ : $\ f(x) \le f'(t)(x-t) + f(t)$.

**2.d)** En déduire que pour tout $x \in I$ : $\ f(x) \le x\ln 2$ et $\ f(x) \le -x+1$.

**3)** Représenter la courbe $(C)$ (on prendra $\|\vec{i}\| = 2\,\text{cm}$).

**4)** Calculer, en $\text{cm}^2$, l'aire du domaine plan limité par la courbe $(C)$ et les droites d'équations respectives $x = 0$, $x = 1$ et $y = 0$.

**Deuxième partie**

Soit $n$ un entier naturel supérieur ou égal à $2$. On considère la fonction $f_n$ définie sur $I = [0,1]$ par $f_n(x) = x^n \ln(2-x)$.

**1.a)** Vérifier que $f_n$ est positive sur $I$ et que $f_n(0) = f_n(1)$.

**1.b)** Montrer qu'il existe au moins un réel $a_n \in \ ]0,1[$ tel que $f_n'(a_n) = 0$.

**2.a)** Montrer que $f_n$ est dérivable sur $I$ et que pour tout $x \in I$ : $\ f_n'(x) = x^{n-1} g_n(x)$ où $g_n(x) = n\ln(2-x) - \dfrac{x}{2-x}$.

**2.b)** Montrer que la fonction $g_n$ est strictement décroissante sur $I$.

**2.c)** En déduire que $a_n$ est unique.

**3)** On considère la suite $(a_n)_{n \ge 2}$ ainsi définie.

**3.a)** Montrer que pour tout $n \ge 2$ : $\ f_n(a_n) = \dfrac{1}{n} \cdot \dfrac{a_n^{n+1}}{2-a_n}$, et en déduire que $\lim\limits_{n \to +\infty} f_n(a_n) = 0$.

**3.b)** Montrer que pour tout $n \ge 2$ : $\ g_n(a_{n+1}) = -\ln(2-a_{n+1})$, et en déduire que la suite $(a_n)_{n \ge 2}$ est strictement croissante.

**3.c)** Montrer que la suite $(a_n)_{n \ge 2}$ est convergente.

**3.d)** Montrer que $\lim\limits_{n \to +\infty} a_n = 1$.

**Troisième partie**

Pour tout entier naturel $n \ge 2$, on pose $\ I_n = \displaystyle\int_0^1 f_n(x)\,\mathrm{d}x$.

**1)** Montrer que la suite $(I_n)_{n \ge 2}$ est décroissante, en déduire qu'elle est convergente.

**2)** En utilisant une intégration par parties, montrer que $\ I_n = \dfrac{1}{n+1} \displaystyle\int_0^1 \dfrac{x^{n+1}}{2-x}\,\mathrm{d}x$.

**3)** Montrer que pour tout $n \ge 2$ : $\ 0 \le I_n \le \dfrac{1}{n+1}$, en déduire que $\lim\limits_{n \to +\infty} I_n = 0$.
