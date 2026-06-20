% ====================== EN-TÊTE ======================
    

    \begin{tcolorbox}[colback=ansgray,colframe=exoframe!55,boxrule=0.5pt,arc=2pt,
        left=8pt,right=8pt,top=5pt,bottom=5pt]
    Mode d'emploi. 
        Les encadrés \textbf{verts} (\textit{Méthode}) donnent la \emph{stratégie} :
        « par où commencer ». Les encadrés \textbf{orange} (\textit{Rappel}) redonnent
        la \emph{formule de cours} utilisée. Les résultats à retenir sont \boxed{\text{encadrés}}.
    \end{tcolorbox}

% ============================================================
    <div class="my-5 rounded-lg px-4 py-2.5 text-white font-bold" style="background:#1F4E79">Exercice 1 — Géométrie dans l'espace <span class="font-normal text-white/80 text-sm">(3 points)</span></div>

    On travaille dans un repère orthonormé direct $(O,\ii,\jj,\kk)$ avec
    $A(1,-1,-1)$, $B(0,-2,1)$ et $C(1,-2,0)$.

    
        
        
            

**1.a)** \textit{Montrer que $\vec{AB}\wedge\vec{AC}=\ii+\jj+\kk$.}

            \begin{rappel}
                Coordonnées d'un vecteur : $\vec{AB}=(x_B-x_A,\;y_B-y_A,\;z_B-z_A)$.\\
                Produit vectoriel de $\vec u(a,b,c)$ et $\vec v(a',b',c')$ :
                \[
                    \vec u\wedge \vec v=\bigl(\,b c'-c b'\,,\;\; c a'-a c'\,,\;\; a b'-b a'\,\bigr).
                \]
            \end{rappel}

            On calcule d'abord les deux vecteurs :
            $$\begin{aligned}
                \vec{AB}&=(0-1,\,-2-(-1),\,1-(-1))=(-1,-1,2),\\
                \vec{AC}&=(1-1,\,-2-(-1),\,0-(-1))=(0,-1,1).
            \end{aligned}$$
            Puis on applique la formule, coordonnée par coordonnée :
            \[
                \begin{aligned}
                    1^{\text{re}}&:\ (-1)\times 1-2\times(-1)=-1+2=1,\\
                    2^{\text{e}}&:\ 2\times 0-(-1)\times 1=0+1=1,\\
                    3^{\text{e}}&:\ (-1)\times(-1)-(-1)\times 0=1-0=1.
                \end{aligned}
            \]
            <div class="my-2 font-semibold" style="color:#1F4E79">⇒ $\vec{AB}\wedge\vec{AC}=(1,1,1)=\boxed{\ii+\jj+\kk}$.</div>

**1.b)** \textit{En déduire l'équation $x+y+z+1=0$ du plan $(ABC)$.}

            \begin{rappel}
                Le vecteur $\vec{AB}\wedge\vec{AC}$ est \textbf{normal} au plan $(ABC)$. Un plan de vecteur
                normal $\vec n(a,b,c)$ a une équation de la forme $ax+by+cz+d=0$.
            \end{rappel}

            Ici $\vec n=\vec{AB}\wedge\vec{AC}=(1,1,1)$, donc le plan a une équation $x+y+z+d=0$.
            Le point $A(1,-1,-1)$ appartient au plan, donc ses coordonnées vérifient l'équation :
            \[
                1+(-1)+(-1)+d=0\ \Longrightarrow\ -1+d=0\ \Longrightarrow\ d=1.
            \]
            <div class="my-2 font-semibold" style="color:#1F4E79">⇒ Une équation cartésienne de $(ABC)$ est $\boxed{x+y+z+1=0}$.</div>

        

**2)** \textit{Montrer que $(S):x^2+y^2+z^2-4x+2y-2z+1=0$ a pour centre $\Omega(2,-1,1)$ et rayon $R=\sqrt5$.}

        \begin{methode}
            On regroupe les termes en $x$, en $y$, en $z$, puis on \emph{complète les carrés} avec
            $\;a^2-2\alpha a=(a-\alpha)^2-\alpha^2$.
        \end{methode}

        \[
            x^2-4x=(x-2)^2-4,\qquad y^2+2y=(y+1)^2-1,\qquad z^2-2z=(z-1)^2-1.
        \]
        On remplace dans l'équation :
        \[
            (x-2)^2-4+(y+1)^2-1+(z-1)^2-1+1=0
            \ \Longrightarrow\ (x-2)^2+(y+1)^2+(z-1)^2=5.
        \]
        \begin{rappel}
            Une sphère de centre $\Omega(a,b,c)$ et rayon $R$ a pour équation $(x-a)^2+(y-b)^2+(z-c)^2=R^2$.
        \end{rappel}
        Par identification : $\Omega(2,-1,1)$ et $R^2=5$.
        <div class="my-2 font-semibold" style="color:#1F4E79">⇒ $\boxed{\Omega(2,-1,1)}$ et $\boxed{R=\sqrt5}$.</div>

        
            

**3.a)** \textit{Calculer $d(\Omega,(ABC))$.}

            \begin{rappel}
                Distance d'un point $M(x_0,y_0,z_0)$ au plan $ax+by+cz+d=0$ :
                \[
                    d=\frac{|a x_0+b y_0+c z_0+d|}{\sqrt{a^2+b^2+c^2}}.
                \]
            \end{rappel}
            Avec le plan $x+y+z+1=0$ et $\Omega(2,-1,1)$ :
            \[
                d(\Omega,(ABC))=\frac{|\,2+(-1)+1+1\,|}{\sqrt{1^2+1^2+1^2}}=\frac{3}{\sqrt3}=\boxed{\sqrt3}.
            \]
            \textit{(On simplifie $\dfrac{3}{\sqrt3}=\dfrac{3}{\sqrt3}\times\dfrac{\sqrt3}{\sqrt3}=\dfrac{3\sqrt3}{3}=\sqrt3$.)}

**3.b)** \textit{En déduire que $(ABC)$ coupe $(S)$ selon un cercle $(\Gamma)$.}

            \begin{rappel}
                On compare la distance $d$ du centre au plan avec le rayon $R$ :
                si $d<R$, le plan \textbf{coupe} la sphère selon un cercle.
            \end{rappel}
            Ici $d=\sqrt3$ et $R=\sqrt5$. Comme $3<5$, on a $\sqrt3<\sqrt5$, donc $d<R$.
            <div class="my-2 font-semibold" style="color:#1F4E79">⇒ Le plan $(ABC)$ coupe la sphère $(S)$ selon un cercle $(\Gamma)$.</div>

    

% ============================================================
    <div class="my-5 rounded-lg px-4 py-2.5 text-white font-bold" style="background:#1F4E79">Exercice 2 — Nombres complexes <span class="font-normal text-white/80 text-sm">(3 points)</span></div>

    
        

**1)** \textit{Résoudre dans $\C$ : $z^2-2z+4=0$.}

        \begin{rappel}
            Discriminant $\Delta=b^2-4ac$. Si $\Delta<0$, deux solutions complexes conjuguées :
            $z=\dfrac{-b\pm i\sqrt{|\Delta|}}{2a}$.
        \end{rappel}
        Avec $a=1,\ b=-2,\ c=4$ :
        \[
            \Delta=(-2)^2-4\times1\times4=4-16=-12<0,\qquad \sqrt{|\Delta|}=\sqrt{12}=2\sqrt3.
        \]
        \[
            z=\frac{2\pm i\,2\sqrt3}{2}=1\pm i\sqrt3.
        \]
        <div class="my-2 font-semibold" style="color:#1F4E79">⇒ $S=\boxed{\{\,1-i\sqrt3\ ;\ 1+i\sqrt3\,\}}$.</div>

**2)** On pose $a=1-i\sqrt3,\ b=2+2i,\ c=\sqrt3+i,\ d=-2+2\sqrt3$.

            

**2.a)** \textit{Vérifier que $a-d=-\sqrt3\,(c-d)$.}

            On calcule \emph{séparément} les deux membres.\\[2pt]
            Membre de gauche :
            \[
                a-d=(1-i\sqrt3)-(-2+2\sqrt3)=1-i\sqrt3+2-2\sqrt3=(3-2\sqrt3)-i\sqrt3.
            \]
            Membre de droite :
            \[
                c-d=(\sqrt3+i)-(-2+2\sqrt3)=(2-\sqrt3)+i,
            \]
            \[
                -\sqrt3\,(c-d)=-\sqrt3\,(2-\sqrt3)-\sqrt3\,i=(-2\sqrt3+3)-i\sqrt3=(3-2\sqrt3)-i\sqrt3.
            \]
            Les deux membres sont égaux.
            <div class="my-2 font-semibold" style="color:#1F4E79">⇒ $a-d=-\sqrt3\,(c-d)$.</div>

**2.b)** \textit{En déduire que $A$, $C$, $D$ sont alignés.}

            \begin{rappel}
                L'affixe du vecteur $\vec{DA}$ est $z_A-z_D=a-d$ ; celle de $\vec{DC}$ est $c-d$.
            \end{rappel}
            La relation $a-d=-\sqrt3\,(c-d)$ s'écrit donc, en vecteurs : $\vec{DA}=-\sqrt3\,\vec{DC}$.
            Les vecteurs $\vec{DA}$ et $\vec{DC}$ sont colinéaires (l'un est multiple de l'autre).
            <div class="my-2 font-semibold" style="color:#1F4E79">⇒ Les points $A$, $C$ et $D$ sont alignés.</div>

        

**3)** \textit{$M'$ est l'image de $M$ par la rotation $R$ de centre $O$ et d'angle $-\frac\pi3$. Vérifier $z'=\frac12 a z$.}

        \begin{rappel}
            Écriture complexe d'une rotation de centre $O$ et d'angle $\theta$ : $z'=e^{i\theta}\,z$.
        \end{rappel}
        Ici $\theta=-\frac\pi3$, donc $z'=e^{-i\pi/3}z$. Or
        \[
            e^{-i\pi/3}=\cos\!\Big(\!-\frac\pi3\Big)+i\sin\!\Big(\!-\frac\pi3\Big)=\frac12-i\frac{\sqrt3}{2},
            \qquad
            \frac12 a=\frac12(1-i\sqrt3)=\frac12-i\frac{\sqrt3}{2}.
        \]
        Donc $\dfrac12 a=e^{-i\pi/3}$ (autrement dit $a=2e^{-i\pi/3}$), et l'écriture devient :
        <div class="my-2 font-semibold" style="color:#1F4E79">⇒ $z'=\boxed{\dfrac12\,a\,z}$.</div>

**4)** Soit $H$ l'image de $B$ par $R$, d'affixe $h$, et $P$ d'affixe $p=a-c$.

            

**4.a)** \textit{Vérifier que $h=ip$.}

            Comme $H$ est l'image de $B$ par $R$, on a $h=\frac12 a\,b$. On simplifie d'abord $\frac12(2+2i)=1+i$ :
            \[
                h=\tfrac12(1-i\sqrt3)(2+2i)=(1-i\sqrt3)(1+i)=1+i-i\sqrt3-i^2\sqrt3=(1+\sqrt3)+i(1-\sqrt3).
            \]
            Puis on calcule $ip$ :
            \[
                p=a-c=(1-i\sqrt3)-(\sqrt3+i)=(1-\sqrt3)-i(1+\sqrt3),
            \]
            \[
                ip=i\bigl[(1-\sqrt3)-i(1+\sqrt3)\bigr]=i(1-\sqrt3)-i^2(1+\sqrt3)=(1+\sqrt3)+i(1-\sqrt3).
            \]
            On obtient le même résultat.
            <div class="my-2 font-semibold" style="color:#1F4E79">⇒ $h=ip$.</div>

**4.b)** \textit{Montrer que le triangle $OHP$ est rectangle et isocèle en $O$.}

            \begin{methode}
                On exploite $\dfrac hp=i$. Le \emph{module} donne la longueur des côtés ($OH$ et $OP$),
                l'\emph{argument} donne l'angle en $O$.
            \end{methode}
            De $h=ip$ on tire $\dfrac hp=i$. Alors :
            \[
                \left|\frac hp\right|=|i|=1\ \Longrightarrow\ |h|=|p|\ \Longrightarrow\ OH=OP\quad(\text{isocèle en }O),
            \]
            \[
                \arg\!\left(\frac hp\right)=\arg(i)=\frac\pi2,\quad\text{or}\quad
                \arg\!\left(\frac hp\right)=\arg(h)-\arg(p)=(\vec{OP},\vec{OH}),
            \]
            donc l'angle en $O$ vaut $\dfrac\pi2$ (rectangle en $O$).
            <div class="my-2 font-semibold" style="color:#1F4E79">⇒ Le triangle $OHP$ est rectangle et isocèle en $O$.</div>

    

% ============================================================
    <div class="my-5 rounded-lg px-4 py-2.5 text-white font-bold" style="background:#1F4E79">Exercice 3 — Probabilités <span class="font-normal text-white/80 text-sm">(3 points)</span></div>

    Une urne contient $10$ boules : $3$ vertes, $6$ rouges, $1$ noire. On tire \emph{simultanément} $3$ boules.

    \begin{methode}
        Tirage \emph{simultané} de $3$ boules $\Rightarrow$ on choisit une partie de $3$ boules,
        \textbf{sans ordre} : il y a $\binom{10}{3}$ tirages possibles, tous équiprobables.
        On utilise $\;p=\dfrac{\text{nombre de cas favorables}}{\text{nombre de cas possibles}}$.
    \end{methode}
    Nombre total de tirages : $\displaystyle\binom{10}{3}=\frac{10\times9\times8}{3\times2\times1}=120.$

    
        

**1)** \textit{Montrer $p(A)=\frac1{120}$ ($A$ : « trois vertes ») et $p(B)=\frac7{40}$ ($B$ : « trois de même couleur »).}

        $\bullet$ \textbf{Événement $A$} : choisir $3$ vertes parmi $3$, soit $\binom33=1$ cas.
        \[
            p(A)=\frac{\binom33}{\binom{10}{3}}=\boxed{\frac1{120}}.
        \]
        $\bullet$ \textbf{Événement $B$} : « même couleur » $=$ trois vertes \emph{ou} trois rouges \emph{ou} trois noires.
        \[
            \binom33=1\ (\text{vertes}),\qquad \binom63=\frac{6\times5\times4}{6}=20\ (\text{rouges}),
        \]
        \[
            \binom13=0\quad(\text{impossible : une seule noire}).
        \]
        Nombre de cas favorables : $1+20+0=21$. Donc
        \[
            p(B)=\frac{21}{120}=\boxed{\frac{7}{40}}\qquad(\text{en divisant par }3).
        \]

**2)** \textit{Calculer $p(C)$, où $C$ : « au moins deux boules de même couleur ».}

        \begin{methode}
            « Au moins deux de même couleur » est pénible à compter directement.
            On passe par l'\textbf{événement contraire} $\overline C$.
        \end{methode}
        $\overline C$ : « les trois boules sont de couleurs deux à deux différentes ».
        Comme il n'y a que \emph{trois} couleurs (verte, rouge, noire), cela veut dire exactement
        \textbf{une boule de chaque couleur}.
        \[
            \text{cas favorables à }\overline C:\ \binom31\binom61\binom11=3\times6\times1=18,
            \qquad p(\overline C)=\frac{18}{120}=\frac{3}{20}.
        \]
        \[
            p(C)=1-p(\overline C)=1-\frac{3}{20}=\boxed{\frac{17}{20}}.
        \]

% ============================================================
    <div class="my-5 rounded-lg px-4 py-2.5 text-white font-bold" style="background:#1F4E79">Problème — Étude de fonction et suite <span class="font-normal text-white/80 text-sm">(11 points)</span></div>

    On pose, sur $]0,+\infty[$ : $\displaystyle f(x)=x+\frac12-\ln x+\frac12(\ln x)^2,$
    de courbe $(C_f)$ dans un repère orthonormé (unité $1$ cm).

    <div class="mt-6 mb-2 text-base font-bold" style="color:#1F4E79">Première partie</div>

    
        

**1)** \textit{Calculer $\displaystyle\lim_{x\to0^+}f(x)$ et interpréter.}

        On utilise la forme factorisée $f(x)=x+\frac12+\ln x\Big(\frac12\ln x-1\Big)$ (voir question 2.a).
        Quand $x\to0^+$ : $\ln x\to-\infty$, donc $\frac12\ln x-1\to-\infty$, et le produit
        $\ln x\bigl(\frac12\ln x-1\bigr)\to(-\infty)\times(-\infty)=+\infty$. Avec $x\to0$ :
        \[
            \boxed{\lim_{x\to0^+}f(x)=+\infty.}
        \]
        <div class="my-2 font-semibold" style="color:#1F4E79">⇒ La droite d'équation $x=0$ (l'axe des ordonnées) est asymptote verticale à $(C_f)$.</div>

        
            

**2.a)** \textit{Vérifier $f(x)=x+\frac12+\bigl(\frac12\ln x-1\bigr)\ln x$.}

            On développe le terme $\bigl(\frac12\ln x-1\bigr)\ln x=\frac12(\ln x)^2-\ln x$. Donc
            \[
                x+\frac12+\frac12(\ln x)^2-\ln x=x+\frac12-\ln x+\frac12(\ln x)^2=f(x).\qquad\checkmark
            \]

**2.b)** \textit{En déduire $\displaystyle\lim_{x\to+\infty}f(x)$.}

            Quand $x\to+\infty$ : $\ln x\to+\infty$, donc $\frac12\ln x-1\to+\infty$ et le produit
            $\bigl(\frac12\ln x-1\bigr)\ln x\to+\infty$. Avec $x\to+\infty$ :
            \[
                \boxed{\lim_{x\to+\infty}f(x)=+\infty.}
            \]

**2.c)** \textit{Montrer $\dfrac{(\ln x)^2}{x}=4\Big(\dfrac{\ln\sqrt x}{\sqrt x}\Big)^2$, puis calculer sa limite.}

            \begin{rappel}
                $\ln\sqrt x=\ln\!\big(x^{1/2}\big)=\frac12\ln x$ et $(\sqrt x)^2=x$.\quad
                Croissances comparées : $\displaystyle\lim_{t\to+\infty}\frac{\ln t}{t}=0$.
            \end{rappel}
            On part du membre de droite :
            \[
                4\left(\frac{\ln\sqrt x}{\sqrt x}\right)^2=4\cdot\frac{\big(\frac12\ln x\big)^2}{x}
                =4\cdot\frac{\frac14(\ln x)^2}{x}=\frac{(\ln x)^2}{x}.\qquad\checkmark
            \]
            \emph{Limite.} En posant $t=\sqrt x$ (si $x\to+\infty$ alors $t\to+\infty$) :
            $\dfrac{\ln\sqrt x}{\sqrt x}=\dfrac{\ln t}{t}\to0$. Donc $\Big(\dfrac{\ln\sqrt x}{\sqrt x}\Big)^2\to0$, puis
            \[
                \boxed{\lim_{x\to+\infty}\frac{(\ln x)^2}{x}=0.}
            \]

**2.d)** \textit{Branche parabolique de direction $(\Delta):y=x$.}

            \begin{rappel}
                Si $f(x)\to+\infty$ avec $\dfrac{f(x)}{x}\to1$ et $f(x)-x\to\pm\infty$, alors $(C_f)$ admet
                une \textbf{branche parabolique} de direction la droite $y=x$.
            \end{rappel}
            \[
                \frac{f(x)}{x}=1+\frac1{2x}-\frac{\ln x}{x}+\frac12\,\frac{(\ln x)^2}{x}\xrightarrow[x\to+\infty]{}1+0-0+0=1,
            \]
            (on a utilisé $\frac{\ln x}{x}\to0$ et la question 2.c). De plus, d'après la question 5.a,
            $f(x)-x=\frac12(\ln x-1)^2\to+\infty$.
            <div class="my-2 font-semibold" style="color:#1F4E79">⇒ $(C_f)$ admet au voisinage de $+\infty$ une branche parabolique de direction $(\Delta):y=x$.</div>

        
        
            

**3.a)** \textit{Signe de $(x-1)+\ln x$ sur $]0,1]$ et sur $[1,+\infty[$.}

            \begin{methode}
                On étudie la fonction auxiliaire $g(x)=x-1+\ln x$ : on dérive, on trouve son sens de
                variation, puis on utilise $g(1)=0$.
            \end{methode}
            $g$ est dérivable sur $]0,+\infty[$ et $g'(x)=1+\dfrac1x$. Comme $x>0$, on a $g'(x)>0$ :
            $g$ est strictement croissante. De plus $g(1)=1-1+\ln1=0$. Donc :
            \[
                x\in\,]0,1]\Rightarrow g(x)\le g(1)=0;\qquad x\in[1,+\infty[\Rightarrow g(x)\ge g(1)=0.
            \]
            <div class="my-2 font-semibold" style="color:#1F4E79">⇒ $(x-1)+\ln x\le0$ sur $]0,1]$\ \ et\ \ $(x-1)+\ln x\ge0$ sur $[1,+\infty[$.</div>

**3.b)** \textit{Montrer $f'(x)=\dfrac{x-1+\ln x}{x}$.}

            \begin{rappel}
                $(\ln x)'=\dfrac1x$\quad et\quad $\big((\ln x)^2\big)'=2\ln x\cdot\dfrac1x=\dfrac{2\ln x}{x}$.
            \end{rappel}
            $f$ est dérivable sur $]0,+\infty[$ et
            \[
                f'(x)=1-\frac1x+\frac12\cdot\frac{2\ln x}{x}=1-\frac1x+\frac{\ln x}{x}
                =\frac{x}{x}-\frac1x+\frac{\ln x}{x}=\boxed{\dfrac{x-1+\ln x}{x}}.
            \]

**3.c)** \textit{Tableau de variations de $f$.}

            Sur $]0,+\infty[$, $x>0$, donc $f'(x)$ a le \textbf{signe} de $x-1+\ln x$ (question 3.a).
            Le minimum est en $x=1$ :
            \[
                f(1)=1+\tfrac12-\ln1+\tfrac12(\ln1)^2=\tfrac32.
            \]
            Avec $\displaystyle\lim_{0^+}f=+\infty$ et $\displaystyle\lim_{+\infty}f=+\infty$, on obtient :

            \begin{center}
                <div class="flex justify-center my-5"><img src="data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz4KPHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHhtbG5zOnhsaW5rPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5L3hsaW5rIiB3aWR0aD0iMjg0LjE3MXB0IiBoZWlnaHQ9IjExOS43NjJwdCIgdmlld0JveD0iMCAwIDI4NC4xNzEgMTE5Ljc2MiI+CjxkZWZzPgo8Zz4KPGcgaWQ9ImdseXBoLTAtMCI+CjxwYXRoIGQ9Ik0gMy4zMTI1IC0zIEMgMy4zNzUgLTMuMjY1NjI1IDMuNjA5Mzc1IC00LjE3MTg3NSA0LjI5Njg3NSAtNC4xNzE4NzUgQyA0LjM1OTM3NSAtNC4xNzE4NzUgNC41OTM3NSAtNC4xNzE4NzUgNC43OTY4NzUgLTQuMDQ2ODc1IEMgNC41MTU2MjUgLTQgNC4zMjgxMjUgLTMuNzUgNC4zMjgxMjUgLTMuNTE1NjI1IEMgNC4zMjgxMjUgLTMuMzQzNzUgNC40Mzc1IC0zLjE1NjI1IDQuNzAzMTI1IC0zLjE1NjI1IEMgNC45MjE4NzUgLTMuMTU2MjUgNS4yMzQzNzUgLTMuMzQzNzUgNS4yMzQzNzUgLTMuNzM0Mzc1IEMgNS4yMzQzNzUgLTQuMjUgNC42NTYyNSAtNC4zOTA2MjUgNC4zMTI1IC00LjM5MDYyNSBDIDMuNzM0Mzc1IC00LjM5MDYyNSAzLjM5MDYyNSAtMy44NTkzNzUgMy4yNjU2MjUgLTMuNjQwNjI1IEMgMy4wMTU2MjUgLTQuMjk2ODc1IDIuNDg0Mzc1IC00LjM5MDYyNSAyLjIwMzEyNSAtNC4zOTA2MjUgQyAxLjE1NjI1IC00LjM5MDYyNSAwLjU5Mzc1IC0zLjEwOTM3NSAwLjU5Mzc1IC0yLjg1OTM3NSBDIDAuNTkzNzUgLTIuNzY1NjI1IDAuNzAzMTI1IC0yLjc2NTYyNSAwLjcxODc1IC0yLjc2NTYyNSBDIDAuNzk2ODc1IC0yLjc2NTYyNSAwLjgyODEyNSAtMi43ODEyNSAwLjg0Mzc1IC0yLjg3NSBDIDEuMTg3NSAtMy45MjE4NzUgMS44NDM3NSAtNC4xNzE4NzUgMi4xNzE4NzUgLTQuMTcxODc1IEMgMi4zNTkzNzUgLTQuMTcxODc1IDIuNzE4NzUgLTQuMDc4MTI1IDIuNzE4NzUgLTMuNTE1NjI1IEMgMi43MTg3NSAtMy4yMDMxMjUgMi41NDY4NzUgLTIuNTMxMjUgMi4xNzE4NzUgLTEuMTQwNjI1IEMgMi4wMTU2MjUgLTAuNTMxMjUgMS42NzE4NzUgLTAuMTA5Mzc1IDEuMjM0Mzc1IC0wLjEwOTM3NSBDIDEuMTcxODc1IC0wLjEwOTM3NSAwLjkzNzUgLTAuMTA5Mzc1IDAuNzM0Mzc1IC0wLjIzNDM3NSBDIDAuOTg0Mzc1IC0wLjI4MTI1IDEuMjAzMTI1IC0wLjUgMS4yMDMxMjUgLTAuNzgxMjUgQyAxLjIwMzEyNSAtMS4wNDY4NzUgMC45ODQzNzUgLTEuMTI1IDAuODI4MTI1IC0xLjEyNSBDIDAuNTMxMjUgLTEuMTI1IDAuMjgxMjUgLTAuODU5Mzc1IDAuMjgxMjUgLTAuNTQ2ODc1IEMgMC4yODEyNSAtMC4wOTM3NSAwLjc4MTI1IDAuMTA5Mzc1IDEuMjE4NzUgMC4xMDkzNzUgQyAxLjg3NSAwLjEwOTM3NSAyLjIzNDM3NSAtMC41OTM3NSAyLjI2NTYyNSAtMC42NDA2MjUgQyAyLjM5MDYyNSAtMC4yODEyNSAyLjc1IDAuMTA5Mzc1IDMuMzQzNzUgMC4xMDkzNzUgQyA0LjM1OTM3NSAwLjEwOTM3NSA0LjkyMTg3NSAtMS4xNzE4NzUgNC45MjE4NzUgLTEuNDIxODc1IEMgNC45MjE4NzUgLTEuNTE1NjI1IDQuODQzNzUgLTEuNTE1NjI1IDQuODEyNSAtMS41MTU2MjUgQyA0LjcxODc1IC0xLjUxNTYyNSA0LjcwMzEyNSAtMS40ODQzNzUgNC42ODc1IC0xLjQwNjI1IEMgNC4zNTkzNzUgLTAuMzQzNzUgMy42NzE4NzUgLTAuMTA5Mzc1IDMuMzU5Mzc1IC0wLjEwOTM3NSBDIDIuOTY4NzUgLTAuMTA5Mzc1IDIuODEyNSAtMC40MjE4NzUgMi44MTI1IC0wLjc2NTYyNSBDIDIuODEyNSAtMC45ODQzNzUgMi44NzUgLTEuMjAzMTI1IDIuOTg0Mzc1IC0xLjY0MDYyNSBaIE0gMy4zMTI1IC0zICIvPgo8L2c+CjxnIGlkPSJnbHlwaC0wLTEiPgo8cGF0aCBkPSJNIDMuNjQwNjI1IC0zLjk2ODc1IEwgNC41IC0zLjk2ODc1IEMgNC43MDMxMjUgLTMuOTY4NzUgNC43OTY4NzUgLTMuOTY4NzUgNC43OTY4NzUgLTQuMTcxODc1IEMgNC43OTY4NzUgLTQuMjgxMjUgNC43MDMxMjUgLTQuMjgxMjUgNC41MzEyNSAtNC4yODEyNSBMIDMuNzAzMTI1IC00LjI4MTI1IEwgMy45MjE4NzUgLTUuNDIxODc1IEMgMy45NTMxMjUgLTUuNjI1IDQuMDkzNzUgLTYuMzI4MTI1IDQuMTU2MjUgLTYuNDUzMTI1IEMgNC4yNSAtNi42NDA2MjUgNC40MDYyNSAtNi43ODEyNSA0LjYyNSAtNi43ODEyNSBDIDQuNjU2MjUgLTYuNzgxMjUgNC45MjE4NzUgLTYuNzgxMjUgNS4xMDkzNzUgLTYuNjA5Mzc1IEMgNC42NzE4NzUgLTYuNTYyNSA0LjU3ODEyNSAtNi4yMTg3NSA0LjU3ODEyNSAtNi4wNzgxMjUgQyA0LjU3ODEyNSAtNS44NDM3NSA0Ljc1IC01LjcxODc1IDQuOTM3NSAtNS43MTg3NSBDIDUuMjAzMTI1IC01LjcxODc1IDUuNDg0Mzc1IC01LjkzNzUgNS40ODQzNzUgLTYuMzEyNSBDIDUuNDg0Mzc1IC02Ljc4MTI1IDUuMDMxMjUgLTcgNC42MjUgLTcgQyA0LjI4MTI1IC03IDMuNjU2MjUgLTYuODI4MTI1IDMuMzU5Mzc1IC01Ljg0Mzc1IEMgMy4yOTY4NzUgLTUuNjQwNjI1IDMuMjY1NjI1IC01LjUzMTI1IDMuMDMxMjUgLTQuMjgxMjUgTCAyLjM0Mzc1IC00LjI4MTI1IEMgMi4xNTYyNSAtNC4yODEyNSAyLjA0Njg3NSAtNC4yODEyNSAyLjA0Njg3NSAtNC4wOTM3NSBDIDIuMDQ2ODc1IC0zLjk2ODc1IDIuMTQwNjI1IC0zLjk2ODc1IDIuMzI4MTI1IC0zLjk2ODc1IEwgMi45ODQzNzUgLTMuOTY4NzUgTCAyLjIzNDM3NSAtMC4wNDY4NzUgQyAyLjA2MjUgMC45MjE4NzUgMS44OTA2MjUgMS44MTI1IDEuMzc1IDEuODEyNSBDIDEuMzI4MTI1IDEuODEyNSAxLjA3ODEyNSAxLjgxMjUgMC44OTA2MjUgMS42NDA2MjUgQyAxLjM0Mzc1IDEuNjA5Mzc1IDEuNDM3NSAxLjI1IDEuNDM3NSAxLjEwOTM3NSBDIDEuNDM3NSAwLjg3NSAxLjI2NTYyNSAwLjc1IDEuMDc4MTI1IDAuNzUgQyAwLjgxMjUgMC43NSAwLjUzMTI1IDAuOTY4NzUgMC41MzEyNSAxLjM0Mzc1IEMgMC41MzEyNSAxLjc5Njg3NSAwLjk2ODc1IDIuMDMxMjUgMS4zNzUgMi4wMzEyNSBDIDEuOTIxODc1IDIuMDMxMjUgMi4zMTI1IDEuNDUzMTI1IDIuNSAxLjA3ODEyNSBDIDIuODEyNSAwLjQ1MzEyNSAzLjA0Njg3NSAtMC43NSAzLjA0Njg3NSAtMC44MjgxMjUgWiBNIDMuNjQwNjI1IC0zLjk2ODc1ICIvPgo8L2c+CjxnIGlkPSJnbHlwaC0xLTAiPgo8cGF0aCBkPSJNIDIuMDE1NjI1IC0zLjI4MTI1IEMgMi4wNzgxMjUgLTMuNDA2MjUgMi4wNzgxMjUgLTMuNDUzMTI1IDIuMDc4MTI1IC0zLjUgQyAyLjA3ODEyNSAtMy43MTg3NSAxLjg5MDYyNSAtMy44OTA2MjUgMS42NzE4NzUgLTMuODkwNjI1IEMgMS40MDYyNSAtMy44OTA2MjUgMS4zMjgxMjUgLTMuNjcxODc1IDEuMjgxMjUgLTMuNTYyNSBMIDAuMzc1IC0wLjU0Njg3NSBDIDAuMzU5Mzc1IC0wLjUzMTI1IDAuMzI4MTI1IC0wLjQzNzUgMC4zMjgxMjUgLTAuNDM3NSBDIDAuMzI4MTI1IC0wLjM1OTM3NSAwLjU0Njg3NSAtMC4yODEyNSAwLjYwOTM3NSAtMC4yODEyNSBDIDAuNjU2MjUgLTAuMjgxMjUgMC42NTYyNSAtMC4yOTY4NzUgMC43MDMxMjUgLTAuNDA2MjUgWiBNIDIuMDE1NjI1IC0zLjI4MTI1ICIvPgo8L2c+CjxnIGlkPSJnbHlwaC0yLTAiPgo8cGF0aCBkPSJNIDMuMjk2ODc1IDIuMzkwNjI1IEMgMy4yOTY4NzUgMi4zNTkzNzUgMy4yOTY4NzUgMi4zMjgxMjUgMy4xMjUgMi4xNzE4NzUgQyAxLjg3NSAwLjkyMTg3NSAxLjU2MjUgLTAuOTY4NzUgMS41NjI1IC0yLjQ4NDM3NSBDIDEuNTYyNSAtNC4yMTg3NSAxLjkzNzUgLTUuOTM3NSAzLjE1NjI1IC03LjE4NzUgQyAzLjI5Njg3NSAtNy4yOTY4NzUgMy4yOTY4NzUgLTcuMzI4MTI1IDMuMjk2ODc1IC03LjM1OTM3NSBDIDMuMjk2ODc1IC03LjQyMTg3NSAzLjI1IC03LjQ1MzEyNSAzLjE4NzUgLTcuNDUzMTI1IEMgMy4wOTM3NSAtNy40NTMxMjUgMi4yMDMxMjUgLTYuNzgxMjUgMS42MDkzNzUgLTUuNTE1NjI1IEMgMS4xMDkzNzUgLTQuNDIxODc1IDAuOTg0Mzc1IC0zLjMxMjUgMC45ODQzNzUgLTIuNDg0Mzc1IEMgMC45ODQzNzUgLTEuNzAzMTI1IDEuMDkzNzUgLTAuNSAxLjY0MDYyNSAwLjYwOTM3NSBDIDIuMjM0Mzc1IDEuODQzNzUgMy4wOTM3NSAyLjQ4NDM3NSAzLjE4NzUgMi40ODQzNzUgQyAzLjI1IDIuNDg0Mzc1IDMuMjk2ODc1IDIuNDUzMTI1IDMuMjk2ODc1IDIuMzkwNjI1IFogTSAzLjI5Njg3NSAyLjM5MDYyNSAiLz4KPC9nPgo8ZyBpZD0iZ2x5cGgtMi0xIj4KPHBhdGggZD0iTSAyLjg3NSAtMi40ODQzNzUgQyAyLjg3NSAtMy4yNjU2MjUgMi43NjU2MjUgLTQuNDY4NzUgMi4yMTg3NSAtNS41NzgxMjUgQyAxLjYyNSAtNi44MTI1IDAuNzY1NjI1IC03LjQ1MzEyNSAwLjY3MTg3NSAtNy40NTMxMjUgQyAwLjYwOTM3NSAtNy40NTMxMjUgMC41NjI1IC03LjQwNjI1IDAuNTYyNSAtNy4zNTkzNzUgQyAwLjU2MjUgLTcuMzI4MTI1IDAuNTYyNSAtNy4yOTY4NzUgMC43NSAtNy4xMjUgQyAxLjczNDM3NSAtNi4xNDA2MjUgMi4yOTY4NzUgLTQuNTYyNSAyLjI5Njg3NSAtMi40ODQzNzUgQyAyLjI5Njg3NSAtMC43ODEyNSAxLjkyMTg3NSAwLjk2ODc1IDAuNzAzMTI1IDIuMjE4NzUgQyAwLjU2MjUgMi4zMjgxMjUgMC41NjI1IDIuMzU5Mzc1IDAuNTYyNSAyLjM5MDYyNSBDIDAuNTYyNSAyLjQzNzUgMC42MDkzNzUgMi40ODQzNzUgMC42NzE4NzUgMi40ODQzNzUgQyAwLjc2NTYyNSAyLjQ4NDM3NSAxLjY1NjI1IDEuODEyNSAyLjI1IDAuNTQ2ODc1IEMgMi43NSAtMC41NDY4NzUgMi44NzUgLTEuNjU2MjUgMi44NzUgLTIuNDg0Mzc1IFogTSAyLjg3NSAtMi40ODQzNzUgIi8+CjwvZz4KPGcgaWQ9ImdseXBoLTItMiI+CjxwYXRoIGQ9Ik0gNC41NzgxMjUgLTMuMTg3NSBDIDQuNTc4MTI1IC0zLjk2ODc1IDQuNTE1NjI1IC00Ljc2NTYyNSA0LjE3MTg3NSAtNS41IEMgMy43MTg3NSAtNi40NTMxMjUgMi45MDYyNSAtNi42MjUgMi40ODQzNzUgLTYuNjI1IEMgMS44OTA2MjUgLTYuNjI1IDEuMTU2MjUgLTYuMzU5Mzc1IDAuNzUgLTUuNDM3NSBDIDAuNDM3NSAtNC43NSAwLjM5MDYyNSAtMy45Njg3NSAwLjM5MDYyNSAtMy4xODc1IEMgMC4zOTA2MjUgLTIuNDM3NSAwLjQyMTg3NSAtMS41NDY4NzUgMC44MjgxMjUgLTAuNzgxMjUgQyAxLjI2NTYyNSAwLjAxNTYyNSAxLjk4NDM3NSAwLjIxODc1IDIuNDY4NzUgMC4yMTg3NSBDIDMuMDE1NjI1IDAuMjE4NzUgMy43NjU2MjUgMC4wMTU2MjUgNC4yMDMxMjUgLTAuOTM3NSBDIDQuNTE1NjI1IC0xLjYyNSA0LjU3ODEyNSAtMi4zOTA2MjUgNC41NzgxMjUgLTMuMTg3NSBaIE0gMi40Njg3NSAwIEMgMi4wOTM3NSAwIDEuNSAtMC4yNSAxLjMyODEyNSAtMS4yMDMxMjUgQyAxLjIxODc1IC0xLjc5Njg3NSAxLjIxODc1IC0yLjcxODc1IDEuMjE4NzUgLTMuMjk2ODc1IEMgMS4yMTg3NSAtMy45Mzc1IDEuMjE4NzUgLTQuNTkzNzUgMS4yOTY4NzUgLTUuMTI1IEMgMS40ODQzNzUgLTYuMzEyNSAyLjIxODc1IC02LjQwNjI1IDIuNDY4NzUgLTYuNDA2MjUgQyAyLjc5Njg3NSAtNi40MDYyNSAzLjQ1MzEyNSAtNi4yMTg3NSAzLjY0MDYyNSAtNS4yMzQzNzUgQyAzLjc1IC00LjY4NzUgMy43NSAtMy45MjE4NzUgMy43NSAtMy4yOTY4NzUgQyAzLjc1IC0yLjU0Njg3NSAzLjc1IC0xLjg3NSAzLjY0MDYyNSAtMS4yNSBDIDMuNDg0Mzc1IC0wLjI5Njg3NSAyLjkyMTg3NSAwIDIuNDY4NzUgMCBaIE0gMi40Njg3NSAwICIvPgo8L2c+CjxnIGlkPSJnbHlwaC0yLTMiPgo8cGF0aCBkPSJNIDIuOTIxODc1IC02LjM1OTM3NSBDIDIuOTIxODc1IC02LjU5Mzc1IDIuOTIxODc1IC02LjYyNSAyLjY4NzUgLTYuNjI1IEMgMi4wNzgxMjUgLTUuOTg0Mzc1IDEuMjAzMTI1IC01Ljk4NDM3NSAwLjg5MDYyNSAtNS45ODQzNzUgTCAwLjg5MDYyNSAtNS42NzE4NzUgQyAxLjA3ODEyNSAtNS42NzE4NzUgMS42NzE4NzUgLTUuNjcxODc1IDIuMTg3NSAtNS45Mzc1IEwgMi4xODc1IC0wLjc4MTI1IEMgMi4xODc1IC0wLjQyMTg3NSAyLjE1NjI1IC0wLjMxMjUgMS4yNjU2MjUgLTAuMzEyNSBMIDAuOTM3NSAtMC4zMTI1IEwgMC45Mzc1IDAgQyAxLjI5Njg3NSAtMC4wMzEyNSAyLjE1NjI1IC0wLjAzMTI1IDIuNTQ2ODc1IC0wLjAzMTI1IEMgMi45NTMxMjUgLTAuMDMxMjUgMy44MTI1IC0wLjAzMTI1IDQuMTU2MjUgMCBMIDQuMTU2MjUgLTAuMzEyNSBMIDMuODQzNzUgLTAuMzEyNSBDIDIuOTUzMTI1IC0wLjMxMjUgMi45MjE4NzUgLTAuNDIxODc1IDIuOTIxODc1IC0wLjc4MTI1IFogTSAyLjkyMTg3NSAtNi4zNTkzNzUgIi8+CjwvZz4KPGcgaWQ9ImdseXBoLTItNCI+CjxwYXRoIGQ9Ik0gNC4wNjI1IC0yLjI4MTI1IEwgNi44NDM3NSAtMi4yODEyNSBDIDYuOTY4NzUgLTIuMjgxMjUgNy4xNzE4NzUgLTIuMjgxMjUgNy4xNzE4NzUgLTIuNDg0Mzc1IEMgNy4xNzE4NzUgLTIuNjg3NSA2Ljk2ODc1IC0yLjY4NzUgNi44NDM3NSAtMi42ODc1IEwgNC4wNjI1IC0yLjY4NzUgTCA0LjA2MjUgLTUuNDY4NzUgQyA0LjA2MjUgLTUuNjA5Mzc1IDQuMDYyNSAtNS43OTY4NzUgMy44NTkzNzUgLTUuNzk2ODc1IEMgMy42NzE4NzUgLTUuNzk2ODc1IDMuNjcxODc1IC01LjYwOTM3NSAzLjY3MTg3NSAtNS40Njg3NSBMIDMuNjcxODc1IC0yLjY4NzUgTCAwLjg5MDYyNSAtMi42ODc1IEMgMC43NSAtMi42ODc1IDAuNTYyNSAtMi42ODc1IDAuNTYyNSAtMi40ODQzNzUgQyAwLjU2MjUgLTIuMjgxMjUgMC43NSAtMi4yODEyNSAwLjg5MDYyNSAtMi4yODEyNSBMIDMuNjcxODc1IC0yLjI4MTI1IEwgMy42NzE4NzUgMC41IEMgMy42NzE4NzUgMC42NDA2MjUgMy42NzE4NzUgMC44MjgxMjUgMy44NTkzNzUgMC44MjgxMjUgQyA0LjA2MjUgMC44MjgxMjUgNC4wNjI1IDAuNjQwNjI1IDQuMDYyNSAwLjUgWiBNIDQuMDYyNSAtMi4yODEyNSAiLz4KPC9nPgo8ZyBpZD0iZ2x5cGgtMi01Ij4KPHBhdGggZD0iTSAyLjg3NSAtMy41IEMgMy43MDMxMjUgLTMuNzY1NjI1IDQuMjY1NjI1IC00LjQ2ODc1IDQuMjY1NjI1IC01LjI1IEMgNC4yNjU2MjUgLTYuMDYyNSAzLjQwNjI1IC02LjYyNSAyLjQzNzUgLTYuNjI1IEMgMS40Mzc1IC02LjYyNSAwLjY4NzUgLTYuMDE1NjI1IDAuNjg3NSAtNS4yNjU2MjUgQyAwLjY4NzUgLTQuOTM3NSAwLjkwNjI1IC00Ljc1IDEuMTg3NSAtNC43NSBDIDEuNSAtNC43NSAxLjcwMzEyNSAtNC45Njg3NSAxLjcwMzEyNSAtNS4yNSBDIDEuNzAzMTI1IC01Ljc1IDEuMjM0Mzc1IC01Ljc1IDEuMDc4MTI1IC01Ljc1IEMgMS4zOTA2MjUgLTYuMjM0Mzc1IDIuMDQ2ODc1IC02LjM3NSAyLjQwNjI1IC02LjM3NSBDIDIuODEyNSAtNi4zNzUgMy4zNTkzNzUgLTYuMTU2MjUgMy4zNTkzNzUgLTUuMjUgQyAzLjM1OTM3NSAtNS4xNDA2MjUgMy4zNDM3NSAtNC41NjI1IDMuMDc4MTI1IC00LjEyNSBDIDIuNzgxMjUgLTMuNjQwNjI1IDIuNDM3NSAtMy42MjUgMi4yMDMxMjUgLTMuNjA5Mzc1IEMgMi4xMDkzNzUgLTMuNTkzNzUgMS44NzUgLTMuNTc4MTI1IDEuODEyNSAtMy41NzgxMjUgQyAxLjczNDM3NSAtMy41NjI1IDEuNjU2MjUgLTMuNTYyNSAxLjY1NjI1IC0zLjQ1MzEyNSBDIDEuNjU2MjUgLTMuMzQzNzUgMS43MzQzNzUgLTMuMzQzNzUgMS44OTA2MjUgLTMuMzQzNzUgTCAyLjMyODEyNSAtMy4zNDM3NSBDIDMuMTU2MjUgLTMuMzQzNzUgMy41MTU2MjUgLTIuNjcxODc1IDMuNTE1NjI1IC0xLjcwMzEyNSBDIDMuNTE1NjI1IC0wLjM0Mzc1IDIuODI4MTI1IC0wLjA2MjUgMi4zOTA2MjUgLTAuMDYyNSBDIDEuOTY4NzUgLTAuMDYyNSAxLjIxODc1IC0wLjIzNDM3NSAwLjg3NSAtMC44MTI1IEMgMS4yMTg3NSAtMC43NjU2MjUgMS41MzEyNSAtMC45ODQzNzUgMS41MzEyNSAtMS4zNTkzNzUgQyAxLjUzMTI1IC0xLjcxODc1IDEuMjY1NjI1IC0xLjkyMTg3NSAwLjk2ODc1IC0xLjkyMTg3NSBDIDAuNzM0Mzc1IC0xLjkyMTg3NSAwLjQyMTg3NSAtMS43ODEyNSAwLjQyMTg3NSAtMS4zNDM3NSBDIDAuNDIxODc1IC0wLjQzNzUgMS4zNDM3NSAwLjIxODc1IDIuNDIxODc1IDAuMjE4NzUgQyAzLjY0MDYyNSAwLjIxODc1IDQuNTQ2ODc1IC0wLjY4NzUgNC41NDY4NzUgLTEuNzAzMTI1IEMgNC41NDY4NzUgLTIuNTE1NjI1IDMuOTIxODc1IC0zLjI5Njg3NSAyLjg3NSAtMy41IFogTSAyLjg3NSAtMy41ICIvPgo8L2c+CjxnIGlkPSJnbHlwaC0yLTYiPgo8cGF0aCBkPSJNIDEuMjY1NjI1IC0wLjc2NTYyNSBMIDIuMzEyNSAtMS43ODEyNSBDIDMuODU5Mzc1IC0zLjE1NjI1IDQuNDY4NzUgLTMuNzAzMTI1IDQuNDY4NzUgLTQuNjg3NSBDIDQuNDY4NzUgLTUuODI4MTI1IDMuNTYyNSAtNi42MjUgMi4zNTkzNzUgLTYuNjI1IEMgMS4yMzQzNzUgLTYuNjI1IDAuNSAtNS43MDMxMjUgMC41IC00LjgxMjUgQyAwLjUgLTQuMjY1NjI1IDEgLTQuMjY1NjI1IDEuMDMxMjUgLTQuMjY1NjI1IEMgMS4xODc1IC00LjI2NTYyNSAxLjU0Njg3NSAtNC4zNzUgMS41NDY4NzUgLTQuNzk2ODc1IEMgMS41NDY4NzUgLTUuMDQ2ODc1IDEuMzU5Mzc1IC01LjMxMjUgMS4wMTU2MjUgLTUuMzEyNSBDIDAuOTM3NSAtNS4zMTI1IDAuOTIxODc1IC01LjMxMjUgMC44OTA2MjUgLTUuMjk2ODc1IEMgMS4xMDkzNzUgLTUuOTM3NSAxLjY1NjI1IC02LjMxMjUgMi4yMTg3NSAtNi4zMTI1IEMgMy4xMjUgLTYuMzEyNSAzLjU2MjUgLTUuNSAzLjU2MjUgLTQuNjg3NSBDIDMuNTYyNSAtMy44OTA2MjUgMy4wNjI1IC0zLjEwOTM3NSAyLjUxNTYyNSAtMi41IEwgMC42MDkzNzUgLTAuMzc1IEMgMC41IC0wLjI2NTYyNSAwLjUgLTAuMjM0Mzc1IDAuNSAwIEwgNC4xODc1IDAgTCA0LjQ2ODc1IC0xLjczNDM3NSBMIDQuMjE4NzUgLTEuNzM0Mzc1IEMgNC4xNTYyNSAtMS40Mzc1IDQuMDkzNzUgLTEgNCAtMC44NDM3NSBDIDMuOTIxODc1IC0wLjc2NTYyNSAzLjI2NTYyNSAtMC43NjU2MjUgMy4wNDY4NzUgLTAuNzY1NjI1IFogTSAxLjI2NTYyNSAtMC43NjU2MjUgIi8+CjwvZz4KPGcgaWQ9ImdseXBoLTMtMCI+CjxwYXRoIGQ9Ik0gNS4wNDY4NzUgLTIuNjg3NSBDIDQuNTE1NjI1IC0zLjM3NSA0LjM5MDYyNSAtMy41MTU2MjUgNC4wNzgxMjUgLTMuNzY1NjI1IEMgMy41MzEyNSAtNC4yMTg3NSAyLjk2ODc1IC00LjM5MDYyNSAyLjQ2ODc1IC00LjM5MDYyNSBDIDEuMjk2ODc1IC00LjM5MDYyNSAwLjU0Njg3NSAtMy4yOTY4NzUgMC41NDY4NzUgLTIuMTQwNjI1IEMgMC41NDY4NzUgLTEgMS4yODEyNSAwLjEwOTM3NSAyLjQyMTg3NSAwLjEwOTM3NSBDIDMuNTYyNSAwLjEwOTM3NSA0LjM5MDYyNSAtMC43OTY4NzUgNC44NzUgLTEuNTkzNzUgQyA1LjQyMTg3NSAtMC45MjE4NzUgNS41MzEyNSAtMC43NjU2MjUgNS44NDM3NSAtMC41MTU2MjUgQyA2LjQwNjI1IC0wLjA2MjUgNi45NTMxMjUgMC4xMDkzNzUgNy40Njg3NSAwLjEwOTM3NSBDIDguNjI1IDAuMTA5Mzc1IDkuMzc1IC0wLjk4NDM3NSA5LjM3NSAtMi4xNDA2MjUgQyA5LjM3NSAtMy4yOTY4NzUgOC42NDA2MjUgLTQuMzkwNjI1IDcuNSAtNC4zOTA2MjUgQyA2LjM1OTM3NSAtNC4zOTA2MjUgNS41MzEyNSAtMy40ODQzNzUgNS4wNDY4NzUgLTIuNjg3NSBaIE0gNS4zMTI1IC0yLjM1OTM3NSBDIDUuNzE4NzUgLTMuMDc4MTI1IDYuNDUzMTI1IC00LjA3ODEyNSA3LjU3ODEyNSAtNC4wNzgxMjUgQyA4LjYyNSAtNC4wNzgxMjUgOS4xNTYyNSAtMy4wNDY4NzUgOS4xNTYyNSAtMi4xNDA2MjUgQyA5LjE1NjI1IC0xLjE3MTg3NSA4LjUgLTAuMzc1IDcuNjI1IC0wLjM3NSBDIDcuMDQ2ODc1IC0wLjM3NSA2LjU5Mzc1IC0wLjc4MTI1IDYuMzkwNjI1IC0xIEMgNi4xNDA2MjUgLTEuMjY1NjI1IDUuOTA2MjUgLTEuNTYyNSA1LjMxMjUgLTIuMzU5Mzc1IFogTSA0LjYyNSAtMS45MjE4NzUgQyA0LjIxODc1IC0xLjIxODc1IDMuNDg0Mzc1IC0wLjIwMzEyNSAyLjM1OTM3NSAtMC4yMDMxMjUgQyAxLjI5Njg3NSAtMC4yMDMxMjUgMC43NjU2MjUgLTEuMjUgMC43NjU2MjUgLTIuMTQwNjI1IEMgMC43NjU2MjUgLTMuMTA5Mzc1IDEuNDM3NSAtMy45MjE4NzUgMi4zMTI1IC0zLjkyMTg3NSBDIDIuODc1IC0zLjkyMTg3NSAzLjMyODEyNSAtMy41IDMuNTMxMjUgLTMuMjk2ODc1IEMgMy43ODEyNSAtMy4wMTU2MjUgNC4wMTU2MjUgLTIuNzE4NzUgNC42MjUgLTEuOTIxODc1IFogTSA0LjYyNSAtMS45MjE4NzUgIi8+CjwvZz4KPGcgaWQ9ImdseXBoLTMtMSI+CjxwYXRoIGQ9Ik0gNi41NDY4NzUgLTIuMjgxMjUgQyA2LjcxODc1IC0yLjI4MTI1IDYuODkwNjI1IC0yLjI4MTI1IDYuODkwNjI1IC0yLjQ4NDM3NSBDIDYuODkwNjI1IC0yLjY4NzUgNi43MTg3NSAtMi42ODc1IDYuNTQ2ODc1IC0yLjY4NzUgTCAxLjE3MTg3NSAtMi42ODc1IEMgMSAtMi42ODc1IDAuODI4MTI1IC0yLjY4NzUgMC44MjgxMjUgLTIuNDg0Mzc1IEMgMC44MjgxMjUgLTIuMjgxMjUgMSAtMi4yODEyNSAxLjE3MTg3NSAtMi4yODEyNSBaIE0gNi41NDY4NzUgLTIuMjgxMjUgIi8+CjwvZz4KPC9nPgo8L2RlZnM+CjxnIGZpbGw9InJnYigwJSwgMCUsIDAlKSIgZmlsbC1vcGFjaXR5PSIxIj4KPHVzZSB4bGluazpocmVmPSIjZ2x5cGgtMC0wIiB4PSIzNC4yNTcwNjMiIHk9IjE5LjUwNDc4OCIvPgo8L2c+CjxnIGZpbGw9InJnYigwJSwgMCUsIDAlKSIgZmlsbC1vcGFjaXR5PSIxIj4KPHVzZSB4bGluazpocmVmPSIjZ2x5cGgtMC0xIiB4PSIyNi4wMzQwNTIiIHk9IjQ4LjEyMjMwMyIvPgo8L2c+CjxnIGZpbGw9InJnYigwJSwgMCUsIDAlKSIgZmlsbC1vcGFjaXR5PSIxIj4KPHVzZSB4bGluazpocmVmPSIjZ2x5cGgtMS0wIiB4PSIzMS45NjY3NDUiIHk9IjQ0LjUxNzgxOCIvPgo8L2c+CjxnIGZpbGw9InJnYigwJSwgMCUsIDAlKSIgZmlsbC1vcGFjaXR5PSIxIj4KPHVzZSB4bGluazpocmVmPSIjZ2x5cGgtMi0wIiB4PSIzNC43NTM2MTUiIHk9IjQ4LjEyMjMwMyIvPgo8L2c+CjxnIGZpbGw9InJnYigwJSwgMCUsIDAlKSIgZmlsbC1vcGFjaXR5PSIxIj4KPHVzZSB4bGluazpocmVmPSIjZ2x5cGgtMC0wIiB4PSIzOC42MTY4IiB5PSI0OC4xMjIzMDMiLz4KPC9nPgo8ZyBmaWxsPSJyZ2IoMCUsIDAlLCAwJSkiIGZpbGwtb3BhY2l0eT0iMSI+Cjx1c2UgeGxpbms6aHJlZj0iI2dseXBoLTItMSIgeD0iNDQuMjkzODY0IiB5PSI0OC4xMjIzMDMiLz4KPC9nPgo8ZyBmaWxsPSJyZ2IoMCUsIDAlLCAwJSkiIGZpbGwtb3BhY2l0eT0iMSI+Cjx1c2UgeGxpbms6aHJlZj0iI2dseXBoLTAtMSIgeD0iMjcuNDI2OTg4IiB5PSI5MC41MDk2NDgiLz4KPC9nPgo8ZyBmaWxsPSJyZ2IoMCUsIDAlLCAwJSkiIGZpbGwtb3BhY2l0eT0iMSI+Cjx1c2UgeGxpbms6aHJlZj0iI2dseXBoLTItMCIgeD0iMzMuMzYzMzIiIHk9IjkwLjUwOTY0OCIvPgo8L2c+CjxnIGZpbGw9InJnYigwJSwgMCUsIDAlKSIgZmlsbC1vcGFjaXR5PSIxIj4KPHVzZSB4bGluazpocmVmPSIjZ2x5cGgtMC0wIiB4PSIzNy4yMjY1MDYiIHk9IjkwLjUwOTY0OCIvPgo8L2c+CjxnIGZpbGw9InJnYigwJSwgMCUsIDAlKSIgZmlsbC1vcGFjaXR5PSIxIj4KPHVzZSB4bGluazpocmVmPSIjZ2x5cGgtMi0xIiB4PSI0Mi45MDM1NyIgeT0iOTAuNTA5NjQ4Ii8+CjwvZz4KPHBhdGggZmlsbD0ibm9uZSIgc3Ryb2tlLXdpZHRoPSIwLjM5ODUiIHN0cm9rZS1saW5lY2FwPSJidXR0IiBzdHJva2UtbGluZWpvaW49Im1pdGVyIiBzdHJva2U9InJnYigwJSwgMCUsIDAlKSIgc3Ryb2tlLW9wYWNpdHk9IjEiIHN0cm9rZS1taXRlcmxpbWl0PSIxMCIgZD0iTSAwLjAwMDk2MzQ2NyAtMjguMzQ4MjA1IEwgMjc3Ljc5NzI5MSAtMjguMzQ4MjA1ICIgdHJhbnNmb3JtPSJtYXRyaXgoMC45OTcwOTEsIDAsIDAsIC0wLjk5NzA5MSwgMy4xNzg3MjcsIDMuMjM0MjUzKSIvPgo8cGF0aCBmaWxsPSJub25lIiBzdHJva2Utd2lkdGg9IjAuMzk4NSIgc3Ryb2tlLWxpbmVjYXA9ImJ1dHQiIHN0cm9rZS1saW5lam9pbj0ibWl0ZXIiIHN0cm9rZT0icmdiKDAlLCAwJSwgMCUpIiBzdHJva2Utb3BhY2l0eT0iMSIgc3Ryb2tlLW1pdGVybGltaXQ9IjEwIiBkPSJNIDAuMDAwOTYzNDY3IC01Ni42OTIzNzEgTCAyNzcuNzk3MjkxIC01Ni42OTIzNzEgIiB0cmFuc2Zvcm09Im1hdHJpeCgwLjk5NzA5MSwgMCwgMCwgLTAuOTk3MDkxLCAzLjE3ODcyNywgMy4yMzQyNTMpIi8+CjxwYXRoIGZpbGw9Im5vbmUiIHN0cm9rZS13aWR0aD0iMC4zOTg1IiBzdHJva2UtbGluZWNhcD0iYnV0dCIgc3Ryb2tlLWxpbmVqb2luPSJtaXRlciIgc3Ryb2tlPSJyZ2IoMCUsIDAlLCAwJSkiIHN0cm9rZS1vcGFjaXR5PSIxIiBzdHJva2UtbWl0ZXJsaW1pdD0iMTAiIGQ9Ik0gMC4wMDA5NjM0NjcgLTExMy4zODg1MzcgTCAyNzcuNzk3MjkxIC0xMTMuMzg4NTM3ICIgdHJhbnNmb3JtPSJtYXRyaXgoMC45OTcwOTEsIDAsIDAsIC0wLjk5NzA5MSwgMy4xNzg3MjcsIDMuMjM0MjUzKSIvPgo8cGF0aCBmaWxsPSJub25lIiBzdHJva2Utd2lkdGg9IjAuMzk4NSIgc3Ryb2tlLWxpbmVjYXA9ImJ1dHQiIHN0cm9rZS1saW5lam9pbj0ibWl0ZXIiIHN0cm9rZT0icmdiKDAlLCAwJSwgMCUpIiBzdHJva2Utb3BhY2l0eT0iMSIgc3Ryb2tlLW1pdGVybGltaXQ9IjEwIiBkPSJNIDAuMDAwOTYzNDY3IC0wLjAwMDEyMjIwNSBMIDAuMDAwOTYzNDY3IC0xMTMuMzg4NTM3IEwgMjc3Ljc5NzI5MSAtMTEzLjM4ODUzNyBMIDI3Ny43OTcyOTEgLTAuMDAwMTIyMjA1IFogTSAwLjAwMDk2MzQ2NyAtMC4wMDAxMjIyMDUgIiB0cmFuc2Zvcm09Im1hdHJpeCgwLjk5NzA5MSwgMCwgMCwgLTAuOTk3MDkxLCAzLjE3ODcyNywgMy4yMzQyNTMpIi8+CjxwYXRoIGZpbGw9Im5vbmUiIHN0cm9rZS13aWR0aD0iMC4zOTg1IiBzdHJva2UtbGluZWNhcD0iYnV0dCIgc3Ryb2tlLWxpbmVqb2luPSJtaXRlciIgc3Ryb2tlPSJyZ2IoMCUsIDAlLCAwJSkiIHN0cm9rZS1vcGFjaXR5PSIxIiBzdHJva2UtbWl0ZXJsaW1pdD0iMTAiIGQ9Ik0gNjguMDMwODc4IC0wLjAwMDEyMjIwNSBMIDY4LjAzMDg3OCAtMTEzLjM4ODUzNyAiIHRyYW5zZm9ybT0ibWF0cml4KDAuOTk3MDkxLCAwLCAwLCAtMC45OTcwOTEsIDMuMTc4NzI3LCAzLjIzNDI1MykiLz4KPGcgZmlsbD0icmdiKDAlLCAwJSwgMCUpIiBmaWxsLW9wYWNpdHk9IjEiPgo8dXNlIHhsaW5rOmhyZWY9IiNnbHlwaC0yLTIiIHg9IjgyLjY2MDg1NyIgeT0iMjAuNTY2NjkiLz4KPC9nPgo8ZyBmaWxsPSJyZ2IoMCUsIDAlLCAwJSkiIGZpbGwtb3BhY2l0eT0iMSI+Cjx1c2UgeGxpbms6aHJlZj0iI2dseXBoLTItMyIgeD0iMTczLjEwNTAwOCIgeT0iMjAuNTY2NjkiLz4KPC9nPgo8ZyBmaWxsPSJyZ2IoMCUsIDAlLCAwJSkiIGZpbGwtb3BhY2l0eT0iMSI+Cjx1c2UgeGxpbms6aHJlZj0iI2dseXBoLTItNCIgeD0iMjU3LjIwMzY3MSIgeT0iMTkuODQ5NzgxIi8+CjwvZz4KPGcgZmlsbD0icmdiKDAlLCAwJSwgMCUpIiBmaWxsLW9wYWNpdHk9IjEiPgo8dXNlIHhsaW5rOmhyZWY9IiNnbHlwaC0zLTAiIHg9IjI2NC45MzAwNDEiIHk9IjE5Ljg0OTc4MSIvPgo8L2c+CjxwYXRoIGZpbGw9Im5vbmUiIHN0cm9rZS13aWR0aD0iMS4zOTQ3OCIgc3Ryb2tlLWxpbmVjYXA9ImJ1dHQiIHN0cm9rZS1saW5lam9pbj0ibWl0ZXIiIHN0cm9rZT0icmdiKDAlLCAwJSwgMCUpIiBzdHJva2Utb3BhY2l0eT0iMSIgc3Ryb2tlLW1pdGVybGltaXQ9IjEwIiBkPSJNIDgyLjIwNDkyIC0yOC41NDgwMDUgTCA4Mi4yMDQ5MiAtNTYuNDkyNTcxICIgdHJhbnNmb3JtPSJtYXRyaXgoMC45OTcwOTEsIDAsIDAsIC0wLjk5NzA5MSwgMy4xNzg3MjcsIDMuMjM0MjUzKSIvPgo8cGF0aCBmaWxsPSJub25lIiBzdHJva2Utd2lkdGg9IjAuNTk3NzYiIHN0cm9rZS1saW5lY2FwPSJidXR0IiBzdHJva2UtbGluZWpvaW49Im1pdGVyIiBzdHJva2U9InJnYigxMDAlLCAxMDAlLCAxMDAlKSIgc3Ryb2tlLW9wYWNpdHk9IjEiIHN0cm9rZS1taXRlcmxpbWl0PSIxMCIgZD0iTSA4Mi4yMDQ5MiAtMjguNTQ4MDA1IEwgODIuMjA0OTIgLTU2LjQ5MjU3MSAiIHRyYW5zZm9ybT0ibWF0cml4KDAuOTk3MDkxLCAwLCAwLCAtMC45OTcwOTEsIDMuMTc4NzI3LCAzLjIzNDI1MykiLz4KPGcgZmlsbD0icmdiKDAlLCAwJSwgMCUpIiBmaWxsLW9wYWNpdHk9IjEiPgo8dXNlIHhsaW5rOmhyZWY9IiNnbHlwaC0zLTEiIHg9IjEyNi41MDI5NTgiIHk9IjQ4LjExMzMyOSIvPgo8L2c+CjxwYXRoIGZpbGw9Im5vbmUiIHN0cm9rZS13aWR0aD0iMC4zOTg1IiBzdHJva2UtbGluZWNhcD0iYnV0dCIgc3Ryb2tlLWxpbmVqb2luPSJtaXRlciIgc3Ryb2tlPSJyZ2IoMCUsIDAlLCAwJSkiIHN0cm9rZS1vcGFjaXR5PSIxIiBzdHJva2UtZGFzaGFycmF5PSIwLjM5ODUgMS45OTI1NSIgc3Ryb2tlLW1pdGVybGltaXQ9IjEwIiBkPSJNIDE3Mi45MTQwODUgLTI4LjM0ODIwNSBMIDE3Mi45MTQwODUgLTU2LjY5MjM3MSAiIHRyYW5zZm9ybT0ibWF0cml4KDAuOTk3MDkxLCAwLCAwLCAtMC45OTcwOTEsIDMuMTc4NzI3LCAzLjIzNDI1MykiLz4KPGcgZmlsbD0icmdiKDAlLCAwJSwgMCUpIiBmaWxsLW9wYWNpdHk9IjEiPgo8dXNlIHhsaW5rOmhyZWY9IiNnbHlwaC0yLTIiIHg9IjE3My4xMDUwMDgiIHk9IjQ4LjgzMTIzNSIvPgo8L2c+CjxnIGZpbGw9InJnYigwJSwgMCUsIDAlKSIgZmlsbC1vcGFjaXR5PSIxIj4KPHVzZSB4bGluazpocmVmPSIjZ2x5cGgtMi00IiB4PSIyMTYuOTQ4MTA2IiB5PSI0OC4xMTMzMjkiLz4KPC9nPgo8cGF0aCBmaWxsLXJ1bGU9Im5vbnplcm8iIGZpbGw9InJnYigxMDAlLCAxMDAlLCAxMDAlKSIgZmlsbC1vcGFjaXR5PSIxIiBkPSJNIDc0LjMyODEyNSA3NC4zMzIwMzEgTCA5NS45NjA5MzggNzQuMzMyMDMxIEwgOTUuOTYwOTM4IDYzLjczODI4MSBMIDc0LjMyODEyNSA2My43MzgyODEgWiBNIDc0LjMyODEyNSA3NC4zMzIwMzEgIi8+CjxnIGZpbGw9InJnYigwJSwgMCUsIDAlKSIgZmlsbC1vcGFjaXR5PSIxIj4KPHVzZSB4bGluazpocmVmPSIjZ2x5cGgtMi00IiB4PSI3Ni4zMTQzNzEiIHk9IjcxLjUxNzA1NSIvPgo8L2c+CjxnIGZpbGw9InJnYigwJSwgMCUsIDAlKSIgZmlsbC1vcGFjaXR5PSIxIj4KPHVzZSB4bGluazpocmVmPSIjZ2x5cGgtMy0wIiB4PSI4NC4wNDA3NDIiIHk9IjcxLjUxNzA1NSIvPgo8L2c+CjxwYXRoIGZpbGwtcnVsZT0ibm9uemVybyIgZmlsbD0icmdiKDEwMCUsIDEwMCUsIDEwMCUpIiBmaWxsLW9wYWNpdHk9IjEiIGQ9Ik0gNzQuMzI4MTI1IDc0LjMzMjAzMSBMIDk1Ljk2MDkzOCA3NC4zMzIwMzEgTCA5NS45NjA5MzggNjMuNzM4MjgxIEwgNzQuMzI4MTI1IDYzLjczODI4MSBaIE0gNzQuMzI4MTI1IDc0LjMzMjAzMSAiLz4KPGcgZmlsbD0icmdiKDAlLCAwJSwgMCUpIiBmaWxsLW9wYWNpdHk9IjEiPgo8dXNlIHhsaW5rOmhyZWY9IiNnbHlwaC0yLTQiIHg9Ijc2LjMxNDM3MSIgeT0iNzEuNTE3MDU1Ii8+CjwvZz4KPGcgZmlsbD0icmdiKDAlLCAwJSwgMCUpIiBmaWxsLW9wYWNpdHk9IjEiPgo8dXNlIHhsaW5rOmhyZWY9IiNnbHlwaC0zLTAiIHg9Ijg0LjA0MDc0MiIgeT0iNzEuNTE3MDU1Ii8+CjwvZz4KPHBhdGggZmlsbC1ydWxlPSJub256ZXJvIiBmaWxsPSJyZ2IoMTAwJSwgMTAwJSwgMTAwJSkiIGZpbGwtb3BhY2l0eT0iMSIgZD0iTSAxNjkuOTI5Njg4IDExMi4zMTY0MDYgTCAxODEuMjUzOTA2IDExMi4zMTY0MDYgTCAxODEuMjUzOTA2IDg4LjQxMDE1NiBMIDE2OS45Mjk2ODggODguNDEwMTU2IFogTSAxNjkuOTI5Njg4IDExMi4zMTY0MDYgIi8+CjxnIGZpbGw9InJnYigwJSwgMCUsIDAlKSIgZmlsbC1vcGFjaXR5PSIxIj4KPHVzZSB4bGluazpocmVmPSIjZ2x5cGgtMi01IiB4PSIxNzMuMTA1MDA4IiB5PSI5Ni43OTYzMDkiLz4KPC9nPgo8cGF0aCBmaWxsPSJub25lIiBzdHJva2Utd2lkdGg9IjAuMzk4IiBzdHJva2UtbGluZWNhcD0iYnV0dCIgc3Ryb2tlLWxpbmVqb2luPSJtaXRlciIgc3Ryb2tlPSJyZ2IoMCUsIDAlLCAwJSkiIHN0cm9rZS1vcGFjaXR5PSIxIiBzdHJva2UtbWl0ZXJsaW1pdD0iMTAiIGQ9Ik0gMC4wMDA0NjE5ODkgMC4wMDE3MDQxMiBMIDQuOTc5Nzg5IDAuMDAxNzA0MTIgIiB0cmFuc2Zvcm09Im1hdHJpeCgwLjk5NzA5MSwgMCwgMCwgLTAuOTk3MDkxLCAxNzMuMTA1MDA4LCAxMDEuMDMyOTQ5KSIvPgo8ZyBmaWxsPSJyZ2IoMCUsIDAlLCAwJSkiIGZpbGwtb3BhY2l0eT0iMSI+Cjx1c2UgeGxpbms6aHJlZj0iI2dseXBoLTItNiIgeD0iMTczLjEwNTAwOCIgeT0iMTEwLjMyOTgyOCIvPgo8L2c+CjxwYXRoIGZpbGwtcnVsZT0ibm9uemVybyIgZmlsbD0icmdiKDEwMCUsIDEwMCUsIDEwMCUpIiBmaWxsLW9wYWNpdHk9IjEiIGQ9Ik0gMTY5LjkyOTY4OCAxMTIuMzE2NDA2IEwgMTgxLjI1MzkwNiAxMTIuMzE2NDA2IEwgMTgxLjI1MzkwNiA4OC40MTAxNTYgTCAxNjkuOTI5Njg4IDg4LjQxMDE1NiBaIE0gMTY5LjkyOTY4OCAxMTIuMzE2NDA2ICIvPgo8ZyBmaWxsPSJyZ2IoMCUsIDAlLCAwJSkiIGZpbGwtb3BhY2l0eT0iMSI+Cjx1c2UgeGxpbms6aHJlZj0iI2dseXBoLTItNSIgeD0iMTczLjEwNTAwOCIgeT0iOTYuNzk2MzA5Ii8+CjwvZz4KPHBhdGggZmlsbD0ibm9uZSIgc3Ryb2tlLXdpZHRoPSIwLjM5OCIgc3Ryb2tlLWxpbmVjYXA9ImJ1dHQiIHN0cm9rZS1saW5lam9pbj0ibWl0ZXIiIHN0cm9rZT0icmdiKDAlLCAwJSwgMCUpIiBzdHJva2Utb3BhY2l0eT0iMSIgc3Ryb2tlLW1pdGVybGltaXQ9IjEwIiBkPSJNIDAuMDAwNDYxOTg5IDAuMDAxNzA0MTIgTCA0Ljk3OTc4OSAwLjAwMTcwNDEyICIgdHJhbnNmb3JtPSJtYXRyaXgoMC45OTcwOTEsIDAsIDAsIC0wLjk5NzA5MSwgMTczLjEwNTAwOCwgMTAxLjAzMjk0OSkiLz4KPGcgZmlsbD0icmdiKDAlLCAwJSwgMCUpIiBmaWxsLW9wYWNpdHk9IjEiPgo8dXNlIHhsaW5rOmhyZWY9IiNnbHlwaC0yLTYiIHg9IjE3My4xMDUwMDgiIHk9IjExMC4zMjk4MjgiLz4KPC9nPgo8cGF0aCBmaWxsPSJub25lIiBzdHJva2Utd2lkdGg9IjAuMzk4NSIgc3Ryb2tlLWxpbmVjYXA9ImJ1dHQiIHN0cm9rZS1saW5lam9pbj0ibWl0ZXIiIHN0cm9rZT0icmdiKDAlLCAwJSwgMCUpIiBzdHJva2Utb3BhY2l0eT0iMSIgc3Ryb2tlLW1pdGVybGltaXQ9IjEwIiBkPSJNIDk2LjkyNzQzMiAtNzEuMDg5NzE4IEwgMTYxLjEwMjM4MyAtOTMuMzIyMzU3ICIgdHJhbnNmb3JtPSJtYXRyaXgoMC45OTcwOTEsIDAsIDAsIC0wLjk5NzA5MSwgMy4xNzg3MjcsIDMuMjM0MjUzKSIvPgo8cGF0aCBmaWxsLXJ1bGU9Im5vbnplcm8iIGZpbGw9InJnYigwJSwgMCUsIDAlKSIgZmlsbC1vcGFjaXR5PSIxIiBkPSJNIDE2Ni4wNjY0MDYgOTcuMDY2NDA2IEMgMTY1LjE5MTQwNiA5Ni41NTQ2ODggMTYzLjYzMjgxMiA5NS41OTM3NSAxNjIuNzk2ODc1IDk0LjM1OTM3NSBDIDE2My4zNzg5MDYgOTUuNzE0ODQ0IDE2My4xMTcxODggOTYuNDY0ODQ0IDE2MS44MjQyMTkgOTcuMTcxODc1IEMgMTYzLjI0MjE4OCA5Ni43MTg3NSAxNjUuMDYyNSA5Ni45Mjk2ODggMTY2LjA2NjQwNiA5Ny4wNjY0MDYgWiBNIDE2Ni4wNjY0MDYgOTcuMDY2NDA2ICIvPgo8cGF0aCBmaWxsLXJ1bGU9Im5vbnplcm8iIGZpbGw9InJnYigxMDAlLCAxMDAlLCAxMDAlKSIgZmlsbC1vcGFjaXR5PSIxIiBkPSJNIDI1NS4yMTg3NSA3NC4zMzIwMzEgTCAyNzYuODU1NDY5IDc0LjMzMjAzMSBMIDI3Ni44NTU0NjkgNjMuNzM4MjgxIEwgMjU1LjIxODc1IDYzLjczODI4MSBaIE0gMjU1LjIxODc1IDc0LjMzMjAzMSAiLz4KPGcgZmlsbD0icmdiKDAlLCAwJSwgMCUpIiBmaWxsLW9wYWNpdHk9IjEiPgo8dXNlIHhsaW5rOmhyZWY9IiNnbHlwaC0yLTQiIHg9IjI1Ny4yMDM2NzEiIHk9IjcxLjUxNzA1NSIvPgo8L2c+CjxnIGZpbGw9InJnYigwJSwgMCUsIDAlKSIgZmlsbC1vcGFjaXR5PSIxIj4KPHVzZSB4bGluazpocmVmPSIjZ2x5cGgtMy0wIiB4PSIyNjQuOTMwMDQxIiB5PSI3MS41MTcwNTUiLz4KPC9nPgo8cGF0aCBmaWxsLXJ1bGU9Im5vbnplcm8iIGZpbGw9InJnYigxMDAlLCAxMDAlLCAxMDAlKSIgZmlsbC1vcGFjaXR5PSIxIiBkPSJNIDI1NS4yMTg3NSA3NC4zMzIwMzEgTCAyNzYuODU1NDY5IDc0LjMzMjAzMSBMIDI3Ni44NTU0NjkgNjMuNzM4MjgxIEwgMjU1LjIxODc1IDYzLjczODI4MSBaIE0gMjU1LjIxODc1IDc0LjMzMjAzMSAiLz4KPGcgZmlsbD0icmdiKDAlLCAwJSwgMCUpIiBmaWxsLW9wYWNpdHk9IjEiPgo8dXNlIHhsaW5rOmhyZWY9IiNnbHlwaC0yLTQiIHg9IjI1Ny4yMDM2NzEiIHk9IjcxLjUxNzA1NSIvPgo8L2c+CjxnIGZpbGw9InJnYigwJSwgMCUsIDAlKSIgZmlsbC1vcGFjaXR5PSIxIj4KPHVzZSB4bGluazpocmVmPSIjZ2x5cGgtMy0wIiB4PSIyNjQuOTMwMDQxIiB5PSI3MS41MTcwNTUiLz4KPC9nPgo8cGF0aCBmaWxsPSJub25lIiBzdHJva2Utd2lkdGg9IjAuMzk4NSIgc3Ryb2tlLWxpbmVjYXA9ImJ1dHQiIHN0cm9rZS1saW5lam9pbj0ibWl0ZXIiIHN0cm9rZT0icmdiKDAlLCAwJSwgMCUpIiBzdHJva2Utb3BhY2l0eT0iMSIgc3Ryb2tlLW1pdGVybGltaXQ9IjEwIiBkPSJNIDE4Mi40NjkyMjIgLTk0LjEwNTg4NiBMIDI0Ni42NDAyNTYgLTcxLjg2OTMzICIgdHJhbnNmb3JtPSJtYXRyaXgoMC45OTcwOTEsIDAsIDAsIC0wLjk5NzA5MSwgMy4xNzg3MjcsIDMuMjM0MjUzKSIvPgo8cGF0aCBmaWxsLXJ1bGU9Im5vbnplcm8iIGZpbGw9InJnYigwJSwgMCUsIDAlKSIgZmlsbC1vcGFjaXR5PSIxIiBkPSJNIDI1MS4zNTU0NjkgNzQuMTEzMjgxIEMgMjUwLjM1MTU2MiA3NC4yNTM5MDYgMjQ4LjUzMTI1IDc0LjQ2MDkzOCAyNDcuMTEzMjgxIDc0LjAwNzgxMiBDIDI0OC40MTAxNTYgNzQuNzE0ODQ0IDI0OC42NzE4NzUgNzUuNDY0ODQ0IDI0OC4wODk4NDQgNzYuODI0MjE5IEMgMjQ4LjkyMTg3NSA3NS41ODk4NDQgMjUwLjQ4NDM3NSA3NC42Mjg5MDYgMjUxLjM1NTQ2OSA3NC4xMTMyODEgWiBNIDI1MS4zNTU0NjkgNzQuMTEzMjgxICIvPgo8L3N2Zz4K" class="max-w-full" alt="Figure" /></div>
            \end{center}

        
        
            

**4.a)** \textit{Montrer $f''(x)=\dfrac{2-\ln x}{x^2}$.}

            On dérive $f'(x)=1-\dfrac1x+\dfrac{\ln x}{x}$, terme à terme :
            \[
                \Big(-\frac1x\Big)'=\frac1{x^2},\qquad
                \Big(\frac{\ln x}{x}\Big)'=\frac{\frac1x\cdot x-\ln x\cdot1}{x^2}=\frac{1-\ln x}{x^2}.
            \]
            Donc
            \[
                f''(x)=\frac1{x^2}+\frac{1-\ln x}{x^2}=\boxed{\dfrac{2-\ln x}{x^2}}.
            \]

**4.b)** \textit{Point d'inflexion de $(C_f)$.}

            \begin{rappel}
                Un \textbf{point d'inflexion} est un point où $f''$ s'annule \emph{en changeant de signe}.
            \end{rappel}
            Comme $x^2>0$, $f''(x)$ a le signe de $2-\ln x$ :
            \[
                f''(x)=0\iff\ln x=2\iff x=e^2,
            \]
            et $f''>0$ pour $x<e^2$, $f''<0$ pour $x>e^2$ : il y a bien changement de signe en $e^2$.
            L'ordonnée :
            \[
                f(e^2)=e^2+\tfrac12-\ln(e^2)+\tfrac12\bigl(\ln(e^2)\bigr)^2=e^2+\tfrac12-2+\tfrac12\cdot2^2=e^2+\tfrac12.
            \]
            <div class="my-2 font-semibold" style="color:#1F4E79">⇒ $(C_f)$ admet un point d'inflexion $\boxed{I\Big(e^2\,;\,e^2+\tfrac12\Big)}$.</div>

        
        
            

**5.a)** \textit{Montrer $f(x)-x=\frac12(\ln x-1)^2$ et position de $(C_f)$ et $(\Delta)$.}

            \[
                f(x)-x=\frac12-\ln x+\frac12(\ln x)^2.
            \]
            On reconnaît une identité remarquable : $\frac12(\ln x-1)^2=\frac12\bigl((\ln x)^2-2\ln x+1\bigr)
            =\frac12(\ln x)^2-\ln x+\frac12$. C'est bien le même résultat :
            \[
                \boxed{f(x)-x=\tfrac12(\ln x-1)^2\ \ge\ 0.}
            \]
            Comme un carré est positif, $f(x)\ge x$ pour tout $x>0$ : \textbf{$(C_f)$ est au-dessus de $(\Delta)$}.
            L'égalité $f(x)-x=0$ a lieu pour $\ln x=1$, soit $x=e$ : les deux courbes se touchent au point $(e\,;\,e)$.

**5.b)** \textit{Construire $(\Delta)$ et $(C_f)$.}

            \begin{center}
                <div class="flex justify-center my-5"><img src="data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz4KPHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHhtbG5zOnhsaW5rPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5L3hsaW5rIiB3aWR0aD0iMzU4LjM4OXB0IiBoZWlnaHQ9IjI1My42MjVwdCIgdmlld0JveD0iMCAwIDM1OC4zODkgMjUzLjYyNSI+CjxkZWZzPgo8Zz4KPGcgaWQ9ImdseXBoLTAtMCI+CjxwYXRoIGQ9Ik0gMi45MjE4NzUgLTYuMzc1IEMgMi45MjE4NzUgLTYuNjA5Mzc1IDIuOTIxODc1IC02LjYyNSAyLjcwMzEyNSAtNi42MjUgQyAyLjA3ODEyNSAtNS45ODQzNzUgMS4yMDMxMjUgLTUuOTg0Mzc1IDAuODkwNjI1IC01Ljk4NDM3NSBMIDAuODkwNjI1IC01LjY4NzUgQyAxLjA3ODEyNSAtNS42ODc1IDEuNjcxODc1IC01LjY4NzUgMi4xODc1IC01LjkzNzUgTCAyLjE4NzUgLTAuNzgxMjUgQyAyLjE4NzUgLTAuNDIxODc1IDIuMTU2MjUgLTAuMzEyNSAxLjI2NTYyNSAtMC4zMTI1IEwgMC45NTMxMjUgLTAuMzEyNSBMIDAuOTUzMTI1IDAgQyAxLjI5Njg3NSAtMC4wMzEyNSAyLjE1NjI1IC0wLjAzMTI1IDIuNTYyNSAtMC4wMzEyNSBDIDIuOTUzMTI1IC0wLjAzMTI1IDMuODI4MTI1IC0wLjAzMTI1IDQuMTcxODc1IDAgTCA0LjE3MTg3NSAtMC4zMTI1IEwgMy44NTkzNzUgLTAuMzEyNSBDIDIuOTUzMTI1IC0wLjMxMjUgMi45MjE4NzUgLTAuNDIxODc1IDIuOTIxODc1IC0wLjc4MTI1IFogTSAyLjkyMTg3NSAtNi4zNzUgIi8+CjwvZz4KPGcgaWQ9ImdseXBoLTAtMSI+CjxwYXRoIGQ9Ik0gMS4yNjU2MjUgLTAuNzY1NjI1IEwgMi4zMTI1IC0xLjc5Njg3NSBDIDMuODc1IC0zLjE3MTg3NSA0LjQ2ODc1IC0zLjcwMzEyNSA0LjQ2ODc1IC00LjcwMzEyNSBDIDQuNDY4NzUgLTUuODI4MTI1IDMuNTc4MTI1IC02LjYyNSAyLjM1OTM3NSAtNi42MjUgQyAxLjIzNDM3NSAtNi42MjUgMC41IC01LjcxODc1IDAuNSAtNC44MjgxMjUgQyAwLjUgLTQuMjY1NjI1IDEgLTQuMjY1NjI1IDEuMDMxMjUgLTQuMjY1NjI1IEMgMS4xODc1IC00LjI2NTYyNSAxLjU0Njg3NSAtNC4zOTA2MjUgMS41NDY4NzUgLTQuNzk2ODc1IEMgMS41NDY4NzUgLTUuMDYyNSAxLjM1OTM3NSAtNS4zMTI1IDEuMDE1NjI1IC01LjMxMjUgQyAwLjkzNzUgLTUuMzEyNSAwLjkyMTg3NSAtNS4zMTI1IDAuODkwNjI1IC01LjMxMjUgQyAxLjEwOTM3NSAtNS45NTMxMjUgMS42NTYyNSAtNi4zMTI1IDIuMjM0Mzc1IC02LjMxMjUgQyAzLjE0MDYyNSAtNi4zMTI1IDMuNTYyNSAtNS41MTU2MjUgMy41NjI1IC00LjcwMzEyNSBDIDMuNTYyNSAtMy45MDYyNSAzLjA2MjUgLTMuMTA5Mzc1IDIuNTE1NjI1IC0yLjUgTCAwLjYwOTM3NSAtMC4zNzUgQyAwLjUgLTAuMjY1NjI1IDAuNSAtMC4yMzQzNzUgMC41IDAgTCA0LjE4NzUgMCBMIDQuNDY4NzUgLTEuNzM0Mzc1IEwgNC4yMTg3NSAtMS43MzQzNzUgQyA0LjE3MTg3NSAtMS40Mzc1IDQuMDkzNzUgLTEgNCAtMC44NDM3NSBDIDMuOTM3NSAtMC43NjU2MjUgMy4yODEyNSAtMC43NjU2MjUgMy4wNjI1IC0wLjc2NTYyNSBaIE0gMS4yNjU2MjUgLTAuNzY1NjI1ICIvPgo8L2c+CjxnIGlkPSJnbHlwaC0wLTIiPgo8cGF0aCBkPSJNIDIuODkwNjI1IC0zLjUgQyAzLjcwMzEyNSAtMy43NjU2MjUgNC4yODEyNSAtNC40Njg3NSA0LjI4MTI1IC01LjI1IEMgNC4yODEyNSAtNi4wNzgxMjUgMy40MDYyNSAtNi42MjUgMi40NTMxMjUgLTYuNjI1IEMgMS40Mzc1IC02LjYyNSAwLjY4NzUgLTYuMDMxMjUgMC42ODc1IC01LjI4MTI1IEMgMC42ODc1IC00Ljk1MzEyNSAwLjkwNjI1IC00Ljc1IDEuMTg3NSAtNC43NSBDIDEuNSAtNC43NSAxLjcwMzEyNSAtNC45Njg3NSAxLjcwMzEyNSAtNS4yNjU2MjUgQyAxLjcwMzEyNSAtNS43NjU2MjUgMS4yMzQzNzUgLTUuNzY1NjI1IDEuMDc4MTI1IC01Ljc2NTYyNSBDIDEuMzkwNjI1IC02LjI1IDIuMDQ2ODc1IC02LjM3NSAyLjQwNjI1IC02LjM3NSBDIDIuODEyNSAtNi4zNzUgMy4zNTkzNzUgLTYuMTU2MjUgMy4zNTkzNzUgLTUuMjY1NjI1IEMgMy4zNTkzNzUgLTUuMTQwNjI1IDMuMzQzNzUgLTQuNTYyNSAzLjA3ODEyNSAtNC4xMjUgQyAyLjc4MTI1IC0zLjY1NjI1IDIuNDUzMTI1IC0zLjYyNSAyLjIwMzEyNSAtMy42MDkzNzUgQyAyLjEyNSAtMy42MDkzNzUgMS44NzUgLTMuNTc4MTI1IDEuODEyNSAtMy41NzgxMjUgQyAxLjczNDM3NSAtMy41NzgxMjUgMS42NTYyNSAtMy41NjI1IDEuNjU2MjUgLTMuNDY4NzUgQyAxLjY1NjI1IC0zLjM1OTM3NSAxLjczNDM3NSAtMy4zNTkzNzUgMS45MDYyNSAtMy4zNTkzNzUgTCAyLjM0Mzc1IC0zLjM1OTM3NSBDIDMuMTU2MjUgLTMuMzU5Mzc1IDMuNTE1NjI1IC0yLjY3MTg3NSAzLjUxNTYyNSAtMS43MDMxMjUgQyAzLjUxNTYyNSAtMC4zNDM3NSAyLjg0Mzc1IC0wLjA2MjUgMi40MDYyNSAtMC4wNjI1IEMgMS45Njg3NSAtMC4wNjI1IDEuMjE4NzUgLTAuMjM0Mzc1IDAuODc1IC0wLjgxMjUgQyAxLjIxODc1IC0wLjc2NTYyNSAxLjUzMTI1IC0wLjk4NDM3NSAxLjUzMTI1IC0xLjM1OTM3NSBDIDEuNTMxMjUgLTEuNzE4NzUgMS4yNjU2MjUgLTEuOTIxODc1IDAuOTY4NzUgLTEuOTIxODc1IEMgMC43MzQzNzUgLTEuOTIxODc1IDAuNDIxODc1IC0xLjc4MTI1IDAuNDIxODc1IC0xLjM0Mzc1IEMgMC40MjE4NzUgLTAuNDM3NSAxLjM0Mzc1IDAuMjE4NzUgMi40MjE4NzUgMC4yMTg3NSBDIDMuNjQwNjI1IDAuMjE4NzUgNC41NDY4NzUgLTAuNjg3NSA0LjU0Njg3NSAtMS43MDMxMjUgQyA0LjU0Njg3NSAtMi41MTU2MjUgMy45MjE4NzUgLTMuMjk2ODc1IDIuODkwNjI1IC0zLjUgWiBNIDIuODkwNjI1IC0zLjUgIi8+CjwvZz4KPGcgaWQ9ImdseXBoLTAtMyI+CjxwYXRoIGQ9Ik0gMi45MjE4NzUgLTEuNjQwNjI1IEwgMi45MjE4NzUgLTAuNzgxMjUgQyAyLjkyMTg3NSAtMC40MjE4NzUgMi45MDYyNSAtMC4zMTI1IDIuMTcxODc1IC0wLjMxMjUgTCAxLjk1MzEyNSAtMC4zMTI1IEwgMS45NTMxMjUgMCBDIDIuMzc1IC0wLjAzMTI1IDIuODkwNjI1IC0wLjAzMTI1IDMuMjk2ODc1IC0wLjAzMTI1IEMgMy43MTg3NSAtMC4wMzEyNSA0LjI1IC0wLjAzMTI1IDQuNjU2MjUgMCBMIDQuNjU2MjUgLTAuMzEyNSBMIDQuNDUzMTI1IC0wLjMxMjUgQyAzLjcxODc1IC0wLjMxMjUgMy42ODc1IC0wLjQyMTg3NSAzLjY4NzUgLTAuNzgxMjUgTCAzLjY4NzUgLTEuNjQwNjI1IEwgNC42ODc1IC0xLjY0MDYyNSBMIDQuNjg3NSAtMS45NTMxMjUgTCAzLjY4NzUgLTEuOTUzMTI1IEwgMy42ODc1IC02LjQ4NDM3NSBDIDMuNjg3NSAtNi42NzE4NzUgMy42ODc1IC02LjczNDM3NSAzLjUzMTI1IC02LjczNDM3NSBDIDMuNDM3NSAtNi43MzQzNzUgMy40MDYyNSAtNi43MzQzNzUgMy4zMjgxMjUgLTYuNjI1IEwgMC4yODEyNSAtMS45NTMxMjUgTCAwLjI4MTI1IC0xLjY0MDYyNSBaIE0gMi45ODQzNzUgLTEuOTUzMTI1IEwgMC41NjI1IC0xLjk1MzEyNSBMIDIuOTg0Mzc1IC01LjY1NjI1IFogTSAyLjk4NDM3NSAtMS45NTMxMjUgIi8+CjwvZz4KPGcgaWQ9ImdseXBoLTAtNCI+CjxwYXRoIGQ9Ik0gNC40Njg3NSAtMiBDIDQuNDY4NzUgLTMuMTg3NSAzLjY1NjI1IC00LjE4NzUgMi41NzgxMjUgLTQuMTg3NSBDIDIuMDkzNzUgLTQuMTg3NSAxLjY3MTg3NSAtNC4wMTU2MjUgMS4zMTI1IC0zLjY3MTg3NSBMIDEuMzEyNSAtNS42MDkzNzUgQyAxLjUxNTYyNSAtNS41NDY4NzUgMS44NDM3NSAtNS40ODQzNzUgMi4xNTYyNSAtNS40ODQzNzUgQyAzLjM5MDYyNSAtNS40ODQzNzUgNC4wNzgxMjUgLTYuMzkwNjI1IDQuMDc4MTI1IC02LjUxNTYyNSBDIDQuMDc4MTI1IC02LjU3ODEyNSA0LjA0Njg3NSAtNi42MjUgMy45ODQzNzUgLTYuNjI1IEMgMy45Njg3NSAtNi42MjUgMy45NTMxMjUgLTYuNjI1IDMuOTA2MjUgLTYuNTkzNzUgQyAzLjcwMzEyNSAtNi41MTU2MjUgMy4yMTg3NSAtNi4zMTI1IDIuNTQ2ODc1IC02LjMxMjUgQyAyLjE1NjI1IC02LjMxMjUgMS42ODc1IC02LjM3NSAxLjIxODc1IC02LjU5Mzc1IEMgMS4xNDA2MjUgLTYuNjI1IDEuMTI1IC02LjYyNSAxLjEwOTM3NSAtNi42MjUgQyAxIC02LjYyNSAxIC02LjU0Njg3NSAxIC02LjM3NSBMIDEgLTMuNDM3NSBDIDEgLTMuMjUgMSAtMy4xNzE4NzUgMS4xNDA2MjUgLTMuMTcxODc1IEMgMS4yMTg3NSAtMy4xNzE4NzUgMS4yMzQzNzUgLTMuMjAzMTI1IDEuMjgxMjUgLTMuMjY1NjI1IEMgMS4zOTA2MjUgLTMuNDIxODc1IDEuNzUgLTMuOTY4NzUgMi41NjI1IC0zLjk2ODc1IEMgMy4wNzgxMjUgLTMuOTY4NzUgMy4zMjgxMjUgLTMuNSAzLjQwNjI1IC0zLjMyODEyNSBDIDMuNTYyNSAtMi45NTMxMjUgMy41NzgxMjUgLTIuNTYyNSAzLjU3ODEyNSAtMi4wNjI1IEMgMy41NzgxMjUgLTEuNzE4NzUgMy41NzgxMjUgLTEuMTI1IDMuMzQzNzUgLTAuNzAzMTI1IEMgMy4xMDkzNzUgLTAuMzEyNSAyLjczNDM3NSAtMC4wNjI1IDIuMjgxMjUgLTAuMDYyNSBDIDEuNTQ2ODc1IC0wLjA2MjUgMC45ODQzNzUgLTAuNTkzNzUgMC44MTI1IC0xLjE3MTg3NSBDIDAuODQzNzUgLTEuMTcxODc1IDAuODc1IC0xLjE1NjI1IDAuOTg0Mzc1IC0xLjE1NjI1IEMgMS4zMTI1IC0xLjE1NjI1IDEuNDg0Mzc1IC0xLjQwNjI1IDEuNDg0Mzc1IC0xLjY0MDYyNSBDIDEuNDg0Mzc1IC0xLjg3NSAxLjMxMjUgLTIuMTI1IDAuOTg0Mzc1IC0yLjEyNSBDIDAuODQzNzUgLTIuMTI1IDAuNSAtMi4wNjI1IDAuNSAtMS42MDkzNzUgQyAwLjUgLTAuNzUgMS4xODc1IDAuMjE4NzUgMi4yOTY4NzUgMC4yMTg3NSBDIDMuNDUzMTI1IDAuMjE4NzUgNC40Njg3NSAtMC43MzQzNzUgNC40Njg3NSAtMiBaIE0gNC40Njg3NSAtMiAiLz4KPC9nPgo8ZyBpZD0iZ2x5cGgtMC01Ij4KPHBhdGggZD0iTSAxLjMxMjUgLTMuMjY1NjI1IEwgMS4zMTI1IC0zLjUgQyAxLjMxMjUgLTYuMDE1NjI1IDIuNTQ2ODc1IC02LjM3NSAzLjA2MjUgLTYuMzc1IEMgMy4yOTY4NzUgLTYuMzc1IDMuNzE4NzUgLTYuMzEyNSAzLjkzNzUgLTUuOTg0Mzc1IEMgMy43ODEyNSAtNS45ODQzNzUgMy4zOTA2MjUgLTUuOTg0Mzc1IDMuMzkwNjI1IC01LjUzMTI1IEMgMy4zOTA2MjUgLTUuMjE4NzUgMy42MjUgLTUuMDc4MTI1IDMuODQzNzUgLTUuMDc4MTI1IEMgNCAtNS4wNzgxMjUgNC4yOTY4NzUgLTUuMTcxODc1IDQuMjk2ODc1IC01LjU0Njg3NSBDIDQuMjk2ODc1IC02LjE1NjI1IDMuODU5Mzc1IC02LjYyNSAzLjAzMTI1IC02LjYyNSBDIDEuNzY1NjI1IC02LjYyNSAwLjQyMTg3NSAtNS4zNDM3NSAwLjQyMTg3NSAtMy4xNDA2MjUgQyAwLjQyMTg3NSAtMC40ODQzNzUgMS41NzgxMjUgMC4yMTg3NSAyLjUgMC4yMTg3NSBDIDMuNjA5Mzc1IDAuMjE4NzUgNC41NDY4NzUgLTAuNzE4NzUgNC41NDY4NzUgLTIuMDMxMjUgQyA0LjU0Njg3NSAtMy4yOTY4NzUgMy42NTYyNSAtNC4yNSAyLjU2MjUgLTQuMjUgQyAxLjg3NSAtNC4yNSAxLjUxNTYyNSAtMy43NSAxLjMxMjUgLTMuMjY1NjI1IFogTSAyLjUgLTAuMDYyNSBDIDEuODc1IC0wLjA2MjUgMS41NzgxMjUgLTAuNjU2MjUgMS41MTU2MjUgLTAuODEyNSBDIDEuMzI4MTI1IC0xLjI4MTI1IDEuMzI4MTI1IC0yLjA2MjUgMS4zMjgxMjUgLTIuMjUgQyAxLjMyODEyNSAtMy4wMzEyNSAxLjY1NjI1IC00LjAxNTYyNSAyLjU0Njg3NSAtNC4wMTU2MjUgQyAyLjcwMzEyNSAtNC4wMTU2MjUgMy4xNzE4NzUgLTQuMDE1NjI1IDMuNDY4NzUgLTMuNDA2MjUgQyAzLjY1NjI1IC0zLjAzMTI1IDMuNjU2MjUgLTIuNTMxMjUgMy42NTYyNSAtMi4wNDY4NzUgQyAzLjY1NjI1IC0xLjU2MjUgMy42NTYyNSAtMS4wNjI1IDMuNDg0Mzc1IC0wLjcwMzEyNSBDIDMuMTg3NSAtMC4xMDkzNzUgMi43MzQzNzUgLTAuMDYyNSAyLjUgLTAuMDYyNSBaIE0gMi41IC0wLjA2MjUgIi8+CjwvZz4KPGcgaWQ9ImdseXBoLTAtNiI+CjxwYXRoIGQ9Ik0gNC43MzQzNzUgLTYuMDYyNSBDIDQuODI4MTI1IC02LjE4NzUgNC44MjgxMjUgLTYuMjAzMTI1IDQuODI4MTI1IC02LjQwNjI1IEwgMi40MDYyNSAtNi40MDYyNSBDIDEuMTg3NSAtNi40MDYyNSAxLjE3MTg3NSAtNi41NDY4NzUgMS4xNDA2MjUgLTYuNzM0Mzc1IEwgMC44OTA2MjUgLTYuNzM0Mzc1IEwgMC41NjI1IC00LjY3MTg3NSBMIDAuODEyNSAtNC42NzE4NzUgQyAwLjg0Mzc1IC00Ljg0Mzc1IDAuOTIxODc1IC01LjQ2ODc1IDEuMDYyNSAtNS41NzgxMjUgQyAxLjEyNSAtNS42NDA2MjUgMS45MDYyNSAtNS42NDA2MjUgMi4wMzEyNSAtNS42NDA2MjUgTCA0LjA5Mzc1IC01LjY0MDYyNSBDIDMuOTg0Mzc1IC01LjQ4NDM3NSAzLjE4NzUgLTQuNDA2MjUgMi45Njg3NSAtNC4wNzgxMjUgQyAyLjA3ODEyNSAtMi43MzQzNzUgMS43NSAtMS4zNDM3NSAxLjc1IC0wLjMyODEyNSBDIDEuNzUgLTAuMjM0Mzc1IDEuNzUgMC4yMTg3NSAyLjIwMzEyNSAwLjIxODc1IEMgMi42NzE4NzUgMC4yMTg3NSAyLjY3MTg3NSAtMC4yMzQzNzUgMi42NzE4NzUgLTAuMzI4MTI1IEwgMi42NzE4NzUgLTAuODQzNzUgQyAyLjY3MTg3NSAtMS4zOTA2MjUgMi43MDMxMjUgLTEuOTM3NSAyLjc4MTI1IC0yLjQ2ODc1IEMgMi44MTI1IC0yLjcwMzEyNSAyLjk1MzEyNSAtMy41NDY4NzUgMy4zOTA2MjUgLTQuMTcxODc1IFogTSA0LjczNDM3NSAtNi4wNjI1ICIvPgo8L2c+CjxnIGlkPSJnbHlwaC0xLTAiPgo8cGF0aCBkPSJNIDMuMDQ2ODc1IDIuMTI1IEMgMy4wNDY4NzUgMi4wOTM3NSAzLjAzMTI1IDIuMDYyNSAyLjk2ODc1IDIgQyAxLjgxMjUgMC45Mzc1IDEuNDY4NzUgLTAuNjcxODc1IDEuNDY4NzUgLTIuMjM0Mzc1IEMgMS40Njg3NSAtMy42MjUgMS43MzQzNzUgLTUuMzEyNSAzIC02LjUxNTYyNSBDIDMuMDMxMjUgLTYuNTQ2ODc1IDMuMDQ2ODc1IC02LjU3ODEyNSAzLjA0Njg3NSAtNi42MDkzNzUgQyAzLjA0Njg3NSAtNi42NzE4NzUgMy4wMTU2MjUgLTYuNzE4NzUgMi45NTMxMjUgLTYuNzE4NzUgQyAyLjg0Mzc1IC02LjcxODc1IDIuMDMxMjUgLTYuMDYyNSAxLjU0Njg3NSAtNS4wOTM3NSBDIDEuMTI1IC00LjIzNDM3NSAwLjkwNjI1IC0zLjMxMjUgMC45MDYyNSAtMi4yNSBDIDAuOTA2MjUgLTEuNjA5Mzc1IDAuOTg0Mzc1IC0wLjU3ODEyNSAxLjQ4NDM3NSAwLjQ2ODc1IEMgMiAxLjU3ODEyNSAyLjg0Mzc1IDIuMjM0Mzc1IDIuOTUzMTI1IDIuMjM0Mzc1IEMgMy4wMTU2MjUgMi4yMzQzNzUgMy4wNDY4NzUgMi4xODc1IDMuMDQ2ODc1IDIuMTI1IFogTSAzLjA0Njg3NSAyLjEyNSAiLz4KPC9nPgo8ZyBpZD0iZ2x5cGgtMS0xIj4KPHBhdGggZD0iTSAxLjc1IC0zLjM3NSBDIDEuNzUgLTMuNjQwNjI1IDEuNTQ2ODc1IC0zLjg1OTM3NSAxLjI2NTYyNSAtMy44NTkzNzUgQyAxIC0zLjg1OTM3NSAwLjc4MTI1IC0zLjY0MDYyNSAwLjc4MTI1IC0zLjM3NSBDIDAuNzgxMjUgLTMuMTA5Mzc1IDEgLTIuODkwNjI1IDEuMjY1NjI1IC0yLjg5MDYyNSBDIDEuNTQ2ODc1IC0yLjg5MDYyNSAxLjc1IC0zLjEwOTM3NSAxLjc1IC0zLjM3NSBaIE0gMS41NjI1IC0wLjA3ODEyNSBDIDEuNTYyNSAwLjE0MDYyNSAxLjU0Njg3NSAwLjg0Mzc1IDAuOTg0Mzc1IDEuNSBDIDAuOTA2MjUgMS41NzgxMjUgMC45MDYyNSAxLjU3ODEyNSAwLjkwNjI1IDEuNjI1IEMgMC45MDYyNSAxLjY3MTg3NSAwLjk2ODc1IDEuNzM0Mzc1IDEuMDMxMjUgMS43MzQzNzUgQyAxLjEwOTM3NSAxLjczNDM3NSAxLjc4MTI1IDEuMDMxMjUgMS43ODEyNSAtMC4wMzEyNSBDIDEuNzgxMjUgLTAuMjY1NjI1IDEuNzgxMjUgLTAuOTY4NzUgMS4yNjU2MjUgLTAuOTY4NzUgQyAwLjk4NDM3NSAtMC45Njg3NSAwLjc4MTI1IC0wLjc1IDAuNzgxMjUgLTAuNDg0Mzc1IEMgMC43ODEyNSAtMC4yMzQzNzUgMC45NTMxMjUgMCAxLjI2NTYyNSAwIEMgMS40NTMxMjUgMCAxLjUgLTAuMDMxMjUgMS41NjI1IC0wLjA3ODEyNSBaIE0gMS41NjI1IC0wLjA3ODEyNSAiLz4KPC9nPgo8ZyBpZD0iZ2x5cGgtMS0yIj4KPHBhdGggZD0iTSAyLjY3MTg3NSAtMi4yNSBDIDIuNjcxODc1IC0yLjk4NDM3NSAyLjU2MjUgLTMuOTY4NzUgMi4wOTM3NSAtNC45NTMxMjUgQyAxLjU2MjUgLTYuMDYyNSAwLjczNDM3NSAtNi43MTg3NSAwLjYyNSAtNi43MTg3NSBDIDAuNTMxMjUgLTYuNzE4NzUgMC41MTU2MjUgLTYuNjQwNjI1IDAuNTE1NjI1IC02LjYwOTM3NSBDIDAuNTE1NjI1IC02LjU3ODEyNSAwLjUzMTI1IC02LjU0Njg3NSAwLjU5Mzc1IC02LjQ4NDM3NSBDIDEuMTI1IC02LjAxNTYyNSAyLjEwOTM3NSAtNC43OTY4NzUgMi4xMDkzNzUgLTIuMjUgQyAyLjEwOTM3NSAtMC45Njg3NSAxLjg3NSAwLjgxMjUgMC41NzgxMjUgMi4wMTU2MjUgQyAwLjU2MjUgMi4wNDY4NzUgMC41MTU2MjUgMi4wOTM3NSAwLjUxNTYyNSAyLjEyNSBDIDAuNTE1NjI1IDIuMTU2MjUgMC41MzEyNSAyLjIzNDM3NSAwLjYyNSAyLjIzNDM3NSBDIDAuNzM0Mzc1IDIuMjM0Mzc1IDEuNTQ2ODc1IDEuNTc4MTI1IDIuMDE1NjI1IDAuNjA5Mzc1IEMgMi40NTMxMjUgLTAuMjUgMi42NzE4NzUgLTEuMTcxODc1IDIuNjcxODc1IC0yLjI1IFogTSAyLjY3MTg3NSAtMi4yNSAiLz4KPC9nPgo8ZyBpZD0iZ2x5cGgtMS0zIj4KPHBhdGggZD0iTSAyLjcxODc1IC01LjcxODc1IEMgMi43MTg3NSAtNS45Mzc1IDIuNzE4NzUgLTUuOTY4NzUgMi40ODQzNzUgLTUuOTY4NzUgQyAxLjkzNzUgLTUuMzkwNjI1IDEuMTA5Mzc1IC01LjM5MDYyNSAwLjgyODEyNSAtNS4zOTA2MjUgTCAwLjgyODEyNSAtNS4xMDkzNzUgQyAxIC01LjEwOTM3NSAxLjU0Njg3NSAtNS4xMDkzNzUgMi4wMzEyNSAtNS4zNDM3NSBMIDIuMDMxMjUgLTAuNzE4NzUgQyAyLjAzMTI1IC0wLjM5MDYyNSAyIC0wLjI4MTI1IDEuMTcxODc1IC0wLjI4MTI1IEwgMC44OTA2MjUgLTAuMjgxMjUgTCAwLjg5MDYyNSAwIEMgMS4yMDMxMjUgLTAuMDMxMjUgMiAtMC4wMzEyNSAyLjM3NSAtMC4wMzEyNSBDIDIuNzM0Mzc1IC0wLjAzMTI1IDMuNTQ2ODc1IC0wLjAzMTI1IDMuODc1IDAgTCAzLjg3NSAtMC4yODEyNSBMIDMuNTc4MTI1IC0wLjI4MTI1IEMgMi43NSAtMC4yODEyNSAyLjcxODc1IC0wLjM5MDYyNSAyLjcxODc1IC0wLjcxODc1IFogTSAyLjcxODc1IC01LjcxODc1ICIvPgo8L2c+CjxnIGlkPSJnbHlwaC0xLTQiPgo8cGF0aCBkPSJNIDQuMDkzNzUgLTYuMjAzMTI1IEMgNC4wMTU2MjUgLTYuMzU5Mzc1IDMuOTY4NzUgLTYuNDA2MjUgMy44MjgxMjUgLTYuNDA2MjUgQyAzLjcwMzEyNSAtNi40MDYyNSAzLjY0MDYyNSAtNi4zNTkzNzUgMy41NzgxMjUgLTYuMjM0Mzc1IEwgMC41IC0wLjIxODc1IEMgMC40NTMxMjUgLTAuMTQwNjI1IDAuNDM3NSAtMC4wOTM3NSAwLjQzNzUgLTAuMDc4MTI1IEMgMC40Mzc1IDAgMC41IDAgMC42NDA2MjUgMCBMIDcuMDE1NjI1IDAgQyA3LjE1NjI1IDAgNy4yMTg3NSAwIDcuMjE4NzUgLTAuMDc4MTI1IEMgNy4yMTg3NSAtMC4wOTM3NSA3LjIxODc1IC0wLjEwOTM3NSA3LjE3MTg3NSAtMC4yMDMxMjUgWiBNIDMuNTMxMjUgLTUuNTMxMjUgTCA2LjAxNTYyNSAtMC42ODc1IEwgMS4wNDY4NzUgLTAuNjg3NSBaIE0gMy41MzEyNSAtNS41MzEyNSAiLz4KPC9nPgo8ZyBpZD0iZ2x5cGgtMS01Ij4KPHBhdGggZD0iTSAxLjc1IC0zLjM3NSBDIDEuNzUgLTMuNjQwNjI1IDEuNTQ2ODc1IC0zLjg1OTM3NSAxLjI2NTYyNSAtMy44NTkzNzUgQyAxIC0zLjg1OTM3NSAwLjc4MTI1IC0zLjY0MDYyNSAwLjc4MTI1IC0zLjM3NSBDIDAuNzgxMjUgLTMuMTA5Mzc1IDEgLTIuODkwNjI1IDEuMjY1NjI1IC0yLjg5MDYyNSBDIDEuNTQ2ODc1IC0yLjg5MDYyNSAxLjc1IC0zLjEwOTM3NSAxLjc1IC0zLjM3NSBaIE0gMS43NSAtMC40ODQzNzUgQyAxLjc1IC0wLjc1IDEuNTQ2ODc1IC0wLjk2ODc1IDEuMjY1NjI1IC0wLjk2ODc1IEMgMSAtMC45Njg3NSAwLjc4MTI1IC0wLjc1IDAuNzgxMjUgLTAuNDg0Mzc1IEMgMC43ODEyNSAtMC4yMTg3NSAxIDAgMS4yNjU2MjUgMCBDIDEuNTQ2ODc1IDAgMS43NSAtMC4yMTg3NSAxLjc1IC0wLjQ4NDM3NSBaIE0gMS43NSAtMC40ODQzNzUgIi8+CjwvZz4KPGcgaWQ9ImdseXBoLTEtNiI+CjxwYXRoIGQ9Ik0gNi4zNDM3NSAtMi45Njg3NSBDIDYuNDY4NzUgLTIuOTY4NzUgNi42NDA2MjUgLTIuOTY4NzUgNi42NDA2MjUgLTMuMTU2MjUgQyA2LjY0MDYyNSAtMy4zNDM3NSA2LjQzNzUgLTMuMzQzNzUgNi4yOTY4NzUgLTMuMzQzNzUgTCAwLjg0Mzc1IC0zLjM0Mzc1IEMgMC43MDMxMjUgLTMuMzQzNzUgMC41MTU2MjUgLTMuMzQzNzUgMC41MTU2MjUgLTMuMTU2MjUgQyAwLjUxNTYyNSAtMi45Njg3NSAwLjY4NzUgLTIuOTY4NzUgMC44MTI1IC0yLjk2ODc1IFogTSA2LjI5Njg3NSAtMS4xNDA2MjUgQyA2LjQzNzUgLTEuMTQwNjI1IDYuNjQwNjI1IC0xLjE0MDYyNSA2LjY0MDYyNSAtMS4zMjgxMjUgQyA2LjY0MDYyNSAtMS41MTU2MjUgNi40Njg3NSAtMS41MTU2MjUgNi4zNDM3NSAtMS41MTU2MjUgTCAwLjgxMjUgLTEuNTE1NjI1IEMgMC42ODc1IC0xLjUxNTYyNSAwLjUxNTYyNSAtMS41MTU2MjUgMC41MTU2MjUgLTEuMzI4MTI1IEMgMC41MTU2MjUgLTEuMTQwNjI1IDAuNzAzMTI1IC0xLjE0MDYyNSAwLjg0Mzc1IC0xLjE0MDYyNSBaIE0gNi4yOTY4NzUgLTEuMTQwNjI1ICIvPgo8L2c+CjxnIGlkPSJnbHlwaC0yLTAiPgo8cGF0aCBkPSJNIDEuMjM0Mzc1IC0yLjA0Njg3NSBDIDEuNzY1NjI1IC0yLjA0Njg3NSAyLjM1OTM3NSAtMi4wNDY4NzUgMi44MjgxMjUgLTIuMTcxODc1IEMgMy42NzE4NzUgLTIuMzc1IDMuODI4MTI1IC0yLjg3NSAzLjgyODEyNSAtMy4xNzE4NzUgQyAzLjgyODEyNSAtMy42ODc1IDMuMzQzNzUgLTMuOTUzMTI1IDIuODEyNSAtMy45NTMxMjUgQyAxLjc4MTI1IC0zLjk1MzEyNSAwLjQyMTg3NSAtMy4wNzgxMjUgMC40MjE4NzUgLTEuNTQ2ODc1IEMgMC40MjE4NzUgLTAuNjg3NSAwLjkyMTg3NSAwLjA5Mzc1IDEuODkwNjI1IDAuMDkzNzUgQyAzLjIzNDM3NSAwLjA5Mzc1IDMuOTg0Mzc1IC0wLjgyODEyNSAzLjk4NDM3NSAtMC45NTMxMjUgQyAzLjk4NDM3NSAtMSAzLjkyMTg3NSAtMS4wNzgxMjUgMy44NTkzNzUgLTEuMDc4MTI1IEMgMy44MTI1IC0xLjA3ODEyNSAzLjgxMjUgLTEuMDYyNSAzLjcxODc1IC0wLjk2ODc1IEMgMy4xODc1IC0wLjI5Njg3NSAyLjM3NSAtMC4xMjUgMS45MDYyNSAtMC4xMjUgQyAxLjI2NTYyNSAtMC4xMjUgMS4wOTM3NSAtMC43MTg3NSAxLjA5Mzc1IC0xLjE3MTg3NSBDIDEuMDkzNzUgLTEuMTg3NSAxLjA5Mzc1IC0xLjUgMS4yMzQzNzUgLTIuMDQ2ODc1IFogTSAxLjI5Njg3NSAtMi4yODEyNSBDIDEuNjg3NSAtMy42ODc1IDIuNjcxODc1IC0zLjczNDM3NSAyLjgxMjUgLTMuNzM0Mzc1IEMgMy4xMjUgLTMuNzM0Mzc1IDMuNDg0Mzc1IC0zLjU5Mzc1IDMuNDg0Mzc1IC0zLjE3MTg3NSBDIDMuNDg0Mzc1IC0yLjI4MTI1IDIuMTQwNjI1IC0yLjI4MTI1IDEuMjk2ODc1IC0yLjI4MTI1IFogTSAxLjI5Njg3NSAtMi4yODEyNSAiLz4KPC9nPgo8ZyBpZD0iZ2x5cGgtMi0xIj4KPHBhdGggZD0iTSA2LjkzNzUgLTYuMDYyNSBDIDYuOTUzMTI1IC02LjE3MTg3NSA2Ljk1MzEyNSAtNi4yMDMxMjUgNi45NTMxMjUgLTYuMjE4NzUgQyA2Ljk1MzEyNSAtNi4yMTg3NSA2Ljk1MzEyNSAtNi4zMTI1IDYuODQzNzUgLTYuMzEyNSBDIDYuNzk2ODc1IC02LjMxMjUgNi43NjU2MjUgLTYuMjgxMjUgNi43MDMxMjUgLTYuMjE4NzUgTCA2LjE1NjI1IC01LjYwOTM3NSBDIDYuMTI1IC01LjU2MjUgNi4wOTM3NSAtNS41MzEyNSA2LjA3ODEyNSAtNS41MzEyNSBDIDYuMDYyNSAtNS41MzEyNSA2LjA2MjUgLTUuNTQ2ODc1IDYgLTUuNjA5Mzc1IEMgNS44NzUgLTUuNzgxMjUgNS40Njg3NSAtNi4zMTI1IDQuNTQ2ODc1IC02LjMxMjUgQyAyLjQ4NDM3NSAtNi4zMTI1IDAuNDUzMTI1IC00LjMyODEyNSAwLjQ1MzEyNSAtMi4yODEyNSBDIDAuNDUzMTI1IC0wLjgyODEyNSAxLjUxNTYyNSAwLjIwMzEyNSAyLjk2ODc1IDAuMjAzMTI1IEMgMy44OTA2MjUgMC4yMDMxMjUgNC42MjUgLTAuMjgxMjUgNC45ODQzNzUgLTAuNTkzNzUgQyA1Ljc5Njg3NSAtMS4zMjgxMjUgNS45Mzc1IC0yLjEwOTM3NSA1LjkzNzUgLTIuMTU2MjUgQyA1LjkzNzUgLTIuMTg3NSA1LjkyMTg3NSAtMi4yNSA1LjgxMjUgLTIuMjUgQyA1LjcxODc1IC0yLjI1IDUuNzAzMTI1IC0yLjE4NzUgNS42ODc1IC0yLjE1NjI1IEMgNS4yNSAtMC43MTg3NSAzLjk2ODc1IC0wLjA3ODEyNSAzLjA3ODEyNSAtMC4wNzgxMjUgQyAyLjIxODc1IC0wLjA3ODEyNSAxLjI5Njg3NSAtMC42MDkzNzUgMS4yOTY4NzUgLTEuOTUzMTI1IEMgMS4yOTY4NzUgLTIuMzU5Mzc1IDEuNDIxODc1IC0zLjc4MTI1IDIuMzI4MTI1IC00Ljg3NSBDIDIuODU5Mzc1IC01LjUzMTI1IDMuNzUgLTYuMDMxMjUgNC42MDkzNzUgLTYuMDMxMjUgQyA1LjU5Mzc1IC02LjAzMTI1IDYuMTI1IC01LjI2NTYyNSA2LjEyNSAtNC4yODEyNSBDIDYuMTI1IC0zLjk4NDM3NSA2LjA5Mzc1IC0zLjkyMTg3NSA2LjA5Mzc1IC0zLjg0Mzc1IEMgNi4wOTM3NSAtMy43NSA2LjIwMzEyNSAtMy43NSA2LjIzNDM3NSAtMy43NSBDIDYuMzQzNzUgLTMuNzUgNi4zNDM3NSAtMy43NjU2MjUgNi4zOTA2MjUgLTMuOTM3NSBaIE0gNi45Mzc1IC02LjA2MjUgIi8+CjwvZz4KPGcgaWQ9ImdseXBoLTItMiI+CjxwYXRoIGQ9Ik0gNC41IC0zLjQ1MzEyNSBDIDQuNSAtMy40ODQzNzUgNC41MTU2MjUgLTMuNTQ2ODc1IDQuNTE1NjI1IC0zLjU5Mzc1IEMgNC41MTU2MjUgLTMuNzE4NzUgNC40Mzc1IC0zLjg1OTM3NSA0LjI1IC0zLjg1OTM3NSBDIDQuMTI1IC0zLjg1OTM3NSAzLjk2ODc1IC0zLjc4MTI1IDMuODkwNjI1IC0zLjYwOTM3NSBDIDMuODkwNjI1IC0zLjU3ODEyNSAzLjc5Njg3NSAtMy4yMTg3NSAzLjc1IC0zLjAxNTYyNSBMIDMuMjk2ODc1IC0xLjIzNDM3NSBDIDMuMjE4NzUgLTAuOTY4NzUgMy4yMTg3NSAtMC45NTMxMjUgMy4yMDMxMjUgLTAuODc1IEMgMy4yMDMxMjUgLTAuODI4MTI1IDIuODEyNSAtMC4xMjUgMi4xNzE4NzUgLTAuMTI1IEMgMS42MjUgLTAuMTI1IDEuNjI1IC0wLjY4NzUgMS42MjUgLTAuODU5Mzc1IEMgMS42MjUgLTEuMjY1NjI1IDEuNzM0Mzc1IC0xLjcwMzEyNSAyLjEyNSAtMi43MDMxMjUgQyAyLjE4NzUgLTIuOTA2MjUgMi4yNSAtMy4wMzEyNSAyLjI1IC0zLjIwMzEyNSBDIDIuMjUgLTMuNjQwNjI1IDEuOTIxODc1IC0zLjk1MzEyNSAxLjQ4NDM3NSAtMy45NTMxMjUgQyAwLjYyNSAtMy45NTMxMjUgMC4yNjU2MjUgLTIuNjg3NSAwLjI2NTYyNSAtMi41NzgxMjUgQyAwLjI2NTYyNSAtMi41IDAuMzI4MTI1IC0yLjQ2ODc1IDAuMzkwNjI1IC0yLjQ2ODc1IEMgMC40ODQzNzUgLTIuNDY4NzUgMC41IC0yLjUzMTI1IDAuNTMxMjUgLTIuNjQwNjI1IEMgMC43MTg3NSAtMy4yOTY4NzUgMS4wNzgxMjUgLTMuNzM0Mzc1IDEuNDUzMTI1IC0zLjczNDM3NSBDIDEuNjcxODc1IC0zLjczNDM3NSAxLjY3MTg3NSAtMy41NjI1IDEuNjcxODc1IC0zLjQzNzUgQyAxLjY3MTg3NSAtMy4yODEyNSAxLjYyNSAtMy4xMjUgMS41NDY4NzUgLTIuOTA2MjUgQyAxLjEyNSAtMS43OTY4NzUgMS4wMTU2MjUgLTEuNDIxODc1IDEuMDE1NjI1IC0xIEMgMS4wMTU2MjUgMCAxLjgxMjUgMC4wOTM3NSAyLjE1NjI1IDAuMDkzNzUgQyAyLjU5Mzc1IDAuMDkzNzUgMi45MDYyNSAtMC4xNDA2MjUgMy4wNjI1IC0wLjI5Njg3NSBDIDIuOTUzMTI1IDAuMTU2MjUgMi44NDM3NSAwLjU2MjUgMi41IDEuMDE1NjI1IEMgMi4yMzQzNzUgMS4zNzUgMS44NzUgMS42MDkzNzUgMS40ODQzNzUgMS42MDkzNzUgQyAxLjIzNDM3NSAxLjYwOTM3NSAwLjkzNzUgMS41MTU2MjUgMC44MTI1IDEuMjY1NjI1IEMgMS4yODEyNSAxLjI2NTYyNSAxLjM0Mzc1IDAuODc1IDEuMzQzNzUgMC43ODEyNSBDIDEuMzQzNzUgMC41OTM3NSAxLjIwMzEyNSAwLjQ2ODc1IDEgMC40Njg3NSBDIDAuNzgxMjUgMC40Njg3NSAwLjUgMC42NDA2MjUgMC41IDEuMDQ2ODc1IEMgMC41IDEuNTE1NjI1IDAuOTA2MjUgMS44MjgxMjUgMS40ODQzNzUgMS44MjgxMjUgQyAyLjM5MDYyNSAxLjgyODEyNSAzLjM1OTM3NSAxLjA2MjUgMy42MjUgMC4wMTU2MjUgWiBNIDQuNSAtMy40NTMxMjUgIi8+CjwvZz4KPGcgaWQ9ImdseXBoLTItMyI+CjxwYXRoIGQ9Ik0gNC40MDYyNSAtMy42MDkzNzUgQyA0LjA3ODEyNSAtMy41NDY4NzUgMy45Njg3NSAtMy4yNjU2MjUgMy45Njg3NSAtMy4xNDA2MjUgQyAzLjk2ODc1IC0yLjk2ODc1IDQuMDkzNzUgLTIuODEyNSA0LjMyODEyNSAtMi44MTI1IEMgNC41NzgxMjUgLTIuODEyNSA0LjgxMjUgLTMuMDMxMjUgNC44MTI1IC0zLjM0Mzc1IEMgNC44MTI1IC0zLjc1IDQuMzc1IC0zLjk1MzEyNSAzLjk1MzEyNSAtMy45NTMxMjUgQyAzLjQwNjI1IC0zLjk1MzEyNSAzLjA5Mzc1IC0zLjQ4NDM3NSAyLjk4NDM3NSAtMy4yOTY4NzUgQyAyLjgxMjUgLTMuNzM0Mzc1IDIuNDIxODc1IC0zLjk1MzEyNSAyIC0zLjk1MzEyNSBDIDEuMDMxMjUgLTMuOTUzMTI1IDAuNTE1NjI1IC0yLjgxMjUgMC41MTU2MjUgLTIuNTc4MTI1IEMgMC41MTU2MjUgLTIuNSAwLjU3ODEyNSAtMi40Njg3NSAwLjY0MDYyNSAtMi40Njg3NSBDIDAuNzE4NzUgLTIuNDY4NzUgMC43NSAtMi41MTU2MjUgMC43NjU2MjUgLTIuNTYyNSBDIDEuMDQ2ODc1IC0zLjQ1MzEyNSAxLjY0MDYyNSAtMy43MzQzNzUgMS45ODQzNzUgLTMuNzM0Mzc1IEMgMi4yMzQzNzUgLTMuNzM0Mzc1IDIuNDY4NzUgLTMuNTYyNSAyLjQ2ODc1IC0zLjE0MDYyNSBDIDIuNDY4NzUgLTIuODEyNSAyLjA5Mzc1IC0xLjM5MDYyNSAxLjk2ODc1IC0wLjk1MzEyNSBDIDEuODkwNjI1IC0wLjY4NzUgMS42MjUgLTAuMTI1IDEuMTQwNjI1IC0wLjEyNSBDIDAuOTUzMTI1IC0wLjEyNSAwLjc2NTYyNSAtMC4xODc1IDAuNjg3NSAtMC4yMzQzNzUgQyAwLjkyMTg3NSAtMC4yODEyNSAxLjA5Mzc1IC0wLjUgMS4wOTM3NSAtMC43MTg3NSBDIDEuMDkzNzUgLTAuOTUzMTI1IDAuOTM3NSAtMS4wNDY4NzUgMC43NjU2MjUgLTEuMDQ2ODc1IEMgMC41IC0xLjA0Njg3NSAwLjI2NTYyNSAtMC44MjgxMjUgMC4yNjU2MjUgLTAuNTE1NjI1IEMgMC4yNjU2MjUgLTAuMDc4MTI1IDAuNzUgMC4wOTM3NSAxLjEyNSAwLjA5Mzc1IEMgMS42NDA2MjUgMC4wOTM3NSAxLjk1MzEyNSAtMC4zMjgxMjUgMi4wOTM3NSAtMC41NzgxMjUgQyAyLjMxMjUgMC4wMTU2MjUgMi44NDM3NSAwLjA5Mzc1IDMuMDc4MTI1IDAuMDkzNzUgQyA0LjA0Njg3NSAwLjA5Mzc1IDQuNTYyNSAtMS4wNjI1IDQuNTYyNSAtMS4yODEyNSBDIDQuNTYyNSAtMS4zMjgxMjUgNC41MzEyNSAtMS4zOTA2MjUgNC40Mzc1IC0xLjM5MDYyNSBDIDQuMzQzNzUgLTEuMzkwNjI1IDQuMzI4MTI1IC0xLjM1OTM3NSA0LjI4MTI1IC0xLjIxODc1IEMgNC4wOTM3NSAtMC41NzgxMjUgMy41NzgxMjUgLTAuMTI1IDMuMTA5Mzc1IC0wLjEyNSBDIDIuODQzNzUgLTAuMTI1IDIuNjA5Mzc1IC0wLjI4MTI1IDIuNjA5Mzc1IC0wLjcxODc1IEMgMi42MDkzNzUgLTAuOTA2MjUgMi43MzQzNzUgLTEuNDA2MjUgMi44MTI1IC0xLjc1IEMgMi44NDM3NSAtMS45MDYyNSAzLjA5Mzc1IC0yLjg3NSAzLjEwOTM3NSAtMi45Mzc1IEMgMy4yMTg3NSAtMy4yNjU2MjUgMy40ODQzNzUgLTMuNzM0Mzc1IDMuOTM3NSAtMy43MzQzNzUgQyA0LjA5Mzc1IC0zLjczNDM3NSA0LjI2NTYyNSAtMy43MDMxMjUgNC40MDYyNSAtMy42MDkzNzUgWiBNIDQuNDA2MjUgLTMuNjA5Mzc1ICIvPgo8L2c+CjxnIGlkPSJnbHlwaC0zLTAiPgo8cGF0aCBkPSJNIDMuODEyNSAxMC4yNjU2MjUgQyAzLjgxMjUgMTAuMjE4NzUgMy43OTY4NzUgMTAuMTg3NSAzLjc4MTI1IDEwLjE3MTg3NSBDIDMuMzQzNzUgOS43MTg3NSAyLjc1IDguOTg0Mzc1IDIuNDA2MjUgNy43MTg3NSBDIDIuMjE4NzUgNy4wMzEyNSAyLjA2MjUgNi4xODc1IDIuMDYyNSA1IEMgMi4wNjI1IDIuMjY1NjI1IDIuODQzNzUgMC43ODEyNSAzLjc4MTI1IC0wLjIwMzEyNSBDIDMuODEyNSAtMC4yMTg3NSAzLjgxMjUgLTAuMjUgMy44MTI1IC0wLjI4MTI1IEMgMy44MTI1IC0wLjM0Mzc1IDMuNzY1NjI1IC0wLjM3NSAzLjcwMzEyNSAtMC4zNzUgQyAzLjUzMTI1IC0wLjM3NSAyLjk4NDM3NSAwLjIzNDM3NSAyLjk2ODc1IDAuMjUgQyAxLjkyMTg3NSAxLjQzNzUgMS40MDYyNSAzLjE0MDYyNSAxLjQwNjI1IDQuOTg0Mzc1IEMgMS40MDYyNSA2Ljc5Njg3NSAxLjkwNjI1IDguODQzNzUgMy40NTMxMjUgMTAuMjE4NzUgQyAzLjYwOTM3NSAxMC4zNTkzNzUgMy42NDA2MjUgMTAuMzU5Mzc1IDMuNzAzMTI1IDEwLjM1OTM3NSBDIDMuNzY1NjI1IDEwLjM1OTM3NSAzLjgxMjUgMTAuMzI4MTI1IDMuODEyNSAxMC4yNjU2MjUgWiBNIDMuODEyNSAxMC4yNjU2MjUgIi8+CjwvZz4KPGcgaWQ9ImdseXBoLTMtMSI+CjxwYXRoIGQ9Ik0gMi43OTY4NzUgNSBDIDIuNzk2ODc1IDMuMTcxODc1IDIuMjk2ODc1IDEuMTQwNjI1IDAuNzUgLTAuMjM0Mzc1IEMgMC41OTM3NSAtMC4zNzUgMC41NzgxMjUgLTAuMzc1IDAuNTE1NjI1IC0wLjM3NSBDIDAuMzkwNjI1IC0wLjM3NSAwLjM5MDYyNSAtMC4yOTY4NzUgMC4zOTA2MjUgLTAuMjgxMjUgQyAwLjM5MDYyNSAtMC4yNSAwLjM5MDYyNSAtMC4yMzQzNzUgMC40Mzc1IC0wLjE3MTg3NSBDIDAuOTM3NSAwLjM0Mzc1IDEuNDg0Mzc1IDEuMDkzNzUgMS43OTY4NzUgMi4yNSBDIDEuOTg0Mzc1IDIuOTUzMTI1IDIuMTQwNjI1IDMuNzk2ODc1IDIuMTQwNjI1IDQuOTg0Mzc1IEMgMi4xNDA2MjUgNy42NDA2MjUgMS40MjE4NzUgOS4xNTYyNSAwLjQyMTg3NSAxMC4xNzE4NzUgQyAwLjQwNjI1IDEwLjIwMzEyNSAwLjM5MDYyNSAxMC4yMTg3NSAwLjM5MDYyNSAxMC4yNjU2MjUgQyAwLjM5MDYyNSAxMC4yODEyNSAwLjM5MDYyNSAxMC4zNTkzNzUgMC41MTU2MjUgMTAuMzU5Mzc1IEMgMC42NzE4NzUgMTAuMzU5Mzc1IDEuMjE4NzUgOS43NSAxLjIzNDM3NSA5LjczNDM3NSBDIDIuMjgxMjUgOC41NDY4NzUgMi43OTY4NzUgNi44NDM3NSAyLjc5Njg3NSA1IFogTSAyLjc5Njg3NSA1ICIvPgo8L2c+CjxnIGlkPSJnbHlwaC00LTAiPgo8cGF0aCBkPSJNIDEuNzUgLTEuOTg0Mzc1IEMgMi4yNjU2MjUgLTEuOTg0Mzc1IDIuNjA5Mzc1IC0xLjY0MDYyNSAyLjYwOTM3NSAtMS4wMzEyNSBDIDIuNjA5Mzc1IC0wLjM3NSAyLjIwMzEyNSAtMC4wOTM3NSAxLjc2NTYyNSAtMC4wOTM3NSBDIDEuNjA5Mzc1IC0wLjA5Mzc1IDEgLTAuMTI1IDAuNzM0Mzc1IC0wLjQ2ODc1IEMgMC45Njg3NSAtMC41IDEuMDYyNSAtMC42NTYyNSAxLjA2MjUgLTAuODEyNSBDIDEuMDYyNSAtMS4wMTU2MjUgMC45MDYyNSAtMS4xNTYyNSAwLjcxODc1IC0xLjE1NjI1IEMgMC41NjI1IC0xLjE1NjI1IDAuMzc1IC0xLjA0Njg3NSAwLjM3NSAtMC43OTY4NzUgQyAwLjM3NSAtMC4yMDMxMjUgMS4wMzEyNSAwLjEyNSAxLjc5Njg3NSAwLjEyNSBDIDIuNjcxODc1IDAuMTI1IDMuMjY1NjI1IC0wLjQzNzUgMy4yNjU2MjUgLTEuMDMxMjUgQyAzLjI2NTYyNSAtMS40Njg3NSAyLjkzNzUgLTEuOTIxODc1IDIuMjE4NzUgLTIuMTA5Mzc1IEMgMi42ODc1IC0yLjI2NTYyNSAzLjA3ODEyNSAtMi42NDA2MjUgMy4wNzgxMjUgLTMuMTQwNjI1IEMgMy4wNzgxMjUgLTMuNjA5Mzc1IDIuNTE1NjI1IC0zLjk2ODc1IDEuNzk2ODc1IC0zLjk2ODc1IEMgMS4wOTM3NSAtMy45Njg3NSAwLjU2MjUgLTMuNjQwNjI1IDAuNTYyNSAtMy4xNTYyNSBDIDAuNTYyNSAtMi45MDYyNSAwLjc2NTYyNSAtMi44MjgxMjUgMC44OTA2MjUgLTIuODI4MTI1IEMgMS4wMzEyNSAtMi44MjgxMjUgMS4yMDMxMjUgLTIuOTM3NSAxLjIwMzEyNSAtMy4xNDA2MjUgQyAxLjIwMzEyNSAtMy4zMjgxMjUgMS4wNjI1IC0zLjQzNzUgMC45MDYyNSAtMy40Njg3NSBDIDEuMTg3NSAtMy43NjU2MjUgMS43MzQzNzUgLTMuNzY1NjI1IDEuNzgxMjUgLTMuNzY1NjI1IEMgMi4wOTM3NSAtMy43NjU2MjUgMi40Njg3NSAtMy42MjUgMi40Njg3NSAtMy4xNDA2MjUgQyAyLjQ2ODc1IC0yLjgxMjUgMi4yODEyNSAtMi4yMzQzNzUgMS42ODc1IC0yLjIwMzEyNSBDIDEuNTc4MTI1IC0yLjE4NzUgMS40MjE4NzUgLTIuMTcxODc1IDEuMzU5Mzc1IC0yLjE3MTg3NSBDIDEuMzEyNSAtMi4xNzE4NzUgMS4yMzQzNzUgLTIuMTcxODc1IDEuMjM0Mzc1IC0yLjA3ODEyNSBDIDEuMjM0Mzc1IC0xLjk4NDM3NSAxLjMxMjUgLTEuOTg0Mzc1IDEuNDA2MjUgLTEuOTg0Mzc1IFogTSAxLjc1IC0xLjk4NDM3NSAiLz4KPC9nPgo8ZyBpZD0iZ2x5cGgtNC0xIj4KPHBhdGggZD0iTSAzLjIxODc1IC0xLjEwOTM3NSBMIDIuOTg0Mzc1IC0xLjEwOTM3NSBDIDIuOTg0Mzc1IC0xLjAzMTI1IDIuOTIxODc1IC0wLjY0MDYyNSAyLjgyODEyNSAtMC41NzgxMjUgQyAyLjc4MTI1IC0wLjUzMTI1IDIuMjk2ODc1IC0wLjUzMTI1IDIuMjE4NzUgLTAuNTMxMjUgTCAxLjEwOTM3NSAtMC41MzEyNSBMIDEuODc1IC0xLjE1NjI1IEMgMi4wNzgxMjUgLTEuMzEyNSAyLjYwOTM3NSAtMS43MDMxMjUgMi43ODEyNSAtMS44NzUgQyAyLjk2ODc1IC0yLjA2MjUgMy4yMTg3NSAtMi4zNTkzNzUgMy4yMTg3NSAtMi43ODEyNSBDIDMuMjE4NzUgLTMuNTMxMjUgMi41MzEyNSAtMy45Njg3NSAxLjczNDM3NSAtMy45Njg3NSBDIDAuOTY4NzUgLTMuOTY4NzUgMC40Mzc1IC0zLjQ2ODc1IDAuNDM3NSAtMi45MDYyNSBDIDAuNDM3NSAtMi41OTM3NSAwLjY4NzUgLTIuNTYyNSAwLjc1IC0yLjU2MjUgQyAwLjkwNjI1IC0yLjU2MjUgMS4wNzgxMjUgLTIuNjcxODc1IDEuMDc4MTI1IC0yLjg5MDYyNSBDIDEuMDc4MTI1IC0zLjAxNTYyNSAxIC0zLjIwMzEyNSAwLjczNDM3NSAtMy4yMDMxMjUgQyAwLjg3NSAtMy41MTU2MjUgMS4yMzQzNzUgLTMuNzM0Mzc1IDEuNjQwNjI1IC0zLjczNDM3NSBDIDIuMjgxMjUgLTMuNzM0Mzc1IDIuNjA5Mzc1IC0zLjI2NTYyNSAyLjYwOTM3NSAtMi43ODEyNSBDIDIuNjA5Mzc1IC0yLjM1OTM3NSAyLjMyODEyNSAtMS45MjE4NzUgMS45MDYyNSAtMS41NDY4NzUgTCAwLjUgLTAuMjUgQyAwLjQzNzUgLTAuMTg3NSAwLjQzNzUgLTAuMTg3NSAwLjQzNzUgMCBMIDMuMDMxMjUgMCBaIE0gMy4yMTg3NSAtMS4xMDkzNzUgIi8+CjwvZz4KPGcgaWQ9ImdseXBoLTUtMCI+CjxwYXRoIGQ9Ik0gMy4zMjgxMjUgLTMgQyAzLjM5MDYyNSAtMy4yNjU2MjUgMy42MDkzNzUgLTQuMTg3NSA0LjMxMjUgLTQuMTg3NSBDIDQuMzU5Mzc1IC00LjE4NzUgNC41OTM3NSAtNC4xODc1IDQuODEyNSAtNC4wNDY4NzUgQyA0LjUzMTI1IC00IDQuMzI4MTI1IC0zLjc1IDQuMzI4MTI1IC0zLjUxNTYyNSBDIDQuMzI4MTI1IC0zLjM1OTM3NSA0LjQzNzUgLTMuMTcxODc1IDQuNzAzMTI1IC0zLjE3MTg3NSBDIDQuOTIxODc1IC0zLjE3MTg3NSA1LjI1IC0zLjM0Mzc1IDUuMjUgLTMuNzUgQyA1LjI1IC00LjI2NTYyNSA0LjY1NjI1IC00LjQwNjI1IDQuMzEyNSAtNC40MDYyNSBDIDMuNzUgLTQuNDA2MjUgMy4zOTA2MjUgLTMuODc1IDMuMjgxMjUgLTMuNjQwNjI1IEMgMy4wMzEyNSAtNC4yOTY4NzUgMi40ODQzNzUgLTQuNDA2MjUgMi4yMDMxMjUgLTQuNDA2MjUgQyAxLjE3MTg3NSAtNC40MDYyNSAwLjU5Mzc1IC0zLjEwOTM3NSAwLjU5Mzc1IC0yLjg1OTM3NSBDIDAuNTkzNzUgLTIuNzY1NjI1IDAuNzAzMTI1IC0yLjc2NTYyNSAwLjcxODc1IC0yLjc2NTYyNSBDIDAuNzk2ODc1IC0yLjc2NTYyNSAwLjgyODEyNSAtMi43ODEyNSAwLjg0Mzc1IC0yLjg3NSBDIDEuMTg3NSAtMy45Mzc1IDEuODQzNzUgLTQuMTg3NSAyLjE4NzUgLTQuMTg3NSBDIDIuMzc1IC00LjE4NzUgMi43MTg3NSAtNC4wOTM3NSAyLjcxODc1IC0zLjUxNTYyNSBDIDIuNzE4NzUgLTMuMjAzMTI1IDIuNTQ2ODc1IC0yLjUzMTI1IDIuMTg3NSAtMS4xNDA2MjUgQyAyLjAxNTYyNSAtMC41MzEyNSAxLjY3MTg3NSAtMC4xMDkzNzUgMS4yMzQzNzUgLTAuMTA5Mzc1IEMgMS4xNzE4NzUgLTAuMTA5Mzc1IDAuOTUzMTI1IC0wLjEwOTM3NSAwLjczNDM3NSAtMC4yMzQzNzUgQyAwLjk4NDM3NSAtMC4yODEyNSAxLjIwMzEyNSAtMC41IDEuMjAzMTI1IC0wLjc4MTI1IEMgMS4yMDMxMjUgLTEuMDQ2ODc1IDAuOTg0Mzc1IC0xLjEyNSAwLjg0Mzc1IC0xLjEyNSBDIDAuNTMxMjUgLTEuMTI1IDAuMjgxMjUgLTAuODU5Mzc1IDAuMjgxMjUgLTAuNTQ2ODc1IEMgMC4yODEyNSAtMC4wOTM3NSAwLjc4MTI1IDAuMTA5Mzc1IDEuMjE4NzUgMC4xMDkzNzUgQyAxLjg3NSAwLjEwOTM3NSAyLjIzNDM3NSAtMC41OTM3NSAyLjI2NTYyNSAtMC42NDA2MjUgQyAyLjM5MDYyNSAtMC4yODEyNSAyLjc1IDAuMTA5Mzc1IDMuMzQzNzUgMC4xMDkzNzUgQyA0LjM3NSAwLjEwOTM3NSA0LjkzNzUgLTEuMTcxODc1IDQuOTM3NSAtMS40MjE4NzUgQyA0LjkzNzUgLTEuNTE1NjI1IDQuODQzNzUgLTEuNTE1NjI1IDQuODEyNSAtMS41MTU2MjUgQyA0LjczNDM3NSAtMS41MTU2MjUgNC43MDMxMjUgLTEuNDg0Mzc1IDQuNjg3NSAtMS40MDYyNSBDIDQuMzU5Mzc1IC0wLjM0Mzc1IDMuNjg3NSAtMC4xMDkzNzUgMy4zNTkzNzUgLTAuMTA5Mzc1IEMgMi45Njg3NSAtMC4xMDkzNzUgMi44MTI1IC0wLjQyMTg3NSAyLjgxMjUgLTAuNzY1NjI1IEMgMi44MTI1IC0wLjk4NDM3NSAyLjg3NSAtMS4yMDMxMjUgMi45ODQzNzUgLTEuNjQwNjI1IFogTSAzLjMyODEyNSAtMyAiLz4KPC9nPgo8ZyBpZD0iZ2x5cGgtNS0xIj4KPHBhdGggZD0iTSA0Ljg0Mzc1IC0zLjc5Njg3NSBDIDQuODc1IC0zLjkzNzUgNC44NzUgLTMuOTUzMTI1IDQuODc1IC00LjAxNTYyNSBDIDQuODc1IC00LjIwMzEyNSA0LjczNDM3NSAtNC4yOTY4NzUgNC41OTM3NSAtNC4yOTY4NzUgQyA0LjQ4NDM3NSAtNC4yOTY4NzUgNC4zMjgxMjUgLTQuMjM0Mzc1IDQuMjM0Mzc1IC00LjA3ODEyNSBDIDQuMjE4NzUgLTQuMDMxMjUgNC4xNDA2MjUgLTMuNzE4NzUgNC4wOTM3NSAtMy41NDY4NzUgQyA0LjAzMTI1IC0zLjI4MTI1IDMuOTY4NzUgLTMuMDE1NjI1IDMuOTA2MjUgLTIuNzUgTCAzLjQ1MzEyNSAtMC45NTMxMjUgQyAzLjQwNjI1IC0wLjgxMjUgMi45ODQzNzUgLTAuMTA5Mzc1IDIuMzI4MTI1IC0wLjEwOTM3NSBDIDEuODI4MTI1IC0wLjEwOTM3NSAxLjcxODc1IC0wLjU0Njg3NSAxLjcxODc1IC0wLjkyMTg3NSBDIDEuNzE4NzUgLTEuMzc1IDEuODc1IC0xLjk4NDM3NSAyLjIxODc1IC0yLjg1OTM3NSBDIDIuMzc1IC0zLjI4MTI1IDIuNDIxODc1IC0zLjM5MDYyNSAyLjQyMTg3NSAtMy41NzgxMjUgQyAyLjQyMTg3NSAtNC4wMzEyNSAyLjA5Mzc1IC00LjQwNjI1IDEuNjA5Mzc1IC00LjQwNjI1IEMgMC42NTYyNSAtNC40MDYyNSAwLjI4MTI1IC0yLjk1MzEyNSAwLjI4MTI1IC0yLjg1OTM3NSBDIDAuMjgxMjUgLTIuNzY1NjI1IDAuMzkwNjI1IC0yLjc2NTYyNSAwLjQwNjI1IC0yLjc2NTYyNSBDIDAuNSAtMi43NjU2MjUgMC41MTU2MjUgLTIuNzgxMjUgMC41NjI1IC0yLjk1MzEyNSBDIDAuODQzNzUgLTMuODc1IDEuMjM0Mzc1IC00LjE4NzUgMS41NzgxMjUgLTQuMTg3NSBDIDEuNjU2MjUgLTQuMTg3NSAxLjgyODEyNSAtNC4xODc1IDEuODI4MTI1IC0zLjg1OTM3NSBDIDEuODI4MTI1IC0zLjYwOTM3NSAxLjcxODc1IC0zLjM1OTM3NSAxLjY1NjI1IC0zLjE3MTg3NSBDIDEuMjUgLTIuMTA5Mzc1IDEuMDc4MTI1IC0xLjU0Njg3NSAxLjA3ODEyNSAtMS4wNzgxMjUgQyAxLjA3ODEyNSAtMC4xODc1IDEuNzAzMTI1IDAuMTA5Mzc1IDIuMjk2ODc1IDAuMTA5Mzc1IEMgMi42NzE4NzUgMC4xMDkzNzUgMy4wMTU2MjUgLTAuMDYyNSAzLjI5Njg3NSAtMC4zNDM3NSBDIDMuMTcxODc1IDAuMTcxODc1IDMuMDQ2ODc1IDAuNjcxODc1IDIuNjQwNjI1IDEuMTg3NSBDIDIuMzkwNjI1IDEuNTMxMjUgMi4wMTU2MjUgMS44MjgxMjUgMS41NDY4NzUgMS44MjgxMjUgQyAxLjQwNjI1IDEuODI4MTI1IDAuOTY4NzUgMS43OTY4NzUgMC43OTY4NzUgMS40MDYyNSBDIDAuOTUzMTI1IDEuNDA2MjUgMS4wNzgxMjUgMS40MDYyNSAxLjIxODc1IDEuMjgxMjUgQyAxLjMyODEyNSAxLjE4NzUgMS40MjE4NzUgMS4wNjI1IDEuNDIxODc1IDAuODc1IEMgMS40MjE4NzUgMC41NjI1IDEuMTU2MjUgMC41MzEyNSAxLjA2MjUgMC41MzEyNSBDIDAuODI4MTI1IDAuNTMxMjUgMC41IDAuNjg3NSAwLjUgMS4xNzE4NzUgQyAwLjUgMS42NzE4NzUgMC45Mzc1IDIuMDQ2ODc1IDEuNTQ2ODc1IDIuMDQ2ODc1IEMgMi41NzgxMjUgMi4wNDY4NzUgMy42MDkzNzUgMS4xNDA2MjUgMy44NzUgMC4wMTU2MjUgWiBNIDQuODQzNzUgLTMuNzk2ODc1ICIvPgo8L2c+CjxnIGlkPSJnbHlwaC02LTAiPgo8cGF0aCBkPSJNIDIuNTc4MTI1IC0yLjMyODEyNSBMIDMuMTg3NSAtMi4zMjgxMjUgQyAzLjI5Njg3NSAtMi4zMjgxMjUgMy4zOTA2MjUgLTIuMzI4MTI1IDMuMzkwNjI1IC0yLjQ4NDM3NSBDIDMuMzkwNjI1IC0yLjU3ODEyNSAzLjMxMjUgLTIuNTc4MTI1IDMuMjAzMTI1IC0yLjU3ODEyNSBMIDIuNjA5Mzc1IC0yLjU3ODEyNSBDIDIuNzk2ODc1IC0zLjU0Njg3NSAyLjc5Njg3NSAtMy41NjI1IDIuODEyNSAtMy42NzE4NzUgQyAyLjg0Mzc1IC0zLjc5Njg3NSAyLjg1OTM3NSAtMy44NTkzNzUgMi45NTMxMjUgLTMuOTIxODc1IEMgMy4wMTU2MjUgLTMuOTg0Mzc1IDMuMDc4MTI1IC00IDMuMTU2MjUgLTQgQyAzLjI2NTYyNSAtNCAzLjM1OTM3NSAtNCAzLjQzNzUgLTMuOTUzMTI1IEMgMy4zMTI1IC0zLjkwNjI1IDMuMjE4NzUgLTMuNzY1NjI1IDMuMjE4NzUgLTMuNjI1IEMgMy4yMTg3NSAtMy41IDMuMzEyNSAtMy40MDYyNSAzLjQ1MzEyNSAtMy40MDYyNSBDIDMuNjA5Mzc1IC0zLjQwNjI1IDMuNzk2ODc1IC0zLjUzMTI1IDMuNzk2ODc1IC0zLjc2NTYyNSBDIDMuNzk2ODc1IC00LjA5Mzc1IDMuNDIxODc1IC00LjIwMzEyNSAzLjE1NjI1IC00LjIwMzEyNSBDIDIuODkwNjI1IC00LjIwMzEyNSAyLjQ4NDM3NSAtNC4wNzgxMjUgMi4zMTI1IC0zLjQ4NDM3NSBDIDIuMjY1NjI1IC0zLjMyODEyNSAyLjI1IC0zLjIxODc1IDIuMjAzMTI1IC0zIEMgMi4xNzE4NzUgLTIuODI4MTI1IDIuMTU2MjUgLTIuNzUgMi4xMjUgLTIuNTc4MTI1IEwgMS42NDA2MjUgLTIuNTc4MTI1IEMgMS41MTU2MjUgLTIuNTc4MTI1IDEuNDM3NSAtMi41NzgxMjUgMS40Mzc1IC0yLjQyMTg3NSBDIDEuNDM3NSAtMi4zMjgxMjUgMS41MTU2MjUgLTIuMzI4MTI1IDEuNjI1IC0yLjMyODEyNSBMIDIuMDc4MTI1IC0yLjMyODEyNSBDIDEuODQzNzUgLTEgMS43NjU2MjUgLTAuNTMxMjUgMS43NSAtMC40Mzc1IEMgMS41NjI1IDAuNTkzNzUgMS41MzEyNSAwLjY1NjI1IDEuNDY4NzUgMC43NjU2MjUgQyAxLjM5MDYyNSAwLjkwNjI1IDEuMjk2ODc1IDEuMDE1NjI1IDEuMTQwNjI1IDEuMDE1NjI1IEMgMS4xMDkzNzUgMS4wMTU2MjUgMC45Njg3NSAxLjAxNTYyNSAwLjg3NSAwLjk2ODc1IEMgMSAwLjkyMTg3NSAxLjEwOTM3NSAwLjc4MTI1IDEuMTA5Mzc1IDAuNjQwNjI1IEMgMS4xMDkzNzUgMC41MTU2MjUgMSAwLjQyMTg3NSAwLjg1OTM3NSAwLjQyMTg3NSBDIDAuNzAzMTI1IDAuNDIxODc1IDAuNTE1NjI1IDAuNTQ2ODc1IDAuNTE1NjI1IDAuNzgxMjUgQyAwLjUxNTYyNSAxLjEwOTM3NSAwLjg5MDYyNSAxLjIxODc1IDEuMTQwNjI1IDEuMjE4NzUgQyAxLjQ2ODc1IDEuMjE4NzUgMS42ODc1IDAuOTUzMTI1IDEuNzk2ODc1IDAuODEyNSBDIDIuMDYyNSAwLjQ2ODc1IDIuMTg3NSAtMC4yNSAyLjIwMzEyNSAtMC4yOTY4NzUgWiBNIDIuNTc4MTI1IC0yLjMyODEyNSAiLz4KPC9nPgo8L2c+CjwvZGVmcz4KPHBhdGggZmlsbD0ibm9uZSIgc3Ryb2tlLXdpZHRoPSIwLjE5OTI1IiBzdHJva2UtbGluZWNhcD0iYnV0dCIgc3Ryb2tlLWxpbmVqb2luPSJtaXRlciIgc3Ryb2tlPSJyZ2IoODUuOTk4NTM1JSwgODUuOTk4NTM1JSwgODUuOTk4NTM1JSkiIHN0cm9rZS1vcGFjaXR5PSIxIiBzdHJva2UtbWl0ZXJsaW1pdD0iMTAiIGQ9Ik0gNzIuNDc1OTMyIC0wLjAwMTUwNjI5IEwgNzIuNDc1OTMyIDIzOC42MzUxMSBNIDEyNC4yMzk4MTMgLTAuMDAxNTA2MjkgTCAxMjQuMjM5ODEzIDIzOC42MzUxMSBNIDE3Ni4wMDc2MDcgLTAuMDAxNTA2MjkgTCAxNzYuMDA3NjA3IDIzOC42MzUxMSBNIDIyNy43NzU0MDEgLTAuMDAxNTA2MjkgTCAyMjcuNzc1NDAxIDIzOC42MzUxMSBNIDI3OS41NDMxOTQgLTAuMDAxNTA2MjkgTCAyNzkuNTQzMTk0IDIzOC42MzUxMSBNIDMzMS4zMTA5ODggLTAuMDAxNTA2MjkgTCAzMzEuMzEwOTg4IDIzOC42MzUxMSAiIHRyYW5zZm9ybT0ibWF0cml4KDAuOTk4Mjk4LCAwLCAwLCAtMC45OTgyOTgsIDMuMTgyNTc0LCAyNDcuNzU2MzA5KSIvPgo8cGF0aCBmaWxsPSJub25lIiBzdHJva2Utd2lkdGg9IjAuMTk5MjUiIHN0cm9rZS1saW5lY2FwPSJidXR0IiBzdHJva2UtbGluZWpvaW49Im1pdGVyIiBzdHJva2U9InJnYig4NS45OTg1MzUlLCA4NS45OTg1MzUlLCA4NS45OTg1MzUlKSIgc3Ryb2tlLW9wYWNpdHk9IjEiIHN0cm9rZS1taXRlcmxpbWl0PSIxMCIgZD0iTSAwLjAwMTAyMTMgNDUuMTQ1NjQ0IEwgMzUyLjAxODEwNSA0NS4xNDU2NDQgTSAwLjAwMTAyMTMgNzcuMzk1ODQ1IEwgMzUyLjAxODEwNSA3Ny4zOTU4NDUgTSAwLjAwMTAyMTMgMTA5LjY0MjEzMyBMIDM1Mi4wMTgxMDUgMTA5LjY0MjEzMyBNIDAuMDAxMDIxMyAxNDEuODkyMzM0IEwgMzUyLjAxODEwNSAxNDEuODkyMzM0IE0gMC4wMDEwMjEzIDE3NC4xMzg2MjEgTCAzNTIuMDE4MTA1IDE3NC4xMzg2MjEgTSAwLjAwMTAyMTMgMjA2LjM4ODgyMiBMIDM1Mi4wMTgxMDUgMjA2LjM4ODgyMiBNIDAuMDAxMDIxMyAyMzguNjM1MTEgTCAzNTIuMDE4MTA1IDIzOC42MzUxMSAiIHRyYW5zZm9ybT0ibWF0cml4KDAuOTk4Mjk4LCAwLCAwLCAtMC45OTgyOTgsIDMuMTgyNTc0LCAyNDcuNzU2MzA5KSIvPgo8cGF0aCBmaWxsPSJub25lIiBzdHJva2Utd2lkdGg9IjAuMTk5MjUiIHN0cm9rZS1saW5lY2FwPSJidXR0IiBzdHJva2UtbGluZWpvaW49Im1pdGVyIiBzdHJva2U9InJnYig1MCUsIDUwJSwgNTAlKSIgc3Ryb2tlLW9wYWNpdHk9IjEiIHN0cm9rZS1taXRlcmxpbWl0PSIxMCIgZD0iTSA3Mi40NzU5MzIgMTAuNzc0NjQ3IEwgNzIuNDc1OTMyIDE1LjAyNDA2NiBNIDEyNC4yMzk4MTMgMTAuNzc0NjQ3IEwgMTI0LjIzOTgxMyAxNS4wMjQwNjYgTSAxNzYuMDA3NjA3IDEwLjc3NDY0NyBMIDE3Ni4wMDc2MDcgMTUuMDI0MDY2IE0gMjI3Ljc3NTQwMSAxMC43NzQ2NDcgTCAyMjcuNzc1NDAxIDE1LjAyNDA2NiBNIDI3OS41NDMxOTQgMTAuNzc0NjQ3IEwgMjc5LjU0MzE5NCAxNS4wMjQwNjYgTSAzMzEuMzEwOTg4IDEwLjc3NDY0NyBMIDMzMS4zMTA5ODggMTUuMDI0MDY2ICIgdHJhbnNmb3JtPSJtYXRyaXgoMC45OTgyOTgsIDAsIDAsIC0wLjk5ODI5OCwgMy4xODI1NzQsIDI0Ny43NTYzMDkpIi8+CjxwYXRoIGZpbGw9Im5vbmUiIHN0cm9rZS13aWR0aD0iMC4xOTkyNSIgc3Ryb2tlLWxpbmVjYXA9ImJ1dHQiIHN0cm9rZS1saW5lam9pbj0ibWl0ZXIiIHN0cm9rZT0icmdiKDUwJSwgNTAlLCA1MCUpIiBzdHJva2Utb3BhY2l0eT0iMSIgc3Ryb2tlLW1pdGVybGltaXQ9IjEwIiBkPSJNIDE4LjU3OTUxNiA0NS4xNDU2NDQgTCAyMi44MzI4NDkgNDUuMTQ1NjQ0IE0gMTguNTc5NTE2IDc3LjM5NTg0NSBMIDIyLjgzMjg0OSA3Ny4zOTU4NDUgTSAxOC41Nzk1MTYgMTA5LjY0MjEzMyBMIDIyLjgzMjg0OSAxMDkuNjQyMTMzIE0gMTguNTc5NTE2IDE0MS44OTIzMzQgTCAyMi44MzI4NDkgMTQxLjg5MjMzNCBNIDE4LjU3OTUxNiAxNzQuMTM4NjIxIEwgMjIuODMyODQ5IDE3NC4xMzg2MjEgTSAxOC41Nzk1MTYgMjA2LjM4ODgyMiBMIDIyLjgzMjg0OSAyMDYuMzg4ODIyIE0gMTguNTc5NTE2IDIzOC42MzUxMSBMIDIyLjgzMjg0OSAyMzguNjM1MTEgIiB0cmFuc2Zvcm09Im1hdHJpeCgwLjk5ODI5OCwgMCwgMCwgLTAuOTk4Mjk4LCAzLjE4MjU3NCwgMjQ3Ljc1NjMwOSkiLz4KPHBhdGggZmlsbD0ibm9uZSIgc3Ryb2tlLXdpZHRoPSIwLjM5ODUiIHN0cm9rZS1saW5lY2FwPSJidXR0IiBzdHJva2UtbGluZWpvaW49Im1pdGVyIiBzdHJva2U9InJnYigwJSwgMCUsIDAlKSIgc3Ryb2tlLW9wYWNpdHk9IjEiIHN0cm9rZS1taXRlcmxpbWl0PSIxMCIgZD0iTSAwLjAwMTAyMTMgMTIuODk5MzU3IEwgMzUwLjAyNjQzNSAxMi44OTkzNTcgIiB0cmFuc2Zvcm09Im1hdHJpeCgwLjk5ODI5OCwgMCwgMCwgLTAuOTk4Mjk4LCAzLjE4MjU3NCwgMjQ3Ljc1NjMwOSkiLz4KPHBhdGggZmlsbC1ydWxlPSJub256ZXJvIiBmaWxsPSJyZ2IoMCUsIDAlLCAwJSkiIGZpbGwtb3BhY2l0eT0iMSIgZD0iTSAzNTQuNjAxNTYyIDIzNC44Nzg5MDYgTCAzNTEuNDE3OTY5IDIzMy4yODkwNjIgTCAzNTIuNjEzMjgxIDIzNC44Nzg5MDYgTCAzNTEuNDE3OTY5IDIzNi40Njg3NSAiLz4KPHBhdGggZmlsbD0ibm9uZSIgc3Ryb2tlLXdpZHRoPSIwLjM5ODUiIHN0cm9rZS1saW5lY2FwPSJidXR0IiBzdHJva2UtbGluZWpvaW49Im1pdGVyIiBzdHJva2U9InJnYigwJSwgMCUsIDAlKSIgc3Ryb2tlLW9wYWNpdHk9IjEiIHN0cm9rZS1taXRlcmxpbWl0PSIxMCIgZD0iTSAyMC43MDgxMzkgLTAuMDAxNTA2MjkgTCAyMC43MDgxMzkgMjM2LjY0MzQzOSAiIHRyYW5zZm9ybT0ibWF0cml4KDAuOTk4Mjk4LCAwLCAwLCAtMC45OTgyOTgsIDMuMTgyNTc0LCAyNDcuNzU2MzA5KSIvPgo8cGF0aCBmaWxsLXJ1bGU9Im5vbnplcm8iIGZpbGw9InJnYigwJSwgMCUsIDAlKSIgZmlsbC1vcGFjaXR5PSIxIiBkPSJNIDIzLjg1NTQ2OSA5LjUyNzM0NCBMIDIyLjI2MTcxOSAxMi43MTA5MzggTCAyMy44NTU0NjkgMTEuNTE1NjI1IEwgMjUuNDQ1MzEyIDEyLjcxMDkzOCAiLz4KPGcgZmlsbD0icmdiKDAlLCAwJSwgMCUpIiBmaWxsLW9wYWNpdHk9IjEiPgo8dXNlIHhsaW5rOmhyZWY9IiNnbHlwaC0wLTAiIHg9IjczLjA0NjQ2NyIgeT0iMjQ2LjkyMzcyOCIvPgo8L2c+CjxnIGZpbGw9InJnYigwJSwgMCUsIDAlKSIgZmlsbC1vcGFjaXR5PSIxIj4KPHVzZSB4bGluazpocmVmPSIjZ2x5cGgtMC0xIiB4PSIxMjQuNzI0MzYzIiB5PSIyNDYuOTIzNzI4Ii8+CjwvZz4KPGcgZmlsbD0icmdiKDAlLCAwJSwgMCUpIiBmaWxsLW9wYWNpdHk9IjEiPgo8dXNlIHhsaW5rOmhyZWY9IiNnbHlwaC0wLTIiIHg9IjE3Ni40MDMyNTkiIHk9IjI0Ni45MjM3MjgiLz4KPC9nPgo8ZyBmaWxsPSJyZ2IoMCUsIDAlLCAwJSkiIGZpbGwtb3BhY2l0eT0iMSI+Cjx1c2UgeGxpbms6aHJlZj0iI2dseXBoLTAtMyIgeD0iMjI4LjA4MjE1NCIgeT0iMjQ2LjkyMzcyOCIvPgo8L2c+CjxnIGZpbGw9InJnYigwJSwgMCUsIDAlKSIgZmlsbC1vcGFjaXR5PSIxIj4KPHVzZSB4bGluazpocmVmPSIjZ2x5cGgtMC00IiB4PSIyNzkuNzYwMDUxIiB5PSIyNDYuOTIzNzI4Ii8+CjwvZz4KPGcgZmlsbD0icmdiKDAlLCAwJSwgMCUpIiBmaWxsLW9wYWNpdHk9IjEiPgo8dXNlIHhsaW5rOmhyZWY9IiNnbHlwaC0wLTUiIHg9IjMzMS40Mzg5NDYiIHk9IjI0Ni45MjM3MjgiLz4KPC9nPgo8ZyBmaWxsPSJyZ2IoMCUsIDAlLCAwJSkiIGZpbGwtb3BhY2l0eT0iMSI+Cjx1c2UgeGxpbms6aHJlZj0iI2dseXBoLTAtMCIgeD0iMTMuMjQ1NDE5IiB5PSIyMDUuODkxNjgyIi8+CjwvZz4KPGcgZmlsbD0icmdiKDAlLCAwJSwgMCUpIiBmaWxsLW9wYWNpdHk9IjEiPgo8dXNlIHhsaW5rOmhyZWY9IiNnbHlwaC0wLTEiIHg9IjEzLjI0NTQxOSIgeT0iMTczLjY5ODU2NiIvPgo8L2c+CjxnIGZpbGw9InJnYigwJSwgMCUsIDAlKSIgZmlsbC1vcGFjaXR5PSIxIj4KPHVzZSB4bGluazpocmVmPSIjZ2x5cGgtMC0yIiB4PSIxMy4yNDU0MTkiIHk9IjE0MS41MDY0NDkiLz4KPC9nPgo8ZyBmaWxsPSJyZ2IoMCUsIDAlLCAwJSkiIGZpbGwtb3BhY2l0eT0iMSI+Cjx1c2UgeGxpbms6aHJlZj0iI2dseXBoLTAtMyIgeD0iMTMuMjQ1NDE5IiB5PSIxMDkuMzEzMzMzIi8+CjwvZz4KPGcgZmlsbD0icmdiKDAlLCAwJSwgMCUpIiBmaWxsLW9wYWNpdHk9IjEiPgo8dXNlIHhsaW5rOmhyZWY9IiNnbHlwaC0wLTQiIHg9IjEzLjI0NTQxOSIgeT0iNzcuMTIxMjE2Ii8+CjwvZz4KPGcgZmlsbD0icmdiKDAlLCAwJSwgMCUpIiBmaWxsLW9wYWNpdHk9IjEiPgo8dXNlIHhsaW5rOmhyZWY9IiNnbHlwaC0wLTUiIHg9IjEzLjI0NTQxOSIgeT0iNDQuOTI4MTAxIi8+CjwvZz4KPGcgZmlsbD0icmdiKDAlLCAwJSwgMCUpIiBmaWxsLW9wYWNpdHk9IjEiPgo8dXNlIHhsaW5rOmhyZWY9IiNnbHlwaC0wLTYiIHg9IjEzLjI0NTQxOSIgeT0iMTIuNzM1OTg0Ii8+CjwvZz4KPHBhdGggZmlsbD0ibm9uZSIgc3Ryb2tlLXdpZHRoPSIxLjE5NTUzIiBzdHJva2UtbGluZWNhcD0iYnV0dCIgc3Ryb2tlLWxpbmVqb2luPSJtaXRlciIgc3Ryb2tlPSJyZ2IoMTIuMTU2Njc3JSwgMzAuNTg3NzY5JSwgNDcuNDUxNzgyJSkiIHN0cm9rZS1vcGFjaXR5PSIxIiBzdHJva2UtbWl0ZXJsaW1pdD0iMTAiIGQ9Ik0gMzEuMDYxNjk4IDEyOS4xNDc5ODcgTCAzMi40MzEyMTYgMTE5Ljc4MDQ4MiBMIDMzLjgwMDczNCAxMTEuOTcwMzE0IEwgMzUuMTc0MTY1IDEwNS4zNjE0MSBMIDM2LjU0MzY4NCA5OS43MDMzNDMgTCAzNy45MTcxMTUgOTQuODIzOTQ0IEwgMzkuMjg2NjMzIDkwLjU4MjM1IEwgNDAuNjU2MTUyIDg2Ljg2NTA4NiBMIDQyLjAyOTU4MyA4My41OTc4MDcgTCA0My4zOTkxMDEgODAuNzIxODE4IEwgNDQuNzY4NjIgNzguMTgyMzQgTCA0Ni4xNDIwNTEgNzUuOTI4NTA0IEwgNDcuNTExNTY5IDczLjkyOTAwNyBMIDQ4Ljg4NTAwMSA3Mi4xNjAzNzIgTCA1MC4yNTQ1MTkgNzAuNTgzNDcgTCA1MS42MjQwMzcgNjkuMTkwNDc0IEwgNTIuOTk3NDY5IDY3Ljk1Mzk5NCBMIDU0LjM2Njk4NyA2Ni44NjYyMDUgTCA1NS43MzY1MDUgNjUuOTAzNjMgTCA1Ny4xMDk5MzcgNjUuMDU4NDQxIEwgNTguNDc5NDU1IDY0LjMyMjgxNCBMIDU5Ljg1Mjg4NiA2My42ODEwOTcgTCA2MS4yMjI0MDUgNjMuMTM3MjAzIEwgNjIuNTkxOTIzIDYyLjY2NzY1MyBMIDYzLjk2NTM1NCA2Mi4yODQxODggTCA2NS4zMzQ4NzIgNjEuOTYzMzMgTCA2Ni43MDgzMDQgNjEuNzEyOTA0IEwgNjguMDc3ODIyIDYxLjUyMTE3MSBMIDY5LjQ0NzM0IDYxLjM4ODEzMiBMIDcwLjgyMDc3MiA2MS4zMDU5NjEgTCA3Mi4xOTAyOSA2MS4yNzA3NDUgTCA3My41NTk4MDggNjEuMjg2Mzk2IEwgNzQuOTMzMjQgNjEuMzQxMTc3IEwgNzYuMzAyNzU4IDYxLjQzOSBMIDc3LjY3NjE4OSA2MS41NzIwMzkgTCA3OS4wNDU3MDggNjEuNzQwMjk0IEwgODAuNDE1MjI2IDYxLjk0Mzc2NSBMIDgxLjc4ODY1NyA2Mi4xNzg1NCBMIDgzLjE1ODE3NiA2Mi40NDQ2MTggTCA4NC41Mjc2OTQgNjIuNzM4MDg2IEwgODUuOTAxMTI1IDYzLjA1NTAzMiBMIDg3LjI3MDY0NCA2My4zOTkzNjggTCA4OC42NDQwNzUgNjMuNzcxMDk0IEwgOTAuMDEzNTkzIDY0LjE2MjM4NSBMIDkxLjM4MzExMiA2NC41NzMyNCBMIDkyLjc1NjU0MyA2NS4wMDc1NzMgTCA5NC4xMjYwNjEgNjUuNDYxNDcxIEwgOTUuNDk5NDkyIDY1LjkzMTAyIEwgOTYuODY5MDExIDY2LjQyMDEzNCBMIDk4LjIzODUyOSA2Ni45MjQ4OTkgTCA5OS42MTE5NiA2Ny40NDkyMjkgTCAxMDAuOTgxNDc5IDY3Ljk4NTI5OCBMIDEwMi4zNTA5OTcgNjguNTM3MDE4IEwgMTAzLjcyNDQyOCA2OS4xMDQzOSBMIDEwNS4wOTM5NDcgNjkuNjgzNSBMIDEwNi40NjczNzggNzAuMjc4MjYzIEwgMTA3LjgzNjg5NiA3MC44ODA4NTEgTCAxMDkuMjA2NDE1IDcxLjQ5OTA5IEwgMTEwLjU3OTg0NiA3Mi4xMjUxNTYgTCAxMTEuOTQ5MzY0IDcyLjc2Njg3MyBMIDExMy4zMTg4ODMgNzMuNDE2NDE2IEwgMTE0LjY5MjMxNCA3NC4wNzM3ODUgTCAxMTYuMDYxODMyIDc0Ljc0Mjg5MiBMIDExNy40MzUyNjMgNzUuNDE5ODI2IEwgMTE4LjgwNDc4MiA3Ni4xMDg0OTggTCAxMjAuMTc0MyA3Ni44MDQ5OTYgTCAxMjEuNTQ3NzMxIDc3LjUwOTMxOSBMIDEyMi45MTcyNSA3OC4yMjE0NjkgTCAxMjQuMjg2NzY4IDc4LjkzNzUzMSBMIDEyNS42NjAxOTkgNzkuNjY1MzMzIEwgMTI3LjAyOTcxOCA4MC40MDA5NiBMIDEyOC40MDMxNDkgODEuMTQwNSBMIDEyOS43NzI2NjcgODEuODg3ODY1IEwgMTMxLjE0MjE4NiA4Mi42NDMwNTcgTCAxMzIuNTE1NjE3IDgzLjQwMjE2MSBMIDEzMy44ODUxMzUgODQuMTY5MDkyIEwgMTM1LjI1ODU2NyA4NC45Mzk5MzUgTCAxMzYuNjI4MDg1IDg1LjcxODYwNCBMIDEzNy45OTc2MDMgODYuNTAxMTg2IEwgMTM5LjM3MTAzNSA4Ny4yODc2ODEgTCAxNDAuNzQwNTUzIDg4LjA4MjAwMSBMIDE0Mi4xMTAwNzEgODguODgwMjM1IEwgMTQzLjQ4MzUwMyA4OS42ODIzODEgTCAxNDQuODUzMDIxIDkwLjQ4ODQ0MSBMIDE0Ni4yMjY0NTIgOTEuMjk4NDEzIEwgMTQ3LjU5NTk3MSA5Mi4xMTYyMTEgTCAxNDguOTY1NDg5IDkyLjkzNzkyMiBMIDE1MC4zMzg5MiA5My43NTk2MzMgTCAxNTMuMDc3OTU3IDk1LjQxODcwNyBMIDE1NC40NTEzODggOTYuMjU2MDY5IEwgMTU1LjgyMDkwNiA5Ny4wOTM0MzIgTCAxNTcuMTk0MzM4IDk3LjkzODYyIEwgMTU4LjU2Mzg1NiA5OC43ODM4MDkgTCAxNTkuOTMzMzc0IDk5LjYzMjkxIEwgMTYxLjMwNjgwNiAxMDAuNDgyMDEyIEwgMTYyLjY3NjMyNCAxMDEuMzM4OTM5IEwgMTY0LjA0OTc1NSAxMDIuMTk1ODY2IEwgMTY1LjQxOTI3NCAxMDMuMDYwNjE5IEwgMTY2Ljc4ODc5MiAxMDMuOTIxNDU5IEwgMTY4LjE2MjIyMyAxMDQuNzkwMTI1IEwgMTY5LjUzMTc0MiAxMDUuNjU4NzkxIEwgMTcwLjkwMTI2IDEwNi41MzEzNyBMIDE3Mi4yNzQ2OTEgMTA3LjQwMzk0OSBMIDE3My42NDQyMSAxMDguMjgwNDQgTCAxNzUuMDE3NjQxIDEwOS4xNjA4NDUgTCAxNzYuMzg3MTU5IDExMC4wNDEyNSBMIDE3Ny43NTY2NzggMTEwLjkyNTU2NyBMIDE3OS4xMzAxMDkgMTExLjgxMzc5OCBMIDE4MS44NjkxNDUgMTEzLjU5MDI1OSBMIDE4My4yNDI1NzcgMTE0LjQ4MjQwMiBMIDE4NC42MTIwOTUgMTE1LjM3ODQ1OCBMIDE4NS45ODU1MjYgMTE2LjI3NDUxNSBMIDE4Ny4zNTUwNDUgMTE3LjE3MDU3MSBMIDE4OC43MjQ1NjMgMTE4LjA3MDU0IEwgMTkwLjA5Nzk5NCAxMTguOTc0NDIyIEwgMTkyLjgzNzAzMSAxMjAuNzgyMTg2IEwgMTk0LjIxMDQ2MiAxMjEuNjg5OTgyIEwgMTk1LjU3OTk4MSAxMjIuNTk3Nzc3IEwgMTk2Ljk1MzQxMiAxMjMuNTA1NTcyIEwgMTk5LjY5MjQ0OSAxMjUuMzI4OTg3IEwgMjAxLjA2NTg4IDEyNi4yNDQ2MDggTCAyMDIuNDM1Mzk4IDEyNy4xNjAyMjkgTCAyMDMuODA4ODI5IDEyOC4wNzU4NSBMIDIwNi41NDc4NjYgMTI5LjkxNDkxNyBMIDIwNy45MjEyOTcgMTMwLjgzNDQ1MSBMIDIxMC42NjAzMzQgMTMyLjY4MTM0NSBMIDIxMi4wMzM3NjUgMTMzLjYwNDc5MSBMIDIxMy40MDMyODQgMTM0LjUyODIzOCBMIDIxNC43NzY3MTUgMTM1LjQ1OTUxIEwgMjE2LjE0NjIzMyAxMzYuMzgyOTU3IEwgMjE3LjUxNTc1MiAxMzcuMzE0MjI5IEwgMjE4Ljg4OTE4MyAxMzguMjQ1NTAyIEwgMjIwLjI1ODcwMSAxMzkuMTcyODYyIEwgMjIxLjYyODIyIDE0MC4xMDQxMzQgTCAyMjMuMDAxNjUxIDE0MS4wMzkzMTkgTCAyMjQuMzcxMTY5IDE0MS45NzQ1MDUgTCAyMjUuNzQ0NjAxIDE0Mi45MDU3NzcgTCAyMjcuMTE0MTE5IDE0My44NDA5NjMgTCAyMjguNDgzNjM3IDE0NC43ODAwNjEgTCAyMjkuODU3MDY5IDE0NS43MTkxNTkgTCAyMzIuNTk2MTA1IDE0Ny41OTczNTYgTCAyMzMuOTY5NTM2IDE0OC41MzY0NTQgTCAyMzUuMzM5MDU1IDE0OS40NzU1NTIgTCAyMzYuNzEyNDg2IDE1MC40MTg1NjQgTCAyMzguMDgyMDA0IDE1MS4zNjE1NzUgTCAyMzkuNDUxNTIzIDE1Mi4zMDA2NzMgTCAyNDAuODI0OTU0IDE1My4yNDc1OTcgTCAyNDIuMTk0NDcyIDE1NC4xOTA2MDggTCAyNDMuNTY3OTA0IDE1NS4xMzM2MiBMIDI0Ni4zMDY5NCAxNTcuMDI3NDY4IEwgMjQ3LjY4MDM3MiAxNTcuOTc0MzkyIEwgMjUwLjQxOTQwOCAxNTkuODY4MjQgTCAyNTEuNzkyODQgMTYwLjgxOTA3NyBMIDI1My4xNjIzNTggMTYxLjc2NjAwMSBMIDI1NC41MzU3ODkgMTYyLjcxNjgzOCBMIDI1Ny4yNzQ4MjYgMTY0LjYxODUxMiBMIDI1OC42NDgyNTcgMTY1LjU2OTM1IEwgMjYwLjAxNzc3NiAxNjYuNTIwMTg3IEwgMjYxLjM4NzI5NCAxNjcuNDc0OTM2IEwgMjYyLjc2MDcyNSAxNjguNDI1NzczIEwgMjY0LjEzMDI0MyAxNjkuMzgwNTIzIEwgMjY1LjUwMzY3NSAxNzAuMzM1MjczIEwgMjY4LjI0MjcxMSAxNzIuMjQ0NzczIEwgMjY5LjYxNjE0MyAxNzMuMTk5NTIzIEwgMjcwLjk4NTY2MSAxNzQuMTU0MjczIEwgMjcyLjM1OTA5MiAxNzUuMTA5MDIzIEwgMjczLjcyODYxMSAxNzYuMDY3Njg2IEwgMjc1LjA5ODEyOSAxNzcuMDIyNDM2IEwgMjc2LjQ3MTU2IDE3Ny45ODEwOTkgTCAyNzcuODQxMDc5IDE3OC45Mzk3NjIgTCAyNzkuMjEwNTk3IDE3OS44OTQ1MTEgTCAyODAuNTg0MDI4IDE4MC44NTMxNzQgTCAyODEuOTUzNTQ3IDE4MS44MTE4MzcgTCAyODMuMzI2OTc4IDE4Mi43NzA1IEwgMjg0LjY5NjQ5NiAxODMuNzI5MTYzIEwgMjg2LjA2NjAxNSAxODQuNjkxNzM5IEwgMjg3LjQzOTQ0NiAxODUuNjUwNDAxIEwgMjg4LjgwODk2NCAxODYuNjA5MDY0IEwgMjkwLjE3ODQ4MyAxODcuNTcxNjQgTCAyOTEuNTUxOTE0IDE4OC41MzAzMDMgTCAyOTIuOTIxNDMyIDE4OS40OTI4NzkgTCAyOTQuMjk0ODYzIDE5MC40NTU0NTQgTCAyOTUuNjY0MzgyIDE5MS40MTQxMTcgTCAyOTcuMDMzOSAxOTIuMzc2NjkzIEwgMjk4LjQwNzMzMSAxOTMuMzM5MjY5IEwgMzAxLjE0NjM2OCAxOTUuMjY0NDIgTCAzMDIuNTE5Nzk5IDE5Ni4yMjY5OTYgTCAzMDMuODg5MzE4IDE5Ny4xODk1NzIgTCAzMDUuMjYyNzQ5IDE5OC4xNTYwNiBMIDMwOC4wMDE3ODYgMjAwLjA4MTIxMiBMIDMwOS4zNzUyMTcgMjAxLjA0Mzc4OCBMIDMxMC43NDQ3MzUgMjAyLjAxMDI3NiBMIDMxMi4xMTgxNjcgMjAyLjk3Mjg1MiBMIDMxMy40ODc2ODUgMjAzLjkzOTM0MSBMIDMxNC44NTcyMDMgMjA0LjkwMTkxNyBMIDMxNi4yMzA2MzUgMjA1Ljg2ODQwNSBMIDMxNy42MDAxNTMgMjA2LjgzNDg5NCBMIDMxOC45Njk2NzEgMjA3Ljc5NzQ3IEwgMzIwLjM0MzEwMiAyMDguNzYzOTU4IEwgMzIxLjcxMjYyMSAyMDkuNzMwNDQ3IEwgMzIzLjA4NjA1MiAyMTAuNjk2OTM2IEwgMzI0LjQ1NTU3IDIxMS42NTk1MTEgTCAzMjUuODI1MDg5IDIxMi42MjYgTCAzMjcuMTk4NTIgMjEzLjU5MjQ4OSBMIDMyOS45Mzc1NTcgMjE1LjUyNTQ2NiBMIDMzMS4zMTA5ODggMjE2LjQ5MTk1NSAiIHRyYW5zZm9ybT0ibWF0cml4KDAuOTk4Mjk4LCAwLCAwLCAtMC45OTgyOTgsIDMuMTgyNTc0LCAyNDcuNzU2MzA5KSIvPgo8cGF0aCBmaWxsPSJub25lIiBzdHJva2Utd2lkdGg9IjAuNzk3MDEiIHN0cm9rZS1saW5lY2FwPSJidXR0IiBzdHJva2UtbGluZWpvaW49Im1pdGVyIiBzdHJva2U9InJnYig3MC45NzkzMDklLCA0NS4wOTU4MjUlLCAzLjkyMTUwOSUpIiBzdHJva2Utb3BhY2l0eT0iMSIgc3Ryb2tlLW1pdGVybGltaXQ9IjEwIiBkPSJNIDIwLjcwODEzOSAxMi44OTkzNTcgTCAyMi4xMjQ2MTIgMTMuNzgzNjc0IEwgMjMuNTQ0OTk4IDE0LjY2Nzk5MiBMIDI0Ljk2MTQ3MSAxNS41NDgzOTYgTCAyNi4zODE4NTggMTYuNDMyNzE0IEwgMjkuMjE0ODA0IDE4LjIwMTM0OSBMIDMwLjYzNTE5IDE5LjA4MTc1NCBMIDMyLjA1MTY2NCAxOS45NjYwNzEgTCAzMy40NzIwNSAyMC44NTAzODkgTCAzNC44ODg1MjMgMjEuNzM0NzA2IEwgMzYuMzA4OTA5IDIyLjYxOTAyNCBMIDM3LjcyNTM4MyAyMy40OTk0MjkgTCAzOS4xNDU3NjkgMjQuMzgzNzQ2IEwgNDAuNTYyMjQyIDI1LjI2ODA2NCBMIDQxLjk4MjYyOCAyNi4xNTIzODEgTCA0My4zOTkxMDEgMjcuMDM2Njk5IEwgNDQuODE5NDg4IDI3LjkxNzEwNCBMIDQ3LjY1MjQzNCAyOS42ODU3MzkgTCA0OS4wNzI4MiAzMC41NzAwNTYgTCA1MC40ODkyOTQgMzEuNDU0Mzc0IEwgNTEuOTA5NjggMzIuMzM0Nzc4IEwgNTMuMzI2MTUzIDMzLjIxOTA5NiBMIDU0Ljc0NjUzOSAzNC4xMDM0MTQgTCA1Ni4xNjMwMTIgMzQuOTg3NzMxIEwgNTcuNTgzMzk5IDM1Ljg3MjA0OSBMIDU4Ljk5OTg3MiAzNi43NTI0NTMgTCA2MC40MjAyNTggMzcuNjM2NzcxIEwgNjEuODM2NzMxIDM4LjUyMTA4OCBMIDYzLjI1NzExOCAzOS40MDU0MDYgTCA2NC42NzM1OTEgNDAuMjg5NzI0IEwgNjYuMDkwMDY0IDQxLjE3MDEyOCBMIDY3LjUxMDQ1IDQyLjA1NDQ0NiBMIDY4LjkyNjkyMyA0Mi45Mzg3NjMgTCA3MC4zNDczMSA0My44MjMwODEgTCA3MS43NjM3ODMgNDQuNzAzNDg2IEwgNzMuMTg0MTY5IDQ1LjU4NzgwMyBMIDc0LjYwMDY0MiA0Ni40NzIxMjEgTCA3Ni4wMjEwMjkgNDcuMzU2NDM4IEwgNzcuNDM3NTAyIDQ4LjI0MDc1NiBMIDc4Ljg1Nzg4OCA0OS4xMjExNjEgTCA4MC4yNzQzNjEgNTAuMDA1NDc4IEwgODEuNjk0NzQ3IDUwLjg4OTc5NiBMIDg0LjUyNzY5NCA1Mi42NTg0MzEgTCA4NS45NDgwOCA1My41Mzg4MzUgTCA4Ny4zNjQ1NTMgNTQuNDIzMTUzIEwgODguNzg0OTQgNTUuMzA3NDcxIEwgOTAuMjAxNDEzIDU2LjE5MTc4OCBMIDkxLjYyMTc5OSA1Ny4wNzYxMDYgTCA5My4wMzgyNzIgNTcuOTU2NTEgTCA5NC40NTg2NTggNTguODQwODI4IEwgOTUuODc1MTMyIDU5LjcyNTE0NSBMIDk3LjI5NTUxOCA2MC42MDk0NjMgTCA5OC43MTE5OTEgNjEuNDkzNzgxIEwgMTAwLjEzMjM3NyA2Mi4zNzQxODUgTCAxMDIuOTY1MzI0IDY0LjE0MjgyIEwgMTA0LjM4NTcxIDY1LjAyNzEzOCBMIDEwNS44MDIxODMgNjUuOTA3NTQzIEwgMTA3LjIyMjU3IDY2Ljc5MTg2IEwgMTA4LjYzOTA0MyA2Ny42NzYxNzggTCAxMTAuMDU5NDI5IDY4LjU2MDQ5NSBMIDExMS40NzU5MDIgNjkuNDQ0ODEzIEwgMTEyLjg5NjI4OCA3MC4zMjUyMTggTCAxMTQuMzEyNzYyIDcxLjIwOTUzNSBMIDExNS43MzMxNDggNzIuMDkzODUzIEwgMTE3LjE0OTYyMSA3Mi45NzgxNyBMIDExOC41NzAwMDcgNzMuODYyNDg4IEwgMTE5Ljk4NjQ4MSA3NC43NDI4OTIgTCAxMjEuNDAyOTU0IDc1LjYyNzIxIEwgMTIyLjgyMzM0IDc2LjUxMTUyOCBMIDEyNC4yMzk4MTMgNzcuMzk1ODQ1IEwgMTI1LjY2MDE5OSA3OC4yODAxNjMgTCAxMjcuMDc2NjczIDc5LjE2MDU2NyBMIDEyOC40OTcwNTkgODAuMDQ0ODg1IEwgMTI5LjkxMzUzMiA4MC45MjkyMDIgTCAxMzEuMzMzOTE4IDgxLjgxMzUyIEwgMTMyLjc1MDM5MiA4Mi42OTc4MzggTCAxMzQuMTcwNzc4IDgzLjU3ODI0MiBMIDEzNS41ODcyNTEgODQuNDYyNTYgTCAxMzcuMDA3NjM3IDg1LjM0Njg3NyBMIDEzOC40MjQxMSA4Ni4yMzExOTUgTCAxMzkuODQwNTg0IDg3LjExMTYgTCAxNDEuMjYwOTcgODcuOTk1OTE3IEwgMTQyLjY3NzQ0MyA4OC44ODAyMzUgTCAxNDQuMDk3ODI5IDg5Ljc2NDU1MiBMIDE0NS41MTQzMDMgOTAuNjQ4ODcgTCAxNDYuOTM0Njg5IDkxLjUyOTI3NSBMIDE0OC4zNTExNjIgOTIuNDEzNTkyIEwgMTQ5Ljc3MTU0OCA5My4yOTc5MSBMIDE1MS4xODgwMjEgOTQuMTgyMjI3IEwgMTUyLjYwODQwOCA5NS4wNjY1NDUgTCAxNTQuMDI0ODgxIDk1Ljk0Njk0OSBMIDE1NS40NDUyNjcgOTYuODMxMjY3IEwgMTU4LjI3ODIxNCA5OC41OTk5MDIgTCAxNTkuNjk4NiA5OS40ODQyMiBMIDE2MS4xMTUwNzMgMTAwLjM2NDYyNCBMIDE2Mi41MzU0NTkgMTAxLjI0ODk0MiBMIDE2My45NTE5MzMgMTAyLjEzMzI1OSBMIDE2NS4zNzIzMTkgMTAzLjAxNzU3NyBMIDE2Ni43ODg3OTIgMTAzLjkwMTg5NSBMIDE2OC4yMDkxNzggMTA0Ljc4MjI5OSBMIDE2OS42MjU2NTEgMTA1LjY2NjYxNyBMIDE3MS4wNDYwMzggMTA2LjU1MDkzNCBMIDE3Mi40NjI1MTEgMTA3LjQzNTI1MiBMIDE3My44ODI4OTcgMTA4LjMxNTY1NyBMIDE3Ni43MTU4NDQgMTEwLjA4NDI5MiBMIDE3OC4xMzYyMyAxMTAuOTY4NjA5IEwgMTc5LjU1MjcwMyAxMTEuODUyOTI3IEwgMTgwLjk3MzA4OSAxMTIuNzMzMzMyIEwgMTgyLjM4OTU2MiAxMTMuNjE3NjQ5IEwgMTgzLjgwOTk0OSAxMTQuNTAxOTY3IEwgMTg1LjIyNjQyMiAxMTUuMzg2Mjg0IEwgMTg2LjY0NjgwOCAxMTYuMjcwNjAyIEwgMTg4LjA2MzI4MSAxMTcuMTUxMDA2IEwgMTg5LjQ4MzY2OCAxMTguMDM1MzI0IEwgMTkwLjkwMDE0MSAxMTguOTE5NjQyIEwgMTkyLjMyMDUyNyAxMTkuODAzOTU5IEwgMTkzLjczNyAxMjAuNjg4Mjc3IEwgMTk1LjE1MzQ3MyAxMjEuNTY4NjgxIEwgMTk2LjU3Mzg2IDEyMi40NTI5OTkgTCAxOTcuOTkwMzMzIDEyMy4zMzczMTYgTCAxOTkuNDEwNzE5IDEyNC4yMjE2MzQgTCAyMDAuODI3MTkyIDEyNS4xMDU5NTIgTCAyMDIuMjQ3NTc5IDEyNS45ODYzNTYgTCAyMDMuNjY0MDUyIDEyNi44NzA2NzQgTCAyMDUuMDg0NDM4IDEyNy43NTQ5OTEgTCAyMDYuNTAwOTExIDEyOC42MzkzMDkgTCAyMDcuOTIxMjk3IDEyOS41MTk3MTQgTCAyMDkuMzM3NzcxIDEzMC40MDQwMzEgTCAyMTAuNzU4MTU3IDEzMS4yODgzNDkgTCAyMTMuNTkxMTAzIDEzMy4wNTY5ODQgTCAyMTUuMDExNDkgMTMzLjkzNzM4OCBMIDIxNi40Mjc5NjMgMTM0LjgyMTcwNiBMIDIxNy44NDgzNDkgMTM1LjcwNjAyNCBMIDIxOS4yNjQ4MjIgMTM2LjU5MDM0MSBMIDIyMC42ODUyMDggMTM3LjQ3NDY1OSBMIDIyMi4xMDE2ODIgMTM4LjM1NTA2MyBMIDIyMy41MjIwNjggMTM5LjIzOTM4MSBMIDIyNC45Mzg1NDEgMTQwLjEyMzY5OSBMIDIyNi4zNTg5MjcgMTQxLjAwODAxNiBMIDIyNy43NzU0MDEgMTQxLjg5MjMzNCBMIDIyOS4xOTU3ODcgMTQyLjc3MjczOCBMIDIzMi4wMjg3MzMgMTQ0LjU0MTM3MyBMIDIzMy40NDkxMiAxNDUuNDI1NjkxIEwgMjM0Ljg2NTU5MyAxNDYuMzEwMDA5IEwgMjM2LjI4NTk3OSAxNDcuMTkwNDEzIEwgMjM3LjcwMjQ1MiAxNDguMDc0NzMxIEwgMjM5LjEyMjgzOCAxNDguOTU5MDQ4IEwgMjQwLjUzOTMxMiAxNDkuODQzMzY2IEwgMjQxLjk1OTY5OCAxNTAuNzI3NjgzIEwgMjQzLjM3NjE3MSAxNTEuNjA4MDg4IEwgMjQ0Ljc5NjU1NyAxNTIuNDkyNDA2IEwgMjQ2LjIxMzAzMSAxNTMuMzc2NzIzIEwgMjQ3LjYzMzQxNyAxNTQuMjYxMDQxIEwgMjQ5LjA0OTg5IDE1NS4xNDE0NDUgTCAyNTAuNDY2MzYzIDE1Ni4wMjU3NjMgTCAyNTEuODg2NzQ5IDE1Ni45MTAwODEgTCAyNTMuMzAzMjIzIDE1Ny43OTQzOTggTCAyNTQuNzIzNjA5IDE1OC42Nzg3MTYgTCAyNTYuMTQwMDgyIDE1OS41NTkxMiBMIDI1Ny41NjA0NjggMTYwLjQ0MzQzOCBMIDI1OC45NzY5NDIgMTYxLjMyNzc1NiBMIDI2MC4zOTczMjggMTYyLjIxMjA3MyBMIDI2MS44MTM4MDEgMTYzLjA5NjM5MSBMIDI2My4yMzQxODcgMTYzLjk3Njc5NSBMIDI2NC42NTA2NiAxNjQuODYxMTEzIEwgMjY2LjA3MTA0NyAxNjUuNzQ1NDMgTCAyNjguOTAzOTkzIDE2Ny41MTQwNjYgTCAyNzAuMzI0Mzc5IDE2OC4zOTQ0NyBMIDI3MS43NDA4NTMgMTY5LjI3ODc4OCBMIDI3My4xNjEyMzkgMTcwLjE2MzEwNSBMIDI3NC41Nzc3MTIgMTcxLjA0NzQyMyBMIDI3NS45OTgwOTggMTcxLjkzMTc0IEwgMjc3LjQxNDU3MiAxNzIuODEyMTQ1IEwgMjc4LjgzNDk1OCAxNzMuNjk2NDYzIEwgMjgwLjI1MTQzMSAxNzQuNTgwNzggTCAyODEuNjcxODE3IDE3NS40NjUwOTggTCAyODMuMDg4MjkgMTc2LjM0NTUwMiBMIDI4NC41MDg2NzcgMTc3LjIyOTgyIEwgMjg3LjM0MTYyMyAxNzguOTk4NDU1IEwgMjg4Ljc2MjAwOSAxNzkuODgyNzczIEwgMjkwLjE3ODQ4MyAxODAuNzYzMTc3IEwgMjkxLjU5ODg2OSAxODEuNjQ3NDk1IEwgMjkzLjAxNTM0MiAxODIuNTMxODEzIEwgMjk0LjQzNTcyOCAxODMuNDE2MTMgTCAyOTUuODUyMjAxIDE4NC4zMDA0NDggTCAyOTcuMjcyNTg4IDE4NS4xODA4NTIgTCAyOTguNjg5MDYxIDE4Ni4wNjUxNyBMIDMwMC4xMDk0NDcgMTg2Ljk0OTQ4NyBMIDMwMi45NDIzOTQgMTg4LjcxODEyMyBMIDMwNC4zNjI3OCAxODkuNTk4NTI3IEwgMzA1Ljc3OTI1MyAxOTAuNDgyODQ1IEwgMzA3LjE5OTYzOSAxOTEuMzY3MTYyIEwgMzA4LjYxNjExMiAxOTIuMjUxNDggTCAzMTAuMDM2NDk5IDE5My4xMzU3OTcgTCAzMTEuNDUyOTcyIDE5NC4wMTYyMDIgTCAzMTIuODczMzU4IDE5NC45MDA1MiBMIDMxNC4yODk4MzEgMTk1Ljc4NDgzNyBMIDMxNS43MTAyMTggMTk2LjY2OTE1NSBMIDMxNy4xMjY2OTEgMTk3LjU0OTU1OSBMIDMxOC41NDcwNzcgMTk4LjQzMzg3NyBMIDMxOS45NjM1NSAxOTkuMzE4MTk1IEwgMzIxLjM4MzkzNiAyMDAuMjAyNTEyIEwgMzIyLjgwMDQxIDIwMS4wODY4MyBMIDMyNC4yMTY4ODMgMjAxLjk2NzIzNCBMIDMyNS42MzcyNjkgMjAyLjg1MTU1MiBMIDMyNy4wNTM3NDIgMjAzLjczNTg3IEwgMzI4LjQ3NDEyOSAyMDQuNjIwMTg3IEwgMzI5Ljg5MDYwMiAyMDUuNTA0NTA1IEwgMzMxLjMxMDk4OCAyMDYuMzg0OTA5ICIgdHJhbnNmb3JtPSJtYXRyaXgoMC45OTgyOTgsIDAsIDAsIC0wLjk5ODI5OCwgMy4xODI1NzQsIDI0Ny43NTYzMDkpIi8+CjxnIGZpbGw9InJnYigwJSwgMCUsIDAlKSIgZmlsbC1vcGFjaXR5PSIxIj4KPHVzZSB4bGluazpocmVmPSIjZ2x5cGgtMS0wIiB4PSIxMzcuOTUyODExIiB5PSIxNDEuNjIwMjU1Ii8+CjwvZz4KPGcgZmlsbD0icmdiKDAlLCAwJSwgMCUpIiBmaWxsLW9wYWNpdHk9IjEiPgo8dXNlIHhsaW5rOmhyZWY9IiNnbHlwaC0yLTAiIHg9IjE0MS41MzA1ODEiIHk9IjE0MS42MjAyNTUiLz4KPC9nPgo8ZyBmaWxsPSJyZ2IoMCUsIDAlLCAwJSkiIGZpbGwtb3BhY2l0eT0iMSI+Cjx1c2UgeGxpbms6aHJlZj0iI2dseXBoLTEtMSIgeD0iMTQ3LjMzODA4MSIgeT0iMTQxLjYyMDI1NSIvPgo8L2c+CjxnIGZpbGw9InJnYigwJSwgMCUsIDAlKSIgZmlsbC1vcGFjaXR5PSIxIj4KPHVzZSB4bGluazpocmVmPSIjZ2x5cGgtMi0wIiB4PSIxNTIuOTYzODcyIiB5PSIxNDEuNjIwMjU1Ii8+CjwvZz4KPGcgZmlsbD0icmdiKDAlLCAwJSwgMCUpIiBmaWxsLW9wYWNpdHk9IjEiPgo8dXNlIHhsaW5rOmhyZWY9IiNnbHlwaC0xLTIiIHg9IjE1Ny4yNDA3MjciIHk9IjE0MS42MjAyNTUiLz4KPC9nPgo8ZyBmaWxsPSJyZ2IoMCUsIDAlLCAwJSkiIGZpbGwtb3BhY2l0eT0iMSI+Cjx1c2UgeGxpbms6aHJlZj0iI2dseXBoLTMtMCIgeD0iNzkuMDQ1MjQiIHk9IjE5MC40ODA5NTUiLz4KPC9nPgo8ZyBmaWxsPSJyZ2IoMCUsIDAlLCAwJSkiIGZpbGwtb3BhY2l0eT0iMSI+Cjx1c2UgeGxpbms6aHJlZj0iI2dseXBoLTEtMyIgeD0iODMuMjYyMDUxIiB5PSIxOTcuNzExNjI4Ii8+CjwvZz4KPGcgZmlsbD0icmdiKDAlLCAwJSwgMCUpIiBmaWxsLW9wYWNpdHk9IjEiPgo8dXNlIHhsaW5rOmhyZWY9IiNnbHlwaC0xLTEiIHg9Ijg5LjM5MjY4NiIgeT0iMTk3LjcxMTYyOCIvPgo8L2c+CjxnIGZpbGw9InJnYigwJSwgMCUsIDAlKSIgZmlsbC1vcGFjaXR5PSIxIj4KPHVzZSB4bGluazpocmVmPSIjZ2x5cGgtNC0wIiB4PSI5Ni4yMTA5NzUiIHk9IjE5NC4wNDQ4NzkiLz4KPC9nPgo8cGF0aCBmaWxsPSJub25lIiBzdHJva2Utd2lkdGg9IjAuMzc5IiBzdHJva2UtbGluZWNhcD0iYnV0dCIgc3Ryb2tlLWxpbmVqb2luPSJtaXRlciIgc3Ryb2tlPSJyZ2IoMCUsIDAlLCAwJSkiIHN0cm9rZS1vcGFjaXR5PSIxIiBzdHJva2UtbWl0ZXJsaW1pdD0iMTAiIGQ9Ik0gLTAuMDAwMDM3MTQ1NCAwLjAwMTc4ODM4IEwgMy42NTQ2MiAwLjAwMTc4ODM4ICIgdHJhbnNmb3JtPSJtYXRyaXgoMC45OTgyOTgsIDAsIDAsIC0wLjk5ODI5OCwgOTYuMjEwOTc1LCAxOTUuNDc0NDQyKSIvPgo8ZyBmaWxsPSJyZ2IoMCUsIDAlLCAwJSkiIGZpbGwtb3BhY2l0eT0iMSI+Cjx1c2UgeGxpbms6aHJlZj0iI2dseXBoLTQtMSIgeD0iOTYuMjEwOTc1IiB5PSIyMDAuNzQ5NDQ4Ii8+CjwvZz4KPGcgZmlsbD0icmdiKDAlLCAwJSwgMCUpIiBmaWxsLW9wYWNpdHk9IjEiPgo8dXNlIHhsaW5rOmhyZWY9IiNnbHlwaC0zLTEiIHg9IjEwMS4wNTA3MjQiIHk9IjE5MC40ODA5NTUiLz4KPC9nPgo8cGF0aCBmaWxsLXJ1bGU9Im5vbnplcm8iIGZpbGw9InJnYigwJSwgMCUsIDAlKSIgZmlsbC1vcGFjaXR5PSIxIiBzdHJva2Utd2lkdGg9IjAuMzk4NSIgc3Ryb2tlLWxpbmVjYXA9ImJ1dHQiIHN0cm9rZS1saW5lam9pbj0ibWl0ZXIiIHN0cm9rZT0icmdiKDAlLCAwJSwgMCUpIiBzdHJva2Utb3BhY2l0eT0iMSIgc3Ryb2tlLW1pdGVybGltaXQ9IjEwIiBkPSJNIDE2My4wMjA2NiAxMDAuNTU2MzU3IEMgMTYzLjAyMDY2IDEwMS40MzY3NjIgMTYyLjMwNDU5OCAxMDIuMTUyODI0IDE2MS40MjQxOTMgMTAyLjE1MjgyNCBDIDE2MC41NDM3ODggMTAyLjE1MjgyNCAxNTkuODMxNjM5IDEwMS40MzY3NjIgMTU5LjgzMTYzOSAxMDAuNTU2MzU3IEMgMTU5LjgzMTYzOSA5OS42NzU5NTIgMTYwLjU0Mzc4OCA5OC45NjM4MDMgMTYxLjQyNDE5MyA5OC45NjM4MDMgQyAxNjIuMzA0NTk4IDk4Ljk2MzgwMyAxNjMuMDIwNjYgOTkuNjc1OTUyIDE2My4wMjA2NiAxMDAuNTU2MzU3IFogTSAxNjMuMDIwNjYgMTAwLjU1NjM1NyAiIHRyYW5zZm9ybT0ibWF0cml4KDAuOTk4Mjk4LCAwLCAwLCAtMC45OTgyOTgsIDMuMTgyNTc0LCAyNDcuNzU2MzA5KSIvPgo8cGF0aCBmaWxsLXJ1bGU9Im5vbnplcm8iIGZpbGw9InJnYigwJSwgMCUsIDAlKSIgZmlsbC1vcGFjaXR5PSIxIiBzdHJva2Utd2lkdGg9IjAuMzk4NSIgc3Ryb2tlLWxpbmVjYXA9ImJ1dHQiIHN0cm9rZS1saW5lam9pbj0ibWl0ZXIiIHN0cm9rZT0icmdiKDAlLCAwJSwgMCUpIiBzdHJva2Utb3BhY2l0eT0iMSIgc3Ryb2tlLW1pdGVybGltaXQ9IjEwIiBkPSJNIDc0LjA2ODQ4NyA2MS4yNzA3NDUgQyA3NC4wNjg0ODcgNjIuMTUxMTQ5IDczLjM1NjMzNyA2Mi44NjMyOTkgNzIuNDc1OTMyIDYyLjg2MzI5OSBDIDcxLjU5NTUyOCA2Mi44NjMyOTkgNzAuODc5NDY1IDYyLjE1MTE0OSA3MC44Nzk0NjUgNjEuMjcwNzQ1IEMgNzAuODc5NDY1IDYwLjM5MDM0IDcxLjU5NTUyOCA1OS42NzgxOTEgNzIuNDc1OTMyIDU5LjY3ODE5MSBDIDczLjM1NjMzNyA1OS42NzgxOTEgNzQuMDY4NDg3IDYwLjM5MDM0IDc0LjA2ODQ4NyA2MS4yNzA3NDUgWiBNIDc0LjA2ODQ4NyA2MS4yNzA3NDUgIiB0cmFuc2Zvcm09Im1hdHJpeCgwLjk5ODI5OCwgMCwgMCwgLTAuOTk4Mjk4LCAzLjE4MjU3NCwgMjQ3Ljc1NjMwOSkiLz4KPGcgZmlsbD0icmdiKDAlLCAwJSwgMCUpIiBmaWxsLW9wYWNpdHk9IjEiPgo8dXNlIHhsaW5rOmhyZWY9IiNnbHlwaC01LTAiIHg9IjM0NS4zOTkxNDYiIHk9IjIzMS4zNjYyNTEiLz4KPC9nPgo8ZyBmaWxsPSJyZ2IoMCUsIDAlLCAwJSkiIGZpbGwtb3BhY2l0eT0iMSI+Cjx1c2UgeGxpbms6aHJlZj0iI2dseXBoLTUtMSIgeD0iMjcuMzY3MzQzIiB5PSIxNy4zMjYxNTgiLz4KPC9nPgo8cGF0aCBmaWxsLXJ1bGU9Im5vbnplcm8iIGZpbGw9InJnYigxMDAlLCAxMDAlLCAxMDAlKSIgZmlsbC1vcGFjaXR5PSIxIiBzdHJva2Utd2lkdGg9IjAuMzk4NSIgc3Ryb2tlLWxpbmVjYXA9ImJ1dHQiIHN0cm9rZS1saW5lam9pbj0ibWl0ZXIiIHN0cm9rZT0icmdiKDAlLCAwJSwgMCUpIiBzdHJva2Utb3BhY2l0eT0iMSIgc3Ryb2tlLW1pdGVybGltaXQ9IjEwIiBkPSJNIDEwLjc1NzYxIDIwMi44ODI4NTUgTCA4Ni44OTUwMDQgMjAyLjg4Mjg1NSBMIDg2Ljg5NTAwNCAyMzEuMjc0OTI3IEwgMTAuNzU3NjEgMjMxLjI3NDkyNyBaIE0gMTAuNzU3NjEgMjAyLjg4Mjg1NSAiIHRyYW5zZm9ybT0ibWF0cml4KDAuOTk4Mjk4LCAwLCAwLCAtMC45OTgyOTgsIDMuMTgyNTc0LCAyNDcuNzU2MzA5KSIvPgo8cGF0aCBmaWxsPSJub25lIiBzdHJva2Utd2lkdGg9IjEuMTk1NTMiIHN0cm9rZS1saW5lY2FwPSJidXR0IiBzdHJva2UtbGluZWpvaW49Im1pdGVyIiBzdHJva2U9InJnYigxMi4xNTY2NzclLCAzMC41ODc3NjklLCA0Ny40NTE3ODIlKSIgc3Ryb2tlLW9wYWNpdHk9IjEiIHN0cm9rZS1taXRlcmxpbWl0PSIxMCIgZD0iTSAtMC4wMDAyNTIxOSAwLjAwMDExNzE5MiBMIDE3LjAwOTE2NiAwLjAwMDExNzE5MiAiIHRyYW5zZm9ybT0ibWF0cml4KDAuOTk4Mjk4LCAwLCAwLCAtMC45OTgyOTgsIDE3LjUwNDE1OCwgMjQuOTU3MTQ4KSIvPgo8ZyBmaWxsPSJyZ2IoMCUsIDAlLCAwJSkiIGZpbGwtb3BhY2l0eT0iMSI+Cjx1c2UgeGxpbms6aHJlZj0iI2dseXBoLTEtMCIgeD0iNTEuNzY4NzQyIiB5PSIyNy41Njc2OTgiLz4KPC9nPgo8ZyBmaWxsPSJyZ2IoMCUsIDAlLCAwJSkiIGZpbGwtb3BhY2l0eT0iMSI+Cjx1c2UgeGxpbms6aHJlZj0iI2dseXBoLTItMSIgeD0iNTUuMzQ2NTEyIiB5PSIyNy41Njc2OTgiLz4KPC9nPgo8ZyBmaWxsPSJyZ2IoMCUsIDAlLCAwJSkiIGZpbGwtb3BhY2l0eT0iMSI+Cjx1c2UgeGxpbms6aHJlZj0iI2dseXBoLTYtMCIgeD0iNjEuOTEyNDQ4IiB5PSIyOC42Mjg4ODgiLz4KPC9nPgo8ZyBmaWxsPSJyZ2IoMCUsIDAlLCAwJSkiIGZpbGwtb3BhY2l0eT0iMSI+Cjx1c2UgeGxpbms6aHJlZj0iI2dseXBoLTEtMiIgeD0iNjYuNjc4MzIzIiB5PSIyNy41Njc2OTgiLz4KPC9nPgo8cGF0aCBmaWxsPSJub25lIiBzdHJva2Utd2lkdGg9IjAuNzk3MDEiIHN0cm9rZS1saW5lY2FwPSJidXR0IiBzdHJva2UtbGluZWpvaW49Im1pdGVyIiBzdHJva2U9InJnYig3MC45NzkzMDklLCA0NS4wOTU4MjUlLCAzLjkyMTUwOSUpIiBzdHJva2Utb3BhY2l0eT0iMSIgc3Ryb2tlLW1pdGVybGltaXQ9IjEwIiBkPSJNIC0wLjAwMDI1MjE5IC0wLjAwMDI0Nzc3NSBMIDE3LjAwOTE2NiAtMC4wMDAyNDc3NzUgIiB0cmFuc2Zvcm09Im1hdHJpeCgwLjk5ODI5OCwgMCwgMCwgLTAuOTk4Mjk4LCAxNy41MDQxNTgsIDM3LjE0MDM3OCkiLz4KPGcgZmlsbD0icmdiKDAlLCAwJSwgMCUpIiBmaWxsLW9wYWNpdHk9IjEiPgo8dXNlIHhsaW5rOmhyZWY9IiNnbHlwaC0xLTAiIHg9IjM3LjA2ODgwMyIgeT0iMzkuNzUwOTI3Ii8+Cjx1c2UgeGxpbms6aHJlZj0iI2dseXBoLTEtNCIgeD0iNDAuNjQ2NTc0IiB5PSIzOS43NTA5MjciLz4KPHVzZSB4bGluazpocmVmPSIjZ2x5cGgtMS0yIiB4PSI0OC4zMTMyMjUiIHk9IjM5Ljc1MDkyNyIvPgo8L2c+CjxnIGZpbGw9InJnYigwJSwgMCUsIDAlKSIgZmlsbC1vcGFjaXR5PSIxIj4KPHVzZSB4bGluazpocmVmPSIjZ2x5cGgtMS01IiB4PSI1NC40NDIwNyIgeT0iMzkuNzUwOTI3Ii8+CjwvZz4KPGcgZmlsbD0icmdiKDAlLCAwJSwgMCUpIiBmaWxsLW9wYWNpdHk9IjEiPgo8dXNlIHhsaW5rOmhyZWY9IiNnbHlwaC0yLTIiIHg9IjYyLjYxODkzNiIgeT0iMzkuNzUwOTI3Ii8+CjwvZz4KPGcgZmlsbD0icmdiKDAlLCAwJSwgMCUpIiBmaWxsLW9wYWNpdHk9IjEiPgo8dXNlIHhsaW5rOmhyZWY9IiNnbHlwaC0xLTYiIHg9IjcwLjAzMjI3IiB5PSIzOS43NTA5MjciLz4KPC9nPgo8ZyBmaWxsPSJyZ2IoMCUsIDAlLCAwJSkiIGZpbGwtb3BhY2l0eT0iMSI+Cjx1c2UgeGxpbms6aHJlZj0iI2dseXBoLTItMyIgeD0iNzkuNzM4ODg2IiB5PSIzOS43NTA5MjciLz4KPC9nPgo8L3N2Zz4K" class="max-w-full" alt="Figure" /></div>
            \end{center}

        
        
            

**6.a)** \textit{Montrer que $H:x\mapsto x\ln x-x$ est une primitive de $h:x\mapsto\ln x$.}

            \begin{rappel}
                Il suffit de vérifier que $H'(x)=h(x)$.
            \end{rappel}
            $(x\ln x)'=1\cdot\ln x+x\cdot\dfrac1x=\ln x+1$, donc
            \[
                H'(x)=(\ln x+1)-1=\ln x=h(x).
            \]
            <div class="my-2 font-semibold" style="color:#1F4E79">⇒ $H$ est une primitive de $h$ sur $]0,+\infty[$.</div>

**6.b)** \textit{Par intégration par parties, montrer $\displaystyle\int_1^e(\ln x)^2\dx=e-2$.}

            \begin{rappel}
                Intégration par parties : $\displaystyle\int_a^b u\,v'=\bigl[u\,v\bigr]_a^b-\int_a^b u'\,v$.
            \end{rappel}
            On pose $u(x)=(\ln x)^2$ et $v'(x)=1$, d'où $u'(x)=\dfrac{2\ln x}{x}$ et $v(x)=x$. Alors
            \[
                \int_1^e(\ln x)^2\dx=\Bigl[x(\ln x)^2\Bigr]_1^e-\int_1^e x\cdot\frac{2\ln x}{x}\dx
                =\Bigl[x(\ln x)^2\Bigr]_1^e-2\int_1^e\ln x\dx.
            \]
            Le crochet : $\bigl[x(\ln x)^2\bigr]_1^e=e\cdot1-1\cdot0=e$. Et, grâce à 6.a,
            \[
                \int_1^e\ln x\dx=\bigl[x\ln x-x\bigr]_1^e=(e-e)-(0-1)=1.
            \]
            Finalement :
            \[
                \int_1^e(\ln x)^2\dx=e-2\times1=\boxed{e-2}.
            \]

**6.c)** \textit{Aire (en cm$^2$) du domaine limité par $(C_f)$, $(\Delta)$, $x=1$ et $x=e$.}

            \begin{rappel}
                Sur $[1,e]$, $f(x)\ge x$ (question 5.a) : l'aire vaut $\displaystyle\int_1^e\bigl(f(x)-x\bigr)\dx$
                unités d'aire, et ici $1$ u.a. $=1$ cm$^2$.
            \end{rappel}
            \[
                \int_1^e\bigl(f(x)-x\bigr)\dx=\int_1^e\frac12\dx-\int_1^e\ln x\dx+\frac12\int_1^e(\ln x)^2\dx.
            \]
            On reprend les valeurs déjà calculées :
            $\displaystyle\int_1^e\frac12\dx=\frac12(e-1)$, $\displaystyle\int_1^e\ln x\dx=1$,
            $\displaystyle\int_1^e(\ln x)^2\dx=e-2$. Donc
            \[
                \mathcal A=\frac12(e-1)-1+\frac12(e-2)=\Big(\frac e2-\frac12\Big)-1+\Big(\frac e2-1\Big)
                =\boxed{\Big(e-\frac52\Big)\ \text{cm}^2}\approx0{,}22\ \text{cm}^2.
            \]

    

    <div class="mt-6 mb-2 text-base font-bold" style="color:#1F4E79">Deuxième partie</div>

    Soit $(u_n)$ définie par $u_0=1$ et $u_{n+1}=f(u_n)$ pour tout $n\in\N$.

    
        
        
            

**1.a)** \textit{Montrer par récurrence que $1\le u_n\le e$ pour tout $n\in\N$.}

            \begin{methode}
                Récurrence : on vérifie au rang $0$ (\emph{initialisation}), puis on suppose la propriété
                vraie au rang $n$ pour la démontrer au rang $n+1$ (\emph{hérédité}).
            \end{methode}
            \textbf{Initialisation.} $u_0=1$, et $1\le1\le e$ (vrai car $e\approx2{,}72\ge1$). Vrai au rang $0$.\\[2pt]
            \textbf{Hérédité.} Supposons $1\le u_n\le e$. D'après le tableau de variations, $f$ est croissante
            sur $[1,+\infty[$, donc sur $[1,e]$. En appliquant $f$ (qui conserve l'ordre) :
            \[
                f(1)\le f(u_n)\le f(e).
            \]
            Or $f(1)=\tfrac32$ et $f(e)=e$ (car $f(e)-e=\tfrac12(\ln e-1)^2=\tfrac12(1-1)^2=0$), et $u_{n+1}=f(u_n)$. Donc
            \[
                \tfrac32\le u_{n+1}\le e,\qquad\text{et comme }\tfrac32\ge1:\quad 1\le u_{n+1}\le e.
            \]
            <div class="my-2 font-semibold" style="color:#1F4E79">⇒ Par récurrence, $1\le u_n\le e$ pour tout $n\in\N$.</div>

**1.b)** \textit{Montrer que $(u_n)$ est croissante.}

            On étudie le signe de $u_{n+1}-u_n$ :
            \[
                u_{n+1}-u_n=f(u_n)-u_n=\frac12(\ln u_n-1)^2\ge0\qquad(\text{question 5.a}).
            \]
            <div class="my-2 font-semibold" style="color:#1F4E79">⇒ La suite $(u_n)$ est croissante.</div>

**1.c)** \textit{En déduire que $(u_n)$ converge.}

            \begin{rappel}
                Théorème de la limite monotone : toute suite \textbf{croissante et majorée} converge.
            \end{rappel}
            $(u_n)$ est croissante (b) et majorée par $e$ (a).
            <div class="my-2 font-semibold" style="color:#1F4E79">⇒ La suite $(u_n)$ converge.</div>

        

**2)** \textit{Calculer la limite de $(u_n)$.}

        Notons $\ell$ la limite (elle existe d'après 1.c). On rassemble trois arguments :
[leftmargin=1.6em,itemsep=2pt,topsep=2pt]

- en passant à la limite dans $1\le u_n\le e$, on obtient $1\le\ell\le e$ (donc $\ell>0$) ;
- $f$ est continue sur $]0,+\infty[$ ;
- en passant à la limite dans $u_{n+1}=f(u_n)$, on obtient $\ell=f(\ell)$.
        Il reste à résoudre $f(\ell)=\ell$, c'est-à-dire $f(\ell)-\ell=0$. Or $f(\ell)-\ell=\frac12(\ln\ell-1)^2$, donc
        \[
            \frac12(\ln\ell-1)^2=0\iff \ln\ell-1=0\iff\ln\ell=1\iff\ell=e,
        \]
        et $e\in[1,e]$ : c'est cohérent.
        <div class="my-2 font-semibold" style="color:#1F4E79">⇒ $\displaystyle\lim_{n\to+\infty}u_n=\boxed{e}$.</div>
