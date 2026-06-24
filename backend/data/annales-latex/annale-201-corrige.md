<div class="my-5 rounded-lg px-4 py-2.5 text-white font-bold" style="background:#1F4E79">Exercice 1 — Nombres complexes <span class="font-normal text-white/80 text-sm">(3,5 points)</span></div>

    <div class="mt-6 mb-2 text-base font-bold" style="color:#1F4E79">Partie I : équation $(E_\alpha):z^2-i\alpha\sqrt3\,z-\alpha^2=0$</div>

**1.a)** \textit{Vérifier que $\Delta=\alpha^2$.}

        Le discriminant de $z^2-i\alpha\sqrt3\,z-\alpha^2=0$ est :
        $$ \Delta=(-i\alpha\sqrt3)^2-4(1)(-\alpha^2)=i^2\cdot3\alpha^2+4\alpha^2=-3\alpha^2+4\alpha^2=\boxed{\alpha^2}. $$

**1.b)** \textit{Résoudre $(E_\alpha)$.}

        Une racine carrée de $\Delta=\alpha^2$ est $\alpha$. Les solutions sont donc :
        $$ z=\frac{i\alpha\sqrt3\pm\alpha}{2}. $$
        $$ z_1=\frac{i\alpha\sqrt3+\alpha}{2}=\boxed{\frac{1+i\sqrt3}{2}\,\alpha},\qquad z_2=\frac{i\alpha\sqrt3-\alpha}{2}=\boxed{\frac{-1+i\sqrt3}{2}\,\alpha}. $$

**2)** \textit{Forme exponentielle des racines, avec $\alpha=|\alpha|e^{i\lambda}$.}

        \begin{rappel}
            $\dfrac{1+i\sqrt3}{2}=e^{i\pi/3}$ et $\dfrac{-1+i\sqrt3}{2}=e^{i2\pi/3}$ (module $1$, arguments $\tfrac\pi3$ et $\tfrac{2\pi}3$).
        \end{rappel}
        On a donc :
        $$ z_1=e^{i\pi/3}\cdot|\alpha|e^{i\lambda}=\boxed{|\alpha|\,e^{i(\lambda+\frac{\pi}{3})}},\qquad z_2=e^{i2\pi/3}\cdot|\alpha|e^{i\lambda}=\boxed{|\alpha|\,e^{i(\lambda+\frac{2\pi}{3})}}. $$

    <div class="mt-6 mb-2 text-base font-bold" style="color:#1F4E79">Partie II : $\Omega(\alpha)$, $M_1(z_1)$, $M_2(z_2)$, $R$ rotation de centre $O$ et d'angle $\tfrac\pi3$</div>

**1.a)** \textit{Montrer que $R(\Omega)=M_1$ et $R(M_1)=M_2$.}

        \begin{rappel}
            L'écriture complexe de la rotation de centre $O$ et d'angle $\theta$ est $z'=e^{i\theta}z$.
        \end{rappel}
        Ici $R$ a pour écriture $z'=e^{i\pi/3}z=\dfrac{1+i\sqrt3}{2}z$.
        \[
            R(\Omega):\ \frac{1+i\sqrt3}{2}\,\alpha=z_1.\quad\checkmark\qquad
            R(M_1):\ \frac{1+i\sqrt3}{2}\,z_1=e^{i\pi/3}\cdot e^{i\pi/3}|\alpha|e^{i\lambda}=|\alpha|e^{i(\lambda+\frac{2\pi}3)}=z_2.\quad\checkmark
        \]

**1.b)** \textit{En déduire que $O\Omega M_1$ et $OM_1M_2$ sont équilatéraux.}

        Une rotation conserve les distances, donc $R(\Omega)=M_1$ entraîne $OM_1=O\Omega$, et l'angle $(\vec{O\Omega},\vec{OM_1})=\tfrac\pi3$. Un triangle isocèle en $O$ avec un angle au sommet de $\tfrac\pi3$ est équilatéral.
        <div class="my-2 font-semibold" style="color:#1F4E79">⇒ $O\Omega M_1$ est équilatéral. De même, $R(M_1)=M_2$ donne $OM_2=OM_1$ et un angle de $\tfrac\pi3$, donc $OM_1M_2$ est équilatéral.</div>

**2.a)** \textit{Vérifier que $z_1-z_2=\alpha$.}

        $$ z_1-z_2=\frac{1+i\sqrt3}{2}\alpha-\frac{-1+i\sqrt3}{2}\alpha=\frac{(1+i\sqrt3)-(-1+i\sqrt3)}{2}\alpha=\frac{2}{2}\alpha=\boxed{\alpha}. $$

**2.b)** \textit{Montrer que $(\Omega M_2)\perp(OM_1)$.}

        \begin{methode}
            Deux droites $(AB)$ et $(CD)$ sont orthogonales lorsque $\dfrac{z_B-z_A}{z_D-z_C}$ est imaginaire pur.
        \end{methode}
        Affixe de $\vec{\Omega M_2}$ : $z_2-\alpha$ ; affixe de $\vec{OM_1}$ : $z_1$. D'après 2.a), $\alpha=z_1-z_2$, donc :
        \[
            z_2-\alpha=z_2-(z_1-z_2)=2z_2-z_1.
        \]
        \[
            \frac{z_2-\alpha}{z_1}=\frac{2z_2-z_1}{z_1}=\frac{2\cdot\frac{-1+i\sqrt3}{2}-\frac{1+i\sqrt3}{2}}{\frac{1+i\sqrt3}{2}}
            =\frac{(-1+i\sqrt3)-\frac{1+i\sqrt3}{2}}{\frac{1+i\sqrt3}{2}}=\frac{-3+i\sqrt3}{1+i\sqrt3}.
        \]
        En multipliant par le conjugué : $\dfrac{(-3+i\sqrt3)(1-i\sqrt3)}{1+3}=\dfrac{-3+3i\sqrt3+i\sqrt3+3}{4}=\dfrac{4i\sqrt3}{4}=i\sqrt3$, qui est imaginaire pur.
        <div class="my-2 font-semibold" style="color:#1F4E79">⇒ Les droites $(\Omega M_2)$ et $(OM_1)$ sont orthogonales.</div>

**2.c)** \textit{En déduire que $O\Omega M_1M_2$ est un losange.}

        D'après 1.b), $O\Omega=OM_1=OM_2=|\alpha|$, et $z_1-z_2=\alpha$ donne $M_2M_1=|z_1-z_2|=|\alpha|$, donc $\Omega M_1 = |z_1-\alpha|$… Plus simplement : le quadrilatère $O\Omega M_1 M_2$ (sommets $O,\Omega,M_1,M_2$) a ses quatre côtés issus de deux triangles équilatéraux de même côté $|\alpha|$ accolés le long de $[OM_1]$. Ses diagonales $(\Omega M_2)$ et $(OM_1)$ sont perpendiculaires (2.b)).
        \begin{rappel}
            Un parallélogramme dont les diagonales sont perpendiculaires est un losange.
        \end{rappel}
        Les deux triangles équilatéraux $O\Omega M_1$ et $OM_1M_2$ ayant le côté commun $[OM_1]$, on a $\Omega O=\Omega M_1=M_2O=M_2M_1=|\alpha|$.
        <div class="my-2 font-semibold" style="color:#1F4E79">⇒ Les quatre côtés sont égaux : $O\Omega M_1 M_2$ est un losange.</div>

**3)** \textit{Montrer que $Z=\dfrac{z_2-\alpha}{z_1-\alpha}\div\dfrac{z_2-|\alpha|e^{i\theta}}{z_1-|\alpha|e^{i\theta}}$ est réel pour tout $\theta\in\mathbb{R}$.}

        \begin{methode}
            Un nombre complexe $Z$ est réel si et seulement si $Z=\bar Z$.
        \end{methode}
        Posons $w=|\alpha|e^{i\theta}$, de sorte que $|w|=|\alpha|=|z_1|=|z_2|$ ; on a aussi $|\alpha|=|z_1|=|z_2|$. Tous ces points sont sur le cercle de centre $O$ et de rayon $|\alpha|$ (puisque $|z_1|=|z_2|=|\alpha|$). Pour un point $m$ d'affixe $w$ sur ce cercle, le rapport $\dfrac{z_2-w}{z_1-w}$ a pour argument l'angle inscrit $(\vec{mM_1},\vec{mM_2})$, qui ne dépend pas de la position de $m$ sur l'arc (angles inscrits interceptant le même arc $\widehat{M_1M_2}$). On a donc :
        \[
            \arg\!\left(\frac{z_2-\alpha}{z_1-\alpha}\right)\equiv\arg\!\left(\frac{z_2-w}{z_1-w}\right)\pmod\pi,
        \]
        car $\Omega(\alpha)$ et $m(w)$ sont tous deux sur ce cercle. Par suite $\arg Z\equiv 0\pmod\pi$.
        <div class="my-2 font-semibold" style="color:#1F4E79">⇒ $Z$ est un nombre réel pour tout $\theta\in\mathbb{R}$.</div>

    <div class="my-5 rounded-lg px-4 py-2.5 text-white font-bold" style="background:#1F4E79">Exercice 2 — Calcul des probabilités <span class="font-normal text-white/80 text-sm">(3 points)</span></div>

    Une urne contient $n$ boules numérotées de $1$ à $n$ ($n\ge3$), tirées sans remise l'une après l'autre. Un tirage est une permutation des $n$ boules : $\operatorname{Card}\Omega=n!$, équiprobables.

**1)** \textit{Probabilité que $1,2,3$ sortent consécutivement et dans cet ordre.}

        \begin{methode}
            On considère le bloc ordonné $(1,2,3)$ comme un seul élément ; il reste alors $(n-2)$ objets à permuter.
        \end{methode}
        Soit $A$ : « $1,2,3$ sortent consécutivement et dans cet ordre ». Le bloc $1\,2\,3$ et les $n-3$ autres boules forment $n-2$ objets à ordonner :
        \[
            \operatorname{Card}A=(n-2)!,\qquad p(A)=\frac{(n-2)!}{n!}=\boxed{\frac{1}{n(n-1)}}.
        \]

**2)** \textit{Probabilité que $1,2,3$ sortent dans cet ordre (consécutivement ou pas).}

        Soit $B$ : « $1,2,3$ apparaissent dans cet ordre ». On choisit les $3$ positions occupées par $1,2,3$ parmi les $n$ : $\binom{n}{3}$ choix ; sur ces positions l'ordre $1,2,3$ est imposé (une seule disposition). Les $n-3$ autres boules se répartissent de $(n-3)!$ façons :
        \[
            \operatorname{Card}B=\binom{n}{3}(n-3)!=\frac{n!}{3!},\qquad p(B)=\frac{n!/3!}{n!}=\boxed{\frac{1}{3!}=\frac16}.
        \]

**3)** \textit{Loi de probabilité de $X_n$ = rang du dernier tirage donnant $1,2$ et $3$.}

        $X_n$ est le numéro du tirage où la dernière des trois boules $1,2,3$ apparaît : il faut au moins $3$ tirages et au plus $n$, donc $X_n(\Omega)=\{3,4,\dots,n\}$.

        \begin{methode}
            $\{X_n=k\}$ : la $k$-ième boule tirée est l'une des trois (parmi $1,2,3$), les deux autres parmi $1,2,3$ sont placées dans les $k-1$ premières positions, le reste est quelconque.
        \end{methode}
        Pour $k\in\{3,\dots,n\}$ : on choisit laquelle de $1,2,3$ sort en position $k$ ($\binom31=3$ choix, ou $C_3^1$), on place les deux autres dans deux des $k-1$ premières positions ordonnées ($A_{k-1}^2$ choix), et on ordonne les $n-3$ boules restantes dans les $n-3$ places libres ($(n-3)!$) :
        \[
            \operatorname{Card}(X_n=k)=C_3^1\cdot A_{k-1}^2\cdot(n-3)!=3\,(k-1)(k-2)\,(n-3)!.
        \]
        \[
            p(X_n=k)=\frac{3(k-1)(k-2)(n-3)!}{n!}=\boxed{\frac{3(k-1)(k-2)}{n(n-1)(n-2)}},\qquad k\in\{3,\dots,n\}.
        \]

    <div class="my-5 rounded-lg px-4 py-2.5 text-white font-bold" style="background:#1F4E79">Exercice 3 — Structures algébriques <span class="font-normal text-white/80 text-sm">(3,5 points)</span></div>

    $(V_2,+,\cdot)$ espace vectoriel de base $(\vec i,\vec j)$ ; $\vec{e_1}=\tfrac12\vec i+\tfrac12\vec j$, $\vec{e_2}=\tfrac12\vec i-\tfrac12\vec j$ ;
    $(x\vec i+y\vec j)*(x'\vec i+y'\vec j)=(xx'+yy')\vec i+(xy'+yx')\vec j$.

**1.a)** \textit{$(\vec{e_1},\vec{e_2})$ est une base de $V_2$.}

        $V_2$ est de dimension $2$ ; il suffit de montrer que $(\vec{e_1},\vec{e_2})$ est libre. Si $\lambda\vec{e_1}+\mu\vec{e_2}=\vec0$, alors $\tfrac{\lambda+\mu}2\vec i+\tfrac{\lambda-\mu}2\vec j=\vec0$, d'où $\lambda+\mu=0$ et $\lambda-\mu=0$, donc $\lambda=\mu=0$.
        <div class="my-2 font-semibold" style="color:#1F4E79">⇒ $(\vec{e_1},\vec{e_2})$ est libre dans un espace de dimension $2$ : c'est une base de $V_2$.</div>

**1.b)** \textit{$\vec{e_1}*\vec{e_1}=\vec{e_1}$, $\vec{e_2}*\vec{e_2}=\vec{e_2}$, $\vec{e_1}*\vec{e_2}=\vec{e_2}*\vec{e_1}=\vec0$.}

        Avec $\vec{e_1}=\tfrac12\vec i+\tfrac12\vec j$ ($x=y=\tfrac12$) :
        \[
            \vec{e_1}*\vec{e_1}=\Big(\tfrac14+\tfrac14\Big)\vec i+\Big(\tfrac14+\tfrac14\Big)\vec j=\tfrac12\vec i+\tfrac12\vec j=\vec{e_1}.\quad\checkmark
        \]
        Avec $\vec{e_2}=\tfrac12\vec i-\tfrac12\vec j$ ($x=\tfrac12$, $y=-\tfrac12$) :
        \[
            \vec{e_2}*\vec{e_2}=\Big(\tfrac14+\tfrac14\Big)\vec i+\Big(-\tfrac14-\tfrac14\Big)\vec j=\tfrac12\vec i-\tfrac12\vec j=\vec{e_2}.\quad\checkmark
        \]
        \[
            \vec{e_1}*\vec{e_2}=\Big(\tfrac14-\tfrac14\Big)\vec i+\Big(-\tfrac14+\tfrac14\Big)\vec j=\vec0,
        \]
        et par symétrie de la formule, $\vec{e_2}*\vec{e_1}=\vec0$.\quad$\checkmark$

**1.c)** \textit{$(X\vec{e_1}+Y\vec{e_2})*(X'\vec{e_1}+Y'\vec{e_2})=XX'\vec{e_1}+YY'\vec{e_2}$.}

        On développe par bilinéarité de $*$ (issue de la définition, qui est bilinéaire en les coordonnées) et on utilise 1.b) :
        \[
            (X\vec{e_1}+Y\vec{e_2})*(X'\vec{e_1}+Y'\vec{e_2})
            =XX'(\vec{e_1}*\vec{e_1})+XY'(\vec{e_1}*\vec{e_2})+YX'(\vec{e_2}*\vec{e_1})+YY'(\vec{e_2}*\vec{e_2}).
        \]
        \[
            =XX'\vec{e_1}+\vec0+\vec0+YY'\vec{e_2}=\boxed{XX'\vec{e_1}+YY'\vec{e_2}}.
        \]
        \begin{remarque}
            Dans la base $(\vec{e_1},\vec{e_2})$, la loi $*$ se lit composante par composante : c'est le produit « coordonnée à coordonnée ».
        \end{remarque}

**2.a)** \textit{$*$ est commutative.}

        Avec $\vec V=X\vec{e_1}+Y\vec{e_2}$ et $\vec W=X'\vec{e_1}+Y'\vec{e_2}$, 1.c) donne $\vec V*\vec W=XX'\vec{e_1}+YY'\vec{e_2}=X'X\vec{e_1}+Y'Y\vec{e_2}=\vec W*\vec V$.
        <div class="my-2 font-semibold" style="color:#1F4E79">⇒ $*$ est commutative.</div>

**2.b)** \textit{$*$ est associative.}

        Avec un troisième vecteur $X''\vec{e_1}+Y''\vec{e_2}$ :
        \[
            (\vec V*\vec W)*\vec U=XX'X''\vec{e_1}+YY'Y''\vec{e_2}=\vec V*(\vec W*\vec U),
        \]
        grâce à l'associativité du produit dans $\mathbb{R}$ sur chaque coordonnée.
        <div class="my-2 font-semibold" style="color:#1F4E79">⇒ $*$ est associative.</div>

**2.c)** \textit{$*$ admet un élément neutre.}

        On cherche le neutre sous la forme $\vec e=\vec{e_1}+\vec{e_2}$ ($X=Y=1$) : pour tout $\vec V=X\vec{e_1}+Y\vec{e_2}$,
        \[
            \vec V*\vec e=X\cdot1\,\vec{e_1}+Y\cdot1\,\vec{e_2}=\vec V.
        \]
        Or $\vec{e_1}+\vec{e_2}=\big(\tfrac12+\tfrac12\big)\vec i+\big(\tfrac12-\tfrac12\big)\vec j=\vec i$.
        <div class="my-2 font-semibold" style="color:#1F4E79">⇒ L'élément neutre de $*$ est $\vec e=\vec{e_1}+\vec{e_2}=\vec i$.</div>

**2.d)** \textit{$(V_2,+,*)$ est un anneau commutatif unitaire.}

        $(V_2,+)$ est un groupe abélien (groupe additif de l'espace vectoriel). La loi $*$ est associative (2.b), commutative (2.a) et possède un neutre $\vec i$ (2.c). Reste la distributivité de $*$ sur $+$ : avec les coordonnées dans la base $(\vec{e_1},\vec{e_2})$,
        \[
            \vec V*(\vec W+\vec U)=X(X'+X'')\vec{e_1}+Y(Y'+Y'')\vec{e_2}=(\vec V*\vec W)+(\vec V*\vec U),
        \]
        et la commutativité donne l'autre distributivité.
        <div class="my-2 font-semibold" style="color:#1F4E79">⇒ $(V_2,+,*)$ est un anneau commutatif unitaire.</div>

**3)** $\vec u\in V_2-\{\vec0\}$, $E_{\vec u}=\{\lambda\vec u\,/\,\lambda\in\mathbb{R}\}$.

**3.a)** \textit{$(E_{\vec u},+)$ est un sous-groupe de $(V_2,+)$.}

        $E_{\vec u}\subset V_2$ et $\vec0=0\cdot\vec u\in E_{\vec u}$, donc $E_{\vec u}\ne\varnothing$. Pour $\lambda\vec u,\mu\vec u\in E_{\vec u}$ : $\lambda\vec u-\mu\vec u=(\lambda-\mu)\vec u\in E_{\vec u}$.
        <div class="my-2 font-semibold" style="color:#1F4E79">⇒ $(E_{\vec u},+)$ est un sous-groupe de $(V_2,+)$.</div>

**3.b)** \textit{$(E_{\vec u},+,\cdot)$ est un sous-espace vectoriel de $(V_2,+,\cdot)$.}

        $E_{\vec u}$ est non vide (contient $\vec0$) et stable par combinaison linéaire : pour $a,b\in\mathbb{R}$ et $\lambda\vec u,\mu\vec u\in E_{\vec u}$, $a(\lambda\vec u)+b(\mu\vec u)=(a\lambda+b\mu)\vec u\in E_{\vec u}$.
        <div class="my-2 font-semibold" style="color:#1F4E79">⇒ $E_{\vec u}$ est un sous-espace vectoriel de $V_2$ (la droite vectorielle dirigée par $\vec u$).</div>

**3.c)** \textit{$E_{\vec u}$ stable pour $*\iff(\vec u*\vec u,\vec u)$ liée.}

        \begin{methode}
            « $E_{\vec u}$ stable pour $*$ » signifie : $\forall \lambda,\mu\in\mathbb{R}$, $(\lambda\vec u)*(\mu\vec u)\in E_{\vec u}$. Par bilinéarité, $(\lambda\vec u)*(\mu\vec u)=\lambda\mu\,(\vec u*\vec u)$.
        \end{methode}
        ($\Rightarrow$) Si $E_{\vec u}$ est stable, alors $\vec u*\vec u=(1\cdot\vec u)*(1\cdot\vec u)\in E_{\vec u}$, donc $\vec u*\vec u=k\vec u$ pour un $k\in\mathbb{R}$ : la famille $(\vec u*\vec u,\vec u)$ est liée.

        ($\Leftarrow$) Si $(\vec u*\vec u,\vec u)$ est liée, comme $\vec u\ne\vec0$, il existe $k\in\mathbb{R}$ tel que $\vec u*\vec u=k\vec u$. Alors pour tout $\lambda,\mu$ : $(\lambda\vec u)*(\mu\vec u)=\lambda\mu(\vec u*\vec u)=\lambda\mu k\,\vec u\in E_{\vec u}$.
        <div class="my-2 font-semibold" style="color:#1F4E79">⇒ $E_{\vec u}$ est stable pour $*$ si et seulement si $(\vec u*\vec u,\vec u)$ est liée.</div>

**4)** On suppose $(\exists\alpha\in\mathbb{R}^*)$ tel que $\vec u*\vec u=\alpha\vec u$ ; $\varphi:\mathbb{R}^*\to E_{\vec u}$, $x\mapsto\tfrac{x}{\alpha}\vec u$.

**4.a)** \textit{$\varphi$ est un isomorphisme de $(\mathbb{R}^*,\times)$ vers $(E_{\vec u},*)$.}

        D'après 4) et 3.c), $E_{\vec u}$ est stable pour $*$. Montrons d'abord que $\varphi$ est un morphisme. Pour $x,y\in\mathbb{R}^*$ :
        \[
            \varphi(x)*\varphi(y)=\Big(\tfrac{x}{\alpha}\vec u\Big)*\Big(\tfrac{y}{\alpha}\vec u\Big)=\frac{xy}{\alpha^2}(\vec u*\vec u)=\frac{xy}{\alpha^2}\,\alpha\vec u=\frac{xy}{\alpha}\vec u=\varphi(xy).
        \]
        Donc $\varphi$ est un homomorphisme de $(\mathbb{R}^*,\times)$ vers $(E_{\vec u},*)$. De plus $\varphi$ est bijective : tout élément de $E_{\vec u}$ s'écrit $\lambda\vec u$ avec $\lambda\in\mathbb{R}$, et $\varphi(x)=\lambda\vec u\iff x=\alpha\lambda$ ; comme $E_{\vec u}\setminus\{\vec0\}$ (les éléments inversibles) correspond à $\lambda\ne0$, soit $x\in\mathbb{R}^*$, l'application $\varphi$ réalise une bijection de $\mathbb{R}^*$ sur $E_{\vec u}\setminus\{\vec0\}$.
        <div class="my-2 font-semibold" style="color:#1F4E79">⇒ $\varphi$ est un isomorphisme de $(\mathbb{R}^*,\times)$ vers $(E_{\vec u}\setminus\{\vec0\},*)$.</div>

**4.b)** \textit{En déduire que $(E_{\vec u},+,*)$ est un corps commutatif.}

        $(E_{\vec u},+)$ est un groupe abélien (3.a) et $*$ est interne sur $E_{\vec u}$, associative, commutative et distributive sur $+$ (héritées de $V_2$). Le neutre multiplicatif est $\varphi(1)=\tfrac{1}{\alpha}\vec u$. Enfin, $\varphi$ étant un isomorphisme de $(\mathbb{R}^*,\times)$ sur $(E_{\vec u}\setminus\{\vec0\},*)$, ce dernier est un groupe : tout élément non nul de $E_{\vec u}$ admet un symétrique pour $*$.
        <div class="my-2 font-semibold" style="color:#1F4E79">⇒ $(E_{\vec u},+,*)$ est un corps commutatif.</div>

    <div class="my-5 rounded-lg px-4 py-2.5 text-white font-bold" style="background:#1F4E79">Exercice 4 — Analyse <span class="font-normal text-white/80 text-sm">(10 points)</span></div>

    <div class="mt-6 mb-2 text-base font-bold" style="color:#1F4E79">Partie I : $g(x)=1+x^2-2x(1+x)\ln(1+x)$ sur $I=\,]-1,+\infty[$</div>

**1.a)** \textit{$\lim\limits_{x\to-1^+}g(x)=2$.}

        Quand $x\to-1^+$, $\ln(1+x)\to-\infty$, mais $1+x\to0^+$. On utilise $\lim_{t\to0^+}t\ln t=0$ avec $t=1+x$ : le terme $(1+x)\ln(1+x)\to0$, donc $2x(1+x)\ln(1+x)\to0$. Ainsi :
        \[
            \lim_{x\to-1^+}g(x)=1+(-1)^2-0=\boxed{2}.
        \]

**1.b)** \textit{$\lim\limits_{x\to+\infty}g(x)=-\infty$.}

        On factorise par $x^2$ pour $x>0$ :
        \[
            g(x)=x^2\Big(\frac{1}{x^2}+1-\frac{2(1+x)\ln(1+x)}{x}\Big).
        \]
        Or $\dfrac{(1+x)\ln(1+x)}{x}\to+\infty$ (car $\ln(1+x)\to+\infty$ et $\tfrac{1+x}{x}\to1$). Le terme entre parenthèses tend vers $-\infty$, et $x^2\to+\infty$ :
        <div class="my-2 font-semibold" style="color:#1F4E79">⇒ $\lim\limits_{x\to+\infty}g(x)=-\infty$.</div>

**2)** \textit{Dérivabilité de $g$ et $g'(x)=-2(1+2x)\ln(1+x)$.}

        $g$ est dérivable sur $I$ comme somme et produit de fonctions dérivables ($x\mapsto\ln(1+x)$ l'est sur $]-1,+\infty[$). Avec $\big[x(1+x)\big]'=1+2x$ et $\big[\ln(1+x)\big]'=\tfrac1{1+x}$ :
        \[
            g'(x)=2x-2\Big[(1+2x)\ln(1+x)+x(1+x)\cdot\tfrac{1}{1+x}\Big]=2x-2(1+2x)\ln(1+x)-2x.
        \]
        \[
            g'(x)=\boxed{-2(1+2x)\ln(1+x)}.
        \]

**3.a)** \textit{Existence et unicité de $\alpha>0$ tel que $g(\alpha)=0$.}

        D'après le tableau de variations, sur $]0,+\infty[$ la fonction $g$ est continue et strictement décroissante de $g(0)=1>0$ vers $-\infty$. D'après le théorème des valeurs intermédiaires (fonction continue strictement monotone), l'équation $g(x)=0$ admet une solution unique $\alpha$ dans $]0,+\infty[$.
        <div class="my-2 font-semibold" style="color:#1F4E79">⇒ Il existe un unique réel $\alpha>0$ tel que $g(\alpha)=0$.</div>

**3.b)** \textit{Vérifier que $\alpha<1$ (avec $\ln2=0{,}7$).}

        On calcule $g(1)=1+1-2\cdot1\cdot2\cdot\ln2=2-4\ln2=2-4(0{,}7)=2-2{,}8=-0{,}8<0$. Comme $g$ est strictement décroissante sur $]0,+\infty[$ avec $g(\alpha)=0>g(1)$, on a $\alpha<1$.
        <div class="my-2 font-semibold" style="color:#1F4E79">⇒ $\alpha<1$.</div>

**3.c)** \textit{Signe de $g$.}

        Sur $]-1,0]$, le tableau montre $g(x)\ge g_{\min}$ ; en réalité $g$ y reste $>0$ (minimum local $\tfrac54-\tfrac{\ln2}{2}=1{,}25-0{,}35=0{,}9>0$, et $g\to2$ en $-1^+$). Sur $]0,+\infty[$, $g$ décroît strictement et s'annule en $\alpha$. Donc :
        \[
            (\forall x\in\,]-1,\alpha[)\ \ g(x)>0\qquad\text{et}\qquad(\forall x\in\,]\alpha,+\infty[)\ \ g(x)<0.
        \]

    <div class="mt-6 mb-2 text-base font-bold" style="color:#1F4E79">Partie II : $f(x)=\dfrac{\ln(1+x)}{1+x^2}$ sur $I=\,]-1,+\infty[$</div>

**1.a)** \textit{$\lim\limits_{x\to-1^+}f(x)$ et interprétation.}

        Quand $x\to-1^+$ : $\ln(1+x)\to-\infty$ et $1+x^2\to2>0$, donc $f(x)\to-\infty$.
        <div class="my-2 font-semibold" style="color:#1F4E79">⇒ $\lim\limits_{x\to-1^+}f(x)=-\infty$ : la droite d'équation $x=-1$ est une asymptote verticale à $(C)$.</div>

**1.b)** \textit{$\lim\limits_{x\to+\infty}f(x)$ et interprétation.}

        Pour $x\to+\infty$ : $\dfrac{\ln(1+x)}{1+x^2}\sim\dfrac{\ln x}{x^2}\to0$ (croissances comparées).
        <div class="my-2 font-semibold" style="color:#1F4E79">⇒ $\lim\limits_{x\to+\infty}f(x)=0$ : l'axe des abscisses ($y=0$) est une asymptote horizontale à $(C)$ en $+\infty$.</div>

**2.a)** \textit{Dérivabilité de $f$ et $f'(x)=\dfrac{g(x)}{(1+x)(1+x^2)^2}$.}

        $f$ est dérivable sur $I$ (quotient de fonctions dérivables, dénominateur non nul). Avec $u=\ln(1+x)$, $v=1+x^2$, $u'=\tfrac1{1+x}$, $v'=2x$ :
        \[
            f'(x)=\frac{\frac{1}{1+x}(1+x^2)-2x\ln(1+x)}{(1+x^2)^2}
            =\frac{(1+x^2)-2x(1+x)\ln(1+x)}{(1+x)(1+x^2)^2}.
        \]
        Or le numérateur vaut $1+x^2-2x(1+x)\ln(1+x)=g(x)$, d'où :
        \[
            f'(x)=\boxed{\frac{g(x)}{(1+x)(1+x^2)^2}}.
        \]

**2.b)** \textit{Sens de variation de $f$.}

        Sur $I$, $(1+x)>0$ et $(1+x^2)^2>0$, donc $f'(x)$ a le signe de $g(x)$. D'après 3.c) :
        <div class="my-2 font-semibold" style="color:#1F4E79">⇒ $f$ est strictement croissante sur $]-1,\alpha]$ et strictement décroissante sur $[\alpha,+\infty[$ ; elle admet un maximum en $\alpha$.</div>

**2.c)** \textit{$f(\alpha)=\dfrac{1}{2\alpha(1+\alpha)}$ et majoration.}

        Comme $g(\alpha)=0$ : $1+\alpha^2=2\alpha(1+\alpha)\ln(1+\alpha)$, d'où $\ln(1+\alpha)=\dfrac{1+\alpha^2}{2\alpha(1+\alpha)}$. Alors :
        \[
            f(\alpha)=\frac{\ln(1+\alpha)}{1+\alpha^2}=\frac{1}{1+\alpha^2}\cdot\frac{1+\alpha^2}{2\alpha(1+\alpha)}=\boxed{\frac{1}{2\alpha(1+\alpha)}}.
        \]
        Puisque $f$ atteint son maximum en $\alpha$ (2.b) : $(\forall x\in I)\ \ f(x)\le f(\alpha)=\dfrac{1}{2\alpha(1+\alpha)}$.

**3.a)** \textit{Tangente $(T)$ en $0$.}

        $f(0)=\dfrac{\ln1}{1}=0$ et $f'(0)=\dfrac{g(0)}{(1)(1)^2}=\dfrac{1}{1}=1$. L'équation de $(T)$ est $y=f'(0)(x-0)+f(0)$ :
        \[
            \boxed{(T):\ y=x}.
        \]

**3.b)** \textit{$(\forall x>0)\ \ln(1+x)<x$.}

        Soit $\psi(x)=x-\ln(1+x)$ sur $[0,+\infty[$ : $\psi'(x)=1-\dfrac1{1+x}=\dfrac{x}{1+x}>0$ pour $x>0$. Donc $\psi$ est strictement croissante et $\psi(x)>\psi(0)=0$ pour $x>0$.
        <div class="my-2 font-semibold" style="color:#1F4E79">⇒ $(\forall x>0)\ \ln(1+x)<x$.</div>

**3.c)** \textit{$(\forall x>0)\ f(x)<x$.}

        Pour $x>0$ : $1+x^2\ge1$ donc $f(x)=\dfrac{\ln(1+x)}{1+x^2}\le\ln(1+x)<x$ d'après 3.b).
        <div class="my-2 font-semibold" style="color:#1F4E79">⇒ $(\forall x>0)\ f(x)<x$.</div>

**3.d)** \textit{Tracé de $(T)$ et $(C)$.}

        <div class="flex justify-center my-5"><img src="data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz4KPHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHhtbG5zOnhsaW5rPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5L3hsaW5rIiB3aWR0aD0iMjg1LjY4M3B0IiBoZWlnaHQ9IjIyOS41MjRwdCIgdmlld0JveD0iMCAwIDI4NS42ODMgMjI5LjUyNCI+CjxkZWZzPgo8Zz4KPGcgaWQ9ImdseXBoLTAtMCI+CjxwYXRoIGQ9Ik0gNi41NDY4NzUgLTIuMjgxMjUgQyA2LjcxODc1IC0yLjI4MTI1IDYuODkwNjI1IC0yLjI4MTI1IDYuODkwNjI1IC0yLjQ4NDM3NSBDIDYuODkwNjI1IC0yLjY4NzUgNi43MTg3NSAtMi42ODc1IDYuNTQ2ODc1IC0yLjY4NzUgTCAxLjE3MTg3NSAtMi42ODc1IEMgMSAtMi42ODc1IDAuODI4MTI1IC0yLjY4NzUgMC44MjgxMjUgLTIuNDg0Mzc1IEMgMC44MjgxMjUgLTIuMjgxMjUgMSAtMi4yODEyNSAxLjE3MTg3NSAtMi4yODEyNSBaIE0gNi41NDY4NzUgLTIuMjgxMjUgIi8+CjwvZz4KPGcgaWQ9ImdseXBoLTEtMCI+CjxwYXRoIGQ9Ik0gMi45MjE4NzUgLTYuMzU5Mzc1IEMgMi45MjE4NzUgLTYuNTkzNzUgMi45MjE4NzUgLTYuNjI1IDIuNjg3NSAtNi42MjUgQyAyLjA3ODEyNSAtNS45ODQzNzUgMS4yMDMxMjUgLTUuOTg0Mzc1IDAuODkwNjI1IC01Ljk4NDM3NSBMIDAuODkwNjI1IC01LjY3MTg3NSBDIDEuMDc4MTI1IC01LjY3MTg3NSAxLjY3MTg3NSAtNS42NzE4NzUgMi4xODc1IC01LjkzNzUgTCAyLjE4NzUgLTAuNzgxMjUgQyAyLjE4NzUgLTAuNDIxODc1IDIuMTU2MjUgLTAuMzEyNSAxLjI2NTYyNSAtMC4zMTI1IEwgMC45Mzc1IC0wLjMxMjUgTCAwLjkzNzUgMCBDIDEuMjk2ODc1IC0wLjAzMTI1IDIuMTU2MjUgLTAuMDMxMjUgMi41NDY4NzUgLTAuMDMxMjUgQyAyLjk1MzEyNSAtMC4wMzEyNSAzLjgxMjUgLTAuMDMxMjUgNC4xNTYyNSAwIEwgNC4xNTYyNSAtMC4zMTI1IEwgMy44NDM3NSAtMC4zMTI1IEMgMi45NTMxMjUgLTAuMzEyNSAyLjkyMTg3NSAtMC40MjE4NzUgMi45MjE4NzUgLTAuNzgxMjUgWiBNIDIuOTIxODc1IC02LjM1OTM3NSAiLz4KPC9nPgo8ZyBpZD0iZ2x5cGgtMS0xIj4KPHBhdGggZD0iTSAxLjI2NTYyNSAtMC43NjU2MjUgTCAyLjMxMjUgLTEuNzgxMjUgQyAzLjg1OTM3NSAtMy4xNTYyNSA0LjQ2ODc1IC0zLjcwMzEyNSA0LjQ2ODc1IC00LjY4NzUgQyA0LjQ2ODc1IC01LjgyODEyNSAzLjU2MjUgLTYuNjI1IDIuMzU5Mzc1IC02LjYyNSBDIDEuMjM0Mzc1IC02LjYyNSAwLjUgLTUuNzAzMTI1IDAuNSAtNC44MTI1IEMgMC41IC00LjI2NTYyNSAxIC00LjI2NTYyNSAxLjAzMTI1IC00LjI2NTYyNSBDIDEuMTg3NSAtNC4yNjU2MjUgMS41NDY4NzUgLTQuMzc1IDEuNTQ2ODc1IC00Ljc5Njg3NSBDIDEuNTQ2ODc1IC01LjA0Njg3NSAxLjM1OTM3NSAtNS4zMTI1IDEuMDE1NjI1IC01LjMxMjUgQyAwLjkzNzUgLTUuMzEyNSAwLjkyMTg3NSAtNS4zMTI1IDAuODkwNjI1IC01LjI5Njg3NSBDIDEuMTA5Mzc1IC01LjkzNzUgMS42NTYyNSAtNi4zMTI1IDIuMjE4NzUgLTYuMzEyNSBDIDMuMTI1IC02LjMxMjUgMy41NjI1IC01LjUgMy41NjI1IC00LjY4NzUgQyAzLjU2MjUgLTMuODkwNjI1IDMuMDYyNSAtMy4xMDkzNzUgMi41MTU2MjUgLTIuNSBMIDAuNjA5Mzc1IC0wLjM3NSBDIDAuNSAtMC4yNjU2MjUgMC41IC0wLjIzNDM3NSAwLjUgMCBMIDQuMTg3NSAwIEwgNC40Njg3NSAtMS43MzQzNzUgTCA0LjIxODc1IC0xLjczNDM3NSBDIDQuMTU2MjUgLTEuNDM3NSA0LjA5Mzc1IC0xIDQgLTAuODQzNzUgQyAzLjkyMTg3NSAtMC43NjU2MjUgMy4yNjU2MjUgLTAuNzY1NjI1IDMuMDQ2ODc1IC0wLjc2NTYyNSBaIE0gMS4yNjU2MjUgLTAuNzY1NjI1ICIvPgo8L2c+CjxnIGlkPSJnbHlwaC0xLTIiPgo8cGF0aCBkPSJNIDIuODc1IC0zLjUgQyAzLjcwMzEyNSAtMy43NjU2MjUgNC4yNjU2MjUgLTQuNDY4NzUgNC4yNjU2MjUgLTUuMjUgQyA0LjI2NTYyNSAtNi4wNjI1IDMuNDA2MjUgLTYuNjI1IDIuNDM3NSAtNi42MjUgQyAxLjQzNzUgLTYuNjI1IDAuNjg3NSAtNi4wMTU2MjUgMC42ODc1IC01LjI2NTYyNSBDIDAuNjg3NSAtNC45Mzc1IDAuOTA2MjUgLTQuNzUgMS4xODc1IC00Ljc1IEMgMS41IC00Ljc1IDEuNzAzMTI1IC00Ljk2ODc1IDEuNzAzMTI1IC01LjI1IEMgMS43MDMxMjUgLTUuNzUgMS4yMzQzNzUgLTUuNzUgMS4wNzgxMjUgLTUuNzUgQyAxLjM5MDYyNSAtNi4yMzQzNzUgMi4wNDY4NzUgLTYuMzc1IDIuNDA2MjUgLTYuMzc1IEMgMi44MTI1IC02LjM3NSAzLjM1OTM3NSAtNi4xNTYyNSAzLjM1OTM3NSAtNS4yNSBDIDMuMzU5Mzc1IC01LjE0MDYyNSAzLjM0Mzc1IC00LjU2MjUgMy4wNzgxMjUgLTQuMTI1IEMgMi43ODEyNSAtMy42NDA2MjUgMi40Mzc1IC0zLjYyNSAyLjIwMzEyNSAtMy42MDkzNzUgQyAyLjEwOTM3NSAtMy41OTM3NSAxLjg3NSAtMy41NzgxMjUgMS44MTI1IC0zLjU3ODEyNSBDIDEuNzM0Mzc1IC0zLjU2MjUgMS42NTYyNSAtMy41NjI1IDEuNjU2MjUgLTMuNDUzMTI1IEMgMS42NTYyNSAtMy4zNDM3NSAxLjczNDM3NSAtMy4zNDM3NSAxLjg5MDYyNSAtMy4zNDM3NSBMIDIuMzI4MTI1IC0zLjM0Mzc1IEMgMy4xNTYyNSAtMy4zNDM3NSAzLjUxNTYyNSAtMi42NzE4NzUgMy41MTU2MjUgLTEuNzAzMTI1IEMgMy41MTU2MjUgLTAuMzQzNzUgMi44MjgxMjUgLTAuMDYyNSAyLjM5MDYyNSAtMC4wNjI1IEMgMS45Njg3NSAtMC4wNjI1IDEuMjE4NzUgLTAuMjM0Mzc1IDAuODc1IC0wLjgxMjUgQyAxLjIxODc1IC0wLjc2NTYyNSAxLjUzMTI1IC0wLjk4NDM3NSAxLjUzMTI1IC0xLjM1OTM3NSBDIDEuNTMxMjUgLTEuNzE4NzUgMS4yNjU2MjUgLTEuOTIxODc1IDAuOTY4NzUgLTEuOTIxODc1IEMgMC43MzQzNzUgLTEuOTIxODc1IDAuNDIxODc1IC0xLjc4MTI1IDAuNDIxODc1IC0xLjM0Mzc1IEMgMC40MjE4NzUgLTAuNDM3NSAxLjM0Mzc1IDAuMjE4NzUgMi40MjE4NzUgMC4yMTg3NSBDIDMuNjQwNjI1IDAuMjE4NzUgNC41NDY4NzUgLTAuNjg3NSA0LjU0Njg3NSAtMS43MDMxMjUgQyA0LjU0Njg3NSAtMi41MTU2MjUgMy45MjE4NzUgLTMuMjk2ODc1IDIuODc1IC0zLjUgWiBNIDIuODc1IC0zLjUgIi8+CjwvZz4KPGcgaWQ9ImdseXBoLTEtMyI+CjxwYXRoIGQ9Ik0gNi44MjgxMjUgLTMuMjUgQyA2Ljk2ODc1IC0zLjI1IDcuMTcxODc1IC0zLjI1IDcuMTcxODc1IC0zLjQ1MzEyNSBDIDcuMTcxODc1IC0zLjY0MDYyNSA2Ljk2ODc1IC0zLjY0MDYyNSA2Ljg0Mzc1IC0zLjY0MDYyNSBMIDAuODkwNjI1IC0zLjY0MDYyNSBDIDAuNzUgLTMuNjQwNjI1IDAuNTYyNSAtMy42NDA2MjUgMC41NjI1IC0zLjQ1MzEyNSBDIDAuNTYyNSAtMy4yNSAwLjc1IC0zLjI1IDAuODkwNjI1IC0zLjI1IFogTSA2Ljg0Mzc1IC0xLjMyODEyNSBDIDYuOTY4NzUgLTEuMzI4MTI1IDcuMTcxODc1IC0xLjMyODEyNSA3LjE3MTg3NSAtMS41MTU2MjUgQyA3LjE3MTg3NSAtMS43MTg3NSA2Ljk2ODc1IC0xLjcxODc1IDYuODI4MTI1IC0xLjcxODc1IEwgMC44OTA2MjUgLTEuNzE4NzUgQyAwLjc1IC0xLjcxODc1IDAuNTYyNSAtMS43MTg3NSAwLjU2MjUgLTEuNTE1NjI1IEMgMC41NjI1IC0xLjMyODEyNSAwLjc1IC0xLjMyODEyNSAwLjg5MDYyNSAtMS4zMjgxMjUgWiBNIDYuODQzNzUgLTEuMzI4MTI1ICIvPgo8L2c+CjxnIGlkPSJnbHlwaC0xLTQiPgo8cGF0aCBkPSJNIDMuMjk2ODc1IDIuMzkwNjI1IEMgMy4yOTY4NzUgMi4zNTkzNzUgMy4yOTY4NzUgMi4zMjgxMjUgMy4xMjUgMi4xNzE4NzUgQyAxLjg3NSAwLjkyMTg3NSAxLjU2MjUgLTAuOTY4NzUgMS41NjI1IC0yLjQ4NDM3NSBDIDEuNTYyNSAtNC4yMTg3NSAxLjkzNzUgLTUuOTM3NSAzLjE1NjI1IC03LjE4NzUgQyAzLjI5Njg3NSAtNy4yOTY4NzUgMy4yOTY4NzUgLTcuMzI4MTI1IDMuMjk2ODc1IC03LjM1OTM3NSBDIDMuMjk2ODc1IC03LjQyMTg3NSAzLjI1IC03LjQ1MzEyNSAzLjE4NzUgLTcuNDUzMTI1IEMgMy4wOTM3NSAtNy40NTMxMjUgMi4yMDMxMjUgLTYuNzgxMjUgMS42MDkzNzUgLTUuNTE1NjI1IEMgMS4xMDkzNzUgLTQuNDIxODc1IDAuOTg0Mzc1IC0zLjMxMjUgMC45ODQzNzUgLTIuNDg0Mzc1IEMgMC45ODQzNzUgLTEuNzAzMTI1IDEuMDkzNzUgLTAuNSAxLjY0MDYyNSAwLjYwOTM3NSBDIDIuMjM0Mzc1IDEuODQzNzUgMy4wOTM3NSAyLjQ4NDM3NSAzLjE4NzUgMi40ODQzNzUgQyAzLjI1IDIuNDg0Mzc1IDMuMjk2ODc1IDIuNDUzMTI1IDMuMjk2ODc1IDIuMzkwNjI1IFogTSAzLjI5Njg3NSAyLjM5MDYyNSAiLz4KPC9nPgo8ZyBpZD0iZ2x5cGgtMS01Ij4KPHBhdGggZD0iTSAyLjg3NSAtMi40ODQzNzUgQyAyLjg3NSAtMy4yNjU2MjUgMi43NjU2MjUgLTQuNDY4NzUgMi4yMTg3NSAtNS41NzgxMjUgQyAxLjYyNSAtNi44MTI1IDAuNzY1NjI1IC03LjQ1MzEyNSAwLjY3MTg3NSAtNy40NTMxMjUgQyAwLjYwOTM3NSAtNy40NTMxMjUgMC41NjI1IC03LjQwNjI1IDAuNTYyNSAtNy4zNTkzNzUgQyAwLjU2MjUgLTcuMzI4MTI1IDAuNTYyNSAtNy4yOTY4NzUgMC43NSAtNy4xMjUgQyAxLjczNDM3NSAtNi4xNDA2MjUgMi4yOTY4NzUgLTQuNTYyNSAyLjI5Njg3NSAtMi40ODQzNzUgQyAyLjI5Njg3NSAtMC43ODEyNSAxLjkyMTg3NSAwLjk2ODc1IDAuNzAzMTI1IDIuMjE4NzUgQyAwLjU2MjUgMi4zMjgxMjUgMC41NjI1IDIuMzU5Mzc1IDAuNTYyNSAyLjM5MDYyNSBDIDAuNTYyNSAyLjQzNzUgMC42MDkzNzUgMi40ODQzNzUgMC42NzE4NzUgMi40ODQzNzUgQyAwLjc2NTYyNSAyLjQ4NDM3NSAxLjY1NjI1IDEuODEyNSAyLjI1IDAuNTQ2ODc1IEMgMi43NSAtMC41NDY4NzUgMi44NzUgLTEuNjU2MjUgMi44NzUgLTIuNDg0Mzc1IFogTSAyLjg3NSAtMi40ODQzNzUgIi8+CjwvZz4KPGcgaWQ9ImdseXBoLTEtNiI+CjxwYXRoIGQ9Ik0gMS45MDYyNSAtMy43NSBDIDEuOTA2MjUgLTQuMDQ2ODc1IDEuNjcxODc1IC00LjI4MTI1IDEuMzc1IC00LjI4MTI1IEMgMS4wOTM3NSAtNC4yODEyNSAwLjg1OTM3NSAtNC4wNDY4NzUgMC44NTkzNzUgLTMuNzUgQyAwLjg1OTM3NSAtMy40Njg3NSAxLjA5Mzc1IC0zLjIzNDM3NSAxLjM3NSAtMy4yMzQzNzUgQyAxLjY3MTg3NSAtMy4yMzQzNzUgMS45MDYyNSAtMy40Njg3NSAxLjkwNjI1IC0zLjc1IFogTSAxLjkwNjI1IC0wLjUzMTI1IEMgMS45MDYyNSAtMC44MTI1IDEuNjcxODc1IC0xLjA0Njg3NSAxLjM3NSAtMS4wNDY4NzUgQyAxLjA5Mzc1IC0xLjA0Njg3NSAwLjg1OTM3NSAtMC44MTI1IDAuODU5Mzc1IC0wLjUzMTI1IEMgMC44NTkzNzUgLTAuMjM0Mzc1IDEuMDkzNzUgMCAxLjM3NSAwIEMgMS42NzE4NzUgMCAxLjkwNjI1IC0wLjIzNDM3NSAxLjkwNjI1IC0wLjUzMTI1IFogTSAxLjkwNjI1IC0wLjUzMTI1ICIvPgo8L2c+CjxnIGlkPSJnbHlwaC0yLTAiPgo8cGF0aCBkPSJNIDMuMzEyNSAtMyBDIDMuMzc1IC0zLjI2NTYyNSAzLjYwOTM3NSAtNC4xNzE4NzUgNC4yOTY4NzUgLTQuMTcxODc1IEMgNC4zNTkzNzUgLTQuMTcxODc1IDQuNTkzNzUgLTQuMTcxODc1IDQuNzk2ODc1IC00LjA0Njg3NSBDIDQuNTE1NjI1IC00IDQuMzI4MTI1IC0zLjc1IDQuMzI4MTI1IC0zLjUxNTYyNSBDIDQuMzI4MTI1IC0zLjM0Mzc1IDQuNDM3NSAtMy4xNTYyNSA0LjcwMzEyNSAtMy4xNTYyNSBDIDQuOTIxODc1IC0zLjE1NjI1IDUuMjM0Mzc1IC0zLjM0Mzc1IDUuMjM0Mzc1IC0zLjczNDM3NSBDIDUuMjM0Mzc1IC00LjI1IDQuNjU2MjUgLTQuMzkwNjI1IDQuMzEyNSAtNC4zOTA2MjUgQyAzLjczNDM3NSAtNC4zOTA2MjUgMy4zOTA2MjUgLTMuODU5Mzc1IDMuMjY1NjI1IC0zLjY0MDYyNSBDIDMuMDE1NjI1IC00LjI5Njg3NSAyLjQ4NDM3NSAtNC4zOTA2MjUgMi4yMDMxMjUgLTQuMzkwNjI1IEMgMS4xNTYyNSAtNC4zOTA2MjUgMC41OTM3NSAtMy4xMDkzNzUgMC41OTM3NSAtMi44NTkzNzUgQyAwLjU5Mzc1IC0yLjc2NTYyNSAwLjcwMzEyNSAtMi43NjU2MjUgMC43MTg3NSAtMi43NjU2MjUgQyAwLjc5Njg3NSAtMi43NjU2MjUgMC44MjgxMjUgLTIuNzgxMjUgMC44NDM3NSAtMi44NzUgQyAxLjE4NzUgLTMuOTIxODc1IDEuODQzNzUgLTQuMTcxODc1IDIuMTcxODc1IC00LjE3MTg3NSBDIDIuMzU5Mzc1IC00LjE3MTg3NSAyLjcxODc1IC00LjA3ODEyNSAyLjcxODc1IC0zLjUxNTYyNSBDIDIuNzE4NzUgLTMuMjAzMTI1IDIuNTQ2ODc1IC0yLjUzMTI1IDIuMTcxODc1IC0xLjE0MDYyNSBDIDIuMDE1NjI1IC0wLjUzMTI1IDEuNjcxODc1IC0wLjEwOTM3NSAxLjIzNDM3NSAtMC4xMDkzNzUgQyAxLjE3MTg3NSAtMC4xMDkzNzUgMC45Mzc1IC0wLjEwOTM3NSAwLjczNDM3NSAtMC4yMzQzNzUgQyAwLjk4NDM3NSAtMC4yODEyNSAxLjIwMzEyNSAtMC41IDEuMjAzMTI1IC0wLjc4MTI1IEMgMS4yMDMxMjUgLTEuMDQ2ODc1IDAuOTg0Mzc1IC0xLjEyNSAwLjgyODEyNSAtMS4xMjUgQyAwLjUzMTI1IC0xLjEyNSAwLjI4MTI1IC0wLjg1OTM3NSAwLjI4MTI1IC0wLjU0Njg3NSBDIDAuMjgxMjUgLTAuMDkzNzUgMC43ODEyNSAwLjEwOTM3NSAxLjIxODc1IDAuMTA5Mzc1IEMgMS44NzUgMC4xMDkzNzUgMi4yMzQzNzUgLTAuNTkzNzUgMi4yNjU2MjUgLTAuNjQwNjI1IEMgMi4zOTA2MjUgLTAuMjgxMjUgMi43NSAwLjEwOTM3NSAzLjM0Mzc1IDAuMTA5Mzc1IEMgNC4zNTkzNzUgMC4xMDkzNzUgNC45MjE4NzUgLTEuMTcxODc1IDQuOTIxODc1IC0xLjQyMTg3NSBDIDQuOTIxODc1IC0xLjUxNTYyNSA0Ljg0Mzc1IC0xLjUxNTYyNSA0LjgxMjUgLTEuNTE1NjI1IEMgNC43MTg3NSAtMS41MTU2MjUgNC43MDMxMjUgLTEuNDg0Mzc1IDQuNjg3NSAtMS40MDYyNSBDIDQuMzU5Mzc1IC0wLjM0Mzc1IDMuNjcxODc1IC0wLjEwOTM3NSAzLjM1OTM3NSAtMC4xMDkzNzUgQyAyLjk2ODc1IC0wLjEwOTM3NSAyLjgxMjUgLTAuNDIxODc1IDIuODEyNSAtMC43NjU2MjUgQyAyLjgxMjUgLTAuOTg0Mzc1IDIuODc1IC0xLjIwMzEyNSAyLjk4NDM3NSAtMS42NDA2MjUgWiBNIDMuMzEyNSAtMyAiLz4KPC9nPgo8ZyBpZD0iZ2x5cGgtMi0xIj4KPHBhdGggZD0iTSA0LjgyODEyNSAtMy43ODEyNSBDIDQuODc1IC0zLjkyMTg3NSA0Ljg3NSAtMy45Mzc1IDQuODc1IC00LjAxNTYyNSBDIDQuODc1IC00LjE4NzUgNC43MzQzNzUgLTQuMjgxMjUgNC41NzgxMjUgLTQuMjgxMjUgQyA0LjQ4NDM3NSAtNC4yODEyNSA0LjMyODEyNSAtNC4yMTg3NSA0LjIzNDM3NSAtNC4wNzgxMjUgQyA0LjIxODc1IC00LjAzMTI1IDQuMTQwNjI1IC0zLjcxODc1IDQuMDkzNzUgLTMuNTMxMjUgQyA0LjAzMTI1IC0zLjI4MTI1IDMuOTUzMTI1IC0zLjAxNTYyNSAzLjg5MDYyNSAtMi43NSBMIDMuNDUzMTI1IC0wLjk1MzEyNSBDIDMuNDA2MjUgLTAuODEyNSAyLjk4NDM3NSAtMC4xMDkzNzUgMi4zMjgxMjUgLTAuMTA5Mzc1IEMgMS44MTI1IC0wLjEwOTM3NSAxLjcwMzEyNSAtMC41NDY4NzUgMS43MDMxMjUgLTAuOTIxODc1IEMgMS43MDMxMjUgLTEuMzc1IDEuODc1IC0xLjk4NDM3NSAyLjIxODc1IC0yLjg1OTM3NSBDIDIuMzc1IC0zLjI2NTYyNSAyLjQyMTg3NSAtMy4zNzUgMi40MjE4NzUgLTMuNTc4MTI1IEMgMi40MjE4NzUgLTQuMDMxMjUgMi4wOTM3NSAtNC4zOTA2MjUgMS41OTM3NSAtNC4zOTA2MjUgQyAwLjY1NjI1IC00LjM5MDYyNSAwLjI4MTI1IC0yLjk1MzEyNSAwLjI4MTI1IC0yLjg1OTM3NSBDIDAuMjgxMjUgLTIuNzY1NjI1IDAuMzkwNjI1IC0yLjc2NTYyNSAwLjQwNjI1IC0yLjc2NTYyNSBDIDAuNSAtMi43NjU2MjUgMC41MTU2MjUgLTIuNzgxMjUgMC41NjI1IC0yLjkzNzUgQyAwLjgyODEyNSAtMy44NzUgMS4yMzQzNzUgLTQuMTcxODc1IDEuNTYyNSAtNC4xNzE4NzUgQyAxLjY1NjI1IC00LjE3MTg3NSAxLjgxMjUgLTQuMTcxODc1IDEuODEyNSAtMy44NTkzNzUgQyAxLjgxMjUgLTMuNjA5Mzc1IDEuNzE4NzUgLTMuMzQzNzUgMS42NTYyNSAtMy4xNTYyNSBDIDEuMjUgLTIuMTA5Mzc1IDEuMDc4MTI1IC0xLjU0Njg3NSAxLjA3ODEyNSAtMS4wNzgxMjUgQyAxLjA3ODEyNSAtMC4xODc1IDEuNzAzMTI1IDAuMTA5Mzc1IDIuMjgxMjUgMC4xMDkzNzUgQyAyLjY3MTg3NSAwLjEwOTM3NSAzLjAxNTYyNSAtMC4wNjI1IDMuMjk2ODc1IC0wLjM0Mzc1IEMgMy4xNTYyNSAwLjE3MTg3NSAzLjA0Njg3NSAwLjY3MTg3NSAyLjY0MDYyNSAxLjE4NzUgQyAyLjM5MDYyNSAxLjUzMTI1IDIgMS44MTI1IDEuNTQ2ODc1IDEuODEyNSBDIDEuNDA2MjUgMS44MTI1IDAuOTY4NzUgMS43ODEyNSAwLjc5Njg3NSAxLjQwNjI1IEMgMC45NTMxMjUgMS40MDYyNSAxLjA3ODEyNSAxLjQwNjI1IDEuMjE4NzUgMS4yODEyNSBDIDEuMzI4MTI1IDEuMTg3NSAxLjQyMTg3NSAxLjA2MjUgMS40MjE4NzUgMC44NzUgQyAxLjQyMTg3NSAwLjU2MjUgMS4xNTYyNSAwLjUzMTI1IDEuMDQ2ODc1IDAuNTMxMjUgQyAwLjgyODEyNSAwLjUzMTI1IDAuNSAwLjY4NzUgMC41IDEuMTcxODc1IEMgMC41IDEuNjcxODc1IDAuOTM3NSAyLjAzMTI1IDEuNTQ2ODc1IDIuMDMxMjUgQyAyLjU3ODEyNSAyLjAzMTI1IDMuNTkzNzUgMS4xNDA2MjUgMy44NzUgMC4wMTU2MjUgWiBNIDQuODI4MTI1IC0zLjc4MTI1ICIvPgo8L2c+CjxnIGlkPSJnbHlwaC0yLTIiPgo8cGF0aCBkPSJNIDQuMjUgLTYuMDMxMjUgQyA0LjMxMjUgLTYuMzEyNSA0LjM1OTM3NSAtNi4zNzUgNC40Njg3NSAtNi40MDYyNSBDIDQuNTYyNSAtNi40MjE4NzUgNC44OTA2MjUgLTYuNDIxODc1IDUuMDkzNzUgLTYuNDIxODc1IEMgNi4xMDkzNzUgLTYuNDIxODc1IDYuNTQ2ODc1IC02LjM3NSA2LjU0Njg3NSAtNS42MDkzNzUgQyA2LjU0Njg3NSAtNS40NTMxMjUgNi41MTU2MjUgLTUuMDYyNSA2LjQ2ODc1IC00LjgxMjUgQyA2LjQ1MzEyNSAtNC43NjU2MjUgNi40Mzc1IC00LjY1NjI1IDYuNDM3NSAtNC42MjUgQyA2LjQzNzUgLTQuNTYyNSA2LjQ2ODc1IC00LjQ4NDM3NSA2LjU2MjUgLTQuNDg0Mzc1IEMgNi42NzE4NzUgLTQuNDg0Mzc1IDYuNjg3NSAtNC41NzgxMjUgNi43MDMxMjUgLTQuNzE4NzUgTCA2Ljk2ODc1IC02LjQ1MzEyNSBDIDYuOTg0Mzc1IC02LjQ4NDM3NSA3IC02LjU5Mzc1IDcgLTYuNjI1IEMgNyAtNi43MzQzNzUgNi44OTA2MjUgLTYuNzM0Mzc1IDYuNzM0Mzc1IC02LjczNDM3NSBMIDEuMjE4NzUgLTYuNzM0Mzc1IEMgMC45Njg3NSAtNi43MzQzNzUgMC45Njg3NSAtNi43MTg3NSAwLjg5MDYyNSAtNi41MzEyNSBMIDAuMjk2ODc1IC00Ljc4MTI1IEMgMC4yODEyNSAtNC43NjU2MjUgMC4yMzQzNzUgLTQuNjI1IDAuMjM0Mzc1IC00LjU5Mzc1IEMgMC4yMzQzNzUgLTQuNTQ2ODc1IDAuMjgxMjUgLTQuNDg0Mzc1IDAuMzU5Mzc1IC00LjQ4NDM3NSBDIDAuNDUzMTI1IC00LjQ4NDM3NSAwLjQ2ODc1IC00LjU0Njg3NSAwLjUzMTI1IC00LjcwMzEyNSBDIDEuMDYyNSAtNi4yMzQzNzUgMS4zMjgxMjUgLTYuNDIxODc1IDIuNzk2ODc1IC02LjQyMTg3NSBMIDMuMTg3NSAtNi40MjE4NzUgQyAzLjQ1MzEyNSAtNi40MjE4NzUgMy40NTMxMjUgLTYuMzc1IDMuNDUzMTI1IC02LjI5Njg3NSBDIDMuNDUzMTI1IC02LjIzNDM3NSAzLjQyMTg3NSAtNi4xMjUgMy40MjE4NzUgLTYuMDkzNzUgTCAyLjA5Mzc1IC0wLjc4MTI1IEMgMiAtMC40MjE4NzUgMS45Njg3NSAtMC4zMTI1IDAuOTA2MjUgLTAuMzEyNSBDIDAuNTQ2ODc1IC0wLjMxMjUgMC40ODQzNzUgLTAuMzEyNSAwLjQ4NDM3NSAtMC4xMjUgQyAwLjQ4NDM3NSAwIDAuNTkzNzUgMCAwLjY1NjI1IDAgQyAwLjkyMTg3NSAwIDEuMjAzMTI1IC0wLjAxNTYyNSAxLjQ2ODc1IC0wLjAxNTYyNSBDIDEuNzUgLTAuMDE1NjI1IDIuMDMxMjUgLTAuMDMxMjUgMi4zMTI1IC0wLjAzMTI1IEMgMi41OTM3NSAtMC4wMzEyNSAyLjg3NSAtMC4wMTU2MjUgMy4xNDA2MjUgLTAuMDE1NjI1IEMgMy40MjE4NzUgLTAuMDE1NjI1IDMuNzM0Mzc1IDAgNCAwIEMgNC4xMDkzNzUgMCA0LjIxODc1IDAgNC4yMTg3NSAtMC4yMDMxMjUgQyA0LjIxODc1IC0wLjMxMjUgNC4xNDA2MjUgLTAuMzEyNSAzLjg5MDYyNSAtMC4zMTI1IEMgMy42NDA2MjUgLTAuMzEyNSAzLjUxNTYyNSAtMC4zMTI1IDMuMjUgLTAuMzI4MTI1IEMgMi45Njg3NSAtMC4zNTkzNzUgMi44NzUgLTAuMzkwNjI1IDIuODc1IC0wLjU0Njg3NSBDIDIuODc1IC0wLjU2MjUgMi44NzUgLTAuNjA5Mzc1IDIuOTIxODc1IC0wLjc1IFogTSA0LjI1IC02LjAzMTI1ICIvPgo8L2c+CjxnIGlkPSJnbHlwaC0yLTMiPgo8cGF0aCBkPSJNIDcuNTQ2ODc1IC02LjkwNjI1IEMgNy41NDY4NzUgLTYuOTM3NSA3LjUzMTI1IC03IDcuNDM3NSAtNyBDIDcuNDA2MjUgLTcgNy40MDYyNSAtNyA3LjI5Njg3NSAtNi44OTA2MjUgTCA2LjU5Mzc1IC02LjEyNSBDIDYuNTE1NjI1IC02LjI2NTYyNSA2LjA0Njg3NSAtNyA0Ljk1MzEyNSAtNyBDIDIuNzM0Mzc1IC03IDAuNSAtNC44MTI1IDAuNSAtMi41IEMgMC41IC0wLjg1OTM3NSAxLjY3MTg3NSAwLjIxODc1IDMuMTg3NSAwLjIxODc1IEMgNC4wNDY4NzUgMC4yMTg3NSA0LjgxMjUgLTAuMTcxODc1IDUuMzQzNzUgLTAuNjQwNjI1IEMgNi4yNjU2MjUgLTEuNDUzMTI1IDYuNDIxODc1IC0yLjM1OTM3NSA2LjQyMTg3NSAtMi4zOTA2MjUgQyA2LjQyMTg3NSAtMi40ODQzNzUgNi4zMjgxMjUgLTIuNDg0Mzc1IDYuMzEyNSAtMi40ODQzNzUgQyA2LjI1IC0yLjQ4NDM3NSA2LjIwMzEyNSAtMi40Njg3NSA2LjE4NzUgLTIuMzkwNjI1IEMgNi4wOTM3NSAtMi4wOTM3NSA1Ljg1OTM3NSAtMS4zOTA2MjUgNS4xNzE4NzUgLTAuODEyNSBDIDQuNDg0Mzc1IC0wLjI2NTYyNSAzLjg1OTM3NSAtMC4wOTM3NSAzLjM0Mzc1IC0wLjA5Mzc1IEMgMi40NTMxMjUgLTAuMDkzNzUgMS40MDYyNSAtMC42MDkzNzUgMS40MDYyNSAtMi4xNTYyNSBDIDEuNDA2MjUgLTIuNzE4NzUgMS42MDkzNzUgLTQuMzI4MTI1IDIuNjA5Mzc1IC01LjUgQyAzLjIwMzEyNSAtNi4yMDMxMjUgNC4xNDA2MjUgLTYuNzAzMTI1IDUuMDMxMjUgLTYuNzAzMTI1IEMgNi4wNDY4NzUgLTYuNzAzMTI1IDYuNjI1IC01LjkzNzUgNi42MjUgLTQuNzgxMjUgQyA2LjYyNSAtNC4zNzUgNi41OTM3NSAtNC4zNzUgNi41OTM3NSAtNC4yNjU2MjUgQyA2LjU5Mzc1IC00LjE3MTg3NSA2LjcwMzEyNSAtNC4xNzE4NzUgNi43NSAtNC4xNzE4NzUgQyA2Ljg3NSAtNC4xNzE4NzUgNi44NzUgLTQuMTg3NSA2LjkyMTg3NSAtNC4zNzUgWiBNIDcuNTQ2ODc1IC02LjkwNjI1ICIvPgo8L2c+CjxnIGlkPSJnbHlwaC0zLTAiPgo8cGF0aCBkPSJNIDcuMDkzNzUgLTQuMTg3NSBDIDcuMTU2MjUgLTQuNDM3NSA3LjE3MTg3NSAtNC41IDcuNjg3NSAtNC41IEMgNy44NDM3NSAtNC41IDcuOTIxODc1IC00LjUgNy45MjE4NzUgLTQuNjQwNjI1IEMgNy45MjE4NzUgLTQuNzUgNy44NDM3NSAtNC43NSA3LjcxODc1IC00Ljc1IEwgNi43NjU2MjUgLTQuNzUgQyA2LjU3ODEyNSAtNC43NSA2LjU2MjUgLTQuNzM0Mzc1IDYuNDY4NzUgLTQuNjA5Mzc1IEwgMy43OTY4NzUgLTAuNjQwNjI1IEwgMy4wOTM3NSAtNC41NjI1IEMgMy4wNjI1IC00LjczNDM3NSAzLjA2MjUgLTQuNzUgMi44NTkzNzUgLTQuNzUgTCAxLjg1OTM3NSAtNC43NSBDIDEuNzE4NzUgLTQuNzUgMS42NDA2MjUgLTQuNzUgMS42NDA2MjUgLTQuNTkzNzUgQyAxLjY0MDYyNSAtNC41IDEuNzE4NzUgLTQuNSAxLjg3NSAtNC41IEMgMS45ODQzNzUgLTQuNSAyLjAxNTYyNSAtNC41IDIuMTQwNjI1IC00LjQ4NDM3NSBDIDIuMjgxMjUgLTQuNDY4NzUgMi4yODEyNSAtNC40NTMxMjUgMi4yODEyNSAtNC4zOTA2MjUgQyAyLjI4MTI1IC00LjM3NSAyLjI4MTI1IC00LjM0Mzc1IDIuMjY1NjI1IC00LjIzNDM3NSBMIDEuMzkwNjI1IC0wLjc1IEMgMS4zMjgxMjUgLTAuNSAxLjIxODc1IC0wLjI2NTYyNSAwLjY1NjI1IC0wLjI1IEMgMC42MDkzNzUgLTAuMjUgMC41MTU2MjUgLTAuMjUgMC41MTU2MjUgLTAuMDkzNzUgQyAwLjUxNTYyNSAtMC4wOTM3NSAwLjUxNTYyNSAwIDAuNjI1IDAgQyAwLjgyODEyNSAwIDEuMTI1IC0wLjAzMTI1IDEuMzQzNzUgLTAuMDMxMjUgQyAxLjUxNTYyNSAtMC4wMzEyNSAxLjkwNjI1IDAgMi4wNzgxMjUgMCBDIDIuMTA5Mzc1IDAgMi4yMTg3NSAwIDIuMjE4NzUgLTAuMTU2MjUgQyAyLjIxODc1IC0wLjI1IDIuMTI1IC0wLjI1IDIuMDYyNSAtMC4yNSBDIDEuNjI1IC0wLjI2NTYyNSAxLjYyNSAtMC40Mzc1IDEuNjI1IC0wLjU0Njg3NSBDIDEuNjI1IC0wLjU2MjUgMS42MjUgLTAuNjA5Mzc1IDEuNjQwNjI1IC0wLjcxODc1IEwgMi41NzgxMjUgLTQuNDIxODc1IEwgMy4zMjgxMjUgLTAuMTg3NSBDIDMuMzQzNzUgLTAuMDYyNSAzLjM1OTM3NSAwIDMuNDY4NzUgMCBDIDMuNTYyNSAwIDMuNjA5Mzc1IC0wLjA3ODEyNSAzLjY3MTg3NSAtMC4xNTYyNSBMIDYuNTc4MTI1IC00LjQ4NDM3NSBMIDYuNTkzNzUgLTQuNDg0Mzc1IEwgNS42MDkzNzUgLTAuNTQ2ODc1IEMgNS41NjI1IC0wLjMxMjUgNS41NDY4NzUgLTAuMjUgNSAtMC4yNSBDIDQuODc1IC0wLjI1IDQuNzk2ODc1IC0wLjI1IDQuNzk2ODc1IC0wLjA5Mzc1IEMgNC43OTY4NzUgLTAuMDkzNzUgNC43OTY4NzUgMCA0LjkwNjI1IDAgQyA1LjAzMTI1IDAgNS4xODc1IC0wLjAxNTYyNSA1LjMyODEyNSAtMC4wMTU2MjUgQyA1LjQ2ODc1IC0wLjAxNTYyNSA1LjYyNSAtMC4wMzEyNSA1Ljc2NTYyNSAtMC4wMzEyNSBDIDUuOTY4NzUgLTAuMDMxMjUgNi40NTMxMjUgMCA2LjY1NjI1IDAgQyA2LjcwMzEyNSAwIDYuNzk2ODc1IDAgNi43OTY4NzUgLTAuMTU2MjUgQyA2Ljc5Njg3NSAtMC4yNSA2LjcxODc1IC0wLjI1IDYuNTc4MTI1IC0wLjI1IEMgNi41NzgxMjUgLTAuMjUgNi40Mzc1IC0wLjI1IDYuMzEyNSAtMC4yNjU2MjUgQyA2LjE1NjI1IC0wLjI4MTI1IDYuMTU2MjUgLTAuMjk2ODc1IDYuMTU2MjUgLTAuMzc1IEMgNi4xNTYyNSAtMC40MDYyNSA2LjE3MTg3NSAtMC40ODQzNzUgNi4xODc1IC0wLjUxNTYyNSBaIE0gNy4wOTM3NSAtNC4xODc1ICIvPgo8L2c+CjwvZz4KPGNsaXBQYXRoIGlkPSJjbGlwLTAiPgo8cGF0aCBjbGlwLXJ1bGU9Im5vbnplcm8iIGQ9Ik0gMzEgMTYuMDE1NjI1IEwgMzIgMTYuMDE1NjI1IEwgMzIgMjI1Ljg2NzE4OCBMIDMxIDIyNS44NjcxODggWiBNIDMxIDE2LjAxNTYyNSAiLz4KPC9jbGlwUGF0aD4KPGNsaXBQYXRoIGlkPSJjbGlwLTEiPgo8cGF0aCBjbGlwLXJ1bGU9Im5vbnplcm8iIGQ9Ik0gMy4zMjAzMTIgMTYuMDE1NjI1IEwgMjEzIDE2LjAxNTYyNSBMIDIxMyAxOTMgTCAzLjMyMDMxMiAxOTMgWiBNIDMuMzIwMzEyIDE2LjAxNTYyNSAiLz4KPC9jbGlwUGF0aD4KPGNsaXBQYXRoIGlkPSJjbGlwLTIiPgo8cGF0aCBjbGlwLXJ1bGU9Im5vbnplcm8iIGQ9Ik0gMTQgODEgTCAyNjkuNzQyMTg4IDgxIEwgMjY5Ljc0MjE4OCAyMjUuODY3MTg4IEwgMTQgMjI1Ljg2NzE4OCBaIE0gMTQgODEgIi8+CjwvY2xpcFBhdGg+CjwvZGVmcz4KPHBhdGggZmlsbD0ibm9uZSIgc3Ryb2tlLXdpZHRoPSIwLjE5OTI1IiBzdHJva2UtbGluZWNhcD0iYnV0dCIgc3Ryb2tlLWxpbmVqb2luPSJtaXRlciIgc3Ryb2tlPSJyZ2IoNzkuOTk4Nzc5JSwgNzkuOTk4Nzc5JSwgNzkuOTk4Nzc5JSkiIHN0cm9rZS1vcGFjaXR5PSIxIiBzdHJva2UtbWl0ZXJsaW1pdD0iMTAiIGQ9Ik0gMjguNDAwMDgyIDYyLjk1MTM5NiBMIDI4LjQwMDA4MiAyNzMuMjM4MTYxIE0gMTQyLjAxMDIwNiA2Mi45NTEzOTYgTCAxNDIuMDEwMjA2IDI3My4yMzgxNjEgTSAxOTguODExMzUzIDYyLjk1MTM5NiBMIDE5OC44MTEzNTMgMjczLjIzODE2MSBNIDI1NS42MTY0MTUgNjIuOTUxMzk2IEwgMjU1LjYxNjQxNSAyNzMuMjM4MTYxICIgdHJhbnNmb3JtPSJtYXRyaXgoMC45OTc5MywgMCwgMCwgLTAuOTk3OTMsIDMuMzE4ODUsIDI4OC42ODgzMDIpIi8+CjxwYXRoIGZpbGw9Im5vbmUiIHN0cm9rZS13aWR0aD0iMC4xOTkyNSIgc3Ryb2tlLWxpbmVjYXA9ImJ1dHQiIHN0cm9rZS1saW5lam9pbj0ibWl0ZXIiIHN0cm9rZT0icmdiKDc5Ljk5ODc3OSUsIDc5Ljk5ODc3OSUsIDc5Ljk5ODc3OSUpIiBzdHJva2Utb3BhY2l0eT0iMSIgc3Ryb2tlLW1pdGVybGltaXQ9IjEwIiBkPSJNIDAuMDAxNDY1NDggNzIuOTY0MzA2IEwgMjY2Ljk3NTg2MSA3Mi45NjQzMDYgTSAwLjAwMTQ2NTQ4IDEyMy4wMzI3NyBMIDI2Ni45NzU4NjEgMTIzLjAzMjc3IE0gMC4wMDE0NjU0OCAyMjMuMTY5Njk3IEwgMjY2Ljk3NTg2MSAyMjMuMTY5Njk3ICIgdHJhbnNmb3JtPSJtYXRyaXgoMC45OTc5MywgMCwgMCwgLTAuOTk3OTMsIDMuMzE4ODUsIDI4OC42ODgzMDIpIi8+CjxwYXRoIGZpbGw9Im5vbmUiIHN0cm9rZS13aWR0aD0iMC4xOTkyNSIgc3Ryb2tlLWxpbmVjYXA9ImJ1dHQiIHN0cm9rZS1saW5lam9pbj0ibWl0ZXIiIHN0cm9rZT0icmdiKDUwJSwgNTAlLCA1MCUpIiBzdHJva2Utb3BhY2l0eT0iMSIgc3Ryb2tlLW1pdGVybGltaXQ9IjEwIiBkPSJNIDI4LjQwMDA4MiAxNzAuOTc1NzQxIEwgMjguNDAwMDgyIDE3NS4yMjY3MjYgTSAxNDIuMDEwMjA2IDE3MC45NzU3NDEgTCAxNDIuMDEwMjA2IDE3NS4yMjY3MjYgTSAxOTguODExMzUzIDE3MC45NzU3NDEgTCAxOTguODExMzUzIDE3NS4yMjY3MjYgTSAyNTUuNjE2NDE1IDE3MC45NzU3NDEgTCAyNTUuNjE2NDE1IDE3NS4yMjY3MjYgIiB0cmFuc2Zvcm09Im1hdHJpeCgwLjk5NzkzLCAwLCAwLCAtMC45OTc5MywgMy4zMTg4NSwgMjg4LjY4ODMwMikiLz4KPHBhdGggZmlsbD0ibm9uZSIgc3Ryb2tlLXdpZHRoPSIwLjE5OTI1IiBzdHJva2UtbGluZWNhcD0iYnV0dCIgc3Ryb2tlLWxpbmVqb2luPSJtaXRlciIgc3Ryb2tlPSJyZ2IoNTAlLCA1MCUsIDUwJSkiIHN0cm9rZS1vcGFjaXR5PSIxIiBzdHJva2UtbWl0ZXJsaW1pdD0iMTAiIGQ9Ik0gODMuMDc5NjUxIDcyLjk2NDMwNiBMIDg3LjMzMDYzNiA3Mi45NjQzMDYgTSA4My4wNzk2NTEgMTIzLjAzMjc3IEwgODcuMzMwNjM2IDEyMy4wMzI3NyBNIDgzLjA3OTY1MSAyMjMuMTY5Njk3IEwgODcuMzMwNjM2IDIyMy4xNjk2OTcgIiB0cmFuc2Zvcm09Im1hdHJpeCgwLjk5NzkzLCAwLCAwLCAtMC45OTc5MywgMy4zMTg4NSwgMjg4LjY4ODMwMikiLz4KPHBhdGggZmlsbD0ibm9uZSIgc3Ryb2tlLXdpZHRoPSIwLjM5ODUiIHN0cm9rZS1saW5lY2FwPSJidXR0IiBzdHJva2UtbGluZWpvaW49Im1pdGVyIiBzdHJva2U9InJnYigwJSwgMCUsIDAlKSIgc3Ryb2tlLW9wYWNpdHk9IjEiIHN0cm9rZS1taXRlcmxpbWl0PSIxMCIgZD0iTSAwLjAwMTQ2NTQ4IDE3My4xMDEyMzMgTCAyNjQuOTgzNDU3IDE3My4xMDEyMzMgIiB0cmFuc2Zvcm09Im1hdHJpeCgwLjk5NzkzLCAwLCAwLCAtMC45OTc5MywgMy4zMTg4NSwgMjg4LjY4ODMwMikiLz4KPHBhdGggZmlsbC1ydWxlPSJub256ZXJvIiBmaWxsPSJyZ2IoMCUsIDAlLCAwJSkiIGZpbGwtb3BhY2l0eT0iMSIgZD0iTSAyNjkuNzQyMTg4IDExNS45NDUzMTIgTCAyNjYuNTYyNSAxMTQuMzU1NDY5IEwgMjY3Ljc1MzkwNiAxMTUuOTQ1MzEyIEwgMjY2LjU2MjUgMTE3LjUzNTE1NiAiLz4KPHBhdGggZmlsbD0ibm9uZSIgc3Ryb2tlLXdpZHRoPSIwLjM5ODUiIHN0cm9rZS1saW5lY2FwPSJidXR0IiBzdHJva2UtbGluZWpvaW49Im1pdGVyIiBzdHJva2U9InJnYigwJSwgMCUsIDAlKSIgc3Ryb2tlLW9wYWNpdHk9IjEiIHN0cm9rZS1taXRlcmxpbWl0PSIxMCIgZD0iTSA4NS4yMDUxNDQgNjIuOTUxMzk2IEwgODUuMjA1MTQ0IDI3MS4yNDU3NTYgIiB0cmFuc2Zvcm09Im1hdHJpeCgwLjk5NzkzLCAwLCAwLCAtMC45OTc5MywgMy4zMTg4NSwgMjg4LjY4ODMwMikiLz4KPHBhdGggZmlsbC1ydWxlPSJub256ZXJvIiBmaWxsPSJyZ2IoMCUsIDAlLCAwJSkiIGZpbGwtb3BhY2l0eT0iMSIgZD0iTSA4OC4zNDc2NTYgMTYuMDE1NjI1IEwgODYuNzU3ODEyIDE5LjE5OTIxOSBMIDg4LjM0NzY1NiAxOC4wMDM5MDYgTCA4OS45Mzc1IDE5LjE5OTIxOSAiLz4KPGcgZmlsbD0icmdiKDAlLCAwJSwgMCUpIiBmaWxsLW9wYWNpdHk9IjEiPgo8dXNlIHhsaW5rOmhyZWY9IiNnbHlwaC0wLTAiIHg9IjI1LjMwOTI0NSIgeT0iMTI3Ljk4ODU3Ii8+CjwvZz4KPGcgZmlsbD0icmdiKDAlLCAwJSwgMCUpIiBmaWxsLW9wYWNpdHk9IjEiPgo8dXNlIHhsaW5rOmhyZWY9IiNnbHlwaC0xLTAiIHg9IjMzLjA0MjExOSIgeT0iMTI3Ljk4ODU3Ii8+CjwvZz4KPGcgZmlsbD0icmdiKDAlLCAwJSwgMCUpIiBmaWxsLW9wYWNpdHk9IjEiPgo8dXNlIHhsaW5rOmhyZWY9IiNnbHlwaC0xLTAiIHg9IjE0Mi41NDcxMTEiIHk9IjEyNy45ODg1NyIvPgo8L2c+CjxnIGZpbGw9InJnYigwJSwgMCUsIDAlKSIgZmlsbC1vcGFjaXR5PSIxIj4KPHVzZSB4bGluazpocmVmPSIjZ2x5cGgtMS0xIiB4PSIxOTkuMjMyNTUzIiB5PSIxMjcuOTg4NTciLz4KPC9nPgo8ZyBmaWxsPSJyZ2IoMCUsIDAlLCAwJSkiIGZpbGwtb3BhY2l0eT0iMSI+Cjx1c2UgeGxpbms6aHJlZj0iI2dseXBoLTEtMiIgeD0iMjU1LjkxNzk5NSIgeT0iMTI3Ljk4ODU3Ii8+CjwvZz4KPGcgZmlsbD0icmdiKDAlLCAwJSwgMCUpIiBmaWxsLW9wYWNpdHk9IjEiPgo8dXNlIHhsaW5rOmhyZWY9IiNnbHlwaC0wLTAiIHg9IjcwLjAwOTU0MyIgeT0iMjE4LjY2NDUyMSIvPgo8L2c+CjxnIGZpbGw9InJnYigwJSwgMCUsIDAlKSIgZmlsbC1vcGFjaXR5PSIxIj4KPHVzZSB4bGluazpocmVmPSIjZ2x5cGgtMS0xIiB4PSI3Ny43NDI0MTYiIHk9IjIxOC42NjQ1MjEiLz4KPC9nPgo8ZyBmaWxsPSJyZ2IoMCUsIDAlLCAwJSkiIGZpbGwtb3BhY2l0eT0iMSI+Cjx1c2UgeGxpbms6aHJlZj0iI2dseXBoLTAtMCIgeD0iNzAuMDA5NTQzIiB5PSIxNjguNzAxMTM4Ii8+CjwvZz4KPGcgZmlsbD0icmdiKDAlLCAwJSwgMCUpIiBmaWxsLW9wYWNpdHk9IjEiPgo8dXNlIHhsaW5rOmhyZWY9IiNnbHlwaC0xLTAiIHg9Ijc3Ljc0MjQxNiIgeT0iMTY4LjcwMTEzOCIvPgo8L2c+CjxnIGZpbGw9InJnYigwJSwgMCUsIDAlKSIgZmlsbC1vcGFjaXR5PSIxIj4KPHVzZSB4bGluazpocmVmPSIjZ2x5cGgtMS0wIiB4PSI3Ny43NDI1MDYiIHk9IjY5LjE4NzUxNSIvPgo8L2c+CjxnIGNsaXAtcGF0aD0idXJsKCNjbGlwLTApIj4KPHBhdGggZmlsbD0ibm9uZSIgc3Ryb2tlLXdpZHRoPSIwLjM5ODUiIHN0cm9rZS1saW5lY2FwPSJidXR0IiBzdHJva2UtbGluZWpvaW49Im1pdGVyIiBzdHJva2U9InJnYig1MCUsIDUwJSwgNTAlKSIgc3Ryb2tlLW9wYWNpdHk9IjEiIHN0cm9rZS1kYXNoYXJyYXk9IjIuOTg4ODMgMi45ODg4MyIgc3Ryb2tlLW1pdGVybGltaXQ9IjEwIiBkPSJNIDI4LjQwMDA4MiA2Mi45NTEzOTYgTCAyOC40MDAwODIgMjczLjIzODE2MSAiIHRyYW5zZm9ybT0ibWF0cml4KDAuOTk3OTMsIDAsIDAsIC0wLjk5NzkzLCAzLjMxODg1LCAyODguNjg4MzAyKSIvPgo8L2c+CjxnIGZpbGw9InJnYig1MCUsIDUwJSwgNTAlKSIgZmlsbC1vcGFjaXR5PSIxIj4KPHVzZSB4bGluazpocmVmPSIjZ2x5cGgtMi0wIiB4PSIyNC4zNDMyNDgiIHk9IjIxMy42Njc4ODMiLz4KPC9nPgo8ZyBmaWxsPSJyZ2IoNTAlLCA1MCUsIDUwJSkiIGZpbGwtb3BhY2l0eT0iMSI+Cjx1c2UgeGxpbms6aHJlZj0iI2dseXBoLTEtMyIgeD0iMzIuNzg4OTYyIiB5PSIyMTMuNjY3ODgzIi8+CjwvZz4KPGcgZmlsbD0icmdiKDUwJSwgNTAlLCA1MCUpIiBmaWxsLW9wYWNpdHk9IjEiPgo8dXNlIHhsaW5rOmhyZWY9IiNnbHlwaC0wLTAiIHg9IjQzLjI4NTcwNiIgeT0iMjEzLjY2Nzg4MyIvPgo8L2c+CjxnIGZpbGw9InJnYig1MCUsIDUwJSwgNTAlKSIgZmlsbC1vcGFjaXR5PSIxIj4KPHVzZSB4bGluazpocmVmPSIjZ2x5cGgtMS0wIiB4PSI1MS4wMTg1OCIgeT0iMjEzLjY2Nzg4MyIvPgo8L2c+CjxnIGNsaXAtcGF0aD0idXJsKCNjbGlwLTEpIj4KPHBhdGggZmlsbD0ibm9uZSIgc3Ryb2tlLXdpZHRoPSIwLjc5NzAxIiBzdHJva2UtbGluZWNhcD0iYnV0dCIgc3Ryb2tlLWxpbmVqb2luPSJtaXRlciIgc3Ryb2tlPSJyZ2IoMCUsIDAlLCAxMDAlKSIgc3Ryb2tlLW9wYWNpdHk9IjEiIHN0cm9rZS1taXRlcmxpbWl0PSIxMCIgZD0iTSAxMS4zNjA5MTIgMTA4LjAxMzQwNSBMIDEyLjMwNDI3MSAxMDguODQzMjQ3IEwgMTMuMjQzNzE1IDEwOS42NzMwOSBMIDE1LjEzMDQzMiAxMTEuMzMyNzc1IEwgMTYuMDY5ODc2IDExMi4xNjI2MTcgTCAxNy4wMTMyMzUgMTEyLjk5NjM3NCBMIDE3Ljk1MjY3OSAxMTMuODI2MjE2IEwgMTkuODM5Mzk2IDExNS40ODU5MDEgTCAyMC43Nzg4NDEgMTE2LjMxNTc0MyBMIDIyLjY2NTU1OCAxMTcuOTc1NDI4IEwgMjMuNjA1MDAyIDExOC44MDUyNzEgTCAyNC41NDgzNjEgMTE5LjYzNTExMyBMIDI1LjQ5MTcxOSAxMjAuNDY4ODcgTCAyNi40MzExNjMgMTIxLjI5ODcxMiBMIDI4LjMxNzg4MSAxMjIuOTU4Mzk3IEwgMjkuMjU3MzI1IDEyMy43ODgyNCBMIDMxLjE0NDA0MiAxMjUuNDQ3OTI0IEwgMzIuMDgzNDg2IDEyNi4yNzc3NjcgTCAzMy4wMjY4NDUgMTI3LjEwNzYwOSBMIDMzLjk2NjI4OSAxMjcuOTQxMzY2IEwgMzUuODUzMDA2IDEyOS42MDEwNTEgTCAzNi43OTI0NTEgMTMwLjQzMDg5MyBMIDM4LjY3OTE2OCAxMzIuMDkwNTc4IEwgMzkuNjE4NjEyIDEzMi45MjA0MiBMIDQxLjUwNTMyOSAxMzQuNTgwMTA1IEwgNDIuNDQ0NzczIDEzNS40MTM4NjIgTCA0NC4zMzE0OTEgMTM3LjA3MzU0NyBMIDQ1LjI3MDkzNSAxMzcuOTAzMzg5IEwgNDcuMTU3NjUyIDEzOS41NjMwNzQgTCA0OC4wOTcwOTYgMTQwLjM5MjkxNiBMIDQ5LjA0MDQ1NSAxNDEuMjIyNzU5IEwgNDkuOTc5ODk5IDE0Mi4wNTI2MDEgTCA1MC45MjMyNTggMTQyLjg4NjM1OCBMIDUxLjg2NjYxNiAxNDMuNzE2MiBMIDUyLjgwNjA2MSAxNDQuNTQ2MDQzIEwgNTQuNjkyNzc4IDE0Ni4yMDU3MjggTCA1NS42MzIyMjIgMTQ3LjAzNTU3IEwgNTcuNTE4OTM5IDE0OC42OTUyNTUgTCA1OC40NTgzODMgMTQ5LjUyNTA5NyBMIDU5LjQwMTc0MiAxNTAuMzU4ODU0IEwgNjAuMzQ1MTAxIDE1MS4xODg2OTcgTCA2MS4yODQ1NDUgMTUyLjAxODUzOSBMIDYzLjE3MTI2MiAxNTMuNjc4MjI0IEwgNjQuMTEwNzA2IDE1NC41MDgwNjYgTCA2NS4wNTQwNjUgMTU1LjMzNzkwOSBMIDY1Ljk5MzUwOSAxNTYuMTY3NzUxIEwgNjYuOTM2ODY4IDE1Ni45OTc1OTMgTCA2Ny44ODAyMjYgMTU3LjgzMTM1IEwgNjguODE5NjcgMTU4LjY2MTE5MyBMIDcwLjcwNjM4OCAxNjAuMzIwODc3IEwgNzEuNjQ1ODMyIDE2MS4xNTA3MiBMIDczLjUzMjU0OSAxNjIuODEwNDA1IEwgNzQuNDcxOTkzIDE2My42NDAyNDcgTCA3Ni4zNTg3MTEgMTY1LjI5OTkzMiBMIDc3LjI5ODE1NSAxNjYuMTMzNjg5IEwgNzkuMTg0ODcyIDE2Ny43OTMzNzQgTCA4MC4xMjQzMTYgMTY4LjYyMzIxNiBMIDgxLjA2NzY3NSAxNjkuNDUzMDU4IEwgODIuMDA3MTE5IDE3MC4yODI5MDEgTCA4My44OTM4MzYgMTcxLjk0MjU4NiBMIDg0LjgzMzI4IDE3Mi43NzI0MjggTCA4NS43NzY2MzkgMTczLjYwNjE4NSBMIDg2LjcxOTk5OCAxNzQuNDM2MDI3IEwgODcuNjU5NDQyIDE3NS4yNjU4NyBMIDg5LjU0NjE1OSAxNzYuOTI1NTU0IEwgOTAuNDg1NjAzIDE3Ny43NTUzOTcgTCA5Mi4zNzIzMiAxNzkuNDE1MDgyIEwgOTMuMzExNzY1IDE4MC4yNDQ5MjQgTCA5NC4yNTUxMjMgMTgxLjA3ODY4MSBMIDk1LjE5ODQ4MiAxODEuOTA4NTIzIEwgOTYuMTM3OTI2IDE4Mi43MzgzNjYgTCA5Ny4wODEyODUgMTgzLjU2ODIwOCBMIDk4LjAyMDcyOSAxODQuMzk4MDUgTCA5OS45MDc0NDYgMTg2LjA1NzczNSBMIDEwMC44NDY4OSAxODYuODg3NTc4IEwgMTAxLjc5MDI0OSAxODcuNzE3NDIgTCAxMDIuNzMzNjA4IDE4OC41NTExNzcgTCAxMDMuNjczMDUyIDE4OS4zODEwMTkgTCAxMDUuNTU5NzY5IDE5MS4wNDA3MDQgTCAxMDYuNDk5MjEzIDE5MS44NzA1NDcgTCAxMDguMzg1OTMgMTkzLjUzMDIzMSBMIDEwOS4zMjUzNzUgMTk0LjM2MDA3NCBMIDExMC4yNjg3MzMgMTk1LjE4OTkxNiBMIDExMS4yMTIwOTIgMTk2LjAyMzY3MyBMIDExMi4xNTE1MzYgMTk2Ljg1MzUxNSBMIDExMy4wOTQ4OTUgMTk3LjY4MzM1OCBMIDExNC4wMzQzMzkgMTk4LjUxMzIgTCAxMTUuOTIxMDU2IDIwMC4xNzI4ODUgTCAxMTYuODYwNSAyMDEuMDAyNzI3IEwgMTE4Ljc0NzIxOCAyMDIuNjYyNDEyIEwgMTE5LjY4NjY2MiAyMDMuNDk2MTY5IEwgMTIxLjU3MzM3OSAyMDUuMTU1ODU0IEwgMTIyLjUxMjgyMyAyMDUuOTg1Njk2IEwgMTI0LjM5OTU0IDIwNy42NDUzODEgTCAxMjUuMzM4OTg1IDIwOC40NzUyMjQgTCAxMjYuMjgyMzQzIDIwOS4zMDUwNjYgTCAxMjcuMjIxNzg3IDIxMC4xMzQ5MDggTCAxMjguMTY1MTQ2IDIxMC45Njg2NjUgTCAxMjkuMTA4NTA1IDIxMS43OTg1MDggTCAxMzAuMDQ3OTQ5IDIxMi42MjgzNSBMIDEzMS45MzQ2NjYgMjE0LjI4ODAzNSBMIDEzMi44NzQxMSAyMTUuMTE3ODc3IEwgMTM0Ljc2MDgyOCAyMTYuNzc3NTYyIEwgMTM1LjcwMDI3MiAyMTcuNjA3NDA0IEwgMTM2LjY0MzYzIDIxOC40NDExNjEgTCAxMzcuNTg2OTg5IDIxOS4yNzEwMDQgTCAxMzguNTI2NDMzIDIyMC4xMDA4NDYgTCAxNDAuNDEzMTUgMjIxLjc2MDUzMSBMIDE0MS4zNTI1OTUgMjIyLjU5MDM3MyBMIDE0Mi4yOTU5NTMgMjIzLjQyMDIxNiBMIDE0My4yMzUzOTcgMjI0LjI1MDA1OCBMIDE0NC4xNzg3NTYgMjI1LjA3OTkgTCAxNDUuMTIyMTE1IDIyNS45MTM2NTcgTCAxNDYuMDYxNTU5IDIyNi43NDM1IEwgMTQ3Ljk0ODI3NiAyMjguNDAzMTg0IEwgMTQ4Ljg4NzcyIDIyOS4yMzMwMjcgTCAxNTAuNzc0NDM3IDIzMC44OTI3MTIgTCAxNTEuNzEzODgyIDIzMS43MjI1NTQgTCAxNTIuNjU3MjQgMjMyLjU1MjM5NyBMIDE1My42MDA1OTkgMjMzLjM4NjE1MyBMIDE1NC41NDAwNDMgMjM0LjIxNTk5NiBMIDE1Ni40MjY3NiAyMzUuODc1NjgxIEwgMTU3LjM2NjIwNSAyMzYuNzA1NTIzIEwgMTU4LjMwOTU2MyAyMzcuNTM1MzY1IEwgMTU5LjI0OTAwNyAyMzguMzY1MjA4IEwgMTYxLjEzNTcyNSAyNDAuMDI0ODkzIEwgMTYyLjA3NTE2OSAyNDAuODU0NzM1IEwgMTYzLjAxODUyNyAyNDEuNjg4NDkyIEwgMTYzLjk2MTg4NiAyNDIuNTE4MzM0IEwgMTY0LjkwMTMzIDI0My4zNDgxNzcgTCAxNjYuNzg4MDQ3IDI0NS4wMDc4NjEgTCAxNjcuNzI3NDkyIDI0NS44Mzc3MDQgTCAxNjkuNjE0MjA5IDI0Ny40OTczODkgTCAxNzAuNTUzNjUzIDI0OC4zMjcyMzEgTCAxNzEuNDk3MDEyIDI0OS4xNjA5ODggTCAxNzIuNDQwMzcgMjQ5Ljk5MDgzIEwgMTczLjM3OTgxNSAyNTAuODIwNjczIEwgMTc0LjMyMzE3MyAyNTEuNjUwNTE1IEwgMTc1LjI2MjYxNyAyNTIuNDgwMzU4IEwgMTc3LjE0OTMzNSAyNTQuMTQwMDQyIEwgMTc4LjA4ODc3OSAyNTQuOTY5ODg1IEwgMTc5LjAzMjEzNyAyNTUuNzk5NzI3IEwgMTc5Ljk3NTQ5NiAyNTYuNjMzNDg0IEwgMTgwLjkxNDk0IDI1Ny40NjMzMjYgTCAxODIuODAxNjU3IDI1OS4xMjMwMTEgTCAxODMuNzQxMTAyIDI1OS45NTI4NTQgTCAxODUuNjI3ODE5IDI2MS42MTI1MzggTCAxODYuNTY3MjYzIDI2Mi40NDIzODEgTCAxODcuNTEwNjIyIDI2My4yNzIyMjMgTCAxODguNDUzOTggMjY0LjEwNTk4IEwgMTg5LjM5MzQyNCAyNjQuOTM1ODIyIEwgMTkwLjMzNjc4MyAyNjUuNzY1NjY1IEwgMTkxLjI3NjIyNyAyNjYuNTk1NTA3IEwgMTkzLjE2Mjk0NSAyNjguMjU1MTkyIEwgMTk0LjEwMjM4OSAyNjkuMDg1MDM0IEwgMTk1Ljk4OTEwNiAyNzAuNzQ0NzE5IEwgMTk2LjkyODU1IDI3MS41Nzg0NzYgTCAxOTguODE1MjY3IDI3My4yMzgxNjEgIiB0cmFuc2Zvcm09Im1hdHJpeCgwLjk5NzkzLCAwLCAwLCAtMC45OTc5MywgMy4zMTg4NSwgMjg4LjY4ODMwMikiLz4KPC9nPgo8ZyBjbGlwLXBhdGg9InVybCgjY2xpcC0yKSI+CjxwYXRoIGZpbGw9Im5vbmUiIHN0cm9rZS13aWR0aD0iMS4xOTU1MyIgc3Ryb2tlLWxpbmVjYXA9ImJ1dHQiIHN0cm9rZS1saW5lam9pbj0ibWl0ZXIiIHN0cm9rZT0icmdiKDEwMCUsIDAlLCAwJSkiIHN0cm9rZS1vcGFjaXR5PSIxIiBzdHJva2UtbWl0ZXJsaW1pdD0iMTAiIGQ9Ik0gMjguNDU4Nzk3IDAuMDAwODAzMzUgTCAyOS4yNTczMjUgNjYuNDQ2OTEyIEwgMzAuMDU1ODUyIDgxLjkzMjA4NCBMIDMwLjg1MDQ2NiA5MC45MzkwMDYgTCAzMS42NDg5OTMgOTcuMjQ4OTQgTCAzMi40NDc1MjEgMTAyLjA4MzE2MyBMIDMzLjI0NjA0OSAxMDUuOTg5Njg2IEwgMzQuMDQ0NTc2IDEwOS4yNTgxNjkgTCAzNC44MzkxODkgMTEyLjA2ODY3MyBMIDM1LjYzNzcxNyAxMTQuNTM0NzE0IEwgMzYuNDM2MjQ1IDExNi43MjY3NSBMIDM3LjIzNDc3MiAxMTguNzA3NDEyIEwgMzguMDI5Mzg1IDEyMC41MTE5MjggTCAzOC44Mjc5MTMgMTIyLjE3MTYxMyBMIDM5LjYyNjQ0MSAxMjMuNzA2MDM4IEwgNDAuNDI0OTY4IDEyNS4xNTQzNDggTCA0MS4yMjM0OTYgMTI2LjUwNDc5OSBMIDQyLjAxODEwOSAxMjcuNzg0NzkyIEwgNDIuODE2NjM3IDEyOS4wMDIxNTUgTCA0My42MTUxNjQgMTMwLjE2MDgwMyBMIDQ0LjQxMzY5MiAxMzEuMjY4NTY0IEwgNDUuMjEyMjIgMTMyLjM0MTA5NiBMIDQ2LjAwNjgzMyAxMzMuMzcwNTcxIEwgNDYuODA1MzYgMTM0LjM3MjY0NSBMIDQ3LjYwMzg4OCAxMzUuMzM5NDg5IEwgNDguNDAyNDE2IDEzNi4yODY3NjIgTCA0OS4yMDA5NDMgMTM3LjIwNjYzNSBMIDQ5Ljk5NTU1NyAxMzguMTE0NzY0IEwgNTAuNzk0MDg0IDEzOC45OTk0MDggTCA1MS41OTI2MTIgMTM5Ljg4MDEzNyBMIDUyLjM5MTEzOSAxNDAuNzQxMjk0IEwgNTMuMTg5NjY3IDE0MS41OTA3MDggTCA1My45ODQyOCAxNDIuNDI4Mzc5IEwgNTQuNzgyODA4IDE0My4yNTgyMjEgTCA1NS41ODEzMzUgMTQ0LjA4NDE0OSBMIDU2LjM3OTg2MyAxNDQuOTAyMjQ5IEwgNTcuMTc4MzkxIDE0NS43MTY0MzQgTCA1Ny45NzMwMDQgMTQ2LjUyNjcwNSBMIDYwLjM2ODU4NyAxNDguOTM0MDMgTCA2MS4xNjMyIDE0OS43MzI1NTggTCA2MS45NjE3MjggMTUwLjUzMTA4NiBMIDYyLjc2MDI1NSAxNTEuMzI1Njk5IEwgNjMuNTU4NzgzIDE1Mi4xMjQyMjYgTCA2NC4zNTczMSAxNTIuOTE4ODQgTCA2NS4xNTE5MjQgMTUzLjcxNzM2NyBMIDY1Ljk1MDQ1MSAxNTQuNTA4MDY2IEwgNjguMzQ2MDM0IDE1Ni44OTE5MDYgTCA2OS4xNDA2NDcgMTU3LjY4NjUxOSBMIDY5LjkzOTE3NSAxNTguNDgxMTMyIEwgNzAuNzM3NzAyIDE1OS4yNzE4MzEgTCA3MS41MzYyMyAxNjAuMDY2NDQ1IEwgNzIuMzM0NzU4IDE2MC44NTcxNDQgTCA3My4xMjkzNzEgMTYxLjY0MzkyOCBMIDczLjkyNzg5OSAxNjIuNDQyNDU2IEwgNzUuNTI0OTU0IDE2NC4wMDgxOTYgTCA3Ni4zMjM0ODEgMTY0Ljc4NzE1MiBMIDc3LjExODA5NSAxNjUuNTYyMTkzIEwgNzguNzE1MTUgMTY3LjEwNDQ0OCBMIDc5LjUxMzY3NyAxNjcuODYzODMyIEwgODAuMzEyMjA1IDE2OC42MTkzMDIgTCA4MS4xMDY4MTggMTY5LjM3MDg1NyBMIDgxLjkwNTM0NiAxNzAuMTE0NTg0IEwgODIuNzAzODc0IDE3MC44NTA0ODIgTCA4My41MDI0MDEgMTcxLjU3NDYzNyBMIDg0LjI5NzAxNCAxNzIuMjk0ODc3IEwgODUuMDk1NTQyIDE3My4wMDMzNzUgTCA4NS44OTQwNyAxNzMuNzA0MDQ0IEwgODYuNjkyNTk3IDE3NC4zOTI5NjkgTCA4Ny40OTExMjUgMTc1LjA3MDE1MiBMIDg4LjI4NTczOCAxNzUuNzM1NTkyIEwgODkuMDg0MjY2IDE3Ni4zOTMyMDMgTCA4OS44ODI3OTMgMTc3LjAzNTE1NiBMIDkwLjY4MTMyMSAxNzcuNjY1MzY3IEwgOTEuNDc5ODQ4IDE3OC4yODM4MzQgTCA5Mi4yNzQ0NjIgMTc4Ljg4MjczIEwgOTMuMDcyOTg5IDE3OS40NzM3OTcgTCA5My44NzE1MTcgMTgwLjA0OTIwNyBMIDk0LjY3MDA0NSAxODAuNjA1MDQ0IEwgOTUuNDY4NTcyIDE4MS4xNTMwNTMgTCA5Ni4yNjMxODUgMTgxLjY4MTQ5MSBMIDk3LjA2MTcxMyAxODIuMTk0MjcxIEwgOTcuODYwMjQxIDE4Mi42OTUzMDggTCA5OC42NTg3NjggMTgzLjE3Njc3MyBMIDk5LjQ1NzI5NiAxODMuNjQyNTgxIEwgMTAwLjI1MTkwOSAxODQuMDk2NjQ1IEwgMTAxLjA1MDQzNyAxODQuNTMxMTM4IEwgMTAxLjg0ODk2NCAxODQuOTQ5OTc0IEwgMTAyLjY0NzQ5MiAxODUuMzUzMTUyIEwgMTAzLjQ0MjEwNSAxODUuNzM2NzU5IEwgMTA0LjI0MDYzMyAxODYuMTA4NjIyIEwgMTA1LjAzOTE2IDE4Ni40NjQ4MjggTCAxMDUuODM3Njg4IDE4Ni44MDUzNzYgTCAxMDYuNjM2MjE2IDE4Ny4xMzAyNjcgTCAxMDcuNDMwODI5IDE4Ny40MzU1ODcgTCAxMDguMjI5MzU2IDE4Ny43MzMwNzggTCAxMDkuMDI3ODg0IDE4OC4wMTA5OTYgTCAxMDkuODI2NDEyIDE4OC4yNzcxNzIgTCAxMTAuNjI0OTM5IDE4OC41Mjc2OTEgTCAxMTEuNDE5NTUyIDE4OC43NjI1NTIgTCAxMTIuMjE4MDggMTg4Ljk4NTY3IEwgMTEzLjAxNjYwOCAxODkuMTkzMTMgTCAxMTMuODE1MTM1IDE4OS4zODg4NDggTCAxMTQuNjEzNjYzIDE4OS41NzI4MjMgTCAxMTUuNDA4Mjc2IDE4OS43NDExNCBMIDExNi4yMDY4MDQgMTg5Ljg5NzcxNCBMIDExNy4wMDUzMzEgMTkwLjA0NjQ1OSBMIDExNy44MDM4NTkgMTkwLjE3OTU0NyBMIDExOC42MDIzODcgMTkwLjMwMDg5MiBMIDExOS4zOTcgMTkwLjQxODMyMiBMIDEyMC4xOTU1MjcgMTkwLjUxNjE4MSBMIDEyMC45OTQwNTUgMTkwLjYxMDEyNiBMIDEyMS43OTI1ODMgMTkwLjY5MjMyNyBMIDEyMi41OTExMSAxOTAuNzY2NyBMIDEyMy4zODU3MjMgMTkwLjgyOTMyOSBMIDEyNC4xODQyNTEgMTkwLjg4NDEzIEwgMTI0Ljk4Mjc3OSAxOTAuOTMxMTAyIEwgMTI1Ljc4MTMwNiAxOTAuOTY2MzMxIEwgMTI2LjU3NTkyIDE5MC45OTc2NDYgTCAxMjcuMzc0NDQ3IDE5MS4wMjExMzIgTCAxMjguMTcyOTc1IDE5MS4wMzY3OSBMIDEyOC45NzE1MDIgMTkxLjA0ODUzMyBMIDEyOS43NzAwMyAxOTEuMDQ0NjE4IEwgMTMwLjU2NDY0MyAxOTEuMDQ0NjE4IEwgMTMxLjM2MzE3MSAxOTEuMDMyODc1IEwgMTMyLjE2MTY5OCAxOTEuMDE3MjE4IEwgMTMyLjk2MDIyNiAxOTAuOTk3NjQ2IEwgMTMzLjc1ODc1NCAxOTAuOTcwMjQ2IEwgMTM0LjU1MzM2NyAxOTAuOTM4OTMxIEwgMTM2LjE1MDQyMiAxOTAuODYwNjQ0IEwgMTM3Ljc0NzQ3NyAxOTAuNzY2NyBMIDEzOC41NDIwOTEgMTkwLjcxNTgxMyBMIDEzOS4zNDA2MTggMTkwLjY2MTAxMiBMIDE0MC4xMzkxNDYgMTkwLjYwMjI5NyBMIDE0MC45Mzc2NzMgMTkwLjUzNTc1MyBMIDE0MS43MzYyMDEgMTkwLjQ3MzEyMyBMIDE0Mi41MzA4MTQgMTkwLjQwNjU3OSBMIDE0My4zMjkzNDIgMTkwLjMzNjEyMSBMIDE0NC45MjYzOTcgMTkwLjE4NzM3NiBMIDE0NS43MjQ5MjUgMTkwLjEwOTA4OSBMIDE0Ni41MTk1MzggMTkwLjAzMDgwMiBMIDE0Ny4zMTgwNjYgMTg5Ljk0ODYgTCAxNDguMTE2NTkzIDE4OS44NjI0ODQgTCAxNDguOTE1MTIxIDE4OS43ODAyODMgTCAxNDkuNzA5NzM0IDE4OS42OTQxNjcgTCAxNTIuOTAzODQ0IDE4OS4zMzQwNDcgTCAxNTMuNjk4NDU4IDE4OS4yNDAxMDMgTCAxNTYuODkyNTY4IDE4OC44NjQzMjUgTCAxNTcuNjg3MTgxIDE4OC43NjY0NjYgTCAxNTguNDg1NzA5IDE4OC42NzI1MjIgTCAxNjAuODgxMjkyIDE4OC4zNzg5NDUgTCAxNjEuNjc1OTA1IDE4OC4yODUwMDEgTCAxNjQuODcwMDE1IDE4Ny44OTM1NjYgTCAxNjUuNjY0NjI5IDE4Ny43OTU3MDcgTCAxNjguODU4NzM5IDE4Ny40MDQyNzIgTCAxNjkuNjUzMzUyIDE4Ny4zMDY0MTMgTCAxNzAuNDUxODggMTg3LjIxMjQ2OSBMIDE3MS4yNTA0MDggMTg3LjExNDYxIEwgMTcyLjA0ODkzNSAxODcuMDIwNjY2IEwgMTcyLjg0MzU0OCAxODYuOTIyODA3IEwgMTc2LjAzNzY1OSAxODYuNTQ3MDI5IEwgMTc2LjgzMjI3MiAxODYuNDUzMDg1IEwgMTc4LjQyOTMyNyAxODYuMjY1MTk2IEwgMTc5LjIyNzg1NSAxODYuMTc1MTY2IEwgMTgwLjAyNjM4MyAxODYuMDgxMjIxIEwgMTgwLjgyMDk5NiAxODUuOTkxMTkxIEwgMTgzLjIxNjU3OSAxODUuNzIxMTAxIEwgMTg0LjAxNTEwNiAxODUuNjM0OTg1IEwgMTg0LjgwOTcxOSAxODUuNTQ0OTU1IEwgMTg4LjAwMzgzIDE4NS4yMDA0OTIgTCAxODguNzk4NDQzIDE4NS4xMTQzNzcgTCAxODkuNTk2OTcxIDE4NS4wMzIxNzUgTCAxOTAuMzk1NDk4IDE4NC45NDYwNiBMIDE5MS45OTI1NTQgMTg0Ljc4MTY1NyBMIDE5Mi43ODcxNjcgMTg0LjY5OTQ1NiBMIDE5My41ODU2OTQgMTg0LjYxNzI1NCBMIDE5NC4zODQyMjIgMTg0LjUzODk2NyBMIDE5NS4xODI3NSAxODQuNDU2NzY2IEwgMTk1Ljk3NzM2MyAxODQuMzc4NDc5IEwgMTk5LjE3MTQ3MyAxODQuMDY1MzMxIEwgMTk5Ljk2NjA4NyAxODMuOTkwOTU4IEwgMjAzLjE2MDE5NyAxODMuNjkzNDY3IEwgMjAzLjk1NDgxIDE4My42MTkwOTUgTCAyMDQuNzUzMzM4IDE4My41NDg2MzYgTCAyMDUuNTUxODY1IDE4My40NzQyNjQgTCAyMDcuMTQ4OTIxIDE4My4zMzMzNDcgTCAyMDcuOTQzNTM0IDE4My4yNjI4ODkgTCAyMDguNzQyMDYyIDE4My4xOTYzNDUgTCAyMDkuNTQwNTg5IDE4My4xMjU4ODYgTCAyMTEuMTM3NjQ0IDE4Mi45OTI3OTggTCAyMTEuOTMyMjU4IDE4Mi45MjYyNTUgTCAyMTQuMzI3ODQgMTgyLjcyNjYyMyBMIDIxNS4xMjI0NTQgMTgyLjY2MDA3OSBMIDIxNS45MjA5ODEgMTgyLjYwMTM2MyBMIDIxNi43MTk1MDkgMTgyLjUzNDgxOSBMIDIxOC4zMTY1NjQgMTgyLjQwOTU2IEwgMjE5LjExMTE3NyAxODIuMzQ2OTMxIEwgMjE5LjkwOTcwNSAxODIuMjg4MjE1IEwgMjIwLjcwODIzMyAxODIuMjI1NTg2IEwgMjIyLjMwNTI4OCAxODIuMTA4MTU1IEwgMjIzLjA5OTkwMSAxODIuMDQ5NDQgTCAyMjUuNDk1NDg0IDE4MS44NzMyOTQgTCAyMjYuMjk0MDExIDE4MS44MTg0OTMgTCAyMjcuMDg4NjI1IDE4MS43NTk3NzggTCAyMzAuMjgyNzM1IDE4MS41NDA1NzQgTCAyMzEuMDc3MzQ4IDE4MS40ODU3NzMgTCAyMzEuODc1ODc2IDE4MS40MzA5NzIgTCAyMzIuNjc0NDA0IDE4MS4zODAwODYgTCAyMzMuNDcyOTMxIDE4MS4zMjUyODUgTCAyMzQuMjcxNDU5IDE4MS4yNzQzOTggTCAyMzUuMDY2MDcyIDE4MS4yMjM1MTIgTCAyMzguMjYwMTgyIDE4MS4wMTk5NjYgTCAyMzkuMDU0Nzk2IDE4MC45NzI5OTMgTCAyMzkuODUzMzIzIDE4MC45MjYwMjEgTCAyNDAuNjUxODUxIDE4MC44NzUxMzUgTCAyNDEuNDUwMzc5IDE4MC44MjgxNjIgTCAyNDIuMjQ0OTkyIDE4MC43ODExOSBMIDI0My4wNDM1MTkgMTgwLjczNDIxOCBMIDI0My44NDIwNDcgMTgwLjY4MzMzMSBMIDI0NC42NDA1NzUgMTgwLjY0MDI3NCBMIDI0NS40MzkxMDIgMTgwLjU5MzMwMSBMIDI0Ni4yMzM3MTUgMTgwLjU0NjMyOSBMIDI0Ny4wMzIyNDMgMTgwLjUwMzI3MSBMIDI0Ny44MzA3NzEgMTgwLjQ1NjI5OSBMIDI0OS40Mjc4MjYgMTgwLjM3MDE4MyBMIDI1MC4yMjI0MzkgMTgwLjMyNzEyNSBMIDI1My40MTY1NSAxODAuMTU0ODk0IEwgMjU0LjIxMTE2MyAxODAuMTExODM2IEwgMjU1LjgwODIxOCAxODAuMDMzNTQ5IEwgMjU2LjYwNjc0NiAxNzkuOTkwNDkxIEwgMjU3LjQwNTI3MyAxNzkuOTUxMzQ4IEwgMjU4LjE5OTg4NiAxNzkuOTEyMjA0IEwgMjYwLjU5NTQ2OSAxNzkuNzk0Nzc0IEwgMjYxLjM5MDA4MyAxNzkuNzU1NjMgTCAyNjIuOTg3MTM4IDE3OS42NzczNDMgTCAyNjMuNzg1NjY1IDE3OS42NDIxMTQgTCAyNjQuNTg0MTkzIDE3OS42MDI5NyBMIDI2NS4zNzg4MDYgMTc5LjU2Nzc0MSBMIDI2Ni4xNzczMzQgMTc5LjUyODU5OCBMIDI2Ni45NzU4NjEgMTc5LjQ5MzM2OSAiIHRyYW5zZm9ybT0ibWF0cml4KDAuOTk3OTMsIDAsIDAsIC0wLjk5NzkzLCAzLjMxODg1LCAyODguNjg4MzAyKSIvPgo8L2c+CjxnIGZpbGw9InJnYigwJSwgMCUsIDAlKSIgZmlsbC1vcGFjaXR5PSIxIj4KPHVzZSB4bGluazpocmVmPSIjZ2x5cGgtMy0wIiB4PSIxMzcuMjA3MTg1IiB5PSI5NC45NDkwODkiLz4KPC9nPgo8cGF0aCBmaWxsLXJ1bGU9Im5vbnplcm8iIGZpbGw9InJnYigwJSwgMCUsIDAlKSIgZmlsbC1vcGFjaXR5PSIxIiBzdHJva2Utd2lkdGg9IjAuMzk4NSIgc3Ryb2tlLWxpbmVjYXA9ImJ1dHQiIHN0cm9rZS1saW5lam9pbj0ibWl0ZXIiIHN0cm9rZT0icmdiKDAlLCAwJSwgMCUpIiBzdHJva2Utb3BhY2l0eT0iMSIgc3Ryb2tlLW1pdGVybGltaXQ9IjEwIiBkPSJNIDEzMS44NDQ2MzYgMTkwLjYyNTc4MyBDIDEzMS44NDQ2MzYgMTkxLjI4MzM5NCAxMzEuMzA4MzcgMTkxLjgxOTY2IDEzMC42NDY4NDUgMTkxLjgxOTY2IEMgMTI5Ljk4OTIzNCAxOTEuODE5NjYgMTI5LjQ1Mjk2OCAxOTEuMjgzMzk0IDEyOS40NTI5NjggMTkwLjYyNTc4MyBDIDEyOS40NTI5NjggMTg5Ljk2NDI1OCAxMjkuOTg5MjM0IDE4OS40Mjc5OTIgMTMwLjY0Njg0NSAxODkuNDI3OTkyIEMgMTMxLjMwODM3IDE4OS40Mjc5OTIgMTMxLjg0NDYzNiAxODkuOTY0MjU4IDEzMS44NDQ2MzYgMTkwLjYyNTc4MyBaIE0gMTMxLjg0NDYzNiAxOTAuNjI1NzgzICIgdHJhbnNmb3JtPSJtYXRyaXgoMC45OTc5MywgMCwgMCwgLTAuOTk3OTMsIDMuMzE4ODUsIDI4OC42ODgzMDIpIi8+CjxwYXRoIGZpbGwtcnVsZT0ibm9uemVybyIgZmlsbD0icmdiKDAlLCAwJSwgMCUpIiBmaWxsLW9wYWNpdHk9IjEiIHN0cm9rZS13aWR0aD0iMC4zOTg1IiBzdHJva2UtbGluZWNhcD0iYnV0dCIgc3Ryb2tlLWxpbmVqb2luPSJtaXRlciIgc3Ryb2tlPSJyZ2IoMCUsIDAlLCAwJSkiIHN0cm9rZS1vcGFjaXR5PSIxIiBzdHJva2UtbWl0ZXJsaW1pdD0iMTAiIGQ9Ik0gODYuNDAyOTM1IDE3My4xMDEyMzMgQyA4Ni40MDI5MzUgMTczLjc2Mjc1OSA4NS44NjY2NjkgMTc0LjI5NTExMSA4NS4yMDUxNDQgMTc0LjI5NTExMSBDIDg0LjU0MzYxOCAxNzQuMjk1MTExIDg0LjAxMTI2NyAxNzMuNzYyNzU5IDg0LjAxMTI2NyAxNzMuMTAxMjMzIEMgODQuMDExMjY3IDE3Mi40Mzk3MDggODQuNTQzNjE4IDE3MS45MDczNTYgODUuMjA1MTQ0IDE3MS45MDczNTYgQyA4NS44NjY2NjkgMTcxLjkwNzM1NiA4Ni40MDI5MzUgMTcyLjQzOTcwOCA4Ni40MDI5MzUgMTczLjEwMTIzMyBaIE0gODYuNDAyOTM1IDE3My4xMDEyMzMgIiB0cmFuc2Zvcm09Im1hdHJpeCgwLjk5NzkzLCAwLCAwLCAtMC45OTc5MywgMy4zMTg4NSwgMjg4LjY4ODMwMikiLz4KPGcgZmlsbD0icmdiKDAlLCAwJSwgMCUpIiBmaWxsLW9wYWNpdHk9IjEiPgo8dXNlIHhsaW5rOmhyZWY9IiNnbHlwaC0yLTAiIHg9IjI3My4yNTIwNDciIHk9IjExOC4wODgxMDIiLz4KPC9nPgo8ZyBmaWxsPSJyZ2IoMCUsIDAlLCAwJSkiIGZpbGwtb3BhY2l0eT0iMSI+Cjx1c2UgeGxpbms6aHJlZj0iI2dseXBoLTItMSIgeD0iODUuNzMxOTM3IiB5PSIxMC41NzYwNjciLz4KPC9nPgo8cGF0aCBmaWxsLXJ1bGU9Im5vbnplcm8iIGZpbGw9InJnYigxMDAlLCAxMDAlLCAxMDAlKSIgZmlsbC1vcGFjaXR5PSIxIiBzdHJva2Utd2lkdGg9IjAuMzk4NSIgc3Ryb2tlLWxpbmVjYXA9ImJ1dHQiIHN0cm9rZS1saW5lam9pbj0ibWl0ZXIiIHN0cm9rZT0icmdiKDAlLCAwJSwgMCUpIiBzdHJva2Utb3BhY2l0eT0iMSIgc3Ryb2tlLW1pdGVybGltaXQ9IjEwIiBkPSJNIDE4MS44NjYxMjggNjkuNDYwOTYyIEwgMjU4Ljc2NzQ2NyA2OS40NjA5NjIgTCAyNTguNzY3NDY3IDk5LjM0NzAzMiBMIDE4MS44NjYxMjggOTkuMzQ3MDMyIFogTSAxODEuODY2MTI4IDY5LjQ2MDk2MiAiIHRyYW5zZm9ybT0ibWF0cml4KDAuOTk3OTMsIDAsIDAsIC0wLjk5NzkzLCAzLjMxODg1LCAyODguNjg4MzAyKSIvPgo8cGF0aCBmaWxsPSJub25lIiBzdHJva2Utd2lkdGg9IjAuMzk4NSIgc3Ryb2tlLWxpbmVjYXA9ImJ1dHQiIHN0cm9rZS1saW5lam9pbj0ibWl0ZXIiIHN0cm9rZT0icmdiKDUwJSwgNTAlLCA1MCUpIiBzdHJva2Utb3BhY2l0eT0iMSIgc3Ryb2tlLWRhc2hhcnJheT0iMi45ODg4MyAyLjk4ODgzIiBzdHJva2UtbWl0ZXJsaW1pdD0iMTAiIGQ9Ik0gLTAuMDAwODczMjIyIC0wLjAwMTYyMzczIEwgMTcuMDA2OTgyIC0wLjAwMTYyMzczICIgdHJhbnNmb3JtPSJtYXRyaXgoMC45OTc5MywgMCwgMCwgLTAuOTk3OTMsIDE4OC4xODQ0NjUsIDE5Ny45OTgzOCkiLz4KPGcgZmlsbD0icmdiKDAlLCAwJSwgMCUpIiBmaWxsLW9wYWNpdHk9IjEiPgo8dXNlIHhsaW5rOmhyZWY9IiNnbHlwaC0xLTQiIHg9IjIwNy41NDMzMTgiIHk9IjIwMC45ODExOTQiLz4KPC9nPgo8ZyBmaWxsPSJyZ2IoMCUsIDAlLCAwJSkiIGZpbGwtb3BhY2l0eT0iMSI+Cjx1c2UgeGxpbms6aHJlZj0iI2dseXBoLTItMiIgeD0iMjExLjQwOTc1NCIgeT0iMjAwLjk4MTE5NCIvPgo8L2c+CjxnIGZpbGw9InJnYigwJSwgMCUsIDAlKSIgZmlsbC1vcGFjaXR5PSIxIj4KPHVzZSB4bGluazpocmVmPSIjZ2x5cGgtMS01IiB4PSIyMTguNjAxNzg0IiB5PSIyMDAuOTgxMTk0Ii8+CjwvZz4KPGcgZmlsbD0icmdiKDAlLCAwJSwgMCUpIiBmaWxsLW9wYWNpdHk9IjEiPgo8dXNlIHhsaW5rOmhyZWY9IiNnbHlwaC0xLTYiIHg9IjIyNS4yMzIwOTIiIHk9IjIwMC45ODExOTQiLz4KPC9nPgo8ZyBmaWxsPSJyZ2IoMCUsIDAlLCAwJSkiIGZpbGwtb3BhY2l0eT0iMSI+Cjx1c2UgeGxpbms6aHJlZj0iI2dseXBoLTItMSIgeD0iMjMyLjQwODIxNCIgeT0iMjAwLjk4MTE5NCIvPgo8L2c+CjxnIGZpbGw9InJnYigwJSwgMCUsIDAlKSIgZmlsbC1vcGFjaXR5PSIxIj4KPHVzZSB4bGluazpocmVmPSIjZ2x5cGgtMS0zIiB4PSIyNDAuNDA0NTUiIHk9IjIwMC45ODExOTQiLz4KPC9nPgo8ZyBmaWxsPSJyZ2IoMCUsIDAlLCAwJSkiIGZpbGwtb3BhY2l0eT0iMSI+Cjx1c2UgeGxpbms6aHJlZj0iI2dseXBoLTItMCIgeD0iMjUwLjg5MTM1MiIgeT0iMjAwLjk4MTE5NCIvPgo8L2c+CjxwYXRoIGZpbGw9Im5vbmUiIHN0cm9rZS13aWR0aD0iMC43OTcwMSIgc3Ryb2tlLWxpbmVjYXA9ImJ1dHQiIHN0cm9rZS1saW5lam9pbj0ibWl0ZXIiIHN0cm9rZT0icmdiKDAlLCAwJSwgMTAwJSkiIHN0cm9rZS1vcGFjaXR5PSIxIiBzdHJva2UtbWl0ZXJsaW1pdD0iMTAiIGQ9Ik0gLTAuMDAwODczMjIyIDAuMDAwNzAzMTUxIEwgMTcuMDA2OTgyIDAuMDAwNzAzMTUxICIgdHJhbnNmb3JtPSJtYXRyaXgoMC45OTc5MywgMCwgMCwgLTAuOTk3OTMsIDE4OC4xODQ0NjUsIDIxMC45MjI1NzcpIi8+CjxnIGZpbGw9InJnYigwJSwgMCUsIDAlKSIgZmlsbC1vcGFjaXR5PSIxIj4KPHVzZSB4bGluazpocmVmPSIjZ2x5cGgtMS00IiB4PSIyMDcuNTQzMzE4IiB5PSIyMTMuOTA1MzkxIi8+CjwvZz4KPGcgZmlsbD0icmdiKDAlLCAwJSwgMCUpIiBmaWxsLW9wYWNpdHk9IjEiPgo8dXNlIHhsaW5rOmhyZWY9IiNnbHlwaC0yLTMiIHg9IjIxMS40MDk3NTQiIHk9IjIxMy45MDUzOTEiLz4KPC9nPgo8ZyBmaWxsPSJyZ2IoMCUsIDAlLCAwJSkiIGZpbGwtb3BhY2l0eT0iMSI+Cjx1c2UgeGxpbms6aHJlZj0iI2dseXBoLTEtNSIgeD0iMjE5LjIzMTExMSIgeT0iMjEzLjkwNTM5MSIvPgo8L2c+Cjwvc3ZnPgo=" class="max-w-full" alt="Figure" /></div>0,+\infty[$, $(C)$ est sous $(T)$.]

    <div class="mt-6 mb-2 text-base font-bold" style="color:#1F4E79">Partie III : $J=\displaystyle\int_0^1 f(x)\,\mathrm{d}x$</div>

**1.a)** \textit{Montrer que $J=\dfrac{\pi}{8}\ln2$.}

        \begin{methode}
            On pose $t=\dfrac{1-x}{1+x}$, soit $x=\dfrac{1-t}{1+t}$. Alors $1+x=\dfrac{2}{1+t}$, $1+x^2=\dfrac{2(1+t^2)}{(1+t)^2}$, $\mathrm{d}x=\dfrac{-2}{(1+t)^2}\mathrm{d}t$. Quand $x:0\to1$, $t:1\to0$.
        \end{methode}
        On a $\ln(1+x)=\ln\dfrac{2}{1+t}=\ln2-\ln(1+t)$ et $\dfrac{\mathrm{d}x}{1+x^2}=\dfrac{-2/(1+t)^2}{2(1+t^2)/(1+t)^2}\mathrm{d}t=\dfrac{-\mathrm{d}t}{1+t^2}$. Donc :
        \[
            J=\int_1^0\big(\ln2-\ln(1+t)\big)\frac{-\mathrm{d}t}{1+t^2}=\int_0^1\frac{\ln2-\ln(1+t)}{1+t^2}\,\mathrm{d}t=\ln2\int_0^1\frac{\mathrm{d}t}{1+t^2}-J.
        \]
        Donc $2J=\ln2\cdot[\arctan t]_0^1=\ln2\cdot\dfrac\pi4$, d'où :
        \[
            \boxed{J=\frac{\pi}{8}\ln2}.
        \]

**1.b)** \textit{Aire en $\text{cm}^2$.}

        Sur $[0,1]$, $f(x)\le x$ (3.c), donc l'aire entre $(C)$, $(T):y=x$ et les droites $x=0$, $x=1$ vaut, en unités d'aire :
        \[
            \int_0^1\big(x-f(x)\big)\mathrm{d}x=\Big[\frac{x^2}{2}\Big]_0^1-J=\frac12-\frac{\pi}{8}\ln2\ \text{u.a.}
        \]
        L'unité d'aire est $\|\vec i\|\cdot\|\vec j\|=2\times2=4\ \text{cm}^2$, d'où :
        \[
            \mathcal{A}=4\Big(\frac12-\frac{\pi}{8}\ln2\Big)=\boxed{\Big(2-\frac{\pi\ln2}{2}\Big)\ \text{cm}^2}.
        \]

**2)** \textit{Calculer $K=\displaystyle\int_0^1\dfrac{\arctan x}{1+x}\,\mathrm{d}x$ par parties.}

        \begin{methode}
            On intègre par parties avec $u=\arctan x$ et $\mathrm{d}v=\dfrac{\mathrm{d}x}{1+x}$, donc $\mathrm{d}u=\dfrac{\mathrm{d}x}{1+x^2}$ et $v=\ln(1+x)$.
        \end{methode}
        \[
            K=\Big[\arctan x\cdot\ln(1+x)\Big]_0^1-\int_0^1\frac{\ln(1+x)}{1+x^2}\,\mathrm{d}x=\frac\pi4\ln2-J.
        \]
        Or $J=\dfrac{\pi}{8}\ln2$ (1.a), donc :
        \[
            K=\frac\pi4\ln2-\frac\pi8\ln2=\boxed{\frac{\pi\ln2}{8}}.
        \]
