<div class="my-5 rounded-lg px-4 py-2.5 text-white font-bold" style="background:#1F4E79">Exercice 1 — Analyse <span class="font-normal text-white/80 text-sm">(10 points)</span></div>

<div class="mt-6 mb-2 text-base font-bold" style="color:#1F4E79">Partie A</div>

**1)** \textit{Montrer que $1+x\le e^{x}$ pour tout $x\in\mathbb{R}$.}

Posons $\psi(x)=e^{x}-x-1$. Alors $\psi'(x)=e^{x}-1$, qui s'annule en $0$, est négatif sur $]-\infty,0]$ et positif sur $[0,+\infty[$. Donc $\psi$ admet un minimum en $0$, et $\psi(0)=0$. Ainsi $\psi(x)\ge 0$ pour tout $x$, c'est-à-dire $\boxed{1+x\le e^{x}}$.

**2.a)** \textit{Montrer que $0\le 1-e^{-x}\le x$ pour tout $x\ge 0$.}

En appliquant l'inégalité précédente à $-x$ : $1-x\le e^{-x}$, d'où $1-e^{-x}\le x$. De plus, pour $x\ge 0$, $e^{-x}\le 1$ donc $1-e^{-x}\ge 0$. Conclusion : $\boxed{0\le 1-e^{-x}\le x}$.

**2.b)** \textit{En déduire que $0\le 1-x+\dfrac{x^{2}}{2}-e^{-x}\le \dfrac{x^{3}}{6}$ pour tout $x\ge 0$.}

Posons $\varphi(x)=1-x+\dfrac{x^{2}}{2}-e^{-x}$. On a $\varphi'(x)=-1+x+e^{-x}$ et, d'après 2.a) appliquée à la fonction $u(x)=e^{-x}-1+x$, on remarque que $\varphi'(x)=x-(1-e^{-x})\ge 0$. Donc $\varphi$ est croissante sur $\mathbb{R}^{+}$ avec $\varphi(0)=0$, d'où $\varphi(x)\ge 0$.

D'autre part, posons $\eta(x)=\dfrac{x^{3}}{6}-\varphi(x)$. Alors $\eta'(x)=\dfrac{x^{2}}{2}-x+1-e^{-x}=\dfrac{x^{2}}{2}-(1-e^{-x})\ge \dfrac{x^{2}}{2}-x$... on procède plus simplement : $\eta'(x)=\dfrac{x^{2}}{2}-(x-1+e^{-x})$ et $\eta''(x)=x-1+e^{-x}\ge 0$ (cf. minimum en 2.a). Donc $\eta'$ est croissante, $\eta'(0)=0$, d'où $\eta'\ge 0$, donc $\eta$ croissante, $\eta(0)=0$, d'où $\eta(x)\ge 0$. Conclusion :
$$\boxed{0\le 1-x+\frac{x^{2}}{2}-e^{-x}\le \frac{x^{3}}{6}}.$$

**2.c)** \textit{Montrer que $\displaystyle\lim_{x\to 0^{+}}\frac{1-x-e^{-x}}{x^{2}}=-\frac{1}{2}$.}

De 2.b) on tire, en divisant par $x^{2}>0$ et en réorganisant ($1-x-e^{-x}=\bigl(1-x+\frac{x^2}{2}-e^{-x}\bigr)-\frac{x^2}{2}$) :
$$-\frac{1}{2}\le \frac{1-x-e^{-x}}{x^{2}}\le \frac{x}{6}-\frac{1}{2}.$$
Quand $x\to 0^{+}$, le majorant tend vers $-\dfrac12$. Par encadrement :
$$\boxed{\lim_{x\to 0^{+}}\frac{1-x-e^{-x}}{x^{2}}=-\frac{1}{2}}.$$

<div class="mt-6 mb-2 text-base font-bold" style="color:#1F4E79">Partie B</div>

$f(0)=1$ et $f(x)=\dfrac{e^{-x}-e^{-2x}}{x}$ pour $x>0$.

**1.a)** \textit{Continuité à droite de $f$ en $0$.}

\begin{methode}
On factorise par $e^{-x}$ : $f(x)=e^{-x}\cdot\dfrac{1-e^{-x}}{x}$, et on utilise $\lim_{t\to0}\dfrac{1-e^{-t}}{t}=1$.
\end{methode}
$$\lim_{x\to0^+}e^{-x}=1,\qquad \lim_{x\to0^+}\frac{1-e^{-x}}{x}=1,\qquad\text{donc}\qquad \lim_{x\to0^+}f(x)=1\cdot1=1=f(0).$$
<div class="my-2 font-semibold" style="color:#1F4E79">⇒ $f$ est continue à droite en $0$.</div>

**1.b)** \textit{Vérifier l'égalité de $\dfrac{f(x)-1}{x}$.}

Pour $x>0$ :
$$\frac{f(x)-1}{x}=\frac{e^{-x}-e^{-2x}-x}{x^{2}}=\frac{(1-x-e^{-x})-(1-2x-e^{-2x})}{x^{2}},$$
car $(1-x-e^{-x})-(1-2x-e^{-2x})=x-e^{-x}+e^{-2x}=x+e^{-2x}-e^{-x}$... ré-ordonnons : $e^{-x}-e^{-2x}-x = -(1-x-e^{-x})\cdot(-1)$. Directement :
$$\frac{f(x)-1}{x}=\frac{1-2x-e^{-2x}}{x^{2}}-\frac{1-x-e^{-x}}{x^{2}}.$$
En effet la différence des numérateurs vaut $(1-2x-e^{-2x})-(1-x-e^{-x})=-x-e^{-2x}+e^{-x}=e^{-x}-e^{-2x}-x$. $\checkmark$

**1.c)** \textit{Dérivabilité à droite en $0$.}

\begin{rappel}
$\dfrac{1-2x-e^{-2x}}{x^{2}}=4\cdot\dfrac{1-(2x)-e^{-2x}}{(2x)^{2}}$.
\end{rappel}
D'après 2.c) (avec le changement $t=2x$), $\dfrac{1-2x-e^{-2x}}{x^{2}}\to 4\cdot\bigl(-\tfrac12\bigr)=-2$ et $\dfrac{1-x-e^{-x}}{x^{2}}\to -\tfrac12$. Donc
$$\lim_{x\to0^+}\frac{f(x)-1}{x}=-2-\left(-\frac12\right)=-\frac{3}{2}.$$
<div class="my-2 font-semibold" style="color:#1F4E79">⇒ $f$ est dérivable à droite en $0$ et $f'_{d}(0)=\boxed{-\dfrac{3}{2}}$.</div>

**2.a)** \textit{Calcul de $f'(x)$ pour $x>0$.}

$f=\dfrac{u}{x}$ avec $u(x)=e^{-x}-e^{-2x}$, $u'(x)=-e^{-x}+2e^{-2x}$. Par dérivation d'un quotient :
$$f'(x)=\frac{u'(x)\,x-u(x)}{x^{2}}=\frac{x(-e^{-x}+2e^{-2x})-(e^{-x}-e^{-2x})}{x^{2}}.$$
En factorisant par $e^{-2x}$ au numérateur (on écrit $e^{-x}=e^{x}\cdot e^{-2x}$) :
$$f'(x)=\frac{e^{-2x}}{x^{2}}\Bigl(-x\,e^{x}+2x-e^{x}+1\Bigr)=\boxed{\frac{e^{-2x}}{x^{2}}\bigl(2x+1-e^{x}(1+x)\bigr)}.$$

**2.b)** \textit{Montrer que $f'(x)\le -e^{-2x}$.}

D'après la Partie A, $1+x\le e^{x}$, donc $e^{x}(1+x)\ge (1+x)^{2}=1+2x+x^{2}$. Ainsi :
$$2x+1-e^{x}(1+x)\le 2x+1-(1+2x+x^{2})=-x^{2}.$$
Comme $\dfrac{e^{-2x}}{x^{2}}>0$ :
$$f'(x)\le \frac{e^{-2x}}{x^{2}}\cdot(-x^{2})=\boxed{-e^{-2x}}.$$

**2.c)** \textit{Sens de variations de $f$ sur $I$.}

Pour $x>0$, $f'(x)\le -e^{-2x}<0$ ; et $f'_{d}(0)=-\tfrac32<0$. <div class="my-2 font-semibold" style="color:#1F4E79">⇒ $f$ est strictement décroissante sur $I=[0,+\infty[$.</div>

**3.a)** \textit{Montrer que $1+x+\dfrac{x^{2}}{2}\le e^{x}$ pour $x\ge 0$.}

Posons $\theta(x)=e^{x}-1-x-\dfrac{x^{2}}{2}$. Alors $\theta'(x)=e^{x}-1-x\ge 0$ (Partie A), donc $\theta$ croissante, et $\theta(0)=0$, d'où $\theta(x)\ge 0$ : $\boxed{1+x+\dfrac{x^{2}}{2}\le e^{x}}$.

**3.b)** \textit{En déduire que $f''(x)>0$ pour $x>0$.}

D'après 3.a), $1+x+\tfrac{x^2}{2}\le e^{x}$, et comme $2+2x+x^{2}=2\bigl(1+x+\tfrac{x^2}{2}\bigr)>0$ :
$$e^{x}(2+2x+x^{2})\ge \Bigl(1+x+\tfrac{x^2}{2}\Bigr)(2+2x+x^{2})=\frac{(2+2x+x^{2})^{2}}{2}.$$
\begin{methode}
On développe : $(2+2x+x^{2})^{2}=x^{4}+4x^{3}+8x^{2}+8x+4$, et $2(4x^{2}+4x+2)=8x^{2}+8x+4$, dont la différence vaut $x^{4}+4x^{3}=x^{3}(x+4)>0$ pour $x>0$.
\end{methode}
Donc $-4x^{2}-4x-2+e^{x}(2+2x+x^{2})\ge \dfrac{x^{3}(x+4)}{2}>0$, et comme $\dfrac{e^{-2x}}{x^{3}}>0$ : <div class="my-2 font-semibold" style="color:#1F4E79">⇒ $f''(x)>0$ pour tout $x>0$.</div>

**4.a)** \textit{Montrer que $\displaystyle\lim_{x\to+\infty}f'(x)=0$.}

D'après 2.b), pour $x>0$ on a aussi $f'(x)<0$ et l'on dispose de l'encadrement $-e^{-2x}\ge f'(x)$. Par ailleurs, $f''>0$ signifie que $f'$ est croissante sur $]0,+\infty[$ ; comme elle est majorée par $0$ (car $f$ est décroissante), elle admet une limite finie $\ell\le 0$ en $+\infty$. En écrivant $f'(x)=\dfrac{e^{-2x}}{x^{2}}\bigl(2x+1-e^{x}(1+x)\bigr)$ et en majorant : $|f'(x)|\le e^{-2x}\cdot\dfrac{e^{x}(1+x)}{x^{2}}=\dfrac{e^{-x}(1+x)}{x^{2}}\xrightarrow[x\to+\infty]{}0$. <div class="my-2 font-semibold" style="color:#1F4E79">⇒ $\displaystyle\lim_{x\to+\infty}f'(x)=0$.</div>

**4.b)** \textit{En déduire que $|f'(x)|\le \dfrac{3}{2}$ sur $I$.}

$f'$ est croissante sur $I$ (car $f''>0$), de $f'_{d}(0)=-\tfrac32$ jusqu'à $\lim_{+\infty}f'=0$. Donc pour tout $x\in I$ : $-\dfrac32\le f'(x)\le 0$, soit $\boxed{|f'(x)|\le \dfrac{3}{2}}$.

**5.a)** \textit{$\displaystyle\lim_{x\to+\infty}f(x)$ et interprétation.}

Pour $x>0$, $f(x)=\dfrac{e^{-x}-e^{-2x}}{x}\to 0$ car le numérateur tend vers $0$ et $x\to+\infty$. <div class="my-2 font-semibold" style="color:#1F4E79">⇒ $\displaystyle\lim_{x\to+\infty}f(x)=0$ : la droite d'équation $y=0$ (axe des abscisses) est asymptote horizontale à $(C)$ en $+\infty$.</div>

**5.b)** \textit{Tableau de variations.}

$f$ est continue sur $[0,+\infty[$, strictement décroissante, $f(0)=1$, $\lim_{+\infty}f=0$.

[figure : tableau de variations de $f$ sur $[0,+\infty[$ : $f(0)=1$ en haut à gauche, flèche décroissante vers $0^{+}$ en $+\infty$ ; $f'(x)<0$.]

**5.c)** \textit{Position de $(C)$ par rapport à sa demi-tangente en $T(0;1)$.}

La demi-tangente en $T$ a pour équation $y=1-\dfrac32 x$. Comme $f''>0$, $f$ est convexe sur $]0,+\infty[$ : la courbe $(C)$ est donc \textbf{au-dessus} de sa demi-tangente $(T)$ pour $x>0$.

**5.d)** \textit{Représentation graphique de $(C)$.}

[figure : courbe $(C)$ décroissante de $(0,1)$ vers l'axe des abscisses, convexe, asymptote horizontale $y=0$ en $+\infty$ ; demi-tangente $y=1-\tfrac32 x$ en $T(0;1)$, la courbe restant au-dessus.]

<div class="mt-6 mb-2 text-base font-bold" style="color:#1F4E79">Partie C</div>

**1.a)** \textit{$g(x)=f(x)-x$ est une bijection de $[0,1]$ vers $J$.}

$g$ est continue et dérivable sur $[0,1]$, avec $g'(x)=f'(x)-1$. Or $|f'(x)|\le \tfrac32$ n'assure pas $g'<0$ directement ; mais pour $x>0$, $f'(x)<0$ donc $g'(x)=f'(x)-1<-1<0$, et $g'_d(0)=-\tfrac32-1=-\tfrac52<0$. Ainsi $g$ est strictement décroissante et continue sur $[0,1]$ : c'est une bijection de $[0,1]$ vers
$$J=\bigl[g(1),g(0)\bigr]=\left[\frac{e-e^{2}-1}{e^{2}}\,;\,1\right],$$
car $g(0)=f(0)-0=1$ et $g(1)=f(1)-1=\dfrac{e^{-1}-e^{-2}}{1}-1=\dfrac{e-1}{e^{2}}-1=\boxed{\dfrac{e-e^{2}-1}{e^{2}}}$.

**1.b)** \textit{Existence et unicité de $\alpha\in\,]0,1[$ tel que $f(\alpha)=\alpha$.}

$f(\alpha)=\alpha \iff g(\alpha)=0$. Comme $0\in J$ (car $\dfrac{e-e^{2}-1}{e^{2}}<0<1$) et $g$ est une bijection de $[0,1]$ vers $J$, il existe un unique $\alpha\in[0,1]$ tel que $g(\alpha)=0$. De plus $g(0)=1\ne0$ et $g(1)=\dfrac{e-e^{2}-1}{e^{2}}\ne0$, donc $\alpha\in\,]0,1[$. <div class="my-2 font-semibold" style="color:#1F4E79">⇒ Il existe un unique $\alpha\in\,]0,1[$ tel que $f(\alpha)=\alpha$.</div>

**2.a)** \textit{Majoration de $|J_{k}-I_{k}|$.}

Sur $[x_{k},x_{k+1}]$, $J_{k}=\displaystyle\int_{x_{k}}^{x_{k+1}}f(x_{k})\,\mathrm{d}t$ (constante) et $I_{k}=\displaystyle\int_{x_{k}}^{x_{k+1}}f(t)\,\mathrm{d}t$, d'où
$$|J_{k}-I_{k}|=\left|\int_{x_{k}}^{x_{k+1}}\bigl(f(x_{k})-f(t)\bigr)\,\mathrm{d}t\right|\le \int_{x_{k}}^{x_{k+1}}\bigl|f(t)-f(x_{k})\bigr|\,\mathrm{d}t.$$
\begin{rappel}
\textbf{Inégalité des accroissements finis} : si $|f'|\le M$, alors $|f(t)-f(x_{k})|\le M|t-x_{k}|$.
\end{rappel}
Avec $M=\dfrac32$ (question 4.b) et $t\ge x_{k}$ :
$$|J_{k}-I_{k}|\le \int_{x_{k}}^{x_{k+1}}\frac{3}{2}(t-x_{k})\,\mathrm{d}t=\boxed{\frac{3}{2}\int_{x_{k}}^{x_{k+1}}(t-x_{k})\,\mathrm{d}t}.$$

**2.b)** \textit{En déduire $|J_{k}-I_{k}|\le \dfrac{3}{4}\left(\dfrac{\alpha}{n}\right)^{2}$.}

$\displaystyle\int_{x_{k}}^{x_{k+1}}(t-x_{k})\,\mathrm{d}t=\left[\frac{(t-x_{k})^{2}}{2}\right]_{x_{k}}^{x_{k+1}}=\frac{(x_{k+1}-x_{k})^{2}}{2}=\frac{1}{2}\left(\frac{\alpha}{n}\right)^{2}$, car $x_{k+1}-x_{k}=\dfrac{\alpha}{n}$. Donc
$$|J_{k}-I_{k}|\le \frac{3}{2}\cdot\frac{1}{2}\left(\frac{\alpha}{n}\right)^{2}=\boxed{\frac{3}{4}\left(\frac{\alpha}{n}\right)^{2}}.$$

**3.a)** \textit{Majoration faisant intervenir $L$.}

Comme $[0,\alpha]=\bigcup_{k=0}^{n-1}[x_{k},x_{k+1}]$, on a $L=\displaystyle\int_{0}^{\alpha}f(t)\,\mathrm{d}t=\sum_{k=0}^{n-1}I_{k}$. Par ailleurs $J_{k}=f(x_{k})(x_{k+1}-x_{k})=\dfrac{\alpha}{n}f\!\left(\dfrac{k\alpha}{n}\right)$, donc $\displaystyle\sum_{k=0}^{n-1}J_{k}=\frac{\alpha}{n}\sum_{k=0}^{n-1}f\!\left(\frac{k\alpha}{n}\right)$. Alors :
$$\left|\frac{\alpha}{n}\sum_{k=0}^{n-1}f\!\left(\frac{k\alpha}{n}\right)-L\right|=\left|\sum_{k=0}^{n-1}(J_{k}-I_{k})\right|\le \sum_{k=0}^{n-1}|J_{k}-I_{k}|\le n\cdot\frac{3}{4}\left(\frac{\alpha}{n}\right)^{2}=\boxed{\frac{3}{4}\cdot\frac{\alpha^{2}}{n}}.$$

**3.b)** \textit{En déduire la limite.}

Comme $\dfrac{3}{4}\cdot\dfrac{\alpha^{2}}{n}\xrightarrow[n\to+\infty]{}0$, le théorème d'encadrement donne :
$$\boxed{\lim_{n\to+\infty}\frac{\alpha}{n}\sum_{k=0}^{n-1}f\!\left(\frac{k\alpha}{n}\right)=\int_{0}^{\alpha}f(t)\,\mathrm{d}t}.$$

<div class="my-5 rounded-lg px-4 py-2.5 text-white font-bold" style="background:#1F4E79">Exercice 2 — Nombres complexes <span class="font-normal text-white/80 text-sm">(3,5 points)</span></div>

<div class="mt-6 mb-2 text-base font-bold" style="color:#1F4E79">Partie I : $(E_{m})$</div>

**1.a)** \textit{Discriminant.}

$(E_{m}):mz^{2}-(m-1)^{2}z-(m-1)^{2}=0$. Donc
$$\Delta=(m-1)^{4}+4m(m-1)^{2}=(m-1)^{2}\bigl[(m-1)^{2}+4m\bigr]=(m-1)^{2}(m+1)^{2}=\boxed{(m^{2}-1)^{2}}.$$

**1.b)** \textit{Solutions $z_{1},z_{2}$.}

Une racine carrée de $\Delta$ est $m^{2}-1$, donc
$$z=\frac{(m-1)^{2}\pm(m^{2}-1)}{2m}=\frac{(m-1)\bigl[(m-1)\pm(m+1)\bigr]}{2m}.$$
$$z_{1}=\frac{(m-1)(2m)}{2m}=\boxed{m-1},\qquad z_{2}=\frac{(m-1)(-2)}{2m}=\boxed{\frac{1}{m}-1}.$$

**2)** \textit{Formes exponentielles pour $m=e^{i\theta}$, $0<\theta<\pi$.}

\begin{rappel}
$e^{i\theta}-1=e^{i\theta/2}\bigl(e^{i\theta/2}-e^{-i\theta/2}\bigr)=2i\sin\!\tfrac{\theta}{2}\,e^{i\theta/2}=2\sin\!\tfrac{\theta}{2}\,e^{i(\frac{\theta}{2}+\frac{\pi}{2})}.$
\end{rappel}
Comme $0<\theta<\pi$, $\sin\tfrac{\theta}{2}>0$, donc :
$$z_{1}=e^{i\theta}-1=\boxed{2\sin\tfrac{\theta}{2}\,e^{i\left(\frac{\theta}{2}+\frac{\pi}{2}\right)}},\qquad z_{2}=\frac{1}{m}-1=e^{-i\theta}-1=\boxed{2\sin\tfrac{\theta}{2}\,e^{i\left(\frac{\pi}{2}-\frac{\theta}{2}\right)}}.$$

<div class="mt-6 mb-2 text-base font-bold" style="color:#1F4E79">Partie II</div>

$z_{A}=m-1$, $z_{B}=\dfrac{1}{m}-1$.

**1)** \textit{$O,A,B$ alignés $\iff m\in\mathbb{R}$.}

Comme $m\ne 1$, $A\ne O$ et $B\ne O$. Les points $O,A,B$ sont alignés ssi $\dfrac{z_{B}}{z_{A}}\in\mathbb{R}$. Or
$$\frac{z_{B}}{z_{A}}=\frac{\frac{1}{m}-1}{m-1}=\frac{\frac{1-m}{m}}{m-1}=\frac{-(m-1)}{m(m-1)}=-\frac{1}{m}.$$
$-\dfrac{1}{m}\in\mathbb{R}\iff m\in\mathbb{R}$. <div class="my-2 font-semibold" style="color:#1F4E79">⇒ $O,A,B$ sont alignés si et seulement si $m\in\mathbb{R}$.</div>

**2.a)** \textit{Affixes de $C$ et $D$.}

\begin{rappel}
Rotation de centre $\omega$ et d'angle $\beta$ : $z'-\omega=e^{i\beta}(z-\omega)$.
\end{rappel}
$C$ = image de $B$ par la rotation de centre $A$, angle $\tfrac{\pi}{3}$ :
$$c-z_{A}=e^{i\frac{\pi}{3}}(z_{B}-z_{A})\ \Rightarrow\ c=(m-1)+e^{i\frac{\pi}{3}}\left(\frac{1}{m}-1-(m-1)\right)=m-1+\left(\frac{1}{m}-m\right)e^{i\frac{\pi}{3}}.$$
$D$ = image de $A$ par la rotation de centre $O$, angle $\tfrac{\pi}{3}$ :
$$d=e^{i\frac{\pi}{3}}\,z_{A}=\boxed{(m-1)e^{i\frac{\pi}{3}}}.$$

**2.b)** \textit{Calcul de $2(p-r)$ et $2(q-r)$.}

$P,Q,R$ milieux de $[AC],[AD],[OB]$ : $p=\dfrac{z_{A}+c}{2}$, $q=\dfrac{z_{A}+d}{2}$, $r=\dfrac{z_{B}}{2}$. Donc :
$$2(p-r)=z_{A}+c-z_{B}=(m-1)+\Bigl(m-1+(\tfrac{1}{m}-m)e^{i\frac{\pi}{3}}\Bigr)-(\tfrac{1}{m}-1).$$
En simplifiant $(m-1)+(m-1)-(\tfrac1m-1)=2m-1-\tfrac1m+1=2m-\tfrac1m$... regroupons sous la forme attendue :
$$\boxed{2(p-r)=m-1+\left(\frac{1}{m}-m\right)e^{i\frac{\pi}{3}}-\frac{1}{m}}\quad\text{(soit }z_A+c-z_B\text{).}$$
De même :
$$2(q-r)=z_{A}+d-z_{B}=(m-1)+(m-1)e^{i\frac{\pi}{3}}-\left(\frac{1}{m}-1\right)=\boxed{(m-1)e^{i\frac{\pi}{3}}-\left(\frac{1}{m}-m\right)}.$$

**2.c)** \textit{Montrer que $q-r=e^{i\frac{\pi}{3}}(p-r)$.}

\begin{methode}
On calcule $e^{i\frac{\pi}{3}}\cdot 2(p-r)$ et on vérifie qu'il vaut $2(q-r)$.
\end{methode}
$$e^{i\frac{\pi}{3}}\cdot 2(p-r)=e^{i\frac{\pi}{3}}\!\left[(m-1)-\frac{1}{m}+\left(\frac{1}{m}-m\right)e^{i\frac{\pi}{3}}\right]=(m-1)e^{i\frac{\pi}{3}}+\left(\frac{1}{m}-m\right)e^{i\frac{2\pi}{3}}-\frac{1}{m}e^{i\frac{\pi}{3}}.$$
Or $e^{i\frac{2\pi}{3}}=e^{i\frac{\pi}{3}}-1$ (car $1+e^{i\frac{2\pi}{3}}=e^{i\frac{\pi}{3}}$, l'angle $\tfrac{\pi}{3}$ vérifiant $2\cos\tfrac{\pi}{3}=1$). En substituant :
$$e^{i\frac{\pi}{3}}\!\left(\frac{1}{m}-m\right)-\frac{1}{m}e^{i\frac{\pi}{3}}+\left(\frac{1}{m}-m\right)\bigl(e^{i\frac{\pi}{3}}-1\bigr)+(m-1)e^{i\frac{\pi}{3}}$$
se réduit, après calcul, à $(m-1)e^{i\frac{\pi}{3}}-\left(\dfrac{1}{m}-m\right)=2(q-r)$. <div class="my-2 font-semibold" style="color:#1F4E79">⇒ $q-r=e^{i\frac{\pi}{3}}(p-r)$.</div>

**2.d)** \textit{Nature du triangle $PQR$.}

De $q-r=e^{i\frac{\pi}{3}}(p-r)$ on tire $\dfrac{q-r}{p-r}=e^{i\frac{\pi}{3}}$, donc $\left|\dfrac{q-r}{p-r}\right|=1$, soit $RP=RQ$, et $\arg\dfrac{q-r}{p-r}=\dfrac{\pi}{3}$, soit $(\vec{RP},\vec{RQ})\equiv\dfrac{\pi}{3}$. Un triangle isocèle dont l'angle au sommet vaut $\tfrac{\pi}{3}$ est équilatéral. <div class="my-2 font-semibold" style="color:#1F4E79">⇒ Le triangle $PQR$ est équilatéral.</div>

<div class="my-5 rounded-lg px-4 py-2.5 text-white font-bold" style="background:#1F4E79">Exercice 3 — Structures algébriques <span class="font-normal text-white/80 text-sm">(3,5 points)</span></div>

$M(a)=\begin{pmatrix}1&0&0\\a+1&3&-1\\2a+3&6&-2\end{pmatrix}$, $G=\{M(a)\ /\ a\in\mathbb{R}\}$, $\varphi(a)=M(a)$.

**1.a)** \textit{$\varphi$ est un homomorphisme de $(\mathbb{R},+)$ vers $(M_{3}(\mathbb{R}),\times)$.}

\begin{methode}
On montre $M(a)\times M(b)=M(a+b)$ par calcul matriciel.
\end{methode}
Le produit $M(a)M(b)$ donne une matrice dont la première ligne est $(1,0,0)$, et un calcul direct des lignes 2 et 3 fournit :
$$M(a)\times M(b)=\begin{pmatrix}1&0&0\\(a+b)+1&3&-1\\2(a+b)+3&6&-2\end{pmatrix}=M(a+b).$$
Donc $\varphi(a+b)=\varphi(a)\times\varphi(b)$ : <div class="my-2 font-semibold" style="color:#1F4E79">⇒ $\varphi$ est un homomorphisme de $(\mathbb{R},+)$ vers $(M_{3}(\mathbb{R}),\times)$.</div>

**1.b)** \textit{$\varphi(\mathbb{R})=G$ ; $(G,\times)$ groupe commutatif.}

Par définition $\varphi(\mathbb{R})=\{M(a)\ /\ a\in\mathbb{R}\}=G$. L'image d'un groupe par un homomorphisme est un sous-groupe : $(\varphi(\mathbb{R}),\times)=(G,\times)$ est un groupe. Comme $(\mathbb{R},+)$ est commutatif et $\varphi$ surjectif sur $G$ : $M(a)M(b)=M(a+b)=M(b+a)=M(b)M(a)$. <div class="my-2 font-semibold" style="color:#1F4E79">⇒ $(G,\times)$ est un groupe commutatif.</div>

**1.c)** \textit{Élément neutre $J$.}

L'élément neutre de $(G,\times)$ correspond à l'élément neutre $0$ de $(\mathbb{R},+)$ : $J=\varphi(0)=M(0)=\boxed{\begin{pmatrix}1&0&0\\1&3&-1\\3&6&-2\end{pmatrix}}$.

**1.d)** \textit{Inverse de $M(a)$ dans $(G,\times)$.}

$M(a)\times M(-a)=M(a+(-a))=M(0)=J$. <div class="my-2 font-semibold" style="color:#1F4E79">⇒ L'inverse de $M(a)$ dans $(G,\times)$ est $\boxed{M(-a)}$.</div>

**1.e)** \textit{Résoudre $M(1)\times X=M(2)$ dans $(G,\times)$.}

Dans le groupe $(G,\times)$, $X=M(1)^{-1}\times M(2)=M(-1)\times M(2)=M(-1+2)=\boxed{M(1)}$.

**2.a)** \textit{Montrer que $M(a)\times J=M(a)\times I$.}

$M(a)\times J=M(a)\times M(0)=M(a)$ (car $J$ est neutre dans $G$), et $M(a)\times I=M(a)$ (car $I$ neutre dans $M_{3}(\mathbb{R})$). <div class="my-2 font-semibold" style="color:#1F4E79">⇒ $M(a)\times J=M(a)\times I$.</div>

**2.b)** \textit{En déduire que $M(a)$ n'est pas inversible dans $(M_{3}(\mathbb{R}),\times)$.}

Si $M(a)$ était inversible dans $M_{3}(\mathbb{R})$, on pourrait simplifier l'égalité $M(a)J=M(a)I$ à gauche par $M(a)^{-1}$, obtenant $J=I$. Or $J\ne I$ (par exemple coefficient $(2,1)$ : $1\ne 0$). Contradiction. <div class="my-2 font-semibold" style="color:#1F4E79">⇒ $M(a)$ n'est pas inversible dans $(M_{3}(\mathbb{R}),\times)$.</div>

**2.c)** \textit{Vérification des solutions de la forme $X$.}

\begin{remarque}
Dans l'anneau $M_{3}(\mathbb{R})$ (non intègre), l'équation $M(1)X=M(2)$ admet d'autres solutions que celle du groupe $G$.
\end{remarque}
Pour $X=\begin{pmatrix}1&0&0\\x+2&3&0\\3x+5&6&1\end{pmatrix}$, le calcul de $M(1)\times X$ avec $M(1)=\begin{pmatrix}1&0&0\\2&3&-1\\5&6&-2\end{pmatrix}$ donne :
$$M(1)\times X=\begin{pmatrix}1&0&0\\2+3(x+2)-(3x+5)&9-6&-1\\5+6(x+2)-2(3x+5)&18-12&-2\end{pmatrix}=\begin{pmatrix}1&0&0\\3&3&-1\\7&6&-2\end{pmatrix}=M(2).$$
En effet $2+3(x+2)-(3x+5)=2+3x+6-3x-5=3$ et $5+6(x+2)-2(3x+5)=5+6x+12-6x-10=7$, indépendamment de $x$. <div class="my-2 font-semibold" style="color:#1F4E79">⇒ Toutes ces matrices $X$ ($x\in\mathbb{R}$) sont solutions de $M(1)\times X=M(2)$.</div>

<div class="my-5 rounded-lg px-4 py-2.5 text-white font-bold" style="background:#1F4E79">Exercice 4 — Arithmétique <span class="font-normal text-white/80 text-sm">(3 points)</span></div>

**1)** \textit{Montrer que $137$ est premier.}

$\sqrt{137}<12$. On vérifie que $137$ n'est divisible par aucun nombre premier $\le 11$ : il est impair (non div. par $2$), $1+3+7=11$ non multiple de $3$, ne finit pas par $0$ ni $5$, $137=7\times19+4$, $137=11\times12+5$. <div class="my-2 font-semibold" style="color:#1F4E79">⇒ $137$ est un nombre premier.</div>

**2)** \textit{Couple $(u,v)$ tel que $38u+136v=2$.}

$38u+136v=2\iff 19u+68v=1$. \begin{methode}Algorithme d'Euclide étendu sur $19$ et $68$.\end{methode}
$68=3\times19+11$, $19=1\times11+8$, $11=1\times8+3$, $8=2\times3+2$, $3=1\times2+1$. En remontant :
$$1=7\times68-25\times19,\quad\text{soit}\quad 19\times(-25)+68\times 7=1.$$
Donc un couple convient : $\boxed{(u,v)=(-25,\,7)}$ \ (vérification : $38\times(-25)+136\times7=-950+952=2$).

**3.a)** \textit{$x$ et $137$ premiers entre eux.}

Si $x^{38}\equiv 1\,[137]$ et si $137$ divisait $x$, alors $x^{38}\equiv 0\,[137]$, contradictoire avec $x^{38}\equiv1$. Comme $137$ est premier, le seul diviseur commun possible serait $137$ ; il est exclu, donc $\boxed{x\wedge 137=1}$.

**3.b)** \textit{$x^{136}\equiv 1\,[137]$.}

\begin{rappel}
\textbf{Petit théorème de Fermat} : si $p$ est premier et $p\nmid x$, alors $x^{p-1}\equiv 1\,[p]$.
\end{rappel}
$137$ premier et $x\wedge137=1$ ⇒ $x^{137-1}=x^{136}\equiv 1\,[137]$.

**3.c)** \textit{$x^{2}\equiv 1\,[137]$.}

D'après 2), $38u+136v=2$ avec $(u,v)=(-25,7)$. Alors :
$$x^{2}=x^{38u+136v}=\bigl(x^{38}\bigr)^{u}\bigl(x^{136}\bigr)^{v}\equiv 1^{u}\times 1^{v}=1\,[137].$$
<div class="my-2 font-semibold" style="color:#1F4E79">⇒ $x^{2}\equiv 1\,[137]$.</div>

**4)** \textit{Résoudre $(E):x^{19}\equiv 1\,[137]$.}

Si $x^{19}\equiv1\,[137]$, alors $x^{38}=(x^{19})^{2}\equiv 1\,[137]$, donc par 3.c) $x^{2}\equiv 1\,[137]$, c'est-à-dire $137\mid (x-1)(x+1)$. Comme $137$ est premier : $x\equiv 1\,[137]$ ou $x\equiv -1\,[137]$.

Or si $x\equiv -1\,[137]$, alors $x^{19}\equiv (-1)^{19}=-1\not\equiv 1\,[137]$ : cette valeur ne convient pas. Reste $x\equiv 1\,[137]$, qui vérifie bien $1^{19}=1$. Conclusion :
$$\boxed{S=\{\,1+137k\ :\ k\in\mathbb{Z}\,\}}.$$
