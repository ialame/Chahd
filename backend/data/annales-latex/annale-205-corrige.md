<div class="my-5 rounded-lg px-4 py-2.5 text-white font-bold" style="background:#1F4E79">Exercice 1 — Étude de fonction et suites <span class="font-normal text-white/80 text-sm">(8 points)</span></div>

    <div class="mt-6 mb-2 text-base font-bold" style="color:#1F4E79">Partie I : $f(x) = \ln(1 - x)$ sur $I = \,]-\infty, 1[$</div>

**1.a)** \textit{Montrer que $f$ est continue sur $I$.}

        La fonction $x \mapsto 1 - x$ est polynomiale, donc continue sur $\mathbb{R}$, et strictement positive sur $I$ (car $x < 1 \Rightarrow 1 - x > 0$). La fonction $\ln$ étant continue sur $\,]0, +\infty[$, $f$ est continue sur $I$ comme composée de fonctions continues.

**1.b)** \textit{Montrer que $f$ est strictement décroissante sur $I$.}

        $f$ est dérivable sur $I$ et $f'(x) = \dfrac{-1}{1 - x}$. Pour tout $x \in I$, $1 - x > 0$, donc $f'(x) < 0$.
        <div class="my-2 font-semibold" style="color:#1F4E79">⇒ $f$ est strictement décroissante sur $I$.</div>

**1.c)** \textit{Calculer les trois limites.}

        Quand $x \to 1^-$, $1 - x \to 0^+$, donc $\ln(1 - x) \to -\infty$ :
        \[ \boxed{\lim_{x \to 1^-} f(x) = -\infty}. \]
        Quand $x \to -\infty$, $1 - x \to +\infty$, donc :
        \[ \boxed{\lim_{x \to -\infty} f(x) = +\infty}. \]
        Pour le rapport, en posant $u = 1 - x \to +\infty$, on a $\dfrac{f(x)}{x} = \dfrac{\ln(1 - x)}{x} = \dfrac{\ln u}{1 - u}$. Comme $\dfrac{\ln u}{u} \to 0$, on obtient :
        \[ \boxed{\lim_{x \to -\infty} \frac{f(x)}{x} = 0}. \]

**1.d)** \textit{Interprétation graphique.}

        Comme $\lim\limits_{x \to 1^-} f(x) = -\infty$, la droite d'équation $x = 1$ est une \textbf{asymptote verticale} à $(C)$. Comme $\lim\limits_{x \to -\infty} f(x) = +\infty$ avec $\lim\limits_{x \to -\infty} \dfrac{f(x)}{x} = 0$, la courbe $(C)$ admet une \textbf{branche parabolique de direction l'axe des abscisses} au voisinage de $-\infty$.

**1.e)** \textit{Tableau de variations.}

        Sur $I = \,]-\infty, 1[$, $f$ est strictement décroissante, de $+\infty$ (en $-\infty$) à $-\infty$ (en $1^-$).
        [figure : tableau de variations de $f$ — $x$ de $-\infty$ à $1$, $f'(x) < 0$, $f$ décroît de $+\infty$ à $-\infty$]

**2.a)** \textit{Montrer que $(C)$ est concave.}

        $f'(x) = \dfrac{-1}{1 - x} = -(1 - x)^{-1}$, donc $f''(x) = \dfrac{-1}{(1 - x)^2}$. Pour tout $x \in I$, $f''(x) < 0$.
        <div class="my-2 font-semibold" style="color:#1F4E79">⇒ La courbe $(C)$ est concave sur $I$.</div>

**2.b)** \textit{Représentation graphique.}

        [figure : courbe $(C)$ de $f(x) = \ln(1 - x)$, décroissante et concave, asymptote verticale $x = 1$, passant par $(0, 0)$]

**3.a)** \textit{Montrer que $f$ est une bijection de $I$ vers $\mathbb{R}$.}

        $f$ est continue et strictement décroissante sur $I$, donc elle réalise une bijection de $I$ vers $f(I)$. Or $f(I) = \,]\lim\limits_{x \to 1^-} f(x),\ \lim\limits_{x \to -\infty} f(x)[ = \,]-\infty, +\infty[ = \mathbb{R}$.
        <div class="my-2 font-semibold" style="color:#1F4E79">⇒ $f$ est une bijection de $I$ vers $\mathbb{R}$.</div>

**3.b)** \textit{Déterminer $f^{-1}(x)$ pour $x \in \mathbb{R}$.}

        Pour $x \in \mathbb{R}$ et $y \in I$ : $y = f^{-1}(x) \iff x = f(y) = \ln(1 - y) \iff e^x = 1 - y \iff y = 1 - e^x$.
        \[ \boxed{(\forall x \in \mathbb{R})\quad f^{-1}(x) = 1 - e^x}. \]

**3.c)** \textit{Vérifier que $f^{-1}(-1) = 1 - e^{-1}$.}

        $f^{-1}(-1) = 1 - e^{-1}$, ce qui est conforme à la formule précédente. \checkmark

    <div class="mt-6 mb-2 text-base font-bold" style="color:#1F4E79">Partie II : $P_n(x) = x + \dfrac{x^2}{2} + \cdots + \dfrac{x^n}{n}$, $n \ge 2$</div>

**1)** \textit{Existence et unicité de $x_n \in \,]0, 1[$ tel que $P_n(x_n) = 1$.}

        \begin{methode}
            On étudie la fonction $\varphi_n : x \mapsto P_n(x) - 1$ sur $[0, 1]$ et on applique le théorème des valeurs intermédiaires à une fonction strictement croissante.
        \end{methode}
        $P_n$ est dérivable et $P_n'(x) = 1 + x + x^2 + \cdots + x^{n-1} > 0$ sur $[0, 1]$ : $P_n$ est continue et strictement croissante sur $[0, 1]$. De plus $P_n(0) = 0 < 1$ et
        \[ P_n(1) = 1 + \frac{1}{2} + \cdots + \frac{1}{n} > 1 \quad (\text{car } n \ge 2). \]
        D'après le TVI appliqué à une fonction strictement monotone, il existe un \textbf{unique} $x_n \in \,]0, 1[$ tel que $P_n(x_n) = 1$.

**2)** \textit{Déterminer $\alpha = x_2$.}

        $P_2(x) = x + \dfrac{x^2}{2} = 1 \iff x^2 + 2x - 2 = 0$. Le discriminant vaut $4 + 8 = 12$, d'où $x = -1 \pm \sqrt{3}$. La racine appartenant à $\,]0, 1[$ est :
        \[ \boxed{\alpha = \sqrt{3} - 1}. \]
        Comme $1 < \sqrt{3} < 2$, on a bien $0 < \sqrt{3} - 1 < 1$, soit $0 < \alpha < 1$. \checkmark

**3.a)** \textit{Montrer que $P_{n+1}(x_n) > 1$.}

        Par définition $P_{n+1}(x) = P_n(x) + \dfrac{x^{n+1}}{n+1}$, donc
        \[ P_{n+1}(x_n) = \underbrace{P_n(x_n)}_{=\,1} + \frac{x_n^{n+1}}{n+1} = 1 + \frac{x_n^{n+1}}{n+1} > 1, \]
        car $x_n \in \,]0, 1[$ donne $x_n^{n+1} > 0$.

**3.b)** \textit{En déduire que $(x_n)_{n \ge 2}$ est strictement décroissante.}

        On a $P_{n+1}(x_n) > 1 = P_{n+1}(x_{n+1})$. Or $P_{n+1}$ est strictement croissante, donc $x_n > x_{n+1}$.
        <div class="my-2 font-semibold" style="color:#1F4E79">⇒ La suite $(x_n)_{n \ge 2}$ est strictement décroissante.</div>

**3.c)** \textit{Montrer que $x_n \in \,]0, \alpha]$.}

        D'après la question 1, $x_n > 0$ pour tout $n$. La suite étant strictement décroissante, son premier terme $\alpha = x_2$ est un majorant : $x_n \le x_2 = \alpha$.
        <div class="my-2 font-semibold" style="color:#1F4E79">⇒ $x_n \in \,]0, \alpha]$ pour tout $n \ge 2$.</div>

**3.d)** \textit{Montrer que $(x_n)_{n \ge 2}$ est convergente.}

        La suite $(x_n)$ est strictement décroissante et minorée par $0$, donc elle converge.

**4.a)** \textit{Montrer que $f_n'(x) = \dfrac{-x^n}{1 - x}$.}

        $f_n = f + P_n$ avec $f'(x) = \dfrac{-1}{1 - x}$ et
        \[ P_n'(x) = 1 + x + \cdots + x^{n-1} = \frac{1 - x^n}{1 - x} \quad (x \ne 1). \]
        Donc
        \[ f_n'(x) = \frac{-1}{1 - x} + \frac{1 - x^n}{1 - x} = \frac{-1 + 1 - x^n}{1 - x} = \boxed{\frac{-x^n}{1 - x}}. \]

**4.b)** \textit{Montrer que $|f_n'(x)| \le \dfrac{\alpha^n}{1 - \alpha}$ sur $[0, \alpha]$.}

        Pour $x \in [0, \alpha]$ avec $\alpha < 1$ : $1 - x \ge 1 - \alpha > 0$ et $x^n \le \alpha^n$. Donc
        \[ |f_n'(x)| = \frac{x^n}{1 - x} \le \frac{\alpha^n}{1 - \alpha}. \]

**4.c)** \textit{En déduire $|f_n(x)| \le \dfrac{\alpha^n}{1 - \alpha}$ sur $[0, \alpha]$.}

        \begin{rappel}
            Inégalité des accroissements finis : si $|g'| \le M$ sur $[a, b]$, alors $|g(b) - g(a)| \le M\,|b - a|$.
        \end{rappel}
        On a $f_n(0) = f(0) + P_n(0) = \ln 1 + 0 = 0$. Pour $x \in [0, \alpha]$, l'inégalité des accroissements finis donne
        \[ |f_n(x) - f_n(0)| \le \frac{\alpha^n}{1 - \alpha}\,(x - 0) \le \frac{\alpha^n}{1 - \alpha}\,\alpha. \]
        Comme $\alpha < 1$, on obtient $|f_n(x)| \le \dfrac{\alpha^n}{1 - \alpha}$.

**4.d)** \textit{Montrer que $|f(x_n) + 1| \le \dfrac{\alpha^n}{1 - \alpha}$.}

        Comme $x_n \in \,]0, \alpha]$, on peut appliquer 4.c en $x = x_n$ :
        \[ |f_n(x_n)| = |f(x_n) + P_n(x_n)| = |f(x_n) + 1| \le \frac{\alpha^n}{1 - \alpha}, \]
        car $P_n(x_n) = 1$ par définition de $x_n$.

**4.e)** \textit{En déduire $\lim\limits_{n \to +\infty} x_n$.}

        Comme $0 < \alpha < 1$, $\alpha^n \to 0$, donc $\dfrac{\alpha^n}{1 - \alpha} \to 0$. Par encadrement, $|f(x_n) + 1| \to 0$, c'est-à-dire $f(x_n) \to -1$.

        $f^{-1}$ étant continue sur $\mathbb{R}$, on en déduit
        \[ \lim_{n \to +\infty} x_n = \lim_{n \to +\infty} f^{-1}\big(f(x_n)\big) = f^{-1}(-1) = \boxed{1 - e^{-1}}. \]

    

<div class="my-5 rounded-lg px-4 py-2.5 text-white font-bold" style="background:#1F4E79">Exercice 2 — Intégrale dépendant de sa borne <span class="font-normal text-white/80 text-sm">(4 points)</span></div>

    $\displaystyle F(x) = \int_0^x e^{t - \frac{t^2}{2}} \, \mathrm{d}t$ sur $\mathbb{R}$.

**1.a)** \textit{Signe de $F(x)$.}

        La fonction $t \mapsto e^{t - \frac{t^2}{2}}$ est strictement positive sur $\mathbb{R}$. Par positivité de l'intégrale :
        \begin{itemize}
            \item si $x > 0$ : $F(x) > 0$ ;
            \item si $x = 0$ : $F(0) = 0$ ;
            \item si $x < 0$ : $\displaystyle F(x) = -\int_x^0 e^{t - \frac{t^2}{2}} \, \mathrm{d}t < 0$.
        \end{itemize}
        <div class="my-2 font-semibold" style="color:#1F4E79">⇒ $F$ est positive sur $\mathbb{R}^+$ et négative sur $\mathbb{R}^-$.</div>

**1.b)** \textit{Dérivabilité et dérivée de $F$.}

        \begin{rappel}
            Si $\varphi$ est continue sur $\mathbb{R}$, alors $x \mapsto \displaystyle\int_0^x \varphi(t)\,\mathrm{d}t$ est dérivable, de dérivée $\varphi(x)$.
        \end{rappel}
        La fonction $t \mapsto e^{t - \frac{t^2}{2}}$ est continue sur $\mathbb{R}$ ; $F$ est donc dérivable sur $\mathbb{R}$ et
        \[ \boxed{(\forall x \in \mathbb{R})\quad F'(x) = e^{x - \frac{x^2}{2}}}. \]

**2.a)** \textit{Intégration par parties.}

        On pose $u(x) = F(x)$, $v'(x) = 1$, d'où $u'(x) = F'(x) = e^{x - \frac{x^2}{2}}$ et $v(x) = x - 1$ (primitive de $1$ choisie pour simplifier le crochet). Alors
        \[ \int_0^1 F(x)\,\mathrm{d}x = \Big[(x - 1)F(x)\Big]_0^1 - \int_0^1 (x - 1)\,e^{x - \frac{x^2}{2}}\,\mathrm{d}x. \]
        Le crochet vaut $(1 - 1)F(1) - (0 - 1)F(0) = 0 - (-1)\cdot 0 = 0$. D'où
        \[ \boxed{\int_0^1 F(x)\,\mathrm{d}x = \int_0^1 (1 - x)\,e^{x - \frac{x^2}{2}}\,\mathrm{d}x}. \]

**2.b)** \textit{Calculer $\displaystyle\int_0^1 F(x)\,\mathrm{d}x$.}

        \begin{methode}
            La dérivée de $x - \dfrac{x^2}{2}$ est $1 - x$ : l'intégrande est de la forme $g'\,e^{g}$, primitive $e^{g}$.
        \end{methode}
        \[ \int_0^1 (1 - x)\,e^{x - \frac{x^2}{2}}\,\mathrm{d}x = \Big[ e^{x - \frac{x^2}{2}} \Big]_0^1 = e^{1 - \frac{1}{2}} - e^0 = \boxed{\sqrt{e} - 1}. \]

**3.a)** \textit{Vérifier l'écriture de $u_n$.}

        Sur chaque intervalle $\left[\dfrac{k}{n}, \dfrac{k+1}{n}\right]$, $F$ étant une primitive de $x \mapsto e^{x - \frac{x^2}{2}}$ :
        \[ \int_{\frac{k}{n}}^{\frac{k+1}{n}} e^{x - \frac{x^2}{2}}\,\mathrm{d}x = F\!\left(\frac{k+1}{n}\right) - F\!\left(\frac{k}{n}\right). \]
        En reportant dans la somme définissant $u_n$ et en distribuant le facteur $(n - k)$, on obtient
        \[ \boxed{u_n = \frac{1}{n}\sum_{k=0}^{k=n-1}(n-k)F\!\left(\frac{k+1}{n}\right) - \frac{1}{n}\sum_{k=0}^{k=n-1}(n-k)F\!\left(\frac{k}{n}\right)}. \]

**3.b)** \textit{Montrer que $u_n = \dfrac{1}{n}\displaystyle\sum_{k=1}^{k=n} F\!\left(\dfrac{k}{n}\right)$.}

        Dans la première somme, on pose $j = k + 1$ (donc $k = j - 1$, $j$ varie de $1$ à $n$) :
        \[ \sum_{k=0}^{k=n-1}(n-k)F\!\left(\frac{k+1}{n}\right) = \sum_{j=1}^{j=n}(n - j + 1)F\!\left(\frac{j}{n}\right). \]
        En soustrayant la seconde somme (où l'on renomme aussi l'indice $k \to j$, en notant que le terme $j = 0$ est nul car $F(0) = 0$) :
        \[ \sum_{j=1}^{j=n}(n - j + 1)F\!\left(\frac{j}{n}\right) - \sum_{j=1}^{j=n}(n - j)F\!\left(\frac{j}{n}\right) = \sum_{j=1}^{j=n} F\!\left(\frac{j}{n}\right). \]
        D'où
        \[ \boxed{(\forall n \in \mathbb{N}^*)\quad u_n = \frac{1}{n}\sum_{k=1}^{k=n} F\!\left(\frac{k}{n}\right)}. \]

**3.c)** \textit{Convergence et limite de $(u_n)$.}

        \begin{rappel}
            Pour $G$ continue sur $[0, 1]$ : $\displaystyle\lim_{n \to +\infty} \frac{1}{n}\sum_{k=1}^{n} G\!\left(\frac{k}{n}\right) = \int_0^1 G(x)\,\mathrm{d}x$ (somme de Riemann).
        \end{rappel}
        $F$ est continue sur $[0, 1]$, donc $u_n$ est une somme de Riemann de $F$ :
        \[ \lim_{n \to +\infty} u_n = \int_0^1 F(x)\,\mathrm{d}x = \boxed{\sqrt{e} - 1}. \]

    

<div class="my-5 rounded-lg px-4 py-2.5 text-white font-bold" style="background:#1F4E79">Exercice 3 — Nombres complexes <span class="font-normal text-white/80 text-sm">(4 points)</span></div>

    $(E) : z^2 - (m - i)z - im = 0$, avec $m \ne 2$ et $m \ne -i$.

**1.a)** \textit{Vérifier que $\Delta = (m + i)^2$.}

        \[ \Delta = \big(-(m - i)\big)^2 - 4(1)(-im) = (m - i)^2 + 4im = m^2 - 2im + i^2 + 4im = m^2 + 2im - 1. \]
        Or $(m + i)^2 = m^2 + 2im + i^2 = m^2 + 2im - 1$. Donc $\boxed{\Delta = (m + i)^2}$.

**1.b)** \textit{Déterminer les solutions $z_1$ et $z_2$.}

        Une racine carrée de $\Delta$ est $m + i$. Les solutions sont
        \[ z = \frac{(m - i) \pm (m + i)}{2}, \]
        d'où
        \[ z_1 = \frac{(m - i) + (m + i)}{2} = \boxed{m}, \qquad z_2 = \frac{(m - i) - (m + i)}{2} = \boxed{-i}. \]

**1.c)** \textit{Forme exponentielle de $z_1 + z_2$ pour $m = e^{i\frac{\pi}{8}}$.}

        $z_1 + z_2 = m - i = e^{i\frac{\pi}{8}} - i$. Or $-i = e^{-i\frac{\pi}{2}}$ ; en factorisant par l'arc moyen :
        \[ e^{i\frac{\pi}{8}} - e^{-i\frac{\pi}{2}} = e^{i\frac{\pi}{8}} + e^{i\frac{\pi}{2}} \cdot(-1)\,. \]
        \begin{methode}
            On factorise une somme $e^{i\theta_1} + e^{i\theta_2} = 2\cos\!\left(\dfrac{\theta_1 - \theta_2}{2}\right) e^{i\frac{\theta_1 + \theta_2}{2}}$. Ici $-i = e^{i\frac{3\pi}{2}}$.
        \end{methode}
        On écrit $-i = e^{i\frac{3\pi}{2}}$, donc
        \[ z_1 + z_2 = e^{i\frac{\pi}{8}} + e^{i\frac{3\pi}{2}} = 2\cos\!\left(\frac{\frac{\pi}{8} - \frac{3\pi}{2}}{2}\right) e^{i\frac{\frac{\pi}{8} + \frac{3\pi}{2}}{2}} = 2\cos\!\left(\frac{-11\pi}{16}\right) e^{i\frac{13\pi}{16}}. \]
        Comme $\cos\!\left(\dfrac{-11\pi}{16}\right) = \cos\!\left(\dfrac{11\pi}{16}\right) < 0$, on écrit $\cos\!\left(\dfrac{11\pi}{16}\right) = -\left|\cos\dfrac{11\pi}{16}\right|$ et on absorbe le signe $-1 = e^{i\pi}$ :
        \[ \boxed{z_1 + z_2 = 2\left|\cos\frac{11\pi}{16}\right|\, e^{i\left(\frac{13\pi}{16} + \pi\right)} = 2\left|\cos\frac{11\pi}{16}\right|\, e^{i\frac{29\pi}{16}}}. \]

**2.a)** \textit{Affixe de $M'$, symétrique de $M$ par rapport à l'axe imaginaire.}

        \begin{rappel}
            Le symétrique du point d'affixe $z$ par rapport à l'axe imaginaire a pour affixe $-\bar z$.
        \end{rappel}
        Le point $M$ a pour affixe $m$, donc $M'$ a pour affixe $\boxed{-\bar m}$.

**2.b)** \textit{Affixe de $N$ tel que $ANM'B$ soit un parallélogramme.}

        \begin{rappel}
            $ANM'B$ est un parallélogramme $\iff \vec{AN} = \vec{BM'} \iff z_N - z_A = z_{M'} - z_B$.
        \end{rappel}
        Avec $z_A = 2$, $z_B = -i$, $z_{M'} = -\bar m$ :
        \[ z_N - 2 = -\bar m - (-i) = -\bar m + i \ \Longrightarrow\ \boxed{z_N = -\bar m + 2 + i}. \]

**2.c)** \textit{$(AM) \perp (BM') \iff \mathrm{Re}\big((2 - i)m\big) = \mathrm{Re}(m^2)$.}

        \begin{methode}
            Deux droites sont perpendiculaires si et seulement si le quotient des affixes des vecteurs directeurs est imaginaire pur, i.e. de partie réelle nulle.
        \end{methode}
        Vecteurs directeurs : $\vec{AM}$ d'affixe $m - 2$ et $\vec{BM'}$ d'affixe $z_{M'} - z_B = -\bar m + i$. Les droites sont perpendiculaires si et seulement si
        \[ \frac{-\bar m + i}{m - 2} \in i\mathbb{R} \iff \mathrm{Re}\Big((-\bar m + i)\,\overline{(m - 2)}\Big) = 0. \]
        Or $\overline{(m - 2)} = \bar m - 2$, donc
        \[ (-\bar m + i)(\bar m - 2) = -\bar m^2 + 2\bar m + i\bar m - 2i. \]
        En prenant la partie réelle (avec $\mathrm{Re}(\bar w) = \mathrm{Re}(w)$) :
        \[ \mathrm{Re}\big((-\bar m + i)(\bar m - 2)\big) = -\mathrm{Re}(m^2) + 2\,\mathrm{Re}(m) + \mathrm{Re}(i\bar m) = 0. \]
        Comme $\mathrm{Re}(i\bar m) = \mathrm{Re}\big(\overline{-im}\big) = \mathrm{Re}(-im) = \mathrm{Im}(m)$, et $\mathrm{Re}\big((2 - i)m\big) = 2\,\mathrm{Re}(m) + \mathrm{Im}(m)$, on obtient
        \[ -\mathrm{Re}(m^2) + \big(2\,\mathrm{Re}(m) + \mathrm{Im}(m)\big) = 0 \iff \mathrm{Re}\big((2 - i)m\big) = \mathrm{Re}(m^2). \]
        <div class="my-2 font-semibold" style="color:#1F4E79">⇒ $(AM) \perp (BM') \iff \mathrm{Re}\big((2 - i)m\big) = \mathrm{Re}(m^2)$.</div>

    

<div class="my-5 rounded-lg px-4 py-2.5 text-white font-bold" style="background:#1F4E79">Exercice 4 — Arithmétique <span class="font-normal text-white/80 text-sm">(4 points)</span></div>

    $a \ge 2$ entier, $A = 1 + a + a^2 + a^3 + a^4 + a^5 + a^6$, $p$ premier impair tel que $p \mid A$.

**1.a)** \textit{Montrer que $a^7 \equiv 1 \ [p]$, puis $a^{7n} \equiv 1 \ [p]$.}

        \begin{rappel}
            $(a - 1)A = (a - 1)(1 + a + \cdots + a^6) = a^7 - 1$ (somme géométrique).
        \end{rappel}
        Comme $p \mid A$, on a $p \mid (a - 1)A = a^7 - 1$, donc $a^7 \equiv 1 \ [p]$.

        Par récurrence (ou en élevant à la puissance $n$) : $a^{7n} = (a^7)^n \equiv 1^n = 1 \ [p]$.
        \[ \boxed{(\forall n \in \mathbb{N})\quad a^{7n} \equiv 1 \ [p]}. \]

**1.b)** \textit{$a \wedge p = 1$, puis $a^{(p-1)m} \equiv 1 \ [p]$.}

        De $a^7 \equiv 1 \ [p]$, il existe un entier tel que $a \cdot a^6 \equiv 1 \ [p]$ : $a$ admet un inverse modulo $p$, donc $a \wedge p = 1$ (théorème de Bézout). $p$ étant premier et ne divisant pas $a$, le \textbf{petit théorème de Fermat} donne $a^{p-1} \equiv 1 \ [p]$. Par suite
        \[ a^{(p-1)m} = \big(a^{p-1}\big)^m \equiv 1^m = 1 \ [p] \quad (\forall m \in \mathbb{N}). \]
        \[ \boxed{(\forall m \in \mathbb{N})\quad a^{(p-1)m} \equiv 1 \ [p]}. \]

**2.a)** \textit{Si $7 \nmid (p - 1)$, montrer que $a \equiv 1 \ [p]$.}

        \begin{methode}
            $7$ étant premier et ne divisant pas $p - 1$, on a $7 \wedge (p - 1) = 1$ ; le théorème de Bézout fournit des entiers $u, v$ tels que $7u + (p-1)v = 1$, avec $u, v$ pouvant être choisis dans $\mathbb{N}$ via les congruences.
        \end{methode}
        Comme $7 \wedge (p - 1) = 1$, il existe $u, v \in \mathbb{N}$ tels que $7u - (p-1)v = 1$ (ou $7u = 1 + (p-1)v$). Alors
        \[ a = a^{7u - (p-1)v} = \frac{a^{7u}}{a^{(p-1)v}} \equiv \frac{1}{1} = 1 \ [p], \]
        en utilisant $a^{7u} \equiv 1$ (question 1.a) et $a^{(p-1)v} \equiv 1$ (question 1.b), valable car $a$ est inversible modulo $p$.
        \[ \boxed{a \equiv 1 \ [p]}. \]

**2.b)** \textit{En déduire que $p = 7$.}

        Si $a \equiv 1 \ [p]$, alors $a^k \equiv 1 \ [p]$ pour tout $k$, donc
        \[ A = 1 + a + \cdots + a^6 \equiv \underbrace{1 + 1 + \cdots + 1}_{7 \text{ termes}} = 7 \ [p]. \]
        Comme $p \mid A$, on a $p \mid 7$. Or $7$ est premier et $p$ est premier impair, donc $\boxed{p = 7}$.

**3)** \textit{Conclusion : $p = 7$ ou $p \equiv 1 \ [7]$.}

        Soit $p$ premier impair divisant $A$. Deux cas exclusifs :
        \begin{itemize}
            \item \textbf{Si $7 \nmid (p - 1)$ :} d'après 2.b, $p = 7$.
            \item \textbf{Si $7 \mid (p - 1)$ :} alors $p - 1 \equiv 0 \ [7]$, c'est-à-dire $p \equiv 1 \ [7]$.
        \end{itemize}
        <div class="my-2 font-semibold" style="color:#1F4E79">⇒ Dans tous les cas, $p = 7$ ou $p \equiv 1 \ [7]$.</div>
