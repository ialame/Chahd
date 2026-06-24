<div class="my-5 rounded-lg px-4 py-2.5 text-white font-bold" style="background:#1F4E79">Exercice 1 — Analyse <span class="font-normal text-white/80 text-sm">(7,75 points)</span></div>

\textbf{Partie I} \\

**1.a)** Montrer que : $\forall t \in [0,+\infty[ \;;\; \dfrac{4}{(2+t)^2} \le \dfrac{1}{1+t} \le \dfrac{1}{2}\left(1 + \dfrac{1}{(1+t)^2}\right)$.

**1.b)** En déduire que : $\forall x \in [0,+\infty[ \;;\; \dfrac{2x}{2+x} \le \ln(1+x) \le \dfrac{1}{2}\left(\dfrac{x^2 + 2x}{1+x}\right)$.

**2)** Soit $g$ la fonction numérique de la variable réelle $x$ définie sur $]0,+\infty[$ par :
$$ g(x) = \frac{\ln(1+x)}{x} $$
Montrer que : $\lim\limits_{\substack{x \to 0 \\ x > 0}} \dfrac{g(x) - 1}{x} = \dfrac{-1}{2}$.

\textbf{Partie II} \\
Soit $f$ la fonction numérique de la variable réelle $x$ définie sur $[0,+\infty[$ par :
$$ f(0) = 1 \quad \text{et} \quad \forall x \in \;]0,+\infty[ \;;\; f(x) = g(x)\,e^{-x} $$
On note $(C)$ sa courbe représentative dans un repère orthonormé $(O,\vec{i},\vec{j})$.

**1)** Calculer $\lim\limits_{x \to +\infty} f(x)$ puis interpréter graphiquement le résultat obtenu.

**2.a)** Montrer que $f$ est continue à droite en $0$.

**2.b)** Vérifier que : $\forall x \in \;]0,+\infty[ \;;\; \dfrac{f(x) - 1}{x} = \left(\dfrac{e^{-x} - 1}{x}\right) g(x) + \left(\dfrac{g(x) - 1}{x}\right)$.

**2.c)** En déduire que $f$ est dérivable à droite en $0$ et déterminer $f'_d(0)$.

**3)** Montrer que $f$ est dérivable sur $]0,+\infty[$ puis que :
$$ \forall x \in \;]0,+\infty[ \;;\; f'(x) = \frac{x - (1+x)^2 \ln(1+x)}{x^2(1+x)}\, e^{-x} $$

**4.a)** Montrer que : $\forall x \in \;]0,+\infty[ \;;\; -\dfrac{3}{2} < \dfrac{x - (1+x)^2 \ln(1+x)}{x^2(1+x)} < 0$.

**4.b)** En déduire que : $\forall x \in \;]0,+\infty[ \;;\; -\dfrac{3}{2} < f'(x) < 0$.

**5.a)** Dresser le tableau de variations de $f$.

**5.b)** Construire la courbe $(C)$ en faisant apparaître la demi-tangente à droite au point d'abscisse $0$. (On prendra $\|\vec{i}\| = 2\,\text{cm}$).

[figure : courbe $(C)$ de $f$ sur $[0,+\infty[$, décroissante de $f(0)=1$ vers l'asymptote $y=0$, avec la demi-tangente à droite au point $(0,1)$ de pente $-\frac{3}{2}$]

\textbf{Partie III} \\

**1)** Montrer que l'équation d'inconnue $x$ : $f(x) = 3x$ admet une unique solution $\alpha$ dans $]0,+\infty[$.

**2)** Soient $\beta \in \mathbb{R}^+$ et $(u_n)_{n \in \mathbb{N}}$ la suite numérique définie par :
$$ u_0 = \beta \quad \text{et} \quad \forall n \in \mathbb{N} \;;\; u_{n+1} = \frac{1}{3}\, f(u_n) $$

**2.a)** Montrer que : $\forall n \in \mathbb{N} \;;\; u_n \ge 0$.

**2.b)** Montrer que : $\forall n \in \mathbb{N} \;;\; |u_{n+1} - \alpha| \le \dfrac{1}{2}\,|u_n - \alpha|$.

**2.c)** Montrer par récurrence que : $\forall n \in \mathbb{N} \;;\; |u_n - \alpha| \le \dfrac{1}{2^n}\,|\beta - \alpha|$.

**2.d)** En déduire que la suite $(u_n)_{n \in \mathbb{N}}$ converge vers $\alpha$.

<div class="my-5 rounded-lg px-4 py-2.5 text-white font-bold" style="background:#1F4E79">Exercice 2 — Analyse <span class="font-normal text-white/80 text-sm">(2,25 points)</span></div>

On considère la fonction numérique : $x \mapsto e^x$ et soit $(\Gamma)$ sa courbe représentative dans un repère orthonormé $(O,\vec{i},\vec{j})$.
Pour tout $n \in \mathbb{N}^*$ et pour tout $k \in \{0,1,\dots,n\}$, on note $M_k$ le point de la courbe $(\Gamma)$ de coordonnées $\left(\dfrac{k}{n}\,;\, e^{\frac{k}{n}}\right)$.

**1.a)** Montrer que : $\forall k \in \{0,1,\dots,(n-1)\} \;,\; \exists c_k \in \;\left]\dfrac{k}{n}\,;\,\dfrac{k+1}{n}\right[$ tel que : $e^{\frac{k+1}{n}} - e^{\frac{k}{n}} = \dfrac{1}{n}\,e^{c_k}$.

**1.b)** Montrer que : $\forall k \in \{0,1,\dots,(n-1)\} \;;\; M_k M_{k+1} = \dfrac{1}{n}\sqrt{1 + e^{2c_k}}$
($M_k M_{k+1}$ désigne la distance de $M_k$ à $M_{k+1}$).

**1.c)** En déduire que : $\forall k \in \{0,1,\dots,(n-1)\} \;;\; \dfrac{1}{n}\sqrt{1 + e^{\frac{2k}{n}}} \le M_k M_{k+1} \le \dfrac{1}{n}\sqrt{1 + e^{\frac{2(k+1)}{n}}}$.

**2)** Soit $(S_n)_{n \in \mathbb{N}^*}$ la suite numérique définie par : $\forall n \in \mathbb{N}^* \;;\; S_n = \sum\limits_{k=0}^{n-1} M_k M_{k+1}$.

**2.a)** Vérifier que : $\forall n \in \mathbb{N}^* \;;\; \dfrac{1}{n}\sum\limits_{k=0}^{n-1}\sqrt{1 + e^{\frac{2k}{n}}} \le S_n \le \dfrac{1}{n}\sum\limits_{k=1}^{n}\sqrt{1 + e^{\frac{2k}{n}}}$.

**2.b)** En déduire que : $\lim\limits_{n \to +\infty} S_n = \displaystyle\int_0^1 \sqrt{1 + e^{2x}}\,\mathrm{d}x$.

<div class="my-5 rounded-lg px-4 py-2.5 text-white font-bold" style="background:#1F4E79">Exercice 3 — Nombres complexes <span class="font-normal text-white/80 text-sm">(3,5 points)</span></div>

On considère le nombre complexe : $u = 1 + (2 - \sqrt{3})\,i$.

**1.a)** Écrire sous forme exponentielle les nombres complexes : $1 - i$ et $1 + \sqrt{3}\,i$.

**1.b)** Montrer que : $\dfrac{(1-i)(1+\sqrt{3}\,i)}{2\sqrt{2}} = e^{i\frac{\pi}{12}}$.

**1.c)** En déduire que : $\tan\left(\dfrac{\pi}{12}\right) = 2 - \sqrt{3}$.

**1.d)** Montrer que : $u = (\sqrt{6} - \sqrt{2})\, e^{i\frac{\pi}{12}}$.

**2)** On considère les deux suites numériques $(x_n)_{n \in \mathbb{N}}$ et $(y_n)_{n \in \mathbb{N}}$ définies par :
$$ x_0 = 1 \;,\quad y_0 = 0 \quad \text{et} \quad (\forall n \in \mathbb{N}) \;;\; \begin{cases} x_{n+1} = x_n - (2 - \sqrt{3})\,y_n \\ y_{n+1} = (2 - \sqrt{3})\,x_n + y_n \end{cases} $$

**2.a)** Montrer par récurrence que pour tout $n \in \mathbb{N}$ : $x_n + i\,y_n = u^n$.

**2.b)** En déduire que pour tout $n \in \mathbb{N}$ : $x_n = \dfrac{\cos\left(\frac{n\pi}{12}\right)}{\left(\cos\frac{\pi}{12}\right)^n}$ et $y_n = \dfrac{\sin\left(\frac{n\pi}{12}\right)}{\left(\cos\frac{\pi}{12}\right)^n}$.

**3)** Le plan complexe est rapporté à un repère orthonormé direct $(O,\vec{e_1},\vec{e_2})$.
Pour tout entier naturel $n$, on note $A_n$ le point d'affixe $u^n$.

**3.a)** Déterminer les entiers $n$ pour lesquels les points $O$, $A_0$ et $A_n$ sont alignés.

**3.b)** Montrer que pour tout entier $n$, le triangle $OA_n A_{n+1}$ est rectangle en $A_n$.

<div class="my-5 rounded-lg px-4 py-2.5 text-white font-bold" style="background:#1F4E79">Exercice 4 — Arithmétique <span class="font-normal text-white/80 text-sm">(3 points)</span></div>

Soit $p$ un nombre premier impair. On considère dans $\mathbb{Z}$ l'équation $(E) : x^2 \equiv 2 \;[p]$.

**1.a)** Montrer que : $2^{p-1} \equiv 1 \;[p]$.

**1.b)** En déduire que : $2^{\frac{p-1}{2}} \equiv 1 \;[p]$ ou $2^{\frac{p-1}{2}} \equiv -1 \;[p]$.
(On remarque que : $\left(2^{\frac{p-1}{2}} - 1\right)\left(2^{\frac{p-1}{2}} + 1\right) = 2^{p-1} - 1$.)

**2)** Soit $x$ une solution de l'équation $(E)$.

**2.a)** Montrer que $p$ et $x$ sont premiers entre eux.

**2.b)** En déduire que : $2^{\frac{p-1}{2}} \equiv 1 \;[p]$. (On pourra utiliser le théorème de Fermat.)

**3)** Montrer que pour tout $k \in \{1,2,\dots,p-1\}$, $p$ divise $C_p^k$.
(On rappelle que : $\left(\forall k \in \{1,2,\dots,p-1\}\right)$ $C_p^k = \dfrac{p!}{k!\,(p-k)!}$ et que : $k\,C_p^k = p\,C_{p-1}^{k-1}$.)

**4.a)** En utilisant la formule de Moivre, montrer que :
$$ (1+i)^p = 2^{\frac{p}{2}}\cos\left(p\,\frac{\pi}{4}\right) + i\,2^{\frac{p}{2}}\sin\left(p\,\frac{\pi}{4}\right) $$
($i$ étant le nombre complexe tel que $i^2 = -1$).

**4.b)** On admet que : $(1+i)^p = \displaystyle\sum_{k=0}^{\frac{p-1}{2}} (-1)^k C_p^{2k} + i\sum_{k=0}^{\frac{p-1}{2}} (-1)^k C_p^{2k+1}$.
Montrer que : $2^{\frac{p}{2}}\cos\left(p\,\frac{\pi}{4}\right) \in \mathbb{Z}$ et $2^{\frac{p}{2}}\cos\left(p\,\frac{\pi}{4}\right) \equiv 1 \;[p]$. (On pourra utiliser la question 3.)

**5)** En déduire que si $p \equiv 5 \;[8]$ alors l'équation $(E)$ n'admet pas de solution dans $\mathbb{Z}$.

<div class="my-5 rounded-lg px-4 py-2.5 text-white font-bold" style="background:#1F4E79">Exercice 5 — Structures algébriques <span class="font-normal text-white/80 text-sm">(3,5 points)</span></div>

On rappelle que $(M_2(\mathbb{R}),+,\times)$ est un anneau non commutatif de zéro la matrice $O = \begin{pmatrix} 0 & 0 \\ 0 & 0 \end{pmatrix}$ et d'unité la matrice $I = \begin{pmatrix} 1 & 0 \\ 0 & 1 \end{pmatrix}$, et que $(M_2(\mathbb{R}),+,\cdot)$ est un espace vectoriel réel.

On considère l'ensemble $E = \left\{ M(x,y) = \begin{pmatrix} x+y & y \\ 2y & x-y \end{pmatrix} \;/\; (x,y) \in \mathbb{R}^2 \right\}$.

\textbf{Partie I} \\

**1)** Montrer que $E$ est un sous-groupe de $(M_2(\mathbb{R}),+)$.

**2)** Montrer que $E$ est un sous-espace vectoriel de $(M_2(\mathbb{R}),+,\cdot)$.

**3.a)** Vérifier que : $\forall (x,y,x',y') \in \mathbb{R}^4 \;;\; M(x,y) \times M(x',y') = M(xx' + 3yy'\,,\, xy' + yx')$.

**3.b)** En déduire que $(E,+,\times)$ est un anneau commutatif et unitaire.

**4.a)** Vérifier que : $M(\sqrt{3},1) \times M(-\sqrt{3},1) = O$.

**4.b)** En déduire que $(E,+,\times)$ n'est pas un corps.

\textbf{Partie II} \\

Soient $F = \left\{ x + y\sqrt{3} \;/\; (x,y) \in \mathbb{R}^2 \right\}$ et $G = \left\{ M(x,y) = \begin{pmatrix} x+y & y \\ 2y & x-y \end{pmatrix} \;/\; (x,y) \in \mathbb{R}^2 \right\}$.

**1)** Montrer que : $\forall (x,y) \in \mathbb{Q}^2 \;;\; x + y\sqrt{3} = 0$ si et seulement si $(x = 0$ et $y = 0)$.

**2)** Montrer que $F - \{0\}$ est un sous-groupe de $(\mathbb{R}^*,\times)$.

**3)** Soit $\varphi$ l'application définie de $F - \{0\}$ vers $E$ par :
$$ \forall (x,y) \in \mathbb{Q}^2 - \{(0,0)\} \;;\; \varphi(x + y\sqrt{3}) = M(x,y) $$

**3.a)** Vérifier que : $\varphi(F - \{0\}) = G - \{O\}$.

**3.b)** Montrer que $\varphi$ est un homomorphisme de $(F - \{0\},\times)$ vers $(E,\times)$.

**3.c)** En déduire que $(G - \{O\},\times)$ est un groupe commutatif.

**4)** Montrer que $(G,+,\times)$ est un corps commutatif.
