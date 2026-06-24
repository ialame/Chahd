<div class="my-5 rounded-lg px-4 py-2.5 text-white font-bold" style="background:#1F4E79">Exercice 1 — Analyse <span class="font-normal text-white/80 text-sm">(7,75 points)</span></div>

<div class="mt-6 mb-2 text-base font-bold" style="color:#1F4E79">Partie I</div>

**1.a)** \textit{Montrer la double inégalité.}

Soit $t \in [0,+\infty[$. On a $1+t > 0$ et $2+t > 0$.

Inégalité de gauche : $\dfrac{4}{(2+t)^2} \le \dfrac{1}{1+t}$ équivaut à $4(1+t) \le (2+t)^2$, soit $4 + 4t \le 4 + 4t + t^2$, c'est-à-dire $0 \le t^2$, vrai.

Inégalité de droite : $\dfrac{1}{1+t} \le \dfrac{1}{2}\left(1 + \dfrac{1}{(1+t)^2}\right)$ équivaut à $\dfrac{2}{1+t} \le 1 + \dfrac{1}{(1+t)^2}$, soit (en multipliant par $(1+t)^2 > 0$) $2(1+t) \le (1+t)^2 + 1$, c'est-à-dire $0 \le (1+t)^2 - 2(1+t) + 1 = \big((1+t)-1\big)^2 = t^2$, vrai.
<div class="my-2 font-semibold" style="color:#1F4E79">⇒ $\dfrac{4}{(2+t)^2} \le \dfrac{1}{1+t} \le \dfrac{1}{2}\left(1 + \dfrac{1}{(1+t)^2}\right)$ pour tout $t \ge 0$.</div>

**1.b)** \textit{En déduire l'encadrement de $\ln(1+x)$.}

Soit $x \ge 0$. On intègre la double inégalité de **1.a)** sur $[0,x]$ (les fonctions sont continues).
$$ \int_0^x \frac{4}{(2+t)^2}\,\mathrm{d}t \le \int_0^x \frac{\mathrm{d}t}{1+t} \le \int_0^x \frac{1}{2}\left(1 + \frac{1}{(1+t)^2}\right)\mathrm{d}t. $$
Or :
$$ \int_0^x \frac{4}{(2+t)^2}\,\mathrm{d}t = \left[\frac{-4}{2+t}\right]_0^x = 2 - \frac{4}{2+x} = \frac{2x}{2+x}, $$
$$ \int_0^x \frac{\mathrm{d}t}{1+t} = \ln(1+x), $$
$$ \int_0^x \frac{1}{2}\left(1 + \frac{1}{(1+t)^2}\right)\mathrm{d}t = \frac{1}{2}\left[t - \frac{1}{1+t}\right]_0^x = \frac{1}{2}\left(x - \frac{1}{1+x} + 1\right) = \frac{1}{2}\cdot\frac{x(1+x) + x}{1+x} = \frac{1}{2}\cdot\frac{x^2 + 2x}{1+x}. $$
<div class="my-2 font-semibold" style="color:#1F4E79">⇒ $\dfrac{2x}{2+x} \le \ln(1+x) \le \dfrac{1}{2}\,\dfrac{x^2 + 2x}{1+x}$ pour tout $x \ge 0$.</div>

**2)** \textit{Montrer que $\lim\limits_{x \to 0^+} \dfrac{g(x) - 1}{x} = -\dfrac{1}{2}$.}

Pour $x > 0$, $g(x) = \dfrac{\ln(1+x)}{x}$, donc :
$$ \frac{g(x) - 1}{x} = \frac{\ln(1+x) - x}{x^2}. $$
On encadre $\ln(1+x) - x$ à l'aide de **1.b)**. En retranchant $x$ :
$$ \frac{2x}{2+x} - x \le \ln(1+x) - x \le \frac{1}{2}\,\frac{x^2+2x}{1+x} - x. $$
Calcul des bornes :
$$ \frac{2x}{2+x} - x = \frac{2x - x(2+x)}{2+x} = \frac{-x^2}{2+x}, \qquad \frac{1}{2}\,\frac{x^2+2x}{1+x} - x = \frac{x^2 + 2x - 2x(1+x)}{2(1+x)} = \frac{-x^2}{2(1+x)}. $$
On divise par $x^2 > 0$ :
$$ \frac{-1}{2+x} \le \frac{\ln(1+x) - x}{x^2} \le \frac{-1}{2(1+x)}. $$
Quand $x \to 0^+$, $\dfrac{-1}{2+x} \to -\dfrac{1}{2}$ et $\dfrac{-1}{2(1+x)} \to -\dfrac{1}{2}$. Par le théorème des gendarmes :
<div class="my-2 font-semibold" style="color:#1F4E79">⇒ $\lim\limits_{x \to 0^+} \dfrac{g(x) - 1}{x} = \boxed{-\dfrac{1}{2}}$.</div>

<div class="mt-6 mb-2 text-base font-bold" style="color:#1F4E79">Partie II</div>

**1)** \textit{Calculer $\lim\limits_{x \to +\infty} f(x)$ et interpréter.}

Pour $x > 0$, $f(x) = g(x)\,e^{-x} = \dfrac{\ln(1+x)}{x}\,e^{-x}$. Quand $x \to +\infty$, $\dfrac{\ln(1+x)}{x} \to 0$ (croissances comparées) et $e^{-x} \to 0$, donc :
$$ \lim_{x \to +\infty} f(x) = 0. $$
<div class="my-2 font-semibold" style="color:#1F4E79">⇒ La droite d'équation $y = 0$ (axe des abscisses) est asymptote horizontale à $(C)$ au voisinage de $+\infty$.</div>

**2.a)** \textit{Continuité de $f$ à droite en $0$.}

Pour $x > 0$, $f(x) = \dfrac{\ln(1+x)}{x}\,e^{-x}$. Comme $\lim\limits_{x \to 0^+} \dfrac{\ln(1+x)}{x} = 1$ et $\lim\limits_{x\to 0^+} e^{-x} = 1$, on a $\lim\limits_{x \to 0^+} f(x) = 1 = f(0)$.
<div class="my-2 font-semibold" style="color:#1F4E79">⇒ $f$ est continue à droite en $0$.</div>

**2.b)** \textit{Vérifier l'égalité.}

Pour $x > 0$, $f(x) = g(x)\,e^{-x}$ et $f(0) = 1$, donc :
$$ \frac{f(x) - 1}{x} = \frac{g(x)\,e^{-x} - 1}{x}. $$
On écrit $g(x)\,e^{-x} - 1 = g(x)\,e^{-x} - g(x) + g(x) - 1 = g(x)\,(e^{-x} - 1) + (g(x) - 1)$. En divisant par $x$ :
$$ \frac{f(x) - 1}{x} = \left(\frac{e^{-x} - 1}{x}\right) g(x) + \left(\frac{g(x) - 1}{x}\right). $$
<div class="my-2 font-semibold" style="color:#1F4E79">⇒ Égalité vérifiée.</div>

**2.c)** \textit{Dérivabilité à droite en $0$ et calcul de $f'_d(0)$.}

Quand $x \to 0^+$ : $\dfrac{e^{-x} - 1}{x} \to -1$ (taux d'accroissement de $t\mapsto e^{-t}$ en $0$), $g(x) \to 1$, et d'après **I.2)** $\dfrac{g(x)-1}{x} \to -\dfrac{1}{2}$. Donc :
$$ \lim_{x \to 0^+} \frac{f(x) - 1}{x} = (-1)\cdot 1 + \left(-\frac{1}{2}\right) = -\frac{3}{2}. $$
<div class="my-2 font-semibold" style="color:#1F4E79">⇒ $f$ est dérivable à droite en $0$ et $\boxed{f'_d(0) = -\dfrac{3}{2}}$.</div>

**3)** \textit{Dérivabilité de $f$ sur $]0,+\infty[$ et expression de $f'$.}

Sur $]0,+\infty[$, $f(x) = \dfrac{\ln(1+x)}{x}\,e^{-x}$ est un produit/quotient de fonctions dérivables, avec $x \ne 0$ : $f$ est dérivable.

Posons $g(x) = \dfrac{\ln(1+x)}{x}$. Alors :
$$ g'(x) = \frac{\dfrac{x}{1+x} - \ln(1+x)}{x^2} = \frac{x - (1+x)\ln(1+x)}{x^2(1+x)}. $$
Comme $f = g\cdot e^{-x}$, $f' = g'\,e^{-x} - g\,e^{-x} = (g' - g)\,e^{-x}$. Or :
$$ g' - g = \frac{x - (1+x)\ln(1+x)}{x^2(1+x)} - \frac{\ln(1+x)}{x} = \frac{x - (1+x)\ln(1+x) - x(1+x)\ln(1+x)}{x^2(1+x)}. $$
Le numérateur vaut $x - (1+x)\ln(1+x)\big(1 + x\big) = x - (1+x)^2\ln(1+x)$. D'où :
$$ f'(x) = \frac{x - (1+x)^2\ln(1+x)}{x^2(1+x)}\, e^{-x}. $$
<div class="my-2 font-semibold" style="color:#1F4E79">⇒ Pour tout $x > 0$ : $\boxed{f'(x) = \dfrac{x - (1+x)^2\ln(1+x)}{x^2(1+x)}\, e^{-x}}$.</div>

**4.a)** \textit{Montrer que $-\dfrac{3}{2} < \dfrac{x - (1+x)^2\ln(1+x)}{x^2(1+x)} < 0$ sur $]0,+\infty[$.}

Notons $\Phi(x) = \dfrac{x - (1+x)^2\ln(1+x)}{x^2(1+x)}$. On peut écrire, en utilisant $g'(x) = \dfrac{x-(1+x)\ln(1+x)}{x^2(1+x)}$ et la relation $f' = (g'-g)e^{-x}$, que $\Phi(x) = g'(x) - g(x) = \dfrac{f'(x)}{e^{-x}}$. Mais le plus simple est d'encadrer directement.

D'après **I.1.b)**, pour $x > 0$ : $\dfrac{2x}{2+x} \le \ln(1+x) \le \dfrac{x^2+2x}{2(1+x)}$.

\textbf{Borne supérieure ($\Phi(x) < 0$).} Comme $\ln(1+x) \ge \dfrac{2x}{2+x} > 0$, on a $x - (1+x)^2\ln(1+x) \le x - (1+x)^2\dfrac{2x}{2+x}$. Or
$$ x - \frac{2x(1+x)^2}{2+x} = \frac{x(2+x) - 2x(1+x)^2}{2+x} = \frac{x\big[(2+x) - 2(1+x)^2\big]}{2+x} = \frac{x\big[2 + x - 2 - 4x - 2x^2\big]}{2+x} = \frac{x(-3x - 2x^2)}{2+x} = \frac{-x^2(3 + 2x)}{2+x} < 0. $$
Donc $x - (1+x)^2\ln(1+x) < 0$, et comme $x^2(1+x) > 0$, on a $\Phi(x) < 0$.

\textbf{Borne inférieure ($\Phi(x) > -\dfrac{3}{2}$).} On utilise $\ln(1+x) \le \dfrac{x^2+2x}{2(1+x)}$, donc $x - (1+x)^2\ln(1+x) \ge x - (1+x)^2\cdot\dfrac{x^2+2x}{2(1+x)} = x - \dfrac{(1+x)(x^2+2x)}{2} = x - \dfrac{x(1+x)(x+2)}{2}$.

Ainsi :
$$ \Phi(x) \ge \frac{x - \dfrac{x(1+x)(x+2)}{2}}{x^2(1+x)} = \frac{x\Big(1 - \dfrac{(1+x)(x+2)}{2}\Big)}{x^2(1+x)} = \frac{2 - (1+x)(x+2)}{2x(1+x)}. $$
Or $(1+x)(x+2) = x^2 + 3x + 2$, donc $2 - (1+x)(x+2) = -x^2 - 3x = -x(x+3)$. D'où :
$$ \Phi(x) \ge \frac{-x(x+3)}{2x(1+x)} = \frac{-(x+3)}{2(1+x)}. $$
Il reste à vérifier $\dfrac{-(x+3)}{2(1+x)} > -\dfrac{3}{2}$, soit $\dfrac{x+3}{1+x} < 3$, c'est-à-dire $x + 3 < 3(1+x) = 3 + 3x$, soit $0 < 2x$, vrai pour $x > 0$. Donc $\Phi(x) > -\dfrac{3}{2}$.
<div class="my-2 font-semibold" style="color:#1F4E79">⇒ $-\dfrac{3}{2} < \dfrac{x - (1+x)^2\ln(1+x)}{x^2(1+x)} < 0$ pour tout $x > 0$.</div>

**4.b)** \textit{En déduire $-\dfrac{3}{2} < f'(x) < 0$.}

Pour $x > 0$, $f'(x) = \Phi(x)\,e^{-x}$ avec $0 < e^{-x} < 1$ et $-\dfrac{3}{2} < \Phi(x) < 0$. Comme $\Phi(x) < 0$, multiplier par $0 < e^{-x} < 1$ donne $\Phi(x) < f'(x) < 0$ (le produit d'un négatif par un facteur de $]0,1[$ est plus grand que ce négatif). Donc :
$$ -\frac{3}{2} < \Phi(x) < f'(x) < 0. $$
<div class="my-2 font-semibold" style="color:#1F4E79">⇒ $-\dfrac{3}{2} < f'(x) < 0$ pour tout $x > 0$.</div>

**5.a)** \textit{Tableau de variations de $f$.}

$f$ est continue sur $[0,+\infty[$, dérivable sur $]0,+\infty[$ avec $f'(x) < 0$ : $f$ est strictement décroissante sur $[0,+\infty[$, de $f(0) = 1$ vers $\lim\limits_{+\infty} f = 0$.

[figure : tableau de variations — $x$ de $0$ à $+\infty$ ; $f'(x) < 0$ ; $f$ décroît de $f(0)=1$ à $0^+$]

**5.b)** \textit{Construction de $(C)$.}

La courbe part du point $(0,1)$, décroît strictement, est asymptote à l'axe $(Ox)$ en $+\infty$. La demi-tangente à droite en $0$ a pour pente $f'_d(0) = -\dfrac{3}{2}$.

[figure : courbe $(C)$ décroissante de $(0,1)$ vers l'asymptote $y=0$, avec demi-tangente à droite de pente $-\frac{3}{2}$ ; unité $\|\vec{i}\| = 2\,\text{cm}$]

<div class="mt-6 mb-2 text-base font-bold" style="color:#1F4E79">Partie III</div>

**1)** \textit{Existence et unicité de $\alpha$.}

Posons $\psi(x) = f(x) - 3x$ sur $[0,+\infty[$. $\psi$ est continue, et dérivable sur $]0,+\infty[$ avec $\psi'(x) = f'(x) - 3 < 0$ (car $f'(x) < 0$). $\psi$ est donc strictement décroissante. De plus $\psi(0) = f(0) - 0 = 1 > 0$ et $\lim\limits_{x\to+\infty}\psi(x) = 0 - \infty = -\infty < 0$.

$\psi$ continue strictement décroissante réalise une bijection de $[0,+\infty[$ sur $]-\infty, 1]$, qui contient $0$.
<div class="my-2 font-semibold" style="color:#1F4E79">⇒ L'équation $f(x) = 3x$ admet une unique solution $\alpha \in \;]0,+\infty[$.</div>

**2.a)** \textit{Montrer que $u_n \ge 0$ pour tout $n$.}

Par récurrence : $u_0 = \beta \ge 0$. Si $u_n \ge 0$, alors $u_n \in [0,+\infty[$ où $f$ est définie et $f(u_n) > 0$ (car $f \ge \lim_{+\infty} f$... plus précisément $f$ est strictement positive sur $[0,+\infty[$ : $f(0)=1$ et $f(x) = \dfrac{\ln(1+x)}{x}e^{-x} > 0$ pour $x>0$). Donc $u_{n+1} = \dfrac{1}{3}f(u_n) > 0 \ge 0$.
<div class="my-2 font-semibold" style="color:#1F4E79">⇒ $u_n \ge 0$ pour tout $n \in \mathbb{N}$.</div>

**2.b)** \textit{Montrer que $|u_{n+1} - \alpha| \le \dfrac{1}{2}|u_n - \alpha|$.}

Posons $\theta(x) = \dfrac{1}{3}f(x)$ sur $[0,+\infty[$. Alors $\theta'(x) = \dfrac{1}{3}f'(x)$ et, par **II.4.b)**, $-\dfrac{1}{2} < \theta'(x) < 0$, donc $|\theta'(x)| < \dfrac{1}{2}$ sur $]0,+\infty[$.

Comme $\alpha$ vérifie $f(\alpha) = 3\alpha$, on a $\theta(\alpha) = \dfrac{1}{3}f(\alpha) = \alpha$ : $\alpha$ est point fixe de $\theta$. Par l'inégalité des accroissements finis appliquée à $\theta$ entre $u_n$ et $\alpha$ :
$$ |u_{n+1} - \alpha| = |\theta(u_n) - \theta(\alpha)| \le \frac{1}{2}\,|u_n - \alpha|. $$
<div class="my-2 font-semibold" style="color:#1F4E79">⇒ $|u_{n+1} - \alpha| \le \dfrac{1}{2}\,|u_n - \alpha|$.</div>

**2.c)** \textit{Montrer par récurrence que $|u_n - \alpha| \le \dfrac{1}{2^n}|\beta - \alpha|$.}

Pour $n = 0$ : $|u_0 - \alpha| = |\beta - \alpha| = \dfrac{1}{2^0}|\beta - \alpha|$, vrai. Supposons l'inégalité vraie au rang $n$. Alors, par **2.b)** :
$$ |u_{n+1} - \alpha| \le \frac{1}{2}|u_n - \alpha| \le \frac{1}{2}\cdot\frac{1}{2^n}|\beta - \alpha| = \frac{1}{2^{n+1}}|\beta - \alpha|. $$
<div class="my-2 font-semibold" style="color:#1F4E79">⇒ $|u_n - \alpha| \le \dfrac{1}{2^n}|\beta - \alpha|$ pour tout $n \in \mathbb{N}$.</div>

**2.d)** \textit{En déduire la convergence.}

Comme $\dfrac{1}{2^n} \to 0$, on a $\dfrac{1}{2^n}|\beta - \alpha| \to 0$, donc $|u_n - \alpha| \to 0$.
<div class="my-2 font-semibold" style="color:#1F4E79">⇒ La suite $(u_n)$ converge vers $\alpha$.</div>

<div class="my-5 rounded-lg px-4 py-2.5 text-white font-bold" style="background:#1F4E79">Exercice 2 — Analyse <span class="font-normal text-white/80 text-sm">(2,25 points)</span></div>

**1.a)** \textit{Montrer l'existence de $c_k$.}

La fonction $x \mapsto e^x$ est continue sur $\left[\dfrac{k}{n},\dfrac{k+1}{n}\right]$ et dérivable sur l'intervalle ouvert. Par le théorème des accroissements finis, il existe $c_k \in \;\left]\dfrac{k}{n},\dfrac{k+1}{n}\right[$ tel que :
$$ e^{\frac{k+1}{n}} - e^{\frac{k}{n}} = \left(\frac{k+1}{n} - \frac{k}{n}\right) e^{c_k} = \frac{1}{n}\,e^{c_k}. $$
<div class="my-2 font-semibold" style="color:#1F4E79">⇒ $\exists\, c_k \in \;\left]\dfrac{k}{n},\dfrac{k+1}{n}\right[$ tel que $e^{\frac{k+1}{n}} - e^{\frac{k}{n}} = \dfrac{1}{n}e^{c_k}$.</div>

**1.b)** \textit{Calculer $M_k M_{k+1}$.}

$M_k\left(\dfrac{k}{n}, e^{\frac{k}{n}}\right)$ et $M_{k+1}\left(\dfrac{k+1}{n}, e^{\frac{k+1}{n}}\right)$. Donc :
$$ M_k M_{k+1} = \sqrt{\left(\frac{k+1}{n} - \frac{k}{n}\right)^2 + \left(e^{\frac{k+1}{n}} - e^{\frac{k}{n}}\right)^2} = \sqrt{\frac{1}{n^2} + \frac{1}{n^2}e^{2c_k}} = \frac{1}{n}\sqrt{1 + e^{2c_k}}. $$
<div class="my-2 font-semibold" style="color:#1F4E79">⇒ $M_k M_{k+1} = \dfrac{1}{n}\sqrt{1 + e^{2c_k}}$.</div>

**1.c)** \textit{En déduire l'encadrement.}

Comme $\dfrac{k}{n} < c_k < \dfrac{k+1}{n}$ et $t \mapsto e^{2t}$ est croissante : $e^{\frac{2k}{n}} < e^{2c_k} < e^{\frac{2(k+1)}{n}}$. En ajoutant $1$, en prenant la racine et en divisant par $n > 0$ :
$$ \frac{1}{n}\sqrt{1 + e^{\frac{2k}{n}}} \le M_k M_{k+1} \le \frac{1}{n}\sqrt{1 + e^{\frac{2(k+1)}{n}}}. $$
<div class="my-2 font-semibold" style="color:#1F4E79">⇒ Encadrement établi.</div>

**2.a)** \textit{Encadrer $S_n$.}

En sommant l'encadrement de **1.c)** pour $k$ de $0$ à $n-1$ :
$$ \frac{1}{n}\sum_{k=0}^{n-1}\sqrt{1 + e^{\frac{2k}{n}}} \le \sum_{k=0}^{n-1} M_k M_{k+1} \le \frac{1}{n}\sum_{k=0}^{n-1}\sqrt{1 + e^{\frac{2(k+1)}{n}}}. $$
Dans la somme de droite, le changement d'indice $j = k+1$ (de $1$ à $n$) donne $\dfrac{1}{n}\sum\limits_{k=1}^{n}\sqrt{1 + e^{\frac{2k}{n}}}$. Comme $S_n = \sum\limits_{k=0}^{n-1} M_k M_{k+1}$ :
$$ \frac{1}{n}\sum_{k=0}^{n-1}\sqrt{1 + e^{\frac{2k}{n}}} \le S_n \le \frac{1}{n}\sum_{k=1}^{n}\sqrt{1 + e^{\frac{2k}{n}}}. $$
<div class="my-2 font-semibold" style="color:#1F4E79">⇒ Encadrement de $S_n$ établi.</div>

**2.b)** \textit{En déduire $\lim S_n$.}

Posons $\varphi(x) = \sqrt{1 + e^{2x}}$, continue sur $[0,1]$. Les deux membres sont des sommes de Riemann de $\varphi$ sur $[0,1]$ pour la subdivision régulière de pas $\dfrac{1}{n}$ :
$$ \frac{1}{n}\sum_{k=0}^{n-1}\varphi\!\left(\frac{k}{n}\right) \xrightarrow[n\to+\infty]{} \int_0^1 \varphi(x)\,\mathrm{d}x, \qquad \frac{1}{n}\sum_{k=1}^{n}\varphi\!\left(\frac{k}{n}\right) \xrightarrow[n\to+\infty]{} \int_0^1 \varphi(x)\,\mathrm{d}x. $$
Par le théorème des gendarmes :
<div class="my-2 font-semibold" style="color:#1F4E79">⇒ $\lim\limits_{n \to +\infty} S_n = \displaystyle\int_0^1 \sqrt{1 + e^{2x}}\,\mathrm{d}x$.</div>

<div class="my-5 rounded-lg px-4 py-2.5 text-white font-bold" style="background:#1F4E79">Exercice 3 — Nombres complexes <span class="font-normal text-white/80 text-sm">(3,5 points)</span></div>

**1.a)** \textit{Formes exponentielles.}

$|1 - i| = \sqrt{2}$ et $\arg(1-i) = -\dfrac{\pi}{4}$, donc $1 - i = \sqrt{2}\,e^{-i\frac{\pi}{4}}$.

$|1 + \sqrt{3}\,i| = \sqrt{1 + 3} = 2$ et $\arg(1+\sqrt{3}\,i) = \dfrac{\pi}{3}$ (car $\cos = \frac12$, $\sin = \frac{\sqrt3}{2}$), donc $1 + \sqrt{3}\,i = 2\,e^{i\frac{\pi}{3}}$.
<div class="my-2 font-semibold" style="color:#1F4E79">⇒ $1 - i = \sqrt{2}\,e^{-i\frac{\pi}{4}}$ et $1 + \sqrt{3}\,i = 2\,e^{i\frac{\pi}{3}}$.</div>

**1.b)** \textit{Montrer que $\dfrac{(1-i)(1+\sqrt3\,i)}{2\sqrt2} = e^{i\frac{\pi}{12}}$.}

$$ \frac{(1-i)(1+\sqrt3\,i)}{2\sqrt2} = \frac{\sqrt2\,e^{-i\frac{\pi}{4}}\cdot 2\,e^{i\frac{\pi}{3}}}{2\sqrt2} = e^{i\left(\frac{\pi}{3} - \frac{\pi}{4}\right)} = e^{i\frac{\pi}{12}}. $$
<div class="my-2 font-semibold" style="color:#1F4E79">⇒ $\dfrac{(1-i)(1+\sqrt3\,i)}{2\sqrt2} = e^{i\frac{\pi}{12}}$.</div>

**1.c)** \textit{En déduire $\tan\dfrac{\pi}{12}$.}

Développons la forme algébrique : $(1-i)(1+\sqrt3\,i) = 1 + \sqrt3\,i - i - \sqrt3\,i^2 = (1 + \sqrt3) + (\sqrt3 - 1)i$. Donc :
$$ e^{i\frac{\pi}{12}} = \frac{(1+\sqrt3) + (\sqrt3 - 1)i}{2\sqrt2}. $$
En identifiant à $\cos\dfrac{\pi}{12} + i\sin\dfrac{\pi}{12}$ :
$$ \cos\frac{\pi}{12} = \frac{1+\sqrt3}{2\sqrt2}, \qquad \sin\frac{\pi}{12} = \frac{\sqrt3 - 1}{2\sqrt2}. $$
Donc $\tan\dfrac{\pi}{12} = \dfrac{\sqrt3 - 1}{\sqrt3 + 1} = \dfrac{(\sqrt3-1)^2}{(\sqrt3+1)(\sqrt3-1)} = \dfrac{3 - 2\sqrt3 + 1}{2} = \dfrac{4 - 2\sqrt3}{2} = 2 - \sqrt3$.
<div class="my-2 font-semibold" style="color:#1F4E79">⇒ $\tan\dfrac{\pi}{12} = 2 - \sqrt3$.</div>

**1.d)** \textit{Montrer que $u = (\sqrt6 - \sqrt2)\,e^{i\frac{\pi}{12}}$.}

$u = 1 + (2 - \sqrt3)i$. Module : comme $2 - \sqrt3 = \tan\dfrac{\pi}{12} > 0$, on a $\arg(u) = \dfrac{\pi}{12}$ et
$$ |u| = \sqrt{1 + (2-\sqrt3)^2} = \frac{1}{\cos\frac{\pi}{12}} = \frac{2\sqrt2}{1+\sqrt3}. $$
Rationalisons : $\dfrac{2\sqrt2}{1+\sqrt3} = \dfrac{2\sqrt2(\sqrt3 - 1)}{(\sqrt3+1)(\sqrt3-1)} = \dfrac{2\sqrt2(\sqrt3-1)}{2} = \sqrt2(\sqrt3 - 1) = \sqrt6 - \sqrt2$.
<div class="my-2 font-semibold" style="color:#1F4E79">⇒ $u = (\sqrt6 - \sqrt2)\,e^{i\frac{\pi}{12}}$.</div>

**2.a)** \textit{Montrer par récurrence que $x_n + i\,y_n = u^n$.}

Pour $n = 0$ : $x_0 + i\,y_0 = 1 + 0 = 1 = u^0$, vrai. Supposons $x_n + i\,y_n = u^n$. Alors :
$$ x_{n+1} + i\,y_{n+1} = \big(x_n - (2-\sqrt3)y_n\big) + i\big((2-\sqrt3)x_n + y_n\big) = (x_n + i\,y_n) + (2-\sqrt3)\big(-y_n + i\,x_n\big). $$
Or $-y_n + i\,x_n = i(x_n + i\,y_n)$, donc :
$$ x_{n+1} + i\,y_{n+1} = (x_n + i\,y_n)\big(1 + (2-\sqrt3)i\big) = u^n \cdot u = u^{n+1}. $$
<div class="my-2 font-semibold" style="color:#1F4E79">⇒ $x_n + i\,y_n = u^n$ pour tout $n \in \mathbb{N}$.</div>

**2.b)** \textit{Expressions de $x_n$ et $y_n$.}

Comme $u = (\sqrt6 - \sqrt2)\,e^{i\frac{\pi}{12}}$ et $\sqrt6 - \sqrt2 = \dfrac{1}{\cos\frac{\pi}{12}}$ (vu en **1.d)**), on a $u^n = \dfrac{1}{(\cos\frac{\pi}{12})^n}\,e^{i\frac{n\pi}{12}} = \dfrac{1}{(\cos\frac{\pi}{12})^n}\left(\cos\dfrac{n\pi}{12} + i\sin\dfrac{n\pi}{12}\right)$. En identifiant parties réelle et imaginaire à $x_n + iy_n = u^n$ :
$$ x_n = \frac{\cos\!\left(\frac{n\pi}{12}\right)}{\left(\cos\frac{\pi}{12}\right)^n}, \qquad y_n = \frac{\sin\!\left(\frac{n\pi}{12}\right)}{\left(\cos\frac{\pi}{12}\right)^n}. $$
<div class="my-2 font-semibold" style="color:#1F4E79">⇒ Expressions établies.</div>

**3.a)** \textit{Entiers $n$ pour lesquels $O$, $A_0$, $A_n$ sont alignés.}

$A_0$ a pour affixe $u^0 = 1$ (point de l'axe réel), et $A_n$ a pour affixe $u^n$ dont un argument est $\dfrac{n\pi}{12}$. Les points $O$, $A_0$, $A_n$ (avec $A_n \ne O$) sont alignés si et seulement si $u^n$ est réel, c'est-à-dire $\arg(u^n) \equiv 0 \;[\pi]$ :
$$ \frac{n\pi}{12} \equiv 0 \;[\pi] \iff \frac{n}{12} \in \mathbb{Z} \iff 12 \mid n. $$
<div class="my-2 font-semibold" style="color:#1F4E79">⇒ $O$, $A_0$, $A_n$ sont alignés si et seulement si $n$ est multiple de $12$.</div>

**3.b)** \textit{Montrer que $OA_n A_{n+1}$ est rectangle en $A_n$.}

Considérons le rapport :
$$ \frac{z_{A_{n+1}} - z_{A_n}}{z_O - z_{A_n}} = \frac{u^{n+1} - u^n}{0 - u^n} = \frac{u^n(u - 1)}{-u^n} = -(u - 1) = 1 - u = -(2-\sqrt3)i. $$
Ce nombre est un imaginaire pur (sa partie réelle est nulle). Donc les vecteurs $\overrightarrow{A_n A_{n+1}}$ et $\overrightarrow{A_n O}$ sont orthogonaux : l'angle en $A_n$ est droit.
<div class="my-2 font-semibold" style="color:#1F4E79">⇒ Le triangle $OA_n A_{n+1}$ est rectangle en $A_n$.</div>

<div class="my-5 rounded-lg px-4 py-2.5 text-white font-bold" style="background:#1F4E79">Exercice 4 — Arithmétique <span class="font-normal text-white/80 text-sm">(3 points)</span></div>

$p$ est un nombre premier impair, $(E) : x^2 \equiv 2 \;[p]$.

**1.a)** \textit{Montrer que $2^{p-1} \equiv 1 \;[p]$.}

$p$ est premier et $p \nmid 2$ (car $p$ est impair, $p \ge 3$). Par le petit théorème de Fermat, $2^{p-1} \equiv 1 \;[p]$.
<div class="my-2 font-semibold" style="color:#1F4E79">⇒ $2^{p-1} \equiv 1 \;[p]$.</div>

**1.b)** \textit{En déduire l'alternative.}

Comme $p$ est impair, $\dfrac{p-1}{2}$ est un entier. On a :
$$ \left(2^{\frac{p-1}{2}} - 1\right)\left(2^{\frac{p-1}{2}} + 1\right) = 2^{p-1} - 1 \equiv 0 \;[p]. $$
$p$ étant premier, il divise l'un des deux facteurs (lemme d'Euclide) :
$$ 2^{\frac{p-1}{2}} \equiv 1 \;[p] \quad \text{ou} \quad 2^{\frac{p-1}{2}} \equiv -1 \;[p]. $$
<div class="my-2 font-semibold" style="color:#1F4E79">⇒ $2^{\frac{p-1}{2}} \equiv 1 \;[p]$ ou $2^{\frac{p-1}{2}} \equiv -1 \;[p]$.</div>

**2.a)** \textit{Montrer que $p \wedge x = 1$.}

Soit $x$ une solution de $(E)$ : $x^2 \equiv 2 \;[p]$, donc $p \mid x^2 - 2$. Supposons que $p \mid x$. Alors $p \mid x^2$, donc $p \mid (x^2 - (x^2 - 2)) = 2$, impossible car $p \ge 3$. Donc $p \nmid x$, et comme $p$ est premier, $p \wedge x = 1$.
<div class="my-2 font-semibold" style="color:#1F4E79">⇒ $p$ et $x$ sont premiers entre eux.</div>

**2.b)** \textit{En déduire que $2^{\frac{p-1}{2}} \equiv 1 \;[p]$.}

Comme $p \nmid x$, le théorème de Fermat donne $x^{p-1} \equiv 1 \;[p]$, soit $\left(x^2\right)^{\frac{p-1}{2}} \equiv 1 \;[p]$. Or $x^2 \equiv 2 \;[p]$, donc :
$$ 2^{\frac{p-1}{2}} \equiv \left(x^2\right)^{\frac{p-1}{2}} \equiv 1 \;[p]. $$
<div class="my-2 font-semibold" style="color:#1F4E79">⇒ Si $(E)$ a une solution, alors $2^{\frac{p-1}{2}} \equiv 1 \;[p]$.</div>

**3)** \textit{Montrer que $p \mid C_p^k$ pour $k \in \{1,\dots,p-1\}$.}

On a $k\,C_p^k = p\,C_{p-1}^{k-1}$, donc $p \mid k\,C_p^k$. Pour $k \in \{1,\dots,p-1\}$, on a $1 \le k \le p-1 < p$, donc $p \nmid k$, et comme $p$ est premier, $p \wedge k = 1$. Par le théorème de Gauss, $p \mid C_p^k$.
<div class="my-2 font-semibold" style="color:#1F4E79">⇒ $p \mid C_p^k$ pour tout $k \in \{1,\dots,p-1\}$.</div>

**4.a)** \textit{Formule de Moivre.}

$1 + i = \sqrt2\,e^{i\frac{\pi}{4}}$, donc $|1+i| = \sqrt2$ et $\arg(1+i) = \dfrac{\pi}{4}$. Par la formule de Moivre :
$$ (1+i)^p = (\sqrt2)^p\,e^{i\frac{p\pi}{4}} = 2^{\frac{p}{2}}\left(\cos\!\left(p\frac{\pi}{4}\right) + i\sin\!\left(p\frac{\pi}{4}\right)\right) = 2^{\frac{p}{2}}\cos\!\left(p\frac{\pi}{4}\right) + i\,2^{\frac{p}{2}}\sin\!\left(p\frac{\pi}{4}\right). $$
<div class="my-2 font-semibold" style="color:#1F4E79">⇒ Formule établie.</div>

**4.b)** \textit{Montrer que $2^{\frac{p}{2}}\cos(p\frac{\pi}{4}) \in \mathbb{Z}$ et $\equiv 1 \;[p]$.}

En identifiant la partie réelle de l'expression admise à celle de **4.a)** :
$$ 2^{\frac{p}{2}}\cos\!\left(p\frac{\pi}{4}\right) = \sum_{k=0}^{\frac{p-1}{2}} (-1)^k C_p^{2k}. $$
Les coefficients binomiaux $C_p^{2k}$ sont des entiers, donc cette somme est un entier : $2^{\frac{p}{2}}\cos(p\frac{\pi}{4}) \in \mathbb{Z}$.

De plus, le terme $k=0$ vaut $C_p^0 = 1$, et pour $k \ge 1$, l'indice $2k$ appartient à $\{2,4,\dots,p-1\} \subset \{1,\dots,p-1\}$, donc par **3)**, $p \mid C_p^{2k}$. Ainsi :
$$ \sum_{k=0}^{\frac{p-1}{2}} (-1)^k C_p^{2k} \equiv (-1)^0 C_p^0 \equiv 1 \;[p]. $$
<div class="my-2 font-semibold" style="color:#1F4E79">⇒ $2^{\frac{p}{2}}\cos\!\left(p\frac{\pi}{4}\right) \in \mathbb{Z}$ et $\equiv 1 \;[p]$.</div>

**5)** \textit{En déduire : si $p \equiv 5\;[8]$, $(E)$ n'a pas de solution.}

Supposons $p \equiv 5 \;[8]$, donc $p = 8q + 5$. Alors $p\dfrac{\pi}{4} = (8q+5)\dfrac{\pi}{4} = 2q\pi + \dfrac{5\pi}{4}$, d'où $\cos\!\left(p\frac{\pi}{4}\right) = \cos\dfrac{5\pi}{4} = -\dfrac{\sqrt2}{2}$. Donc :
$$ 2^{\frac{p}{2}}\cos\!\left(p\frac{\pi}{4}\right) = 2^{\frac{p}{2}}\cdot\left(-\frac{\sqrt2}{2}\right) = -2^{\frac{p}{2}}\cdot 2^{-\frac12} = -2^{\frac{p-1}{2}}. $$
Par **4.b)**, ce nombre est $\equiv 1 \;[p]$, donc $-2^{\frac{p-1}{2}} \equiv 1 \;[p]$, c'est-à-dire $2^{\frac{p-1}{2}} \equiv -1 \;[p]$.

Or si $(E)$ admettait une solution, on aurait par **2.b)** $2^{\frac{p-1}{2}} \equiv 1 \;[p]$. On aurait alors $1 \equiv -1 \;[p]$, soit $p \mid 2$, impossible. Contradiction.
<div class="my-2 font-semibold" style="color:#1F4E79">⇒ Si $p \equiv 5 \;[8]$, l'équation $(E)$ n'admet pas de solution dans $\mathbb{Z}$.</div>

<div class="my-5 rounded-lg px-4 py-2.5 text-white font-bold" style="background:#1F4E79">Exercice 5 — Structures algébriques <span class="font-normal text-white/80 text-sm">(3,5 points)</span></div>

$E = \left\{ M(x,y) = \begin{pmatrix} x+y & y \\ 2y & x-y \end{pmatrix} \;/\; (x,y) \in \mathbb{R}^2 \right\}$.

<div class="mt-6 mb-2 text-base font-bold" style="color:#1F4E79">Partie I</div>

**1)** \textit{$E$ sous-groupe de $(M_2(\mathbb{R}),+)$.}

$E \subset M_2(\mathbb{R})$ et $E \ne \varnothing$ car $O = M(0,0) \in E$.

Soient $M(x,y)$ et $M(x',y') \in E$. Alors :
$$ M(x,y) - M(x',y') = \begin{pmatrix} (x-x')+(y-y') & y-y' \\ 2(y-y') & (x-x')-(y-y') \end{pmatrix} = M(x-x',\, y-y') \in E. $$
<div class="my-2 font-semibold" style="color:#1F4E79">⇒ $E$ est un sous-groupe de $(M_2(\mathbb{R}),+)$.</div>

**2)** \textit{$E$ sous-espace vectoriel.}

$E$ est un sous-groupe additif non vide. De plus, pour $\lambda \in \mathbb{R}$ et $M(x,y) \in E$ :
$$ \lambda\cdot M(x,y) = \begin{pmatrix} \lambda(x+y) & \lambda y \\ 2\lambda y & \lambda(x-y) \end{pmatrix} = M(\lambda x,\, \lambda y) \in E. $$
$E$ est stable par combinaison linéaire.
<div class="my-2 font-semibold" style="color:#1F4E79">⇒ $E$ est un sous-espace vectoriel de $(M_2(\mathbb{R}),+,\cdot)$.</div>

**3.a)** \textit{Vérifier la formule du produit.}

$$ M(x,y)\times M(x',y') = \begin{pmatrix} x+y & y \\ 2y & x-y \end{pmatrix}\begin{pmatrix} x'+y' & y' \\ 2y' & x'-y' \end{pmatrix}. $$
Coefficient $(1,1)$ : $(x+y)(x'+y') + 2yy' = xx' + xy' + yx' + yy' + 2yy' = (xx'+3yy') + (xy'+yx')$.
Coefficient $(1,2)$ : $(x+y)y' + y(x'-y') = xy' + yy' + yx' - yy' = xy' + yx'$.
Coefficient $(2,1)$ : $2y(x'+y') + 2y'(x-y) = 2yx' + 2yy' + 2xy' - 2yy' = 2(xy'+yx')$.
Coefficient $(2,2)$ : $2yy' + (x-y)(x'-y') = 2yy' + xx' - xy' - yx' + yy' = (xx'+3yy') - (xy'+yx')$.

On reconnaît $M(xx'+3yy',\, xy'+yx')$.
<div class="my-2 font-semibold" style="color:#1F4E79">⇒ $M(x,y)\times M(x',y') = M(xx'+3yy',\, xy'+yx')$.</div>

**3.b)** \textit{$(E,+,\times)$ anneau commutatif unitaire.}

$E$ est un sous-groupe additif de $M_2(\mathbb{R})$. La formule de **3.a)** montre que $E$ est stable par $\times$. La multiplication est associative (héritée de $M_2(\mathbb{R})$) et distributive sur $+$.

\textbf{Commutativité :} $M(x',y')\times M(x,y) = M(x'x+3y'y,\, x'y+y'x) = M(xx'+3yy',\, xy'+yx')$, identique à $M(x,y)\times M(x',y')$.

\textbf{Unité :} $I = M(1,0) \in E$, et $M(x,y)\times M(1,0) = M(x\cdot1 + 3y\cdot0,\, x\cdot0 + y\cdot1) = M(x,y)$.
<div class="my-2 font-semibold" style="color:#1F4E79">⇒ $(E,+,\times)$ est un anneau commutatif et unitaire, d'unité $I = M(1,0)$.</div>

**4.a)** \textit{Vérifier $M(\sqrt3,1)\times M(-\sqrt3,1) = O$.}

Avec la formule de **3.a)** : $M(\sqrt3,1)\times M(-\sqrt3,1) = M\big(\sqrt3\cdot(-\sqrt3) + 3\cdot1\cdot1,\; \sqrt3\cdot1 + 1\cdot(-\sqrt3)\big) = M(-3 + 3,\, 0) = M(0,0) = O$.
<div class="my-2 font-semibold" style="color:#1F4E79">⇒ $M(\sqrt3,1)\times M(-\sqrt3,1) = O$.</div>

**4.b)** \textit{En déduire que $(E,+,\times)$ n'est pas un corps.}

$M(\sqrt3,1)$ et $M(-\sqrt3,1)$ sont non nuls mais leur produit est nul : ce sont des diviseurs de zéro. Un corps est intègre (sans diviseur de zéro).
<div class="my-2 font-semibold" style="color:#1F4E79">⇒ $(E,+,\times)$ n'est pas un corps.</div>

<div class="mt-6 mb-2 text-base font-bold" style="color:#1F4E79">Partie II</div>

$F = \left\{ x + y\sqrt3 \;/\; (x,y) \in \mathbb{Q}^2 \right\}$ et $G = \left\{ M(x,y) \;/\; (x,y) \in \mathbb{Q}^2 \right\}$.

**1)** \textit{Montrer l'équivalence.}

($\Leftarrow$) Évident : si $x = y = 0$, alors $x + y\sqrt3 = 0$.

($\Rightarrow$) Soit $(x,y) \in \mathbb{Q}^2$ tel que $x + y\sqrt3 = 0$. Si $y \ne 0$, alors $\sqrt3 = -\dfrac{x}{y} \in \mathbb{Q}$, ce qui est absurde car $\sqrt3$ est irrationnel. Donc $y = 0$, puis $x = 0$.
<div class="my-2 font-semibold" style="color:#1F4E79">⇒ $x + y\sqrt3 = 0 \iff (x = 0$ et $y = 0)$.</div>

**2)** \textit{$F - \{0\}$ sous-groupe de $(\mathbb{R}^*,\times)$.}

$F - \{0\} \subset \mathbb{R}^*$ et est non vide ($1 = 1 + 0\sqrt3 \in F-\{0\}$). Soient $a = x + y\sqrt3$ et $b = x' + y'\sqrt3$ deux éléments non nuls de $F$ (avec $(x,y),(x',y') \in \mathbb{Q}^2$).

\textbf{Inverse de $b$ :} $\dfrac{1}{b} = \dfrac{x' - y'\sqrt3}{(x'+y'\sqrt3)(x'-y'\sqrt3)} = \dfrac{x' - y'\sqrt3}{x'^2 - 3y'^2}$. Le dénominateur $x'^2 - 3y'^2 \ne 0$ (sinon $x' = y'\sqrt3$ contredirait **1)** si $y'\ne0$, et $x'=0$ donnerait $b=0$). Donc $\dfrac{1}{b} = \dfrac{x'}{x'^2-3y'^2} + \dfrac{-y'}{x'^2-3y'^2}\sqrt3 \in F-\{0\}$ (coefficients rationnels).

\textbf{Produit $a\times \frac{1}{b}$ :} de la forme $(\alpha + \beta\sqrt3)$ avec $\alpha,\beta \in \mathbb{Q}$ ; non nul car produit de réels non nuls. Donc $a\,b^{-1} \in F-\{0\}$.
<div class="my-2 font-semibold" style="color:#1F4E79">⇒ $F - \{0\}$ est un sous-groupe de $(\mathbb{R}^*,\times)$.</div>

**3)** $\varphi : F - \{0\} \to E$, $\varphi(x + y\sqrt3) = M(x,y)$ pour $(x,y) \in \mathbb{Q}^2 - \{(0,0)\}$.

\emph{$\varphi$ est bien définie :} par **1)**, l'écriture $x + y\sqrt3$ avec $(x,y)\in\mathbb{Q}^2$ est unique, donc $M(x,y)$ est déterminé sans ambiguïté.

**3.a)** \textit{Vérifier $\varphi(F-\{0\}) = G - \{O\}$.}

Par définition, l'image de $\varphi$ est $\{M(x,y) \;/\; (x,y)\in\mathbb{Q}^2-\{(0,0)\}\}$. Or $M(x,y) = O \iff x=y=0$, donc retirer $(x,y)=(0,0)$ revient à retirer $O$ de $G$ :
$$ \varphi(F-\{0\}) = \{M(x,y) \;/\; (x,y)\in\mathbb{Q}^2,\, (x,y)\ne(0,0)\} = G - \{O\}. $$
<div class="my-2 font-semibold" style="color:#1F4E79">⇒ $\varphi(F-\{0\}) = G - \{O\}$.</div>

**3.b)** \textit{$\varphi$ homomorphisme de $(F-\{0\},\times)$ vers $(E,\times)$.}

Soient $a = x + y\sqrt3$ et $b = x' + y'\sqrt3$ dans $F-\{0\}$. Leur produit :
$$ ab = (x + y\sqrt3)(x' + y'\sqrt3) = (xx' + 3yy') + (xy' + yx')\sqrt3. $$
Donc $\varphi(ab) = M(xx'+3yy',\, xy'+yx')$. Par **3.a)** (formule du produit dans $E$) :
$$ \varphi(a)\times\varphi(b) = M(x,y)\times M(x',y') = M(xx'+3yy',\, xy'+yx') = \varphi(ab). $$
<div class="my-2 font-semibold" style="color:#1F4E79">⇒ $\varphi$ est un homomorphisme de $(F-\{0\},\times)$ vers $(E,\times)$.</div>

**3.c)** \textit{En déduire que $(G-\{O\},\times)$ est un groupe commutatif.}

$\varphi$ est un homomorphisme de $(F-\{0\},\times)$ vers $(E,\times)$ d'image $G-\{O\}$ (par **3.a)**), et $\varphi$ est injective (par unicité de l'écriture, **1)**) donc bijective de $F-\{0\}$ sur $G-\{O\}$. L'image d'un groupe par un isomorphisme est un groupe : $(G-\{O\},\times)$ est un groupe. Il est commutatif car $(F-\{0\},\times)$ l'est (multiplication dans $\mathbb{R}$).
<div class="my-2 font-semibold" style="color:#1F4E79">⇒ $(G-\{O\},\times)$ est un groupe commutatif.</div>

**4)** \textit{Montrer que $(G,+,\times)$ est un corps commutatif.}

$G \subset E$. Vérifions que $(G,+)$ est un groupe : pour $M(x,y), M(x',y')\in G$ (avec $(x,y),(x',y')\in\mathbb{Q}^2$), $M(x,y) - M(x',y') = M(x-x',\, y-y') \in G$ (différences rationnelles). De plus $O = M(0,0)\in G$. Donc $(G,+)$ est un sous-groupe de $(E,+)$.

$G$ est stable par $\times$ : $M(x,y)\times M(x',y') = M(xx'+3yy',\, xy'+yx')\in G$ (coefficients rationnels), et $I = M(1,0)\in G$. Comme $(E,+,\times)$ est un anneau commutatif unitaire et $G$ en est un sous-anneau unitaire, $(G,+,\times)$ est un anneau commutatif unitaire.

Enfin, par **3.c)**, $(G-\{O\},\times)$ est un groupe (commutatif) : tout élément non nul de $G$ est inversible dans $G$.
<div class="my-2 font-semibold" style="color:#1F4E79">⇒ $(G,+,\times)$ est un corps commutatif.</div>
