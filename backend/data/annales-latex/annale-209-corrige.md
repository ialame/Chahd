<div class="my-5 rounded-lg px-4 py-2.5 text-white font-bold" style="background:#1F4E79">Exercice 1 — Analyse <span class="font-normal text-white/80 text-sm">(10 points)</span></div>

$f_n(0)=0$ et pour $x>0$ : $f_n(x)=\sqrt{x}\,(\ln x)^n$.

**Partie I**

**1.a)** Posons $u = x^{\frac{1}{2n}}$, de sorte que $x = u^{2n}$ et $\sqrt{x} = u^{n}$. De plus $\ln x = 2n\ln u = 2n\ln\!\left(x^{\frac1{2n}}\right)$, donc :
$$\sqrt{x}\,(\ln x)^n = u^{n}\big(2n\ln u\big)^n = (2n)^n\big(u\ln u\big)^n = (2n)^n\left(x^{\frac1{2n}}\ln\!\left(x^{\frac1{2n}}\right)\right)^n.$$
Quand $x \to 0^+$, on a $u = x^{\frac1{2n}} \to 0^+$ et par croissances comparées $u\ln u \to 0$. Donc $f_n(x) \to (2n)^n \cdot 0 = 0 = f_n(0)$.

<div class="my-2 font-semibold" style="color:#1F4E79">⇒ $f_n$ est continue à droite en $0$.</div>

**1.b)** Quand $x \to +\infty$ : $\sqrt{x} \to +\infty$ et $(\ln x)^n \to +\infty$, donc :
$$\boxed{\lim\limits_{x\to+\infty} f_n(x) = +\infty}.$$

**1.c)** Avec la même écriture, en divisant par $x = u^{2n}$ :
$$\frac{f_n(x)}{x} = \frac{(2n)^n(u\ln u)^n}{u^{2n}} = (2n)^n\left(\frac{\ln u}{u}\right)^n = (2n)^n\left(\frac{\ln\!\left(x^{\frac1{2n}}\right)}{x^{\frac1{2n}}}\right)^n.$$
Quand $x \to +\infty$, $u = x^{\frac1{2n}} \to +\infty$ et $\dfrac{\ln u}{u} \to 0$, donc :
$$\boxed{\lim\limits_{x\to+\infty}\frac{f_n(x)}{x} = 0}.$$

<div class="my-2 font-semibold" style="color:#1F4E79">⇒ La courbe $(C_n)$ admet une branche parabolique de direction l'axe des abscisses au voisinage de $+\infty$.</div>

**1.d)** Pour $x>0$ : $\dfrac{f_n(x)}{x} = \dfrac{(\ln x)^n}{\sqrt{x}}$. Quand $x\to 0^+$ : $\sqrt{x}\to 0^+$ et $(\ln x)^n \to (-\infty)^n$.

- Si $n$ est **pair** : $(\ln x)^n \to +\infty$, donc $\dfrac{f_n(x)}{x} \to +\infty$.
- Si $n$ est **impair** : $(\ln x)^n \to -\infty$, donc $\dfrac{f_n(x)}{x} \to -\infty$.

<div class="my-2 font-semibold" style="color:#1F4E79">⇒ $(C_n)$ admet en $O$ une demi-tangente verticale (dirigée vers le haut si $n$ pair, vers le bas si $n$ impair).</div>

**2.a)** Sur $]0,+\infty[$, $f_n$ est produit de fonctions dérivables ($x\mapsto\sqrt{x}$ et $x\mapsto(\ln x)^n$), donc dérivable. Par la règle du produit :
$$f_n'(x) = \frac{1}{2\sqrt{x}}(\ln x)^n + \sqrt{x}\cdot n(\ln x)^{n-1}\cdot\frac1x = \frac{(\ln x)^{n-1}}{2\sqrt{x}}\Big(\ln x + 2n\Big).$$
$$\boxed{f_n'(x) = \frac{1}{2\sqrt{x}}(\ln x)^{n-1}(2n + \ln x)}.$$

**2.b)** Pour $n\ge 2$, comme $\dfrac{1}{2\sqrt{x}}>0$ :
$$f_n'(x) = 0 \iff (\ln x)^{n-1} = 0 \ \text{ou}\ 2n+\ln x = 0 \iff \ln x = 0 \ \text{ou}\ \ln x = -2n \iff x = 1 \ \text{ou}\ x = e^{-2n}.$$

**2.c)** Le signe de $f_n'$ est celui de $g(x) = (\ln x)^{n-1}(2n+\ln x)$. Notons $0 < e^{-2n} < 1$.

- $2n+\ln x > 0 \iff x > e^{-2n}$.
- Le signe de $(\ln x)^{n-1}$ dépend de la parité de $n-1$.

**Cas $n$ pair** ($n-1$ impair) : $(\ln x)^{n-1}$ a le signe de $\ln x$.

| $x$ | $0$ | | $e^{-2n}$ | | $1$ | | $+\infty$ |
|---|---|---|---|---|---|---|---|
| signe de $f_n'$ | | $+$ | $0$ | $-$ | $0$ | $+$ | |
| $f_n$ | $0$ | ↗ | max | ↘ | $0$ | ↗ | $+\infty$ |

Sur $]0,e^{-2n}]$ : $\ln x<-2n<0$ donc $(\ln x)^{n-1}<0$ et $2n+\ln x<0$, produit $>0$ : croissante. Maximum local en $e^{-2n}$, minimum (valeur $0$) en $1$.

**Cas $n$ impair** ($n-1$ pair) : $(\ln x)^{n-1}\ge 0$, donc $f_n'$ a le signe de $2n+\ln x$.

| $x$ | $0$ | | $e^{-2n}$ | | $1$ | | $+\infty$ |
|---|---|---|---|---|---|---|---|
| signe de $f_n'$ | | $-$ | $0$ | $+$ | $0$ | $+$ | |
| $f_n$ | $0$ | ↘ | min | ↗ | $0$ | ↗ | $+\infty$ |

$f_n$ décroît sur $]0,e^{-2n}]$, croît sur $[e^{-2n},+\infty[$ (la dérivée s'annulant sans changer de signe en $1$).

**2.d)** Calculons $f_n''$ pour $n$ impair, $n\ge 3$. De $f_n'(x)=\dfrac{1}{2\sqrt x}(\ln x)^{n-1}(2n+\ln x)=\dfrac{1}{2\sqrt x}\big[(\ln x)^n+2n(\ln x)^{n-1}\big]$, en dérivant chaque facteur, on obtient au voisinage de $x=1$ le comportement de $(\ln x)^{n-2}$ (terme dominant), avec $n-2$ impair $\ge 1$. Ainsi $f_n''$ s'annule en $1$ en changeant de signe (le facteur $(\ln x)^{n-2}$, à exposant impair, change de signe en traversant $x=1$).

<div class="my-2 font-semibold" style="color:#1F4E79">⇒ Le point d'abscisse $1$ (point $(1,0)$) est un point d'inflexion de $(C_n)$.</div>

**Partie II**

$\beta \in \,]1,e[$ fixé, $u_n = f_n(\beta) = \sqrt{\beta}\,(\ln\beta)^n$.

**1.a)** Comme $1<\beta<e$ : $\sqrt{\beta}>0$ et $0<\ln\beta<1$, donc $(\ln\beta)^n>0$ et $u_n>0$. De plus $(\ln\beta)^n<1$ et $\sqrt{\beta}<\sqrt{e}$, d'où :
$$0 < u_n = \sqrt{\beta}\,(\ln\beta)^n < \sqrt{e}\cdot 1 = \sqrt{e}.$$
$$\boxed{0 < u_n < \sqrt{e}}.$$

**1.b)** $\dfrac{u_{n+1}}{u_n} = \dfrac{\sqrt{\beta}\,(\ln\beta)^{n+1}}{\sqrt{\beta}\,(\ln\beta)^{n}} = \ln\beta \in \,]0,1[$. Comme $u_n>0$, on a $u_{n+1}<u_n$.

<div class="my-2 font-semibold" style="color:#1F4E79">⇒ $(u_n)$ est strictement décroissante.</div>

**1.c)** Suite géométrique de raison $\ln\beta\in\,]0,1[$ : $u_n=\sqrt{\beta}\,(\ln\beta)^n \to 0$.
$$\boxed{\lim\limits_{n\to+\infty} u_n = 0}.$$

**2.a)** Fixons $n\in\mathbb{N}^*$. Sur $[1,e]$, $f_n$ est continue. $f_n(1)=\sqrt{1}\cdot 0^n=0$ et $f_n(e)=\sqrt{e}\cdot 1^n=\sqrt{e}>1$. Sur $]1,e]$, $\ln x>0$ et $2n+\ln x>0$ donc $f_n'>0$ : $f_n$ est strictement croissante et continue sur $[1,e]$, réalisant une bijection de $[1,e]$ sur $[0,\sqrt{e}]$. Comme $1\in\,]0,\sqrt{e}[$, il existe un unique $x_n\in\,]1,e[$ tel que $f_n(x_n)=1$.

**2.b)** $f_n(x_n)=1$ donne $\sqrt{x_n}\,(\ln x_n)^n = 1$. Comparons $f_{n+1}(x_n)$ à $1$ :
$$f_{n+1}(x_n) = \sqrt{x_n}\,(\ln x_n)^{n+1} = \underbrace{\sqrt{x_n}\,(\ln x_n)^n}_{=1}\cdot\ln x_n = \ln x_n.$$
Or $1<x_n<e$ donc $\ln x_n<1$, d'où $f_{n+1}(x_n)<1=f_{n+1}(x_{n+1})$. Comme $f_{n+1}$ est strictement croissante sur $]1,e[$, on en déduit $x_n<x_{n+1}$.

<div class="my-2 font-semibold" style="color:#1F4E79">⇒ $(x_n)$ est croissante ; étant majorée par $e$, elle converge.</div>

**3)** $\ell=\lim\limits_{n\to+\infty}x_n$.

**3.a)** Par passage à la limite dans $1<x_n<e$ (et croissance) : $1\le\ell\le e$. Montrons $\ell>1$ : la suite étant croissante, $x_n\ge x_1>1$ pour tout $n$, donc $\ell\ge x_1>1$.
$$\boxed{1<\ell\le e}.$$

**3.b)** De $\sqrt{x_n}\,(\ln x_n)^n=1$, on tire $(\ln x_n)^n = \dfrac{1}{\sqrt{x_n}}$. Comme $x_n\to\ell$ et $x\mapsto\frac{1}{\sqrt{x}}$ est continue en $\ell>0$ :
$$\lim\limits_{n\to+\infty}(\ln x_n)^n = \frac{1}{\sqrt{\ell}}.$$

**3.c)** Supposons $\ell<e$. Alors $\ln x_n\to\ln\ell<1$, donc à partir d'un certain rang $0<\ln x_n<1$ et $\ln(\ln x_n)<0$ avec $\ln(\ln x_n)\to\ln(\ln\ell)<0$ (car $\ln\ell\in\,]0,1[$). Donc :
$$n\ln(\ln x_n) = n\cdot\underbrace{\ln(\ln x_n)}_{\to\,\ln(\ln\ell)<0} \to -\infty.$$

**3.d)** D'après 3.b), $(\ln x_n)^n\to\dfrac{1}{\sqrt{\ell}}\in\,]0,+\infty[$, donc $\ln\big((\ln x_n)^n\big)=n\ln(\ln x_n)\to \ln\!\dfrac{1}{\sqrt\ell}$, **limite finie**. Ceci contredit le résultat de 3.c) ($-\infty$) si $\ell<e$. Donc nécessairement $\ell=e$.
$$\boxed{\ell = e}.$$

**Partie III**

$F(x)=\displaystyle\int_x^1 \big(f_1(t)\big)^2\,\mathrm{d}t$ avec $f_1(t)^2 = t\,(\ln t)^2$ pour $t>0$.

**1.a)** La fonction $t\mapsto t(\ln t)^2$ est continue sur $]0,+\infty[$ et se prolonge par continuité en $0$ (limite $0$). $F$ est donc une primitive (au signe près) d'une fonction continue sur $I$, donc $F$ est continue sur $I$.

**1.b)** Posons $\displaystyle\int x(\ln x)^2\,\mathrm dx$. Première IPP avec $u=(\ln x)^2$, $v'=x$, donc $u'=\frac{2\ln x}{x}$, $v=\frac{x^2}{2}$ :
$$\int x(\ln x)^2\,\mathrm dx = \frac{x^2}{2}(\ln x)^2 - \int x\ln x\,\mathrm dx.$$
Seconde IPP sur $\displaystyle\int x\ln x\,\mathrm dx$ avec $u=\ln x$, $v'=x$ : $\displaystyle\int x\ln x\,\mathrm dx = \frac{x^2}{2}\ln x - \int\frac{x}{2}\,\mathrm dx = \frac{x^2}{2}\ln x - \frac{x^2}{4}$. D'où une primitive :
$$G(x) = \frac{x^2}{2}(\ln x)^2 - \frac{x^2}{2}\ln x + \frac{x^2}{4}.$$
Alors $F(x)=\big[G(t)\big]_x^1 = G(1) - G(x)$ avec $G(1)=\frac14$ :
$$F(x) = \frac14 - \frac{x^2}{2}(\ln x)^2 + \frac{x^2}{2}\ln x - \frac{x^2}{4} = -\frac{x^2}{2}\ln^2(x) + \frac{x^2}{2}\ln(x) + \frac14(1 - x^2).$$
$$\boxed{F(x) = -\frac{x^2}{2}\ln^2 x + \frac{x^2}{2}\ln x + \frac14(1-x^2)}.$$

**2.a)** Quand $x\to 0^+$ : $x^2\ln^2 x \to 0$, $x^2\ln x \to 0$, $x^2\to 0$ (croissances comparées), donc :
$$\lim\limits_{\substack{x\to0\\x>0}} F(x) = \frac14.$$

**2.b)** $F$ étant continue en $0$, $F(0) = \lim\limits_{x\to0^+}F(x) = \dfrac14$.

**2.c)** Le volume de révolution autour de $(Ox)$ de la portion de $(C_1)$ sur $[0,1]$ est :
$$V = \pi\int_0^1 \big(f_1(t)\big)^2\,\mathrm dt = \pi\int_0^1 t(\ln t)^2\,\mathrm dt = \pi\,F(0) = \frac{\pi}{4}\ \text{(unité de volume)}.$$
Avec $\|\vec i\|=1\,\mathrm{cm}$, l'unité de volume vaut $1\,\mathrm{cm}^3$ :
$$\boxed{V = \frac{\pi}{4}\ \mathrm{cm}^3}.$$

<div class="my-5 rounded-lg px-4 py-2.5 text-white font-bold" style="background:#1F4E79">Exercice 2 — Nombres complexes <span class="font-normal text-white/80 text-sm">(3,5 points)</span></div>

**Partie I**

**1.a)** Posons $z=\sqrt{x}+i\sqrt{y}$ avec $(x,y)\in\mathbb{R}_+^2$. Alors $|z|^2=x+y$ et $\bar z=\sqrt x-i\sqrt y$, donc $\dfrac1z=\dfrac{\bar z}{|z|^2}=\dfrac{\sqrt x-i\sqrt y}{x+y}$. Ainsi :
$$z+\frac1z = \sqrt x\Big(1+\frac{1}{x+y}\Big) + i\sqrt y\Big(1-\frac{1}{x+y}\Big).$$
Le système $(S)$ donne exactement partie réelle $=\frac{12}{5}$ et partie imaginaire $=\frac45$ :
$$\boxed{z+\frac1z = \frac{12}{5} + \frac45 i}.$$

**1.b)** En multipliant par $z$ ($z\neq 0$) : $z^2+1=\big(\frac{12}5+\frac45 i\big)z$, soit :
$$z^2 - \Big(\frac{12}{5}+\frac45 i\Big)z + 1 = 0.$$
Discriminant : $\Delta = \big(\frac{12}5+\frac45 i\big)^2 - 4 = \frac{144}{25}+2\cdot\frac{12}5\cdot\frac45 i + \frac{16}{25}i^2 - 4 = \frac{144-16}{25} - 4 + \frac{96}{25}i = \frac{28}{25}+\frac{96}{25}i$.
D'après l'indication, $\Delta = \left(\frac25(4+3i)\right)^2$, donc une racine carrée de $\Delta$ est $\delta=\frac25(4+3i)=\frac85+\frac65 i$. Les solutions sont :
$$z = \frac{\big(\frac{12}5+\frac45 i\big)\pm\big(\frac85+\frac65 i\big)}{2}.$$
- Avec le signe $+$ : $z_1 = \dfrac{\frac{20}5+\frac{10}5 i}{2}=\dfrac{4+2i}{2}=2+i$.
- Avec le signe $-$ : $z_2 = \dfrac{\frac45-\frac25 i}{2}=\dfrac{2}{5}-\dfrac15 i$.

$$\boxed{z=2+i \quad\text{ou}\quad z=\frac25-\frac15 i}.$$

**1.c)** Comme $z=\sqrt x+i\sqrt y$ avec $\sqrt x\ge 0$ et $\sqrt y\ge 0$, seules conviennent les valeurs à parties réelle et imaginaire positives. La solution $z_2=\frac25-\frac15 i$ a une partie imaginaire négative : à rejeter. Reste $z=2+i$, d'où $\sqrt x=2$ et $\sqrt y=1$ :
$$\boxed{(x,y) = (4,1)}.$$

**2)** Réciproquement, vérifions $(4,1)$ : $x+y=5$, $\sqrt x\big(1+\frac15\big)=2\cdot\frac65=\frac{12}5$ ✓ et $\sqrt y\big(1-\frac15\big)=1\cdot\frac45=\frac45$ ✓.

<div class="my-2 font-semibold" style="color:#1F4E79">⇒ Le système $(S)$ admet pour unique solution $(x,y)=(4,1)$.</div>

**Partie II**

**1)** Pour $z\in\mathbb{C}^*$ : $|z|=1 \iff |z|^2=1 \iff z\bar z=1 \iff \bar z=\dfrac1z$.
$$\boxed{|z|=1 \iff \bar z=\frac1z}.$$

**2.a)** $A,B,C,P$ sont sur $(U)$ donc $|a|=|b|=|c|=|p|=1$, d'où $\bar a=\frac1a$, etc.

$(AP)\parallel(BC)$ signifie que $\dfrac{p-a}{c-b}\in\mathbb{R}$, c'est-à-dire $\dfrac{p-a}{c-b}=\overline{\left(\dfrac{p-a}{c-b}\right)}=\dfrac{\bar p-\bar a}{\bar c-\bar b}=\dfrac{\frac1p-\frac1a}{\frac1c-\frac1b}$.

Or $\dfrac{\frac1p-\frac1a}{\frac1c-\frac1b}=\dfrac{\frac{a-p}{ap}}{\frac{b-c}{bc}}=\dfrac{(a-p)\,bc}{ap\,(b-c)}=\dfrac{-(p-a)\,bc}{ap\,\big(-(c-b)\big)}=\dfrac{(p-a)\,bc}{ap\,(c-b)}$.

L'égalité $\dfrac{p-a}{c-b}=\dfrac{(p-a)bc}{ap(c-b)}$ (avec $p\neq a$) donne $1=\dfrac{bc}{ap}$, soit :
$$\boxed{p=\frac{bc}{a}}.$$

**2.b)** $(AQ)\perp(BC)$ signifie $\dfrac{q-a}{c-b}\in i\mathbb{R}$, c'est-à-dire $\dfrac{q-a}{c-b}=-\overline{\left(\dfrac{q-a}{c-b}\right)}$. En reprenant le calcul de 2.a) avec un signe opposé :
$$\frac{q-a}{c-b} = -\frac{(q-a)\,bc}{aq\,(c-b)} \implies 1 = -\frac{bc}{aq} \implies q=-\frac{bc}{a}=-p.$$
$$\boxed{q=-p}.$$

**2.c)** $R(r)$ sur $(U)$ avec $(CR)\parallel(AB)$. Le même raisonnement qu'en 2.a) (en remplaçant $A\to C$, $P\to R$, $B\to A$, $C\to B$) donne $r=\dfrac{ab}{c}$.

Montrons $(PR)\perp(OB)$, c'est-à-dire que $\dfrac{r-p}{b-0}=\dfrac{r-p}{b}$ est imaginaire pur, soit $\dfrac{r-p}{b}+\overline{\left(\dfrac{r-p}{b}\right)}=0$.

On a $r-p=\dfrac{ab}{c}-\dfrac{bc}{a}=\dfrac{a^2b-bc^2}{ac}=\dfrac{b(a^2-c^2)}{ac}=\dfrac{b(a-c)(a+c)}{ac}$. Donc :
$$\frac{r-p}{b}=\frac{(a-c)(a+c)}{ac}.$$
Son conjugué, avec $\bar a=\frac1a,\ \bar c=\frac1c$ :
$$\overline{\left(\frac{r-p}{b}\right)} = \frac{(\bar a-\bar c)(\bar a+\bar c)}{\bar a\bar c} = \frac{\big(\frac1a-\frac1c\big)\big(\frac1a+\frac1c\big)}{\frac{1}{ac}} = ac\cdot\frac{c-a}{ac}\cdot\frac{c+a}{ac} = \frac{(c-a)(c+a)}{ac} = -\frac{(a-c)(a+c)}{ac}.$$
Donc $\dfrac{r-p}{b}+\overline{\left(\dfrac{r-p}{b}\right)}=0$ : le quotient est imaginaire pur.

<div class="my-2 font-semibold" style="color:#1F4E79">⇒ Les droites $(PR)$ et $(OB)$ sont perpendiculaires.</div>

<div class="my-5 rounded-lg px-4 py-2.5 text-white font-bold" style="background:#1F4E79">Exercice 3 — Structures algébriques <span class="font-normal text-white/80 text-sm">(3,5 points)</span></div>

$E=\Big\{M(a,b,c)=\begin{pmatrix}a&0&0\\0&b&-c\\0&c&b\end{pmatrix}/(a,b,c)\in\mathbb{R}^3\Big\}$.

**1)** $E\subset M_3(\mathbb{R})$ et $E\neq\varnothing$ car $M(0,0,0)=O\in E$. Soient $M(a,b,c),M(a',b',c')\in E$. Alors :
$$M(a,b,c)-M(a',b',c') = \begin{pmatrix}a-a'&0&0\\0&b-b'&-(c-c')\\0&c-c'&b-b'\end{pmatrix} = M(a-a',\,b-b',\,c-c') \in E.$$

<div class="my-2 font-semibold" style="color:#1F4E79">⇒ $E$ est un sous-groupe de $(M_3(\mathbb{R}),+)$.</div>

**2.a)** $\varphi(M(a,b,c))=(a,b+ci)$. Pour $M=M(a,b,c)$ et $M'=M(a',b',c')$, on a vu que $M+M'=M(a+a',b+b',c+c')$, donc :
$$\varphi(M+M') = \big(a+a',\,(b+b')+(c+c')i\big) = \big(a+a',\,(b+ci)+(b'+c'i)\big) = (a,b+ci)*(a',b'+c'i) = \varphi(M)*\varphi(M').$$
$\varphi$ est donc un homomorphisme. **Surjectivité :** pour tout $(x,z)\in\mathbb{R}\times\mathbb{C}$, en écrivant $z=b+ci$, on a $(x,z)=\varphi(M(x,b,c))$. Donc $\varphi(E)=\mathbb{R}\times\mathbb{C}$.

**2.b)** $(E,+)$ est un groupe commutatif. $\varphi$ est un homomorphisme surjectif de $(E,+)$ sur $(\mathbb{R}\times\mathbb{C},*)$. L'image d'un groupe commutatif par un homomorphisme surjectif est un groupe commutatif. 

<div class="my-2 font-semibold" style="color:#1F4E79">⇒ $(\mathbb{R}\times\mathbb{C},*)$ est un groupe commutatif.</div>

(On le retrouve directement : $*$ est l'addition composante par composante sur $\mathbb{R}\times\mathbb{C}$, d'élément neutre $(0,0)$.)

**3.a)** $(x,z)\,T\,(x',z') = \big(x\,\mathrm{Re}(z')+x'\,\mathrm{Re}(z),\,zz'\big)$. En échangeant les rôles : $(x',z')\,T\,(x,z)=\big(x'\,\mathrm{Re}(z)+x\,\mathrm{Re}(z'),\,z'z\big)$. Les deux premières composantes sont égales (somme commutative) et $zz'=z'z$. Donc $T$ est commutative.

**3.b)** $(x,z)\,T\,(0,1) = \big(x\,\mathrm{Re}(1)+0\cdot\mathrm{Re}(z),\,z\cdot 1\big) = (x\cdot 1,\,z) = (x,z)$. Par commutativité, $(0,1)$ est élément neutre de $T$.

**3.c)** $(1,i)\,T\,(x,-i) = \big(1\cdot\mathrm{Re}(-i) + x\cdot\mathrm{Re}(i),\, i\cdot(-i)\big) = \big(1\cdot 0 + x\cdot 0,\, 1\big) = (0,1)$. Vrai pour tout $x\in\mathbb{R}$.

**Non-associativité :** prenons trois éléments mettant en défaut l'associativité. Si $T$ était associative et $(0,1)$ neutre, alors $(x,-i)$ serait l'inverse de $(1,i)$ pour **tout** $x$ : un inverse serait non unique, ce qui est impossible dans une structure associative à élément neutre (l'inverse, s'il existe, est unique). Concrètement, avec $x\neq x'$ :
$$\big((1,i)\,T\,(x,-i)\big)\,T\,(x',z'') \neq (1,i)\,T\,\big((x,-i)\,T\,(x',z'')\big)$$
en général. Donc $T$ n'est pas associative dans $\mathbb{R}\times\mathbb{C}$.

**4)** $G=\big\{(\mathrm{Im}(z),z)/z\in\mathbb{C}\big\}$.

**4.a)** $G\subset\mathbb{R}\times\mathbb{C}$ et $(0,0)=(\mathrm{Im}(0),0)\in G$, donc $G\neq\varnothing$. Soient $(\mathrm{Im}(z),z),(\mathrm{Im}(z'),z')\in G$. Le symétrique de $(\mathrm{Im}(z'),z')$ pour $*$ est $(-\mathrm{Im}(z'),-z')=(\mathrm{Im}(-z'),-z')\in G$. Alors :
$$(\mathrm{Im}(z),z)*(\mathrm{Im}(-z'),-z') = \big(\mathrm{Im}(z)-\mathrm{Im}(z'),\,z-z'\big) = \big(\mathrm{Im}(z-z'),\,z-z'\big)\in G.$$

<div class="my-2 font-semibold" style="color:#1F4E79">⇒ $G$ est un sous-groupe de $(\mathbb{R}\times\mathbb{C},*)$.</div>

**4.b)** $\psi:\mathbb{C}^*\to\mathbb{R}\times\mathbb{C}$, $\psi(z)=(\mathrm{Im}(z),z)$. Pour $z,z'\in\mathbb{C}^*$, écrivons $z=\alpha+i\beta$, $z'=\alpha'+i\beta'$. Alors $\mathrm{Im}(z)=\beta$, $\mathrm{Im}(z')=\beta'$ et :
$$\psi(z)\,T\,\psi(z') = (\beta,z)\,T\,(\beta',z') = \big(\beta\,\mathrm{Re}(z')+\beta'\,\mathrm{Re}(z),\,zz'\big) = \big(\beta\alpha'+\beta'\alpha,\,zz'\big).$$
Or $\mathrm{Im}(zz') = \mathrm{Im}\big((\alpha+i\beta)(\alpha'+i\beta')\big) = \alpha\beta'+\beta\alpha'$, donc $\psi(z)\,T\,\psi(z') = \big(\mathrm{Im}(zz'),\,zz'\big) = \psi(zz')$.

<div class="my-2 font-semibold" style="color:#1F4E79">⇒ $\psi$ est un homomorphisme de $(\mathbb{C}^*,\times)$ vers $(\mathbb{R}\times\mathbb{C},T)$.</div>

**4.c)** $\psi$ est injective (si $\psi(z)=\psi(z')$ alors $z=z'$ par la 2ᵉ composante) et son image est $\psi(\mathbb{C}^*)=\big\{(\mathrm{Im}(z),z)/z\in\mathbb{C}^*\big\}=G\setminus\{(0,0)\}$. Comme $(\mathbb{C}^*,\times)$ est un groupe commutatif et $\psi$ est un isomorphisme sur son image, $\big(G\setminus\{(0,0)\},T\big)$ est un groupe commutatif (d'élément neutre $\psi(1)=(0,1)$).

**5)** Récapitulons sur $G$ :
- $(G,*)$ est un groupe commutatif (4.a), de neutre $(0,0)$.
- $\big(G\setminus\{(0,0)\},T\big)$ est un groupe commutatif (4.c), de neutre $(0,1)$.
- **Distributivité** de $T$ sur $*$ : via les isomorphismes $\varphi$ (pour $*$, identifiant à $+$) et $\psi$ (pour $T$, identifiant à $\times$), la structure $(G,*,T)$ est isomorphe à $(\mathbb{C},+,\times)$. La distributivité de $\times$ sur $+$ dans $\mathbb{C}$ se transporte en distributivité de $T$ sur $*$.

Ainsi $(G,*,T)$ est isomorphe au corps $(\mathbb{C},+,\times)$.

<div class="my-2 font-semibold" style="color:#1F4E79">⇒ $(G,*,T)$ est un corps commutatif.</div>

<div class="my-5 rounded-lg px-4 py-2.5 text-white font-bold" style="background:#1F4E79">Exercice 4 — Arithmétique <span class="font-normal text-white/80 text-sm">(3 points)</span></div>

$p$ premier impair, $S=1+p+p^2+\dots+p^{p-1}=\dfrac{p^p-1}{p-1}$, et $q$ premier divisant $S$.

**1.a)** Comme $q\mid S$ et $S\equiv 1\;[p]$ (en effet $S=1+p(1+p+\dots+p^{p-2})$, donc $S\equiv 1\;[p]$), $q$ ne peut être égal à $p$ : si $q=p$, alors $p\mid S$, or $S\equiv 1\;[p]$ donc $p\mid 1$, absurde. Donc $q\neq p$. $p$ et $q$ étant deux nombres premiers distincts, ils sont premiers entre eux.
$$\boxed{p\wedge q=1}.$$

**1.b)** $q$ est premier et $q\nmid p$, donc par le **petit théorème de Fermat** :
$$\boxed{p^{q-1}\equiv 1\;[q]}.$$

**1.c)** $(p-1)S = (p-1)(1+p+\dots+p^{p-1}) = p^p-1$ (somme télescopique géométrique). Donc $p^p-1=(p-1)S$. Comme $q\mid S$, $q\mid (p-1)S=p^p-1$, d'où :
$$\boxed{p^p\equiv 1\;[q]}.$$

**2.** On suppose $p\wedge(q-1)=1$.

**2.a)** Notons $d$ l'ordre multiplicatif de $p$ modulo $q$. De 1.c) $p^p\equiv 1\;[q]$ donc $d\mid p$ ; or $p$ est premier donc $d=1$ ou $d=p$. De 1.b) $p^{q-1}\equiv1\;[q]$ donc $d\mid q-1$. Si $d=p$, alors $p\mid q-1$, ce qui contredit $p\wedge(q-1)=1$ (car $p>1$). Donc $d=1$, c'est-à-dire $p\equiv 1\;[q]$.

*Avec Bézout :* $p\wedge(q-1)=1$ donne $u,v\in\mathbb{Z}$ tels que $up+v(q-1)=1$. Alors $p = p^{up+v(q-1)} = (p^p)^u\cdot(p^{q-1})^v \equiv 1^u\cdot 1^v = 1\;[q]$.
$$\boxed{p\equiv 1\;[q]}.$$

**2.b)** Modulo $q$, $p\equiv 1$ donne $p^k\equiv 1$ pour tout $k$, donc $S=\sum_{k=0}^{p-1}p^k \equiv \sum_{k=0}^{p-1}1 = p \equiv 1\;[q]$ (puisque $p\equiv 1\;[q]$).
$$\boxed{S\equiv 1\;[q]}.$$

**3)** On a établi $S\equiv 1\;[p]$ (cf. 1.a). Comme $q\mid S$, écrivons $S=qk$. Travaillons modulo $p$ : $S\equiv 1\;[p]$.

Tout diviseur premier $q$ de $S$ vérifie l'alternative : soit $p\wedge(q-1)=1$ (cas 2), soit $p\mid q-1$. Dans le cas $p\mid q-1$, on a directement $q\equiv 1\;[p]$. Reste à exclure le premier cas pour les diviseurs de $S$ : si $p\wedge(q-1)=1$, alors par 2.b) $S\equiv 1\;[q]$, donc $q\mid S$ et $q\mid(S-1)$, d'où $q\mid 1$, absurde. Donc le cas $p\wedge(q-1)=1$ est impossible pour un diviseur premier $q$ de $S$.

Par conséquent tout diviseur premier $q$ de $S$ vérifie $p\mid q-1$, soit :
$$\boxed{q\equiv 1\;[p]}.$$
