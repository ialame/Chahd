<div class="my-4 rounded-lg px-4 py-2.5 text-white text-sm" style="background:#1F4E79">Corrigé — Examen National du Baccalauréat, session normale 2020, Sciences Mathématiques (A et B). Les résultats à retenir sont $\boxed{\text{encadrés}}$.</div>

    <div class="my-5 rounded-lg px-4 py-2.5 text-white font-bold" style="background:#1F4E79">Exercice 1 — Arithmétique <span class="font-normal text-white/80 text-sm">(3,5 points)</span></div>

    Équation $(D) : 7x^3 - 13y = 5$ dans $\mathbb{Z} \times \mathbb{Z}$. Soit $(x,y)$ une solution de $(D)$.

**1.a)** *Montrer que $x$ et $13$ sont premiers entre eux.*

    Soit $d$ un diviseur commun positif de $x$ et de $13$. De $7x^3 - 13y = 5$ on tire $5 = 7x^3 - 13y$ ; comme $d \mid x$ on a $d \mid x^3$, donc $d \mid 7x^3$, et $d \mid 13$ donc $d \mid 13y$. Ainsi $d \mid (7x^3 - 13y) = 5$. Donc $d$ divise à la fois $13$ et $5$. Or $\mathrm{pgcd}(13,5) = 1$, donc $d = 1$.

    <div class="my-2 font-semibold" style="color:#1F4E79">⇒ $\boxed{x \wedge 13 = 1}$.</div>

**1.b)** *En déduire que $x^{12} \equiv 1 \ [13]$.*

    $13$ est premier et ne divise pas $x$ (car $x \wedge 13 = 1$). D'après le petit théorème de Fermat, $x^{13-1} \equiv 1 \ [13]$, soit $\boxed{x^{12} \equiv 1 \ [13]}$.

**1.c)** *Montrer que $x^3 \equiv 10 \ [13]$.*

    De $(D)$ : $7x^3 = 5 + 13y \equiv 5 \ [13]$. On multiplie par $2$ : $14 x^3 \equiv 10 \ [13]$. Or $14 \equiv 1 \ [13]$, donc $14 x^3 \equiv x^3 \ [13]$. Par suite :
    $$ x^3 \equiv 10 \ [13]. $$

    <div class="my-2 font-semibold" style="color:#1F4E79">⇒ $\boxed{x^3 \equiv 10 \ [13]}$.</div>

**1.d)** *En déduire que $x^{12} \equiv 3 \ [13]$.*

    En élevant à la puissance $4$ la congruence précédente : $x^{12} = (x^3)^4 \equiv 10^4 \ [13]$. Or $10 \equiv -3 \ [13]$, donc $10^2 \equiv 9 \ [13]$ et $10^4 \equiv 9^2 = 81 \equiv 3 \ [13]$ (car $81 = 6 \times 13 + 3$).
    $$ x^{12} \equiv 3 \ [13]. $$

    <div class="my-2 font-semibold" style="color:#1F4E79">⇒ $\boxed{x^{12} \equiv 3 \ [13]}$.</div>

**2)** *Conclure que $(D)$ n'a pas de solution.*

    Si $(x,y)$ était solution de $(D)$, on aurait simultanément $x^{12} \equiv 1 \ [13]$ (1.b) et $x^{12} \equiv 3 \ [13]$ (1.d), d'où $1 \equiv 3 \ [13]$, c'est-à-dire $13 \mid 2$ : absurde.

    <div class="my-2 font-semibold" style="color:#1F4E79">⇒ L'équation $(D)$ n'admet $\boxed{\text{aucune solution dans } \mathbb{Z} \times \mathbb{Z}}$.</div>

    <div class="my-5 rounded-lg px-4 py-2.5 text-white font-bold" style="background:#1F4E79">Exercice 2 — Structures algébriques <span class="font-normal text-white/80 text-sm">(3,5 points)</span></div>

    On note $A(x,y) = \begin{pmatrix} x & y \\ 0 & 1 \end{pmatrix}$ ; alors $E = \{ A(x,y) \ / \ x \in \mathbb{R}^*,\ y \in \mathbb{R} \}$.

**1.a)** *$E$ est stable pour $\times$.*

    Pour $A(x,y), A(x',y') \in E$ :
    $$ A(x,y)\, A(x',y') = \begin{pmatrix} x & y \\ 0 & 1 \end{pmatrix}\begin{pmatrix} x' & y' \\ 0 & 1 \end{pmatrix} = \begin{pmatrix} xx' & xy' + y \\ 0 & 1 \end{pmatrix} = A(xx',\, xy'+y). $$
    Comme $x, x' \in \mathbb{R}^*$, on a $xx' \in \mathbb{R}^*$, et $xy'+y \in \mathbb{R}$. Donc $A(xx', xy'+y) \in E$.

    <div class="my-2 font-semibold" style="color:#1F4E79">⇒ $E$ est une partie stable de $(M_2(\mathbb{R}), \times)$.</div>

**1.b)** *La multiplication n'est pas commutative dans $E$.*

    On exhibe un contre-exemple. Prenons $A(2,0) = \begin{pmatrix} 2 & 0 \\ 0 & 1 \end{pmatrix}$ et $A(1,1) = \begin{pmatrix} 1 & 1 \\ 0 & 1 \end{pmatrix}$ :
    $$ A(2,0)\,A(1,1) = \begin{pmatrix} 2 & 2 \\ 0 & 1 \end{pmatrix} = A(2,2), \qquad A(1,1)\,A(2,0) = \begin{pmatrix} 2 & 1 \\ 0 & 1 \end{pmatrix} = A(2,1). $$
    Comme $A(2,2) \neq A(2,1)$, ces deux matrices ne commutent pas.

    <div class="my-2 font-semibold" style="color:#1F4E79">⇒ La multiplication n'est pas commutative dans $E$.</div>

**1.c)** *Vérification de l'inverse.*

    $$ A(x,y)\, A\!\left(\tfrac1x, -\tfrac{y}{x}\right) = \begin{pmatrix} x & y \\ 0 & 1 \end{pmatrix}\begin{pmatrix} \frac1x & -\frac{y}{x} \\ 0 & 1 \end{pmatrix} = \begin{pmatrix} 1 & -y + y \\ 0 & 1 \end{pmatrix} = \begin{pmatrix} 1 & 0 \\ 0 & 1 \end{pmatrix} = I, $$
    et de même $A\!\left(\tfrac1x, -\tfrac{y}{x}\right) A(x,y) = I$.

    <div class="my-2 font-semibold" style="color:#1F4E79">⇒ Tout élément $A(x,y)$ de $E$ est inversible, d'inverse $\boxed{A\!\left(\tfrac1x, -\tfrac{y}{x}\right) \in E}$.</div>

**2)** *$(E, \times)$ est un groupe non commutatif.*

    La multiplication des matrices est associative (héritée de $M_2(\mathbb{R})$) ; $E$ est stable (1.a) ; $I = A(1,0) \in E$ est l'élément neutre ; tout élément admet un inverse dans $E$ (1.c). Donc $(E, \times)$ est un groupe. La non-commutativité a été établie au 1.b.

    <div class="my-2 font-semibold" style="color:#1F4E79">⇒ $\boxed{(E, \times) \text{ est un groupe non commutatif}}$.</div>

**3.a)** *$\varphi : x \mapsto M(x)$ est un homomorphisme de $(\mathbb{R}^*, \times)$ vers $(E, \times)$.*

    Pour $x \in \mathbb{R}^*$, $M(x) = \begin{pmatrix} x & 1-x \\ 0 & 1 \end{pmatrix} = A(x, 1-x) \in E$. Pour $x, x' \in \mathbb{R}^*$, d'après la règle de produit (1.a) :
    $$ M(x)\,M(x') = A(x, 1-x)\, A(x', 1-x') = A\bigl(xx',\ x(1-x') + (1-x)\bigr). $$
    Le second argument vaut $x - xx' + 1 - x = 1 - xx'$. Donc
    $$ M(x)\,M(x') = A(xx',\ 1 - xx') = M(xx'). $$

    <div class="my-2 font-semibold" style="color:#1F4E79">⇒ Pour tous $x, x' \in \mathbb{R}^*$, $\varphi(xx') = \varphi(x)\,\varphi(x')$ : $\boxed{\varphi \text{ est un homomorphisme}}$.</div>

**3.b)** *$(F, \times)$ est un groupe commutatif ; élément neutre.*

    $F = \varphi(\mathbb{R}^*)$ est l'image du groupe $(\mathbb{R}^*, \times)$ par l'homomorphisme $\varphi$ : c'est donc un sous-groupe de $(E, \times)$. De plus $\varphi$ est un homomorphisme du groupe **commutatif** $(\mathbb{R}^*, \times)$, donc l'image $F$ est commutative : pour tous $x, x'$, $M(x)M(x') = M(xx') = M(x'x) = M(x')M(x)$.

    <div class="my-2 font-semibold" style="color:#1F4E79">⇒ $(F, \times)$ est un groupe commutatif.</div>

    L'élément neutre est l'image du neutre $1$ de $(\mathbb{R}^*, \times)$ :
    $$ \varphi(1) = M(1) = \begin{pmatrix} 1 & 0 \\ 0 & 1 \end{pmatrix} = I. $$

    <div class="my-2 font-semibold" style="color:#1F4E79">⇒ L'élément neutre de $(F, \times)$ est $\boxed{M(1) = I}$.</div>

    <div class="my-5 rounded-lg px-4 py-2.5 text-white font-bold" style="background:#1F4E79">Exercice 3 — Nombres complexes <span class="font-normal text-white/80 text-sm">(3,5 points)</span></div>

    <div class="mt-4 mb-2 text-base font-bold" style="color:#1F4E79">Première partie : $(E) : z^3 - 2mz^2 + 2m^2 z - m^3 = 0$ ($m \neq 0$)</div>

**1)** *Résoudre $(E)$.*

    $m$ est une solution (l'énoncé l'indique ; on vérifie : $m^3 - 2m^3 + 2m^3 - m^3 = 0$). On factorise donc par $(z - m)$ :
    $$ z^3 - 2mz^2 + 2m^2 z - m^3 = (z - m)\,(z^2 - mz + m^2). $$
    (Développement : $(z-m)(z^2 - mz + m^2) = z^3 - mz^2 + m^2 z - mz^2 + m^2 z - m^3 = z^3 - 2mz^2 + 2m^2 z - m^3$. ✓)

    Reste à résoudre $z^2 - mz + m^2 = 0$. Discriminant : $\Delta = m^2 - 4m^2 = -3m^2 = (i\sqrt3\, m)^2$. Les racines :
    $$ z = \frac{m \pm i\sqrt3\, m}{2} = m\,\frac{1 \pm i\sqrt3}{2}. $$
    Or $\dfrac{1 + i\sqrt3}{2} = e^{i\frac{\pi}{3}}$ et $\dfrac{1 - i\sqrt3}{2} = e^{-i\frac{\pi}{3}}$.

    <div class="my-2 font-semibold" style="color:#1F4E79">⇒ $\boxed{S = \left\{ m, \ m\, e^{i\frac{\pi}{3}}, \ m\, e^{-i\frac{\pi}{3}} \right\}}$.</div>

**2.a)** *Vérifier que $\dfrac{1}{z_1} + \dfrac{1}{z_2} = \dfrac{1}{m}$.*

    On pose $z_1 = m\, e^{i\frac{\pi}{3}}$ et $z_2 = m\, e^{-i\frac{\pi}{3}}$, racines de $z^2 - mz + m^2 = 0$. Par les relations coefficients-racines : $z_1 + z_2 = m$ et $z_1 z_2 = m^2$. Donc :
    $$ \frac{1}{z_1} + \frac{1}{z_2} = \frac{z_1 + z_2}{z_1 z_2} = \frac{m}{m^2} = \frac{1}{m}. $$

    <div class="my-2 font-semibold" style="color:#1F4E79">⇒ $\boxed{\dfrac{1}{z_1} + \dfrac{1}{z_2} = \dfrac{1}{m}}$.</div>

**2.b)** *Cas $m = 1 + e^{i\frac{\pi}{3}}$ : forme algébrique de $z_1$ et $z_2$.*

    On a $z_1 = m\, e^{i\frac{\pi}{3}}$, $z_2 = m\, e^{-i\frac{\pi}{3}}$ avec $m = 1 + e^{i\frac{\pi}{3}} = 1 + \dfrac{1}{2} + i\dfrac{\sqrt3}{2} = \dfrac{3}{2} + i\dfrac{\sqrt3}{2}$.

    Pour $z_1$ :
    $$ z_1 = \left(1 + e^{i\frac{\pi}{3}}\right) e^{i\frac{\pi}{3}} = e^{i\frac{\pi}{3}} + e^{i\frac{2\pi}{3}} = \left(\tfrac12 + i\tfrac{\sqrt3}{2}\right) + \left(-\tfrac12 + i\tfrac{\sqrt3}{2}\right) = i\sqrt3. $$

    <div class="my-2 font-semibold" style="color:#1F4E79">⇒ $\boxed{z_1 = i\sqrt3}$.</div>

    Pour $z_2$ : comme $m = 1 + e^{i\frac{\pi}{3}}$, $z_2 = m\, e^{-i\frac{\pi}{3}} = e^{-i\frac{\pi}{3}} + 1 = \left(\tfrac12 - i\tfrac{\sqrt3}{2}\right) + 1 = \dfrac32 - i\dfrac{\sqrt3}{2}$.

    <div class="my-2 font-semibold" style="color:#1F4E79">⇒ $\boxed{z_2 = \dfrac32 - i\dfrac{\sqrt3}{2} = \sqrt3\left(\dfrac{\sqrt3}{2} - \dfrac{i}{2}\right)}$.</div>

    <div class="mt-4 mb-2 text-base font-bold" style="color:#1F4E79">Deuxième partie : $a = m\, e^{i\frac{\pi}{3}}$, $b = m\, e^{-i\frac{\pi}{3}}$</div>

**1)** *Les points $O$, $A$, $B$ ne sont pas alignés.*

    On calcule
    $$ \frac{b - 0}{a - 0} = \frac{b}{a} = \frac{m\, e^{-i\frac{\pi}{3}}}{m\, e^{i\frac{\pi}{3}}} = e^{-i\frac{2\pi}{3}}. $$
    Ce nombre n'est pas réel (son argument $-\frac{2\pi}{3}$ n'est pas multiple de $\pi$). Donc $\dfrac{b}{a} \notin \mathbb{R}$, ce qui signifie que $\vec{OA}$ et $\vec{OB}$ ne sont pas colinéaires.

    <div class="my-2 font-semibold" style="color:#1F4E79">⇒ $O$, $A$, $B$ ne sont pas alignés.</div>

**2.a)** *Affixes de $P$ et de $R$.*

    <div class="my-2 rounded-md px-3 py-2 text-sm" style="background:#fff7ed;color:#9a3412"><strong>Rappel.</strong> Le centre $\omega$ d'une rotation d'angle $\theta$ qui transforme un point d'affixe $z$ en un point d'affixe $z'$ vérifie $z' - \omega = e^{i\theta}(z - \omega)$, d'où $\omega = \dfrac{z' - e^{i\theta} z}{1 - e^{i\theta}}$.</div>

    $P$ est le centre de la rotation d'angle $\frac{\pi}{2}$ envoyant $O$ (affixe $0$) sur $A$ (affixe $a$) :
    $$ p = \frac{a - e^{i\frac{\pi}{2}} \cdot 0}{1 - e^{i\frac{\pi}{2}}} = \frac{a}{1 - i}. $$
    Or $1 - i = \sqrt2\, e^{-i\frac{\pi}{4}}$, donc $\dfrac{1}{1-i} = \dfrac{1}{\sqrt2}\, e^{i\frac{\pi}{4}} = \dfrac{\sqrt2}{2}\, e^{i\frac{\pi}{4}}$. Avec $a = m\, e^{i\frac{\pi}{3}}$ :
    $$ p = m\, e^{i\frac{\pi}{3}} \cdot \frac{\sqrt2}{2}\, e^{i\frac{\pi}{4}} = m\, \frac{\sqrt2}{2}\, e^{i\left(\frac{\pi}{3} + \frac{\pi}{4}\right)} = m\, \frac{\sqrt2}{2}\, e^{i\frac{7\pi}{12}}. $$

    <div class="my-2 font-semibold" style="color:#1F4E79">⇒ $\boxed{p = m\, \dfrac{\sqrt2}{2}\, e^{i\frac{7\pi}{12}}}$.</div>

    $R$ est le centre de la rotation d'angle $\frac{\pi}{2}$ envoyant $B$ (affixe $b$) sur $O$ (affixe $0$) :
    $$ r = \frac{0 - e^{i\frac{\pi}{2}} b}{1 - e^{i\frac{\pi}{2}}} = \frac{-i\, b}{1 - i}. $$
    Or $\dfrac{-i}{1-i} = -i \cdot \dfrac{\sqrt2}{2} e^{i\frac{\pi}{4}} = \dfrac{\sqrt2}{2}\, e^{-i\frac{\pi}{2}} e^{i\frac{\pi}{4}} = \dfrac{\sqrt2}{2}\, e^{-i\frac{\pi}{4}}$. Avec $b = m\, e^{-i\frac{\pi}{3}}$ :
    $$ r = m\, e^{-i\frac{\pi}{3}} \cdot \frac{\sqrt2}{2}\, e^{-i\frac{\pi}{4}} = m\, \frac{\sqrt2}{2}\, e^{-i\frac{7\pi}{12}}. $$

    <div class="my-2 font-semibold" style="color:#1F4E79">⇒ $\boxed{r = m\, \dfrac{\sqrt2}{2}\, e^{-i\frac{7\pi}{12}}}$.</div>

**2.b)** *Affixe de $Q$.*

    $Q$ est le centre de la rotation d'angle $\frac{\pi}{2}$ envoyant $A$ (affixe $a$) sur $B$ (affixe $b$) :
    $$ q = \frac{b - i\, a}{1 - i}. $$
    On calcule le numérateur : $b - i a = m\, e^{-i\frac{\pi}{3}} - i\, m\, e^{i\frac{\pi}{3}} = m\left(e^{-i\frac{\pi}{3}} - e^{i\frac{\pi}{2}} e^{i\frac{\pi}{3}}\right) = m\left(e^{-i\frac{\pi}{3}} - e^{i\frac{5\pi}{6}}\right)$.

    Multiplions par $\dfrac{1}{1-i} = \dfrac{\sqrt2}{2} e^{i\frac{\pi}{4}}$ :
    $$ q = m\, \frac{\sqrt2}{2}\left(e^{-i\frac{\pi}{3}} e^{i\frac{\pi}{4}} - e^{i\frac{5\pi}{6}} e^{i\frac{\pi}{4}}\right) = m\, \frac{\sqrt2}{2}\left(e^{-i\frac{\pi}{12}} - e^{i\frac{13\pi}{12}}\right). $$
    Comme $e^{i\frac{13\pi}{12}} = -e^{i\frac{\pi}{12}}$ (déphasage de $\pi$), il vient $e^{-i\frac{\pi}{12}} - e^{i\frac{13\pi}{12}} = e^{-i\frac{\pi}{12}} + e^{i\frac{\pi}{12}} = 2\cos\frac{\pi}{12}$. Donc
    $$ q = m\, \frac{\sqrt2}{2} \cdot 2\cos\frac{\pi}{12} = m\sqrt2 \cos\frac{\pi}{12} = m\sqrt2\,\sin\frac{7\pi}{12}, $$
    car $\cos\frac{\pi}{12} = \sin\!\left(\frac{\pi}{2} - \frac{\pi}{12}\right) = \sin\frac{5\pi}{12} = \sin\frac{7\pi}{12}$ (angles supplémentaires).

    <div class="my-2 font-semibold" style="color:#1F4E79">⇒ $\boxed{q = m\sqrt2\,\sin\!\left(\dfrac{7\pi}{12}\right)}$ (réel non nul si $m \in \mathbb{R}$, complexe sinon).</div>

**3)** *$OQ = PR$ et $(OQ) \perp (PR)$.*

    On forme le rapport $\dfrac{p - r}{q}$ ($q \neq 0$ puisque $\sin\frac{7\pi}{12} \neq 0$ et $m \neq 0$) :
    $$ p - r = m\,\frac{\sqrt2}{2}\left(e^{i\frac{7\pi}{12}} - e^{-i\frac{7\pi}{12}}\right) = m\,\frac{\sqrt2}{2} \cdot 2i\sin\frac{7\pi}{12} = i\, m\sqrt2\,\sin\frac{7\pi}{12} = i\, q. $$
    Donc
    $$ \frac{p - r}{q - 0} = \frac{p-r}{q} = i. $$
    Le rapport $\dfrac{z_P - z_R}{z_Q - z_O} = i$ a pour module $1$ et pour argument $\frac{\pi}{2}$.

    Module $1$ : $\dfrac{PR}{OQ} = |i| = 1$, donc $\boxed{OQ = PR}$.

    Argument $\frac{\pi}{2}$ : $\left(\vec{OQ}, \vec{RP}\right) \equiv \frac{\pi}{2} \ [2\pi]$, donc les droites $(OQ)$ et $(PR)$ sont $\boxed{\text{perpendiculaires}}$.

    <div class="my-5 rounded-lg px-4 py-2.5 text-white font-bold" style="background:#1F4E79">Exercice 4 — Analyse <span class="font-normal text-white/80 text-sm">(13 points)</span></div>

    <div class="mt-4 mb-2 text-base font-bold" style="color:#1F4E79">Première partie</div>

    $f(0) = 0$ ; pour $x > 0$, $f(x) = x^3 \ln\!\left(1 + \dfrac{1}{x}\right)$.

**1)** *Encadrement $(P)$ : pour $x > 0$, $\dfrac{1}{x+1} < \ln\!\left(1 + \dfrac{1}{x}\right) < \dfrac{1}{x}$.*

    On applique le théorème des accroissements finis à $\psi : t \mapsto \ln t$ (continue sur $[x, x+1]$, dérivable sur $]x, x+1[$, $\psi'(t) = \frac1t$) : il existe $c \in \,]x, x+1[$ tel que
    $$ \ln(x+1) - \ln x = \frac{1}{c}, \qquad \text{soit} \qquad \ln\!\left(1 + \frac{1}{x}\right) = \frac{1}{c}. $$
    Comme $x < c < x+1$, on a $\dfrac{1}{x+1} < \dfrac{1}{c} < \dfrac{1}{x}$, d'où :
    $$ \boxed{\ \frac{1}{x+1} < \ln\!\left(1 + \frac{1}{x}\right) < \frac{1}{x}\ } \qquad (P). $$

**2.a)** *$f$ est dérivable à droite en $0$.*

    Pour $x > 0$, le taux d'accroissement est $\dfrac{f(x) - f(0)}{x - 0} = \dfrac{f(x)}{x} = x^2 \ln\!\left(1 + \dfrac{1}{x}\right)$. D'après $(P)$, en multipliant par $x^2 > 0$ :
    $$ \frac{x^2}{x+1} < x^2 \ln\!\left(1 + \frac{1}{x}\right) < x. $$
    Quand $x \to 0^+$, $\dfrac{x^2}{x+1} \to 0$ et $x \to 0$. Par encadrement, $\displaystyle\lim_{x \to 0^+} \frac{f(x)}{x} = 0$.

    <div class="my-2 font-semibold" style="color:#1F4E79">⇒ $f$ est dérivable à droite en $0$ et $\boxed{f'_d(0) = 0}$ (demi-tangente horizontale en $O$).</div>

**2.b)** *Branche parabolique.*

    Pour $x > 0$, $\dfrac{f(x)}{x} = x^2\ln\!\left(1+\dfrac1x\right) > \dfrac{x^2}{x+1}$ d'après $(P)$. Or $\dfrac{x^2}{x+1} \to +\infty$ quand $x \to +\infty$, donc $\displaystyle\lim_{x \to +\infty} \frac{f(x)}{x} = +\infty$.

    <div class="my-2 font-semibold" style="color:#1F4E79">⇒ $(C)$ admet une branche parabolique de direction $\boxed{\text{l'axe des ordonnées}}$.</div>

**3.a)** *$f$ dérivable sur $]0, +\infty[$ et expression de $f'$.*

    Sur $]0, +\infty[$, $f$ est produit/composée de fonctions dérivables ($x^3$ et $\ln(1 + \frac1x)$, $1 + \frac1x > 0$). On dérive avec $\left(\ln(1+\frac1x)\right)' = \dfrac{-1/x^2}{1 + 1/x} = \dfrac{-1}{x^2 + x} = \dfrac{-1}{x(x+1)}$ :
    $$ f'(x) = 3x^2 \ln\!\left(1 + \frac1x\right) + x^3 \cdot \frac{-1}{x(x+1)} = 3x^2 \ln\!\left(1 + \frac1x\right) - \frac{x^2}{x+1}. $$
    On met $3x^2$ en facteur :
    $$ \boxed{\ f'(x) = 3x^2\left( \ln\!\left(1 + \frac1x\right) - \frac{1}{3(1+x)} \right)\ }. $$

**3.b)** *$f$ strictement croissante sur $I$.*

    Pour $x > 0$, d'après $(P)$, $\ln\!\left(1 + \frac1x\right) > \dfrac{1}{x+1} > \dfrac{1}{3(x+1)}$. Donc le facteur entre parenthèses est strictement positif, et comme $3x^2 > 0$, on a $f'(x) > 0$ sur $]0, +\infty[$. Avec $f'_d(0) = 0$ et $f$ continue en $0$ :

    <div class="my-2 font-semibold" style="color:#1F4E79">⇒ $f$ est strictement croissante sur $I = [0, +\infty[$.</div>

**3.c)** *Tableau de variations.*

    $f$ est continue et strictement croissante sur $[0, +\infty[$, $f(0) = 0$ et $\displaystyle\lim_{x \to +\infty} f(x) = +\infty$ (car $f(x) > x \cdot \frac{x^2}{x+1} \to +\infty$).

    [figure : tableau de variations de $f$ sur $[0,+\infty[$ — $f$ croît de $f(0)=0$ jusqu'à $+\infty$ ; $f'(0)=0$, $f'(x)>0$ pour $x>0$.]

**4.a)** *$g'(x)$ et croissance de $g = f/x$.*

    Pour $x > 0$, $g(x) = \dfrac{f(x)}{x} = x^2 \ln\!\left(1 + \dfrac1x\right)$. On dérive :
    $$ g'(x) = 2x \ln\!\left(1 + \frac1x\right) + x^2 \cdot \frac{-1}{x(x+1)} = 2x \ln\!\left(1 + \frac1x\right) - \frac{x}{x+1}, $$
    soit, en factorisant par $2x$ :
    $$ \boxed{\ g'(x) = 2x\left( \ln\!\left(1 + \frac1x\right) - \frac{1}{2(1+x)} \right)\ }. $$
    D'après $(P)$, $\ln\!\left(1 + \frac1x\right) > \dfrac{1}{x+1} > \dfrac{1}{2(x+1)}$, donc le facteur est strictement positif et $g'(x) > 0$.

    <div class="my-2 font-semibold" style="color:#1F4E79">⇒ $g$ est strictement croissante sur $\mathbb{R}_+^*$.</div>

**4.b)** *$g(x) = 1$ admet une unique solution $\alpha \in \,]1, 2[$.*

    $g$ est continue et strictement croissante sur $]0, +\infty[$. Limites : $\displaystyle\lim_{x\to 0^+} g(x) = \lim_{x\to0^+}\frac{f(x)}{x} = 0$ (cf. 2.a) et $\displaystyle\lim_{x\to+\infty} g(x) = +\infty$ (cf. 2.b). Donc $g$ réalise une bijection de $]0, +\infty[$ vers $]0, +\infty[$ ; comme $1 \in \,]0, +\infty[$, l'équation $g(x) = 1$ admet une **unique** solution $\alpha$.

    On localise $\alpha$. Calculons $g(1)$ et $g(2)$ :
    $$ g(1) = 1^2 \ln(1 + 1) = \ln 2 = 0{,}7 < 1, $$
    $$ g(2) = 2^2 \ln\!\left(1 + \tfrac12\right) = 4 \ln\tfrac32 = 4 \times 0{,}4 = 1{,}6 > 1. $$
    Comme $g(1) < 1 < g(2)$ et $g$ strictement croissante :

    <div class="my-2 font-semibold" style="color:#1F4E79">⇒ $\boxed{\alpha \in \,]1, 2[}$.</div>

**4.c)** *Les seules solutions de $f(x) = x$ sont $0$ et $\alpha$.*

    Pour $x = 0$ : $f(0) = 0$, donc $0$ est solution. Pour $x > 0$ :
    $$ f(x) = x \iff \frac{f(x)}{x} = 1 \iff g(x) = 1 \iff x = \alpha. $$

    <div class="my-2 font-semibold" style="color:#1F4E79">⇒ Les solutions de $f(x) = x$ sont $\boxed{0 \text{ et } \alpha}$.</div>

**5.a)** *Tracé de $(C)$.*

    [figure : courbe $(C)$ de $f$ dans le repère orthonormé $(O,\vec i,\vec j)$ ; demi-tangente horizontale à droite en $O$ (pente $f'_d(0)=0$) ; branche parabolique de direction l'axe des ordonnées en $+\infty$ ; la courbe coupe la première bissectrice $y=x$ en $O$ et en $\alpha \in \,]1,2[$.]

**5.b)** *$f$ est une bijection de $I$ vers $I$.*

    $f$ est continue et strictement croissante sur $I = [0, +\infty[$ ; $f(0) = 0$ et $\displaystyle\lim_{x\to+\infty} f(x) = +\infty$. Donc $f$ réalise une bijection de $[0, +\infty[$ sur $[0, +\infty[ = I$.

    <div class="my-2 font-semibold" style="color:#1F4E79">⇒ $f$ est une bijection de $I$ vers $I$ ; on note $f^{-1}$ sa réciproque.</div>

    <div class="mt-4 mb-2 text-base font-bold" style="color:#1F4E79">Deuxième partie</div>

    $(u_n)$ : $0 < u_0 < \alpha$, $u_{n+1} = f^{-1}(u_n)$.

**1)** *Récurrence : $0 < u_n < \alpha$ pour tout $n$.*

    Initialisation : $0 < u_0 < \alpha$ par hypothèse. Hérédité : supposons $0 < u_n < \alpha$. Comme $f^{-1}$ est strictement croissante (réciproque d'une fonction strictement croissante), et que $f^{-1}(0) = 0$ (car $f(0)=0$) et $f^{-1}(\alpha) = \alpha$ (car $f(\alpha) = \alpha$ d'après 4.c, $\alpha$ étant point fixe de $f$), on obtient
    $$ f^{-1}(0) < f^{-1}(u_n) < f^{-1}(\alpha) \iff 0 < u_{n+1} < \alpha. $$

    <div class="my-2 font-semibold" style="color:#1F4E79">⇒ Pour tout $n \in \mathbb{N}$, $0 < u_n < \alpha$.</div>

**2.a)** *$g(\,]0, \alpha[\,) = \,]0, 1[$.*

    $g$ est continue, strictement croissante sur $]0, +\infty[$, avec $g(0^+) = 0$ et $g(\alpha) = 1$. Donc l'image de l'intervalle $]0, \alpha[$ est $\boxed{\,]0, 1[\,}$.

**2.b)** *$(u_n)$ strictement croissante.*

    Pour $0 < u_n < \alpha$, on a d'après 2.a, $g(u_n) \in \,]0, 1[$, c'est-à-dire $0 < \dfrac{f(u_n)}{u_n} < 1$, donc $0 < f(u_n) < u_n$. En appliquant $f^{-1}$ (croissante) à $f(u_n) < u_n$ : $u_n = f^{-1}(f(u_n)) < f^{-1}(u_n) = u_{n+1}$.

    <div class="my-2 font-semibold" style="color:#1F4E79">⇒ Pour tout $n$, $u_n < u_{n+1}$ : la suite $(u_n)$ est strictement croissante.</div>

**2.c)** *$(u_n)$ converge.*

    $(u_n)$ est croissante (2.b) et majorée par $\alpha$ (1). Toute suite croissante majorée converge.

    <div class="my-2 font-semibold" style="color:#1F4E79">⇒ $(u_n)$ est convergente.</div>

**3)** *$\displaystyle\lim_{n\to+\infty} u_n$.*

    Posons $\ell = \displaystyle\lim u_n$. Par passage à la limite dans $0 < u_n < \alpha$, on a $0 \leq \ell \leq \alpha$. La fonction $f^{-1}$ est continue sur $[0, \alpha]$ (donc en $\ell$) ; en passant à la limite dans $u_{n+1} = f^{-1}(u_n)$ : $\ell = f^{-1}(\ell)$, soit $f(\ell) = \ell$. Les points fixes de $f$ sont $0$ et $\alpha$ (4.c). Comme la suite est strictement croissante avec $u_0 > 0$, on a $\ell \geq u_1 > u_0 > 0$, donc $\ell \neq 0$.

    <div class="my-2 font-semibold" style="color:#1F4E79">⇒ $\boxed{\displaystyle\lim_{n\to+\infty} u_n = \alpha}$.</div>

    <div class="mt-4 mb-2 text-base font-bold" style="color:#1F4E79">Troisième partie</div>

    $F(x) = \displaystyle\int_x^1 f(t)\,dt$ sur $I = [0, +\infty[$.

**1.a)** *Signe de $F(x)$.*

    $f \geq 0$ sur $I$ (car $f(0)=0$ et $f(x) > 0$ pour $x>0$). Si $0 \leq x \leq 1$ : $\int_x^1 f \geq 0$, donc $F(x) \geq 0$. Si $x \geq 1$ : $F(x) = \int_x^1 f = -\int_1^x f \leq 0$.

    <div class="my-2 font-semibold" style="color:#1F4E79">⇒ $\boxed{F(x) \geq 0 \text{ sur } [0,1] \quad\text{et}\quad F(x) \leq 0 \text{ sur } [1, +\infty[}$.</div>

**1.b)** *$F$ dérivable, $F'$.*

    $f$ est continue sur $I$, donc $x \mapsto \int_x^1 f(t)\,dt$ est dérivable sur $I$, de dérivée :
    $$ F'(x) = \frac{d}{dx}\left( -\int_1^x f(t)\,dt \right) = -f(x). $$

    <div class="my-2 font-semibold" style="color:#1F4E79">⇒ $\boxed{F'(x) = -f(x)}$ pour tout $x \in I$.</div>

**1.c)** *$F$ strictement décroissante.*

    Pour $x > 0$, $f(x) > 0$ donc $F'(x) = -f(x) < 0$ ; $F'(x) = 0 \iff x = 0$. Ainsi $F' \leq 0$ et ne s'annule qu'en $0$ : $F$ est strictement décroissante sur $I$.

**2.a)** *Pour $x \geq 1$, $F(x) \leq (1-x)\ln 2$.*

    $f$ est croissante sur $I$ (Partie I, 3.b), donc pour tout $t \geq 1$ on a $f(t) \geq f(1) = 1^3\ln 2 = \ln 2$. Par suite, pour $x \geq 1$ :
    $$ \int_1^x f(t)\,dt \geq \int_1^x \ln 2 \,dt = (x-1)\ln 2, $$
    d'où $F(x) = -\int_1^x f(t)\,dt \leq -(x-1)\ln 2 = (1-x)\ln 2$.

    <div class="my-2 font-semibold" style="color:#1F4E79">⇒ $\boxed{F(x) \leq (1-x)\ln 2}$ pour $x \geq 1$.</div>

**2.b)** *$\displaystyle\lim_{x\to+\infty} F(x)$.*

    Comme $(1-x)\ln 2 \to -\infty$ et $F(x) \leq (1-x)\ln 2$ :

    <div class="my-2 font-semibold" style="color:#1F4E79">⇒ $\boxed{\displaystyle\lim_{x\to+\infty} F(x) = -\infty}$.</div>

**3.a)** *Intégration par parties.*

    On pose $u(t) = \ln(1 + \frac1t)$ et $v'(t) = t^3$, donc $u'(t) = \dfrac{-1}{t(t+1)}$ et $v(t) = \dfrac{t^4}{4}$ :
    $$ F(x) = \int_x^1 t^3 \ln\!\left(1+\tfrac1t\right) dt = \left[ \frac{t^4}{4}\ln\!\left(1+\tfrac1t\right) \right]_x^1 - \int_x^1 \frac{t^4}{4}\cdot\frac{-1}{t(t+1)}\,dt. $$
    Le crochet : en $t=1$, $\frac14\ln 2$ ; en $t = x$, $\frac{x^4}{4}\ln(1+\frac1x)$. Donc le crochet vaut $\dfrac{\ln 2}{4} - \dfrac{x^4}{4}\ln(1+\frac1x)$. L'intégrale restante : $\dfrac{t^4}{4t(t+1)} = \dfrac{t^3}{4(t+1)}$, d'où
    $$ \boxed{\ F(x) = \frac{\ln 2}{4} - \frac{x^4}{4}\ln\!\left(1+\frac1x\right) + \frac14 \int_x^1 \frac{t^3}{t+1}\,dt\ }. $$

**3.b)** *Calcul de $\displaystyle\int_x^1 \frac{t^3}{t+1}\,dt$.*

    En utilisant $\dfrac{t^3}{1+t} = t^2 - t + 1 - \dfrac{1}{1+t}$ :
    $$ \int_x^1 \frac{t^3}{t+1}\,dt = \left[ \frac{t^3}{3} - \frac{t^2}{2} + t - \ln(1+t) \right]_x^1. $$
    En $t = 1$ : $\frac13 - \frac12 + 1 - \ln 2 = \frac56 - \ln 2$. En $t = x$ : $\frac{x^3}{3} - \frac{x^2}{2} + x - \ln(1+x)$. Donc
    $$ \boxed{\ \int_x^1 \frac{t^3}{t+1}\,dt = \frac56 - \ln 2 - \frac{x^3}{3} + \frac{x^2}{2} - x + \ln(1+x)\ }. $$

**3.c)** *Expression de $F(x)$.*

    On reporte 3.b dans 3.a :
    $$ F(x) = \frac{\ln 2}{4} - \frac{x^4}{4}\ln\!\left(1+\frac1x\right) + \frac14\left( \frac56 - \ln 2 - \frac{x^3}{3} + \frac{x^2}{2} - x + \ln(1+x) \right). $$
    Le terme constant : $\dfrac{\ln 2}{4} + \dfrac14 \cdot \dfrac56 - \dfrac{\ln 2}{4} = \dfrac{5}{24}$. En développant :
    $$ \boxed{\ F(x) = \frac{5}{24} - \frac{x^3}{12} + \frac{x^2}{8} - \frac{x}{4} + \frac14\ln(1+x) - \frac{x^4}{4}\ln\!\left(1+\frac1x\right)\ }. $$

**3.d)** *$\displaystyle\lim_{x\to0^+} F(x)$ et valeur de $\displaystyle\int_0^1 f(t)\,dt$.*

    Quand $x \to 0^+$ : tous les termes polynomiaux et $\frac14\ln(1+x) \to 0$, et $\dfrac{x^4}{4}\ln(1+\frac1x) \to 0$ (car $x^4 \to 0$ domine le $\ln$). Donc
    $$ \lim_{x\to0^+} F(x) = \frac{5}{24}. $$
    $F$ est continue à droite en $0$ (continue sur $I$), donc $F(0) = \dfrac{5}{24}$. Or $F(0) = \displaystyle\int_0^1 f(t)\,dt$ :

    <div class="my-2 font-semibold" style="color:#1F4E79">⇒ $\boxed{\displaystyle\int_0^1 f(t)\,dt = \frac{5}{24}}$.</div>

**4.a)** *Encadrement par accroissements finis.*

    On applique l'inégalité des accroissements finis à $F$ sur $\left[\dfrac{k}{n}, \dfrac{2k+1}{2n}\right]$ (longueur $\frac{1}{2n}$), avec $F' = -f$. Comme $f$ est croissante, pour $x \in \left[\frac{k}{n}, \frac{2k+1}{2n}\right]$ on a $f\!\left(\frac{k}{n}\right) \leq f(x) \leq f\!\left(\frac{2k+1}{2n}\right)$, donc $-f\!\left(\frac{2k+1}{2n}\right) \leq F'(x) \leq -f\!\left(\frac{k}{n}\right)$. En intégrant sur l'intervalle de longueur $\frac{1}{2n}$ :
    $$ \boxed{\ -\frac{1}{2n} f\!\left(\frac{2k+1}{2n}\right) \leq F\!\left(\frac{2k+1}{2n}\right) - F\!\left(\frac{k}{n}\right) \leq -\frac{1}{2n} f\!\left(\frac{k}{n}\right)\ }. $$

**4.b)** *Encadrement de $v_n$.*

    En sommant l'inégalité 4.a pour $k = 0, 1, \dots, n-1$, et en notant que $\dfrac{2k+1}{2n} < \dfrac{k+1}{n}$ (et $f$ croissante), on encadre la somme télescopique $\sum_{k=0}^{n-1}\left[F\!\left(\frac{2k+1}{2n}\right) - F\!\left(\frac{k}{n}\right)\right]$. Après réindexation des bornes, on obtient :
    $$ \boxed{\ -\frac{1}{2n}\sum_{k=1}^{k=n} f\!\left(\frac{k}{n}\right) \leq v_n \leq -\frac{1}{2n}\sum_{k=0}^{k=n-1} f\!\left(\frac{k}{n}\right)\ }. $$

**4.c)** *Convergence de $(v_n)$ et limite.*

    Les sommes $\dfrac1n \displaystyle\sum_{k=0}^{n-1} f\!\left(\frac{k}{n}\right)$ et $\dfrac1n \displaystyle\sum_{k=1}^{n} f\!\left(\frac{k}{n}\right)$ sont des sommes de Riemann de $f$, continue sur $[0,1]$ : elles convergent toutes deux vers $\displaystyle\int_0^1 f(t)\,dt = \dfrac{5}{24}$.

    Ainsi les deux membres de l'encadrement 4.b tendent vers $-\dfrac12 \cdot \dfrac{5}{24} = -\dfrac{5}{48}$. Par le théorème des gendarmes :

    <div class="my-2 font-semibold" style="color:#1F4E79">⇒ $(v_n)$ est convergente et $\boxed{\displaystyle\lim_{n\to+\infty} v_n = -\frac{5}{48}}$.</div>
