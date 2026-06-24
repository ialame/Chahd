<div class="my-5 rounded-lg px-4 py-2.5 text-white font-bold" style="background:#1F4E79">Exercice 1 <span class="font-normal text-white/80 text-sm">(3,5 points)</span></div>
        Soit $\alpha$ un nombre complexe non nul.

        \textbf{I.} On considère dans l'ensemble des nombres complexes $\mathbb{C}$ l'équation d'inconnue $z$ :
        $$ (E_\alpha) : \quad z^2 - i\alpha\sqrt{3}\,z - \alpha^2 = 0 $$

**1.a)** Vérifier que le discriminant de $(E_\alpha)$ est $\Delta = \alpha^2$.

**1.b)** Résoudre dans $\mathbb{C}$ l'équation $(E_\alpha)$.

**2)** Sachant que $\alpha = |\alpha|\,e^{i\lambda}$ (avec $\lambda \in \mathbb{R}$), mettre les deux racines de l'équation $(E_\alpha)$ sous la forme exponentielle.

        \textbf{II.} On suppose que le plan complexe est rapporté à un repère orthonormé direct $(O,\vec{u},\vec{v})$.

        On considère les points $\Omega$, $M_1$ et $M_2$ d'affixes respectives :
        $$ \omega = \alpha, \quad z_1 = \frac{1+i\sqrt{3}}{2}\,\alpha \quad \text{et} \quad z_2 = \frac{-1+i\sqrt{3}}{2}\,\alpha $$
        et soit $R$ la rotation de centre $O$ et d'angle $\dfrac{\pi}{3}$.

**1.a)** Montrer que $R(\Omega) = M_1$ et que $R(M_1) = M_2$.

**1.b)** En déduire que les deux triangles $O\Omega M_1$ et $OM_1M_2$ sont équilatéraux.

**2.a)** Vérifier que $z_1 - z_2 = \alpha$.

**2.b)** Montrer que les deux droites $(\Omega M_2)$ et $(OM_1)$ sont orthogonales.

**2.c)** En déduire que $O\Omega M_1 M_2$ est un losange.

**3)** Montrer que pour tout réel $\theta$, le nombre $Z = \dfrac{z_2 - \alpha}{z_1 - \alpha} \div \dfrac{z_2 - |\alpha|\,e^{i\theta}}{z_1 - |\alpha|\,e^{i\theta}}$ est un réel.

    <div class="my-5 rounded-lg px-4 py-2.5 text-white font-bold" style="background:#1F4E79">Exercice 2 <span class="font-normal text-white/80 text-sm">(3 points)</span></div>
        Une urne contient $n$ boules numérotées de $1$ à $n$ (avec $n \in \mathbb{N}^*$, $n \ge 3$). On retire, sans remise, l'une après l'autre toutes les boules de cette urne. Toutes les boules sont indiscernables au toucher.

**1)** Quelle est la probabilité pour que les boules $1$, $2$ et $3$ sortent consécutivement et dans cet ordre ?

**2)** Calculer la probabilité pour que les boules $1$, $2$ et $3$ sortent dans cet ordre (consécutivement ou pas).

**3)** On considère la variable aléatoire $X_n$ égale au nombre de tirages nécessaires pour obtenir les boules $1$, $2$ et $3$.

        Déterminer la loi de probabilité de $X_n$.

    <div class="my-5 rounded-lg px-4 py-2.5 text-white font-bold" style="background:#1F4E79">Exercice 3 <span class="font-normal text-white/80 text-sm">(3,5 points)</span></div>
        On considère l'espace vectoriel de dimension $2$ noté $(V_2,+,\cdot)$.

        Soit $(\vec{i},\vec{j})$ une base de $V_2$. On pose $\vec{e_1} = \dfrac{1}{2}\vec{i} + \dfrac{1}{2}\vec{j}$ et $\vec{e_2} = \dfrac{1}{2}\vec{i} - \dfrac{1}{2}\vec{j}$.

        Soit $*$ la loi de composition interne définie par :
        $$ \forall (x,y,x',y') \in \mathbb{R}^4 \quad (x\vec{i} + y\vec{j}) * (x'\vec{i} + y'\vec{j}) = (xx' + yy')\vec{i} + (xy' + yx')\vec{j} $$

**1.a)** Montrer que $(\vec{e_1},\vec{e_2})$ est une base de $V_2$.

**1.b)** Vérifier que $\vec{e_1} * \vec{e_1} = \vec{e_1}$ ; $\ \vec{e_2} * \vec{e_2} = \vec{e_2}$ et $\ \vec{e_1} * \vec{e_2} = \vec{e_2} * \vec{e_1} = \vec{0}$.

**1.c)** Montrer que : $\forall (X,X',Y,Y') \in \mathbb{R}^4 \quad (X\vec{e_1} + Y\vec{e_2}) * (X'\vec{e_1} + Y'\vec{e_2}) = XX'\vec{e_1} + YY'\vec{e_2}$.

**2.a)** Montrer que la loi $*$ est commutative.

**2.b)** Montrer que la loi $*$ est associative.

**2.c)** Montrer que la loi $*$ admet un élément neutre.

**2.d)** Montrer que $(V_2,+,*)$ est un anneau commutatif unitaire.

**3)** Soit $\vec{u} \in V_2 - \{\vec{0}\}$. On note : $E_{\vec{u}} = \{\lambda\vec{u} \,/\, \lambda \in \mathbb{R}\}$.

**3.a)** Montrer que $(E_{\vec{u}},+)$ est un sous-groupe du groupe $(V_2,+)$.

**3.b)** Montrer que $(E_{\vec{u}},+,\cdot)$ est un sous-espace vectoriel de l'espace $(V_2,+,\cdot)$.

**3.c)** Montrer que : $E_{\vec{u}}$ stable pour $* \iff$ la famille $(\vec{u}*\vec{u},\vec{u})$ est liée.

**4)** On suppose que : $(\exists \alpha \in \mathbb{R}^*)$ ; $\ \vec{u}*\vec{u} = \alpha\vec{u}$.

        On considère l'application $\varphi : \mathbb{R}^* \to E_{\vec{u}}$ définie par $x \mapsto \dfrac{x}{\alpha}\vec{u}$.

**4.a)** Montrer que $\varphi$ est un isomorphisme de $(\mathbb{R}^*,\times)$ vers $(E_{\vec{u}},*)$.

**4.b)** En déduire que $(E_{\vec{u}},+,*)$ est un corps commutatif.

    <div class="my-5 rounded-lg px-4 py-2.5 text-white font-bold" style="background:#1F4E79">Exercice 4 <span class="font-normal text-white/80 text-sm">(10 points)</span></div>
        \textbf{Partie I} \\
        On considère la fonction $g$ définie sur $I = \,]-1,+\infty[$ par : $g(x) = 1 + x^2 - 2x(1+x)\ln(1+x)$.

**1.a)** Montrer que $\lim\limits_{x \to -1^+} g(x) = 2$.

**1.b)** Montrer que $\lim\limits_{x \to +\infty} g(x) = -\infty$.

**2)** Montrer que $g$ est dérivable sur $I$ et que $(\forall x \in I)$ $\ g'(x) = -2(1+2x)\ln(1+x)$.

**3)** On donne le tableau de variations de $g$ :

[figure : tableau de variations de $g$ sur $]-1,+\infty[$. $g'(x)$ est négative sur $]-1,-\tfrac12[$, s'annule en $-\tfrac12$, positive sur $]-\tfrac12,0[$, s'annule en $0$, négative sur $]0,+\infty[$. Valeurs : $g$ décroît de $2$ (en $-1^+$) jusqu'au minimum local $\tfrac{5}{4} - \tfrac{\ln 2}{2}$ en $-\tfrac12$, croît jusqu'au maximum $1$ en $0$, puis décroît vers $-\infty$.]

**3.a)** Montrer qu'il existe un réel strictement positif $\alpha$ unique tel que : $g(\alpha) = 0$.

**3.b)** Vérifier que $\alpha < 1$ (on prendra $\ln 2 = 0{,}7$).

**3.c)** En déduire que : $(\forall x \in \,]-1,\alpha[)$ $\ 0 < g(x)$ et que : $(\forall x \in \,]\alpha,+\infty[)$ $\ g(x) < 0$.

        \textbf{Partie II} \\
        On considère la fonction $f$ définie sur $I = \,]-1,+\infty[$ par : $f(x) = \dfrac{\ln(1+x)}{1+x^2}$.

        Soit $(C)$ sa courbe représentative dans un repère orthonormé $(O,\vec{i},\vec{j})$.

**1.a)** Calculer $\lim\limits_{x \to -1^+} f(x)$ puis interpréter graphiquement le résultat obtenu.

**1.b)** Calculer $\lim\limits_{x \to +\infty} f(x)$ puis interpréter graphiquement le résultat obtenu.

**2.a)** Montrer que $f$ est dérivable sur $I$ et que $(\forall x \in I)$ $\ f'(x) = \dfrac{g(x)}{(1+x)(1+x^2)^2}$.

**2.b)** Donner le sens de variation de $f$ sur $I$.

**2.c)** Vérifier que $f(\alpha) = \dfrac{1}{2\alpha(1+\alpha)}$ et que $(\forall x \in I)$ $\ f(x) \le \dfrac{1}{2\alpha(1+\alpha)}$.

**3.a)** Donner l'équation de la tangente $(T)$ à $(C)$ au point d'abscisse $0$.

**3.b)** Montrer que $(\forall x > 0)$ $\ \ln(1+x) < x$.

**3.c)** En déduire que $(\forall x > 0)$ $\ f(x) < x$.

**3.d)** Représenter graphiquement $(T)$ et $(C)$ (on prendra $\alpha = 0{,}8$ et $\|\vec{i}\| = \|\vec{j}\| = 2\,\text{cm}$).

        \textbf{Partie III} \\
        On pose $J = \displaystyle\int_0^1 f(x)\,\mathrm{d}x$.

**1.a)** En utilisant le changement de variable $t = \dfrac{1-x}{1+x}$, montrer que $J = \dfrac{\pi}{8}\ln 2$.

**1.b)** Déterminer, en $\text{cm}^2$, l'aire du domaine plan limité par la courbe $(C)$, la tangente $(T)$, la droite d'équation $x = 0$ et la droite d'équation $x = 1$.

**2)** En utilisant la méthode d'intégration par parties, calculer $K = \displaystyle\int_0^1 \dfrac{\arctan(x)}{1+x}\,\mathrm{d}x$.
