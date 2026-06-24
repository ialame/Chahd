<div class="my-5 rounded-lg px-4 py-2.5 text-white font-bold" style="background:#1F4E79">Exercice 1 — Analyse <span class="font-normal text-white/80 text-sm">(12 points)</span></div>

$f_n(x) = \dfrac{-2e^x}{1+e^x} + nx$ sur $\R$.

<div class="mt-6 mb-2 text-base font-bold" style="color:#1F4E79">Partie I</div>

**1.a)** \textit{Calcul de $\lim\limits_{x\to+\infty}(f_n(x)-nx+2)$ et interprétation.}

$$f_n(x)-nx+2 = \frac{-2e^x}{1+e^x}+2 = \frac{-2e^x+2(1+e^x)}{1+e^x} = \frac{2}{1+e^x}.$$
Comme $\lim\limits_{x\to+\infty}e^x=+\infty$, on obtient $\lim\limits_{x\to+\infty}(f_n(x)-nx+2)=0$.

<div class="my-2 font-semibold" style="color:#1F4E79">⇒ La droite d'équation $y=nx-2$ est asymptote à $(C_n)$ au voisinage de $+\infty$.</div>

**1.b)** \textit{Asymptote en $-\infty$.}

$$f_n(x)-nx = \frac{-2e^x}{1+e^x}\ \xrightarrow[x\to-\infty]{}\ 0 \quad(\text{car }e^x\to0).$$
<div class="my-2 font-semibold" style="color:#1F4E79">⇒ La droite $(\Delta_n):\boxed{y=nx}$ est asymptote à $(C_n)$ au voisinage de $-\infty$.</div>

**2.a)** \textit{Dérivabilité et expression de $f_n'$.}

$x\mapsto\dfrac{-2e^x}{1+e^x}$ est dérivable sur $\R$ comme quotient de fonctions dérivables dont le dénominateur ne s'annule pas, et $x\mapsto nx$ l'est aussi. Donc $f_n$ est dérivable sur $\R$.
\begin{rappel}
$\left(\dfrac{u}{v}\right)'=\dfrac{u'v-uv'}{v^2}$, ici avec $u=-2e^x$ et $v=1+e^x$.
\end{rappel}
$$f_n'(x)=\frac{-2e^x(1+e^x)-(-2e^x)e^x}{(1+e^x)^2}+n=\frac{-2e^x-2e^{2x}+2e^{2x}}{(1+e^x)^2}+n=\boxed{\dfrac{-2e^x}{(1+e^x)^2}+n}.$$

**2.b)** \textit{Montrer que $\dfrac{4e^x}{(1+e^x)^2}\le1$.}

$$1-\frac{4e^x}{(1+e^x)^2}=\frac{(1+e^x)^2-4e^x}{(1+e^x)^2}=\frac{1-2e^x+e^{2x}}{(1+e^x)^2}=\frac{(1-e^x)^2}{(1+e^x)^2}\ge0.$$
<div class="my-2 font-semibold" style="color:#1F4E79">⇒ $\dfrac{4e^x}{(1+e^x)^2}\le1$ pour tout $x\in\R$ (égalité ssi $x=0$).</div>

**2.c)** \textit{Sens de variation de $f_n$.}

D'après 2.b, $\dfrac{2e^x}{(1+e^x)^2}\le\dfrac12$, donc $f_n'(x)=n-\dfrac{2e^x}{(1+e^x)^2}\ge n-\dfrac12$.

- \textbf{Cas $n=0$ :} $f_0'(x)=\dfrac{-2e^x}{(1+e^x)^2}<0$ sur $\R$. <div class="my-2 font-semibold" style="color:#1F4E79">⇒ $f_0$ est strictement décroissante sur $\R$.</div>
- \textbf{Cas $n\ge1$ :} $f_n'(x)\ge n-\dfrac12\ge\dfrac12>0$. <div class="my-2 font-semibold" style="color:#1F4E79">⇒ $f_n$ est strictement croissante sur $\R$.</div>

**3.a)** \textit{Tangente au point $I$ d'abscisse $0$.}

$f_n(0)=\dfrac{-2}{2}+0=-1$ et $f_n'(0)=\dfrac{-2}{4}+n=n-\dfrac12$.
$$(T):y=f_n'(0)\,x+f_n(0)=\boxed{\left(n-\tfrac12\right)x-1}.$$

**3.b)** \textit{$I$ est l'unique point d'inflexion.}

$f_n'(x)=n-\dfrac{2e^x}{(1+e^x)^2}$. Posons $\varphi(x)=\dfrac{2e^x}{(1+e^x)^2}$, alors
$$\varphi'(x)=2\cdot\frac{e^x(1+e^x)^2-e^x\cdot2(1+e^x)e^x}{(1+e^x)^4}=2\cdot\frac{e^x(1+e^x)-2e^{2x}}{(1+e^x)^3}=\frac{2e^x(1-e^x)}{(1+e^x)^3}.$$
Donc $f_n''(x)=-\varphi'(x)=\dfrac{2e^x(e^x-1)}{(1+e^x)^3}$. Le signe de $f_n''(x)$ est celui de $e^x-1$ :
$$f_n''(x)<0 \text{ sur } ]-\infty,0[,\qquad f_n''(0)=0,\qquad f_n''(x)>0 \text{ sur }]0,+\infty[.$$
$f_n''$ s'annule en changeant de signe uniquement en $0$.
<div class="my-2 font-semibold" style="color:#1F4E79">⇒ $I(0,-1)$ est le seul point d'inflexion de $(C_n)$.</div>

**4)** \textit{Représentation de $(C_0)$ et $(C_2)$.}

[figure : repère orthonormé ; $(C_0)$ décroissante d'asymptote $y=0$ en $-\infty$ et $y=-2$ en $+\infty$, passant par $I(0,-1)$ ; $(C_2)$ croissante d'asymptotes $y=2x$ en $-\infty$ et $y=2x-2$ en $+\infty$, passant par $I(0,-1)$ ; les deux courbes se coupent au point d'inflexion commun $I$.]

**5.a)** \textit{Calcul de $A(t)$.}

L'écart vertical entre $(C_n)$ et la droite $y=nx-2$ est $f_n(x)-(nx-2)=\dfrac{2}{1+e^x}>0$, donc
$$A(t)=\int_0^t\frac{2}{1+e^x}\,dx=\int_0^t\left(2-\frac{2e^x}{1+e^x}\right)dx=\Big[2x-2\ln(1+e^x)\Big]_0^t.$$
$$\boxed{A(t)=2t-2\ln(1+e^t)+2\ln2}\quad(\text{en }\text{cm}^2).$$

**5.b)** \textit{Limite de $A(t)$.}

$$2t-2\ln(1+e^t)=2t-2\ln\!\big(e^t(1+e^{-t})\big)=2t-2t-2\ln(1+e^{-t})=-2\ln(1+e^{-t})\xrightarrow[t\to+\infty]{}0.$$
<div class="my-2 font-semibold" style="color:#1F4E79">⇒ $\lim\limits_{t\to+\infty}A(t)=\boxed{2\ln2}\ \text{cm}^2$.</div>

<div class="mt-6 mb-2 text-base font-bold" style="color:#1F4E79">Partie II : suite $u_0=0$, $u_{n+1}=f_0(u_n)$</div>

**1.a)** \textit{Unique solution $\alpha$ de $f_0(x)=x$.}

Posons $\psi(x)=f_0(x)-x=\dfrac{-2e^x}{1+e^x}-x$. $\psi$ est continue et dérivable sur $\R$ et
$$\psi'(x)=f_0'(x)-1=\frac{-2e^x}{(1+e^x)^2}-1<0,$$
donc $\psi$ est strictement décroissante sur $\R$. De plus $\lim\limits_{-\infty}\psi=+\infty$ et $\lim\limits_{+\infty}\psi=-\infty$. Par le théorème des valeurs intermédiaires (bijection continue strictement monotone), l'équation $\psi(x)=0$ admet une unique solution.
<div class="my-2 font-semibold" style="color:#1F4E79">⇒ $f_0(x)=x$ admet une unique solution $\alpha\in\R$.</div>

**1.b)** \textit{Montrer que $|f_0'(x)|\le\dfrac12$.}

$$|f_0'(x)|=\frac{2e^x}{(1+e^x)^2}=\frac12\cdot\frac{4e^x}{(1+e^x)^2}\le\frac12\quad(\text{d'après I.2.b}).$$

**2.a)** \textit{Inégalité $|u_{n+1}-\alpha|\le\frac12|u_n-\alpha|$.}

\begin{rappel}
Inégalité des accroissements finis : si $|f_0'|\le M$ sur $\R$, alors $|f_0(x)-f_0(y)|\le M\,|x-y|$.
\end{rappel}
Comme $\alpha=f_0(\alpha)$ et $u_{n+1}=f_0(u_n)$ :
$$|u_{n+1}-\alpha|=|f_0(u_n)-f_0(\alpha)|\le\frac12\,|u_n-\alpha|.$$

**2.b)** \textit{En déduire $|u_n-\alpha|\le\left(\frac12\right)^n|\alpha|$.}

Par récurrence : pour $n=0$, $|u_0-\alpha|=|\alpha|=\left(\frac12\right)^0|\alpha|$. Si l'inégalité est vraie au rang $n$, alors
$$|u_{n+1}-\alpha|\le\frac12|u_n-\alpha|\le\frac12\left(\frac12\right)^n|\alpha|=\left(\frac12\right)^{n+1}|\alpha|.$$
<div class="my-2 font-semibold" style="color:#1F4E79">⇒ $|u_n-\alpha|\le\left(\frac12\right)^n|\alpha|$ pour tout $n\in\N$.</div>

**2.c)** \textit{Convergence vers $\alpha$.}

Comme $0<\frac12<1$, $\lim\limits_{n\to+\infty}\left(\frac12\right)^n|\alpha|=0$. Par encadrement $\lim\limits_{n\to+\infty}|u_n-\alpha|=0$.
<div class="my-2 font-semibold" style="color:#1F4E79">⇒ La suite $(u_n)$ converge vers $\alpha$.</div>

<div class="mt-6 mb-2 text-base font-bold" style="color:#1F4E79">Partie III : $n\ge2$, $x_n$ racine de $f_n(x)=0$</div>

**1.a)** \textit{Existence et unicité de $x_n$.}

Pour $n\ge2\ (\ge1)$, $f_n$ est continue et strictement croissante sur $\R$ (I.2.c), avec $\lim\limits_{-\infty}f_n=-\infty$ et $\lim\limits_{+\infty}f_n=+\infty$. C'est donc une bijection de $\R$ sur $\R$.
<div class="my-2 font-semibold" style="color:#1F4E79">⇒ L'équation $f_n(x)=0$ admet une unique solution $x_n$.</div>

**1.b)** \textit{Montrer que $0<x_n<1$.}

$f_n(0)=-1<0$. D'autre part
$$f_n(1)=\frac{-2e}{1+e}+n>n-1{,}47\ge2-1{,}47=0{,}53>0.$$
Donc $f_n(0)<0<f_n(1)$ ; comme $f_n$ est strictement croissante, $0<x_n<1$.

**2.a)** \textit{Montrer que $f_{n+1}(x_n)>0$.}

$f_{n+1}(x)=f_n(x)+x$, donc $f_{n+1}(x_n)=f_n(x_n)+x_n=0+x_n=x_n>0$ (car $x_n>0$).

**2.b)** \textit{$(x_n)$ strictement décroissante.}

$f_{n+1}$ est strictement croissante, $f_{n+1}(x_{n+1})=0$ et $f_{n+1}(x_n)=x_n>0=f_{n+1}(x_{n+1})$. Donc $x_n>x_{n+1}$.
<div class="my-2 font-semibold" style="color:#1F4E79">⇒ La suite $(x_n)_{n\ge2}$ est strictement décroissante.</div>

**2.c)** \textit{Convergence.}

$(x_n)$ est décroissante et minorée par $0$ (car $x_n>0$), donc convergente.

**3.a)** \textit{Encadrement $\dfrac1n<x_n<\dfrac1n\!\left(\dfrac{2e}{1+e}\right)$.}

$f_n(x_n)=0$ donne $nx_n=\dfrac{2e^{x_n}}{1+e^{x_n}}$. La fonction $t\mapsto\dfrac{2e^t}{1+e^t}=\dfrac{2}{1+e^{-t}}$ est strictement croissante, et $0<x_n<1$, donc
$$\frac{2e^0}{1+e^0}<\frac{2e^{x_n}}{1+e^{x_n}}<\frac{2e^1}{1+e^1}\ \Longrightarrow\ 1<nx_n<\frac{2e}{1+e}.$$
En divisant par $n>0$ : $\boxed{\dfrac1n<x_n<\dfrac1n\!\left(\dfrac{2e}{1+e}\right)}$.

**3.b)** \textit{Limites de $x_n$ et $nx_n$.}

De $\dfrac1n<x_n<\dfrac1n\!\left(\dfrac{2e}{1+e}\right)$ et $\dfrac1n\to0$, par encadrement $\lim\limits_{n\to+\infty}x_n=0$.
De $1<nx_n<\dfrac{2e}{1+e}$ : ce n'est pas immédiatement concluant, on revient à l'égalité $nx_n=\dfrac{2e^{x_n}}{1+e^{x_n}}$. Comme $x_n\to0$, $\dfrac{2e^{x_n}}{1+e^{x_n}}\to\dfrac{2}{2}=1$.
<div class="my-2 font-semibold" style="color:#1F4E79">⇒ $\lim\limits_{n\to+\infty}x_n=0$ et $\lim\limits_{n\to+\infty}nx_n=1$.</div>

**4.a)** \textit{Montrer que $x_n\le x_2$.}

La suite $(x_n)_{n\ge2}$ est strictement décroissante, donc pour tout $n\ge2$, $x_n\le x_2$.

**4.b)** \textit{Limite de $(x_n)^n$.}

Pour tout $n\ge2$, $0<x_n\le x_2<1$ (car $x_2<1$), donc $0<(x_n)^n\le(x_2)^n$. Comme $0<x_2<1$, $\lim\limits_{n\to+\infty}(x_2)^n=0$.
<div class="my-2 font-semibold" style="color:#1F4E79">⇒ $\lim\limits_{n\to+\infty}(x_n)^n=\boxed{0}$.</div>

<div class="my-5 rounded-lg px-4 py-2.5 text-white font-bold" style="background:#1F4E79">Exercice 2 — Nombres complexes <span class="font-normal text-white/80 text-sm">(4 points)</span></div>

**1.a)** \textit{Résoudre $(E):z^2-(a+b+c)z+c(a+b)=0$.}

\begin{methode}
On cherche une factorisation : la somme des racines vaut $a+b+c$, leur produit $c(a+b)$. Les nombres $c$ et $a+b$ conviennent.
\end{methode}
$$z^2-(a+b+c)z+c(a+b)=(z-c)\big(z-(a+b)\big).$$
<div class="my-2 font-semibold" style="color:#1F4E79">⇒ $S=\{\,c,\ a+b\,\}$.</div>

**1.b)** \textit{Forme exponentielle pour $a=i$, $b=e^{i\pi/3}$, $c=a-b$.}

Les solutions sont $z_1=c=a-b$ et $z_2=a+b$, avec $a=e^{i\pi/2}$ et $b=e^{i\pi/3}$.
\begin{rappel}
$e^{i\theta}\pm e^{i\varphi}=e^{i\frac{\theta+\varphi}{2}}\big(e^{i\frac{\theta-\varphi}{2}}\pm e^{-i\frac{\theta-\varphi}{2}}\big)$, d'où des facteurs $2\cos$ ou $2i\sin$.
\end{rappel}
Avec $\dfrac{\theta+\varphi}{2}=\dfrac{5\pi}{12}$ et $\dfrac{\theta-\varphi}{2}=\dfrac{\pi}{12}$ :
$$z_2=a+b=2\cos\!\frac{\pi}{12}\,e^{i\frac{5\pi}{12}},\qquad z_1=a-b=2i\sin\!\frac{\pi}{12}\,e^{i\frac{5\pi}{12}}=2\sin\!\frac{\pi}{12}\,e^{i\frac{11\pi}{12}}.$$
<div class="my-2 font-semibold" style="color:#1F4E79">⇒ $z_2=2\cos\frac{\pi}{12}\,e^{i\frac{5\pi}{12}}$ et $z_1=2\sin\frac{\pi}{12}\,e^{i\frac{11\pi}{12}}$.</div>

**2.a)** \textit{Montrer $2p=b+a+(a-b)i$ et $2q=c+a+(c-a)i$.}

\begin{rappel}
La rotation de centre $\omega$ et d'angle $\theta$ envoie $z$ sur $z'$ avec $z'-\omega=e^{i\theta}(z-\omega)$.
\end{rappel}
\textbf{Pour $P$ (angle $\frac\pi2$, $B\mapsto A$) :} $a-p=i(b-p)$, donc $a-ib=p(1-i)$, soit $p=\dfrac{a-ib}{1-i}$. En multipliant par $\dfrac{1+i}{2}$… plus directement, on vérifie : $\dfrac{a+b+(a-b)i}{2}(i-1)$ a pour numérateur
$$ (a+b)(i-1)+(a-b)i(i-1)=2(ib-a),$$
donc $p(i-1)=ib-a$, i.e. $a-ib=p(1-i)$. <div class="my-2 font-semibold" style="color:#1F4E79">⇒ $2p=b+a+(a-b)i$.</div>

\textbf{Pour $Q$ (angle $-\frac\pi2$, $C\mapsto A$) :} $a-q=-i(c-q)$, donc $a+ic=q(1+i)$. On vérifie de même que $\dfrac{a+c+(c-a)i}{2}(1+i)=a+ic$. <div class="my-2 font-semibold" style="color:#1F4E79">⇒ $2q=c+a+(c-a)i$.</div>

**2.b)** \textit{Calcul de $\dfrac{p-d}{q-d}$.}

Avec $d=\dfrac{b+c}{2}$ :
$$p-d=\frac{a-c+(a-b)i}{2},\qquad q-d=\frac{a-b+(c-a)i}{2}.$$
Or $i\big(a-b+(c-a)i\big)=(a-b)i-(c-a)=(a-c)+(a-b)i$, donc le numérateur de $p-d$ vaut $i$ fois celui de $q-d$ :
<div class="my-2 font-semibold" style="color:#1F4E79">⇒ $\dfrac{p-d}{q-d}=\boxed{i}$.</div>

**2.c)** \textit{Nature du triangle $PDQ$.}

$\dfrac{p-d}{q-d}=i$ donne $\left|\dfrac{p-d}{q-d}\right|=1$ (donc $DP=DQ$) et $\arg\dfrac{p-d}{q-d}=\dfrac\pi2$ (donc $\widehat{(\vec{DQ},\vec{DP})}=\dfrac\pi2$).
<div class="my-2 font-semibold" style="color:#1F4E79">⇒ Le triangle $PDQ$ est rectangle isocèle en $D$.</div>

**3.a)** \textit{Affixe de $K$, milieu de $[EF]$.}

$E$ symétrique de $B$ par rapport à $P$ : $e=2p-b=a+(a-b)i$.
$F$ symétrique de $C$ par rapport à $Q$ : $f=2q-c=a+(c-a)i$.
$$k=\frac{e+f}{2}=\frac{2a+(a-b)i+(c-a)i}{2}=a+\frac{i}{2}(c-b).$$
<div class="my-2 font-semibold" style="color:#1F4E79">⇒ $k=a+\dfrac{i}{2}(c-b)$.</div>

**3.b)** \textit{$K$, $P$, $Q$, $D$ cocycliques.}

On calcule :
$$k-p=\frac{a-b+(c-a)i}{2}=q-d,\qquad k-q=\frac{a-c+(a-b)i}{2}=p-d.$$
Donc $\dfrac{k-p}{k-q}=\dfrac{q-d}{p-d}=\dfrac{1}{i}=-i$, qui est un imaginaire pur ; ainsi $\widehat{(\vec{KQ},\vec{KP})}=\dfrac\pi2$.
\begin{remarque}
Le triangle $PDQ$ étant rectangle en $D$, son cercle circonscrit a pour diamètre $[PQ]$. Comme $\widehat{PKQ}=\dfrac\pi2$, le point $K$ voit $[PQ]$ sous un angle droit : il appartient à ce même cercle.
\end{remarque}
<div class="my-2 font-semibold" style="color:#1F4E79">⇒ Les points $K$, $P$, $Q$ et $D$ sont cocycliques (sur le cercle de diamètre $[PQ]$).</div>

<div class="my-5 rounded-lg px-4 py-2.5 text-white font-bold" style="background:#1F4E79">Exercice 3 — Arithmétique <span class="font-normal text-white/80 text-sm">(4 points)</span></div>

<div class="mt-6 mb-2 text-base font-bold" style="color:#1F4E79">Partie I : $(E):47x-43y=1$</div>

**1)** \textit{Vérification.}

$47\times11-43\times12=517-516=1$. <div class="my-2 font-semibold" style="color:#1F4E79">⇒ $(11,12)$ est une solution particulière de $(E)$.</div>

**2)** \textit{Résolution dans $\Z\times\Z$.}

En soustrayant les égalités $47x-43y=1$ et $47\cdot11-43\cdot12=1$ :
$$47(x-11)=43(y-12).$$
$43$ divise $47(x-11)$ et $\gcd(43,47)=1$ (nombres premiers distincts), donc par le théorème de Gauss $43\mid x-11$ : $x=11+43k$, $k\in\Z$. On en tire $y=12+47k$.
<div class="my-2 font-semibold" style="color:#1F4E79">⇒ $S=\{(11+43k,\ 12+47k)\ ;\ k\in\Z\}$.</div>

<div class="mt-6 mb-2 text-base font-bold" style="color:#1F4E79">Partie II : $(F):x^{41}\equiv4\ [43]$</div>

**1.a)** \textit{$x\wedge43=1$ et $x^{42}\equiv1\ [43]$.}

Si $x^{41}\equiv4\ [43]$ et que $43\mid x$, alors $43\mid x^{41}\equiv4$, absurde ($43\nmid4$). Donc $43\nmid x$ ; comme $43$ est premier, $\gcd(x,43)=1$.
\begin{rappel}
Petit théorème de Fermat : si $p$ est premier et $p\nmid x$, alors $x^{p-1}\equiv1\ [p]$.
\end{rappel}
Avec $p=43$ : $\boxed{x^{42}\equiv1\ [43]}$.

**1.b)** \textit{$4x\equiv1\ [43]$ et $x\equiv11\ [43]$.}

En multipliant $(F)$ par $x$ : $x^{42}\equiv4x\ [43]$. Or $x^{42}\equiv1\ [43]$, d'où $4x\equiv1\ [43]$.
Comme $4\times11=44\equiv1\ [43]$, $11$ est l'inverse de $4$ modulo $43$ ; en multipliant $4x\equiv1$ par $11$ : $x\equiv11\ [43]$.

**2)** \textit{Ensemble des solutions de $(F)$.}

Réciproquement, si $x\equiv11\ [43]$ : $x^{42}\equiv1$ (Fermat) donc $x^{41}\equiv x^{-1}\equiv11^{-1}\equiv4\ [43]$. La condition $x\equiv11\ [43]$ est donc équivalente à $(F)$.
<div class="my-2 font-semibold" style="color:#1F4E79">⇒ $S_F=\{11+43k\ ;\ k\in\Z\}$.</div>

<div class="mt-6 mb-2 text-base font-bold" style="color:#1F4E79">Partie III : système $(S)$</div>

**1.a)** \textit{$x$ est solution de $(S')$.}

La première équation $x^{41}\equiv4\ [43]$ équivaut à $x\equiv11\ [43]$ (Partie II). Pour la seconde, $47$ est premier, donc par le petit théorème de Fermat $x^{47}\equiv x\ [47]$ pour tout entier $x$ ; ainsi $x^{47}\equiv10\ [47]$ donne $x\equiv10\ [47]$.
<div class="my-2 font-semibold" style="color:#1F4E79">⇒ $x$ vérifie $\begin{cases}x\equiv11\ [43]\\ x\equiv10\ [47]\end{cases}$</div>

**1.b)** \textit{En déduire $x\equiv527\ [2021]$.}

De $x\equiv11\ [43]$ : $x=11+43k$. La condition $x\equiv10\ [47]$ donne $43k\equiv-1\ [47]$, soit $-4k\equiv-1\ [47]$, donc $4k\equiv1\ [47]$. Comme $4\times12=48\equiv1\ [47]$ (cf. Partie I), $k\equiv12\ [47]$ : $k=12+47k'$.
$$x=11+43(12+47k')=11+516+2021k'=527+2021k'.$$
Comme $2021=43\times47$ : <div class="my-2 font-semibold" style="color:#1F4E79">⇒ $x\equiv527\ [2021]$.</div>

**2)** \textit{Ensemble des solutions de $(S)$.}

Réciproquement, si $x\equiv527\ [2021]$ alors $x\equiv11\ [43]$ (donc $x^{41}\equiv4\ [43]$) et $x\equiv10\ [47]$ (donc $x^{47}\equiv x\equiv10\ [47]$) : $x$ est bien solution de $(S)$.
<div class="my-2 font-semibold" style="color:#1F4E79">⇒ $S_{(S)}=\{527+2021k\ ;\ k\in\Z\}$.</div>
