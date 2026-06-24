<div class="my-5 rounded-lg px-4 py-2.5 text-white font-bold" style="background:#1F4E79">Exercice 1 <span class="font-normal text-white/80 text-sm">(6.5 points)</span></div>
        Soit $n$ un entier naturel supérieur ou égal à $2$.
        On considère la fonction numérique $f_n$ définie sur $[0,+\infty[$ par :
        \[ f_n(0)=0 \quad \text{et} \quad \forall x\in\,]0,+\infty[\ ;\quad f_n(x)=x-x^n\ln x. \]
        On note $(C_n)$ sa courbe représentative dans un repère orthonormé.

**1.a)** Montrer que $f_n$ est continue à droite en $0$.

**1.b)** Montrer que $\lim\limits_{x\to+\infty}f_n(x)=-\infty$ et $\lim\limits_{x\to+\infty}\dfrac{f_n(x)}{x}=-\infty$, puis interpréter graphiquement le résultat obtenu.

**1.c)** Montrer que $f_n$ est dérivable à droite en $0$ et que son nombre dérivé à droite en $0$ est égal à $1$.

**1.d)** Montrer que $f_n$ est dérivable sur $]0,+\infty[$ et que :
\[ \forall x\in\,]0,+\infty[\ ;\quad f_n'(x)=1-x^{n-1}-nx^{n-1}\ln x. \]

**1.e)** Montrer que $f_n$ est strictement croissante sur $[0,1]$ et strictement décroissante sur $[1,+\infty[$.

**2.a)** Montrer que pour tout entier $n\ge 2$, on a : $\forall x\in[0,+\infty[\ ;\ f_{n+1}(x)\le f_n(x)$.

**2.b)** En déduire la position relative des deux courbes $(C_n)$ et $(C_{n+1})$.

**3.a)** Montrer que pour tout $n\ge 2$, il existe un unique réel $\alpha_n\in\,]1,2[$ tel que $f_n(\alpha_n)=0$ (on prendra $\ln 2=0{,}7$).

**3.b)** Vérifier que $(\forall n\ge 2)\quad \alpha_{n+1}^{\,n}\ln\alpha_{n+1}=1$.

**3.c)** En déduire que pour tout $n\ge 2$, $f_n(\alpha_{n+1})=\alpha_{n+1}-1$.

**3.d)** Montrer que la suite $(\alpha_n)_{n\ge 2}$ ainsi définie est strictement décroissante.

**3.e)** En déduire que la suite $(\alpha_n)_{n\ge 2}$ est convergente.

**4)** On pose : $\ell=\lim\limits_{n\to+\infty}\alpha_n$.

**4.a)** Montrer que $1\le\ell\le 2$.

**4.b)** Montrer que pour tout $n\ge 2$, $\ n-1=-\dfrac{\ln(\ln(\alpha_n))}{\ln(\alpha_n)}$.

**4.c)** On suppose que $\ell>1$. Calculer $\lim\limits_{n\to+\infty}\dfrac{\ln(\ln(\alpha_n))}{\ln(\alpha_n)}$ en fonction de $\ell$.

**4.d)** En déduire la valeur de la limite $\ell$.

<div class="my-5 rounded-lg px-4 py-2.5 text-white font-bold" style="background:#1F4E79">Exercice 2 <span class="font-normal text-white/80 text-sm">(3.5 points)</span></div>

**1.a)** Calculer l'intégrale : $\displaystyle\int_0^1\dfrac{1}{1+x^2}\,\mathrm{d}x$.

**1.b)** Pour tout entier $n\ge 1$, on pose : $u_n=\displaystyle\sum_{k=1}^{k=n}\dfrac{n}{n^2+k^2}$.
        Montrer que la suite $(u_n)_{n\ge 1}$ est convergente puis déterminer sa limite.

**2)** Montrer que : $\displaystyle\int_0^1\dfrac{1}{\left(1+x^2\right)^2}\,\mathrm{d}x\le 1$.

**3.a)** Montrer que : $(\forall x\in[0,1])\ ;\quad 0\le e^x-1\le e\,x$.

**3.b)** En déduire que : $(\forall x\in[0,1])\ ;\quad 0\le e^x-1-x\le\dfrac{e}{2}x^2$.

**4)** Pour tout entier $n\ge 1$, on pose : $w_n=\displaystyle\sum_{k=1}^{k=n}\left(e^{\frac{n}{n^2+k^2}}-1\right)$.

**4.a)** Montrer que pour tout entier $n\ge 1$, on a : $0\le w_n-u_n\le\dfrac{e}{2}\displaystyle\sum_{k=1}^{k=n}\left(\dfrac{n}{n^2+k^2}\right)^2$.

**4.b)** Montrer que la fonction $x\mapsto\left(1+x^2\right)^{-2}$ est strictement décroissante sur $[0,1]$.

**4.c)** En déduire que pour tout entier $n\ge 1$ et pour tout entier $k\in\{1,2,\dots,n\}$, on a :
\[ \dfrac{1}{n}\left(1+\left(\dfrac{k}{n}\right)^2\right)^{-2}\le\int_{\frac{k-1}{n}}^{\frac{k}{n}}\left(1+x^2\right)^{-2}\,\mathrm{d}x. \]

**5.a)** Montrer que pour tout entier $n\ge 1$, on a : $0\le w_n-u_n\le\dfrac{e}{2n}$.

**5.b)** En déduire que la suite $(w_n)_{n\ge 1}$ est convergente et déterminer sa limite.

<div class="my-5 rounded-lg px-4 py-2.5 text-white font-bold" style="background:#1F4E79">Exercice 3 <span class="font-normal text-white/80 text-sm">(3.5 points)</span></div>
        Soit $m\in\mathbb{C}^*$.
        \textbf{Partie I :} On considère dans $\mathbb{C}$ l'équation d'inconnue $z$ :
        \[ (E)\ :\ z^2-(2+i)mz+m^2(1+i)=0. \]

**1.a)** Vérifier que le discriminant de l'équation $(E)$ est $\Delta=(im)^2$.

**1.b)** Résoudre dans $\mathbb{C}$ l'équation $(E)$.

**2)** Soient $z_1$ et $z_2$ les deux solutions de $(E)$.
        Mettre sous la forme exponentielle $z_1z_2$ dans le cas où $m=re^{i\theta}$ ($r\in\mathbb{R}_+^*$, $\theta\in\mathbb{R}$).

        \textbf{Partie II :} Le plan complexe est rapporté à un repère orthonormé direct $(O,\vec{e_1},\vec{e_2})$.
        On pose $z_1=m$ et $z_2=m(1+i)$.
        Soit $M_1$ le point d'affixe $z_1$, $M_2$ le point d'affixe $z_2$ et $M_3(z_3)$ l'image du point $O$ par la rotation de centre $M_2$ et d'angle $\left(-\dfrac{\pi}{2}\right)$, et $M_4(z_4)$ l'image du point $M_1$ par l'homothétie de centre $O$ et de rapport $k$ ($k\in\mathbb{R}^*-\{1\}$).

**1)** Calculer $z_3$ en fonction de $m$ et $z_4$ en fonction de $m$ et $k$.

**2)** Donner la forme algébrique de $\dfrac{z_4-z_2}{z_4-z_1}\times\dfrac{z_3-z_1}{z_3-z_2}$.

**3)** En déduire que les points $M_1$, $M_2$, $M_3$ et $M_4$ sont cocycliques si et seulement si $k=-2$.

<div class="my-5 rounded-lg px-4 py-2.5 text-white font-bold" style="background:#1F4E79">Exercice 4 <span class="font-normal text-white/80 text-sm">(3.5 points)</span></div>
        On munit l'ensemble $\mathbb{C}$ des nombres complexes de la loi de composition interne $*$ définie par :
        \[ \forall(x,x',y,y')\in\mathbb{R}^4\ ;\quad (x+iy)*(x'+iy')=(xy'+y^5x')+iyy'. \]
        \textbf{Partie I :}

**1.a)** Vérifier que $1*2i=2$.

**1.b)** Montrer que la loi de composition interne $*$ n'est pas commutative.

**2)** Montrer que la loi $*$ est associative.

**3.a)** Vérifier que $1*(1+2i)=2$.

**3.b)** En déduire que $(\mathbb{C},*)$ n'est pas un groupe.

**4)** Soit $E$ le sous-ensemble de $\mathbb{C}$ défini par $E=\{x+yi\ /\ x\in\mathbb{R}\ \text{et}\ y\in\mathbb{R}^*\}$.

**4.a)** Montrer que $E$ est stable dans $(\mathbb{C},*)$.

**4.b)** Montrer que $(E,*)$ est un groupe non commutatif.

        \textbf{Partie II :}
        On considère les sous-ensembles de $E$ définis par : $F=\{yi\ /\ y\in\mathbb{R}^*\}$ et $G=\{x+i\ /\ x\in\mathbb{R}\}$.

**1)** Montrer que $F$ est un sous-groupe de $(E,*)$.

**2)** On considère l'application $\varphi$ définie de $\mathbb{R}$ vers $\mathbb{C}$ par : $(\forall x\in\mathbb{R})\ ;\ \varphi(x)=x+i$.

**2.a)** Montrer que $\varphi(\mathbb{R})=G$.

**2.b)** Montrer que $\varphi$ est un homomorphisme de $(\mathbb{R},+)$ vers $(\mathbb{C},*)$.

**2.c)** En déduire que $(G,*)$ est un groupe commutatif.

<div class="my-5 rounded-lg px-4 py-2.5 text-white font-bold" style="background:#1F4E79">Exercice 5 <span class="font-normal text-white/80 text-sm">(3 points)</span></div>

**1)** En utilisant l'algorithme d'Euclide, déterminer l'entier $u\in\{1,2,\dots,22\}$ tel que : $10u\equiv 1\ [23]$.

**2)** Soient $m$ un entier naturel et $q$ et $r$, respectivement, le quotient et le reste de la division euclidienne de $m$ par $10$.

**2.a)** Montrer que : $m\equiv 10(q+ur)\ [23]$.

**2.b)** Montrer que : $23$ divise $m\iff 23$ divise $(q+ur)$.

**3)** On considère dans $\mathbb{N}$ le système $(S):\begin{cases} x\equiv 1\ [23] \\ x\equiv 2\ [10] \end{cases}$

**3.a)** Montrer que si $x$ est une solution du système $(S)$ alors il existe $q\in\mathbb{N}$ tel que $x=10q+2$ et $23$ divise $(q+7)$.

**3.b)** Résoudre dans $\mathbb{N}$ le système $(S)$.
