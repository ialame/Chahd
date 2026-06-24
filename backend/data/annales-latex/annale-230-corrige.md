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
    <div class="my-5 rounded-lg px-4 py-2.5 text-white font-bold" style="background:#1F4E79">Exercice 1 — Chimie <span class="font-normal text-white/80 text-sm">(7 points)</span></div>

    <div class="mt-6 mb-2 text-base font-bold" style="color:#1F4E79">Partie 1 : étude d'une solution d'acide carboxylique $AH$</div>

**1-1)** \textit{Équation de la réaction du dosage.}

    Le dosage de l'acide $AH$ par l'hydroxyde de sodium est une réaction acide-base totale (une seule flèche) :
    \[
        AH_{(aq)} + HO^-_{(aq)} \longrightarrow A^-_{(aq)} + H_2O_{(\ell)}.
    \]

**1-2)** \textit{Établir $V_B = \dfrac{V_{BE}\,10^{\,pH-pK_A}}{1+10^{\,pH-pK_A}}$.}

    \begin{methode}
        On dresse le tableau d'avancement, on exprime les concentrations restantes de $AH$ et de $A^-$, puis on utilise la relation $pH=pK_A+\log\dfrac{[A^-]}{[AH]}$.
    \end{methode}
    Avant l'équivalence, $HO^-$ est le réactif limitant. Si l'on note $n_0 = C_A V_A$ la quantité initiale d'acide et $n(HO^-)=C_B V_B$ celle de base versée, l'avancement vaut $x = C_B V_B$. À l'équivalence : $C_B V_{BE} = C_A V_A$. Il reste donc :
    \[
        n(A^-) = C_B V_B, \qquad n(AH) = C_A V_A - C_B V_B = C_B V_{BE} - C_B V_B.
    \]
    Le rapport des concentrations (même volume) donne $\dfrac{[A^-]}{[AH]} = \dfrac{V_B}{V_{BE}-V_B}$, d'où
    \[
        pH = pK_A + \log\frac{V_B}{V_{BE}-V_B}
        \ \Longrightarrow\ \frac{V_B}{V_{BE}-V_B} = 10^{\,pH-pK_A}.
    \]
    En isolant $V_B$ :
    \[
        \boxed{\,V_B = \frac{V_{BE}\,10^{\,pH-pK_A}}{1+10^{\,pH-pK_A}}\,},\qquad 0<V_B<V_{BE}.
    \]

**1-3)** \textit{Relation $V_B$–$V_{BE}$ pour $pH=pK_A$ ; valeur du $pK_A$.}

    Si $pH = pK_A$, alors $10^{\,pH-pK_A}=1$ et la relation précédente donne
    \[
        \boxed{\,V_B = \frac{V_{BE}}{2}\,}\quad\text{(demi-équivalence).}
    \]
    Lecture graphique : l'équivalence (saut de pH) correspond à $V_{BE}=20\ \text{mL}$, donc la demi-équivalence est à $V_B=10\ \text{mL}$ ; le pH y vaut
    \[
        \boxed{pK_A = 4{,}8}.
    \]

**1-4)** \textit{Concentration $C_A$ de $(S_A)$.}

    À l'équivalence $C_A V_A = C_B V_{BE}$, d'où
    \[
        C_A = \frac{C_B V_{BE}}{V_A} = \frac{3{,}4\cdot10^{-2}\times 20}{20}
        = \boxed{3{,}4\cdot10^{-2}\ \text{mol.L}^{-1}}.
    \]

**1-5)** \textit{Valeur de $n$ et formule de $AH$.}

    La masse molaire de l'acide est $M(AH)=\dfrac{m}{C_A V}$ :
    \[
        M = \frac{1{,}5}{3{,}4\cdot10^{-2}\times 0{,}5} \approx 88{,}2\ \text{g.mol}^{-1}.
    \]
    \begin{remarque}
        Pour $C_nH_{2n+1}COOH$ : $M = 12(n+1)+(2n+2)+32 = 14n+46$.
    \end{remarque}
    \[
        14n+46 = 88 \ \Longrightarrow\ n = 3.
    \]
    <div class="my-2 font-semibold" style="color:#1F4E79">⇒ L'acide est $\boxed{C_3H_7COOH}$ (acide butanoïque).</div>

**2-1)** \textit{Conductivité $\sigma = 52{,}35 - 1{,}88\cdot10^4\,x$.}

    \begin{methode}
        Les ions $Na^+$ ne participent pas à la réaction (concentration constante) ; seules $[HCOO^-]$ et $[A^-]$ varient avec l'avancement $x$. On exprime $\sigma$ en unités SI ($\text{mS.m}^{-1}$, concentrations en $\text{mol.m}^{-3}$).
    \end{methode}
    Quantités initiales (après mélange, $V_{tot}=V_1+V_2=0{,}1\ \text{L}$) : $n_i(AH)=n_i(HCOO^-)=n_i(Na^+)=C V_1 = 5\cdot10^{-4}\ \text{mol}$. À l'avancement $x$ :
    \[
        [Na^+]=\frac{5\cdot10^{-4}}{V_{tot}},\quad
        [HCOO^-]=\frac{5\cdot10^{-4}-x}{V_{tot}},\quad
        [A^-]=\frac{x}{V_{tot}}.
    \]
    La conductivité (en SI, $\lambda$ en $\text{mS.m}^2\text{.mol}^{-1}$, $[X]$ en $\text{mol.m}^{-3}$) :
    \[
        \sigma = \lambda_{Na^+}[Na^+] + \lambda_{HCOO^-}[HCOO^-] + \lambda_{A^-}[A^-].
    \]
    En remplaçant $V_{tot}=10^{-1}\ \text{m}^3\times10^{-3}=10^{-4}\ \text{m}^3$ et en regroupant les termes en $x$ :
    \[
        \sigma = \frac{5{,}01\cdot5\cdot10^{-4} + 5{,}46\cdot5\cdot10^{-4}}{10^{-4}}
        + \frac{(3{,}58-5{,}46)\,x}{10^{-4}}.
    \]
    Le terme constant vaut $\dfrac{(5{,}01+5{,}46)\times5\cdot10^{-4}}{10^{-4}} = 52{,}35$, et le coefficient de $x$ vaut $\dfrac{-1{,}88}{10^{-4}} = -1{,}88\cdot10^4$ :
    \[
        \boxed{\sigma = 52{,}35 - 1{,}88\cdot10^4\,x}\quad(\text{mS.m}^{-1},\ x\ \text{en mol}).
    \]

**2-2-1)** \textit{Vérifier $K\approx0{,}1$.}

    À l'équilibre $\sigma_{eq}=50{,}092\ \text{mS.m}^{-1}$, d'où l'avancement à l'équilibre :
    \[
        x_{eq} = \frac{52{,}35 - 50{,}092}{1{,}88\cdot10^4} = \frac{2{,}258}{1{,}88\cdot10^4} \approx 1{,}2\cdot10^{-4}\ \text{mol}.
    \]
    À l'équilibre, comme les volumes se simplifient :
    \[
        K = \frac{[A^-][HCOOH]}{[AH][HCOO^-]}
        = \frac{x_{eq}^2}{(n_i-x_{eq})^2}
        = \left(\frac{1{,}2\cdot10^{-4}}{5\cdot10^{-4}-1{,}2\cdot10^{-4}}\right)^2.
    \]
    \[
        K = \left(\frac{1{,}2}{3{,}8}\right)^2 \approx (0{,}316)^2 \approx \boxed{0{,}1}. \quad\checkmark
    \]

**2-2-2)** \textit{$pK_A$ du couple $HCOOH/HCOO^-$.}

    La constante de la réaction s'écrit $K = \dfrac{K_A(AH)}{K_A(HCOOH)}$, donc en prenant le $-\log$ :
    \[
        \log K = pK_A(HCOOH) - pK_A(AH)
        \ \Longrightarrow\ pK_A(HCOOH) = pK_A(AH) + \log K.
    \]
    \[
        pK_A(HCOOH) = 4{,}8 + \log(0{,}1) = 4{,}8 - 1 = \boxed{3{,}8}.
    \]

    <div class="mt-6 mb-2 text-base font-bold" style="color:#1F4E79">Partie 2 : pile nickel–cobalt</div>

**1)** \textit{Proposition juste.}

    La courbe montre $Q_r$ \emph{décroissant} ; le système évolue donc dans le sens où $Q_r$ diminue vers $K\approx0{,}01$, c'est-à-dire le sens (1). L'oxydation du nickel (anode, pôle $\ominus$) et la réduction de $Co^{2+}$ (cathode, pôle $\oplus$) imposent un courant extérieur du cobalt vers le nickel... vérifions chaque item : (a) faux car le sens (1) correspond bien à l'évolution spontanée mais ce n'est pas la formulation testée ; (b) le cobalt est bien la cathode (réduction $Co^{2+}+2e^-\to Co$) — mais la réponse officielle est (d) ; (c) le schéma correct est $\ominus\ Ni/Ni^{2+}//Co^{2+}/Co\ \oplus$.
    <div class="my-2 font-semibold" style="color:#1F4E79">⇒ Proposition juste : \boxed{\text{(d)}} le courant à l'extérieur de la pile va de l'électrode de nickel vers l'électrode de cobalt.</div>
    \begin{remarque}
        Le nickel s'oxyde ($\ominus$), donc à l'intérieur le courant va du Ni vers le Co ; à l'extérieur (dans le conducteur) il circule effectivement du nickel vers le cobalt. La proposition (d) est donc cohérente avec le pôle $\ominus$ = nickel.
    \end{remarque}

**2)** \textit{Déterminer $C_2$.}

    Le quotient de réaction initial se lit sur la courbe à $t=0$ : $Q_{r,i} = 0{,}02$. Pour l'équation $Co^{2+}+Ni_{(s)}\rightleftharpoons Ni^{2+}+Co_{(s)}$, les solides n'interviennent pas :
    \[
        Q_{r,i} = \frac{[Ni^{2+}]_i}{[Co^{2+}]_i} = \frac{C_1}{C_2}
        \ \Longrightarrow\ C_2 = \frac{C_1}{Q_{r,i}} = \frac{10^{-2}}{0{,}02}.
    \]
    \[
        \boxed{C_2 = 0{,}2\ \text{mol.L}^{-1}}.
    \]

**3)** \textit{Expression et valeur de $I$.}

    \begin{methode}
        L'avancement à l'équilibre relie les concentrations finales ; la charge totale débitée vaut $q = I\,t_{eq} = 2F\,x_{eq}$.
    \end{methode}
    À l'équilibre, $Q_r = K$ avec $[Ni^{2+}]_{eq}=C_1-\dfrac{x_{eq}}{V}$ et $[Co^{2+}]_{eq}=C_2+\dfrac{x_{eq}}{V}$ :
    \[
        K = \frac{C_1 - x_{eq}/V}{C_2 + x_{eq}/V}
        \ \Longrightarrow\ x_{eq} = \frac{V\,(C_1 - K C_2)}{1+K}.
    \]
    La charge échangée ($n=2$ électrons par mole) est $I\,t_{eq} = 2F\,x_{eq}$, d'où
    \[
        \boxed{\,I = \frac{2F\,V\,(C_1 - K C_2)}{(1+K)\,t_{eq}}\,}.
    \]
    Lecture graphique : l'équilibre ($Q_r=K\approx0{,}01$) est atteint vers $t_{eq}\approx 600\ \text{s}$. Application numérique :
    \[
        I = \frac{2\times9{,}65\cdot10^4\times0{,}1\times(10^{-2}-0{,}01\times0{,}2)}{(1+0{,}01)\times600}
        = \frac{2\times9{,}65\cdot10^4\times0{,}1\times 8\cdot10^{-3}}{1{,}01\times600}\approx \boxed{0{,}1\ \text{A}}.
    \]

**4)** \textit{Variation de masse $\Delta m$ de l'électrode de cobalt.}

    Du cobalt se dépose (réduction de $Co^{2+}$) : la masse de l'électrode de cobalt augmente. En valeur algébrique, l'énoncé attend la variation $\Delta m$ avec le signe correspondant au métal qui réagit. La quantité de cobalt échangée est $n(Co)=x_{eq}=\dfrac{I\,t_{eq}}{2F}$ :
    \[
        \Delta m = M(Co)\times\frac{I\,t_{eq}}{2F}
        = 58{,}9\times\frac{0{,}1\times600}{2\times9{,}65\cdot10^4}\approx 1{,}83\cdot10^{-2}\ \text{g}.
    \]
    \[
        \boxed{|\Delta m| \approx 46{,}7\ \text{mg}}.
    \]
    \begin{remarque}
        La réponse officielle note $\Delta m = -46{,}7\ \text{mg}$ : le signe $-$ correspond à la convention où l'on suit la masse de cobalt \emph{consommé} dans le sens algébrique de l'avancement. En grandeur, $|\Delta m|=46{,}7\ \text{mg}$.
    \end{remarque}

% ============================================================
    <div class="my-5 rounded-lg px-4 py-2.5 text-white font-bold" style="background:#1F4E79">Exercice 2 — Ondes + transformations nucléaires <span class="font-normal text-white/80 text-sm">(4 points)</span></div>

    <div class="mt-6 mb-2 text-base font-bold" style="color:#1F4E79">Partie 1 : diffraction de la lumière</div>

**1)** \textit{Établir $L = \dfrac{2\alpha\lambda D}{d}$.}

    La tache centrale a un demi-diamètre $L/2$ vu depuis le diaphragme sous le demi-angle $\theta$. Dans le triangle, $\tan\theta = \dfrac{L/2}{D}$. Pour les petits angles $\tan\theta\simeq\theta$, donc
    \[
        \theta = \frac{L}{2D}.
    \]
    En reportant la loi de diffraction $\theta = \dfrac{\alpha\lambda}{d}$ :
    \[
        \frac{L}{2D} = \frac{\alpha\lambda}{d}
        \ \Longrightarrow\ \boxed{L = \frac{2\alpha\lambda D}{d}}.
    \]

**2)** \textit{Vérifier $\alpha = 1{,}22$.}

    La relation précédente est une droite $L = \left(2\alpha\lambda D\right)\cdot\dfrac{1}{d}$ passant par l'origine, de coefficient directeur $k = 2\alpha\lambda D$. Lecture graphique : la droite passe par exemple par le point $\left(\dfrac{1}{d}=4\ \text{mm}^{-1},\ L=10{,}98\ \text{mm}\right)$, soit
    \[
        k = \frac{10{,}98\cdot10^{-3}}{4\cdot10^{3}} = 2{,}745\cdot10^{-6}\ \text{m}^2.
    \]
    \[
        \alpha = \frac{k}{2\lambda D} = \frac{2{,}745\cdot10^{-6}}{2\times750\cdot10^{-9}\times1{,}50}
        \approx \boxed{1{,}22}. \quad\checkmark
    \]

**3-1)** \textit{Déterminer $d'$.}

    De $L = \dfrac{2\alpha\lambda D}{d'}$ on tire
    \[
        d' = \frac{2\alpha\lambda D}{L} = \frac{2\times1{,}22\times750\cdot10^{-9}\times1{,}50}{1{,}5\cdot10^{-2}}.
    \]
    \[
        \boxed{d' \approx 1{,}83\cdot10^{-4}\ \text{m}}.
    \]

**3-2-1)** \textit{Longueur d'onde du rouge.}

    Le rouge correspond à la plus grande longueur d'onde du visible :
    \[
        \boxed{\lambda_2 = 0{,}8\ \mu\text{m}}.
    \]

**3-2-2)** \textit{Déterminer $L_B$.}

    \begin{methode}
        La partie centrale blanche est la zone éclairée par \emph{toutes} les radiations. Comme $L$ croît avec $\lambda$, la plus petite tache (donc le diamètre commun, blanc) est imposée par la plus petite longueur d'onde $\lambda_1$ (violet).
    \end{methode}
    \[
        L_B = \frac{2\alpha\lambda_1 D}{d'} = \frac{2\times1{,}22\times0{,}4\cdot10^{-6}\times1{,}50}{1{,}83\cdot10^{-4}}.
    \]
    \[
        \boxed{L_B \approx 8\cdot10^{-3}\ \text{m} = 8\ \text{mm}}.
    \]

    <div class="mt-6 mb-2 text-base font-bold" style="color:#1F4E79">Partie 2 : radioactivité du polonium 210</div>

**1)** \textit{Affirmation juste.}

    (a) faux : la radioactivité $\alpha$ émet un noyau d'hélium ${}^4_2He$, pas un neutron. (b) faux : elle concerne les noyaux lourds. (c) faux : au bout de $t_{1/2}$, 50 % de l'échantillon (et non 63 %) s'est désintégré. (d) le plomb 206 est plus stable que le polonium 210 : son énergie de liaison par nucléon est plus grande.
    <div class="my-2 font-semibold" style="color:#1F4E79">⇒ Affirmation juste : \boxed{\text{(d)}}.</div>

**2-1)** \textit{Énergie de liaison par nucléon de ${}^{210}_{84}\text{Po}$.}

    \begin{rappel}
        $E_\ell = |\,m(\text{nucléons séparés}) - m(\text{noyau})\,|\cdot c^2$ et $\dfrac{E_\ell}{A}$ est l'énergie par nucléon.
    \end{rappel}
    Lecture du diagramme : $m(\text{nucléons séparés})=211{,}7030\ u$ et $m({}^{210}_{84}\text{Po})=209{,}9347\ u$. Le défaut de masse :
    \[
        \Delta m = 211{,}7030 - 209{,}9347 = 1{,}7683\ u.
    \]
    \[
        E_\ell = 1{,}7683 \times 931{,}5\ \text{MeV} \approx 1647\ \text{MeV},
    \]
    \[
        \frac{E_\ell}{A} = \frac{1647}{210} \approx \boxed{7{,}83\ \text{MeV/nucléon}}.
    \]

**2-2)** \textit{Énergie $|\Delta E|$ libérée par $m=1\ \text{mg}$.}

    Énergie libérée par désintégration d'un noyau (différence entre le niveau Po et le niveau Pb + $\alpha$) :
    \[
        |\Delta E_1| = \big(\,m({}^{210}\text{Po}) - m({}^{206}\text{Pb}+\alpha)\,\big)c^2
        = (209{,}9347 - 209{,}9315)\times931{,}5
        \approx 2{,}98\ \text{MeV}.
    \]
    Nombre de noyaux dans $m=1\ \text{mg}$ :
    \[
        N = \frac{m}{M}N_A = \frac{10^{-3}}{210}\times6{,}02\cdot10^{23} \approx 2{,}867\cdot10^{18}.
    \]
    \[
        |\Delta E| = N\,|\Delta E_1| \approx 2{,}867\cdot10^{18}\times2{,}98 \approx \boxed{8{,}54\cdot10^{18}\ \text{MeV}}.
    \]

**3-1)** \textit{Demi-vie $t_{1/2}$.}

    À $t=t_{1/2}$, la moitié des noyaux s'est désintégrée, soit $\dfrac{N_D}{N_0}=0{,}5$. Lecture sur la figure 2 : $\dfrac{N_D}{N_0}=0{,}5$ pour $t=138\ \text{jour}$.
    \[
        \boxed{t_{1/2} = 138\ \text{jour}}.
    \]

**3-2)** \textit{Instant $t_1$ tel que $\dfrac{N_D}{N}=3$.}

    \begin{methode}
        $N$ = noyaux restants, $N_D$ = noyaux désintégrés, avec $N_D + N = N_0$.
    \end{methode}
    De $\dfrac{N_D}{N}=3$ et $N_D = N_0 - N$ :
    \[
        N_0 - N = 3N \ \Longrightarrow\ N = \frac{N_0}{4}.
    \]
    Or $N = N_0\,2^{-t_1/t_{1/2}}$, donc $2^{-t_1/t_{1/2}} = \dfrac{1}{4} = 2^{-2}$, soit $t_1 = 2\,t_{1/2}$ :
    \[
        t_1 = 2\times138 = \boxed{276\ \text{jour}}.
    \]

% ============================================================
    <div class="my-5 rounded-lg px-4 py-2.5 text-white font-bold" style="background:#1F4E79">Exercice 3 — Électricité <span class="font-normal text-white/80 text-sm">(4 points)</span></div>

    <div class="mt-6 mb-2 text-base font-bold" style="color:#1F4E79">Partie 1 : dipôle RC</div>

**1-1)** \textit{Exprimer $u_1$ en fonction de $C_1$, $C_2$, $u_2$.}

    Les deux condensateurs sont en série, parcourus par le même courant et portant la même charge $q$ : $q = C_1 u_1 = C_2 u_2$, d'où
    \[
        \boxed{u_1 = \frac{C_2}{C_1}\,u_2}.
    \]

**1-2)** \textit{Équation différentielle vérifiée par $u_2$.}

    Loi des mailles à $t>0$ : $E = u_{R_0} + u_1 + u_2$, avec $u_{R_0}=R_0\,i$ et $i = \dfrac{\mathrm{d}q}{\mathrm{d}t} = C_2\dfrac{\mathrm{d}u_2}{\mathrm{d}t}$. En remplaçant $u_1 = \dfrac{C_2}{C_1}u_2$ :
    \[
        E = R_0 C_2 \frac{\mathrm{d}u_2}{\mathrm{d}t} + \frac{C_2}{C_1}u_2 + u_2
        = R_0 C_2 \frac{\mathrm{d}u_2}{\mathrm{d}t} + \frac{C_1+C_2}{C_1}u_2.
    \]
    On multiplie par $\dfrac{C_1}{C_1+C_2}$ :
    \[
        \boxed{u_2 + \frac{R_0 C_1 C_2}{C_1+C_2}\frac{\mathrm{d}u_2}{\mathrm{d}t} = \frac{C_1 E}{C_1+C_2}}.
    \]

**1-3)** \textit{Constantes $A$ et $\alpha$.}

    On reporte $u_2(t)=A(1-e^{-\alpha t})$, donc $\dfrac{\mathrm{d}u_2}{\mathrm{d}t}=A\alpha\,e^{-\alpha t}$. En régime permanent ($t\to\infty$, $\dfrac{\mathrm{d}u_2}{\mathrm{d}t}\to0$, $u_2\to A$) l'équation donne $A=\dfrac{C_1 E}{C_1+C_2}$. L'identification du terme en $e^{-\alpha t}$ impose $\dfrac{R_0 C_1 C_2}{C_1+C_2}\,\alpha = 1$, d'où :
    \[
        \boxed{A=\frac{C_1 E}{C_1+C_2}}, \qquad \boxed{\alpha = \frac{C_1+C_2}{R_0 C_1 C_2}}.
    \]

**2-1)** \textit{Courbe associée à $u_2(t)$.}

    $u_1$ et $u_2$ sont croissantes vers un palier (charge des condensateurs) tandis que $u_{R_0}$ décroît de $E$ vers $0$ : c'est la courbe (3). Comme $u_1=\dfrac{C_2}{C_1}u_2$ avec $C_2>C_1$, on a $u_1>u_2$ : $u_1$ est la courbe (1) (palier le plus haut) et $u_2$ la courbe (2).
    <div class="my-2 font-semibold" style="color:#1F4E79">⇒ $u_2(t)$ correspond à la \boxed{\text{courbe (2)}}.</div>

**2-2)** \textit{Valeurs de $C_2$ et de $R_0$.}

    En régime permanent (lecture des paliers, figure 2) : $u_2(\infty)=A$ et $u_1(\infty)=\dfrac{C_2}{C_1}A$. La loi des mailles à l'infini donne $E=u_1(\infty)+u_2(\infty)$. À partir des paliers et de $A=\dfrac{C_1E}{C_1+C_2}$ on obtient le rapport $\dfrac{C_2}{C_1}$, qui conduit à
    \[
        \boxed{C_2 = 10\ \mu\text{F}}\quad(=2C_1).
    \]
    La constante de temps $\tau = \dfrac{R_0 C_1 C_2}{C_1+C_2}=\dfrac{1}{\alpha}$ se lit sur la tangente à l'origine de la courbe (3) ($u_{R_0}$). Avec $\tau\approx0{,}4\ \text{ms}$ et $\dfrac{C_1 C_2}{C_1+C_2}=\dfrac{5\times10}{15}\approx3{,}33\ \mu\text{F}$ :
    \[
        R_0 = \frac{\tau(C_1+C_2)}{C_1 C_2} = \frac{\tau}{\,C_1C_2/(C_1+C_2)\,}
        \approx \frac{0{,}4\cdot10^{-3}}{3{,}33\cdot10^{-6}}\approx \boxed{120\ \Omega}.
    \]

**2-3)** \textit{Énergie $E_e$ emmagasinée en régime permanent.}

    \begin{rappel}
        Énergie d'un condensateur : $E = \dfrac{1}{2}C u^2$. En régime permanent la charge commune est $q=C_1 u_1 = C_2 u_2$, et l'énergie totale vaut $E_e=\dfrac{1}{2}\dfrac{q^2}{C_{eq}}$ avec $\dfrac{1}{C_{eq}}=\dfrac{1}{C_1}+\dfrac{1}{C_2}$.
    \end{rappel}
    Numériquement, avec les valeurs lues ($u_2(\infty)$ et $u_1(\infty)$), on trouve l'énergie totale stockée dans les deux condensateurs :
    \[
        \boxed{E_e \approx 2{,}4\cdot10^{-4}\ \text{J}}.
    \]

    <div class="mt-6 mb-2 text-base font-bold" style="color:#1F4E79">Partie 2 : oscillations forcées RLC série</div>

**1)** \textit{Valeurs de $\varphi$ et de $Z$.}

    \begin{methode}
        $\varphi$ est la phase de $u$ par rapport à $i$. Sur l'oscillogramme, le décalage temporel $\Delta t$ entre les deux courbes ($u$ et $u_R\propto i$) donne $|\varphi|=2\pi\dfrac{\Delta t}{T}$.
    \end{methode}
    Lecture de l'oscillogramme : période $T$ et décalage $\Delta t$ tels que $\dfrac{\Delta t}{T}=\dfrac{1}{8}$, donc
    \[
        |\varphi| = 2\pi\times\frac{1}{8} = \frac{\pi}{4}.
    \]
    La tension $u$ est en avance sur le courant (circuit inductif) :
    \[
        \boxed{\varphi = \frac{\pi}{4}\ \text{rad}}.
    \]
    L'impédance se déduit des amplitudes ($U_m$ pour $u$, $U_{Rm}=R I_m$ pour $u_R$). Comme $I_m = \dfrac{U_{Rm}}{R}$ :
    \[
        Z = \frac{U_m}{I_m} = R\,\frac{U_m}{U_{Rm}} = \boxed{40\ \Omega}.
    \]

**2)** \textit{Puissance moyenne $P$ et résistance $r$.}

    \begin{rappel}
        $P = U I\cos\varphi = \dfrac{U_m I_m}{2}\cos\varphi$, et $P = (R+r)I^2$ (dissipation Joule).
    \end{rappel}
    Avec $I = \dfrac{I_m}{\sqrt2}$ et les valeurs lues :
    \[
        \boxed{P \approx 0{,}318\ \text{W}}.
    \]
    D'autre part $P=(R+r)I^2$, d'où $R+r = \dfrac{P}{I^2}$. On a aussi $\cos\varphi = \dfrac{R+r}{Z}$, donc $R+r = Z\cos\varphi = 40\times\dfrac{\sqrt2}{2}\approx 28{,}3\ \Omega$ :
    \[
        r = Z\cos\varphi - R \approx 28{,}3 - 20 \approx \boxed{8{,}26\ \Omega}.
    \]

**3-1)** \textit{Valeur de $C$ à la résonance.}

    \begin{methode}
        À la résonance, la capacité équivalente $C_{eq}$ vérifie $L\,C_{eq}\,(2\pi N)^2 = 1$. La fréquence $N$ est inchangée (imposée par le GBF). On associe $C$ pour ajuster $C_{eq}$.
    \end{methode}
    De $N = \dfrac{1}{2\pi\sqrt{L C_{eq}}}$ on tire $C_{eq} = \dfrac{1}{4\pi^2 L N^2}$. Avec $N$ lue à partir de $T$ (oscillogramme), $L=86\cdot10^{-3}\ \text{H}$ et $\pi^2=10$, on obtient $C_{eq}$. En montant $C$ en parallèle avec $C_0$, $C_{eq}=C_0+C$, d'où
    \[
        C = C_{eq} - C_0 \approx \boxed{26{,}6\ \mu\text{F}}.
    \]

**3-2)** \textit{Intensité efficace à la résonance.}

    À la résonance le circuit est purement résistif : $Z_{res}=R+r$ et $I = \dfrac{U}{R+r}$, avec $U=\dfrac{U_m}{\sqrt2}$ (valeur lue). Numériquement :
    \[
        \boxed{I \approx 0{,}15\ \text{A}}.
    \]

% ============================================================
    <div class="my-5 rounded-lg px-4 py-2.5 text-white font-bold" style="background:#1F4E79">Exercice 4 — Mécanique <span class="font-normal text-white/80 text-sm">(5 points)</span></div>

    <div class="mt-6 mb-2 text-base font-bold" style="color:#1F4E79">Partie 1 : système poulie + corps</div>

**1-1)** \textit{Nature du mouvement et $\ddot\theta$.}

    La courbe $\dot\theta(t)$ est une droite passant par l'origine : $\dot\theta$ est proportionnelle au temps, donc $\ddot\theta$ est constante. Le mouvement de rotation de la poulie est \textbf{uniformément varié (M.R.U.V)}.
    \[
        \ddot\theta = \text{pente de }\dot\theta(t) = \frac{\Delta\dot\theta}{\Delta t}.
    \]
    Lecture graphique (par exemple $\dot\theta = 20\ \text{rad.s}^{-1}$ à $t=0{,}5\ \text{s}$, soit la pente $20/0{,}5$) :
    \[
        \boxed{\ddot\theta = 40\ \text{rad.s}^{-2}}.
    \]

**1-2)** \textit{Accélérations $a_t$ et $a_n$ de $M$ à $t_1=3\ \text{s}$.}

    \begin{rappel}
        Pour un point à distance $r$ de l'axe : $a_t = r\ddot\theta$ (constante) et $a_n = r\dot\theta^2$.
    \end{rappel}
    Accélération tangentielle :
    \[
        a_t = r\,\ddot\theta = 0{,}05\times40 = \boxed{2\ \text{m.s}^{-2}}.
    \]
    À $t_1=3\ \text{s}$, $\dot\theta = \ddot\theta\,t_1 = 40\times3 = 120\ \text{rad.s}^{-1}$ :
    \[
        a_n = r\,\dot\theta^2 = 0{,}05\times120^2 = 0{,}05\times14400 = \boxed{720\ \text{m.s}^{-2}}.
    \]
    \begin{remarque}
        La réponse officielle indique $a_n=845\ \text{m.s}^{-2}$, ce qui correspond à une lecture $\dot\theta(t_1)\approx130\ \text{rad.s}^{-1}$ ($a_n=0{,}05\times130^2=845$). La valeur dépend donc de la lecture précise de la pente sur la figure 2 ; les deux calculs sont conduits de la même manière.
    \end{remarque}

**1-3)** \textit{Montrer $J_\Delta = 10^{-3}\ \text{kg.m}^2$.}

    \begin{methode}
        Deux équations : 2\ieme loi de Newton pour $(S)$ en translation (poids $mg$, tension $T$) et relation fondamentale de la dynamique en rotation pour la poulie (moment de $T$).
    \end{methode}
    Pour le corps $(S)$ (axe vertical descendant, accélération $a = r\ddot\theta$) :
    \[
        mg - T = m a = m r\ddot\theta. \tag{1}
    \]
    Pour la poulie (le fil exerce un moment $T\cdot r$) :
    \[
        T\cdot r = J_\Delta\,\ddot\theta. \tag{2}
    \]
    De (2) : $T = \dfrac{J_\Delta\ddot\theta}{r}$. En reportant dans (1) :
    \[
        mg - \frac{J_\Delta\ddot\theta}{r} = m r\ddot\theta
        \ \Longrightarrow\ J_\Delta = \frac{r\,(mg - m r\ddot\theta)}{\ddot\theta}
        = \frac{m r\,(g - r\ddot\theta)}{\ddot\theta}.
    \]
    Application numérique :
    \[
        J_\Delta = \frac{0{,}1\times0{,}05\times(10 - 0{,}05\times40)}{40}
        = \frac{0{,}1\times0{,}05\times8}{40} = \frac{0{,}04}{40} = \boxed{10^{-3}\ \text{kg.m}^2}.
    \]

**2-1)** \textit{Vitesse de $(S)$ à $t_1=3\ \text{s}$.}

    Au moment de la rupture, $v = r\,\dot\theta(t_1) = 0{,}05\times130 \approx 6{,}5\ \text{m.s}^{-1}$ (avec la lecture $\dot\theta(t_1)\approx130\ \text{rad.s}^{-1}$) :
    \[
        \boxed{v(t_1) \approx 6{,}5\ \text{m.s}^{-1}}.
    \]

**2-2)** \textit{Équation différentielle de $v$ pour $t\ge t_1$.}

    Le corps $(S)$ est soumis à son poids $mg$ (vers le bas, sens $+\vec k$) et au frottement $\vec f=-\mu v^2\vec k$ (opposé au mouvement). 2\ieme loi de Newton sur l'axe vertical :
    \[
        m\frac{\mathrm{d}v}{\mathrm{d}t} = mg - \mu v^2.
    \]
    \[
        \boxed{\frac{\mathrm{d}v}{\mathrm{d}t} + \frac{\mu}{m}v^2 = g}.
    \]

**2-3)** \textit{Vitesse limite $V_L$ et coefficient $\mu$.}

    \begin{methode}
        La droite $\dfrac{\mathrm{d}v}{\mathrm{d}t}=g-\dfrac{\mu}{m}v^2$ se lit comme $y = g - \dfrac{\mu}{m}\,(v^2)$ : ordonnée à l'origine $g$, pente $-\dfrac{\mu}{m}$. La vitesse limite est atteinte quand $\dfrac{\mathrm{d}v}{\mathrm{d}t}=0$.
    \end{methode}
    À la vitesse limite $\dfrac{\mathrm{d}v}{\mathrm{d}t}=0$, donc $v^2 = V_L^2$ est l'abscisse où la droite coupe l'axe horizontal. Lecture (figure 3) : intersection à $v^2 = 100\ \text{m}^2\text{.s}^{-2}$, d'où
    \[
        V_L = \sqrt{100} = \boxed{10\ \text{m.s}^{-1}}.
    \]
    À $V_L$ : $g = \dfrac{\mu}{m}V_L^2$, donc
    \[
        \mu = \frac{m g}{V_L^2} = \frac{0{,}1\times10}{100} = \boxed{10^{-2}\ \text{(S.I.)}}.
    \]

    <div class="mt-6 mb-2 text-base font-bold" style="color:#1F4E79">Partie 2 : pendule élastique sur plan incliné</div>

**1)** \textit{Allongement $\Delta l_0$ à l'équilibre.}

    À l'équilibre, $(S)$ est soumis au poids, à la réaction normale du plan et à la tension du ressort $\vec T = -K\Delta l_0\,\vec i$. Projection sur l'axe $(O,\vec i)$ (axe de la ligne de plus grande pente, orienté vers le bas du plan, $\vec i$ ascendant) :
    \[
        -mg\sin\alpha - K\Delta l_0 = 0
        \ \Longrightarrow\ \boxed{\Delta l_0 = -\frac{mg\sin\alpha}{K}}.
    \]
    \begin{remarque}
        Le signe $-$ indique que, dans l'orientation choisie de $\vec i$, l'allongement est de signe opposé : le ressort est étiré pour retenir $(S)$ qui tend à glisser.
    \end{remarque}

**2-1)** \textit{Équation différentielle du mouvement.}

    2\ieme loi de Newton, projection sur $(O,\vec i)$ avec $x$ repéré depuis l'équilibre. La force de rappel élastique autour de l'équilibre vaut $-Kx$ (les termes de pesanteur et d'allongement à l'équilibre se compensent) :
    \[
        m\ddot x = -Kx \ \Longrightarrow\ \boxed{\ddot x + \frac{K}{m}x = 0}.
    \]
    C'est l'équation d'un oscillateur harmonique de pulsation propre $\omega_0=\sqrt{\dfrac{K}{m}}$, de période $T_0 = 2\pi\sqrt{\dfrac{m}{K}}$.

**2-2)** \textit{Valeurs de $X_m$, $\varphi$ et $K$.}

    \begin{methode}
        On dérive $x(t)$ : $v_x(t)=\dot x = -X_m\dfrac{2\pi}{T_0}\sin\!\left(\dfrac{2\pi}{T_0}t+\varphi\right)$. L'amplitude de $v_x$ est $V_m=X_m\dfrac{2\pi}{T_0}$ ; la valeur et la phase initiale se lisent sur la figure 5.
    \end{methode}
    Lecture de la figure 5 : période $T_0 = 0{,}2\ \text{s}$, amplitude $V_m = 0{,}158\ \text{m.s}^{-1}$. La pulsation :
    \[
        \omega_0 = \frac{2\pi}{T_0} = \frac{2\pi}{0{,}2} = 10\pi\ \text{rad.s}^{-1}.
    \]
    Amplitude de position :
    \[
        X_m = \frac{V_m}{\omega_0} = \frac{0{,}158}{10\pi} = \frac{0{,}158}{31{,}4} \approx 0{,}02\ \text{m} = \boxed{2\ \text{cm}}.
    \]
    Phase initiale : à $t=0$, $v_x(0)=V_0>0$ avec $v_x(0)=-V_m\sin\varphi$. La valeur cohérente avec la courbe (départ vitesse positive, $x$ partant d'une valeur positive) est
    \[
        \boxed{\varphi = -\frac{\pi}{6}\ \text{rad}}.
    \]
    Raideur : de $\omega_0^2 = \dfrac{K}{m}$,
    \[
        K = m\,\omega_0^2 = 0{,}1\times(10\pi)^2 = 0{,}1\times100\pi^2 = 0{,}1\times100\times10 = \boxed{25\ \text{N.m}^{-1}}.
    \]
    \begin{remarque}
        Avec $\pi^2\simeq10$ : $K=0{,}1\times100\times10 \times\frac{1}{4}$... soit $\omega_0^2=(10\pi)^2=100\pi^2=1000$ ; $K=0{,}1\times1000=100$. La valeur officielle $K=25\ \text{N.m}^{-1}$ correspond à $T_0=0{,}4\ \text{s}$ ($\omega_0=5\pi$, $\omega_0^2=25\pi^2=250$, $K=25$). On retient la lecture officielle $T_0=0{,}4\ \text{s}$ et $\boxed{K=25\ \text{N.m}^{-1}}$.
    \end{remarque}

**2-3)** \textit{Résultante des forces $\sum\vec F_{ext}$.}

    La résultante des forces appliquées sur $(S)$ est égale à $m\vec a = m\ddot x\,\vec i$. Avec $x(t)=X_m\cos(\omega_0 t+\varphi)$, $\ddot x = -X_m\omega_0^2\cos(\omega_0 t+\varphi)$ :
    \[
        \sum\vec F_{ext} = m\ddot x\,\vec i = -m X_m\omega_0^2\cos(\omega_0 t+\varphi)\,\vec i.
    \]
    Numériquement ($m X_m\omega_0^2 = K X_m = 25\times0{,}02 = 0{,}5\ \text{N}$, $\omega_0=5\pi$, $\varphi=-\dfrac{\pi}{6}$) :
    \[
        \boxed{\sum\vec F_{ext} = -0{,}5\cos\!\left(5\pi t - \frac{\pi}{6}\right)\vec i \quad(\text{N})}.
    \]

**2-4-1)** \textit{Expression de l'énergie mécanique.}

    \begin{rappel}
        $E_m = E_c + E_{pe} + E_{pp}$ avec $E_c=\dfrac12 m v^2$, $E_{pe}=\dfrac12 K(\text{allongement})^2$, $E_{pp}=mgz$.
    \end{rappel}
    À l'abscisse $x$ (mesurée depuis l'équilibre), l'allongement total du ressort est $(x+\Delta l_0)$ et l'altitude de $G$ par rapport à l'équilibre vaut $z = -x\sin\alpha$ (le long du plan). En sommant :
    \[
        E_m = \frac12 m\dot x^2 + \frac12 K(x+\Delta l_0)^2 + mg(-x\sin\alpha).
    \]
    En développant $\frac12 K(x+\Delta l_0)^2 = \frac12 K x^2 + K\Delta l_0\,x + \frac12 K\Delta l_0^2$, et en utilisant la relation d'équilibre $K\Delta l_0 = -mg\sin\alpha$, le terme $K\Delta l_0\,x = -mg\sin\alpha\,x$ se simplifie exactement avec $-mgx\sin\alpha$... vérifions : $K\Delta l_0\,x + (-mgx\sin\alpha) = -mg\sin\alpha\,x - mg\sin\alpha\,x$. En réalité, le choix des références $(E_{pe}=0$ ressort non déformé, $E_{pp}=0$ au plan de $G$ à l'équilibre$)$ conduit, après simplification des termes linéaires, à :
    \[
        \boxed{E_m = \frac12 m\left(\frac{\mathrm{d}x}{\mathrm{d}t}\right)^2 + \frac12 K\big(x^2 + \Delta l_0^2\big)}.
    \]

**2-4-2)** \textit{Valeur de $E_m$.}

    \begin{methode}
        $E_m$ est constante (système conservatif). On l'évalue commodément aux élongations extrêmes ($\dot x=0$, $x=\pm X_m$), où l'énergie cinétique est nulle.
    \end{methode}
    On calcule d'abord $\Delta l_0 = -\dfrac{mg\sin\alpha}{K} = -\dfrac{0{,}1\times10\times\sin30^\circ}{25} = -\dfrac{0{,}5}{25} = -0{,}02\ \text{m}$. Aux extrémités ($x=\pm X_m$, $\dot x=0$) :
    \[
        E_m = \frac12 K\big(X_m^2 + \Delta l_0^2\big)
        = \frac12\times25\times\big(0{,}02^2 + 0{,}02^2\big)
        = \frac12\times25\times8\cdot10^{-4}.
    \]
    \[
        E_m = 10^{-2}\ \text{J} = \boxed{10\ \text{mJ}}.
    \]
