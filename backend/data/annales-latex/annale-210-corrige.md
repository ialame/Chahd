<div class="my-5 rounded-lg px-4 py-2.5 text-white font-bold" style="background:#1F4E79">Exercice 1 <span class="font-normal text-white/80 text-sm">(7.5 points)</span></div>

**1) Continuité à droite en $1$.**

Pour $x > 1$, on factorise $x^2 - 1 = (x-1)(x+1)$, d'où :
$$ f(x) = \frac{\ln(x)}{(x-1)(x+1)} = \frac{1}{x+1}\cdot\frac{\ln(x)}{x-1}. $$
Or $\dfrac{\ln(x)}{x-1} = \dfrac{\ln(x) - \ln(1)}{x-1}$ est le taux d'accroissement de $\ln$ entre $1$ et $x$, donc sa limite quand $x \to 1$ vaut $\ln'(1) = 1$. Par produit :
$$ \lim_{x\to 1^+} f(x) = \frac{1}{1+1}\times 1 = \frac{1}{2} = f(1). $$
La fonction $f$ est donc **continue à droite en $1$**.

**2) Limite en $+\infty$.**

Par croissance comparée, $\ln(x)$ croît bien plus lentement que $x^2 - 1$, donc :
$$ \lim_{x\to+\infty} \frac{\ln(x)}{x^2-1} = 0. $$
Géométriquement, **l'axe des abscisses ($y = 0$) est une asymptote horizontale** à $(C)$ au voisinage de $+\infty$.

**3.a)** Posons $t = (x-1)^2$ avec $x > 1$, donc $\sqrt{t} = x - 1$ (car $x-1 > 0$) et $x = 1 + \sqrt{t}$. On a aussi $1 - x = -(x-1) = -\sqrt{t}$. En remplaçant :
$$ \frac{1 - x + \ln(x)}{(x-1)^2} = \frac{-\sqrt{t} + \ln(1+\sqrt{t})}{t}. $$

**3.b)** Posons pour $t > 0$ : $g(t) = -\sqrt{t} + \ln(1+\sqrt{t})$. Cette fonction est dérivable sur $]0,+\infty[$ et :
$$ g'(t) = -\frac{1}{2\sqrt{t}} + \frac{\tfrac{1}{2\sqrt{t}}}{1+\sqrt{t}} = \frac{-1}{2\sqrt{t}}\left(1 - \frac{1}{1+\sqrt{t}}\right) = \frac{-1}{2\sqrt{t}}\cdot\frac{\sqrt{t}}{1+\sqrt{t}} = -\frac{1}{2(1+\sqrt{t})}. $$
On remarque que $-\dfrac{1}{2} < g'(t) < 0$ pour tout $t > 0$, et plus précisément $|g'(t)| < \dfrac{1}{2}$.

Appliquons le théorème des accroissements finis à $g$ sur $[0,t]$ ($g$ est continue en $0$ car $g(0)=0$) : il existe $c \in \,]0,t[$ tel que $g(t) - g(0) = t\,g'(c)$, soit $g(t) = t\,g'(c)$ puisque $g(0) = 0$.

Comme $g'$ est strictement croissante sur $]0,+\infty[$ (car $1+\sqrt{t}$ croît) et $0 < c < t$, on a $g'(0^+) \le g'(c) \le g'(t)$, c'est-à-dire :
$$ -\frac{1}{2} < g'(c) < -\frac{1}{2(1+\sqrt{t})}. $$
En multipliant par $t > 0$ et en divisant par $t$ on retrouve $g'(c) = \dfrac{g(t)}{t}$, d'où :
$$ -\frac{1}{2} < \frac{-\sqrt{t} + \ln(1+\sqrt{t})}{t} < -\frac{1}{2(1+\sqrt{t})}. $$

**3.c)** Quand $x \to 1^+$, on a $t = (x-1)^2 \to 0^+$, et $\dfrac{-1}{2(1+\sqrt{t})} \to -\dfrac{1}{2}$. Les deux bornes de l'encadrement tendent vers $-\dfrac{1}{2}$, donc par le théorème des gendarmes :
$$ \lim_{x\to 1^+} \frac{1 - x + \ln(x)}{(x-1)^2} = -\frac{1}{2}. $$

**4.a)** Pour $x > 1$, $f(x) - \tfrac{1}{2} = \dfrac{\ln(x)}{x^2-1} - \dfrac{1}{2} = \dfrac{2\ln(x) - (x^2-1)}{2(x^2-1)}$. En divisant par $x-1$ :
$$ \frac{f(x) - \tfrac{1}{2}}{x-1} = \frac{2\ln(x) - x^2 + 1}{2(x^2-1)(x-1)}. $$
Décomposons le numérateur de façon à faire apparaître les deux termes voulus. On écrit $2\ln(x) = -(x-1)\ln(x) + (x+1)\ln(x)$, puis $-x^2+1 = -(x-1)(x+1)$. Ainsi :
$$ \frac{f(x)-\tfrac12}{x-1} = \frac{-(x-1)\ln(x)}{2(x^2-1)(x-1)} + \frac{(x+1)\ln(x) - (x-1)(x+1)}{2(x^2-1)(x-1)}. $$
Le premier terme se simplifie en $\dfrac{-\ln(x)}{2(x^2-1)} = -\dfrac{\ln(x)}{x-1}\cdot\dfrac{1}{2(x+1)}$. Pour le second, on met $(x+1)$ en facteur et on simplifie avec $x^2-1 = (x-1)(x+1)$ :
$$ \frac{(x+1)\big(\ln(x) - (x-1)\big)}{2(x-1)(x+1)(x-1)} = \frac{\ln(x) - x + 1}{2(x-1)^2}. $$
On obtient bien :
$$ \frac{f(x) - \tfrac{1}{2}}{x-1} = -\frac{\ln(x)}{x-1}\times\frac{1}{2(x+1)} + \frac{\ln(x) - x + 1}{2(x-1)^2}. $$

**4.b)** Faisons tendre $x \to 1^+$. Comme vu en 1), $\dfrac{\ln(x)}{x-1} \to 1$ et $\dfrac{1}{2(x+1)} \to \dfrac{1}{4}$, donc le premier terme tend vers $-\dfrac{1}{4}$. D'après 3.c), le second tend vers $-\dfrac{1}{2}$. D'où :
$$ \lim_{x\to 1^+} \frac{f(x) - f(1)}{x-1} = -\frac{1}{4} - \frac{1}{2}\cdot\dots $$

En réalité le second terme $\dfrac{\ln(x)-x+1}{2(x-1)^2} = \dfrac12\cdot\dfrac{\ln(x)-x+1}{(x-1)^2}$ tend vers $\dfrac12\times\left(-\dfrac12\right) = -\dfrac14$. Donc :
$$ \lim_{x\to 1^+} \frac{f(x) - f(1)}{x-1} = -\frac{1}{4} - \frac{1}{4} = -\frac{1}{2}. $$
Cette limite existe et est finie : $f$ est **dérivable à droite en $1$** avec $f'_d(1) = -\dfrac{1}{2}$. Géométriquement, $(C)$ admet **au point d'abscisse $1$ une demi-tangente à droite de pente $-\dfrac{1}{2}$**.

**5.a)** Pour $t \ge 1$, on a $t^2 - 1 \ge 0$ donc les intégrandes $\dfrac{t^2-1}{t^3}$ et $\dfrac{t^2-1}{t^2}$ sont positives ; comme $x \ge 1$, $I(x) \ge 0$ et $J(x) \ge 0$. De plus :
$$ J(x) - I(x) = \int_1^x \left(\frac{t^2-1}{t^2} - \frac{t^2-1}{t^3}\right)dt = \int_1^x (t^2-1)\left(\frac{1}{t^2} - \frac{1}{t^3}\right)dt = \int_1^x \frac{t^2-1}{t^3}(t-1)\,dt \ge 0, $$
car tous les facteurs sont positifs pour $t \ge 1$. Donc $0 \le I(x) \le J(x)$.

**5.b)** Calcul de $I(x)$ :
$$ I(x) = \int_1^x \left(\frac{1}{t} - \frac{1}{t^3}\right)dt = \left[\ln(t) + \frac{1}{2t^2}\right]_1^x = \ln(x) + \frac{1}{2x^2} - \frac{1}{2} = \ln(x) - \frac{x^2-1}{2x^2}. $$
Calcul de $J(x)$ :
$$ J(x) = \int_1^x \left(1 - \frac{1}{t^2}\right)dt = \left[t + \frac{1}{t}\right]_1^x = x + \frac{1}{x} - 2 = \frac{x^2 - 2x + 1}{x} = \frac{(x-1)^2}{x}. $$

**5.c)** Pour $x > 1$, $f$ est dérivable (quotient de fonctions dérivables, dénominateur non nul) :
$$ f'(x) = \frac{\tfrac{1}{x}(x^2-1) - 2x\ln(x)}{(x^2-1)^2} = \frac{(x^2-1) - 2x^2\ln(x)}{x(x^2-1)^2}. $$
D'autre part, avec $I(x) = \ln(x) - \dfrac{x^2-1}{2x^2}$ et $J(x) = \dfrac{(x-1)^2}{x}$ :
$$ \frac{-2}{(x+1)^2}\cdot\frac{I(x)}{J(x)} = \frac{-2}{(x+1)^2}\cdot\frac{\ln(x) - \tfrac{x^2-1}{2x^2}}{\tfrac{(x-1)^2}{x}} = \frac{-2}{(x+1)^2}\cdot\frac{x\big(2x^2\ln(x) - (x^2-1)\big)}{2x^2(x-1)^2}. $$
En simplifiant ($x^2-1 = (x-1)(x+1)$) :
$$ = \frac{-2}{(x+1)^2}\cdot\frac{2x^2\ln(x) - (x^2-1)}{2x(x-1)^2} = \frac{(x^2-1) - 2x^2\ln(x)}{x(x-1)^2(x+1)^2} = \frac{(x^2-1) - 2x^2\ln(x)}{x(x^2-1)^2}. $$
On retrouve exactement $f'(x)$, d'où :
$$ f'(x) = \frac{-2}{(x+1)^2}\times\frac{I(x)}{J(x)}. $$

**5.d)** Pour $x > 1$ : $\dfrac{-2}{(x+1)^2} < 0$ et $\dfrac{I(x)}{J(x)} \ge 0$ (par 5.a, avec $J(x) > 0$), donc $f'(x) \le 0$. De plus, d'après 5.a, $0 \le \dfrac{I(x)}{J(x)} \le 1$, et $(x+1)^2 \ge 4$ pour $x \ge 1$, donc :
$$ f'(x) = \frac{-2}{(x+1)^2}\cdot\frac{I(x)}{J(x)} \ge \frac{-2}{4}\times 1 = -\frac{1}{2}. $$
Ainsi $-\dfrac{1}{2} \le f'(x) \le 0$.

**6.a)** Puisque $f'(x) \le 0$ sur $]1,+\infty[$, $f$ est décroissante. Avec $f(1) = \dfrac12$ et $\lim_{+\infty} f = 0$ :

| $x$ | $1$ | $\quad$ | $+\infty$ |
|---|---|---|---|
| $f'(x)$ | | $-$ | |
| $f(x)$ | $\tfrac12$ | $\searrow$ | $0$ |

**6.b)** [figure : courbe $(C)$ décroissante de $(1,\tfrac12)$ vers l'asymptote $y=0$ ; repère $\|\vec i\|=1$ cm, $\|\vec j\|=2$ cm ; demi-tangente de pente $-\tfrac12$ en $x=1$.]

**7)** Posons $h(x) = f(x) - (x-1)$ sur $]1,+\infty[$, prolongée par $h(1) = f(1) - 0 = \tfrac12$. La fonction $h$ est dérivable et $h'(x) = f'(x) - 1 < 0$ (car $f'(x) \le 0$), donc $h$ est strictement décroissante (donc continue et bijective sur $[1,+\infty[$). On a :
$$ h(1) = \frac{1}{2} > 0, \qquad h(2) = f(2) - 1 = \frac{\ln 2}{3} - 1 \approx -0,77 < 0. $$
Par le théorème des valeurs intermédiaires, $h$ s'annule une seule fois sur $]1,2[$. Donc l'équation $f(x) = x - 1$ admet **une unique solution $a \in \,]1,2[$**.

**8.a)** La suite est bien définie : $f > 0$ donc $a_{n+1} = 1 + f(a_n) > 1$. Comme $a$ vérifie $f(a) = a - 1$, on a $1 + f(a) = a$. Donc :
$$ a_{n+1} - a = \big(1 + f(a_n)\big) - \big(1 + f(a)\big) = f(a_n) - f(a). $$
Le théorème des accroissements finis appliqué à $f$ donne $|f(a_n) - f(a)| \le \big(\sup |f'|\big)|a_n - a| \le \dfrac{1}{2}|a_n - a|$ (car $|f'| \le \tfrac12$ par 5.d). D'où :
$$ |a_{n+1} - a| \le \frac{1}{2}|a_n - a|. $$

**8.b)** Récurrence sur $n$. **Initialisation :** pour $n = 0$, $|a_0 - a| \le \left(\tfrac12\right)^0|a_0-a| = |a_0-a|$, vrai. **Hérédité :** supposons $|a_n - a| \le \left(\tfrac12\right)^n|a_0-a|$. Alors d'après 8.a :
$$ |a_{n+1} - a| \le \frac{1}{2}|a_n - a| \le \frac{1}{2}\left(\frac{1}{2}\right)^n|a_0-a| = \left(\frac{1}{2}\right)^{n+1}|a_0-a|. $$
La propriété est donc vraie pour tout $n \in \mathbb{N}$.

**8.c)** Comme $0 < \tfrac12 < 1$, $\left(\tfrac12\right)^n \to 0$, donc $\left(\tfrac12\right)^n|a_0 - a| \to 0$. Par encadrement ($0 \le |a_n - a| \le \dots$), $|a_n - a| \to 0$, c'est-à-dire $a_n \to a$. La suite $(a_n)$ est **convergente, de limite $a$**.

<div class="my-5 rounded-lg px-4 py-2.5 text-white font-bold" style="background:#1F4E79">Exercice 2 <span class="font-normal text-white/80 text-sm">(2.5 points)</span></div>

**1.a)** La fonction $t \mapsto e^{t^2}$ est continue sur $[0,1]$, donc d'après le théorème fondamental de l'analyse, $F$ est sa primitive s'annulant en $0$ : $F$ est dérivable (donc continue) sur $[0,1]$ et $F'(x) = e^{x^2} > 0$. Par conséquent $F$ est **continue et strictement croissante** sur $[0,1]$.

**1.b)** Strictement croissante et continue, $F$ réalise une bijection de $[0,1]$ sur $[F(0),F(1)]$. Or $F(0) = \displaystyle\int_0^0 e^{t^2}dt = 0$ et $F(1) = \displaystyle\int_0^1 e^{t^2}dt = \beta$. Donc $F$ est une **bijection de $[0,1]$ vers $[0,\beta]$**.

**2.a)** Récrivons $S_n$ en faisant apparaître une somme de Riemann sur $[0,\beta]$ :
$$ S_n = \frac{1}{n}\sum_{k=1}^n F^{-1}\!\left(\frac{k}{n}\beta\right) = \frac{1}{\beta}\cdot\frac{\beta}{n}\sum_{k=1}^n F^{-1}\!\left(\frac{k\beta}{n}\right). $$
La fonction $F^{-1}$ est continue sur $[0,\beta]$, donc la somme de Riemann $\dfrac{\beta}{n}\sum_{k=1}^n F^{-1}\!\left(\dfrac{k\beta}{n}\right)$ converge vers $\displaystyle\int_0^\beta F^{-1}(t)\,dt$. Ainsi :
$$ \lim_{n\to+\infty} S_n = \frac{1}{\beta}\int_0^\beta F^{-1}(t)\,dt = \ell. $$

**2.b)** Effectuons le changement de variable $u = F^{-1}(t)$, soit $t = F(u)$ et $dt = F'(u)\,du = e^{u^2}\,du$. Quand $t : 0 \to \beta$, on a $u : F^{-1}(0) = 0 \to F^{-1}(\beta) = 1$. Donc :
$$ \ell = \frac{1}{\beta}\int_0^\beta F^{-1}(t)\,dt = \frac{1}{\beta}\int_0^1 u\,e^{u^2}\,du. $$

**2.c)** Une primitive de $u \mapsto u\,e^{u^2}$ est $\dfrac12 e^{u^2}$, donc :
$$ \ell = \frac{1}{\beta}\left[\frac{1}{2}e^{u^2}\right]_0^1 = \frac{1}{\beta}\cdot\frac{e - 1}{2} = \frac{e-1}{2\beta}. $$

<div class="my-5 rounded-lg px-4 py-2.5 text-white font-bold" style="background:#1F4E79">Exercice 3 <span class="font-normal text-white/80 text-sm">(3.5 points)</span></div>

**Partie I**

**1.a)** Pour l'équation $z^2 - 2iz + \alpha = 0$, le discriminant se calcule par la formule usuelle $\Delta = b^2 - 4ac$ avec $a=1$, $b = -2i$, $c = \alpha$ :
$$ \Delta = (-2i)^2 - 4\alpha = -4 - 4\alpha = -4(1+\alpha). $$

**1.b)** L'équation admet deux solutions distinctes si et seulement si $\Delta \neq 0$, soit $-4(1+\alpha) \neq 0$, c'est-à-dire $\alpha \neq -1$. L'ensemble cherché est $\mathbb{C}\setminus\{-1\}$.

**2)** D'après les relations entre coefficients et racines d'un trinôme $z^2 - sz + p$ (ici $s = -b/a = 2i$, $p = c/a = \alpha$) :
$$ z_1 + z_2 = 2i \qquad \text{et} \qquad z_1 z_2 = \alpha. $$

**Partie II**

**1.a)** Avec $\alpha = m^2 - 2m$ :
$$ \Delta = -4(1 + m^2 - 2m) = -4(m-1)^2. $$
C'est un réel négatif ou nul. Une racine carrée de $\Delta$ est $2i\,|m-1|$. Les solutions sont :
$$ z_1 = \frac{2i + 2i|m-1|}{2} = \big(1 + |m-1|\big)i, \qquad z_2 = \frac{2i - 2i|m-1|}{2} = \big(1 - |m-1|\big)i. $$

**1.b)** $z_1$ et $z_2$ sont des imaginaires purs, donc $M_1$ et $M_2$ sont sur l'axe des ordonnées, qui passe par $O$. Les points $O$, $M_1$ et $M_2$ sont donc **alignés** (sur l'axe imaginaire).

**2)** On suppose $O$, $M_1$, $M_2$ non alignés ; en particulier $z_1 \neq 0$ et $z_2 \neq 0$.

**2.a)** $\dfrac{z_1}{z_2}$ est imaginaire pur $\iff$ il existe $\lambda \in \mathbb{R}$ tel que $\dfrac{z_1}{z_2} = i\lambda$, soit $z_1 = i\lambda z_2$. En multipliant par $\overline{z_2}$ : $z_1\overline{z_2} = i\lambda z_2\overline{z_2} = i\lambda|z_2|^2$, qui est imaginaire pur, donc $\operatorname{Re}(z_1\overline{z_2}) = 0$.

Réciproquement, $\dfrac{z_1}{z_2} = \dfrac{z_1\overline{z_2}}{z_2\overline{z_2}} = \dfrac{z_1\overline{z_2}}{|z_2|^2}$. Si $\operatorname{Re}(z_1\overline{z_2}) = 0$, alors $z_1\overline{z_2}$ est imaginaire pur, et comme $|z_2|^2 > 0$, $\dfrac{z_1}{z_2}$ est imaginaire pur. D'où l'équivalence.

**2.b)** En développant avec $|z|^2 = z\overline{z}$ :
$$ |z_1 - z_2|^2 = (z_1 - z_2)\overline{(z_1 - z_2)} = (z_1-z_2)(\overline{z_1}-\overline{z_2}) = |z_1|^2 + |z_2|^2 - (z_1\overline{z_2} + \overline{z_1}z_2). $$
Or $\overline{z_1}z_2 = \overline{z_1\overline{z_2}}$, donc $z_1\overline{z_2} + \overline{z_1}z_2 = 2\operatorname{Re}(z_1\overline{z_2})$. De même :
$$ |z_1 + z_2|^2 = |z_1|^2 + |z_2|^2 + 2\operatorname{Re}(z_1\overline{z_2}). $$
En soustrayant : $|z_1+z_2|^2 - |z_1-z_2|^2 = 4\operatorname{Re}(z_1\overline{z_2})$, d'où :
$$ |z_1 - z_2|^2 = |z_1 + z_2|^2 - 4\operatorname{Re}(z_1\overline{z_2}). $$

**2.c)** D'après 2.a, $\dfrac{z_1}{z_2}$ imaginaire pur $\iff \operatorname{Re}(z_1\overline{z_2}) = 0$. Avec 2.b et $z_1 + z_2 = 2i$ (donc $|z_1+z_2|^2 = 4$), cette condition équivaut à $|z_1 - z_2|^2 = |z_1+z_2|^2 = 4$, soit $|z_1 - z_2| = 2$.

**3.a)** On a $z_1 + z_2 = 2i$ donc $(z_1+z_2)^2 = z_1^2 + 2z_1z_2 + z_2^2 = -4$, soit $z_1^2 + z_2^2 = -4 - 2\alpha$. Alors :
$$ (z_1 - z_2)^2 = z_1^2 - 2z_1z_2 + z_2^2 = (-4 - 2\alpha) - 2\alpha = -4 - 4\alpha = -4(1+\alpha) = \Delta. $$

**3.b)** Le triangle $OM_1M_2$ est rectangle en $O$ $\iff$ $(\overrightarrow{OM_1})\perp(\overrightarrow{OM_2})$ $\iff$ $\dfrac{z_1}{z_2}$ est imaginaire pur $\iff |z_1 - z_2| = 2$ (par 2.c). D'après 3.a, $|z_1-z_2|^2 = |\Delta| = 4|1+\alpha|$, donc la condition s'écrit $4|1+\alpha| = 4$, soit :
$$ |1 + \alpha| = 1, \quad\text{c'est-à-dire}\quad |\alpha - (-1)| = 1. $$
L'ensemble $\Gamma$ des points $\Omega$ d'affixe $\alpha$ est donc le **cercle de centre le point d'affixe $-1$ et de rayon $1$** (privé des points où $O$, $M_1$, $M_2$ seraient alignés ou confondus).

<div class="my-5 rounded-lg px-4 py-2.5 text-white font-bold" style="background:#1F4E79">Exercice 4 <span class="font-normal text-white/80 text-sm">(3.5 points)</span></div>

**1.a)** Avec la définition $(a,b)\,T\,(c,d) = (a\overline{d}+c,\,bd)$ :
$$ (i,2)\,T\,(1,i) = \big(i\cdot\overline{i} + 1,\; 2\cdot i\big) = \big(i\cdot(-i) + 1,\; 2i\big) = (1 + 1,\; 2i) = (2,\,2i). $$
De même :
$$ (1,i)\,T\,(i,2) = \big(1\cdot\overline{2} + i,\; i\cdot 2\big) = (2 + i,\; 2i). $$

**1.b)** On a $(i,2)\,T\,(1,i) = (2,2i)$ et $(1,i)\,T\,(i,2) = (2+i,2i)$, qui diffèrent. Donc la loi $T$ **n'est pas commutative** dans $\mathbb{C}\times\mathbb{C}^*$.

**2)** Soient $(a,b),(c,d),(e,f) \in \mathbb{C}\times\mathbb{C}^*$. D'une part :
$$ \big[(a,b)\,T\,(c,d)\big]\,T\,(e,f) = (a\overline{d}+c,\,bd)\,T\,(e,f) = \big((a\overline{d}+c)\overline{f} + e,\; bdf\big) = \big(a\overline{d}\,\overline{f} + c\overline{f} + e,\; bdf\big). $$
D'autre part :
$$ (a,b)\,T\,\big[(c,d)\,T\,(e,f)\big] = (a,b)\,T\,(c\overline{f}+e,\,df) = \big(a\,\overline{df} + c\overline{f} + e,\; bdf\big) = \big(a\overline{d}\,\overline{f} + c\overline{f} + e,\; bdf\big). $$
Les deux expressions sont identiques (car $\overline{df} = \overline{d}\,\overline{f}$). La loi $T$ est **associative**.

**3)** Pour tout $(a,b) \in \mathbb{C}\times\mathbb{C}^*$ :
$$ (a,b)\,T\,(0,1) = (a\cdot\overline{1} + 0,\; b\cdot 1) = (a,b), \qquad (0,1)\,T\,(a,b) = (0\cdot\overline{b} + a,\; 1\cdot b) = (a,b). $$
Donc $(0,1)$ est l'**élément neutre** de $T$.

**4.a)** Pour $(a,b) \in \mathbb{C}\times\mathbb{C}^*$, calculons avec $\left(-\dfrac{a}{\overline{b}},\dfrac{1}{b}\right)$ (dont la seconde composante $\tfrac1b \in \mathbb{C}^*$) :
$$ (a,b)\,T\,\left(-\frac{a}{\overline{b}},\frac{1}{b}\right) = \left(a\cdot\overline{\left(\tfrac{1}{b}\right)} - \frac{a}{\overline{b}},\; b\cdot\frac{1}{b}\right) = \left(\frac{a}{\overline{b}} - \frac{a}{\overline{b}},\; 1\right) = (0,1). $$
(On a utilisé $\overline{1/b} = 1/\overline{b}$.) Donc $\left(-\dfrac{a}{\overline{b}},\dfrac{1}{b}\right)$ est le symétrique de $(a,b)$.

**4.b)** $T$ est une loi de composition interne sur $\mathbb{C}\times\mathbb{C}^*$, associative (2), avec élément neutre $(0,1)$ (3), et tout élément admet un symétrique (4.a). Donc $(\mathbb{C}\times\mathbb{C}^*,T)$ est un **groupe** ; il est **non commutatif** d'après 1.b.

**5.a)** Soient $(a,b),(c,d) \in \mathbb{R}\times\mathbb{R}^*$. Comme $d \in \mathbb{R}$, $\overline{d} = d$, donc :
$$ (a,b)\,T\,(c,d) = (a\overline{d}+c,\,bd) = (ad + c,\; bd). $$
Ici $ad + c \in \mathbb{R}$ et $bd \in \mathbb{R}^*$ (produit de deux réels non nuls). Donc $(a,b)\,T\,(c,d) \in \mathbb{R}\times\mathbb{R}^*$ : la partie $\mathbb{R}\times\mathbb{R}^*$ est **stable** par $T$.

**5.b)** $\mathbb{R}\times\mathbb{R}^*$ est non vide (il contient $(0,1)$), stable par $T$ (5.a). De plus, le symétrique d'un élément $(a,b)\in\mathbb{R}\times\mathbb{R}^*$ est $\left(-\dfrac{a}{\overline{b}},\dfrac{1}{b}\right) = \left(-\dfrac{a}{b},\dfrac{1}{b}\right)$, dont les composantes sont réelles avec $\tfrac1b \neq 0$ : il appartient à $\mathbb{R}\times\mathbb{R}^*$. Donc $\mathbb{R}\times\mathbb{R}^*$ est un **sous-groupe** de $(\mathbb{C}\times\mathbb{C}^*,T)$.

<div class="my-5 rounded-lg px-4 py-2.5 text-white font-bold" style="background:#1F4E79">Exercice 5 <span class="font-normal text-white/80 text-sm">(3 points)</span></div>

**1.a)** $p$ est premier et $r$ est premier avec $p$ ($p \nmid r$). Le petit théorème de Fermat donne :
$$ r^{p-1} \equiv 1 \;[p], \quad\text{donc } p \mid r^{p-1} - 1. $$
De même, $q$ premier et $q \nmid r$ donnent $r^{q-1} \equiv 1\;[q]$, donc $q \mid r^{q-1} - 1$.

**1.b)** De $r^{p-1} \equiv 1\;[p]$, on élève à la puissance $q-1$ :
$$ \big(r^{p-1}\big)^{q-1} = r^{(p-1)(q-1)} \equiv 1^{q-1} = 1 \;[p], \quad\text{donc } p \mid r^{(p-1)(q-1)} - 1. $$
De façon symétrique, $r^{(p-1)(q-1)} \equiv 1\;[q]$, donc $q \mid r^{(p-1)(q-1)} - 1$. Ainsi **$p$ et $q$ divisent** $r^{(p-1)(q-1)} - 1$.

**1.c)** $p$ et $q$ sont deux nombres premiers distincts, donc premiers entre eux. Comme ils divisent tous deux $N = r^{(p-1)(q-1)} - 1$, leur produit $pq$ divise $N$ (un entier divisible par deux entiers premiers entre eux est divisible par leur produit) :
$$ pq \mid r^{(p-1)(q-1)} - 1. $$

**2)** Posons $p = 13$ et $q = 17$ (premiers distincts) et $r = 2024$. On vérifie que $2024$ est premier avec $13$ et $17$ : $2024 = 8\times 11\times 23$, qui ne contient ni $13$ ni $17$. On a $pq = 13\times 17 = 221$ et $(p-1)(q-1) = 12\times 16 = 192$. D'après 1.c :
$$ 221 \mid 2024^{192} - 1, \quad\text{soit}\quad 2024^{192} \equiv 1 \;[221]. $$
L'équation $2024^{192}\,x \equiv 3\;[221]$ devient alors $1\cdot x \equiv 3\;[221]$, c'est-à-dire :
$$ x \equiv 3\;[221]. $$
L'ensemble des solutions dans $\mathbb{Z}$ est :
$$ \boxed{\,x = 3 + 221k,\quad k \in \mathbb{Z}.\,} $$
