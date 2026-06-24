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
    <div class="my-5 rounded-lg px-4 py-2.5 text-white font-bold" style="background:#1F4E79">Exercice 1 — Analyse : étude d'une famille de fonctions <span class="font-normal text-white/80 text-sm">(6.5 points)</span></div>

    $f_n(0)=0$ et $f_n(x)=x-x^n\ln x$ sur $]0,+\infty[$, avec $n\ge 2$.

**1.a)** \textit{Montrer que $f_n$ est continue à droite en $0$.}

        \begin{rappel}
            Croissances comparées : pour tout entier $p\ge 1$, $\lim\limits_{x\to0^+}x^p\ln x=0$.
        \end{rappel}
        Comme $n\ge 2$, on a $\lim\limits_{x\to0^+}x^n\ln x=0$, donc
        \[
            \lim_{x\to0^+}f_n(x)=\lim_{x\to0^+}\bigl(x-x^n\ln x\bigr)=0=f_n(0).
        \]
        <div class="my-2 font-semibold" style="color:#1F4E79">⇒ $f_n$ est continue à droite en $0$.</div>

**1.b)** \textit{Limites en $+\infty$ et interprétation.}

        On factorise : $f_n(x)=x\bigl(1-x^{n-1}\ln x\bigr)$. Or $\lim\limits_{x\to+\infty}x^{n-1}\ln x=+\infty$ (car $n-1\ge 1$), donc $\lim\limits_{x\to+\infty}\bigl(1-x^{n-1}\ln x\bigr)=-\infty$. Par produit avec $x\to+\infty$ :
        \[
            \boxed{\lim_{x\to+\infty}f_n(x)=-\infty}.
        \]
        Ensuite $\dfrac{f_n(x)}{x}=1-x^{n-1}\ln x$, d'où
        \[
            \boxed{\lim_{x\to+\infty}\frac{f_n(x)}{x}=-\infty}.
        \]
        <div class="my-2 font-semibold" style="color:#1F4E79">⇒ La courbe $(C_n)$ admet une branche parabolique de direction l'axe des ordonnées $(Oy)$ au voisinage de $+\infty$.</div>

**1.c)** \textit{Dérivabilité à droite en $0$.}

        Pour $x>0$ :
        \[
            \frac{f_n(x)-f_n(0)}{x-0}=\frac{x-x^n\ln x}{x}=1-x^{n-1}\ln x.
        \]
        Comme $n-1\ge 1$, $\lim\limits_{x\to0^+}x^{n-1}\ln x=0$, donc cette limite vaut $1$ (finie).
        <div class="my-2 font-semibold" style="color:#1F4E79">⇒ $f_n$ est dérivable à droite en $0$ et $(f_n)_d'(0)=\boxed{1}$.</div>

**1.d)** \textit{Dérivée sur $]0,+\infty[$.}

        $f_n$ est dérivable sur $]0,+\infty[$ comme somme et produit de fonctions usuelles dérivables. Pour $x>0$ :
        \[
            f_n'(x)=1-\Bigl(\,(x^n)'\ln x+x^n(\ln x)'\Bigr)=1-\Bigl(nx^{n-1}\ln x+x^n\cdot\tfrac1x\Bigr),
        \]
        \[
            \boxed{f_n'(x)=1-x^{n-1}-nx^{n-1}\ln x}.
        \]

**1.e)** \textit{Variations de $f_n$.}

        \begin{methode}
            On factorise $f_n'(x)=1-x^{n-1}\bigl(1+n\ln x\bigr)$ et on étudie $g(x)=x^{n-1}\bigl(1+n\ln x\bigr)$.
        \end{methode}
        Posons $g(x)=x^{n-1}(1+n\ln x)$, de sorte que $f_n'(x)=1-g(x)$. On note d'abord $g(1)=1$, d'où $f_n'(1)=0$. Pour $x>0$ :
        \[
            g'(x)=(n-1)x^{n-2}(1+n\ln x)+x^{n-1}\cdot\frac nx=x^{n-2}\bigl[(2n-1)+n(n-1)\ln x\bigr].
        \]
        Sur $[1,+\infty[$ : $\ln x\ge 0$, donc $g'(x)>0$ ; $g$ y est strictement croissante, donc $g(x)\ge g(1)=1$ et $f_n'(x)=1-g(x)\le 0$ (nul seulement en $1$).
        Sur $]0,1]$ : on a $\ln x\le 0$, donc $1+n\ln x$ croît de $-\infty$ à $1$ ; ainsi $g(x)=x^{n-1}(1+n\ln x)\le x^{n-1}\le 1$ et même $g(x)<1$ pour $x<1$, d'où $f_n'(x)=1-g(x)>0$.
        \begin{center}
        \begin{tabular}{c|ccccc}
            $x$ & $0$ & & $1$ & & $+\infty$\\\hline
            $f_n'(x)$ & & $+$ & $0$ & $-$ & \\\hline
            $f_n$ & & $\nearrow$ & & $\searrow$ &
        \end{tabular}
        \end{center}
        <div class="my-2 font-semibold" style="color:#1F4E79">⇒ $f_n$ est strictement croissante sur $[0,1]$ et strictement décroissante sur $[1,+\infty[$.</div>

**2.a)** \textit{Montrer que $f_{n+1}(x)\le f_n(x)$ pour tout $x\ge 0$.}

        En $x=0$ : $f_{n+1}(0)=f_n(0)=0$, l'inégalité est une égalité. Pour $x>0$ :
        \[
            f_n(x)-f_{n+1}(x)=\bigl(x-x^n\ln x\bigr)-\bigl(x-x^{n+1}\ln x\bigr)=x^n\ln x\,(x-1)=x^n(x-1)\ln x.
        \]
        Or pour $x>0$, les facteurs $(x-1)$ et $\ln x$ sont \emph{de même signe} (tous deux $\le 0$ si $x\le 1$, tous deux $\ge 0$ si $x\ge 1$), donc $(x-1)\ln x\ge 0$ ; et $x^n>0$. Ainsi $f_n(x)-f_{n+1}(x)\ge 0$.
        <div class="my-2 font-semibold" style="color:#1F4E79">⇒ $\forall x\in[0,+\infty[\ ;\ f_{n+1}(x)\le f_n(x)$.</div>

**2.b)** \textit{Position relative de $(C_n)$ et $(C_{n+1})$.}

        Comme $f_{n+1}(x)\le f_n(x)$ pour tout $x\ge 0$ :
        <div class="my-2 font-semibold" style="color:#1F4E79">⇒ la courbe $(C_{n+1})$ est située en dessous de la courbe $(C_n)$ sur $[0,+\infty[$ (elles se coupent en $O$ et au point d'abscisse $1$, où $\ln x=0$).</div>

**3.a)** \textit{Existence et unicité de $\alpha_n\in\,]1,2[$ avec $f_n(\alpha_n)=0$.}

        D'après 1.e, $f_n$ est continue et strictement décroissante sur $[1,+\infty[\supset[1,2]$. Calculons les bornes :
        \[
            f_n(1)=1-1^n\ln 1=1>0,
        \]
        \[
            f_n(2)=2-2^n\ln 2=2-2^n\times 0{,}7=2-0{,}7\cdot 2^n.
        \]
        Pour $n\ge 2$, $2^n\ge 4$, donc $0{,}7\cdot 2^n\ge 2{,}8>2$, d'où $f_n(2)<0$.
        \begin{rappel}
            Théorème des valeurs intermédiaires (version stricte) : une fonction continue \emph{strictement monotone} sur $[a,b]$ qui change de signe s'annule en un \emph{unique} point de $]a,b[$.
        \end{rappel}
        $f_n$ continue, strictement décroissante sur $[1,2]$ avec $f_n(1)>0$ et $f_n(2)<0$ :
        <div class="my-2 font-semibold" style="color:#1F4E79">⇒ il existe un unique $\alpha_n\in\,]1,2[$ tel que $f_n(\alpha_n)=0$.</div>

**3.b)** \textit{Vérifier que $\alpha_{n+1}^{\,n}\ln\alpha_{n+1}=1$.}

        Par définition, $\alpha_{n+1}\in\,]1,2[$ vérifie $f_{n+1}(\alpha_{n+1})=0$, c'est-à-dire
        \[
            \alpha_{n+1}-\alpha_{n+1}^{\,n+1}\ln\alpha_{n+1}=0\ \Longrightarrow\ \alpha_{n+1}=\alpha_{n+1}^{\,n+1}\ln\alpha_{n+1}.
        \]
        En divisant par $\alpha_{n+1}>0$ :
        \[
            \boxed{\alpha_{n+1}^{\,n}\ln\alpha_{n+1}=1}.
        \]

**3.c)** \textit{En déduire $f_n(\alpha_{n+1})=\alpha_{n+1}-1$.}

        \[
            f_n(\alpha_{n+1})=\alpha_{n+1}-\alpha_{n+1}^{\,n}\ln\alpha_{n+1}=\alpha_{n+1}-1\quad(\text{d'après 3.b}).
        \]
        <div class="my-2 font-semibold" style="color:#1F4E79">⇒ $f_n(\alpha_{n+1})=\boxed{\alpha_{n+1}-1}$.</div>

**3.d)** \textit{La suite $(\alpha_n)_{n\ge 2}$ est strictement décroissante.}

        \begin{methode}
            On compare $\alpha_{n+1}$ à $\alpha_n$ en évaluant $f_n$ (strictement décroissante sur $]1,2[$) en ces deux points.
        \end{methode}
        Comme $\alpha_{n+1}\in\,]1,2[$, on a $\alpha_{n+1}-1>0$, donc d'après 3.c :
        \[
            f_n(\alpha_{n+1})=\alpha_{n+1}-1>0=f_n(\alpha_n).
        \]
        Or $f_n$ est \emph{strictement décroissante} sur $]1,2[$ : l'inégalité $f_n(\alpha_{n+1})>f_n(\alpha_n)$ entraîne $\alpha_{n+1}<\alpha_n$.
        <div class="my-2 font-semibold" style="color:#1F4E79">⇒ $(\alpha_n)_{n\ge 2}$ est strictement décroissante.</div>

**3.e)** \textit{Convergence.}

        La suite $(\alpha_n)$ est décroissante et minorée (par $1$, car $\alpha_n>1$ pour tout $n$).
        <div class="my-2 font-semibold" style="color:#1F4E79">⇒ $(\alpha_n)_{n\ge 2}$ est convergente.</div>

**4.a)** \textit{Montrer que $1\le\ell\le 2$.}

        Pour tout $n\ge 2$, $1<\alpha_n<2$. Par passage à la limite (qui conserve les inégalités larges) :
        \[
            1\le\ell\le 2.
        \]
        <div class="my-2 font-semibold" style="color:#1F4E79">⇒ $\boxed{1\le\ell\le 2}$.</div>

**4.b)** \textit{Montrer que $n-1=-\dfrac{\ln(\ln(\alpha_n))}{\ln(\alpha_n)}$.}

        Par définition, $f_n(\alpha_n)=0$, soit $\alpha_n=\alpha_n^{\,n}\ln\alpha_n$, donc en divisant par $\alpha_n>0$ :
        \[
            \alpha_n^{\,n-1}\ln\alpha_n=1.
        \]
        Comme $\alpha_n>1$, on a $\ln\alpha_n>0$ et $\ln(\alpha_n)<\ln(\alpha_n^{\,n-1}\ln\alpha_n)=0$… appliquons plutôt $\ln$ à l'égalité $\alpha_n^{\,n-1}\ln\alpha_n=1$ :
        \[
            (n-1)\ln\alpha_n+\ln(\ln\alpha_n)=0.
        \]
        Comme $\ln\alpha_n\ne 0$, on isole $n-1$ :
        \[
            \boxed{n-1=-\frac{\ln(\ln(\alpha_n))}{\ln(\alpha_n)}}.
        \]

**4.c)** \textit{On suppose $\ell>1$. Limite de $\dfrac{\ln(\ln(\alpha_n))}{\ln(\alpha_n)}$.}

        Si $\ell>1$, alors par continuité de $\ln$ et de $\ln\circ\ln$ sur $]1,2]$ :
        \[
            \lim_{n\to+\infty}\ln(\alpha_n)=\ln\ell>0,\qquad \lim_{n\to+\infty}\ln(\ln(\alpha_n))=\ln(\ln\ell).
        \]
        Le dénominateur tend vers $\ln\ell\ne 0$, donc
        \[
            \lim_{n\to+\infty}\frac{\ln(\ln(\alpha_n))}{\ln(\alpha_n)}=\boxed{\frac{\ln(\ln\ell)}{\ln\ell}}\quad(\text{limite finie}).
        \]

**4.d)** \textit{En déduire $\ell$.}

        D'après 4.b, $-\dfrac{\ln(\ln(\alpha_n))}{\ln(\alpha_n)}=n-1\xrightarrow[n\to+\infty]{}+\infty$. Si l'on avait $\ell>1$, cette quantité tendrait, d'après 4.c, vers le réel \emph{fini} $-\dfrac{\ln(\ln\ell)}{\ln\ell}$ : contradiction.
        Donc l'hypothèse $\ell>1$ est fausse, et comme $1\le\ell\le 2$ :
        <div class="my-2 font-semibold" style="color:#1F4E79">⇒ $\boxed{\ell=1}$.</div>

% ============================================================
    <div class="my-5 rounded-lg px-4 py-2.5 text-white font-bold" style="background:#1F4E79">Exercice 2 — Analyse : sommes de Riemann et encadrements <span class="font-normal text-white/80 text-sm">(3.5 points)</span></div>

**1.a)** \textit{Calculer $\displaystyle\int_0^1\dfrac{1}{1+x^2}\,\mathrm{d}x$.}

        \begin{rappel}
            Une primitive de $x\mapsto\dfrac{1}{1+x^2}$ est $x\mapsto\arctan x$.
        \end{rappel}
        \[
            \int_0^1\frac{1}{1+x^2}\,\mathrm{d}x=\bigl[\arctan x\bigr]_0^1=\arctan 1-\arctan 0=\boxed{\frac\pi4}.
        \]

**1.b)** \textit{Convergence et limite de $u_n=\displaystyle\sum_{k=1}^{n}\dfrac{n}{n^2+k^2}$.}

        \begin{methode}
            On reconnaît une \emph{somme de Riemann} en factorisant par $n^2$ au dénominateur.
        \end{methode}
        \[
            u_n=\sum_{k=1}^{n}\frac{n}{n^2+k^2}=\sum_{k=1}^{n}\frac{n}{n^2\bigl(1+(k/n)^2\bigr)}=\frac1n\sum_{k=1}^{n}\frac{1}{1+\left(\frac kn\right)^2}.
        \]
        C'est la somme de Riemann de la fonction continue $x\mapsto\dfrac{1}{1+x^2}$ sur $[0,1]$. Donc
        \[
            \lim_{n\to+\infty}u_n=\int_0^1\frac{1}{1+x^2}\,\mathrm{d}x=\boxed{\frac\pi4}.
        \]
        <div class="my-2 font-semibold" style="color:#1F4E79">⇒ $(u_n)$ converge et $\lim u_n=\dfrac\pi4$.</div>

**2)** \textit{Montrer que $\displaystyle\int_0^1\dfrac{1}{(1+x^2)^2}\,\mathrm{d}x\le 1$.}

        Pour tout $x\in[0,1]$, $(1+x^2)^2\ge 1$, donc $\dfrac{1}{(1+x^2)^2}\le 1$. Par croissance de l'intégrale sur $[0,1]$ (longueur $1$) :
        \[
            \int_0^1\frac{1}{(1+x^2)^2}\,\mathrm{d}x\le\int_0^1 1\,\mathrm{d}x=\boxed{1}.
        \]

**3.a)** \textit{Montrer que $0\le e^x-1\le e\,x$ pour $x\in[0,1]$.}

        \emph{Borne inférieure :} pour $x\ge 0$, $e^x\ge 1$, donc $e^x-1\ge 0$.
        \emph{Borne supérieure :} l'inégalité des accroissements finis appliquée à $t\mapsto e^t$ sur $[0,x]$ donne, puisque $e^t\le e$ sur $[0,1]$ :
        \[
            e^x-1=e^x-e^0=\int_0^x e^t\,\mathrm{d}t\le\int_0^x e\,\mathrm{d}t=e\,x.
        \]
        <div class="my-2 font-semibold" style="color:#1F4E79">⇒ $\forall x\in[0,1]\ ;\ 0\le e^x-1\le e\,x$.</div>

**3.b)** \textit{En déduire que $0\le e^x-1-x\le\dfrac e2x^2$ pour $x\in[0,1]$.}

        \emph{Borne inférieure :} pour $x\ge 0$, l'inégalité classique $e^x\ge 1+x$ donne $e^x-1-x\ge 0$.
        \emph{Borne supérieure :} appliquons 3.a à $t\in[0,x]$ : $e^t-1\le e\,t$. En intégrant sur $[0,x]$ :
        \[
            \int_0^x(e^t-1)\,\mathrm{d}t\le\int_0^x e\,t\,\mathrm{d}t\ \Longrightarrow\ (e^x-1)-x\le\frac e2x^2.
        \]
        <div class="my-2 font-semibold" style="color:#1F4E79">⇒ $\forall x\in[0,1]\ ;\ 0\le e^x-1-x\le\dfrac e2x^2$.</div>

**4.a)** \textit{Montrer que $0\le w_n-u_n\le\dfrac e2\displaystyle\sum_{k=1}^{n}\left(\dfrac{n}{n^2+k^2}\right)^2$.}

        Pour $k\in\{1,\dots,n\}$, posons $x=\dfrac{n}{n^2+k^2}$. On a $0<x\le\dfrac{n}{n^2+1}\le 1$, donc $x\in[0,1]$ et l'inégalité 3.b s'applique :
        \[
            0\le e^{x}-1-x\le\frac e2x^2.
        \]
        En sommant pour $k=1$ à $n$ et en remarquant que $\displaystyle\sum_k(e^{x}-1)=w_n$ et $\displaystyle\sum_k x=u_n$ :
        \[
            \boxed{0\le w_n-u_n\le\frac e2\sum_{k=1}^{n}\left(\frac{n}{n^2+k^2}\right)^2}.
        \]

**4.b)** \textit{La fonction $x\mapsto(1+x^2)^{-2}$ est strictement décroissante sur $[0,1]$.}

        Posons $\psi(x)=(1+x^2)^{-2}$. Pour $x\in[0,1]$ :
        \[
            \psi'(x)=-2\cdot 2x\cdot(1+x^2)^{-3}=\frac{-4x}{(1+x^2)^3}.
        \]
        Pour $x\in\,]0,1]$, $\psi'(x)<0$.
        <div class="my-2 font-semibold" style="color:#1F4E79">⇒ $\psi$ est strictement décroissante sur $[0,1]$.</div>

**4.c)** \textit{En déduire l'encadrement intégral.}

        \begin{methode}
            $\psi$ décroissante : sur $\left[\frac{k-1}{n},\frac kn\right]$ son \emph{minimum} est atteint à droite, en $\frac kn$.
        \end{methode}
        Pour $x\in\left[\dfrac{k-1}{n},\dfrac kn\right]$, la décroissance de $\psi$ donne $\psi(x)\ge\psi\!\left(\dfrac kn\right)=\left(1+\left(\dfrac kn\right)^2\right)^{-2}$. En intégrant sur cet intervalle de longueur $\dfrac1n$ :
        \[
            \int_{\frac{k-1}{n}}^{\frac kn}(1+x^2)^{-2}\,\mathrm{d}x\ge\frac1n\left(1+\left(\frac kn\right)^2\right)^{-2}.
        \]
        <div class="my-2 font-semibold" style="color:#1F4E79">⇒ $\dfrac1n\left(1+\left(\dfrac kn\right)^2\right)^{-2}\le\displaystyle\int_{\frac{k-1}{n}}^{\frac kn}(1+x^2)^{-2}\,\mathrm{d}x$.</div>

**5.a)** \textit{Montrer que $0\le w_n-u_n\le\dfrac{e}{2n}$.}

        On remarque d'abord que $\left(\dfrac{n}{n^2+k^2}\right)^2=\dfrac{1}{n^2}\left(\dfrac{1}{1+(k/n)^2}\right)^2=\dfrac{1}{n^2}\left(1+\left(\dfrac kn\right)^2\right)^{-2}$. Donc, d'après 4.c :
        \[
            \frac e2\left(\frac{n}{n^2+k^2}\right)^2=\frac e2\cdot\frac1n\cdot\frac1n\left(1+\left(\frac kn\right)^2\right)^{-2}\le\frac e2\cdot\frac1n\int_{\frac{k-1}{n}}^{\frac kn}(1+x^2)^{-2}\,\mathrm{d}x.
        \]
        En sommant pour $k=1$ à $n$ (les intervalles formant une partition de $[0,1]$) et en utilisant 4.a :
        \[
            0\le w_n-u_n\le\frac e2\sum_{k=1}^{n}\left(\frac{n}{n^2+k^2}\right)^2\le\frac{e}{2n}\int_0^1(1+x^2)^{-2}\,\mathrm{d}x.
        \]
        Or, d'après la question 2, $\displaystyle\int_0^1(1+x^2)^{-2}\,\mathrm{d}x\le 1$, donc
        \[
            \boxed{0\le w_n-u_n\le\frac{e}{2n}}.
        \]

**5.b)** \textit{Convergence et limite de $(w_n)$.}

        D'après 5.a, $0\le w_n-u_n\le\dfrac{e}{2n}\xrightarrow[n\to+\infty]{}0$, donc par encadrement $\lim\limits_{n\to+\infty}(w_n-u_n)=0$. Comme $w_n=u_n+(w_n-u_n)$ et $\lim u_n=\dfrac\pi4$ :
        \[
            \lim_{n\to+\infty}w_n=\frac\pi4+0=\boxed{\frac\pi4}.
        \]
        <div class="my-2 font-semibold" style="color:#1F4E79">⇒ $(w_n)$ converge et $\lim w_n=\dfrac\pi4$.</div>

% ============================================================
    <div class="my-5 rounded-lg px-4 py-2.5 text-white font-bold" style="background:#1F4E79">Exercice 3 — Nombres complexes <span class="font-normal text-white/80 text-sm">(3.5 points)</span></div>

    <div class="mt-6 mb-2 text-base font-bold" style="color:#1F4E79">Partie I : équation $(E):z^2-(2+i)mz+m^2(1+i)=0$, $m\in\mathbb{C}^*$</div>

**1.a)** \textit{Vérifier que $\Delta=(im)^2$.}

        \[
            \Delta=\bigl[-(2+i)m\bigr]^2-4\cdot 1\cdot m^2(1+i)=(2+i)^2m^2-4(1+i)m^2.
        \]
        Or $(2+i)^2=4+4i+i^2=3+4i$, donc
        \[
            \Delta=\bigl[(3+4i)-(4+4i)\bigr]m^2=(-1)m^2=-m^2=(im)^2.
        \]
        <div class="my-2 font-semibold" style="color:#1F4E79">⇒ $\Delta=\boxed{(im)^2}$.</div>

**1.b)** \textit{Résoudre $(E)$ dans $\mathbb{C}$.}

        \begin{rappel}
            Si $\Delta=\delta^2$, les racines sont $z=\dfrac{-b\pm\delta}{2a}$.
        \end{rappel}
        Ici $a=1$, $b=-(2+i)m$, $\delta=im$ :
        \[
            z=\frac{(2+i)m\pm im}{2}.
        \]
        \[
            z_1=\frac{(2+i)m+im}{2}=\frac{(2+2i)m}{2}=\boxed{(1+i)m},\qquad
            z_2=\frac{(2+i)m-im}{2}=\frac{2m}{2}=\boxed{m}.
        \]

**2)** \textit{Forme exponentielle de $z_1z_2$ avec $m=re^{i\theta}$.}

        $z_1z_2=(1+i)m\cdot m=(1+i)m^2$. Avec $1+i=\sqrt2\,e^{i\frac\pi4}$ et $m^2=r^2e^{2i\theta}$ :
        \[
            z_1z_2=\sqrt2\,e^{i\frac\pi4}\cdot r^2e^{2i\theta}=\boxed{\sqrt2\,r^2\,e^{i\left(2\theta+\frac\pi4\right)}}.
        \]

    <div class="mt-6 mb-2 text-base font-bold" style="color:#1F4E79">Partie II : $z_1=m$, $z_2=m(1+i)$</div>

**1)** \textit{Calculer $z_3$ et $z_4$.}

        \begin{rappel}
            Rotation de centre $\omega$ et d'angle $\theta$ : $z'-\omega=e^{i\theta}(z-\omega)$. Homothétie de centre $O$ et de rapport $k$ : $z'=kz$.
        \end{rappel}
        $M_3$ image de $O$ par la rotation de centre $M_2(z_2)$ et d'angle $-\dfrac\pi2$ (donc $e^{-i\frac\pi2}=-i$) :
        \[
            z_3-z_2=-i\,(0-z_2)=iz_2\ \Longrightarrow\ z_3=z_2+iz_2=(1+i)z_2=(1+i)\,m(1+i)=(1+i)^2m=\boxed{2im}.
        \]
        $M_4$ image de $M_1(z_1)$ par l'homothétie de centre $O$ et de rapport $k$ :
        \[
            z_4=k\,z_1=\boxed{km}.
        \]

**2)** \textit{Forme algébrique de $\dfrac{z_4-z_2}{z_4-z_1}\times\dfrac{z_3-z_1}{z_3-z_2}$.}

        \begin{methode}
            On factorise systématiquement par $m\ (\ne 0)$, qui se simplifie.
        \end{methode}
        Calculons chaque différence (avec $z_1=m$, $z_2=(1+i)m$, $z_3=2im$, $z_4=km$) :
        \[
            z_4-z_2=(k-1-i)m,\quad z_4-z_1=(k-1)m,\quad z_3-z_1=(2i-1)m,\quad z_3-z_2=(2i-1-i)m=(i-1)m.
        \]
        D'où, après simplification par $m$ :
        \[
            \frac{z_4-z_2}{z_4-z_1}\times\frac{z_3-z_1}{z_3-z_2}=\frac{(k-1-i)}{(k-1)}\cdot\frac{(2i-1)}{(i-1)}.
        \]
        Calculons $\dfrac{2i-1}{i-1}$ en multipliant par le conjugué du dénominateur $\overline{i-1}=-1-i$ (et $|i-1|^2=2$) :
        \[
            (2i-1)(-1-i)=-2i-2i^2+1+i=(2+1)+(-2+1)i=3-i\ \Longrightarrow\ \frac{2i-1}{i-1}=\frac{3-i}{2}.
        \]
        Ainsi
        \[
            \frac{z_4-z_2}{z_4-z_1}\times\frac{z_3-z_1}{z_3-z_2}=\frac{k-1-i}{k-1}\cdot\frac{3-i}{2}=\frac{(k-1-i)(3-i)}{2(k-1)}.
        \]
        Développons $(k-1-i)(3-i)=3(k-1)-(k-1)i-3i+i^2=3(k-1)-1-\bigl[(k-1)+3\bigr]i=\bigl(3k-4\bigr)-(k+2)i$. Donc
        \[
            \boxed{\frac{z_4-z_2}{z_4-z_1}\times\frac{z_3-z_1}{z_3-z_2}=\frac{3k-4}{2(k-1)}-\frac{k+2}{2(k-1)}\,i}.
        \]

**3)** \textit{En déduire que $M_1,M_2,M_3,M_4$ sont cocycliques $\iff k=-2$.}

        \begin{rappel}
            Quatre points distincts sont cocycliques (ou alignés) si et seulement si leur \emph{birapport} $\dfrac{z_4-z_2}{z_4-z_1}\times\dfrac{z_3-z_1}{z_3-z_2}$ est \emph{réel}.
        \end{rappel}
        Le quotient ci-dessus est réel si et seulement si sa partie imaginaire est nulle :
        \[
            -\frac{k+2}{2(k-1)}=0\ \Longleftrightarrow\ k+2=0\ \Longleftrightarrow\ k=-2,
        \]
        (et $k=-2\ne 1$ est admissible). 
        <div class="my-2 font-semibold" style="color:#1F4E79">⇒ Les points $M_1,M_2,M_3,M_4$ sont cocycliques si et seulement si $\boxed{k=-2}$.</div>

% ============================================================
    <div class="my-5 rounded-lg px-4 py-2.5 text-white font-bold" style="background:#1F4E79">Exercice 4 — Structures algébriques <span class="font-normal text-white/80 text-sm">(3.5 points)</span></div>

    Loi $*$ sur $\mathbb{C}$ : $(x+iy)*(x'+iy')=(xy'+y^5x')+iyy'$.

    <div class="mt-6 mb-2 text-base font-bold" style="color:#1F4E79">Partie I</div>

**1.a)** \textit{Vérifier que $1*2i=2$.}

        $1=1+i\cdot 0$ ($x=1,y=0$) et $2i=0+i\cdot 2$ ($x'=0,y'=2$) :
        \[
            1*2i=(1\cdot 2+0^5\cdot 0)+i(0\cdot 2)=2+0i=\boxed{2}.
        \]

**1.b)** \textit{La loi $*$ n'est pas commutative.}

        \begin{methode}
            Il suffit d'un \emph{contre-exemple}. On calcule $2i*1$ et on le compare à $1*2i$.
        \end{methode}
        $2i=0+2i$ ($x=0,y=2$), $1=1+0i$ ($x'=1,y'=0$) :
        \[
            2i*1=(0\cdot 0+2^5\cdot 1)+i(2\cdot 0)=32+0i=32.
        \]
        Or $1*2i=2\ne 32=2i*1$.
        <div class="my-2 font-semibold" style="color:#1F4E79">⇒ La loi $*$ n'est pas commutative.</div>

**2)** \textit{La loi $*$ est associative.}

        \begin{methode}
            On observe que la partie imaginaire de $z*z'$ ne dépend que des parties imaginaires : $\mathrm{Im}(z*z')=yy'$. C'est la clé du calcul.
        \end{methode}
        Soit $z=x+iy$, $z'=x'+iy'$, $z''=x''+iy''$. Notons $z*z'=(xy'+y^5x')+iyy'$ : sa partie réelle est $X=xy'+y^5x'$ et sa partie imaginaire est $Y=yy'$.
        \[
            (z*z')*z''=(X\,y''+Y^5x'')+iY y''=\bigl[(xy'+y^5x')y''+(yy')^5x''\bigr]+i\,yy'y''.
        \]
        D'autre part, $z'*z''=(x'y''+y'^5x'')+iy'y''$, de partie réelle $X'=x'y''+y'^5x''$ et imaginaire $Y'=y'y''$ :
        \[
            z*(z'*z'')=(x\,Y'+y^5X')+iy\,Y'=\bigl[x\,y'y''+y^5(x'y''+y'^5x'')\bigr]+i\,yy'y''.
        \]
        Développons les deux parties réelles :
        \[
            (z*z')*z''\ :\quad xy'y''+y^5x'y''+y^5y'^5x'',
        \]
        \[
            z*(z'*z'')\ :\quad xy'y''+y^5x'y''+y^5y'^5x''.
        \]
        Elles sont \emph{identiques}, et les parties imaginaires valent toutes deux $yy'y''$.
        <div class="my-2 font-semibold" style="color:#1F4E79">⇒ $(z*z')*z''=z*(z'*z'')$ : la loi $*$ est associative.</div>

**3.a)** \textit{Vérifier que $1*(1+2i)=2$.}

        $1=1+0i$ ($x=1,y=0$), $1+2i$ ($x'=1,y'=2$) :
        \[
            1*(1+2i)=(1\cdot 2+0^5\cdot 1)+i(0\cdot 2)=2+0i=\boxed{2}.
        \]

**3.b)** \textit{En déduire que $(\mathbb{C},*)$ n'est pas un groupe.}

        \begin{methode}
            Dans un groupe, tout élément est \emph{régulier} (simplifiable). On exhibe un défaut de régularité.
        \end{methode}
        D'après 1.a et 3.a : $1*2i=2$ et $1*(1+2i)=2$, donc
        \[
            1*2i=1*(1+2i)\quad\text{avec}\quad 2i\ne 1+2i.
        \]
        L'élément $1$ n'est donc pas régulier à gauche : $(\mathbb{C},*)$ ne peut pas être un groupe.
        <div class="my-2 font-semibold" style="color:#1F4E79">⇒ $(\mathbb{C},*)$ n'est pas un groupe.</div>

**4.a)** \textit{$E=\{x+yi\ /\ x\in\mathbb{R},\,y\in\mathbb{R}^*\}$ est stable dans $(\mathbb{C},*)$.}

        Soit $z=x+iy$ et $z'=x'+iy'$ dans $E$, donc $y\ne 0$ et $y'\ne 0$. Alors
        \[
            z*z'=(xy'+y^5x')+i\,yy',
        \]
        et sa partie imaginaire est $yy'\ne 0$ (produit de deux réels non nuls). Donc $z*z'\in E$.
        <div class="my-2 font-semibold" style="color:#1F4E79">⇒ $E$ est stable pour $*$.</div>

**4.b)** \textit{$(E,*)$ est un groupe non commutatif.}

        $*$ est une loi de composition interne dans $E$ (4.a) et associative (2). Reste l'élément neutre et le symétrique.

        \emph{Élément neutre.} Cherchons $e=a+ib\in E$ tel que $z*e=z$ et $e*z=z$ pour tout $z=x+iy\in E$. De $z*e=(xb+y^5a)+iyb=x+iy$ on tire (en identifiant l'imaginaire) $yb=y$, soit $b=1$ ; puis $xb+y^5a=x\Rightarrow x+y^5a=x\Rightarrow a=0$. Donc $e=i$. Vérifions à gauche : $e*z=i*z$ avec $(a,b)=(0,1)$ : $(0\cdot y+1^5\cdot x)+i(1\cdot y)=x+iy=z$. \checkmark\ Et $i\in E$ (partie imaginaire $1\ne 0$).
        \[
            \boxed{e=i}.
        \]

        \emph{Symétrique.} Pour $z=x+iy\in E$ ($y\ne 0$), cherchons $z'=x'+iy'\in E$ tel que $z*z'=i$ : $(xy'+y^5x')+iyy'=0+i$. L'imaginaire donne $yy'=1$, soit $y'=\dfrac1y$ ($\ne 0$) ; le réel donne $xy'+y^5x'=0\Rightarrow x'=-\dfrac{xy'}{y^5}=-\dfrac{x}{y^6}$. On vérifie de même $z'*z=i$ (par associativité et unicité du neutre, le symétrique à droite est aussi à gauche). Donc tout élément de $E$ admet un symétrique
        \[
            z^{-1}=-\frac{x}{y^6}+\frac1y\,i\ \in E.
        \]
        Ainsi $(E,*)$ est un groupe. Il n'est pas commutatif d'après 1.b (le contre-exemple $2i$ et $1$ appartiennent à $E$… or $1\notin E$ ; reprenons un contre-exemple dans $E$) : prenons $2i$ et $1+i$ de $E$ :
        \[
            2i*(1+i)=(0\cdot 1+2^5\cdot 1)+i(2\cdot 1)=32+2i,\quad (1+i)*2i=(1\cdot 2+1^5\cdot 0)+i(1\cdot 2)=2+2i,
        \]
        donc $2i*(1+i)\ne(1+i)*2i$.
        <div class="my-2 font-semibold" style="color:#1F4E79">⇒ $(E,*)$ est un groupe non commutatif.</div>

    <div class="mt-6 mb-2 text-base font-bold" style="color:#1F4E79">Partie II : $F=\{yi\ /\ y\in\mathbb{R}^*\}$, $G=\{x+i\ /\ x\in\mathbb{R}\}$</div>

**1)** \textit{$F$ est un sous-groupe de $(E,*)$.}

        \begin{rappel}
            $F$ est un sous-groupe de $(E,*)$ si $F\subset E$, $F\ne\varnothing$, $F$ stable, et $\forall a\in F,\ a^{-1}\in F$ (critère $a*b^{-1}\in F$).
        \end{rappel}
        $F\subset E$ (un élément $yi$ a partie imaginaire $y\ne 0$) et $i\in F$ (neutre), donc $F\ne\varnothing$.
        Soit $a=yi$ et $b=y'i$ dans $F$ ($x=x'=0$). Le symétrique de $b$ est $b^{-1}=-\dfrac{0}{y'^6}+\dfrac{1}{y'}i=\dfrac1{y'}i\in F$. Alors
        \[
            a*b^{-1}=(yi)*\Bigl(\tfrac1{y'}i\Bigr)=\Bigl(0\cdot\tfrac1{y'}+y^5\cdot 0\Bigr)+i\Bigl(y\cdot\tfrac1{y'}\Bigr)=\frac{y}{y'}\,i\in F,
        \]
        (car $\dfrac{y}{y'}\in\mathbb{R}^*$).
        <div class="my-2 font-semibold" style="color:#1F4E79">⇒ $F$ est un sous-groupe de $(E,*)$.</div>

**2.a)** \textit{Montrer que $\varphi(\mathbb{R})=G$, avec $\varphi(x)=x+i$.}

        \[
            \varphi(\mathbb{R})=\{\varphi(x)\ /\ x\in\mathbb{R}\}=\{x+i\ /\ x\in\mathbb{R}\}=G.
        \]
        <div class="my-2 font-semibold" style="color:#1F4E79">⇒ $\varphi(\mathbb{R})=G$.</div>

**2.b)** \textit{$\varphi$ est un homomorphisme de $(\mathbb{R},+)$ vers $(\mathbb{C},*)$.}

        Soit $x,x'\in\mathbb{R}$. D'une part $\varphi(x+x')=(x+x')+i$. D'autre part, $\varphi(x)=x+i$ ($y=1$), $\varphi(x')=x'+i$ ($y'=1$) :
        \[
            \varphi(x)*\varphi(x')=(x\cdot 1+1^5\cdot x')+i(1\cdot 1)=(x+x')+i=\varphi(x+x').
        \]
        <div class="my-2 font-semibold" style="color:#1F4E79">⇒ $\varphi(x+x')=\varphi(x)*\varphi(x')$ : $\varphi$ est un homomorphisme de $(\mathbb{R},+)$ vers $(\mathbb{C},*)$.</div>

**2.c)** \textit{En déduire que $(G,*)$ est un groupe commutatif.}

        $\varphi$ est un homomorphisme de $(\mathbb{R},+)$ vers $(\mathbb{C},*)$ et $\varphi(\mathbb{R})=G$. L'image directe d'un groupe par un homomorphisme est un sous-groupe du groupe d'arrivée ; ici, comme $G\subset E$ et $(E,*)$ est un groupe, $G=\varphi(\mathbb{R})$ est un sous-groupe de $(E,*)$, donc un groupe pour $*$.
        De plus $(\mathbb{R},+)$ est commutatif, donc pour $g=\varphi(x)$, $g'=\varphi(x')$ :
        \[
            g*g'=\varphi(x)*\varphi(x')=\varphi(x+x')=\varphi(x'+x)=\varphi(x')*\varphi(x)=g'*g.
        \]
        <div class="my-2 font-semibold" style="color:#1F4E79">⇒ $(G,*)$ est un groupe commutatif.</div>

% ============================================================
    <div class="my-5 rounded-lg px-4 py-2.5 text-white font-bold" style="background:#1F4E79">Exercice 5 — Arithmétique <span class="font-normal text-white/80 text-sm">(3 points)</span></div>

**1)** \textit{Déterminer $u\in\{1,\dots,22\}$ tel que $10u\equiv 1\ [23]$ (algorithme d'Euclide).}

        \begin{methode}
            On applique l'algorithme d'Euclide à $23$ et $10$ pour obtenir une relation de Bézout $23a+10b=1$ ; alors $u\equiv b\ [23]$.
        \end{methode}
        \[
            23=2\times 10+3,\qquad 10=3\times 3+1.
        \]
        Donc $1=10-3\times 3=10-3\,(23-2\times 10)=7\times 10-3\times 23$. Ainsi $7\times 10\equiv 1\ [23]$.
        <div class="my-2 font-semibold" style="color:#1F4E79">⇒ $u=\boxed{7}$ (en effet $10\times 7=70=3\times 23+1$).</div>

**2.a)** \textit{Montrer que $m\equiv 10(q+ur)\ [23]$, où $m=10q+r$.}

        \begin{methode}
            On part de $m=10q+r$ (division par $10$) et on remplace $r$ par $10ur$ grâce à $10u\equiv 1\ [23]$.
        \end{methode}
        Comme $10u\equiv 1\ [23]$, on a $r\equiv 10ur\ [23]$. Donc
        \[
            m=10q+r\equiv 10q+10ur=10(q+ur)\ [23].
        \]
        <div class="my-2 font-semibold" style="color:#1F4E79">⇒ $m\equiv 10(q+ur)\ [23]$.</div>

**2.b)** \textit{Montrer que $23\mid m\iff 23\mid(q+ur)$.}

        \begin{rappel}
            $23$ est premier ; $\mathrm{pgcd}(10,23)=1$, donc $10$ est inversible modulo $23$.
        \end{rappel}
        D'après 2.a, $m\equiv 10(q+ur)\ [23]$, donc :
        \[
            23\mid m\iff 10(q+ur)\equiv 0\ [23].
        \]
        Comme $\mathrm{pgcd}(10,23)=1$, on peut simplifier par $10$ (théorème de Gauss) :
        \[
            10(q+ur)\equiv 0\ [23]\iff q+ur\equiv 0\ [23]\iff 23\mid(q+ur).
        \]
        <div class="my-2 font-semibold" style="color:#1F4E79">⇒ $23\mid m\iff 23\mid(q+ur)$.</div>

**3.a)** \textit{Si $x$ est solution de $(S)$, alors $x=10q+2$ et $23\mid(q+7)$.}

        $(S):\ x\equiv 1\ [23]$ et $x\equiv 2\ [10]$.
        La deuxième congruence signifie que le reste de la division de $x$ par $10$ est $2$ : il existe $q\in\mathbb{N}$ tel que $x=10q+2$ (ici $r=2$).
        Appliquons l'équivalence des questions précédentes à $m=x-1$ : $x\equiv 1\ [23]\iff x-1\equiv 0\ [23]\iff 23\mid(x-1)$. Or, d'après 2.a appliqué à $m=x=10q+2$ (quotient $q$, reste $2$), $x\equiv 10(q+2u)\ [23]$ avec $u=7$, soit $x\equiv 10(q+14)\ [23]$.
        Comme $x\equiv 1\ [23]$ : $10(q+14)\equiv 1\ [23]$. En multipliant par $u=7$ (puisque $7\times 10\equiv 1$) :
        \[
            q+14\equiv 7\ [23]\ \Longrightarrow\ q\equiv 7-14=-7\equiv 16\ [23].
        \]
        Donc $q+7\equiv 0\ [23]$, c'est-à-dire $23\mid(q+7)$.
        <div class="my-2 font-semibold" style="color:#1F4E79">⇒ $x=10q+2$ avec $23\mid(q+7)$.</div>

**3.b)** \textit{Résoudre $(S)$ dans $\mathbb{N}$.}

        D'après 3.a, $23\mid(q+7)$, donc il existe $t\in\mathbb{Z}$ tel que $q+7=23t$, soit $q=23t-7$. Pour $q\in\mathbb{N}$, on a $q=23t-7\ge 0\iff t\ge 1$, et l'on pose $t=k+1$ ($k\in\mathbb{N}$) : $q=23(k+1)-7=23k+16$. Alors
        \[
            x=10q+2=10(23k+16)+2=230k+162,\qquad k\in\mathbb{N}.
        \]
        \emph{Vérification :} $230k+162=23(10k+7)+1\equiv 1\ [23]$ \checkmark\ ; $230k+162=10(23k+16)+2\equiv 2\ [10]$ \checkmark.
        <div class="my-2 font-semibold" style="color:#1F4E79">⇒ $\boxed{\ S=\{230k+162\ /\ k\in\mathbb{N}\}\ }$ (plus petite solution : $x=162$).</div>
