% ====================== EN-TÊTE ======================
    

    \begin{tcolorbox}[colback=ansgray,colframe=exoframe!55,boxrule=0.5pt,arc=2pt,
        left=8pt,right=8pt,top=5pt,bottom=5pt]
    Mode d'emploi. 
        Les encadrés \textbf{verts} (\textit{Méthode}) donnent la \emph{stratégie} ;
        les encadrés \textbf{orange} (\textit{Rappel}) redonnent la \emph{formule de cours} ;
        les encadrés \textbf{bleus} (\textit{Remarque}) signalent un point d'attention.
        Les résultats à retenir sont \boxed{\text{encadrés}}.
    \end{tcolorbox}

% ============================================================
    <div class="my-5 rounded-lg px-4 py-2.5 text-white font-bold" style="background:#1F4E79">Exercice 1 — Analyse <span class="font-normal text-white/80 text-sm">(10 points)</span></div>

    <div class="mt-6 mb-2 text-base font-bold" style="color:#1F4E79">Partie A : deux encadrements préliminaires</div>

**1)** \textit{Vérifier que $0 \le 1 - x + x^2 - \dfrac{1}{1+x} \le x^3$ sur $\mathbb{R}^+$.}

        On réduit au même dénominateur. Pour $x \ge 0$ :
        \[
            1 - x + x^2 - \frac{1}{1+x} = \frac{(1-x+x^2)(1+x) - 1}{1+x} = \frac{(1 + x^3) - 1}{1+x} = \frac{x^3}{1+x}.
        \]
        Comme $x \ge 0$, on a $\dfrac{x^3}{1+x} \ge 0$, et $1 + x \ge 1$ donne $\dfrac{x^3}{1+x} \le x^3$. D'où
        <div class="my-2 font-semibold" style="color:#1F4E79">⇒ $0 \le 1 - x + x^2 - \dfrac{1}{1+x} \le x^3$.</div>

**2)** \textit{En déduire que $0 \le x - \dfrac{x^2}{2} + \dfrac{x^3}{3} - \ln(1+x) \le \dfrac{x^4}{4}$.}

        \begin{methode}
            On intègre l'encadrement précédent (valable pour tout $t \ge 0$) entre $0$ et $x$.
        \end{methode}
        Pour $t \in [0,x]$ : $0 \le 1 - t + t^2 - \dfrac{1}{1+t} \le t^3$. En intégrant de $0$ à $x$ :
        \[
            \int_0^x \Big(1 - t + t^2 - \tfrac{1}{1+t}\Big)\,\mathrm{d}t = x - \frac{x^2}{2} + \frac{x^3}{3} - \ln(1+x),
            \qquad \int_0^x t^3\,\mathrm{d}t = \frac{x^4}{4}.
        \]
        <div class="my-2 font-semibold" style="color:#1F4E79">⇒ $0 \le x - \dfrac{x^2}{2} + \dfrac{x^3}{3} - \ln(1+x) \le \dfrac{x^4}{4}$.</div>

    <div class="mt-6 mb-2 text-base font-bold" style="color:#1F4E79">Partie B : étude de $f$, $\ f(0)=\tfrac12$, $\ f(x)=\dfrac{x-\ln(1+x)}{x^2}$</div>

**1.a)** \textit{Continuité à droite de $f$ en $0$.}

        D'après la Partie A (question 2), pour $x > 0$ : $0 \le x - \dfrac{x^2}{2} + \dfrac{x^3}{3} - \ln(1+x) \le \dfrac{x^4}{4}$, donc
        \[
            x - \ln(1+x) = \frac{x^2}{2} - \frac{x^3}{3} + \varepsilon, \quad 0 \le \varepsilon \le \frac{x^4}{4},
            \qquad\text{d'où}\qquad
            f(x) = \frac{x-\ln(1+x)}{x^2} = \frac12 - \frac{x}{3} + \frac{\varepsilon}{x^2}.
        \]
        Comme $0 \le \dfrac{\varepsilon}{x^2} \le \dfrac{x^2}{4} \to 0$, on obtient $\displaystyle\lim_{x \to 0^+} f(x) = \frac12 = f(0)$.
        <div class="my-2 font-semibold" style="color:#1F4E79">⇒ $f$ est continue à droite en $0$.</div>

**1.b)** \textit{Dérivabilité à droite de $f$ en $0$.}

        Pour $x > 0$, le taux d'accroissement vaut, d'après l'écriture ci-dessus :
        \[
            \frac{f(x) - f(0)}{x - 0} = \frac{1}{x}\Big(-\frac{x}{3} + \frac{\varepsilon}{x^2}\Big) = -\frac13 + \frac{\varepsilon}{x^3},
            \qquad 0 \le \frac{\varepsilon}{x^3} \le \frac{x}{4} \to 0.
        \]
        <div class="my-2 font-semibold" style="color:#1F4E79">⇒ $f$ est dérivable à droite en $0$ et $f'_d(0) = -\dfrac13$.</div>

**1.c)** \textit{$\lim\limits_{x \to +\infty} f(x)$ et interprétation.}

        Pour $x > 0$ : $f(x) = \dfrac{x - \ln(1+x)}{x^2} = \dfrac{1}{x} - \dfrac{\ln(1+x)}{x^2}$. Or $\dfrac1x \to 0$ et, par croissances comparées, $\dfrac{\ln(1+x)}{x^2} \to 0$. Donc
        \[
            \boxed{\lim_{x \to +\infty} f(x) = 0}.
        \]
        <div class="my-2 font-semibold" style="color:#1F4E79">⇒ La droite d'équation $y = 0$ (l'axe des abscisses) est asymptote à $(C)$ au voisinage de $+\infty$.</div>

**2.a)** \textit{Montrer que $f'(x) = -\dfrac{g(x)}{x^3}$ avec $g(x) = x + \dfrac{x}{1+x} - 2\ln(1+x)$.}

        Pour $x > 0$, en posant $u(x) = x - \ln(1+x)$ (donc $u'(x) = 1 - \dfrac{1}{1+x} = \dfrac{x}{1+x}$) et $f = \dfrac{u}{x^2}$ :
        \[
            f'(x) = \frac{u'(x)\,x^2 - u(x)\,2x}{x^4} = \frac{x\,u'(x) - 2u(x)}{x^3}
            = \frac{\dfrac{x^2}{1+x} - 2x + 2\ln(1+x)}{x^3}.
        \]
        Or $\dfrac{x^2}{1+x} - 2x = -x - \dfrac{x}{1+x}$, donc le numérateur vaut $-\Big(x + \dfrac{x}{1+x} - 2\ln(1+x)\Big) = -g(x)$.
        <div class="my-2 font-semibold" style="color:#1F4E79">⇒ Pour tout $x > 0$ : $f'(x) = -\dfrac{g(x)}{x^3}$.</div>

**2.b)** \textit{Montrer que $0 \le g'(x) \le x^2$ sur $I$.}

        On a $g(0) = 0$ et, pour $x \ge 0$ :
        \[
            g'(x) = 1 + \frac{(1+x) - x}{(1+x)^2} - \frac{2}{1+x} = 1 + \frac{1}{(1+x)^2} - \frac{2}{1+x}
            = \left(1 - \frac{1}{1+x}\right)^2 = \frac{x^2}{(1+x)^2}.
        \]
        Comme $\dfrac{x^2}{(1+x)^2} \ge 0$ et $(1+x)^2 \ge 1$ pour $x \ge 0$ :
        <div class="my-2 font-semibold" style="color:#1F4E79">⇒ $0 \le g'(x) \le x^2$ sur $I$.</div>

**2.c)** \textit{En déduire que $0 \le g(x) \le \dfrac{x^3}{3}$ sur $I$.}

        On intègre l'encadrement précédent entre $0$ et $x$, avec $g(0) = 0$ :
        \[
            0 = \int_0^x 0\,\mathrm{d}t \le \int_0^x g'(t)\,\mathrm{d}t = g(x) \le \int_0^x t^2\,\mathrm{d}t = \frac{x^3}{3}.
        \]
        <div class="my-2 font-semibold" style="color:#1F4E79">⇒ $0 \le g(x) \le \dfrac{x^3}{3}$ sur $I$.</div>

**2.d)** \textit{Sens de variation de $f$ sur $I$.}

        Pour $x > 0$ : $f'(x) = -\dfrac{g(x)}{x^3}$ avec $g(x) \ge 0$ et $x^3 > 0$, donc $f'(x) \le 0$ ; et $f'_d(0) = -\dfrac13 < 0$.
        <div class="my-2 font-semibold" style="color:#1F4E79">⇒ $f$ est strictement décroissante sur $I = [0,+\infty[$.</div>

**3.a)** \textit{Tableau de variation de $f$.}

        $f(0) = \dfrac12$ et $\lim\limits_{+\infty} f = 0$, $f$ strictement décroissante :

        [figure : tableau de variation de $f$ sur $[0,+\infty[$ ; $f$ décroît de $f(0)=\tfrac12$ vers $0^+$.]

**3.b)** \textit{Représentation graphique de $(C)$ ($\|\vec{i}\|=\|\vec{j}\|=2\,\text{cm}$).}

        [figure : courbe $(C)$ décroissante partant de $\big(0,\tfrac12\big)$, de tangente à droite de pente $-\tfrac13$ en $0$, et s'approchant de l'axe des abscisses (asymptote $y=0$) quand $x \to +\infty$.]

    <div class="mt-6 mb-2 text-base font-bold" style="color:#1F4E79">Partie C : point fixe $\alpha$ et suite $(u_n)$</div>

**1)** \textit{Existence et unicité de $\alpha \in \, ]0,1[$ tel que $f(\alpha)=\alpha$.}

        \begin{methode}
            On étudie $\psi(x) = f(x) - x$ sur $[0,1]$ : continue, strictement décroissante (somme de deux décroissantes), on applique le théorème des valeurs intermédiaires.
        \end{methode}
        $\psi$ est continue sur $[0,1]$ et strictement décroissante (car $f$ décroît et $-x$ décroît). De plus
        \[
            \psi(0) = f(0) - 0 = \frac12 > 0, \qquad \psi(1) = f(1) - 1 = \big(1 - \ln 2\big) - 1 = -\ln 2 < 0.
        \]
        D'après le T.V.I. appliqué à une fonction continue strictement monotone, $\psi$ s'annule en un \textbf{unique} point.
        <div class="my-2 font-semibold" style="color:#1F4E79">⇒ Il existe un unique $\alpha \in \, ]0,1[$ tel que $f(\alpha) = \alpha$.</div>

**2.a)** \textit{Montrer que $u_n \in [0,1]$ pour tout $n$.}

        Récurrence. $u_0 = \dfrac13 \in [0,1]$. Supposons $u_n \in [0,1]$. Comme $f$ décroît sur $[0,1]$ :
        \[
            f(1) \le f(u_n) \le f(0), \qquad\text{soit}\qquad 1 - \ln 2 \le u_{n+1} \le \frac12.
        \]
        Or $0 \le 1 - \ln 2$ et $\dfrac12 \le 1$, donc $u_{n+1} \in [0,1]$.
        <div class="my-2 font-semibold" style="color:#1F4E79">⇒ Pour tout $n \in \mathbb{N}$ : $u_n \in [0,1]$.</div>

**2.b)** \textit{Montrer que $|u_{n+1} - \alpha| \le \dfrac13 |u_n - \alpha|$.}

        \begin{rappel}
            Inégalité des accroissements finis : si $|f'| \le M$ sur un intervalle contenant $a$ et $b$, alors $|f(b) - f(a)| \le M\,|b-a|$.
        \end{rappel}
        Sur $[0,1]$ on a $|f'(x)| = \dfrac{g(x)}{x^3} \le \dfrac{1}{x^3}\cdot\dfrac{x^3}{3} = \dfrac13$ (et $|f'_d(0)| = \tfrac13$). Comme $u_n, \alpha \in [0,1]$ et $u_{n+1} = f(u_n)$, $\alpha = f(\alpha)$ :
        \[
            |u_{n+1} - \alpha| = |f(u_n) - f(\alpha)| \le \frac13\,|u_n - \alpha|.
        \]
        <div class="my-2 font-semibold" style="color:#1F4E79">⇒ $|u_{n+1} - \alpha| \le \dfrac13 |u_n - \alpha|$.</div>

**2.c)** \textit{Montrer par récurrence que $|u_n - \alpha| \le \left(\dfrac13\right)^n$.}

        Initialisation : $|u_0 - \alpha| = \Big|\dfrac13 - \alpha\Big| \le 1 = \left(\dfrac13\right)^0$ (car $\alpha,\,\tfrac13 \in [0,1]$).
        Hérédité : si $|u_n - \alpha| \le \left(\dfrac13\right)^n$, alors par 2.b),
        \[
            |u_{n+1} - \alpha| \le \frac13\,|u_n - \alpha| \le \frac13\left(\frac13\right)^n = \left(\frac13\right)^{n+1}.
        \]
        <div class="my-2 font-semibold" style="color:#1F4E79">⇒ Pour tout $n \in \mathbb{N}$ : $|u_n - \alpha| \le \left(\dfrac13\right)^n$.</div>

**2.d)** \textit{Convergence de $(u_n)$.}

        Comme $0 < \dfrac13 < 1$, $\left(\dfrac13\right)^n \to 0$, donc par encadrement $|u_n - \alpha| \to 0$.
        <div class="my-2 font-semibold" style="color:#1F4E79">⇒ La suite $(u_n)$ converge vers $\alpha$.</div>

    <div class="mt-6 mb-2 text-base font-bold" style="color:#1F4E79">Partie D : $F(x)=\displaystyle\int_x^1 f(t)\,\mathrm{d}t$</div>

**1)** \textit{$F$ dérivable sur $I$ et calcul de $F'$.}

        $f$ est continue sur $I$, donc elle admet une primitive $\Phi$ sur $I$ et $F(x) = \Phi(1) - \Phi(x)$. Ainsi $F$ est dérivable sur $I$ et
        <div class="my-2 font-semibold" style="color:#1F4E79">⇒ pour tout $x \in I$ : $F'(x) = -f(x)$.</div>

**2.a)** \textit{Par intégration par parties, $F(x) = 2\ln 2 - \left(1 + \dfrac1x\right)\ln(1+x)$ pour $x > 0$.}

        \begin{methode}
            On écrit $f(t) = \dfrac{t - \ln(1+t)}{t^2} = \dfrac1t - \dfrac{\ln(1+t)}{t^2}$ et on intègre par parties le second terme avec $\Big(\dfrac{1}{t^2}\Big)' = $ dérivée de $-\dfrac1t$.
        \end{methode}
        Pour $0 < x \le t \le 1$, posons $u = \ln(1+t)$, $\mathrm{d}v = \dfrac{\mathrm{d}t}{t^2}$, donc $\mathrm{d}u = \dfrac{\mathrm{d}t}{1+t}$, $v = -\dfrac1t$ :
        \[
            \int_x^1 \frac{\ln(1+t)}{t^2}\,\mathrm{d}t
            = \Big[-\frac{\ln(1+t)}{t}\Big]_x^1 + \int_x^1 \frac{1}{t(1+t)}\,\mathrm{d}t.
        \]
        Avec $\dfrac{1}{t(1+t)} = \dfrac1t - \dfrac{1}{1+t}$, on a $\displaystyle\int_x^1 \frac{\mathrm{d}t}{t(1+t)} = \big[\ln t - \ln(1+t)\big]_x^1 = -\ln 2 - \ln x + \ln(1+x)$. Donc
        \[
            \int_x^1 \frac{\ln(1+t)}{t^2}\,\mathrm{d}t = \Big(-\ln 2 + \frac{\ln(1+x)}{x}\Big) + \big(-\ln 2 - \ln x + \ln(1+x)\big).
        \]
        D'autre part $\displaystyle\int_x^1 \frac{\mathrm{d}t}{t} = -\ln x$. En soustrayant :
        \[
            F(x) = -\ln x - \int_x^1 \frac{\ln(1+t)}{t^2}\,\mathrm{d}t
            = 2\ln 2 - \frac{\ln(1+x)}{x} - \ln(1+x).
        \]
        <div class="my-2 font-semibold" style="color:#1F4E79">⇒ $F(x) = 2\ln 2 - \left(1 + \dfrac1x\right)\ln(1+x)$.</div>

        \begin{remarque}
            On vérifie la cohérence : $F'(x) = -\Big(-\dfrac{\ln(1+x)}{x^2} + \dfrac1x\Big) = \dfrac{\ln(1+x) - x}{x^2} = -f(x)$. ✓
        \end{remarque}

**2.b)** \textit{$\lim\limits_{x\to 0^+} F(x)$ et $\displaystyle\int_0^1 f = 2\ln 2 - 1$.}

        Quand $x \to 0^+$ : $\left(1+\dfrac1x\right)\ln(1+x) = \dfrac{x+1}{x}\,\ln(1+x) = (x+1)\cdot\dfrac{\ln(1+x)}{x} \to 1 \cdot 1 = 1$. Donc
        \[
            \boxed{\lim_{x\to 0^+} F(x) = 2\ln 2 - 1}.
        \]
        Comme $f$ est continue à droite en $0$ et $F(x) = \displaystyle\int_x^1 f$, on a $F(0) = \displaystyle\int_0^1 f(t)\,\mathrm{d}t = \lim\limits_{x\to 0^+} F(x)$.
        <div class="my-2 font-semibold" style="color:#1F4E79">⇒ $\displaystyle\int_0^1 f(t)\,\mathrm{d}t = 2\ln 2 - 1$.</div>

**2.c)** \textit{Aire en $\text{cm}^2$.}

        Sur $[0,1]$, $f \ge 0$, donc l'aire (en unités d'aire) est $\displaystyle\int_0^1 f(t)\,\mathrm{d}t = 2\ln 2 - 1$. Comme $\|\vec{i}\| = \|\vec{j}\| = 2\,\text{cm}$, l'unité d'aire vaut $2 \times 2 = 4\,\text{cm}^2$.
        <div class="my-2 font-semibold" style="color:#1F4E79">⇒ $\mathcal{A} = 4\,(2\ln 2 - 1)\ \text{cm}^2$.</div>

    <div class="mt-6 mb-2 text-base font-bold" style="color:#1F4E79">Partie E : $D_k$ et $S_n$</div>

**1.a)** \textit{Vérifier que $0 \le D_k \le f(k) - f(k+1)$.}

        $f$ est décroissante : pour $t \in [k, k+1]$, $f(k+1) \le f(t) \le f(k)$, donc en intégrant sur $[k,k+1]$ (de longueur $1$) :
        \[
            f(k+1) \le \int_k^{k+1} f(t)\,\mathrm{d}t \le f(k).
        \]
        Avec $D_k = f(k) - \displaystyle\int_k^{k+1} f$, l'inégalité de gauche donne $D_k \ge 0$ et celle de droite donne $D_k \le f(k) - f(k+1)$.
        <div class="my-2 font-semibold" style="color:#1F4E79">⇒ $0 \le D_k \le f(k) - f(k+1)$.</div>

**1.b)** \textit{En déduire que $0 \le S_n \le \dfrac12$.}

        En sommant pour $k = 0$ à $n-1$ (télescopage) :
        \[
            0 \le S_n = \sum_{k=0}^{n-1} D_k \le \sum_{k=0}^{n-1}\big(f(k) - f(k+1)\big) = f(0) - f(n) \le f(0) = \frac12.
        \]
        <div class="my-2 font-semibold" style="color:#1F4E79">⇒ $0 \le S_n \le \dfrac12$.</div>

**2.a)** \textit{Monotonie de $(S_n)$.}

        $S_{n+1} - S_n = D_n \ge 0$ (question 1.a).
        <div class="my-2 font-semibold" style="color:#1F4E79">⇒ La suite $(S_n)$ est croissante.</div>

**2.b)** \textit{Convergence de $(S_n)$.}

        $(S_n)$ est croissante et majorée par $\dfrac12$.
        <div class="my-2 font-semibold" style="color:#1F4E79">⇒ La suite $(S_n)$ est convergente.</div>

**2.c)** \textit{Encadrement de la limite $l$ : $\dfrac32 - 2\ln 2 \le l \le \dfrac12$.}

        $(S_n)$ croissante de limite $l$, donc pour tout $n$ : $S_1 \le l \le \dfrac12$. Or
        \[
            S_1 = D_0 = f(0) - \int_0^1 f(t)\,\mathrm{d}t = \frac12 - (2\ln 2 - 1) = \frac32 - 2\ln 2.
        \]
        <div class="my-2 font-semibold" style="color:#1F4E79">⇒ $\dfrac32 - 2\ln 2 \le l \le \dfrac12$.</div>

% ============================================================
    <div class="my-5 rounded-lg px-4 py-2.5 text-white font-bold" style="background:#1F4E79">Exercice 2 — Nombres complexes <span class="font-normal text-white/80 text-sm">(3,5 points)</span></div>

    $j = -\dfrac12 + \dfrac{\sqrt3}{2}i = e^{i\frac{2\pi}{3}}$, $\ m \in \mathbb{C}^*$.

    <div class="mt-6 mb-2 text-base font-bold" style="color:#1F4E79">Partie I : équation $(E_m): z^2 + mj^2 z + m^2 j = 0$</div>

**1)** \textit{Vérifier que $j^3 = 1$ et $1 + j + j^2 = 0$.}

        $j = e^{i\frac{2\pi}{3}}$ donc $j^3 = e^{i 2\pi} = 1$. Ainsi $j$ est racine de $z^3 - 1 = (z-1)(z^2+z+1)$ ; comme $j \ne 1$, $j^2 + j + 1 = 0$.
        <div class="my-2 font-semibold" style="color:#1F4E79">⇒ $j^3 = 1$ et $1 + j + j^2 = 0$.</div>

**2.a)** \textit{Montrer que $\Delta = \big(m(1-j)\big)^2$.}

        \[
            \Delta = (mj^2)^2 - 4 m^2 j = m^2 j^4 - 4 m^2 j = m^2 j - 4 m^2 j = -3 m^2 j \quad (\text{car } j^4 = j).
        \]
        Et $\big(m(1-j)\big)^2 = m^2(1 - 2j + j^2)$. Comme $1 + j + j^2 = 0$, $j^2 = -1 - j$, d'où $1 - 2j + j^2 = -3j$. Donc $\big(m(1-j)\big)^2 = -3m^2 j$.
        <div class="my-2 font-semibold" style="color:#1F4E79">⇒ $\Delta = \big(m(1-j)\big)^2$.</div>

**2.b)** \textit{Déterminer $z_1$ et $z_2$.}

        Une racine carrée de $\Delta$ est $\delta = m(1-j)$. Donc
        \[
            z = \frac{-mj^2 \pm m(1-j)}{2}.
        \]
        Avec $z_1 = \dfrac{-mj^2 + m(1-j)}{2} = \dfrac{m(1 - j - j^2)}{2}$ et $1 - j - j^2 = 1 - (j + j^2) = 1 - (-1) = 2$, on a $z_1 = m$.
        Avec $z_2 = \dfrac{-mj^2 - m(1-j)}{2} = \dfrac{m(j - 1 - j^2)}{2}$ et $-1 - j^2 = j$, on a $j - 1 - j^2 = 2j$, donc $z_2 = mj$.
        <div class="my-2 font-semibold" style="color:#1F4E79">⇒ $z_1 = m$ et $z_2 = mj$.</div>

**3)** \textit{$m = 1+i$ : $(z_1 + z_2)^{2022}$ est un imaginaire pur.}

        $z_1 + z_2 = m + mj = m(1+j)$. Or $1 + j = -j^2 = -e^{i\frac{4\pi}{3}}$, et $1 + j = \dfrac12 + \dfrac{\sqrt3}{2}i = e^{i\frac{\pi}{3}}$. De plus $m = 1+i = \sqrt2\,e^{i\frac{\pi}{4}}$, donc
        \[
            z_1 + z_2 = \sqrt2\,e^{i\frac{\pi}{4}}\cdot e^{i\frac{\pi}{3}} = \sqrt2\,e^{i\frac{7\pi}{12}}.
        \]
        D'où $(z_1 + z_2)^{2022} = 2^{1011}\,e^{i\,\frac{7\pi}{12}\cdot 2022}$. Calculons l'argument : $\dfrac{7\pi}{12}\cdot 2022 = 7\pi \cdot \dfrac{2022}{12} = 7\pi \cdot 168{,}5 = 1179{,}5\,\pi$. Modulo $2\pi$ : $1179{,}5\,\pi = 1179\,\pi + \dfrac{\pi}{2} \equiv \pi + \dfrac{\pi}{2} = \dfrac{3\pi}{2}$ (car $1179$ est impair).
        Ainsi $(z_1+z_2)^{2022} = 2^{1011}\,e^{i\frac{3\pi}{2}} = -2^{1011}\,i$.
        <div class="my-2 font-semibold" style="color:#1F4E79">⇒ $(z_1 + z_2)^{2022}$ est un imaginaire pur.</div>

    <div class="mt-6 mb-2 text-base font-bold" style="color:#1F4E79">Partie II : transformation $\varphi : z' = (1+j)z$</div>

**1)** \textit{Nature et éléments caractéristiques de $\varphi$.}

        $z' = (1+j)z$ avec $1 + j = e^{i\frac{\pi}{3}}$ : $|1+j| = 1$ et $\arg(1+j) = \dfrac{\pi}{3}$. C'est une application de la forme $z' = az$ avec $|a| = 1$, $a \ne 1$, de point fixe $O$.
        <div class="my-2 font-semibold" style="color:#1F4E79">⇒ $\varphi$ est la rotation de centre $O$ et d'angle $\dfrac{\pi}{3}$.</div>

**2.a)** \textit{Montrer que $a' = -mj^2$, $b' = -m$, $c' = -mj$.}

        $a' = (1+j)\,m = -j^2 \cdot m = -mj^2$. \quad $b' = (1+j)\,mj = -mj^2 \cdot j = -mj^3 = -m$. \quad $c' = (1+j)\,mj^2 = -mj^2 \cdot j^2 = -mj^4 = -mj$.
        <div class="my-2 font-semibold" style="color:#1F4E79">⇒ $a' = -mj^2$, $\ b' = -m$, $\ c' = -mj$.</div>

**2.b)** \textit{Montrer que $p + qj + rj^2 = 0$.}

        Milieux : $p = \dfrac{a'+b'}{2} = \dfrac{-mj^2 - m}{2} = -\dfrac{m(1+j^2)}{2} = \dfrac{mj}{2}$ (car $1 + j^2 = -j$).
        De même $q = \dfrac{b'+c'}{2} = \dfrac{-m - mj}{2} = \dfrac{mj^2}{2}$ (car $1+j = -j^2$), et $r = \dfrac{a'+c'}{2} = \dfrac{-mj^2 - mj}{2} = \dfrac{m}{2}$ (car $j + j^2 = -1$). Alors
        \[
            p + qj + rj^2 = \frac{mj}{2} + \frac{mj^2}{2}\,j + \frac{m}{2}\,j^2 = \frac{m}{2}\big(j + j^3 + j^2\big) = \frac{m}{2}\big(1 + j + j^2\big) = 0.
        \]
        <div class="my-2 font-semibold" style="color:#1F4E79">⇒ $p + qj + rj^2 = 0$.</div>

**2.c)** \textit{En déduire que $PQR$ est équilatéral.}

        \begin{rappel}
            Trois points d'affixes $p,q,r$ forment un triangle équilatéral si et seulement si $p + qj + rj^2 = 0$ (ou $p + qj^2 + rj = 0$), où $j = e^{i\frac{2\pi}{3}}$.
        \end{rappel}
        La relation $p + qj + rj^2 = 0$ est exactement le critère d'équilatéralité.
        <div class="my-2 font-semibold" style="color:#1F4E79">⇒ Le triangle $PQR$ est équilatéral.</div>

% ============================================================
    <div class="my-5 rounded-lg px-4 py-2.5 text-white font-bold" style="background:#1F4E79">Exercice 3 — Arithmétique <span class="font-normal text-white/80 text-sm">(3 points)</span></div>

    $(E_n): (x+1)^n - x^n = ny$ dans $\mathbb{Z}^2$, $\ n > 1$, $\ p$ plus petit diviseur premier de $n$.

**1.a)** \textit{Montrer que $(x+1)^n \equiv x^n \;[p]$.}

        $(x,y)$ étant solution, $(x+1)^n - x^n = ny$. Comme $p \mid n$, on a $ny \equiv 0\;[p]$, donc $(x+1)^n - x^n \equiv 0\;[p]$.
        <div class="my-2 font-semibold" style="color:#1F4E79">⇒ $(x+1)^n \equiv x^n \;[p]$.</div>

**1.b)** \textit{Montrer que $p \wedge x = 1$ et $p \wedge (x+1) = 1$.}

        Supposons $p \mid x$. Alors $x^n \equiv 0\;[p]$, donc par 1.a) $(x+1)^n \equiv 0\;[p]$, et $p$ étant premier, $p \mid (x+1)$. D'où $p \mid (x+1) - x = 1$, impossible. Donc $p \nmid x$, c'est-à-dire $p \wedge x = 1$ ($p$ premier). De manière symétrique, $p \nmid (x+1)$.
        <div class="my-2 font-semibold" style="color:#1F4E79">⇒ $p$ est premier avec $x$ et avec $(x+1)$.</div>

**1.c)** \textit{En déduire que $(x+1)^{p-1} \equiv x^{p-1} \;[p]$.}

        \begin{rappel}
            Petit théorème de Fermat : si $p$ est premier et $p \nmid a$, alors $a^{p-1} \equiv 1\;[p]$.
        \end{rappel}
        Comme $p \nmid x$ et $p \nmid (x+1)$ : $x^{p-1} \equiv 1\;[p]$ et $(x+1)^{p-1} \equiv 1\;[p]$.
        <div class="my-2 font-semibold" style="color:#1F4E79">⇒ $(x+1)^{p-1} \equiv x^{p-1} \;[p]$.</div>

**2)** \textit{Si $n$ est pair, $(E_n)$ n'a pas de solution.}

        Si $n$ est pair, son plus petit diviseur premier est $p = 2$. Parmi $x$ et $x+1$ l'un est pair, l'autre impair : donc $x^n$ et $(x+1)^n$ sont de parités opposées et $(x+1)^n - x^n$ est \textbf{impair}. Or $ny$ est pair (car $n$ pair). Égalité impossible.
        <div class="my-2 font-semibold" style="color:#1F4E79">⇒ Si $n$ est pair, $(E_n)$ n'admet aucune solution dans $\mathbb{Z}^2$.</div>

**3.a)** \textit{Existence de $(u,v)$ tel que $nu + (p-1)v = 1$.}

        Tout diviseur premier de $n$ est $\ge p$ ; tout diviseur premier de $p-1$ est $< p$. Donc $n$ et $p-1$ n'ont aucun facteur premier commun : $n \wedge (p-1) = 1$. D'après le théorème de Bézout, il existe $(u,v) \in \mathbb{Z}^2$ tel que $nu + (p-1)v = 1$.
        <div class="my-2 font-semibold" style="color:#1F4E79">⇒ Un tel couple $(u,v)$ existe.</div>

**3.b)** \textit{Vérifier que $nr = 1 - (p-1)(v + nq)$.}

        Division euclidienne : $u = (p-1)q + r$ avec $0 \le r < p-1$. En reportant dans $nu + (p-1)v = 1$ :
        \[
            n\big((p-1)q + r\big) + (p-1)v = 1 \;\Longrightarrow\; nr = 1 - (p-1)v - n(p-1)q = 1 - (p-1)(v + nq).
        \]
        <div class="my-2 font-semibold" style="color:#1F4E79">⇒ $nr = 1 - (p-1)(v + nq)$.</div>

**3.c)** \textit{$v' = -(v+nq) \ge 0$.}

        Avec $v' = -(v+nq)$, la relation précédente s'écrit $nr = 1 + (p-1)v'$. Or $n \ge 1$ et $r \ge 0$ donnent $nr \ge 0$, donc $1 + (p-1)v' \ge 0$, soit $v' \ge -\dfrac{1}{p-1}$. Comme $p \ge 2$, $-\dfrac{1}{p-1} > -1$, et $v'$ est entier.
        <div class="my-2 font-semibold" style="color:#1F4E79">⇒ $v' \ge 0$.</div>

**3.d)** \textit{$(E_n)$ n'a pas de solution (cas $n$ impair).}

        On a $nr = 1 + (p-1)v'$ avec $r \ge 0$, $v' \ge 0$. Calculons $(x+1)^{nr}$ de deux façons modulo $p$.
        \begin{methode}
            D'un côté $nr$ est un multiple de $n$ ; de l'autre, $nr = 1 + (p-1)v'$ permet d'utiliser Fermat.
        \end{methode}
        D'après 1.a), $(x+1)^n \equiv x^n\;[p]$, donc $(x+1)^{nr} = \big((x+1)^n\big)^r \equiv (x^n)^r = x^{nr}\;[p]$.
        D'après 1.c) et Fermat, $(x+1)^{nr} = (x+1)\cdot\big((x+1)^{p-1}\big)^{v'} \equiv (x+1)\cdot 1 = x+1\;[p]$, et de même $x^{nr} \equiv x\;[p]$.
        En combinant : $x + 1 \equiv x\;[p]$, soit $1 \equiv 0\;[p]$, donc $p \mid 1$, impossible.
        <div class="my-2 font-semibold" style="color:#1F4E79">⇒ $(E_n)$ n'admet aucune solution dans $\mathbb{Z}^2$.</div>

% ============================================================
    <div class="my-5 rounded-lg px-4 py-2.5 text-white font-bold" style="background:#1F4E79">Exercice 4 — Structures algébriques <span class="font-normal text-white/80 text-sm">(3,5 points)</span></div>

    $E = \left\{ M(a,b) = \begin{pmatrix} a & 3b \\ b & a \end{pmatrix} \; / \; (a,b) \in \mathbb{Z}^2 \right\}$, \ $I = M(1,0)$.

**1.a)** \textit{$E$ sous-groupe de $(\mathcal{M}_2(\mathbb{R}), +)$.}

        $E \subset \mathcal{M}_2(\mathbb{R})$ et $E \ne \varnothing$ car $M(0,0) = 0 \in E$. Pour $M(a,b), M(c,d) \in E$ :
        \[
            M(a,b) - M(c,d) = \begin{pmatrix} a-c & 3(b-d) \\ b-d & a-c \end{pmatrix} = M(a-c,\,b-d) \in E.
        \]
        <div class="my-2 font-semibold" style="color:#1F4E79">⇒ $E$ est un sous-groupe de $(\mathcal{M}_2(\mathbb{R}), +)$.</div>

**1.b)** \textit{$M(a,b)\,M(c,d) = M(ac+3bd,\, ad+bc)$.}

        \[
            \begin{pmatrix} a & 3b \\ b & a \end{pmatrix}\begin{pmatrix} c & 3d \\ d & c \end{pmatrix}
            = \begin{pmatrix} ac + 3bd & 3ad + 3bc \\ bc + ad & 3bd + ac \end{pmatrix}
            = \begin{pmatrix} ac+3bd & 3(ad+bc) \\ ad+bc & ac+3bd \end{pmatrix} = M(ac+3bd,\, ad+bc).
        \]
        <div class="my-2 font-semibold" style="color:#1F4E79">⇒ La formule est vérifiée.</div>

**1.c)** \textit{$(E, +, \times)$ anneau commutatif et unitaire.}

        $(E,+)$ est un groupe (question 1.a). D'après 1.b), $E$ est stable par $\times$, et $I = M(1,0) \in E$ est l'élément unité. La multiplication est commutative car $M(ac+3bd, ad+bc)$ est symétrique en $(a,b) \leftrightarrow (c,d)$ : $M(a,b)M(c,d) = M(c,d)M(a,b)$. Donc $E$ est un sous-anneau unitaire et commutatif de $\mathcal{M}_2(\mathbb{R})$.
        <div class="my-2 font-semibold" style="color:#1F4E79">⇒ $(E, +, \times)$ est un anneau commutatif unitaire.</div>

**2)** \textit{$\varphi$ homomorphisme de $(E,\times)$ vers $(\mathbb{Z},\times)$.}

        Pour $M(a,b), M(c,d) \in E$, avec $\varphi(M(a,b)) = a^2 - 3b^2$ :
        \[
            \varphi\big(M(a,b)M(c,d)\big) = \varphi\big(M(ac+3bd, ad+bc)\big) = (ac+3bd)^2 - 3(ad+bc)^2.
        \]
        En développant : $(ac+3bd)^2 - 3(ad+bc)^2 = a^2c^2 + 9b^2d^2 - 3a^2d^2 - 3b^2c^2$, et d'autre part
        \[
            \varphi(M(a,b))\,\varphi(M(c,d)) = (a^2 - 3b^2)(c^2 - 3d^2) = a^2c^2 - 3a^2d^2 - 3b^2c^2 + 9b^2d^2.
        \]
        Les deux expressions coïncident.
        <div class="my-2 font-semibold" style="color:#1F4E79">⇒ $\varphi(MN) = \varphi(M)\varphi(N)$ : $\varphi$ est un homomorphisme de $(E,\times)$ vers $(\mathbb{Z},\times)$.</div>

**3.a)** \textit{$M(a,b)\,M(a,-b) = (a^2-3b^2)\,I$.}

        Par 1.b) : $M(a,b)\,M(a,-b) = M\big(a\cdot a + 3b(-b),\; a(-b) + ba\big) = M(a^2 - 3b^2,\, 0) = (a^2-3b^2)\,I$.
        <div class="my-2 font-semibold" style="color:#1F4E79">⇒ $M(a,b)\,M(a,-b) = (a^2-3b^2)\,I$.</div>

**3.b)** \textit{Si $M(a,b)$ inversible dans $(E,\times)$ alors $\varphi(M(a,b)) = 1$.}

        Si $M(a,b)$ est inversible d'inverse $N \in E$, alors $M(a,b)N = I$, donc $\varphi(M(a,b))\,\varphi(N) = \varphi(I) = 1$ dans $\mathbb{Z}$. Ainsi $\varphi(M(a,b)) = a^2 - 3b^2$ est un inversible de $\mathbb{Z}$, donc $a^2 - 3b^2 \in \{-1, 1\}$.
        \begin{remarque}
            Modulo $3$ : $a^2 - 3b^2 \equiv a^2 \in \{0, 1\}\;[3]$, donc $a^2 - 3b^2 \ne -1$ (car $-1 \equiv 2\;[3]$).
        \end{remarque}
        <div class="my-2 font-semibold" style="color:#1F4E79">⇒ $\varphi(M(a,b)) = a^2 - 3b^2 = 1$.</div>

**3.c)** \textit{Si $\varphi(M(a,b)) = 1$, alors $M(a,b)$ inversible ; inverse.}

        $\varphi(M(a,b)) = 1$ signifie $a^2 - 3b^2 = 1$. D'après 3.a), $M(a,b)\,M(a,-b) = 1 \cdot I = I$, et $M(a,-b) \in E$.
        <div class="my-2 font-semibold" style="color:#1F4E79">⇒ $M(a,b)$ est inversible dans $(E,\times)$, d'inverse $M(a,-b)$.</div>

**4.a)** \textit{$\varphi(M(a,b)) = 0 \iff a = b = 0$.}

        Si $a = b = 0$, $\varphi = 0$. Réciproquement, $a^2 - 3b^2 = 0$ avec $(a,b) \in \mathbb{Z}^2$ : si $b \ne 0$, alors $\big(\tfrac{a}{b}\big)^2 = 3$, ce qui est impossible car $\sqrt3 \notin \mathbb{Q}$. Donc $b = 0$, puis $a^2 = 0$, soit $a = 0$.
        <div class="my-2 font-semibold" style="color:#1F4E79">⇒ $\varphi(M(a,b)) = 0 \iff a = b = 0$, c'est-à-dire $M(a,b) = 0$.</div>

**4.b)** \textit{$(E, +, \times)$ est intègre.}

        Soient $M(a,b), M(c,d) \in E$ avec $M(a,b)\,M(c,d) = 0$. Alors $\varphi(M(a,b))\,\varphi(M(c,d)) = \varphi(0) = 0$ dans $\mathbb{Z}$, anneau intègre, donc $\varphi(M(a,b)) = 0$ ou $\varphi(M(c,d)) = 0$. Par 4.a), $M(a,b) = 0$ ou $M(c,d) = 0$.
        <div class="my-2 font-semibold" style="color:#1F4E79">⇒ $(E, +, \times)$ est intègre.</div>

**4.c)** \textit{$(E, +, \times)$ est-il un corps ?}

        Non. L'élément $M(0,1) = \begin{pmatrix} 0 & 3 \\ 1 & 0 \end{pmatrix}$ est non nul, mais $\varphi(M(0,1)) = 0 - 3 = -3 \ne 1$ ; d'après 3.b), $M(0,1)$ n'est pas inversible dans $(E,\times)$.
        <div class="my-2 font-semibold" style="color:#1F4E79">⇒ $(E, +, \times)$ n'est pas un corps (anneau intègre mais non corps).</div>
