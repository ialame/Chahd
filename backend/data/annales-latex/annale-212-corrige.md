<div class="my-5 rounded-lg px-4 py-2.5 text-white font-bold" style="background:#1F4E79">Exercice 1 <span class="font-normal text-white/80 text-sm">(10 points)</span></div>

On pose $f(x) = \dfrac{e^x}{e^{2x}+e}$ pour tout $x \in \mathbb{R}$.

<div class="mt-6 mb-2 text-base font-bold" style="color:#1F4E79">Partie I</div>

**1.a)** Pour tout $x \in \mathbb{R}$ :
$$ f(1-x) = \frac{e^{1-x}}{e^{2(1-x)}+e} = \frac{e^{1-x}}{e^{2-2x}+e} = \frac{e\cdot e^{-x}}{e\,(e^{1-2x}+1)} = \frac{e^{-x}}{e^{1-2x}+1}. $$
En multipliant numérateur et dénominateur par $e^{2x}$ :
$$ f(1-x) = \frac{e^{-x}\,e^{2x}}{(e^{1-2x}+1)\,e^{2x}} = \frac{e^{x}}{e + e^{2x}} = f(x). $$
<div class="my-2 font-semibold" style="color:#1F4E79">⇒ $(\forall x \in \mathbb{R})\ ;\ f(1-x)=f(x)$.</div>

**1.b)** La relation $f(1-x)=f(x)$ signifie que pour tout $x$, les points de $(\Gamma)$ d'abscisses $x$ et $1-x$ ont la même ordonnée. Ces deux abscisses sont symétriques par rapport à $\frac{1}{2}$.

<div class="my-2 font-semibold" style="color:#1F4E79">⇒ La droite d'équation $x=\dfrac{1}{2}$ est un axe de symétrie de la courbe $(\Gamma)$.</div>

**1.c)** Quand $x \to -\infty$ : $e^x \to 0$, $e^{2x} \to 0$, donc le dénominateur $e^{2x}+e \to e \neq 0$. Ainsi
$$ \lim_{x\to-\infty} f(x) = \frac{0}{e} = 0. $$
D'après **1.a)**, $f(x)=f(1-x)$. Lorsque $x \to +\infty$, on a $1-x \to -\infty$, d'où
$$ \lim_{x\to+\infty} f(x) = \lim_{x\to+\infty} f(1-x) = \lim_{X\to-\infty} f(X) = 0. $$
<div class="my-2 font-semibold" style="color:#1F4E79">⇒ $\displaystyle\lim_{x\to-\infty} f(x)=0$ et $\displaystyle\lim_{x\to+\infty} f(x)=0$.</div>

**1.d)** Ces deux limites étant nulles :

<div class="my-2 font-semibold" style="color:#1F4E79">⇒ La droite d'équation $y=0$ (l'axe des abscisses) est asymptote horizontale à $(\Gamma)$ au voisinage de $-\infty$ et de $+\infty$.</div>

**2.a)** $f$ est dérivable sur $\mathbb{R}$ comme quotient de fonctions dérivables (le dénominateur $e^{2x}+e$ ne s'annule jamais). En posant $u=e^x$ et $v=e^{2x}+e$ avec $u'=e^x$ et $v'=2e^{2x}$ :
$$ f'(x) = \frac{u'v-uv'}{v^2} = \frac{e^x(e^{2x}+e) - e^x\cdot 2e^{2x}}{(e^{2x}+e)^2} = \frac{e^x(e - e^{2x})}{(e^{2x}+e)^2}. $$
Or
$$ f(x)\cdot\frac{1-e^{2x-1}}{1+e^{2x-1}} = \frac{e^x}{e^{2x}+e}\cdot\frac{1-e^{2x-1}}{1+e^{2x-1}}. $$
En multipliant la seconde fraction (numérateur et dénominateur) par $e$, et puisque $e\cdot e^{2x-1}=e^{2x}$ :
$$ \frac{1-e^{2x-1}}{1+e^{2x-1}} = \frac{e-e^{2x}}{e+e^{2x}}. $$
Donc
$$ f(x)\cdot\frac{1-e^{2x-1}}{1+e^{2x-1}} = \frac{e^x}{e^{2x}+e}\cdot\frac{e-e^{2x}}{e^{2x}+e} = \frac{e^x(e-e^{2x})}{(e^{2x}+e)^2} = f'(x). $$
<div class="my-2 font-semibold" style="color:#1F4E79">⇒ $(\forall x \in \mathbb{R})\ ;\ f'(x)=f(x)\,\dfrac{1-e^{2x-1}}{1+e^{2x-1}}$.</div>

**2.b)** Pour tout $x$, $f(x)>0$ (quotient de termes strictement positifs) et $1+e^{2x-1}>0$. Le signe de $f'(x)$ est donc celui de $1-e^{2x-1}$.
$$ 1-e^{2x-1} > 0 \iff e^{2x-1} < 1 \iff 2x-1 < 0 \iff x < \tfrac{1}{2}. $$
Ainsi $f'(x)>0$ sur $\left]-\infty;\frac{1}{2}\right[$, $f'\!\left(\frac12\right)=0$ et $f'(x)<0$ sur $\left]\frac{1}{2};+\infty\right[$.

<div class="my-2 font-semibold" style="color:#1F4E79">⇒ $f$ est strictement croissante sur $\left]-\infty;\frac{1}{2}\right]$ et strictement décroissante sur $\left[\frac{1}{2};+\infty\right[$.</div>

$f$ admet donc un maximum global en $x=\frac{1}{2}$ :
$$ f\!\left(\tfrac{1}{2}\right) = \frac{e^{1/2}}{e^{1}+e} = \frac{\sqrt{e}}{2e} = \frac{1}{2\sqrt{e}}. $$
Comme $\frac{1}{2\sqrt{e}}<\frac{1}{2}$ (car $\sqrt{e}>1$) et que les limites de $f$ en $\pm\infty$ valent $0$ avec $f>0$ partout, on obtient
$$ 0 < f(x) \le \frac{1}{2\sqrt{e}} < \frac{1}{2}, $$
et l'égalité supérieure n'étant atteinte qu'en $\frac{1}{2}$, en tout cas :
<div class="my-2 font-semibold" style="color:#1F4E79">⇒ $(\forall x \in \mathbb{R})\ ;\ 0 < f(x) < \dfrac{1}{2}$.</div>

**3)** Représentation de $(\Gamma)$ : courbe en « cloche » symétrique par rapport à la droite $x=\frac{1}{2}$, croissante puis décroissante, de sommet $\left(\frac{1}{2}\,;\,\frac{1}{2\sqrt{e}}\right)\simeq(0,5\,;\,0,30)$, passant par $\left(0\,;\,\frac{1}{1+e}\right)\simeq(0\,;\,0,27)$ et par $\left(1\,;\,\frac{1}{1+e}\right)\simeq(1\,;\,0,27)$ (car $f(1)=f(0)$ par symétrie), admettant l'axe des abscisses $y=0$ comme asymptote horizontale en $-\infty$ et en $+\infty$. (Échelle : $\|\vec i\|=1$ cm, $\|\vec j\|=2$ cm.)

**4.a)** Effectuons dans $\displaystyle\int_{\frac12}^{1} f(x)\,dx$ le changement de variable $u=1-x$ (donc $x=1-u$, $dx=-du$). Quand $x=\frac12$, $u=\frac12$ ; quand $x=1$, $u=0$ :
$$ \int_{\frac12}^{1} f(x)\,dx = \int_{\frac12}^{0} f(1-u)\,(-du) = \int_{0}^{\frac12} f(1-u)\,du = \int_{0}^{\frac12} f(u)\,du, $$
en utilisant $f(1-u)=f(u)$ (question **1.a)**).
<div class="my-2 font-semibold" style="color:#1F4E79">⇒ $\displaystyle\int_0^{\frac12} f(x)\,dx = \int_{\frac12}^{1} f(x)\,dx$.</div>

**4.b)** Par la relation de Chasles puis **4.a)** :
$$ \int_0^1 f(x)\,dx = \int_0^{\frac12} f(x)\,dx + \int_{\frac12}^1 f(x)\,dx = \int_0^{\frac12} f(x)\,dx + \int_0^{\frac12} f(x)\,dx = 2\int_0^{\frac12} f(x)\,dx. $$
<div class="my-2 font-semibold" style="color:#1F4E79">⇒ $\displaystyle\int_0^1 f(x)\,dx = 2\int_0^{\frac12} f(x)\,dx$.</div>

**5.a)** Posons $t=e^x$, donc $dt = e^x\,dx = t\,dx$, c'est-à-dire $dx=\dfrac{dt}{t}$. Quand $x=0$, $t=1$ ; quand $x=\frac12$, $t=\sqrt{e}$. De plus $e^{2x}=t^2$, d'où $f(x)=\dfrac{t}{t^2+e}$ :
$$ \int_0^{\frac12} f(x)\,dx = \int_1^{\sqrt{e}} \frac{t}{t^2+e}\cdot\frac{dt}{t} = \int_1^{\sqrt{e}} \frac{dt}{t^2+e}. $$
<div class="my-2 font-semibold" style="color:#1F4E79">⇒ $\displaystyle\int_0^{\frac12} f(x)\,dx = \int_1^{\sqrt{e}} \frac{dt}{t^2+e}$.</div>

**5.b)** On utilise la primitive $\displaystyle\int\frac{dt}{t^2+a^2}=\frac{1}{a}\arctan\!\left(\frac{t}{a}\right)$ avec $a=\sqrt{e}$ (donc $a^2=e$) :
$$ \int_1^{\sqrt{e}} \frac{dt}{t^2+e} = \frac{1}{\sqrt{e}}\Big[\arctan\!\big(\tfrac{t}{\sqrt{e}}\big)\Big]_1^{\sqrt{e}} = \frac{1}{\sqrt{e}}\left(\arctan(1) - \arctan\!\Big(\frac{1}{\sqrt{e}}\Big)\right). $$
Or $\arctan(1)=\dfrac{\pi}{4}$ et, comme $\sqrt{e}>0$, $\arctan\!\big(\frac{1}{\sqrt{e}}\big)=\dfrac{\pi}{2}-\arctan(\sqrt{e})$. D'où
$$ \int_0^{\frac12} f(x)\,dx = \frac{1}{\sqrt{e}}\left(\frac{\pi}{4} - \frac{\pi}{2} + \arctan(\sqrt{e})\right) = \frac{1}{\sqrt{e}}\left(\arctan(\sqrt{e}) - \frac{\pi}{4}\right). $$
<div class="my-2 font-semibold" style="color:#1F4E79">⇒ $\displaystyle\int_0^{\frac12} f(x)\,dx = \frac{1}{\sqrt{e}}\left(\arctan(\sqrt{e}) - \frac{\pi}{4}\right)$.</div>

**5.c)** Sur $[0;1]$, $f>0$. L'aire $\mathcal{A}$ du domaine délimité par $(\Gamma)$, les droites $x=0$, $x=1$ et $y=0$ vaut, en unités d'aire, $\displaystyle\int_0^1 f(x)\,dx$. Par **4.b)** et **5.b)** :
$$ \int_0^1 f(x)\,dx = 2\int_0^{\frac12} f(x)\,dx = \frac{2}{\sqrt{e}}\left(\arctan(\sqrt{e}) - \frac{\pi}{4}\right) \ \text{(u.a.)}. $$
L'unité d'aire vaut $\|\vec i\|\times\|\vec j\| = 1\times 2 = 2\ \text{cm}^2$. Donc
$$ \mathcal{A} = 2 \times \frac{2}{\sqrt{e}}\left(\arctan(\sqrt{e}) - \frac{\pi}{4}\right) = \frac{4}{\sqrt{e}}\left(\arctan(\sqrt{e}) - \frac{\pi}{4}\right)\ \text{cm}^2. $$
<div class="my-2 font-semibold" style="color:#1F4E79">⇒ $\mathcal{A} = \dfrac{4}{\sqrt{e}}\left(\arctan(\sqrt{e}) - \dfrac{\pi}{4}\right)\ \text{cm}^2 \approx 0{,}40\ \text{cm}^2$.</div>

<div class="mt-6 mb-2 text-base font-bold" style="color:#1F4E79">Partie II</div>

**1)** D'après **I.2.a)**, $f'(x)=f(x)\,\dfrac{1-e^{2x-1}}{1+e^{2x-1}}$. Posons $T=e^{2x-1}>0$. Alors
$$ |f'(x)| = f(x)\,\frac{|1-T|}{1+T} \qquad (f(x)>0). $$
Comme $T>0$, on a $|1-T|\le 1+T$ (en effet $-(1+T)\le 1-T \le 1+T$ équivaut à $-2T\le 0\le 2$, toujours vrai). Donc $\dfrac{|1-T|}{1+T}\le 1$, d'où
<div class="my-2 font-semibold" style="color:#1F4E79">⇒ $(\forall x\in\mathbb{R})\ ;\ |f'(x)|\le f(x)$.</div>

**2.a)** Sur $\left[0;\frac12\right]$, on a $x\le\frac12$ donc $2x-1\le 0$, d'où $e^{2x-1}\le 1$ et $1-e^{2x-1}\ge 0$. Comme $f(x)>0$ et $1+e^{2x-1}>0$, on obtient $f'(x)\ge 0$. D'autre part, d'après **II.1)** et **I.2.b)** ($f(x)<\frac12$) :
$$ f'(x) = |f'(x)| \le f(x) < \frac{1}{2}. $$
<div class="my-2 font-semibold" style="color:#1F4E79">⇒ $\left(\forall x\in\left[0;\frac12\right]\right)\ ;\ 0\le f'(x) < \dfrac{1}{2}$.</div>

**2.b)** $g(x)=f(x)-x$ est dérivable sur $\mathbb{R}$ et $g'(x)=f'(x)-1$. D'après **II.1)** et **I.2.b)**, pour tout $x$ : $f'(x)\le |f'(x)| \le f(x) < \frac12 < 1$, donc $g'(x)=f'(x)-1<0$.
<div class="my-2 font-semibold" style="color:#1F4E79">⇒ $g$ est strictement décroissante sur $\mathbb{R}$.</div>

**2.c)** $g$ est continue et strictement décroissante sur $\left[0;\frac12\right]$, donc réalise une bijection de cet intervalle sur son image. Calculons les valeurs aux bornes :
$$ g(0)=f(0)-0 = \frac{1}{1+e} > 0, \qquad g\!\left(\tfrac12\right) = f\!\left(\tfrac12\right)-\tfrac12 = \frac{1}{2\sqrt{e}}-\frac12 < 0 $$
(car $\frac{1}{2\sqrt e}<\frac12$). Comme $g$ est continue et change de signe strictement entre $0$ et $\frac12$, le théorème des valeurs intermédiaires (avec stricte monotonie) assure l'existence d'un unique $\alpha\in\left]0;\frac12\right[$ tel que $g(\alpha)=0$, soit $f(\alpha)=\alpha$.
<div class="my-2 font-semibold" style="color:#1F4E79">⇒ Il existe un unique $\alpha\in\left]0;\frac12\right[$ tel que $f(\alpha)=\alpha$.</div>

**3.a)** Par récurrence. **Initialisation :** $u_0\in\left]0;\frac12\right[$, donc $0<u_0<\frac12$. **Hérédité :** supposons $0<u_n<\frac12$. Alors $u_n\in\mathbb{R}$ et $u_{n+1}=f(u_n)$ ; d'après **I.2.b)**, $0<f(u_n)<\frac12$, c'est-à-dire $0<u_{n+1}<\frac12$.
<div class="my-2 font-semibold" style="color:#1F4E79">⇒ $(\forall n\in\mathbb{N})\ ;\ 0<u_n<\dfrac12$.</div>

**3.b)** Comme $\alpha\in\left]0;\frac12\right[$ et $u_n\in\left]0;\frac12\right[$, l'intervalle $\left[0;\frac12\right]$ contient $u_n$ et $\alpha$. La fonction $f$ est dérivable sur cet intervalle, avec $|f'(t)|<\frac12$ (par **2.a)**, $0\le f'<\frac12$). D'après l'inégalité des accroissements finis appliquée entre $u_n$ et $\alpha$ :
$$ |u_{n+1}-\alpha| = |f(u_n)-f(\alpha)| \le \frac{1}{2}\,|u_n-\alpha|, $$
puisque $f(\alpha)=\alpha$ donne $u_{n+1}-\alpha=f(u_n)-f(\alpha)$.
<div class="my-2 font-semibold" style="color:#1F4E79">⇒ $(\forall n\in\mathbb{N})\ ;\ |u_{n+1}-\alpha|\le\dfrac12|u_n-\alpha|$.</div>

**3.c)** Par récurrence. **Initialisation :** $u_0,\alpha\in\left]0;\frac12\right[$, donc $|u_0-\alpha|<\frac12=\left(\frac12\right)^{0+1}$. **Hérédité :** supposons $|u_n-\alpha|\le\left(\frac12\right)^{n+1}$. Alors par **3.b)** :
$$ |u_{n+1}-\alpha| \le \frac12\,|u_n-\alpha| \le \frac12\left(\frac12\right)^{n+1} = \left(\frac12\right)^{n+2} = \left(\frac12\right)^{(n+1)+1}. $$
<div class="my-2 font-semibold" style="color:#1F4E79">⇒ $(\forall n\in\mathbb{N})\ ;\ |u_n-\alpha|\le\left(\dfrac12\right)^{n+1}$.</div>

**3.d)** Comme $0<\frac12<1$, on a $\displaystyle\lim_{n\to+\infty}\left(\frac12\right)^{n+1}=0$. Par encadrement $0\le|u_n-\alpha|\le\left(\frac12\right)^{n+1}$, le théorème des gendarmes donne $\displaystyle\lim_{n\to+\infty}|u_n-\alpha|=0$.
<div class="my-2 font-semibold" style="color:#1F4E79">⇒ La suite $(u_n)$ converge vers $\alpha$.</div>

<div class="mt-6 mb-2 text-base font-bold" style="color:#1F4E79">Partie III</div>

**1.a)** Pour $1\le k\le n$, écrivons le terme général de la somme :
$$ \frac{k}{e^{\frac{k}{n}}+e^{\frac{n-k}{n}}}. $$
Or $\dfrac{n-k}{n}=1-\dfrac{k}{n}$, donc en posant $x=\dfrac{k}{n}$ : $e^{\frac{n-k}{n}}=e^{1-x}$. Multiplions numérateur et dénominateur par $e^{x}$ :
$$ \frac{k}{e^{x}+e^{1-x}} = \frac{k\,e^{x}}{e^{2x}+e\cdot e^{0}}\cdot\frac{1}{1}. $$
Plus précisément $e^{x}+e^{1-x}=e^{x}+\dfrac{e}{e^{x}}=\dfrac{e^{2x}+e}{e^{x}}$, donc
$$ \frac{k}{e^{x}+e^{1-x}} = \frac{k\,e^{x}}{e^{2x}+e} = k\,f(x) = k\,f\!\left(\frac{k}{n}\right). $$
Ainsi
$$ S_n = \frac{1}{n(n+1)}\sum_{k=1}^{n} k\,f\!\left(\frac{k}{n}\right) = \frac{1}{n+1}\sum_{k=1}^{n}\frac{k}{n}\,f\!\left(\frac{k}{n}\right). $$
<div class="my-2 font-semibold" style="color:#1F4E79">⇒ $(\forall n\in\mathbb{N}^*)\ ;\ S_n=\dfrac{1}{n+1}\displaystyle\sum_{k=1}^{n}\frac{k}{n}\,f\!\left(\frac{k}{n}\right)$.</div>

**1.b)** Posons $t=1-x$ dans $\displaystyle\int_0^1 x\,f(x)\,dx$ (donc $x=1-t$, $dx=-dt$ ; $x=0\Rightarrow t=1$, $x=1\Rightarrow t=0$) :
$$ \int_0^1 x\,f(x)\,dx = \int_1^0 (1-t)\,f(1-t)\,(-dt) = \int_0^1 (1-t)\,f(1-t)\,dt = \int_0^1 (1-t)\,f(t)\,dt, $$
en utilisant $f(1-t)=f(t)$. En développant :
$$ \int_0^1 x\,f(x)\,dx = \int_0^1 f(t)\,dt - \int_0^1 t\,f(t)\,dt = \int_0^1 f(x)\,dx - \int_0^1 x\,f(x)\,dx. $$
Donc $2\displaystyle\int_0^1 x\,f(x)\,dx = \int_0^1 f(x)\,dx$, c'est-à-dire $\displaystyle\int_0^1 x\,f(x)\,dx = \frac12\int_0^1 f(x)\,dx$. Or, par **I.4.b)**, $\displaystyle\frac12\int_0^1 f(x)\,dx = \int_0^{\frac12} f(x)\,dx$.
<div class="my-2 font-semibold" style="color:#1F4E79">⇒ $\displaystyle\int_0^1 x\,f(x)\,dx = \int_0^{\frac12} f(x)\,dx$.</div>

**2)** Posons $h(x)=x\,f(x)$, fonction continue sur $[0;1]$. La somme $\displaystyle\frac1n\sum_{k=1}^{n}\frac{k}{n}\,f\!\left(\frac{k}{n}\right)=\frac1n\sum_{k=1}^{n} h\!\left(\frac{k}{n}\right)$ est une somme de Riemann de $h$ sur $[0;1]$, donc
$$ \lim_{n\to+\infty}\frac1n\sum_{k=1}^{n} h\!\left(\frac{k}{n}\right) = \int_0^1 x\,f(x)\,dx. $$
Or, d'après **1.a)** : $S_n = \dfrac{1}{n+1}\displaystyle\sum_{k=1}^{n}\frac{k}{n}\,f\!\left(\frac{k}{n}\right) = \dfrac{n}{n+1}\cdot\frac1n\sum_{k=1}^{n} h\!\left(\frac{k}{n}\right).$
Comme $\dfrac{n}{n+1}\to 1$, on en déduit
$$ \lim_{n\to+\infty} S_n = 1\times\int_0^1 x\,f(x)\,dx = \int_0^{\frac12} f(x)\,dx = \frac{1}{\sqrt{e}}\left(\arctan(\sqrt{e})-\frac{\pi}{4}\right). $$
<div class="my-2 font-semibold" style="color:#1F4E79">⇒ $(S_n)$ converge et $\displaystyle\lim_{n\to+\infty} S_n = \frac{1}{\sqrt{e}}\left(\arctan(\sqrt{e})-\frac{\pi}{4}\right)$.</div>

<div class="my-5 rounded-lg px-4 py-2.5 text-white font-bold" style="background:#1F4E79">Exercice 2 <span class="font-normal text-white/80 text-sm">(3.5 points)</span></div>

Soit $\alpha\in[0;2\pi[$ et $(E_\alpha):\ z^2 - 2^\alpha e^{i\alpha}(1+2i)z + i\,2^{2\alpha+1}e^{i2\alpha}=0$.

<div class="mt-6 mb-2 text-base font-bold" style="color:#1F4E79">Partie I</div>

**1.a)** Le discriminant de $(E_\alpha)$ est $\Delta_\alpha = B^2 - 4AC$ avec $A=1$, $B=-2^\alpha e^{i\alpha}(1+2i)$, $C=i\,2^{2\alpha+1}e^{i2\alpha}$ :
$$ \Delta_\alpha = \big(2^\alpha e^{i\alpha}(1+2i)\big)^2 - 4\,i\,2^{2\alpha+1}e^{i2\alpha}. $$
Calculons chaque terme. D'une part $\big(2^\alpha e^{i\alpha}(1+2i)\big)^2 = 2^{2\alpha}e^{i2\alpha}(1+2i)^2$, et $(1+2i)^2 = 1+4i-4 = -3+4i$. D'autre part $4\,i\,2^{2\alpha+1} = 8\,i\,2^{2\alpha}$. Donc
$$ \Delta_\alpha = 2^{2\alpha}e^{i2\alpha}\big[(-3+4i) - 8i\big] = 2^{2\alpha}e^{i2\alpha}(-3-4i). $$
Or $(1-2i)^2 = 1-4i-4 = -3-4i$, d'où
$$ \Delta_\alpha = 2^{2\alpha}e^{i2\alpha}(1-2i)^2 = \big(2^\alpha e^{i\alpha}(1-2i)\big)^2. $$
<div class="my-2 font-semibold" style="color:#1F4E79">⇒ $\Delta_\alpha = \big(2^\alpha e^{i\alpha}(1-2i)\big)^2$.</div>

**1.b)** Une racine carrée de $\Delta_\alpha$ est $\delta = 2^\alpha e^{i\alpha}(1-2i)$. Les solutions sont $z = \dfrac{-B\pm\delta}{2}$, avec $-B = 2^\alpha e^{i\alpha}(1+2i)$ :
$$ z_+ = \frac{2^\alpha e^{i\alpha}(1+2i) + 2^\alpha e^{i\alpha}(1-2i)}{2} = \frac{2^\alpha e^{i\alpha}\cdot 2}{2} = 2^\alpha e^{i\alpha}, $$
$$ z_- = \frac{2^\alpha e^{i\alpha}(1+2i) - 2^\alpha e^{i\alpha}(1-2i)}{2} = \frac{2^\alpha e^{i\alpha}\cdot 4i}{2} = 2^{\alpha+1}i\,e^{i\alpha}. $$
Leurs modules : $|z_+| = 2^\alpha$ et $|z_-| = 2^{\alpha+1}$, donc $|z_+|<|z_-|$. On pose donc :
<div class="my-2 font-semibold" style="color:#1F4E79">⇒ $a = 2^\alpha e^{i\alpha}$ et $b = 2^{\alpha+1}i\,e^{i\alpha}$ (avec $|a|=2^\alpha<2^{\alpha+1}=|b|$).</div>

**2)** $\dfrac{b}{a} = \dfrac{2^{\alpha+1}i\,e^{i\alpha}}{2^\alpha e^{i\alpha}} = 2i$.
<div class="my-2 font-semibold" style="color:#1F4E79">⇒ $\dfrac{b}{a}=2i$ est un imaginaire pur. Ainsi $\lambda = \mathrm{Im}\!\left(\dfrac{b}{a}\right) = 2$ et $\dfrac{b}{a}=\lambda i$.</div>

<div class="mt-6 mb-2 text-base font-bold" style="color:#1F4E79">Partie II</div>

On a $b = \lambda i\,a$ (avec $\lambda=2$), et $H(h)$ vérifie $\dfrac1h=\dfrac1a+\dfrac1b$, soit $h = \dfrac{ab}{a+b}$.

**1.a)** Avec $b=\lambda i\,a$ : $h = \dfrac{a\cdot\lambda i\,a}{a+\lambda i\,a} = \dfrac{\lambda i\,a}{1+\lambda i}$, et $b-a = a(\lambda i - 1)$. Donc
$$ \frac{h}{b-a} = \frac{\dfrac{\lambda i\,a}{1+\lambda i}}{a(\lambda i - 1)} = \frac{\lambda i}{(1+\lambda i)(\lambda i - 1)}. $$
Or $(1+\lambda i)(\lambda i - 1) = \lambda i - 1 + \lambda^2 i^2 - \lambda i = -1 - \lambda^2 = -(\lambda^2+1)$. D'où
$$ \frac{h}{b-a} = \frac{\lambda i}{-(\lambda^2+1)} = -\left(\frac{\lambda}{\lambda^2+1}\right)i. $$
Ce quotient est un imaginaire pur. Comme $\dfrac{h}{b-a}=\dfrac{z_H - z_O}{z_B - z_A}$ a un argument égal à $\pm\dfrac{\pi}{2}$, les directions $\vec{OH}$ et $\vec{AB}$ sont orthogonales.
<div class="my-2 font-semibold" style="color:#1F4E79">⇒ $\dfrac{h}{b-a}=-\left(\dfrac{\lambda}{\lambda^2+1}\right)i$, donc $(OH)\perp(AB)$.</div>

**1.b)** $h - a = \dfrac{\lambda i\,a}{1+\lambda i} - a = a\cdot\dfrac{\lambda i - (1+\lambda i)}{1+\lambda i} = \dfrac{-a}{1+\lambda i}$. Donc
$$ \frac{h-a}{b-a} = \frac{\dfrac{-a}{1+\lambda i}}{a(\lambda i - 1)} = \frac{-1}{(1+\lambda i)(\lambda i - 1)} = \frac{-1}{-(\lambda^2+1)} = \frac{1}{\lambda^2+1}. $$
Ce quotient est un réel.
<div class="my-2 font-semibold" style="color:#1F4E79">⇒ $\dfrac{h-a}{b-a}=\dfrac{1}{\lambda^2+1}\in\mathbb{R}$, donc $\vec{AH}$ et $\vec{AB}$ sont colinéaires : $H$, $A$, $B$ sont alignés.</div>

**2)** $I(m)$ milieu de $[OH]$ : $m=\dfrac{h}{2}$. $J(n)$ milieu de $[HB]$ : $n=\dfrac{h+b}{2}$.

**2.a)** Calculons $n$ et $m-a$. D'abord
$$ h+b = \frac{\lambda i\,a}{1+\lambda i} + \lambda i\,a = \lambda i\,a\cdot\frac{1 + (1+\lambda i)}{1+\lambda i} = \lambda i\,a\cdot\frac{2+\lambda i}{1+\lambda i}, $$
donc $n = \dfrac{h+b}{2} = \dfrac{\lambda i\,a\,(2+\lambda i)}{2(1+\lambda i)}$. Ensuite
$$ m - a = \frac{h}{2} - a = \frac{h - 2a}{2}, \quad h-2a = \frac{\lambda i\,a}{1+\lambda i} - 2a = a\cdot\frac{\lambda i - 2(1+\lambda i)}{1+\lambda i} = a\cdot\frac{-2-\lambda i}{1+\lambda i}, $$
donc $m-a = \dfrac{a(-2-\lambda i)}{2(1+\lambda i)} = \dfrac{-a(2+\lambda i)}{2(1+\lambda i)}$. Par quotient :
$$ \frac{n}{m-a} = \frac{\lambda i\,a\,(2+\lambda i)}{-a\,(2+\lambda i)} = -\lambda i. $$
<div class="my-2 font-semibold" style="color:#1F4E79">⇒ $\dfrac{n}{m-a}=-\lambda i$.</div>

**2.b)** $\dfrac{n}{m-a} = \dfrac{z_J - z_O}{z_I - z_A}$ est un imaginaire pur (puisque $\lambda\in\mathbb{R}^*$), donc d'argument $\pm\dfrac\pi2$ : les directions $\vec{OJ}$ et $\vec{AI}$ sont orthogonales. De plus son module vaut $\dfrac{OJ}{AI} = |-\lambda i| = |\lambda|$.
<div class="my-2 font-semibold" style="color:#1F4E79">⇒ $(OJ)\perp(AI)$ et $OJ = |\lambda|\,AI$.</div>

**2.c)** $K$ est l'intersection de $(OJ)$ et $(AI)$ ; d'après **2.b)**, ces droites sont perpendiculaires, donc l'angle $\widehat{IKJ}=\dfrac\pi2$ (car $I\in(AI)$ et $J\in(OJ)$). Montrons que $\widehat{IHJ}=\dfrac\pi2$ également. On a $\vec{HI}=m-h=\dfrac{h}{2}-h=-\dfrac{h}{2}$ et $\vec{HJ}=n-h=\dfrac{h+b}{2}-h=\dfrac{b-h}{2}$. Ainsi
$$ \frac{n-h}{m-h} = \frac{(b-h)/2}{-h/2} = -\frac{b-h}{h} = -\left(\frac{b}{h}-1\right). $$
Or $\dfrac{b}{h} = \dfrac{b(a+b)}{ab} = \dfrac{a+b}{a} = 1 + \dfrac{b}{a} = 1+\lambda i$, donc $\dfrac{b}{h}-1=\lambda i$ et $\dfrac{n-h}{m-h} = -\lambda i$, imaginaire pur : $(HI)\perp(HJ)$, soit $\widehat{IHJ}=\dfrac\pi2$.

Les points $K$ et $H$ voient donc le segment $[IJ]$ sous un angle droit : ils appartiennent au cercle de diamètre $[IJ]$.
<div class="my-2 font-semibold" style="color:#1F4E79">⇒ $K$, $I$, $H$, $J$ sont cocycliques (cercle de diamètre $[IJ]$).</div>

**2.d)** $\vec{IJ} = n - m = \dfrac{h+b}{2} - \dfrac{h}{2} = \dfrac{b}{2}$ (c'est la droite des milieux du triangle $OHB$). On a alors
$$ \frac{n-m}{a-0} = \frac{b/2}{a} = \frac{1}{2}\cdot\frac{b}{a} = \frac{\lambda i}{2}, $$
imaginaire pur. Donc $\vec{IJ}$ et $\vec{OA}$ sont orthogonaux.
<div class="my-2 font-semibold" style="color:#1F4E79">⇒ $(IJ)\perp(OA)$.</div>

<div class="my-5 rounded-lg px-4 py-2.5 text-white font-bold" style="background:#1F4E79">Exercice 3 <span class="font-normal text-white/80 text-sm">(3 points)</span></div>

$p$ est un nombre premier impair et $a$ un entier premier avec $p$.

**1)** D'après le petit théorème de Fermat, $a^{p-1}\equiv 1\ [p]$. Comme $p$ est impair, $\dfrac{p-1}{2}$ est un entier, et l'on peut écrire
$$ a^{p-1} - 1 = \left(a^{\frac{p-1}{2}}\right)^2 - 1 = \left(a^{\frac{p-1}{2}} - 1\right)\left(a^{\frac{p-1}{2}} + 1\right) \equiv 0\ [p]. $$
$p$ étant premier, il divise l'un des deux facteurs :
<div class="my-2 font-semibold" style="color:#1F4E79">⇒ $a^{\frac{p-1}{2}}\equiv 1\ [p]$ ou $a^{\frac{p-1}{2}}\equiv -1\ [p]$.</div>

**2)** $ax^2\equiv 1\ [p]$, et $x_0$ en est une solution : $a\,x_0^2\equiv 1\ [p]$.

**2.a)** De $a\,x_0^2\equiv 1\ [p]$, on déduit que $p\nmid x_0$ (sinon $a\,x_0^2\equiv 0$, contradiction avec $\equiv 1$), donc $x_0$ est premier avec $p$. Par le petit théorème de Fermat :
<div class="my-2 font-semibold" style="color:#1F4E79">⇒ $x_0^{\,p-1}\equiv 1\ [p]$.</div>

**2.b)** Élevons $a\,x_0^2\equiv 1\ [p]$ à la puissance $\dfrac{p-1}{2}$ :
$$ a^{\frac{p-1}{2}}\,x_0^{\,p-1} = \left(a\,x_0^2\right)^{\frac{p-1}{2}} \equiv 1^{\frac{p-1}{2}} = 1\ [p]. $$
Or $x_0^{\,p-1}\equiv 1\ [p]$ d'après **2.a)**, donc $a^{\frac{p-1}{2}}\cdot 1\equiv 1\ [p]$.
<div class="my-2 font-semibold" style="color:#1F4E79">⇒ $a^{\frac{p-1}{2}}\equiv 1\ [p]$.</div>

**3)** Soit $n\in\mathbb{N}^*$.

**3.a)** Supposons que $p$ divise $2^{2n+1}-1$, c'est-à-dire $2^{2n+1}\equiv 1\ [p]$. Alors
$$ 2^{2n+1} = 2\cdot 2^{2n} = 2\,(2^{n})^2 \equiv 1\ [p], $$
ce qui montre que $x_0 = 2^n$ est solution de l'équation $2x^2\equiv 1\ [p]$ (forme $ax^2\equiv 1\ [p]$ avec $a=2$, et $2$ est premier avec $p$ impair). D'après **2.b)** appliquée à $a=2$ :
<div class="my-2 font-semibold" style="color:#1F4E79">⇒ $2^{\frac{p-1}{2}}\equiv 1\ [p]$.</div>

**3.b)** Considérons $p=11$ (premier impair). Calculons $2^{\frac{11-1}{2}} = 2^5 = 32 \equiv 10 \equiv -1\ [11]$, donc $2^{\frac{p-1}{2}}\not\equiv 1\ [11]$. Par contraposée de **3.a)** (avec $p=11$), $11$ ne divise pas $2^{2n+1}-1$. Comme $11$ est premier, $\gcd\!\left(11,\,2^{2n+1}-1\right)=1$. D'après le théorème de Bézout, l'équation $11x + (2^{2n+1}-1)y = 1$ admet (au moins) une solution dans $\mathbb{Z}^2$.
<div class="my-2 font-semibold" style="color:#1F4E79">⇒ $(E):\ 11x + (2^{2n+1}-1)y = 1$ admet au moins une solution dans $\mathbb{Z}^2$.</div>

**4)** $(F):\ x^2 + 5x + 2 \equiv 0\ [11]$.

**4.a)** $4$ est inversible modulo $11$ ($4\cdot 3 = 12\equiv 1$), donc $(F)$ équivaut à $4x^2+20x+8\equiv 0\ [11]$. Or $4x^2+20x = (2x+5)^2 - 25$, d'où
$$ (F)\iff (2x+5)^2 - 25 + 8 \equiv 0\ [11] \iff (2x+5)^2 \equiv 17 \equiv 6\ [11]. $$
Comme $2$ est inversible modulo $11$ (d'inverse $6$ car $2\cdot 6=12\equiv 1$), multiplier par $2$ est une équivalence :
$$ (2x+5)^2 \equiv 6\ [11] \iff 2(2x+5)^2 \equiv 12 \equiv 1\ [11]. $$
<div class="my-2 font-semibold" style="color:#1F4E79">⇒ $(F)\iff 2(2x+5)^2\equiv 1\ [11]$.</div>

**4.b)** En posant $X = 2x+5$, l'équation $2X^2\equiv 1\ [11]$ est de la forme $aX^2\equiv 1\ [p]$ avec $a=2$ et $p=11$. Si elle admettait une solution, alors par **2.b)** on aurait $2^{\frac{11-1}{2}}\equiv 1\ [11]$, c'est-à-dire $2^5\equiv 1\ [11]$. Or $2^5 = 32\equiv -1\ [11]\neq 1\ [11]$ : contradiction. Donc $2X^2\equiv 1\ [11]$ n'a pas de solution, et $(F)$ non plus.
<div class="my-2 font-semibold" style="color:#1F4E79">⇒ L'équation $(F)$ n'admet pas de solution dans $\mathbb{Z}$.</div>

<div class="my-5 rounded-lg px-4 py-2.5 text-white font-bold" style="background:#1F4E79">Exercice 4 <span class="font-normal text-white/80 text-sm">(3.5 points)</span></div>

$A = \begin{pmatrix} -1 & -1 & 0 \\ -1 & -1 & 0 \\ -1 & 1 & -2 \end{pmatrix}$ et $E = \{ M(x) = I + xA \,/\, x\in\mathbb{R}\}$.

**1.a)** Calculons $A^2 = A\times A$. Ligne par colonne :
$$ A^2 = \begin{pmatrix} -1 & -1 & 0 \\ -1 & -1 & 0 \\ -1 & 1 & -2 \end{pmatrix}\begin{pmatrix} -1 & -1 & 0 \\ -1 & -1 & 0 \\ -1 & 1 & -2 \end{pmatrix} = \begin{pmatrix} 2 & 2 & 0 \\ 2 & 2 & 0 \\ 2 & -2 & 4 \end{pmatrix}. $$
En effet, par exemple : $(1,1):(-1)(-1)+(-1)(-1)+0 = 2$ ; $(1,2):(-1)(-1)+(-1)(-1)+0 = 2$ ; $(3,1):(-1)(-1)+(1)(-1)+(-2)(-1) = 1-1+2 = 2$ ; $(3,2):(-1)(-1)+(1)(-1)+(-2)(1) = 1-1-2 = -2$ ; $(3,3):0+0+(-2)(-2)=4$. On reconnaît $A^2 = -2A$.
<div class="my-2 font-semibold" style="color:#1F4E79">⇒ $A^2 = -2A$.</div>

**1.b)** $M(x)\times M(y) = (I+xA)(I+yA) = I + xA + yA + xy\,A^2 = I + (x+y)A + xy(-2A) = I + (x+y-2xy)A$.
<div class="my-2 font-semibold" style="color:#1F4E79">⇒ $\forall(x,y)\in\mathbb{R}^2\ ;\ M(x)\times M(y) = M(x+y-2xy)$.</div>

**2.a)** $M\!\left(\frac12\right) = I + \frac12 A = \begin{pmatrix} 1-\frac12 & -\frac12 & 0 \\ -\frac12 & 1-\frac12 & 0 \\ -\frac12 & \frac12 & 1-1 \end{pmatrix} = \begin{pmatrix} \frac12 & -\frac12 & 0 \\ -\frac12 & \frac12 & 0 \\ -\frac12 & \frac12 & 0 \end{pmatrix}.$ Notons $N = \begin{pmatrix} 0 & 0 & 0 \\ 0 & 0 & 0 \\ 0 & 0 & 1 \end{pmatrix}$. Le produit $M\!\left(\frac12\right)\times N$ ne retient que la troisième colonne de $M\!\left(\frac12\right)$ placée en troisième colonne, les deux premières colonnes étant nulles :
$$ M\!\left(\frac12\right)\times N = \begin{pmatrix} \frac12 & -\frac12 & 0 \\ -\frac12 & \frac12 & 0 \\ -\frac12 & \frac12 & 0 \end{pmatrix}\begin{pmatrix} 0 & 0 & 0 \\ 0 & 0 & 0 \\ 0 & 0 & 1 \end{pmatrix} = \begin{pmatrix} 0 & 0 & 0 \\ 0 & 0 & 0 \\ 0 & 0 & 0 \end{pmatrix} = O. $$
<div class="my-2 font-semibold" style="color:#1F4E79">⇒ $M\!\left(\frac12\right)\times N = O$.</div>

**2.b)** On a $N\neq O$, mais $M\!\left(\frac12\right)\times N = O$. Si $M\!\left(\frac12\right)$ était inversible, en multipliant à gauche par son inverse on obtiendrait $N = M\!\left(\frac12\right)^{-1}\,O = O$, ce qui est faux. (C'est un diviseur de zéro à gauche, donc non inversible.)
<div class="my-2 font-semibold" style="color:#1F4E79">⇒ $M\!\left(\frac12\right)$ n'est pas inversible dans $(M_3(\mathbb{R}),\times)$.</div>

**3)** Soit $F = E - \left\{M\!\left(\frac12\right)\right\} = \left\{M(x)\,/\,x\neq\frac12\right\}$. Soient $M(x), M(y)\in F$, c'est-à-dire $x\neq\frac12$ et $y\neq\frac12$. Par **1.b)**, $M(x)\times M(y) = M(x+y-2xy)$, qui appartient à $E$. Reste à vérifier que $x+y-2xy\neq\frac12$. Avec l'identité fournie :
$$ \left(x-\frac12\right)\left(y-\frac12\right) = -\frac12\left(x+y-2xy - \frac12\right). $$
Comme $x\neq\frac12$ et $y\neq\frac12$, le membre de gauche est non nul, donc $x+y-2xy-\frac12\neq 0$, soit $x+y-2xy\neq\frac12$. Ainsi $M(x)\times M(y)\in F$.
<div class="my-2 font-semibold" style="color:#1F4E79">⇒ $E - \left\{M\!\left(\frac12\right)\right\}$ est stable pour $\times$.</div>

**4)** Montrons que $(F,\times)$ est un groupe commutatif, avec $F = E-\left\{M\!\left(\frac12\right)\right\}$.

- **Stabilité :** établie en **3)**.
- **Associativité :** $\times$ est associative dans $M_3(\mathbb{R})$, donc dans $F$.
- **Commutativité :** $M(x)\times M(y) = M(x+y-2xy) = M(y+x-2yx) = M(y)\times M(x)$, car $x+y-2xy$ est symétrique en $x,y$.
- **Élément neutre :** $M(0) = I$. On a $0\neq\frac12$ donc $I\in F$, et $M(x)\times M(0) = M(x+0-0) = M(x)$.
- **Symétrique :** cherchons $x'$ tel que $M(x)\times M(x') = M(0)=I$, soit $x + x' - 2xx' = 0$, c'est-à-dire $x'(1-2x) = -x$. Comme $x\neq\frac12$, $1-2x\neq 0$, donc $x' = \dfrac{-x}{1-2x} = \dfrac{x}{2x-1}$. Vérifions que $x'\neq\frac12$ : si $x'=\frac12$, alors $\dfrac{x}{2x-1}=\frac12 \Rightarrow 2x = 2x-1 \Rightarrow 0=-1$, impossible. Donc $M(x') \in F$ et c'est le symétrique de $M(x)$.

<div class="my-2 font-semibold" style="color:#1F4E79">⇒ $\left(E-\left\{M\!\left(\frac12\right)\right\},\times\right)$ est un groupe commutatif (de neutre $I=M(0)$).</div>

**5)** $T$ est définie par $M(x)\,T\,M(y) = M\!\left(x+y-\frac12\right)$, et $\varphi:\mathbb{R}\to E$, $\varphi(x)=M\!\left(\dfrac{1-x}{2}\right)$.

**5.a)** Pour tous $x,y\in\mathbb{R}$, en posant $u=\dfrac{1-x}{2}$ et $v=\dfrac{1-y}{2}$ :
$$ \varphi(x)\,T\,\varphi(y) = M(u)\,T\,M(v) = M\!\left(u+v-\frac12\right). $$
Or $u+v-\dfrac12 = \dfrac{1-x}{2}+\dfrac{1-y}{2}-\dfrac12 = \dfrac{1-x+1-y-1}{2} = \dfrac{1-(x+y)}{2}$. Donc
$$ \varphi(x)\,T\,\varphi(y) = M\!\left(\frac{1-(x+y)}{2}\right) = \varphi(x+y). $$
Donc $\varphi$ est un homomorphisme de $(\mathbb{R},+)$ vers $(E,T)$.

**Surjectivité $\varphi(\mathbb{R})=E$ :** soit $M(t)\in E$ quelconque ($t\in\mathbb{R}$). Cherchons $x$ avec $\dfrac{1-x}{2}=t$, soit $x = 1-2t\in\mathbb{R}$ ; alors $\varphi(1-2t)=M(t)$. Donc tout élément de $E$ est atteint.
<div class="my-2 font-semibold" style="color:#1F4E79">⇒ $\varphi$ est un homomorphisme de $(\mathbb{R},+)$ vers $(E,T)$ et $\varphi(\mathbb{R})=E$.</div>

**5.b)** $(\mathbb{R},+)$ est un groupe commutatif. $\varphi$ est un homomorphisme **surjectif** de $(\mathbb{R},+)$ sur $(E,T)$ ; l'image d'un groupe commutatif par un homomorphisme surjectif est un groupe commutatif. Donc $(E,T)$ est un groupe commutatif. (Son neutre est $\varphi(0)=M\!\left(\frac12\right)$.)
<div class="my-2 font-semibold" style="color:#1F4E79">⇒ $(E,T)$ est un groupe commutatif.</div>

**6)** Montrons que $(E,T,\times)$ est un corps commutatif.

- $(E,T)$ est un groupe commutatif (**5.b)**), de neutre $M\!\left(\frac12\right)$.
- $\times$ est associative et commutative dans $E$ (déjà vu : $M(x)\times M(y)=M(x+y-2xy)$). $E$ est stable par $\times$ : c'est immédiat par **1.b)** ($M(x)\times M(y)=M(x+y-2xy)\in E$). Le neutre multiplicatif est $M(0)=I\in E$.
- **Distributivité de $\times$ sur $T$ :** pour tous $x,y,z$,
$$ M(x)\times\big(M(y)\,T\,M(z)\big) = M(x)\times M\!\left(y+z-\tfrac12\right) = M\!\left(x + \big(y+z-\tfrac12\big) - 2x\big(y+z-\tfrac12\big)\right). $$
Développons l'argument : $x + y + z - \tfrac12 - 2xy - 2xz + x = 2x + y + z - \tfrac12 - 2xy - 2xz.$ D'autre part,
$$ \big(M(x)\times M(y)\big)\,T\,\big(M(x)\times M(z)\big) = M(x+y-2xy)\,T\,M(x+z-2xz) = M\!\left((x+y-2xy)+(x+z-2xz)-\tfrac12\right), $$
dont l'argument est $2x + y + z - 2xy - 2xz - \tfrac12$. Les deux arguments coïncident, donc $\times$ est distributive sur $T$ (à gauche ; la commutativité de $\times$ donne aussi la distributivité à droite).
- **Inversibilité des éléments non nuls :** l'élément « nul » pour $(E,T,\times)$ est le neutre additif $M\!\left(\frac12\right)$. Les éléments de $E$ distincts de $M\!\left(\frac12\right)$ forment exactement $E-\left\{M\!\left(\frac12\right)\right\}$, qui est un groupe commutatif pour $\times$ d'après **4)**. Donc tout élément non nul est inversible pour $\times$.

Toutes les conditions sont réunies.
<div class="my-2 font-semibold" style="color:#1F4E79">⇒ $(E,T,\times)$ est un corps commutatif.</div>
