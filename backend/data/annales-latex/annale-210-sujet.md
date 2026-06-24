<div class="my-5 rounded-lg px-4 py-2.5 text-white font-bold" style="background:#1F4E79">Exercice 1 <span class="font-normal text-white/80 text-sm">(7.5 points)</span></div>

Soit $f$ la fonction numérique définie sur l'intervalle $[1,+\infty[$ par :

$$ f(1) = \frac{1}{2} \quad \text{et pour tout } x \in \,]1,+\infty[\,, \quad f(x) = \frac{\ln(x)}{x^2 - 1} $$

Soit $(C)$ la courbe représentative de la fonction $f$ dans un repère orthogonal $(O,\vec{i},\vec{j})$.

**1)** Montrer que $f$ est continue à droite en $1$.

**2)** Calculer $\lim\limits_{x \to +\infty} f(x)$ puis interpréter graphiquement le résultat obtenu.

**3.a)** Soit $x \in \,]1,+\infty[$. En posant $t = (x-1)^2$, vérifier que :
$$ \frac{1 - x + \ln(x)}{(x-1)^2} = \frac{-\sqrt{t} + \ln(1+\sqrt{t})}{t} $$

**3.b)** Montrer que $\big(\forall t \in \,]0,+\infty[\,\big)\,,\quad -\dfrac{1}{2} < \dfrac{-\sqrt{t} + \ln(1+\sqrt{t})}{t} < \dfrac{-1}{2(1+\sqrt{t})}$.

(On pourra utiliser le théorème des accroissements finis sur l'intervalle $[0\,;t]$.)

**3.c)** En déduire que : $\lim\limits_{x \to 1^+} \dfrac{1 - x + \ln(x)}{(x-1)^2} = -\dfrac{1}{2}$.

**4.a)** Montrer que : $\forall x \in \,]1,+\infty[\,,\quad \dfrac{f(x) - \tfrac{1}{2}}{x-1} = -\dfrac{\ln(x)}{x-1} \times \dfrac{1}{2(x+1)} + \dfrac{\ln(x) - x + 1}{2(x-1)^2}$.

**4.b)** En déduire que $f$ est dérivable à droite en $1$ puis interpréter graphiquement le résultat obtenu.

**5)** Pour tout $x \in [1,+\infty[$ on pose $I(x) = \displaystyle\int_1^x \frac{t^2 - 1}{t^3}\,dt$ et $J(x) = \displaystyle\int_1^x \frac{t^2 - 1}{t^2}\,dt$.

**5.a)** Montrer que : $\forall x \in [1,+\infty[\,,\quad 0 \le I(x) \le J(x)$.

**5.b)** Montrer que pour tout $x \in [1,+\infty[\,,\quad I(x) = \ln(x) - \dfrac{x^2 - 1}{2x^2}$ et $J(x) = \dfrac{(x-1)^2}{x}$.

**5.c)** Montrer que : $\forall x \in \,]1,+\infty[\,,\quad f'(x) = \dfrac{-2}{(x+1)^2} \times \dfrac{I(x)}{J(x)}$.

**5.d)** En déduire que : $\forall x \in \,]1,+\infty[\,,\quad -\dfrac{1}{2} \le f'(x) \le 0$.

**6.a)** Dresser le tableau de variations de la fonction $f$.

**6.b)** Tracer la courbe $(C)$. (On prendra $\|\vec{i}\| = 1\,\text{cm}$ et $\|\vec{j}\| = 2\,\text{cm}$.)

**7)** Montrer que l'équation $f(x) = x - 1$ admet une unique solution $a$ dans $\,]1,2[$.

**8)** Soit $(a_n)_{n \in \mathbb{N}}$ la suite numérique définie par :
$$ a_0 \in [1,+\infty[ \quad \text{et} \quad \text{pour tout } n \in \mathbb{N},\quad a_{n+1} = 1 + f(a_n) $$

**8.a)** Montrer que : $\big(\forall n \in \mathbb{N}\big),\quad |a_{n+1} - a| \le \dfrac{1}{2}\,|a_n - a|$.

**8.b)** Montrer par récurrence que : $\big(\forall n \in \mathbb{N}\big),\quad |a_n - a| \le \left(\dfrac{1}{2}\right)^n |a_0 - a|$.

**8.c)** En déduire que la suite $(a_n)_{n \in \mathbb{N}}$ est convergente.

<div class="my-5 rounded-lg px-4 py-2.5 text-white font-bold" style="background:#1F4E79">Exercice 2 <span class="font-normal text-white/80 text-sm">(2.5 points)</span></div>

Soit $F$ la fonction numérique définie sur l'intervalle $[0\,;1]$ par : $F(x) = \displaystyle\int_0^x e^{t^2}\,dt$.

**1.a)** Montrer que $F$ est continue, strictement croissante sur $[0\,;1]$.

**1.b)** En déduire que $F$ est une bijection de $[0\,;1]$ vers $[0\,;\beta]$ avec $\beta = \displaystyle\int_0^1 e^{t^2}\,dt$.

**2)** On note $F^{-1}$ la bijection réciproque de $F$. Pour tout $n \in \mathbb{N}^*$, on pose :
$$ S_n = \frac{1}{n}\sum_{k=1}^{k=n} F^{-1}\!\left(\frac{k}{n}\beta\right) $$

**2.a)** Montrer que la suite $(S_n)_{n \in \mathbb{N}^*}$ est convergente de limite $\ell = \dfrac{1}{\beta}\displaystyle\int_0^\beta F^{-1}(t)\,dt$.

**2.b)** Montrer que $\ell = \dfrac{1}{\beta}\displaystyle\int_0^1 u\,e^{u^2}\,du$.

(On pourra effectuer le changement de variable $u = F^{-1}(t)$.)

**2.c)** En déduire que : $\ell = \dfrac{e-1}{2\beta}$.

<div class="my-5 rounded-lg px-4 py-2.5 text-white font-bold" style="background:#1F4E79">Exercice 3 <span class="font-normal text-white/80 text-sm">(3.5 points)</span></div>

Le plan complexe est rapporté à un repère orthonormé direct $(O,\vec{u},\vec{v})$.

On considère dans $\mathbb{C}$ l'équation d'inconnue $z$ :
$$ (E_\alpha) : z^2 - 2iz + \alpha = 0 \qquad \text{où } \alpha \in \mathbb{C} $$

**Partie I**

**1.a)** Montrer que le discriminant de l'équation $(E_\alpha)$ est $\Delta = -4(1+\alpha)$.

**1.b)** Déterminer l'ensemble des valeurs $\alpha$ pour lesquelles l'équation $(E_\alpha)$ admet dans l'ensemble $\mathbb{C}$ deux solutions distinctes.

**2)** On note $z_1$ et $z_2$ les deux solutions de l'équation $(E_\alpha)$. Déterminer $z_1 + z_2$ et $z_1 z_2$.

**Partie II**

Soient $\Omega$, $M_1$ et $M_2$ les points d'affixes respectivement $\alpha$, $z_1$ et $z_2$.

**1)** On suppose que $\alpha = m^2 - 2m$ avec $m \in \mathbb{R}$.

**1.a)** Déterminer $z_1$ et $z_2$ en fonction de $m$.

**1.b)** En déduire que les points $O$, $M_1$ et $M_2$ sont alignés.

**2)** On suppose que les points $O$, $M_1$ et $M_2$ ne sont pas alignés.

**2.a)** Montrer que $\dfrac{z_1}{z_2}$ est un imaginaire pur si et seulement si $\operatorname{Re}(z_1\overline{z_2}) = 0$.

**2.b)** Montrer que : $|z_1 - z_2|^2 = |z_1 + z_2|^2 - 4\operatorname{Re}(z_1\overline{z_2})$.

**2.c)** En déduire que $\dfrac{z_1}{z_2}$ est un imaginaire pur si et seulement si $|z_1 - z_2| = 2$.

**3.a)** Montrer que : $(z_1 - z_2)^2 = \Delta$.

**3.b)** Déterminer l'ensemble $\Gamma$ des points $\Omega$ pour que le triangle $OM_1M_2$ soit rectangle en $O$.

<div class="my-5 rounded-lg px-4 py-2.5 text-white font-bold" style="background:#1F4E79">Exercice 4 <span class="font-normal text-white/80 text-sm">(3.5 points)</span></div>

On considère dans $\mathbb{C} \times \mathbb{C}^*$ la loi de composition interne $T$ définie par :
$$ \forall \big((a,b),(c,d)\big) \in (\mathbb{C} \times \mathbb{C}^*)^2 \,;\quad (a,b)\,T\,(c,d) = \big(a\overline{d} + c,\; bd\big) $$

($\overline{d}$ étant le conjugué du nombre complexe $d$.)

**1.a)** Vérifier que $(i,2)\,T\,(1,i) = (2,2i)$, puis calculer $(1,i)\,T\,(i,2)$.

**1.b)** En déduire que la loi $T$ n'est pas commutative dans $\mathbb{C} \times \mathbb{C}^*$.

**2)** Montrer que la loi $T$ est associative dans $\mathbb{C} \times \mathbb{C}^*$.

**3)** Vérifier que $(0,1)$ est l'élément neutre pour $T$ dans $\mathbb{C} \times \mathbb{C}^*$.

**4.a)** Vérifier que $\forall (a,b) \in \mathbb{C} \times \mathbb{C}^*\,;\quad (a,b)\,T\,\left(-\dfrac{a}{\overline{b}},\,\dfrac{1}{b}\right) = (0,1)$.

**4.b)** Montrer que $(\mathbb{C} \times \mathbb{C}^*,\,T)$ est un groupe non commutatif.

**5.a)** Montrer que $\mathbb{R} \times \mathbb{R}^*$ est stable par la loi de composition interne $T$.

**5.b)** Montrer que $\mathbb{R} \times \mathbb{R}^*$ est un sous-groupe du groupe $(\mathbb{C} \times \mathbb{C}^*,\,T)$.

<div class="my-5 rounded-lg px-4 py-2.5 text-white font-bold" style="background:#1F4E79">Exercice 5 <span class="font-normal text-white/80 text-sm">(3 points)</span></div>

Soient $p$ et $q$ deux nombres premiers distincts et $r$ un entier naturel premier avec $p$ et avec $q$.

**1.a)** Montrer que $p$ divise $r^{p-1} - 1$ et que $q$ divise $r^{q-1} - 1$.

**1.b)** En déduire que $p$ et $q$ divisent $r^{(p-1)(q-1)} - 1$.

**1.c)** Montrer que $pq$ divise $r^{(p-1)(q-1)} - 1$.

**2)** Résoudre dans $\mathbb{Z}$ l'équation $2024^{192}\,x \equiv 3 \;[221]$. (On donne : $221 = 13 \times 17$.)
