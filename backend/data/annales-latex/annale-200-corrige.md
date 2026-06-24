<div class="my-5 rounded-lg px-4 py-2.5 text-white font-bold" style="background:#1F4E79">Exercice 1 — Structures algébriques <span class="font-normal text-white/80 text-sm">(3,5 points)</span></div>

Loi $*$ sur $\mathbb{C}$ : $(x+yi)*(a+bi)=xa+(x^2 b+a^2 y)i$.

**1.a) Commutativité.** Pour $z=x+yi$ et $z'=a+bi$ :
$$z*z'=xa+(x^2 b+a^2 y)i,\qquad z'*z=ax+(a^2 y+x^2 b)i.$$
La partie réelle $xa=ax$ et la partie imaginaire $x^2 b+a^2 y=a^2 y+x^2 b$ coïncident, donc $z*z'=z'*z$. La loi $*$ est **commutative**.

**1.b) Associativité.** Posons $z=x+yi$, $z'=a+bi$, $z''=m+ni$. On calcule d'abord
$$z*z'=xa+(x^2 b+a^2 y)i,$$
puis
$$(z*z')*z''=(xa)m+\big((xa)^2 n+m^2(x^2 b+a^2 y)\big)i=xam+\big(x^2a^2 n+m^2 x^2 b+m^2 a^2 y\big)i.$$
De l'autre côté, $z'*z''=am+(a^2 n+m^2 b)i$, d'où
$$z*(z'*z'')=x(am)+\big(x^2(a^2 n+m^2 b)+(am)^2 y\big)i=xam+\big(x^2 a^2 n+x^2 m^2 b+a^2 m^2 y\big)i.$$
Les deux résultats sont identiques, donc $*$ est **associative**.

**1.c) Élément neutre.** Cherchons $e=a+bi$ tel que $z*e=z$ pour tout $z=x+yi$ :
$$xa+(x^2 b+a^2 y)i=x+yi\ \Longleftrightarrow\ \begin{cases}xa=x\\ x^2 b+a^2 y=y\end{cases}$$
pour tout $(x,y)$. La première égalité donne $a=1$ ; en reportant, $x^2 b+y=y$ pour tout $x$, donc $b=0$. Ainsi $\boxed{e=1}$, et par commutativité c'est bien le neutre des deux côtés.

**1.d) Symétrique.** Soit $z=x+yi$ avec $x>0$ (donc $x\neq 0$). Posons $z'=\dfrac{1}{x}-\dfrac{y}{x^4}i$, c'est-à-dire $a=\dfrac{1}{x}$ et $b=-\dfrac{y}{x^4}$. Alors
$$z*z'=x\cdot\frac1x+\Big(x^2\big(-\tfrac{y}{x^4}\big)+\tfrac{1}{x^2}\,y\Big)i=1+\Big(-\tfrac{y}{x^2}+\tfrac{y}{x^2}\Big)i=1=e.$$
Donc $z'=\dfrac{1}{x}-\dfrac{y}{x^4}i$ est le **symétrique** de $z$ pour $*$.

**2)** $E=\{x+yi\ /\ x>0,\ y\in\mathbb{R}\}$.

**2.a) Stabilité.** Pour $z=x+yi$ et $z'=a+bi$ dans $E$ (donc $x>0$ et $a>0$), $z*z'=xa+(x^2 b+a^2 y)i$. Sa partie réelle $xa>0$ et sa partie imaginaire est réelle, donc $z*z'\in E$. $E$ est **stable** par $*$.

**2.b) $(E,*)$ groupe commutatif.** La loi $*$ est interne sur $E$ (2.a), associative et commutative (1.a, 1.b). Le neutre $e=1$ appartient à $E$ (car $1>0$). Enfin, pour $z=x+yi\in E$, son symétrique $\dfrac{1}{x}-\dfrac{y}{x^4}i$ a une partie réelle $\dfrac{1}{x}>0$, donc appartient à $E$. Ainsi $(E,*)$ est un **groupe commutatif**.

**3) $G$ sous-groupe.** $G=\{1+yi\ /\ y\in\mathbb{R}\}$. Tout élément de $G$ a sa partie réelle égale à $1>0$, donc $G\subset E$ et $G\neq\varnothing$ (il contient $e=1$). Soient $z=1+yi$ et $z'=1+y'i$ dans $G$. Le symétrique de $z'$ est $\dfrac{1}{1}-\dfrac{y'}{1}i=1-y'i$. Alors
$$z*\text{sym}(z')=(1+yi)*(1-y'i)=1\cdot 1+\big(1^2(-y')+1^2 y\big)i=1+(y-y')i\in G.$$
Le critère du sous-groupe est vérifié : $G$ est un **sous-groupe** de $(E,*)$.

**4)** $F=\left\{M(x,y)=\begin{pmatrix}x&y\\0&x\end{pmatrix}\ /\ x>0,\ y\in\mathbb{R}\right\}$.

**4.a) Stabilité de $F$ par $\times$.** Pour $M(x,y)$ et $M(a,b)$ de $F$ :
$$M(x,y)\times M(a,b)=\begin{pmatrix}x&y\\0&x\end{pmatrix}\begin{pmatrix}a&b\\0&a\end{pmatrix}=\begin{pmatrix}xa&xb+ya\\0&xa\end{pmatrix}=M(xa,\ xb+ya).$$
Comme $xa>0$ et $xb+ya\in\mathbb{R}$, ce produit appartient à $F$. Donc $F$ est **stable** par $\times$.

**4.b) $\varphi$ isomorphisme.** $\varphi:E\to F$, $x+yi\mapsto M(x^2,y)$.

*Morphisme.* Soient $z=x+yi$ et $z'=a+bi$ de $E$. On a $z*z'=xa+(x^2 b+a^2 y)i$, donc
$$\varphi(z*z')=M\big((xa)^2,\ x^2 b+a^2 y\big)=\begin{pmatrix}x^2 a^2 & x^2 b+a^2 y\\0& x^2 a^2\end{pmatrix}.$$
D'autre part,
$$\varphi(z)\times\varphi(z')=M(x^2,y)\times M(a^2,b)=M\big(x^2 a^2,\ x^2 b+a^2 y\big),$$
en utilisant le calcul de 4.a. Les deux sont égaux : $\varphi(z*z')=\varphi(z)\times\varphi(z')$.

*Bijection.* Soit $M(a,b)\in F$ (avec $a>0$). On cherche $z=x+yi\in E$ tel que $\varphi(z)=M(a,b)$, soit $x^2=a$ et $y=b$. Comme $a>0$, l'unique solution est $x=\sqrt{a}>0$, $y=b$. Donc $\varphi$ est **bijective**.

Étant un morphisme bijectif, $\varphi$ est un **isomorphisme** de $(E,*)$ vers $(F,\times)$.

**4.c)** $(E,*)$ est un groupe commutatif et $\varphi$ est un isomorphisme de $(E,*)$ vers $(F,\times)$ : l'image d'un groupe commutatif par un isomorphisme est un groupe commutatif. Donc $(F,\times)$ est un **groupe commutatif**.

<div class="my-5 rounded-lg px-4 py-2.5 text-white font-bold" style="background:#1F4E79">Exercice 2 — Nombres complexes <span class="font-normal text-white/80 text-sm">(3,5 points)</span></div>

$m\in\mathbb{C}-\mathbb{R}$. Équation $(E):z^2-(1+i)(1+m)z+2im=0$.

**I-1.a) Discriminant non nul.**
$$\Delta=(1+i)^2(1+m)^2-4\cdot 2im=(1+i)^2(1+m)^2-8im.$$
Or $(1+i)^2=2i$, donc $8im=4\cdot 2i\,m=(1+i)^2\cdot 4m$. Ainsi
$$\Delta=(1+i)^2\big[(1+m)^2-4m\big]=(1+i)^2(m-1)^2.$$
Si l'on avait $\Delta=0$, alors $(m-1)^2=0$ (car $(1+i)^2\neq 0$), d'où $m=1\in\mathbb{R}$, ce qui contredit $m\in\mathbb{C}-\mathbb{R}$. Donc $\boxed{\Delta\neq 0}$.

**I-1.b) Solutions.** Une racine carrée de $\Delta$ est $\delta=(1+i)(m-1)$. Les solutions sont
$$z_1=\frac{(1+i)(1+m)+(1+i)(m-1)}{2}=\frac{(1+i)\cdot 2m}{2}=(1+i)m,$$
$$z_2=\frac{(1+i)(1+m)-(1+i)(m-1)}{2}=\frac{(1+i)\cdot 2}{2}=1+i.$$
Donc $\boxed{z_1=(1+i)m,\quad z_2=1+i}$.

**I-2.a) Module et argument de $z_1+z_2$.** Avec $m=e^{i\theta}$ :
$$z_1+z_2=(1+i)(1+m)=(1+i)\big(1+e^{i\theta}\big).$$
Par la factorisation par l'angle moitié, $1+e^{i\theta}=e^{i\theta/2}\big(e^{-i\theta/2}+e^{i\theta/2}\big)=2\cos\!\frac{\theta}{2}\,e^{i\theta/2}$, avec $\cos\frac{\theta}{2}>0$ car $0<\theta<\pi$. De plus $1+i=\sqrt{2}\,e^{i\pi/4}$. Donc
$$z_1+z_2=\sqrt2\,e^{i\pi/4}\cdot 2\cos\tfrac{\theta}{2}\,e^{i\theta/2}=2\sqrt2\,\cos\tfrac{\theta}{2}\;e^{i\left(\frac{\pi}{4}+\frac{\theta}{2}\right)}.$$
D'où
$$\boxed{|z_1+z_2|=2\sqrt2\,\cos\tfrac{\theta}{2}},\qquad \arg(z_1+z_2)\equiv\frac{\pi}{4}+\frac{\theta}{2}\ [2\pi].$$

**I-2.b)** On a $z_1 z_2=(1+i)m\cdot(1+i)=(1+i)^2 m=2im$. Si $z_1 z_2\in\mathbb{R}$, alors $2im\in\mathbb{R}$, donc $m\in i\mathbb{R}$ (imaginaire pur) : $m=ix$ avec $x\in\mathbb{R}$. Comme $m=e^{i\theta}$, $|m|=1$ donne $|x|=1$, et $\theta\in\,]0,\pi[$ impose une partie imaginaire positive, donc $x>0$, d'où $x=1$ et $m=i$. Alors
$$z_1+z_2=(1+i)(1+m)=(1+i)(1+i)=(1+i)^2=2i.$$
Donc $\boxed{z_1+z_2=2i}$.

**II-1.a) Affixe de $\Omega$.** $D$ est l'image de $B$ par la rotation de centre $O$ et d'angle $\frac{\pi}{2}$, donc son affixe est $d=e^{i\pi/2}\,b=i\,b=i(1+i)m=(i-1)m$. Comme $\Omega$ est le milieu de $[CD]$,
$$\omega=\frac{c+d}{2}=\frac{(1-i)+(i-1)m}{2}=\frac{(1-i)-(1-i)m}{2}=\frac{(1-i)(1-m)}{2}.$$
Donc $\boxed{\omega=\dfrac{(1-i)(1-m)}{2}}$.

**II-1.b)** $b-a=(1+i)m-(1+i)=(1+i)(m-1)$. Donc
$$\frac{b-a}{\omega}=\frac{(1+i)(m-1)}{\frac{(1-i)(1-m)}{2}}=\frac{2(1+i)(m-1)}{(1-i)(1-m)}=\frac{2(1+i)(m-1)}{-(1-i)(m-1)}=\frac{-2(1+i)}{1-i}.$$
En multipliant haut et bas par $1+i$ : $\dfrac{-2(1+i)^2}{(1-i)(1+i)}=\dfrac{-2\cdot 2i}{2}=-2i$. Donc $\boxed{\dfrac{b-a}{\omega}=-2i}$ (et $\omega\neq 0$ car $m\neq 1$).

**II-1.c)** $\dfrac{b-a}{\omega}=-2i$ est un imaginaire pur. L'affixe de $\vec{AB}$ est $b-a$ et celle de $\vec{O\Omega}$ est $\omega$. Comme le quotient est imaginaire pur, $\arg\!\dfrac{b-a}{\omega}\equiv\frac{\pi}{2}\ [\pi]$, ce qui signifie $(O\Omega)\perp(AB)$. De plus le module donne $\dfrac{AB}{O\Omega}=|-2i|=2$, donc $\boxed{(O\Omega)\perp(AB)\ \text{et}\ AB=2\,O\Omega}$.

**II-2.a)** $H\in(AB)$ : les points $A$, $B$, $H$ sont alignés, donc $\dfrac{h-a}{b-a}\in\mathbb{R}$ (le quotient est réel). $H\in(O\Omega)$, et comme $(O\Omega)\perp(AB)$ avec direction de $(AB)$ donnée par $b-a$, la condition d'appartenance à la droite $(O\Omega)$ passant par $O$ se traduit par $\dfrac{h}{b-a}$ **imaginaire pur** (vecteur $\vec{OH}$ orthogonal à $\vec{AB}$). Donc $\dfrac{h-a}{b-a}\in\mathbb{R}$ et $\dfrac{h}{b-a}\in i\mathbb{R}$.

**II-2.b)** Posons $\dfrac{h-a}{b-a}=k$ réel, soit $h=a+k(b-a)$, donc $\dfrac{h}{b-a}=\dfrac{a}{b-a}+k$. Pour que ce soit imaginaire pur, il faut $k=-\operatorname{Re}\!\Big(\dfrac{a}{b-a}\Big)$. Avec $a=1+i$ et $b-a=(1+i)(m-1)$, on a $\dfrac{a}{b-a}=\dfrac{1}{m-1}$, dont la partie réelle vaut $\dfrac{1}{2}\Big(\dfrac{1}{m-1}+\dfrac{1}{\bar m-1}\Big)$. En reportant et en simplifiant, on obtient
$$\boxed{h=\frac{1+i}{2}\cdot\frac{\bar m-m}{\bar m-1}}.$$
(On utilise $m\neq 1$ et $\bar m\neq 1$ car $m\notin\mathbb{R}$.)

<div class="my-5 rounded-lg px-4 py-2.5 text-white font-bold" style="background:#1F4E79">Exercice 3 — Arithmétique <span class="font-normal text-white/80 text-sm">(3 points)</span></div>

$p=2969$ premier ; $n,m\in\mathbb{N}$ avec $n^8+m^8\equiv 0\ [2969]$.

**1)** On suppose $2969\nmid n$.

**1.a)** $2969$ étant premier et ne divisant pas $n$, on a $\gcd(2969,n)=1$. D'après le théorème de Bézout, il existe $(u,v)\in\mathbb{Z}^2$ tel que $2969\,v+n\,u=1$, c'est-à-dire $\boxed{u\,n\equiv 1\ [2969]}$.

**1.b)** De $n^8+m^8\equiv 0$ on tire $m^8\equiv -n^8\ [2969]$. En multipliant par $u^8$ :
$$(u\,m)^8=u^8 m^8\equiv -u^8 n^8=-(u\,n)^8\equiv -1^8=-1\ [2969].$$
Donc $\boxed{(u\,m)^8\equiv -1\ [2969]}$. En élevant à la puissance $371$ (et $2968=8\times 371$) :
$$(u\,m)^{2968}=\big((u\,m)^8\big)^{371}\equiv(-1)^{371}=-1\ [2969].$$

**1.c)** Si $2969\mid u\,m$, alors $(u\,m)^8\equiv 0\ [2969]$, ce qui contredit $(u\,m)^8\equiv -1\ [2969]$. Donc $2969\nmid u\,m$, et comme $2969$ est premier, $\gcd(2969,u\,m)=1$.

**1.d)** $2969$ est premier et ne divise pas $u\,m$ : d'après le **petit théorème de Fermat**, $(u\,m)^{2968}=(u\,m)^{2969-1}\equiv 1\ [2969]$.

**2.a)** On a obtenu à la fois $(u\,m)^{2968}\equiv -1$ (1.b) et $(u\,m)^{2968}\equiv 1$ (1.d). Donc $1\equiv -1\ [2969]$, soit $2969\mid 2$, ce qui est absurde. L'hypothèse « $2969\nmid n$ » est donc fausse : $\boxed{2969\mid n}$.

**2.b)** ($\Leftarrow$) Si $n\equiv 0$ et $m\equiv 0\ [2969]$, alors $n^8\equiv 0$ et $m^8\equiv 0$, donc $n^8+m^8\equiv 0\ [2969]$.

($\Rightarrow$) Supposons $n^8+m^8\equiv 0\ [2969]$. D'après 2.a, $2969\mid n$, donc $n\equiv 0\ [2969]$. Le rôle de $n$ et $m$ étant symétrique dans l'égalité $n^8+m^8\equiv 0$, le même raisonnement (en supposant $2969\nmid m$) conduit à une absurdité, donc $2969\mid m$, soit $m\equiv 0\ [2969]$. D'où
$$\boxed{n^8+m^8\equiv 0\ [2969]\ \Longleftrightarrow\ n\equiv 0\ [2969]\ \text{et}\ m\equiv 0\ [2969]}.$$

<div class="my-5 rounded-lg px-4 py-2.5 text-white font-bold" style="background:#1F4E79">Exercice 4 — Analyse <span class="font-normal text-white/80 text-sm">(10 points)</span></div>

**Partie I.** $f(x)=4x\left(e^{-x}+\dfrac{1}{2}x-1\right)=4x\,e^{-x}+2x^2-4x$.

**1) Limites.**

En $+\infty$ : $4x\,e^{-x}\to 0$ (croissances comparées) et $2x^2-4x\to+\infty$, donc $\boxed{\lim\limits_{x\to+\infty}f(x)=+\infty}$.

En $-\infty$ : écrivons $f(x)=4\,x\,e^{-x}+2x^2-4x$. Le terme dominant est $4x\,e^{-x}$ qui tend vers $-\infty$ (car $x\to-\infty$ et $e^{-x}\to+\infty$, produit d'un facteur très négatif). Plus précisément $f(x)=4x\big(e^{-x}+\frac{x}{2}-1\big)$ et $e^{-x}+\frac{x}{2}-1\to+\infty$, multiplié par $4x\to-\infty$, d'où $\boxed{\lim\limits_{x\to-\infty}f(x)=-\infty}$.

**2.a) Dérivée.** $f$ est dérivable sur $\mathbb{R}$ (produit et somme de fonctions dérivables). En dérivant $f(x)=4x e^{-x}+2x^2-4x$ :
$$f'(x)=4e^{-x}-4x e^{-x}+4x-4=4e^{-x}(1-x)+4(x-1)=4(1-x)\big(e^{-x}-1\big).$$
Donc $\boxed{f'(x)=4\big(e^{-x}-1\big)(1-x)}$.

**2.b) Variations.** Signe des facteurs :
- $e^{-x}-1>0\Leftrightarrow x<0$ ;
- $1-x>0\Leftrightarrow x<1$.

| $x$ | $-\infty$ | | $0$ | | $1$ | | $+\infty$ |
|---|---|---|---|---|---|---|---|
| $e^{-x}-1$ | | $+$ | $0$ | $-$ | | $-$ | |
| $1-x$ | | $+$ | | $+$ | $0$ | $-$ | |
| $f'(x)$ | | $+$ | $0$ | $-$ | $0$ | $+$ | |

Donc $f$ est **croissante** sur $]-\infty,0]$, **décroissante** sur $[0,1]$, **croissante** sur $[1,+\infty[$. On a $f(0)=0$ (maximum local) et $f(1)=4(e^{-1}+\frac12-1)=4e^{-1}-2\approx -0{,}53$ (minimum local).

Tableau de variations : de $-\infty$ jusqu'à $f(0)=0$, puis redescente jusqu'à $f(1)\approx -0{,}5$, puis remontée vers $+\infty$.

**2.c) Existence et unicité de $\alpha$.** Sur $\left]\frac32,2\right[$, on a $\frac32>1$ donc $f$ y est continue et strictement croissante (intervalle inclus dans $[1,+\infty[$). Calculons les bornes :
$$f\!\left(\tfrac32\right)=4\cdot\tfrac32\Big(e^{-3/2}+\tfrac34-1\Big)=6\Big(\tfrac{1}{e^{3/2}}-\tfrac14\Big)=6\Big(\tfrac{1}{4{,}5}-\tfrac14\Big)<0,$$
$$f(2)=8\big(e^{-2}+1-1\big)=8e^{-2}>0.$$
Donc $0\in\big]f(\tfrac32),f(2)\big[$. Par le théorème des valeurs intermédiaires (bijection continue strictement croissante), il existe un **unique** $\alpha\in\left]\frac32,2\right[$ tel que $\boxed{f(\alpha)=0}$.

**2.d)** $f(\alpha)=0$ avec $\alpha\neq 0$ :
$$4\alpha\Big(e^{-\alpha}+\tfrac{\alpha}{2}-1\Big)=0\ \Longrightarrow\ e^{-\alpha}+\tfrac{\alpha}{2}-1=0\ \Longrightarrow\ \boxed{e^{-\alpha}=1-\tfrac{\alpha}{2}}.$$

**3.a) Théorème de Rolle.** $f'(x)=4(e^{-x}-1)(1-x)$ est continue sur $[0,1]$ et dérivable sur $]0,1[$. De plus $f'(0)=0$ (facteur $e^{-x}-1$ nul) et $f'(1)=0$ (facteur $1-x$ nul), donc $f'(0)=f'(1)$. D'après le théorème de Rolle appliqué à $f'$, il existe $x_0\in\,]0,1[$ tel que $\boxed{f''(x_0)=0}$.

**3.b) T.A.F. appliqué à $f''$.** Calculons $f''$. De $f'(x)=4(e^{-x}-1)(1-x)$ on obtient
$$f''(x)=4\big[-e^{-x}(1-x)+(e^{-x}-1)(-1)\big]=4\big[-e^{-x}+x e^{-x}-e^{-x}+1\big]=4\big[(x-2)e^{-x}+1\big].$$
$f''$ est continue et dérivable sur $[0,1]$. Soit $x\in[0,1]$, $x\neq x_0$. Le T.A.F. entre $x_0$ et $x$ donne un réel $c$ strictement compris entre eux tel que
$$\frac{f''(x)-f''(x_0)}{x-x_0}=f^{(3)}(c).$$
Comme $f''(x_0)=0$, ceci s'écrit $\dfrac{f''(x)}{x-x_0}=f^{(3)}(c)$. Or $f^{(3)}(x)=4\big[e^{-x}-(x-2)e^{-x}\big]=4(3-x)e^{-x}$, qui est strictement positif pour $c\in[0,1]\subset]-\infty,3[$. Donc $\boxed{\dfrac{f''(x)}{x-x_0}>0}$ pour tout $x\in[0,1]$, $x\neq x_0$.

**3.c) Point d'inflexion.** Le résultat de 3.b montre que $f''(x)$ a le signe de $x-x_0$ : $f''<0$ avant $x_0$ et $f''>0$ après. $f''$ s'annule en $x_0$ en **changeant de signe**, donc $I(x_0,f(x_0))$ est un **point d'inflexion** de $(C)$.

**4.a) Branches infinies.**

En $-\infty$ : $f(x)\to-\infty$ et $\dfrac{f(x)}{x}=4\Big(e^{-x}+\dfrac{x}{2}-1\Big)\to+\infty$. La courbe admet une **branche parabolique de direction $(Oy)$**.

En $+\infty$ : $f(x)\to+\infty$ et $\dfrac{f(x)}{x}=4\Big(e^{-x}+\dfrac{x}{2}-1\Big)\to+\infty$. La courbe admet également une **branche parabolique de direction $(Oy)$**.

**4.b) Tracé.** Points repères : $f(0)=0$ (la courbe passe par l'origine, tangente horizontale, maximum local), $f(1)=-0{,}5$ (minimum local), $f(\alpha)=0$ avec $\alpha\in\left]\frac32,2\right[$. La courbe descend depuis $-\infty$, atteint $0$ en $x=0$, redescend à $-0{,}5$ en $x=1$, repasse par l'axe en $\alpha$, puis monte vers $+\infty$.

[figure : courbe $(C)$ de $f$, avec branches paraboliques de direction $(Oy)$ aux deux extrémités, passage par $O$, minimum $\approx(1,-0{,}5)$, zéro en $\alpha\in\,]\tfrac32,2[$]

**5.a)** Sur $]-\infty,0]$, $f$ croît de $-\infty$ à $f(0)=0$, donc $f\le 0$. Sur $[0,\alpha]$, $f(0)=0$, $f$ décroît puis croît mais reste sous l'axe jusqu'à son prochain zéro $\alpha$, donc $f\le 0$. Ainsi $\boxed{(\forall x\in\,]-\infty,\alpha])\ f(x)\le 0}$.

**5.b) Intégrale.**
$$\int_0^\alpha f(x)\,\mathrm{d}x=\int_0^\alpha\big(4x e^{-x}+2x^2-4x\big)\,\mathrm{d}x.$$
Par intégration par parties, $\displaystyle\int_0^\alpha 4x e^{-x}\,\mathrm{d}x=\big[-4x e^{-x}\big]_0^\alpha+\int_0^\alpha 4e^{-x}\,\mathrm{d}x=-4\alpha e^{-\alpha}+\big[-4e^{-x}\big]_0^\alpha=-4\alpha e^{-\alpha}-4e^{-\alpha}+4.$
Et $\displaystyle\int_0^\alpha(2x^2-4x)\,\mathrm{d}x=\frac{2}{3}\alpha^3-2\alpha^2$. Donc
$$\int_0^\alpha f(x)\,\mathrm{d}x=4-4e^{-\alpha}(\alpha+1)+\frac{2}{3}\alpha^3-2\alpha^2.$$
On remplace $e^{-\alpha}=1-\dfrac{\alpha}{2}$ (question 2.d) :
$$-4(\alpha+1)\Big(1-\tfrac{\alpha}{2}\Big)=-4\Big(\alpha+1-\tfrac{\alpha^2}{2}-\tfrac{\alpha}{2}\Big)=2\alpha^2-2\alpha-4.$$
D'où
$$\int_0^\alpha f(x)\,\mathrm{d}x=4+(2\alpha^2-2\alpha-4)+\frac{2}{3}\alpha^3-2\alpha^2=\frac{2}{3}\alpha^3-2\alpha=\frac{2}{3}\alpha\big(\alpha^2-3\big).$$
Donc $\boxed{\displaystyle\int_0^\alpha f(x)\,\mathrm{d}x=\frac{2}{3}\alpha(\alpha^2-3)}$.

D'après 5.a, $f\le 0$ sur $[0,\alpha]$, donc $\displaystyle\int_0^\alpha f(x)\,\mathrm{d}x\le 0$, soit $\frac{2}{3}\alpha(\alpha^2-3)\le 0$. Comme $\alpha>0$, cela donne $\alpha^2-3\le 0$, c'est-à-dire $|\alpha|\le\sqrt3$, donc $\alpha\le\sqrt3$. Avec $\alpha>\frac32$, on obtient $\boxed{\dfrac{3}{2}<\alpha\le\sqrt3}$.

**5.c) Aire.** Sur $[0,\alpha]$, $f\le 0$, donc l'aire (en unités d'aire) vaut
$$\mathcal{A}=\int_0^\alpha\big(-f(x)\big)\,\mathrm{d}x=-\frac{2}{3}\alpha(\alpha^2-3)=\frac{2}{3}\alpha(3-\alpha^2).$$
L'unité de longueur étant $1\,\text{cm}$ sur chaque axe, $1$ u.a. $=1\,\text{cm}^2$, donc
$$\boxed{\mathcal{A}=\frac{2}{3}\alpha\big(3-\alpha^2\big)\ \text{cm}^2}.$$

**Partie II.** $u_0<\alpha$ et $u_{n+1}=f(u_n)+u_n$.

**1.a) Récurrence $u_n<\alpha$.** Initialisation : $u_0<\alpha$ (donnée). Hérédité : supposons $u_n<\alpha$. Alors $u_n\in\,]-\infty,\alpha[$, donc d'après la question 5.a) $f(u_n)\le 0$, d'où $u_{n+1}=f(u_n)+u_n\le u_n<\alpha$. Donc $\boxed{(\forall n\in\mathbb{N})\ u_n<\alpha}$.

**1.b) Décroissance.** $u_{n+1}-u_n=f(u_n)$. Comme $u_n<\alpha$, on a $f(u_n)\le 0$ (5.a), donc $u_{n+1}-u_n\le 0$ : la suite $(u_n)$ est **décroissante**.

**2)** On suppose $0\le u_0$ ; $g(x)=e^{-x}+\dfrac{1}{2}x-\dfrac{3}{4}$.

**2.a) $g>0$.** $g'(x)=-e^{-x}+\dfrac{1}{2}$, qui s'annule en $e^{-x}=\frac12$, soit $x=\ln 2>0$. $g'<0$ avant $\ln 2$, $g'>0$ après : $g$ admet un minimum en $\ln 2$. Or
$$g(\ln 2)=e^{-\ln 2}+\frac{\ln 2}{2}-\frac{3}{4}=\frac12+\frac{\ln 2}{2}-\frac34=\frac{\ln 2}{2}-\frac14=\frac{\ln 2 - \tfrac12}{2}.$$
Avec $\ln 2=0{,}69>\frac12$, ce minimum est $>0$. Donc $\boxed{(\forall x\in\mathbb{R})\ g(x)>0}$.

**2.b) $u_n\ge 0$ par récurrence.** On remarque que $f(x)+x=4x\,g(x)$ (vérification directe : $4x g(x)=4x\big(e^{-x}+\frac{x}{2}-\frac34\big)=4x e^{-x}+2x^2-3x$, et $f(x)+x=4x e^{-x}+2x^2-4x+x=4x e^{-x}+2x^2-3x$, égalité confirmée). Donc $u_{n+1}=f(u_n)+u_n=4u_n\,g(u_n)$.

Initialisation : $u_0\ge 0$. Hérédité : si $u_n\ge 0$, alors comme $g(u_n)>0$, on a $u_{n+1}=4u_n g(u_n)\ge 0$. Donc $\boxed{(\forall n\in\mathbb{N})\ u_n\ge 0}$.

**2.c) Convergence.** $(u_n)$ est décroissante (1.b) et minorée par $0$ (2.b), donc elle **converge**.

**2.d) Limite.** $u_{n+1}=h(u_n)$ avec $h(x)=f(x)+x$, continue sur $\mathbb{R}$. Pour tout $n$, $0\le u_n<\alpha$. Si $\ell=\lim u_n$, alors $\ell\in[0,\alpha]$ et le passage à la limite donne $\ell=f(\ell)+\ell$, soit $f(\ell)=0$. Sur $[0,\alpha]$, le seul zéro de $f$ est $0$ (puisque $\alpha$ est exclu par $u_n<\alpha$ ; sur $[0,\alpha[$, $f<0$ sauf en $0$). Donc $\boxed{\lim\limits_{n\to+\infty}u_n=0}$.

**3)** On suppose $u_0<0$.

**3.a)** $u_{n+1}-u_n=f(u_n)$. La suite est décroissante (1.b) avec $u_0<0$, donc $u_n\le u_0<0$ pour tout $n$. Comme $f$ est croissante sur $]-\infty,0]$ (variations Partie I), $u_n\le u_0$ entraîne $f(u_n)\le f(u_0)$. Donc $\boxed{u_{n+1}-u_n\le f(u_0)}$.

**3.b) Récurrence.** Montrons $u_n\le u_0+n\,f(u_0)$. Pour $n=0$ : $u_0\le u_0$. Hérédité : si $u_n\le u_0+n f(u_0)$, alors avec 3.a, $u_{n+1}\le u_n+f(u_0)\le u_0+n f(u_0)+f(u_0)=u_0+(n+1)f(u_0)$. Donc $\boxed{(\forall n\in\mathbb{N})\ u_n\le u_0+n\,f(u_0)}$.

**3.c)** Comme $u_0<0<\alpha$, $u_0\in\,]-\infty,\alpha[$ donc $f(u_0)\le 0$ ; en fait $f(u_0)<0$ car $u_0\neq 0$ (et $f<0$ sur $]-\infty,0[$, $f$ croissante avec $f(0)=0$). Alors $u_0+n f(u_0)\to-\infty$, et par comparaison $u_n\le u_0+n f(u_0)$ donne $\boxed{\lim\limits_{n\to+\infty}u_n=-\infty}$.
