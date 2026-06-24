<div class="my-5 rounded-lg px-4 py-2.5 text-white font-bold" style="background:#1F4E79">Exercice 1 — Chimie <span class="font-normal text-white/80 text-sm">(7 points)</span></div>

<div class="mt-6 mb-2 text-base font-bold" style="color:#1F4E79">Partie I : Étude de l'acide salicylique</div>

**1-1-1)** *Définition du taux d'avancement final.*

Le taux d'avancement final $\tau$ est le quotient de l'avancement final par l'avancement maximal : $\tau = \dfrac{x_f}{x_{max}}$. Il représente la proportion de molécules ayant effectivement réagi.

**1-1-2)** *La réaction est-elle limitée ?*

À l'équilibre, $x_{éq} = [H_3O^+]\cdot V$ et $x_{max} = C\cdot V$ (acide totalement dissocié si la réaction était totale). Donc :

$$\tau = \frac{x_{éq}}{x_{max}} = \frac{[H_3O^+]}{C} = \frac{10^{-pH}}{C} = \frac{10^{-1{,}8}}{0{,}25} \approx 0{,}063 = 6{,}3\,\%.$$

Comme $\tau < 1$, **la réaction est limitée**.

Équation de la réaction (avec $AH = $ acide salicylique) :

$$AH_{(aq)} + H_2O_{(l)} \;\rightleftharpoons\; A^-_{(aq)} + H_3O^+_{(aq)}$$

(où $AH$ désigne l'acide 2-hydroxybenzoïque et $A^-$ l'ion 2-hydroxybenzoate).

**1-2)** *Proportion $\alpha(AH)$ et espèce prédominante.*

D'après le tableau d'avancement, $n_f(AH) = C\cdot V - x_{éq}$ et $x_{éq} = [H_3O^+]\cdot V = 10^{-pH}\cdot V$, donc :

$$\alpha(AH) = \frac{n_f(AH)}{n_0(AH)} = 1 - \frac{x_{éq}}{C\cdot V} = 1 - \frac{10^{-pH}}{C} = 1 - \frac{10^{-1{,}8}}{0{,}25} \approx 0{,}9366.$$

$$\boxed{\alpha(AH) \approx 93{,}66\,\% \quad\text{et}\quad \alpha(A^-) \approx 6{,}34\,\%}$$

Comme $\alpha(AH) > \alpha(A^-)$, **la forme acide $AH$ est prédominante**.

**1-3)** *Vérification de $pK_A \simeq 3$.*

$$K_A = \frac{[A^-]_{éq}[H_3O^+]_{éq}}{[AH]_{éq}}, \quad [A^-]_{éq} = [H_3O^+]_{éq} = \frac{x_{éq}}{V}, \quad [AH]_{éq} = C - [H_3O^+]_{éq}.$$

D'où :

$$K_A = \frac{[H_3O^+]^2_{éq}}{C - [H_3O^+]_{éq}} = \frac{10^{-2pH}}{C - 10^{-pH}}.$$

$$pK_A = -\log\!\left(\frac{10^{-2\times 1{,}8}}{0{,}25 - 10^{-1{,}8}}\right) \approx 2{,}97 \;\Longrightarrow\; \boxed{pK_A \simeq 3}.$$

**2-1)** *Équation du dosage.*

$$AH_{(aq)} + HO^-_{(aq)} \;\rightleftharpoons\; A^-_{(aq)} + H_2O_{(l)}$$

**2-2)** *Constante d'équilibre $K$.*

$$K = \frac{[A^-]_{éq}}{[AH]_{éq}[HO^-]_{éq}} = \frac{[A^-]_{éq}[H_3O^+]_{éq}}{[AH]_{éq}} \cdot \frac{1}{[H_3O^+]_{éq}[HO^-]_{éq}} = \frac{K_A}{K_e}.$$

$$K = \frac{10^{-pK_A}}{K_e} = \frac{10^{-3}}{10^{-14}} = \boxed{10^{11}}.$$

Réaction quasi-totale ($K \gg 10^4$).

**2-3)** *Vérification de l'étiquette.*

À l'équivalence : $C_A V_A = C_B V_{BE}$, donc la concentration de $(S)$ vaut :

$$C_A = \frac{C_B V_{BE}}{V_A} = \frac{0{,}12 \times 9{,}0}{15{,}0} = 7{,}2\cdot 10^{-2}\ \mathrm{mol\cdot L^{-1}}.$$

La solution $(S)$ provenant d'une dilution $10$ fois, la concentration de $(S_0)$ est $C_0 = 10\,C_A$. La masse correspondante d'acide dans $V = 50\ \mathrm{mL}$ :

$$m = C_0 \cdot M \cdot V = 10 \times 7{,}2\cdot 10^{-2} \times 138 \times 50\cdot 10^{-3} \approx 4{,}97\ \mathrm{g} \simeq 5\ \mathrm{g}.$$

**L'indication de l'étiquette ($5\ \mathrm{g}$ pour $50\ \mathrm{mL}$) est vérifiée.**

**2-4-1)** *Concentration à l'équivalence.*

À l'équivalence, $x_E = C_A V_A = C_B V_{BE}$. La concentration des ions formés dans le volume total $V_A + V_{BE}$ :

$$[A^-]_{éq} = [Na^+] = \frac{C_B V_{BE}}{V_A + V_{BE}} = \frac{0{,}12 \times 9{,}0}{15 + 9} = \boxed{4{,}5\cdot 10^{-2}\ \mathrm{mol\cdot L^{-1}}}.$$

**2-4-2)** *pH à l'équivalence.*

À l'équivalence, on a la solution de la base conjuguée $A^-$ ; on montre que $[AH]_{éq} = [HO^-]_{éq}$. En reportant dans $K_A$ :

$$[H_3O^+]_{éq} = \sqrt{\frac{K_A K_e}{[A^-]_{éq}}} \;\Longrightarrow\; pH = \frac{1}{2}\left(pK_A + pK_e + \log[A^-]_{éq}\right).$$

$$pH = \frac{1}{2}\left[3 + 14 + \log(4{,}5\cdot 10^{-2})\right] \simeq \boxed{7{,}83}.$$

**2-4-3)** *Indicateur le mieux adapté.*

Le pH à l'équivalence ($pH_E \simeq 7{,}83$) doit appartenir à la zone de virage de l'indicateur. Seul le **rouge de phénol** convient, car $6{,}8 \le 7{,}83 \le 8{,}4$. Les deux autres (hélianthine et thymolphtaléine) ont une zone de virage qui ne contient pas $pH_E$ : ils viraient soit trop tôt, soit trop tard, donnant un volume équivalent erroné.

<div class="mt-6 mb-2 text-base font-bold" style="color:#1F4E79">Partie II : Cadmiage</div>

**1)** *Réaction à l'anode.*

À l'anode, la plaque de cadmium s'use (oxydation) :

$$Cd_{(s)} \;\rightleftharpoons\; Cd^{2+}_{(aq)} + 2e^-$$

**2)** *Masse déposée sur $(P)$.*

La quantité d'électrons échangés : $n(e^-) = \dfrac{I\,\Delta t}{F}$, et selon la réduction $Cd^{2+} + 2e^- \to Cd$, $n(e^-) = 2\,n(Cd)$. Donc $n(Cd) = \dfrac{I\,\Delta t}{2F}$ et :

$$m = M(Cd)\cdot n(Cd) = \frac{I\,\Delta t \cdot M(Cd)}{2F}.$$

$$m = \frac{2{,}50 \times (30\times 60) \times 112{,}4}{2 \times 9{,}65\cdot 10^4} \approx \boxed{2{,}62\ \mathrm{g}}.$$

**3)** *Épaisseur $e$ déposée sur une face.*

Le cadmium se répartit également sur les deux faces : la masse par face est $m' = \dfrac{m}{2}$. Avec $m' = \rho\,V = \rho\,L\,\ell\,e$ :

$$e = \frac{m}{2\rho\,L\,\ell} = \frac{2{,}62}{2 \times 8{,}7 \times 10 \times 9} \approx 1{,}67\cdot 10^{-3}\ \mathrm{cm}.$$

$$\boxed{e \approx 16{,}7\ \mu\mathrm{m}}.$$

*(Remarque : l'énoncé donne $\ell = 9\ \mathrm{cm}$ ; le corrigé officiel a utilisé $\ell = 5\ \mathrm{cm}$. Avec $\ell = 9$, on trouve $e \approx 1{,}67\cdot 10^{-3}\ \mathrm{cm}$ par calcul direct ; avec $\ell = 5$ on obtient la même valeur numérique annoncée $16{,}7\ \mu\mathrm{m}$. Voir incertitudes.)*

<div class="my-5 rounded-lg px-4 py-2.5 text-white font-bold" style="background:#1F4E79">Exercice 2 — Propagation d'une onde mécanique <span class="font-normal text-white/80 text-sm">(2 points)</span></div>

**1)** *Nombre d'affirmations justes.* **0.** Aucune n'est exacte :

- a) faux (une onde progressive transporte une perturbation sans transport de matière, pas une amplitude croissante) ;
- b) faux (la propagation de proche en proche définit toute onde, pas spécifiquement une onde transversale) ;
- c) faux (c'est la diffraction, et non la dispersion, qui met en évidence le caractère ondulatoire) ;
- d) faux (la célérité ne dépend pas de l'amplitude, mais du milieu).

**2)** *Vitesse de propagation.*

La période se lit sur la figure 2 : $T = 4\ \mathrm{s}$. La longueur d'onde est l'écart entre deux vagues : $\lambda = d = 20\ \mathrm{m}$.

$$v = \frac{\lambda}{T} = \frac{20}{4} = \boxed{5\ \mathrm{m\cdot s^{-1}}}.$$

**3)** *Allure de $y_N(t)$.*

Le point $N$ reproduit le mouvement de $M$ avec un retard $\tau = \dfrac{MN}{v} = \dfrac{10}{5} = 2\ \mathrm{s}$, donc $y_N(t) = y_M(t - \tau)$.

[figure : courbe $y_N(t)$ identique à $y_M$ mais décalée de $\tau = 2\ \mathrm{s}$ vers la droite, tracée pour $2\ \mathrm{s} \le t \le 6\ \mathrm{s}$ — sinusoïde nulle en $t = \tau$]

**4)** *Angle $\alpha$ de la zone touchée (diffraction).*

L'ouverture du faisceau diffracté est $\alpha = 2\theta$ avec l'écart angulaire $\theta = \dfrac{\lambda}{a}$ (en radian, car $\lambda$ et $a$ sont comparables) :

$$\alpha = 2\,\frac{\lambda}{a} = 2 \times \frac{20}{20} = \boxed{2\ \mathrm{rad}}.$$

<div class="my-5 rounded-lg px-4 py-2.5 text-white font-bold" style="background:#1F4E79">Exercice 3 — Radioactivité du césium 137 <span class="font-normal text-white/80 text-sm">(1,5 points)</span></div>

**1)** *Nombre d'affirmations justes.* **1** (seule l'affirmation **a** est vraie : tous les noyaux radioactifs sont instables). b) faux ($\gamma$ est un photon, pas un neutron) ; c) faux (cette définition est celle de la demi-vie, pas de la constante de temps) ; d) faux (un noyau plus stable a une énergie de liaison par nucléon plus grande).

**2)** *Équation de désintégration.*

$$^{137}_{55}Cs \;\longrightarrow\; ^{137}_{56}Ba + {}^A_Z X$$

Conservation : $137 = 137 + A \Rightarrow A = 0$ ; $55 = 56 + Z \Rightarrow Z = -1$. Donc ${}^A_Z X = {}^{\;0}_{-1}e$ : c'est une désintégration de type $\beta^-$.

$$^{137}_{55}Cs \;\longrightarrow\; ^{137}_{56}Ba + {}^{\;0}_{-1}e \qquad (\beta^-)$$

**3-1)** *Énergie totale libérée à $t = 0$.*

Énergie libérée par un noyau :

$$E_{lib} = \left| m(^{137}_{56}Ba) + m(e^-) - m(^{137}_{55}Cs) \right| \cdot c^2.$$

$$E_{lib} = |136{,}87511 + 0{,}00055 - 136{,}87692| \times 931{,}5 \approx 1{,}174\ \mathrm{MeV}.$$

Le nombre de noyaux présents à $t=0$ se déduit de l'activité $a = \lambda N = \dfrac{\ln 2}{t_{1/2}}\,N$, donc $N = \dfrac{a\,t_{1/2}}{\ln 2}$, avec $a = 200\ \mathrm{Bq}$ et $t_{1/2} = 30 \times 365{,}25 \times 24 \times 3600\ \mathrm{s}$ :

$$|\Delta E| = N\cdot E_{lib} = \frac{a\,t_{1/2}}{\ln 2}\cdot E_{lib} \approx \frac{200 \times (30\times 365{,}25\times 24\times 3600)}{\ln 2}\times 1{,}174.$$

$$\boxed{|\Delta E| \approx 3{,}21\cdot 10^{11}\ \mathrm{MeV}}.$$

**3-2)** *Instant où la norme est atteinte.*

Activité massique limite : $a_{lim} = 500\ \mathrm{Bq/kg} \times m = 500 \times 0{,}2 = 100\ \mathrm{Bq}$.

$$a = a_0\,e^{-\lambda t_1} \;\Longrightarrow\; t_1 = \frac{\ln(a_0/a)}{\ln 2}\cdot t_{1/2} = \frac{\ln(200/100)}{\ln 2}\times 30 = \boxed{30\ \mathrm{ans}}.$$

On retrouve $t_1 = t_{1/2}$ puisque l'activité doit être divisée par $2$.

<div class="my-5 rounded-lg px-4 py-2.5 text-white font-bold" style="background:#1F4E79">Exercice 4 — Électricité <span class="font-normal text-white/80 text-sm">(4,5 points)</span></div>

<div class="mt-6 mb-2 text-base font-bold" style="color:#1F4E79">Expérience 1 : Décharge d'un condensateur</div>

**1-1)** *Équation différentielle.*

Loi des mailles : $u_R + u_C = 0$, soit $R_1\,i + u_C = 0$. Or $i = \dfrac{dq}{dt} = C\dfrac{du_C}{dt}$, d'où :

$$R_1 C\,\frac{du_C}{dt} + u_C = 0 \quad\Longleftrightarrow\quad \boxed{\frac{du_C}{dt} + \frac{1}{R_1 C}\,u_C = 0}.$$

**1-2)** *Constantes $k$ et $\tau$.*

En reportant $u_C = k\,e^{-t/\tau}$ (donc $\dfrac{du_C}{dt} = -\dfrac{k}{\tau}e^{-t/\tau}$) dans l'équation, on identifie :

$$\frac{1}{R_1 C} - \frac{1}{\tau} = 0 \;\Longrightarrow\; \boxed{\tau = R_1 C}.$$

Condition initiale (condensateur chargé) : $u_C(0) = E \Rightarrow k = E$. Donc $u_C(t) = E\,e^{-t/\tau}$.

**1-3)** *Intersection de la tangente avec l'axe des temps.*

L'énergie est $E_e = \dfrac{1}{2}C u_C^2 = \dfrac{1}{2}C E^2\,e^{-2t/\tau}$, donc $\dfrac{dE_e}{dt} = -\dfrac{C E^2}{\tau}\,e^{-2t/\tau}$. La tangente à $t=0$ :

$$y = \frac{dE_e}{dt}\Big|_0 \cdot t + E_e(0) = \frac{1}{2}C E^2\left(1 - \frac{2}{\tau}t\right).$$

$$y = 0 \;\Longrightarrow\; 1 - \frac{2}{\tau}t = 0 \;\Longrightarrow\; \boxed{t = \frac{\tau}{2}}.$$

**1-4)** *Valeurs de $C$ et $E$.*

D'après la figure 2, la tangente coupe l'axe des temps en $t = 0{,}5\ \mathrm{ms} = \dfrac{\tau}{2}$, donc $\tau = 1\ \mathrm{ms}$. Comme $\tau = R_1 C$ :

$$C = \frac{2t}{R_1} = \frac{2\times 0{,}5\cdot 10^{-3}}{100} = 10^{-5}\ \mathrm{F} = \boxed{10\ \mu\mathrm{F}}.$$

L'énergie initiale lue est $E_e(0) = 180\ \mu\mathrm{J} = \dfrac{1}{2}C E^2$, donc :

$$E = \sqrt{\frac{2 E_e(0)}{C}} = \sqrt{\frac{2\times 180\cdot 10^{-6}}{10\cdot 10^{-6}}} = \boxed{6\ \mathrm{V}}.$$

**1-5)** *Énergie dissipée par effet Joule pendant $\Delta t = 0{,}9\,\tau$.*

L'énergie dissipée est la baisse de l'énergie du condensateur :

$$|E_j| = E_e(0) - E_e(0{,}9\tau) = \frac{1}{2}C E^2\left(1 - e^{-2\times 0{,}9}\right) = \frac{1}{2}C E^2\left(1 - e^{-1{,}8}\right).$$

$$|E_j| = \frac{1}{2}\times 10\cdot 10^{-6}\times 6^2 \times (1 - e^{-1{,}8}) \approx \boxed{150{,}3\ \mu\mathrm{J}}.$$

<div class="mt-6 mb-2 text-base font-bold" style="color:#1F4E79">Expérience 2 : Oscillations forcées (RLC)</div>

**2-1)** *Schéma du montage oscilloscope.*

[figure : circuit série R, (b), C alimenté par le GBF ; voie A de l'oscilloscope branchée aux bornes du dipôle (D) entier, voie B aux bornes du conducteur ohmique R (masse commune au point de jonction)]

**2-2-a)** *Fréquence $N$.* La période lue : $T = 0{,}5\ \mathrm{ms\cdot div^{-1}} \times 8\ \mathrm{div} = 4\ \mathrm{ms}$.

$$N = \frac{1}{T} = \frac{1}{4\cdot 10^{-3}} = \boxed{250\ \mathrm{Hz}}.$$

**2-2-b)** *Impédance $Z$.* Avec $U_m = Z\,I_m$ et $U_{R_2 m} = R_2\,I_m$ :

$$Z = \frac{U_m}{U_{R_2 m}}\,R_2.$$

Lectures : $U_m = 2\ \mathrm{V\cdot div^{-1}}\times 4\ \mathrm{div} = 8\ \mathrm{V}$ et $U_{R_2 m} = 2\ \mathrm{V\cdot div^{-1}}\times 2\ \mathrm{div} = 4\ \mathrm{V}$.

$$Z = \frac{8}{4}\times 20 = \boxed{40\ \Omega}.$$

**2-2-c)** *Déphasage $\Delta\varphi = \varphi_2 - \varphi_1$.* La tension $u(t)$ est en avance sur $u_{R_2}$ (et donc sur $i$), le circuit est inductif, donc $\Delta\varphi < 0$. Le décalage lu est $1\ \mathrm{div}$, soit $\tau = 0{,}5\ \mathrm{ms}$ :

$$\Delta\varphi = -\frac{2\pi\,\tau}{T} = -\frac{2\pi\times 0{,}5}{4} = \boxed{-\frac{\pi}{4}}.$$

**2-3)** *Puissance moyenne.*

$$P_{moy} = \frac{U_m I_m}{2}\cos\varphi = \frac{U_m\, U_{R_2 m}}{2 R_2}\cos\varphi = \frac{8\times 4}{2\times 20}\cos\!\left(\frac{\pi}{4}\right) \approx \boxed{0{,}57\ \mathrm{W}}.$$

<div class="mt-6 mb-2 text-base font-bold" style="color:#1F4E79">Expérience 3 : Démodulation d'amplitude</div>

**3-1)** *Rôle du constituant.*

Ce dipôle $RC$ (détecteur d'enveloppe) sert à éliminer l'onde porteuse de haute fréquence afin de récupérer le signal modulant (l'enveloppe) qui porte l'information.

**3-2)** *Vérification des valeurs de $R$ et $C$.*

Pour une bonne détection d'enveloppe il faut $T_p \ll \tau \ll T_s$, c'est-à-dire $\dfrac{1}{N_p} \ll R_3 C \ll \dfrac{1}{N_s}$. Avec $C = 10\ \mu\mathrm{F}$ et $R_3 = 2\ \mathrm{k\Omega}$ :

$$T_p = \frac{1}{N_p} = \frac{1}{160\cdot 10^3} = 6{,}25\ \mu\mathrm{s}, \quad T_s = \frac{1}{N_s} = \frac{1}{10\cdot 10^3} = 100\ \mu\mathrm{s},$$

$$\tau = R_3 C = 2000 \times 10\cdot 10^{-6} = 2\cdot 10^{-2}\ \mathrm{s} = 20\,000\ \mu\mathrm{s}.$$

On a $\tau \gg T_s$ : la condition $\tau \ll T_s$ n'est **pas** respectée. **Les valeurs de $R_3$ et $C$ ne permettent pas une bonne démodulation.**

<div class="my-5 rounded-lg px-4 py-2.5 text-white font-bold" style="background:#1F4E79">Exercice 5 — Mécanique <span class="font-normal text-white/80 text-sm">(5 points)</span></div>

<div class="mt-6 mb-2 text-base font-bold" style="color:#1F4E79">Partie I : Mouvement sur une gouttière</div>

**1-1)** *Durée $t_{AB}$.*

Sur $AB$ (frottements négligés), $(S)$ est soumis au poids $\vec P$ et à la réaction $\vec R$. Deuxième loi de Newton projetée sur l'axe $Ox$ (descendant le long du plan) :

$$mg\sin\alpha = m\,a \;\Longrightarrow\; a_1 = g\sin\alpha.$$

Mouvement rectiligne uniformément accéléré sans vitesse initiale : $x(t) = \dfrac{1}{2}g\sin\alpha\,t^2$. Au point $B$, $AB = \dfrac{1}{2}g\sin\alpha\,t_{AB}^2$, donc :

$$t_{AB} = \sqrt{\frac{2\,AB}{g\sin\alpha}} = \sqrt{\frac{2\times 1{,}6}{10\times \sin 30^\circ}} = \boxed{0{,}8\ \mathrm{s}}.$$

**1-2)** *Vitesse $V_B$.*

$$v(t) = g\sin\alpha\,t \;\Longrightarrow\; V_B = g\sin\alpha\,t_{AB} = 10\times \sin 30^\circ \times 0{,}8 = \boxed{4\ \mathrm{m\cdot s^{-1}}}.$$

**2)** *Intensité $f$ sur $BC$.*

Sur $BC$, $(S)$ subit $\vec P$, $\vec R_N$ et $\vec f$ (horizontale, opposée à la vitesse). Projection sur $Ox$ horizontal :

$$-f = m\,a_2 \;\Longrightarrow\; a_2 = -\frac{f}{m}.$$

Mouvement uniformément décéléré : $v = a_2\,t + V_B$. En $C$, $v_C = 0$ :

$$0 = -\frac{f}{m}\,t_{BC} + V_B \;\Longrightarrow\; f = \frac{m\,V_B}{t_{BC}} = \frac{50\cdot 10^{-3}\times 4}{0{,}5} = \boxed{0{,}4\ \mathrm{N}}.$$

**3-1-1)** *Expression de $R$ au point $M$.*

Sur $CD$ (frottements négligés), 2ᵉ loi de Newton dans la base de Freinet, projection sur $\vec n$ (vers le centre $O$) :

$$mg\cos\theta - R = m\,\frac{v^2}{r} \;\Longrightarrow\; R = m\left(g\cos\theta - \frac{v^2}{r}\right).$$

Comme $v = r\dot\theta$, $\dfrac{v^2}{r} = r\dot\theta^2$, d'où :

$$\boxed{R = m\left(g\cos\theta - r\,\dot\theta^2\right)}.$$

**3-1-2)** *Accélération angulaire $\ddot\theta$.*

Projection sur $\vec u$ (tangentielle) : $mg\sin\theta = m\dfrac{dv}{dt} = m\,r\ddot\theta$, donc :

$$\boxed{\ddot\theta = \frac{g\sin\theta}{r}}.$$

**3-2)** *Expression de $R$ en fonction de $m$, $g$, $\theta$.*

Avec $\dot\theta = \sqrt{\dfrac{2g}{r}(1 - \cos\theta)}$, donc $r\dot\theta^2 = 2g(1 - \cos\theta)$ :

$$R = m\big[g\cos\theta - 2g(1 - \cos\theta)\big] = \boxed{mg(3\cos\theta - 2)}.$$

**3-3)** *Valeur de $\theta$ où $(S)$ quitte la gouttière.*

Le solide quitte la gouttière lorsque $R = 0$ :

$$mg(3\cos\theta - 2) = 0 \;\Longrightarrow\; \cos\theta = \frac{2}{3} \;\Longrightarrow\; \boxed{\theta \approx 48{,}2^\circ}.$$

<div class="mt-6 mb-2 text-base font-bold" style="color:#1F4E79">Partie II : Satellite géostationnaire</div>

**1)** *Distance parcourue au décollage.*

2ᵉ loi de Newton sur l'axe $Oz$ vertical : $F - P = M\,a$, donc $a = \dfrac{F}{M} - g_0$. Mouvement rectiligne uniformément varié partant du repos :

$$d = z(t_1) = \frac{1}{2}\left(\frac{F}{M} - g_0\right)t_1^2 = \frac{1}{2}\left(\frac{1{,}16\cdot 10^7}{7{,}3\cdot 10^5} - 9{,}8\right)\times 6^2 \approx \boxed{109{,}6\ \mathrm{m}}.$$

**2-1)** *Vitesse $V_s$ sur l'orbite basse.*

La force gravitationnelle joue le rôle de force centripète : $G\dfrac{M_T m_s}{d_1^2} = m_s\dfrac{V_s^2}{d_1}$, donc :

$$V_s = \sqrt{\frac{G M_T}{d_1}} = \sqrt{\frac{6{,}67\cdot 10^{-11}\times 6{,}0\cdot 10^{24}}{6580\cdot 10^3}} \approx \boxed{7{,}80\cdot 10^3\ \mathrm{m\cdot s^{-1}}}.$$

**2-2)** *Durée $T_s$ et 3ᵉ loi de Kepler.*

$V_s = \dfrac{2\pi d_1}{T_s}$, donc :

$$T_s = \frac{2\pi d_1}{V_s} = 2\pi\sqrt{\frac{d_1^3}{G M_T}} \;\Longrightarrow\; \frac{T_s^2}{d_1^3} = \frac{4\pi^2}{G M_T} = \text{Cte}.$$

C'est bien la **3ᵉ loi de Kepler**.

**3-1)** *Point de vitesse minimale.*

Sur l'orbite elliptique de transfert, d'après la loi des aires, la vitesse est minimale au point le plus éloigné de la Terre (apogée), c'est-à-dire au point **$B$**.

**3-2-1)** *Expression de $h$.*

Le satellite géostationnaire ($d = R_T + h$) a la période $T$ de la Terre. La 3ᵉ loi de Kepler donne :

$$\frac{T^2}{(R_T + h)^3} = \frac{4\pi^2}{G M_T} \;\Longrightarrow\; (R_T + h)^3 = \frac{G M_T\,T^2}{4\pi^2}.$$

$$\boxed{h = \sqrt[3]{\frac{T^2\,G\,M_T}{4\pi^2}} - R_T}.$$

**3-2-2)** *Vitesse sur l'orbite géostationnaire.*

D'après 2-1, $V = \sqrt{\dfrac{G M_T}{R_T + h}}$ avec $R_T + h = \sqrt[3]{\dfrac{T^2 G M_T}{4\pi^2}}$. En simplifiant :

$$V = \sqrt[3]{\frac{2\pi G M_T}{T}} = \sqrt[3]{\frac{2\pi \times 6{,}67\cdot 10^{-11}\times 6{,}0\cdot 10^{24}}{23{,}9345\times 3600}} \approx \boxed{3{,}08\cdot 10^3\ \mathrm{m\cdot s^{-1}}}.$$
