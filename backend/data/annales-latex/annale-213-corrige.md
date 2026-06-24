<div class="my-5 rounded-lg px-4 py-2.5 text-white font-bold" style="background:#1F4E79">Exercice 1 — Analyse <span class="font-normal text-white/80 text-sm">(7,75 points)</span></div>

$f(0)=0$ et $f(x)=\dfrac{x^2\ln x}{x^2+1}$ sur $]0,+\infty[$. On pose $\varphi(x)=x^2+1+2\ln x$.

\textbf{Partie I}

**1.a)** *Continuité à droite en $0$.*

Quand $x\to0^+$ : $x^2\ln x\to0$ (croissances comparées) et $x^2+1\to1$, donc
$$\lim_{x\to0^+}f(x)=\frac{0}{1}=0=f(0).$$
Donc $f$ est continue à droite en $0$.

**1.b)** *Dérivabilité à droite en $0$.*

$$\frac{f(x)-f(0)}{x-0}=\frac{1}{x}\cdot\frac{x^2\ln x}{x^2+1}=\frac{x\ln x}{x^2+1}\xrightarrow[x\to0^+]{}\frac{0}{1}=0.$$
Donc $f$ est dérivable à droite en $0$ et $f'_d(0)=0$. Géométriquement, $(C)$ admet au point $O$ une demi-tangente horizontale (dirigée par $\vec i$).

**1.c)** *Limites en $+\infty$.*

$$f(x)=\frac{x^2\ln x}{x^2+1}=\frac{\ln x}{1+\frac{1}{x^2}}\xrightarrow[x\to+\infty]{}+\infty,\qquad
\frac{f(x)}{x}=\frac{x\ln x}{x^2+1}=\frac{\frac{\ln x}{x}}{1+\frac1{x^2}}\xrightarrow[x\to+\infty]{}0.$$
Donc $(C)$ admet une branche parabolique de direction l'axe des abscisses $(Ox)$ au voisinage de $+\infty$.

**2.a)** *Tableau de variations de $\varphi$.*

$\varphi$ est dérivable sur $]0,+\infty[$ et
$$\varphi'(x)=2x+\frac{2}{x}=\frac{2(x^2+1)}{x}>0.$$
Donc $\varphi$ est strictement croissante. Avec $\lim\limits_{0^+}\varphi=-\infty$ et $\lim\limits_{+\infty}\varphi=+\infty$ :

[figure : tableau — $\varphi$ strictement croissante de $-\infty$ à $+\infty$ sur $]0,+\infty[$]

**2.b)** *Existence et unicité de $\beta$.*

$\varphi$ est continue et strictement croissante sur $]0,+\infty[$ et change de signe, donc $\varphi(x)=0$ admet une unique solution $\beta\in\,]0,+\infty[$. De plus :
$$\varphi\!\left(\tfrac12\right)=\tfrac14+1+2\ln\tfrac12=\tfrac54-2\ln 2\simeq1{,}25-1{,}4=-0{,}15<0,$$
$$\varphi\!\left(\tfrac1{\sqrt3}\right)=\tfrac13+1+2\ln\tfrac1{\sqrt3}=\tfrac43-\ln 3\simeq1{,}33-1{,}1=0{,}23>0.$$
Comme $\varphi$ est strictement croissante, on en déduit $\beta\in\left]\dfrac12,\dfrac1{\sqrt3}\right[$.

**2.c)** *Calcul de $f(\beta)$.*

$\varphi(\beta)=0\Rightarrow \beta^2+1+2\ln\beta=0\Rightarrow \ln\beta=-\dfrac{\beta^2+1}{2}$. Donc
$$f(\beta)=\frac{\beta^2\ln\beta}{\beta^2+1}=\frac{\beta^2\cdot\left(-\frac{\beta^2+1}{2}\right)}{\beta^2+1}=\boxed{-\frac{\beta^2}{2}}.$$

**3.a)** *Dérivée de $f$.*

$f$ est dérivable sur $]0,+\infty[$ (quotient de fonctions dérivables, dénominateur non nul). Avec $u=x^2\ln x$, $u'=2x\ln x+x$ et $v=x^2+1$, $v'=2x$ :
$$f'(x)=\frac{(2x\ln x+x)(x^2+1)-x^2\ln x\cdot 2x}{(x^2+1)^2}.$$
Le numérateur vaut $2x^3\ln x+2x\ln x+x^3+x-2x^3\ln x=x\,(2\ln x+x^2+1)=x\,\varphi(x)$. D'où
$$\boxed{f'(x)=\frac{x\,\varphi(x)}{(x^2+1)^2}}.$$

**3.b)** *Tableau de variations de $f$.*

Sur $]0,+\infty[$, le signe de $f'(x)$ est celui de $\varphi(x)$ (car $x>0$). Ainsi $f'<0$ sur $]0,\beta[$ et $f'>0$ sur $]\beta,+\infty[$ : $f$ est strictement décroissante sur $[0,\beta]$, strictement croissante sur $[\beta,+\infty[$, avec minimum $f(\beta)=-\dfrac{\beta^2}{2}<0$, $f(0)=0$ et $\lim\limits_{+\infty}f=+\infty$.

[figure : tableau — $f$ décroît de $0$ à $-\beta^2/2$ sur $[0,\beta]$, puis croît jusqu'à $+\infty$]

**3.c)** *$\dfrac1\beta$ est l'unique solution de $f(x)=\dfrac12$ sur $]\beta,+\infty[$.*

De $\ln\beta=-\dfrac{\beta^2+1}{2}$ on tire $\ln\dfrac1\beta=\dfrac{\beta^2+1}{2}$. Alors
$$f\!\left(\frac1\beta\right)=\frac{\frac1{\beta^2}\ln\frac1\beta}{\frac1{\beta^2}+1}=\frac{\frac1{\beta^2}\cdot\frac{\beta^2+1}{2}}{\frac{1+\beta^2}{\beta^2}}=\frac{\frac{\beta^2+1}{2\beta^2}}{\frac{1+\beta^2}{\beta^2}}=\frac12.$$
Comme $\dfrac1\beta>1>\dfrac1{\sqrt3}>\beta$, le réel $\dfrac1\beta$ est dans $]\beta,+\infty[$, où $f$ est strictement croissante : c'est donc l'unique solution de $f(x)=\dfrac12$ sur cet intervalle.

**3.d)** *Tangente au point d'abscisse $\dfrac1\beta$.*

On a $f\!\left(\frac1\beta\right)=\frac12$. Par ailleurs
$$\varphi\!\left(\frac1\beta\right)=\frac1{\beta^2}+1+2\ln\frac1\beta=\frac1{\beta^2}+1+(\beta^2+1)=\frac1{\beta^2}+\beta^2+2=\frac{(1+\beta^2)^2}{\beta^2}.$$
Donc
$$f'\!\left(\frac1\beta\right)=\frac{\frac1\beta\cdot\frac{(1+\beta^2)^2}{\beta^2}}{\left(\frac{1+\beta^2}{\beta^2}\right)^2}=\frac{\frac{(1+\beta^2)^2}{\beta^3}}{\frac{(1+\beta^2)^2}{\beta^4}}=\beta.$$
La tangente est $y=f'\!\left(\frac1\beta\right)\left(x-\frac1\beta\right)+f\!\left(\frac1\beta\right)=\beta\left(x-\frac1\beta\right)+\frac12=\boxed{\beta x-\frac12}.$

**4)** *Tracé de $(C)$.*

$(C)$ passe par $O$ avec demi-tangente horizontale, atteint un minimum $\left(\beta,-\frac{\beta^2}{2}\right)$ (avec $\beta\approx0{,}55$, soit un minimum $\approx-0{,}15$), recoupe l'axe $(Ox)$ en $x=1$ (car $f(1)=0$), puis croît vers $+\infty$ avec branche parabolique de direction $(Ox)$. La droite $y=\beta x-\frac12$ est tangente au point d'abscisse $\frac1\beta$. On admet deux points d'inflexion.

[figure : courbe $(C)$ et sa tangente $y=\beta x-\frac12$ dans $(O,\vec i,\vec j)$]

\textbf{Partie II}

$J=\,]\sqrt3,2]$, $\alpha=\dfrac1\beta$, et $g(x)=\sqrt{e^{1+\frac1{x^2}}}=e^{\frac12+\frac1{2x^2}}$.

**1.a)** *Variations de $g$.*

$g$ est dérivable sur $]0,+\infty[$ et
$$g'(x)=g(x)\cdot\left(\frac12+\frac1{2x^2}\right)'=g(x)\cdot\left(-\frac1{x^3}\right)=-\frac{g(x)}{x^3}<0.$$
Donc $g$ est strictement décroissante sur $]0,+\infty[$.

**1.b)** *Encadrement de $g$ sur $J$.*

$g$ étant décroissante, pour $x\in\,]\sqrt3,2]$ : $g(2)\le g(x)<g(\sqrt3)$, avec
$$g(\sqrt3)=e^{\frac12+\frac16}=e^{2/3}\simeq1{,}95,\qquad g(2)=e^{\frac12+\frac18}=e^{5/8}\simeq1{,}87.$$
Comme $\sqrt3\simeq1{,}73<1{,}87=g(2)$ et $g(\sqrt3)\simeq1{,}95<2$, on a bien
$$\sqrt3<g(2)\le g(x)<g(\sqrt3)<2\quad\Longrightarrow\quad(\forall x\in J)\ \ \sqrt3<g(x)<2.$$

**2.a)** *$g(\alpha)=\alpha$.*

D'après I.3.c), $f(\alpha)=\dfrac12$ avec $\alpha=\dfrac1\beta>0$, soit $\dfrac{\alpha^2\ln\alpha}{\alpha^2+1}=\dfrac12$, d'où $2\alpha^2\ln\alpha=\alpha^2+1$ et
$$\ln\alpha=\frac{\alpha^2+1}{2\alpha^2}=\frac12+\frac1{2\alpha^2}\quad\Longrightarrow\quad \alpha=e^{\frac12+\frac1{2\alpha^2}}=g(\alpha).$$

**2.b)** *Majoration de $|g'|$ sur $J$.*

Pour $x\in J$ : $|g'(x)|=\dfrac{g(x)}{x^3}$. Or $g(x)<2$ (question 1.b) et $x>\sqrt3$ donc $x^3>3\sqrt3$. Ainsi
$$|g'(x)|=\frac{g(x)}{x^3}<\frac{2}{3\sqrt3}\quad\Longrightarrow\quad(\forall x\in J)\ \ |g'(x)|\le\frac{2}{3\sqrt3}.$$

**2.c)** *Inégalité des accroissements finis.*

$\alpha=g(\alpha)$ ; comme $\beta\in\left]\frac12,\frac1{\sqrt3}\right[$, on a $\alpha=\frac1\beta\in\,]\sqrt3,2[\subset J$. $g$ est dérivable sur $J$ avec $|g'|\le\frac2{3\sqrt3}$, donc par l'inégalité des accroissements finis, pour tout $x\in J$ :
$$|g(x)-\alpha|=|g(x)-g(\alpha)|\le\frac{2}{3\sqrt3}\,|x-\alpha|.$$

**3.a)** *$x_n\in J$ pour tout $n$.*

Par récurrence. $x_0=\dfrac74=1{,}75\in\,]\sqrt3,2]=J$ (car $\sqrt3\simeq1{,}73$). Si $x_n\in J$, alors d'après 1.b) $\sqrt3<g(x_n)<2$, donc $x_{n+1}=g(x_n)\in\,]\sqrt3,2[\subset J$. Donc $(\forall n\in\N)\ x_n\in J$.

**3.b)** *Récurrence sur l'inégalité.*

Pour $n=0$ : $|x_0-\alpha|\le\left(\frac2{3\sqrt3}\right)^0|x_0-\alpha|$, vrai (égalité). Supposons $|x_n-\alpha|\le\left(\frac2{3\sqrt3}\right)^n|x_0-\alpha|$. Comme $x_n\in J$, par 2.c) :
$$|x_{n+1}-\alpha|=|g(x_n)-\alpha|\le\frac2{3\sqrt3}|x_n-\alpha|\le\frac2{3\sqrt3}\left(\frac2{3\sqrt3}\right)^n|x_0-\alpha|=\left(\frac2{3\sqrt3}\right)^{n+1}|x_0-\alpha|.$$
D'où le résultat pour tout $n\in\N$.

**3.c)** *Convergence.*

$\dfrac{2}{3\sqrt3}=\dfrac{2}{3\sqrt3}\simeq0{,}385\in\,]0,1[$, donc $\left(\frac2{3\sqrt3}\right)^n\to0$, et par encadrement $|x_n-\alpha|\to0$. La suite $(x_n)$ converge vers $\alpha$.

<div class="my-5 rounded-lg px-4 py-2.5 text-white font-bold" style="background:#1F4E79">Exercice 2 — Analyse <span class="font-normal text-white/80 text-sm">(2,25 points)</span></div>

$u_n=\dfrac1n\displaystyle\sum_{k=1}^{n-1}\ln\!\left(\frac kn\right)$ pour $n\ge2$.

**1.a)** Pour $x\in\left[\frac kn,\frac{k+1}n\right]$, la fonction $\ln$ étant croissante sur $]0,+\infty[$ :
$$\ln\!\left(\frac kn\right)\le\ln(x)\le\ln\!\left(\frac{k+1}n\right).$$

**1.b)** On intègre cette double inégalité sur $\left[\frac kn,\frac{k+1}n\right]$, intervalle de longueur $\frac1n$ :
$$\frac1n\ln\!\left(\frac kn\right)\le\int_{\frac kn}^{\frac{k+1}n}\ln(x)\,\mathrm dx\le\frac1n\ln\!\left(\frac{k+1}n\right).$$

**2.a)** On somme la double inégalité de 1.b) pour $k$ de $1$ à $n-1$. Par la relation de Chasles, $\displaystyle\sum_{k=1}^{n-1}\int_{\frac kn}^{\frac{k+1}n}\ln(x)\,\mathrm dx=\int_{\frac1n}^{1}\ln(x)\,\mathrm dx$. À gauche : $\frac1n\sum_{k=1}^{n-1}\ln\!\left(\frac kn\right)$. À droite, le changement d'indice $j=k+1$ donne $\frac1n\sum_{j=2}^{n}\ln\!\left(\frac jn\right)$. D'où
$$\frac1n\sum_{k=1}^{n-1}\ln\!\left(\frac kn\right)\le\int_{\frac1n}^{1}\ln(x)\,\mathrm dx\le\frac1n\sum_{k=2}^{n}\ln\!\left(\frac kn\right).$$

**2.b)** Le membre de gauche est $u_n$. Pour le membre de droite, $\ln\!\left(\frac nn\right)=0$, donc
$$\frac1n\sum_{k=2}^{n}\ln\!\left(\frac kn\right)=\frac1n\sum_{k=1}^{n-1}\ln\!\left(\frac kn\right)-\frac1n\ln\!\left(\frac1n\right)=u_n-\frac1n\ln\!\left(\frac1n\right).$$
(On a retiré le terme $k=1$ et ajouté $k=n$ qui est nul.) D'où
$$u_n\le\int_{\frac1n}^{1}\ln(x)\,\mathrm dx\le u_n-\frac1n\ln\!\left(\frac1n\right).$$

**2.c)** Une primitive de $\ln$ est $x\mapsto x\ln x-x$ :
$$\int_{\frac1n}^{1}\ln(x)\,\mathrm dx=\big[x\ln x-x\big]_{\frac1n}^{1}=(0-1)-\left(\frac1n\ln\frac1n-\frac1n\right)=-1+\frac1n-\frac1n\ln\!\left(\frac1n\right).$$
De l'inégalité de gauche de 2.b) : $u_n\le-1+\frac1n-\frac1n\ln\!\left(\frac1n\right)$. De l'inégalité de droite : $\int\le u_n-\frac1n\ln\!\left(\frac1n\right)$, soit $u_n\ge\int+\frac1n\ln\!\left(\frac1n\right)=-1+\frac1n$. Donc
$$-1+\frac1n\le u_n\le-1+\frac1n-\frac1n\ln\!\left(\frac1n\right).$$

**2.d)** *Limite.* Quand $n\to+\infty$ : $\frac1n\to0$ et $-\frac1n\ln\frac1n=\frac{\ln n}{n}\to0$. Les deux bornes tendent vers $-1$, donc par encadrement
$$\boxed{\lim_{n\to+\infty}u_n=-1}.$$

<div class="my-5 rounded-lg px-4 py-2.5 text-white font-bold" style="background:#1F4E79">Exercice 3 — Nombres complexes <span class="font-normal text-white/80 text-sm">(3,5 points)</span></div>

$\theta\in[0,\pi[$.

\textbf{Partie I}

$(E_\theta):z^2+(1-i)e^{i\theta}z-ie^{i2\theta}=0$.

**1.a)** On développe $\left(2z+(1-i)e^{i\theta}\right)^2=4z^2+4(1-i)e^{i\theta}z+(1-i)^2e^{i2\theta}$ avec $(1-i)^2=-2i$, soit
$$\left(2z+(1-i)e^{i\theta}\right)^2=4z^2+4(1-i)e^{i\theta}z-2ie^{i2\theta}.$$
D'autre part $\left((1+i)e^{i\theta}\right)^2=(1+i)^2e^{i2\theta}=2ie^{i2\theta}$. Donc
$$\left(2z+(1-i)e^{i\theta}\right)^2=\left((1+i)e^{i\theta}\right)^2\Longleftrightarrow 4z^2+4(1-i)e^{i\theta}z-2ie^{i2\theta}=2ie^{i2\theta},$$
c'est-à-dire $4z^2+4(1-i)e^{i\theta}z-4ie^{i2\theta}=0$, soit (en divisant par $4$) l'équation $(E_\theta)$. L'équivalence est donc établie.

**1.b)** L'équation s'écrit $2z+(1-i)e^{i\theta}=\pm(1+i)e^{i\theta}$ :
- signe $+$ : $2z=\big[(1+i)-(1-i)\big]e^{i\theta}=2ie^{i\theta}$, d'où $z=ie^{i\theta}$ ;
- signe $-$ : $2z=\big[-(1+i)-(1-i)\big]e^{i\theta}=-2e^{i\theta}$, d'où $z=-e^{i\theta}$.

Pour $\theta\in[0,\pi[$, $\mathrm{Im}(-e^{i\theta})=-\sin\theta\le0$. Donc
$$\boxed{z_1=-e^{i\theta}},\qquad \boxed{z_2=ie^{i\theta}}.$$

**2.a)** On utilise $1-e^{i\theta}=-2i\sin\!\frac\theta2\,e^{i\frac\theta2}$ et $1+e^{i\theta}=2\cos\!\frac\theta2\,e^{i\frac\theta2}$ :
$$\frac{z_1+1}{z_2+i}=\frac{1-e^{i\theta}}{ie^{i\theta}+i}=\frac{1-e^{i\theta}}{i(1+e^{i\theta})}=\frac{-2i\sin\frac\theta2\,e^{i\frac\theta2}}{i\cdot 2\cos\frac\theta2\,e^{i\frac\theta2}}=-\frac{\sin\frac\theta2}{\cos\frac\theta2}=-\tan\!\left(\frac\theta2\right).$$

**2.b)** On calcule $z_1+iz_2=-e^{i\theta}+i\cdot ie^{i\theta}=-e^{i\theta}-e^{i\theta}=-2e^{i\theta}$ et $z_2+i=i(1+e^{i\theta})=2i\cos\frac\theta2\,e^{i\frac\theta2}$. Donc
$$\frac{z_1+iz_2}{z_2+i}=\frac{-2e^{i\theta}}{2i\cos\frac\theta2\,e^{i\frac\theta2}}=\frac{-e^{i\frac\theta2}}{i\cos\frac\theta2}=\frac{i\,e^{i\frac\theta2}}{\cos\frac\theta2}=\frac{e^{i\frac\pi2}\,e^{i\frac\theta2}}{\cos\frac\theta2}=\frac{1}{\cos\frac\theta2}\,e^{i\left(\frac\pi2+\frac\theta2\right)}.$$
Pour $\theta\in[0,\pi[$, $\cos\frac\theta2>0$, d'où la forme exponentielle
$$\boxed{\frac{z_1+iz_2}{z_2+i}=\frac{1}{\cos\frac\theta2}\,e^{i\left(\frac\pi2+\frac\theta2\right)}}.$$

\textbf{Partie II}

$a=e^{i\theta}$, $b=(1+i)e^{i\theta}$, $c=b-a=ie^{i\theta}$, $q=me^{i\theta}$ avec $m\in\,]0,1[$.

**1.a)** $R$ (centre $O$, angle $\frac\pi2$) a pour écriture complexe $z\mapsto e^{i\frac\pi2}z=iz$. Donc $p=iq=\boxed{ime^{i\theta}}$.

**1.b)** $R(A)$ a pour affixe $ia=ie^{i\theta}=c$. Donc $R(A)=C$.

**2.a)** $h=\dfrac{m}{m-i}e^{i\theta}$, $p-a=(im-1)e^{i\theta}$.
$$\frac{p-a}{h}=\frac{(im-1)e^{i\theta}}{\frac{m}{m-i}e^{i\theta}}=\frac{(im-1)(m-i)}{m}.$$
Or $(im-1)(m-i)=im^2+m-m+i=i(m^2+1)$, d'où $\dfrac{p-a}{h}=\dfrac{m^2+1}{m}\,i$.

Ensuite $h-a=\left(\dfrac{m}{m-i}-1\right)e^{i\theta}=\dfrac{i}{m-i}e^{i\theta}$, donc
$$\frac{h-a}{p-a}=\frac{\frac{i}{m-i}e^{i\theta}}{(im-1)e^{i\theta}}=\frac{i}{(m-i)(im-1)}=\frac{i}{i(m^2+1)}=\frac{1}{m^2+1}.$$

**2.b)** $\dfrac{h-a}{p-a}=\dfrac1{m^2+1}\in\R^*$, donc $\overrightarrow{AH}$ et $\overrightarrow{AP}$ sont colinéaires : $H\in(AP)$. De plus $\dfrac{p-a}{h-0}=\dfrac{m^2+1}{m}i$ est imaginaire pur, donc $\overrightarrow{OH}\perp\overrightarrow{AP}$. Comme $H\in(AP)$ et $(OH)\perp(AP)$, $H$ est le projeté orthogonal de $O$ sur la droite $(AP)$.

**2.c)** $b-h=\left(1+i-\dfrac{m}{m-i}\right)e^{i\theta}=\dfrac{(1+i)(m-i)-m}{m-i}e^{i\theta}=\dfrac{1+i(m-1)}{m-i}e^{i\theta}$, et $q-h=\left(m-\dfrac{m}{m-i}\right)e^{i\theta}=\dfrac{m(m-1-i)}{m-i}e^{i\theta}$. En remarquant que $1+i(m-1)=i(m-1-i)$ :
$$\frac{b-h}{q-h}=\frac{1+i(m-1)}{m(m-1-i)}=\frac{i(m-1-i)}{m(m-1-i)}=\frac{1}{m}\,i.$$

**2.d)** $\dfrac{b-h}{q-h}=\dfrac1m i$ est imaginaire pur, donc $\overrightarrow{HB}\perp\overrightarrow{HQ}$ : les droites $(QH)$ et $(HB)$ sont perpendiculaires. Ainsi $\widehat{QHB}=\dfrac\pi2$.

**2.e)** Calculons aussi $\dfrac{b-a}{q-a}=\dfrac{ie^{i\theta}}{(m-1)e^{i\theta}}=\dfrac{i}{m-1}$, imaginaire pur (car $m\ne1$), donc $\widehat{QAB}=\dfrac\pi2$. Les points $A$ et $H$ voient ainsi le segment $[QB]$ sous un angle droit : ils appartiennent au cercle de diamètre $[QB]$. Donc $A$, $Q$, $H$, $B$ sont cocycliques.

<div class="my-5 rounded-lg px-4 py-2.5 text-white font-bold" style="background:#1F4E79">Exercice 4 — Arithmétique <span class="font-normal text-white/80 text-sm">(3 points)</span></div>

$(E):y=\dfrac ab x-\dfrac cd$, $a,b,c,d\in\N^*$, $a\wedge b=c\wedge d=1$.

**1.a)** Si $(x_0,y_0)\in\Z^2$ vérifie $(E)$, en multipliant par $bd$ :
$$bd\,y_0=ad\,x_0-bc\quad\Longrightarrow\quad bc=ad\,x_0-bd\,y_0=d(ax_0-by_0).$$
Donc $d\mid bc$.

**1.b)** $d\mid bc$ et $c\wedge d=1$. D'après le théorème de Gauss, $d\mid b$.

**2.a)** On a $b=nd$ avec $a\wedge b=1$, donc $a\wedge(nd)=1$, c'est-à-dire $a$ et $nd$ sont premiers entre eux. D'après Bézout, il existe des entiers relatifs vérifiant $dnu-av=1$ ; en ajoutant à $u$ un multiple convenable de $a$ et à $v$ le même multiple de $dn$, on obtient un couple $(u,v)\in\N\times\N$ tel que
$$dnu-av=1.$$

**2.b)** En reprenant $bd\,y=ad\,x-bc$ et en divisant par $d$ (avec $\frac{bc}{d}=\frac{nd\cdot c}{d}=nc$) :
$$b\,y=a\,x-nc\quad\Longleftrightarrow\quad a\,x-nd\,y=nc.$$
Solution particulière : posons $x_0=-vcn$ et $y_0=-ucn$. Alors
$$a(-vcn)-nd(-ucn)=cn(-av+ndu)=cn(dnu-av)=cn\cdot1=nc,$$
donc $(x_0,y_0)$ est solution. Comme $a\wedge(nd)=1$, la solution générale de $ax-ndy=nc$ est, pour $k\in\Z$,
$$x=x_0+nd\,k=-vcn+bk,\qquad y=y_0+a\,k=-ucn+ak.$$
D'où $\boxed{S=\{(-vcn+bk\,;\,-ucn+ak)\,/\,k\in\Z\}}$.

**3)** $(F):y=\dfrac{3}{2975}x-\dfrac{2}{119}$ : ici $a=3$, $b=2975$, $c=2$, $d=119$. On a $3\wedge2975=1$ et $2\wedge119=1$, et $d=119\mid b=2975=119\times25$, donc $n=25$.

On cherche $(u,v)$ tel que $dnu-av=1$, soit $2975\,u-3v=1$. Comme $2975\equiv-1\pmod 3$, on a $-u\equiv1$, soit $u\equiv2\pmod3$ ; on prend $u=2$, d'où $3v=2975\cdot2-1=5949$ et $v=1983$.

La solution générale est donc, pour $k\in\Z$ :
$$x=-vcn+bk=-1983\cdot2\cdot25+2975k=-99150+2975k,$$
$$y=-ucn+ak=-2\cdot2\cdot25+3k=-100+3k.$$
En reparamétrant ($k\mapsto k+33$, car $2975\cdot33=98175$), on obtient la forme réduite équivalente :
$$\boxed{S=\{(-975+2975k\,;\,-1+3k)\,/\,k\in\Z\}}.$$
*Vérification :* pour $k=0$, $3(-975)-2975(-1)=-2925+2975=50=nc$, et $y=\frac{3}{2975}(-975)-\frac{2}{119}=\frac{-2925}{2975}-\frac{50}{2975}=\frac{-2975}{2975}=-1$. ✓

<div class="my-5 rounded-lg px-4 py-2.5 text-white font-bold" style="background:#1F4E79">Exercice 5 — Structures algébriques <span class="font-normal text-white/80 text-sm">(3,5 points)</span></div>

$E=\{x+yi/x,y\in\Z\}$, $(x+yi)*(x'+y'i)=\big(x+(-1)^y x'\big)+(y+y')i$.

\textbf{Partie I}

**1.a)** Ici $x=1$, $y=-1$, $x'=3$, $y'=2$, et $(-1)^{-1}=-1$ :
$$(1-i)*(3+2i)=\big(1+(-1)\cdot3\big)+(-1+2)i=(1-3)+i=-2+i.$$

**1.b)** Calculons l'autre produit : $(3+2i)*(1-i)$ avec $x=3$, $y=2$, $x'=1$, $y'=-1$, $(-1)^2=1$ :
$$(3+2i)*(1-i)=\big(3+1\cdot1\big)+(2-1)i=4+i\ne-2+i=(1-i)*(3+2i).$$
Donc $*$ n'est pas commutative dans $E$.

**2)** Pour $u=x+yi$, $v=x'+y'i$, $w=x''+y''i$ :
$$(u*v)*w=\Big[(x+(-1)^yx')+(y+y')i\Big]*w=\big(x+(-1)^yx'+(-1)^{y+y'}x''\big)+(y+y'+y'')i,$$
$$u*(v*w)=u*\Big[(x'+(-1)^{y'}x'')+(y'+y'')i\Big]=\big(x+(-1)^y(x'+(-1)^{y'}x'')\big)+(y+y'+y'')i.$$
Or $(-1)^y(x'+(-1)^{y'}x'')=(-1)^yx'+(-1)^{y+y'}x''$. Les deux résultats sont égaux : $*$ est associative.

**3)** Pour $e=0=0+0i$ : $(x+yi)*0=\big(x+(-1)^y\cdot0\big)+(y+0)i=x+yi$ et $0*(x+yi)=\big(0+(-1)^0x\big)+(0+y)i=x+yi$. Donc $0$ est l'élément neutre de $*$.

**4.a)** Avec $x'=(-1)^{y+1}x$ et $y'=-y$ :
$$(x+yi)*\big((-1)^{y+1}x-yi\big)=\Big(x+(-1)^y(-1)^{y+1}x\Big)+(y-y)i=\big(x+(-1)^{2y+1}x\big)+0i.$$
Comme $(-1)^{2y+1}=-1$, le terme réel vaut $x-x=0$, d'où le résultat $0$.

**4.b)** La loi $*$ est interne, associative (Q2), admet $0$ pour neutre (Q3), et tout élément $x+yi$ admet l'inverse $(-1)^{y+1}x-yi$ (Q4.a) — qui est bien dans $E$. Donc $(E,*)$ est un groupe. Il n'est pas commutatif d'après 1.b). C'est donc un groupe non commutatif.

\textbf{Partie II}

$F=\{x+2yi/x,y\in\Z\}$, $G=\left\{M(x,y)=\begin{pmatrix}1&x&y\\0&1&0\\0&0&1\end{pmatrix}/x,y\in\Z\right\}$.

**1.a)** $F\subset E$ et $0=0+2\cdot0\,i\in F$. Pour $u=x+2yi$, $v=x'+2y'i$ de $F$ :
- l'inverse de $v$ est $(-1)^{2y'+1}x'-2y'i=-x'-2y'i\in F$ (partie imaginaire paire) ;
- $u*(\text{inverse de }v)=(x+2yi)*(-x'-2y'i)=\big(x+(-1)^{2y}(-x')\big)+(2y-2y')i=(x-x')+2(y-y')i\in F$ (car $(-1)^{2y}=1$).

Donc $F$ est non vide et stable par $u*v^{-1}$ : $F$ est un sous-groupe de $(E,*)$.

**1.b)** Pour $u,v\in F$, $y$ et $y'$ sont les parties imaginaires divisées par $2$ ; les exposants $2y$, $2y'$ étant pairs, $(-1)^{2y}=(-1)^{2y'}=1$, donc
$$u*v=(x+x')+2(y+y')i=v*u.$$
La loi $*$ est commutative dans $F$.

**2.a)** Avec $\varphi(x+2yi)=M(x,y)$, pour $u=x+2yi$ et $v=x'+2y'i$ : $u*v=(x+x')+2(y+y')i$ (Q1.b), donc $\varphi(u*v)=M(x+x',y+y')$. D'autre part
$$M(x,y)\times M(x',y')=\begin{pmatrix}1&x&y\\0&1&0\\0&0&1\end{pmatrix}\begin{pmatrix}1&x'&y'\\0&1&0\\0&0&1\end{pmatrix}=\begin{pmatrix}1&x+x'&y+y'\\0&1&0\\0&0&1\end{pmatrix}=M(x+x',y+y').$$
Donc $\varphi(u*v)=\varphi(u)\times\varphi(v)$ : $\varphi$ est un homomorphisme de $(F,*)$ vers $(M_3(\R),\times)$.

**2.b)** Par définition, $\varphi(F)=\{\varphi(x+2yi)/x,y\in\Z\}=\{M(x,y)/x,y\in\Z\}=G$.

**2.c)** $(F,*)$ est un groupe commutatif (Q1.a et 1.b), et $\varphi$ est un homomorphisme. L'image d'un groupe par un homomorphisme est un groupe (sous-groupe du but) ; ici $\varphi(F)=G$, donc $(G,\times)$ est un groupe. De plus l'image d'un groupe commutatif par un homomorphisme est commutative : pour $M,M'\in G$, $M=\varphi(u)$, $M'=\varphi(v)$ avec $u*v=v*u$, donc $MM'=\varphi(u*v)=\varphi(v*u)=M'M$. Ainsi $(G,\times)$ est un groupe commutatif.
