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

        [figure : dans le repère orthonormé $(O,\vec i,\vec j)$ avec $\|\vec i\|=\|\vec j\|=2$ cm. La droite $(T):y=x$. La courbe $(C)$ passe par $O$, tangente à $(T)$ en $O$, croît jusqu'au maximum au point d'abscisse $\alpha\approx0{,}8$ d'ordonnée $f(\alpha)=\tfrac{1}{2\alpha(1+\alpha)}\approx0{,}35$, puis décroît vers l'asymptote horizontale $y=0$ ; asymptote verticale $x=-1$ avec $f(x)\to-\infty$. Sur $]0,+\infty[$, $(C)$ est sous $(T)$.]

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
