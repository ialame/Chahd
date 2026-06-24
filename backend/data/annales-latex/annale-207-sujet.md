<div class="my-5 rounded-lg px-4 py-2.5 text-white font-bold" style="background:#1F4E79">Exercice 1 — Analyse <span class="font-normal text-white/80 text-sm">(10 points)</span></div>

<div class="mt-6 mb-2 text-base font-bold" style="color:#1F4E79">Partie A</div>

**1)** Montrer que pour tout $x\in\mathbb{R}$ : $1+x \le e^{x}$.

**2.a)** Montrer que pour tout $x\in\mathbb{R}^{+}$ : $0 \le 1-e^{-x} \le x$.

**2.b)** En déduire que pour tout $x\in\mathbb{R}^{+}$ : $0 \le 1-x+\dfrac{x^{2}}{2}-e^{-x} \le \dfrac{x^{3}}{6}$.

**2.c)** Montrer que $\displaystyle\lim_{x\to 0^{+}}\frac{1-x-e^{-x}}{x^{2}}=-\frac{1}{2}$.

<div class="mt-6 mb-2 text-base font-bold" style="color:#1F4E79">Partie B</div>

On considère la fonction $f$ définie sur $I=[0,+\infty[$ par :
$$f(0)=1 \quad\text{et}\quad \forall x\in\,]0,+\infty[\ :\ f(x)=\frac{e^{-x}-e^{-2x}}{x}.$$
Soit $(C)$ sa courbe représentative dans un repère orthonormé $(O,\vec{i},\vec{j})$.

**1.a)** Montrer que $f$ est continue à droite en $0$.

**1.b)** Vérifier que pour tout $x>0$ : $\dfrac{f(x)-1}{x}=\dfrac{1-2x-e^{-2x}}{x^{2}}-\dfrac{1-x-e^{-x}}{x^{2}}$.

**1.c)** En déduire que $f$ est dérivable à droite en $0$ et que le nombre dérivé à droite en $0$ est $-\dfrac{3}{2}$.

**2.a)** Montrer que pour tout $x>0$ : $f'(x)=\dfrac{e^{-2x}}{x^{2}}\bigl(2x+1-e^{x}(1+x)\bigr)$.

**2.b)** Montrer que pour tout $x>0$ : $f'(x)\le -e^{-2x}$. (On pourra utiliser : $1+x\le e^{x}$.)

**2.c)** En déduire le sens de variations de $f$ sur $I$.

**3)** On admet que pour tout $x>0$ : $f''(x)=\dfrac{e^{-2x}}{x^{3}}\bigl(-4x^{2}-4x-2+e^{x}(2+2x+x^{2})\bigr)$.

**3.a)** Montrer que pour tout $x\ge 0$ : $1+x+\dfrac{x^{2}}{2}\le e^{x}$.

**3.b)** En déduire que pour tout $x>0$ : $f''(x)>0$.

**4)** On admet que $\displaystyle\lim_{x\to 0^{+}}f'(x)=-\frac{3}{2}$.

**4.a)** Montrer que $\displaystyle\lim_{x\to +\infty}f'(x)=0$.

**4.b)** En déduire que pour tout $x\in I$ : $\bigl|f'(x)\bigr|\le \dfrac{3}{2}$.

**5.a)** Calculer $\displaystyle\lim_{x\to +\infty}f(x)$ puis interpréter graphiquement le résultat obtenu.

**5.b)** Dresser le tableau de variations de $f$.

**5.c)** Déterminer la position relative de la courbe $(C)$ par rapport à sa demi-tangente au point $T(0;1)$.

**5.d)** Représenter graphiquement la courbe $(C)$ dans le repère $(O,\vec{i},\vec{j})$.

<div class="mt-6 mb-2 text-base font-bold" style="color:#1F4E79">Partie C</div>

**1)** Pour tout $x$ de $[0,1]$, on pose : $g(x)=f(x)-x$.

**1.a)** Montrer que $g$ est une bijection de $[0,1]$ vers un intervalle $J$ que l'on déterminera.

**1.b)** Montrer qu'il existe un unique réel $\alpha\in\,]0,1[$ tel que $f(\alpha)=\alpha$.

**2)** Pour tout entier naturel non nul $n$ et pour tout entier $k\in\{0,1,\dots,n\}$, on considère les nombres réels $x_{k}=\dfrac{k\alpha}{n}$ et on pose :
$$I_{k}=\int_{x_{k}}^{x_{k+1}}f(t)\,\mathrm{d}t \quad\text{et}\quad J_{k}=\int_{x_{k}}^{x_{k+1}}f(x_{k})\,\mathrm{d}t.$$

**2.a)** Montrer que pour tout $k\in\{0,1,\dots,n\}$ : $\bigl|J_{k}-I_{k}\bigr|\le \dfrac{3}{2}\displaystyle\int_{x_{k}}^{x_{k+1}}(t-x_{k})\,\mathrm{d}t$.

**2.b)** En déduire que pour tout $k\in\{0,1,\dots,n\}$ : $\bigl|J_{k}-I_{k}\bigr|\le \dfrac{3}{4}\left(\dfrac{\alpha}{n}\right)^{2}$.

**3)** On pose : $L=\displaystyle\int_{0}^{\alpha}f(t)\,\mathrm{d}t$.

**3.a)** Montrer que pour tout $n\in\mathbb{N}^{*}$ : $\left|\dfrac{\alpha}{n}\displaystyle\sum_{k=0}^{n-1}f\!\left(\dfrac{k\alpha}{n}\right)-L\right|\le \dfrac{3}{4}\cdot\dfrac{\alpha^{2}}{n}$.

**3.b)** En déduire que $\displaystyle\lim_{n\to +\infty}\frac{\alpha}{n}\sum_{k=0}^{n-1}f\!\left(\frac{k\alpha}{n}\right)=\int_{0}^{\alpha}f(t)\,\mathrm{d}t$.

<div class="my-5 rounded-lg px-4 py-2.5 text-white font-bold" style="background:#1F4E79">Exercice 2 — Nombres complexes <span class="font-normal text-white/80 text-sm">(3,5 points)</span></div>

Soit $m\in\mathbb{C}\setminus\{-1,0,1\}$.

<div class="mt-6 mb-2 text-base font-bold" style="color:#1F4E79">Partie I</div>

On considère dans $\mathbb{C}$ l'équation $(E_{m})$ d'inconnue $z$ :
$$(E_{m}):\quad mz^{2}-(m-1)^{2}z-(m-1)^{2}=0.$$

**1.a)** Montrer que le discriminant de l'équation $(E_{m})$ est $\Delta=(m^{2}-1)^{2}$.

**1.b)** Déterminer $z_{1}$ et $z_{2}$ les deux solutions de l'équation $(E_{m})$.

**2)** On prend uniquement dans cette question $m=e^{i\theta}$, avec $0<\theta<\pi$. Écrire $z_{1}$ et $z_{2}$ sous forme exponentielle.

<div class="mt-6 mb-2 text-base font-bold" style="color:#1F4E79">Partie II</div>

Le plan complexe est muni d'un repère orthonormé direct $(O,\vec{u},\vec{v})$. On considère les deux points $A$ et $B$ d'affixes respectives $m-1$ et $\dfrac{1}{m}-1$.

**1)** Montrer que les points $O$, $A$ et $B$ sont alignés si et seulement si $m\in\mathbb{R}$.

**2)** On suppose que $m$ n'est pas un nombre réel. Soient $C$ l'image du point $B$ par la rotation de centre $A$ et d'angle $\dfrac{\pi}{3}$, et $D$ l'image du point $A$ par la rotation de centre $O$ et d'angle $\dfrac{\pi}{3}$, et soient $P(p)$, $Q(q)$ et $R(r)$ les milieux respectifs des segments $[AC]$, $[AD]$ et $[OB]$.

**2.a)** Montrer que l'affixe du point $C$ est $c=m-1+\left(\dfrac{1}{m}-m\right)e^{i\frac{\pi}{3}}$ et que l'affixe du point $D$ est $d=(m-1)e^{i\frac{\pi}{3}}$.

**2.b)** Montrer que $2(p-r)=m-1+\left(\dfrac{1}{m}-m\right)e^{i\frac{\pi}{3}}-\dfrac{1}{m}$ et que $2(q-r)=(m-1)e^{i\frac{\pi}{3}}-\left(\dfrac{1}{m}-m\right)$.

**2.c)** Montrer que $q-r=e^{i\frac{\pi}{3}}(p-r)$.

**2.d)** Quelle est la nature du triangle $PQR$ ? (justifier votre réponse)

<div class="my-5 rounded-lg px-4 py-2.5 text-white font-bold" style="background:#1F4E79">Exercice 3 — Structures algébriques <span class="font-normal text-white/80 text-sm">(3,5 points)</span></div>

On rappelle que $(M_{3}(\mathbb{R}),+,\times)$ est un anneau unitaire non commutatif et non intègre, d'unité $I=\begin{pmatrix}1&0&0\\0&1&0\\0&0&1\end{pmatrix}$ (la loi $\times$ étant la multiplication usuelle des matrices).

Pour tout réel $a$ on pose :
$$M(a)=\begin{pmatrix}1&0&0\\a+1&3&-1\\2a+3&6&-2\end{pmatrix}$$
et soit $G=\{M(a)\ /\ a\in\mathbb{R}\}$.

**1)** Soit $\varphi$ l'application de $\mathbb{R}$ vers $M_{3}(\mathbb{R})$ définie par : $\forall a\in\mathbb{R}\ ;\ \varphi(a)=M(a)$.

**1.a)** Montrer que $\varphi$ est un homomorphisme de $(\mathbb{R},+)$ vers $(M_{3}(\mathbb{R}),\times)$.

**1.b)** Montrer que $\varphi(\mathbb{R})=G$, en déduire que $(G,\times)$ est un groupe commutatif.

**1.c)** Déterminer $J$ l'élément neutre dans $(G,\times)$.

**1.d)** Déterminer l'inverse de $M(a)$ dans $(G,\times)$.

**1.e)** Résoudre dans $(G,\times)$ l'équation : $M(1)\times X=M(2)$.

**2.a)** Montrer que : $\forall a\in\mathbb{R}\ ;\ M(a)\times J=M(a)\times I$.

**2.b)** En déduire que pour tout $a\in\mathbb{R}$, $M(a)$ n'est pas inversible dans $(M_{3}(\mathbb{R}),\times)$.

**2.c)** Vérifier que les matrices de la forme $X=\begin{pmatrix}1&0&0\\x+2&3&0\\3x+5&6&1\end{pmatrix}$ avec $x\in\mathbb{R}$, sont des solutions dans $(M_{3}(\mathbb{R}),\times)$ de l'équation : $M(1)\times X=M(2)$.

<div class="my-5 rounded-lg px-4 py-2.5 text-white font-bold" style="background:#1F4E79">Exercice 4 — Arithmétique <span class="font-normal text-white/80 text-sm">(3 points)</span></div>

**1)** Montrer que $137$ est un nombre premier.

**2)** Déterminer un couple $(u,v)$ de $\mathbb{Z}^{2}$ tel que : $38u+136v=2$.

**3)** Soit $x\in\mathbb{Z}$ tel que : $x^{38}\equiv 1\ [137]$.

**3.a)** Montrer que $x$ et $137$ sont premiers entre eux.

**3.b)** Montrer que : $x^{136}\equiv 1\ [137]$.

**3.c)** Montrer que : $x^{2}\equiv 1\ [137]$.

**4)** Résoudre dans $\mathbb{Z}$ l'équation $(E)$ : $x^{19}\equiv 1\ [137]$.
