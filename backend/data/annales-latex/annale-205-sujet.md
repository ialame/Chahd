<div class="my-5 rounded-lg px-4 py-2.5 text-white font-bold" style="background:#1F4E79">Exercice 1 <span class="font-normal text-white/80 text-sm">(8 points)</span></div>
        \textbf{Partie I} \\
        On considère la fonction $f$ définie sur l'intervalle $I = \,]-\infty, 1[$ par :
        \[ f(x) = \ln(1 - x) \]
        Soit $(C)$ sa courbe représentative dans un repère orthonormé $(O,\vec{i},\vec{j})$.

**1.a)** Montrer que la fonction $f$ est continue sur $I$.

**1.b)** Montrer que la fonction $f$ est strictement décroissante sur $I$.

**1.c)** Calculer $\lim\limits_{x \to 1^-} f(x)$, $\lim\limits_{x \to -\infty} f(x)$ et $\lim\limits_{x \to -\infty} \dfrac{f(x)}{x}$.

**1.d)** Interpréter graphiquement les résultats obtenus.

**1.e)** Donner le tableau de variations de $f$.

**2.a)** Montrer que la courbe $(C)$ est concave.

**2.b)** Représenter graphiquement la courbe $(C)$ dans le repère $(O,\vec{i},\vec{j})$.

**3.a)** Montrer que $f$ est une bijection de $I$ vers $\mathbb{R}$. On note $f^{-1}$ sa bijection réciproque.

**3.b)** Déterminer $f^{-1}(x)$ pour $x \in \mathbb{R}$.

**3.c)** Vérifier que $f^{-1}(-1) = 1 - e^{-1}$.

        \textbf{Partie II} \\
        Pour tout réel $x$ et pour tout entier naturel $n \ge 2$, on pose :
        \[ P_n(x) = x + \frac{x^2}{2} + \cdots + \frac{x^n}{n} \]

**1)** Montrer que pour tout entier $n \ge 2$, il existe un unique réel $x_n \in \,]0, 1[$ tel que $P_n(x_n) = 1$.

**2)** Déterminer le réel $\alpha = x_2$ et vérifier que $0 < \alpha < 1$.

**3.a)** Montrer que pour tout entier $n \ge 2$, on a : $P_{n+1}(x_n) > 1$.

**3.b)** En déduire que la suite $(x_n)_{n \ge 2}$ ainsi définie est strictement décroissante.

**3.c)** Montrer que pour tout entier $n \ge 2$, on a : $x_n \in \,]0, \alpha]$.

**3.d)** Montrer que la suite $(x_n)_{n \ge 2}$ est convergente.

**4)** Pour tout réel $x \in I$ et pour tout entier $n \ge 2$, on pose :
        \[ f_n(x) = f(x) + P_n(x) \]

**4.a)** Montrer que : $(\forall x \in I)\,;\ (\forall n \ge 2)\quad f_n'(x) = \dfrac{-x^n}{1 - x}$.

**4.b)** Montrer que : $(\forall x \in [0, \alpha])\,;\ (\forall n \ge 2)\quad |f_n'(x)| \le \dfrac{\alpha^n}{1 - \alpha}$.

**4.c)** En déduire que : $(\forall x \in [0, \alpha])\,;\ (\forall n \ge 2)\quad |f_n(x)| \le \dfrac{\alpha^n}{1 - \alpha}$.

**4.d)** Montrer que : $(\forall n \ge 2)\quad |f(x_n) + 1| \le \dfrac{\alpha^n}{1 - \alpha}$.

**4.e)** En déduire la valeur de $\lim\limits_{n \to +\infty} x_n$.

    

    <div class="my-5 rounded-lg px-4 py-2.5 text-white font-bold" style="background:#1F4E79">Exercice 2 <span class="font-normal text-white/80 text-sm">(4 points)</span></div>
        On considère la fonction $F$ définie sur $\mathbb{R}$ par : $F(x) = \displaystyle\int_0^x e^{t - \frac{t^2}{2}} \, \mathrm{d}t$.

**1.a)** Déterminer le signe de $F(x)$ en fonction de $x$.

**1.b)** Montrer que $F$ est dérivable sur $\mathbb{R}$ et calculer sa dérivée première $F'(x)$.

**2.a)** En utilisant la méthode d'intégration par parties, montrer que :
        \[ \int_0^1 F(x) \, \mathrm{d}x = \int_0^1 (1 - x) e^{x - \frac{x^2}{2}} \, \mathrm{d}x \]

**2.b)** Calculer $\displaystyle\int_0^1 F(x) \, \mathrm{d}x$.

**3)** On considère la suite $(u_n)_{n \ge 1}$ définie par :
        \[ (\forall n \in \mathbb{N}^*)\quad u_n = \frac{1}{n} \sum_{k=0}^{k=n-1} \left[ (n - k) \int_{\frac{k}{n}}^{\frac{k+1}{n}} e^{x - \frac{x^2}{2}} \, \mathrm{d}x \right] \]

**3.a)** Vérifier que :
        \[ (\forall n \in \mathbb{N}^*)\quad u_n = \frac{1}{n} \sum_{k=0}^{k=n-1} (n - k) F\!\left(\frac{k+1}{n}\right) - \frac{1}{n} \sum_{k=0}^{k=n-1} (n - k) F\!\left(\frac{k}{n}\right) \]

**3.b)** Montrer que : $(\forall n \in \mathbb{N}^*)\quad u_n = \dfrac{1}{n} \displaystyle\sum_{k=1}^{k=n} F\!\left(\dfrac{k}{n}\right)$.

**3.c)** En déduire que la suite $(u_n)_{n \ge 1}$ est convergente et déterminer sa limite.

    

    <div class="my-5 rounded-lg px-4 py-2.5 text-white font-bold" style="background:#1F4E79">Exercice 3 <span class="font-normal text-white/80 text-sm">(4 points)</span></div>
        $m$ est un nombre complexe différent de $2$ et de $-i$.

        Le plan complexe est rapporté à un repère orthonormé direct $(O,\vec{u},\vec{v})$.

        On considère dans l'ensemble $\mathbb{C}$ l'équation d'inconnue $z$ :
        \[ (E) : z^2 - (m - i)z - im = 0 \]

**1.a)** Vérifier que le discriminant de l'équation $(E)$ est $(m + i)^2$.

**1.b)** Déterminer $z_1$ et $z_2$ les deux solutions de $(E)$.

**1.c)** Sachant que $m = e^{i\frac{\pi}{8}}$, écrire le nombre $z_1 + z_2$ sous forme exponentielle.

**2)** On considère les points $A$, $B$ et $M$ d'affixes respectives $2$, $-i$ et $m$, et soit $M'$ le symétrique de $M$ par rapport à l'axe imaginaire.

**2.a)** Déterminer en fonction de $m$ l'affixe de $M'$.

**2.b)** Déterminer en fonction de $m$ l'affixe du point $N$ tel que le quadrilatère $ANM'B$ soit un parallélogramme.

**2.c)** Montrer que les deux droites $(AM)$ et $(BM')$ sont perpendiculaires si et seulement si $\mathrm{Re}\big((2 - i)m\big) = \mathrm{Re}(m^2)$.

    

    <div class="my-5 rounded-lg px-4 py-2.5 text-white font-bold" style="background:#1F4E79">Exercice 4 <span class="font-normal text-white/80 text-sm">(4 points)</span></div>
        Soit $a$ un entier naturel supérieur ou égal à $2$ et soit $A = 1 + a + a^2 + a^3 + a^4 + a^5 + a^6$.

        Soit $p$ un nombre premier impair tel que : $p$ divise $A$.

**1.a)** Montrer que $a^7 \equiv 1 \ [p]$, en déduire que $\forall n \in \mathbb{N}\,;\ a^{7n} \equiv 1 \ [p]$.

**1.b)** Montrer que $a$ et $p$ sont premiers entre eux, en déduire que :
        \[ \forall m \in \mathbb{N}\,;\quad a^{(p-1)m} \equiv 1 \ [p] \]

**2)** On suppose que $7$ ne divise pas $p - 1$.

**2.a)** Montrer que : $a \equiv 1 \ [p]$.

**2.b)** En déduire que : $p = 7$.

**3)** Montrer que si $p$ est un nombre premier impair tel que $p$ divise $A$, alors : $p = 7$ ou $p \equiv 1 \ [7]$.
