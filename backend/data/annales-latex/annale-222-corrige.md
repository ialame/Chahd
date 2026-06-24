<div class="my-5 rounded-lg px-4 py-2.5 text-white font-bold" style="background:#1F4E79">Exercice 1 — Chimie <span class="font-normal text-white/80 text-sm">(6,5 points)</span></div>

<div class="mt-6 mb-2 text-base font-bold" style="color:#1F4E79">Première partie : Dosage de l'acide lactique</div>

**1.1)** *Expression du pH de $(S_B)$.*

L'hydroxyde de sodium est une base forte, totalement dissociée, donc $[\mathrm{HO^-}]_{\text{éq}} = C_B$. Le produit ionique de l'eau donne $K_e = [\mathrm{H_3O^+}]_{\text{éq}}\,[\mathrm{HO^-}]_{\text{éq}}$, d'où $[\mathrm{H_3O^+}]_{\text{éq}} = \dfrac{K_e}{C_B}$. Ainsi :
$$\mathrm{pH} = -\log[\mathrm{H_3O^+}]_{\text{éq}} = -\log\!\left(\frac{K_e}{C_B}\right) \;\Longrightarrow\; \boxed{\mathrm{pH} = \log C_B - \log K_e}$$

**1.2)** *Vérification de $C_B$.*

De la relation précédente, $C_B = K_e\cdot10^{\mathrm{pH}}$, soit
$$C_B = 10^{-14}\cdot10^{12{,}70} = 10^{-1{,}30} \approx \boxed{5{,}0\cdot10^{-2}\ \mathrm{mol\cdot L^{-1}}}$$

**2.1)** *Équation du dosage.*

L'acide $\mathrm{HA}$ réagit totalement avec les ions hydroxyde :
$$\mathrm{HA_{(aq)} + HO^-_{(aq)} \longrightarrow A^-_{(aq)} + H_2O_{(l)}}$$

**2.2)** *Relation donnant $C_A$.*

À l'équivalence, les deux réactifs sont introduits dans les proportions stœchiométriques, donc la quantité d'acide initiale égale la quantité de base versée :
$$n(\mathrm{HA})_i = n(\mathrm{HO^-})_{\text{versé}} \;\Longrightarrow\; C_A\,V_A = C_B\,V_{BE} \;\Longrightarrow\; \boxed{C_A = \frac{C_B\,V_{BE}}{V_A}}$$

**2.3)** *Établissement de $V_B\cdot10^{-\mathrm{pH}} = K_A(V_{BE}-V_B)$.*

La constante d'acidité s'écrit $K_A = \dfrac{[\mathrm{A^-}]_{\text{éq}}\,[\mathrm{H_3O^+}]_{\text{éq}}}{[\mathrm{HA}]_{\text{éq}}} = 10^{-\mathrm{pH}}\cdot\dfrac{[\mathrm{A^-}]_{\text{éq}}}{[\mathrm{HA}]_{\text{éq}}}$.

Avant l'équivalence ($0 < V_B < V_{BE}$), le réactif limitant est $\mathrm{HO^-}$ : l'avancement vaut $x_{\max} = C_B\,V_B$. Dans le mélange de volume $V_A + V_B$ :
$$[\mathrm{A^-}]_{\text{éq}} = \frac{C_B\,V_B}{V_A+V_B}, \qquad [\mathrm{HA}]_{\text{éq}} = \frac{C_A\,V_A - C_B\,V_B}{V_A+V_B} = \frac{C_B\,V_{BE} - C_B\,V_B}{V_A+V_B}$$
(en utilisant $C_A V_A = C_B V_{BE}$). En reportant :
$$K_A = 10^{-\mathrm{pH}}\cdot\frac{C_B\,V_B}{C_B(V_{BE}-V_B)} = 10^{-\mathrm{pH}}\cdot\frac{V_B}{V_{BE}-V_B}$$
$$\Longrightarrow\; \boxed{V_B\cdot10^{-\mathrm{pH}} = K_A\,(V_{BE}-V_B)}$$

**2.4.1)** *Détermination de $V_{BE}$ et de $C_A$.*

La relation précédente se réécrit $V_B\cdot10^{-\mathrm{pH}} = -K_A\,V_B + K_A\,V_{BE}$ : c'est une fonction affine de $V_B$ de coefficient directeur $a = -K_A$ et d'ordonnée à l'origine $b = K_A\,V_{BE}$.

La courbe coupe l'axe des abscisses ($10^{-\mathrm{pH}}\cdot V_B = 0$) pour $V_B = V_{BE}$ :
$$\boxed{V_{BE} = 12{,}4\ \mathrm{mL}}$$
On en déduit :
$$C_A = \frac{C_B\,V_{BE}}{V_A} = \frac{5{,}0\cdot10^{-2}\times12{,}4}{25} \approx \boxed{2{,}48\cdot10^{-2}\ \mathrm{mol\cdot L^{-1}}}$$

**2.4.2)** *Détermination du $\mathrm{p}K_A$.*

L'ordonnée à l'origine et la pente donnent $K_A = -a = \dfrac{b}{V_{BE}}$. La lecture graphique fournit $b = 1{,}55\cdot10^{-5}$, donc $K_A = 1{,}55\cdot10^{-5}$ et
$$\mathrm{p}K_A = -\log K_A = -\log(1{,}55\cdot10^{-5}) \approx \boxed{3{,}90}$$

**2.5)** *Le lait est-il frais ?*

Masse d'acide lactique par litre : $C_A\,M = 2{,}48\cdot10^{-2}\times90 \approx 2{,}23\ \mathrm{g\cdot L^{-1}}$.

Or $1{,}0\cdot10^{-1}\ \mathrm{g\cdot L^{-1}}$ correspond à $1\,^\circ\mathrm{D}$, donc l'acidité vaut
$$\frac{2{,}23}{1{,}0\cdot10^{-1}} \approx 22{,}3\,^\circ\mathrm{D}$$
<div class="my-2 font-semibold" style="color:#1F4E79">Comme $22{,}3\,^\circ\mathrm{D} > 18\,^\circ\mathrm{D}$, le lait étudié n'est pas frais.</div>

<div class="mt-6 mb-2 text-base font-bold" style="color:#1F4E79">Deuxième partie : Pile chrome-argent</div>

**1)** *Équation bilan.*

Le courant entre dans la pile par l'électrode de chrome (borne COM = $-$), donc le chrome est l'anode (oxydation) et l'argent la cathode (réduction) :
$$\mathrm{Cr_{(s)} \rightarrow Cr^{3+}_{(aq)} + 3\,e^-} \qquad 3\times\left(\mathrm{Ag^+_{(aq)} + e^- \rightarrow Ag_{(s)}}\right)$$
$$\boxed{\mathrm{3\,Ag^+_{(aq)} + Cr_{(s)} \longrightarrow Cr^{3+}_{(aq)} + 3\,Ag_{(s)}}}$$

**2)** *Avancement à $t_1$.*

L'électrode de chrome (anode) est consommée ; sa masse diminue de $|\Delta m| = 52\ \mathrm{mg}$. Or $\Delta n(\mathrm{Cr}) = -x$, donc :
$$x = \frac{|\Delta m(\mathrm{Cr})|}{M(\mathrm{Cr})} = \frac{52\cdot10^{-3}}{52} = \boxed{10^{-3}\ \mathrm{mol}}$$

**3)** *Concentration en $\mathrm{Cr^{3+}}$ à $t_1$.*

D'après le tableau d'avancement, $n(\mathrm{Cr^{3+}}) = C_1\,V + x$ :
$$[\mathrm{Cr^{3+}}] = \frac{C_1\,V + x}{V} = C_1 + \frac{x}{V} = 0{,}100 + \frac{10^{-3}}{0{,}100} = \boxed{0{,}11\ \mathrm{mol\cdot L^{-1}}}$$

**4)** *Valeur de $t_1$.*

La quantité d'électrons échangés est $n(e^-) = 3x$, et $Q = n(e^-)\,F = I_0\,t_1$ :
$$t_1 = \frac{3x\,F}{I_0} = \frac{3\times10^{-3}\times9{,}65\cdot10^{4}}{50\cdot10^{-3}} \approx 5{,}79\cdot10^{3}\ \mathrm{s} \;\Longrightarrow\; \boxed{t_1 \approx 1\,\mathrm{h}\,36\,\mathrm{min}\,30\,\mathrm{s}}$$

<div class="my-5 rounded-lg px-4 py-2.5 text-white font-bold" style="background:#1F4E79">Exercice 2 — Ondes <span class="font-normal text-white/80 text-sm">(2,5 points)</span> · Transformations nucléaires <span class="font-normal text-white/80 text-sm">(2,25 points)</span></div>

<div class="mt-6 mb-2 text-base font-bold" style="color:#1F4E79">I — Diffraction de la lumière</div>

**1)** *Nombre d'affirmations fausses.*

- a) Faux : la diffraction n'est pas la dispersion.
- b) Faux : à travers une fente, la célérité (milieu inchangé) ne change pas.
- c) Faux : la longueur d'onde n'est pas modifiée par la fente.
- d) Faux : dans un milieu dispersif l'indice dépend de $\lambda$, mais l'affirmation telle qu'énoncée est incorrecte.

<div class="my-2 font-semibold" style="color:#1F4E79">Il y a donc 4 affirmations fausses.</div>

**2.1)** *Expression de $\theta$.*

La tache centrale a une largeur $X$, et le demi-angle s'appuie sur la demi-largeur $\dfrac{X}{2}$ vue depuis la fente à la distance $D$ :
$$\tan\theta = \frac{X/2}{D} = \frac{X}{2D}$$
Pour de faibles écarts angulaires $\tan\theta \approx \theta$, donc :
$$\boxed{\theta = \frac{X}{2D}}$$

**2.2)** *Le rapport $\dfrac{\lambda}{X}$ est constant ; calcul de $\lambda_2$.*

L'écart angulaire de diffraction vaut $\theta = \dfrac{\lambda}{a}$. En l'égalant à l'expression précédente :
$$\frac{\lambda}{a} = \frac{X}{2D} \;\Longrightarrow\; \frac{\lambda}{X} = \frac{a}{2D}$$
Pour un dispositif donné, $a$ et $D$ sont fixés, donc $\dfrac{\lambda}{X}$ est constant. On en déduit :
$$\frac{\lambda_2}{X_2} = \frac{\lambda_1}{X_1} \;\Longrightarrow\; \lambda_2 = \frac{X_2}{X_1}\,\lambda_1 = \frac{5{,}4}{6{,}0}\times632{,}8\ \mathrm{nm} \approx \boxed{569{,}5\ \mathrm{nm}}$$

**3)** *Interprétation en lumière blanche.*

La lumière blanche est polychromatique. Comme $\theta = \dfrac{\lambda}{a}$ dépend de $\lambda$, chaque radiation est diffractée selon un angle différent. Au centre, toutes les radiations se superposent : la tache centrale apparaît blanche, tandis que sur les côtés les radiations se séparent, donnant des taches latérales irisées.

**4)** *Longueur d'onde et vitesse dans le milieu d'indice $n = 1{,}5$.*

La longueur d'onde dans le milieu vaut $\lambda = \dfrac{\lambda_1}{n}$ (la fréquence est invariante) :
$$\lambda = \frac{632{,}8}{1{,}5} \approx \boxed{421{,}9\ \mathrm{nm}}$$
La vitesse de propagation :
$$v = \frac{c}{n} = \frac{3\cdot10^{8}}{1{,}5} = \boxed{2\cdot10^{8}\ \mathrm{m\cdot s^{-1}}}$$

<div class="mt-6 mb-2 text-base font-bold" style="color:#1F4E79">II — Désintégration de l'oxygène 15</div>

**1)** *Équation de désintégration.*

Émission d'un positron ${}^{\ 0}_{1}\mathrm{e}$ (radioactivité $\beta^+$). Les lois de conservation de Soddy donnent :
$$15 = A + 0 \;\Rightarrow\; A = 15, \qquad 8 = Z + 1 \;\Rightarrow\; Z = 7$$
$$\boxed{{}^{15}_{\ 8}\mathrm{O} \longrightarrow {}^{15}_{\ 7}\mathrm{X} + {}^{\ 0}_{1}\mathrm{e}}$$

**2)** *Énergie libérée $|\Delta E|$.*

$$\Delta E = \left[m\!\left({}^{15}_{\ 7}\mathrm{X}\right) + m\!\left({}^{\ 0}_{1}\mathrm{e}\right) - m\!\left({}^{15}_{\ 8}\mathrm{O}\right)\right]c^2$$
$$\Delta E = (15{,}000109 + 5{,}486\cdot10^{-4} - 15{,}003066)\ \mathrm{u}\cdot c^2 = -2{,}4084\cdot10^{-3}\times931{,}494\ \mathrm{MeV}$$
$$\boxed{|\Delta E| \approx 2{,}24\ \mathrm{MeV}}$$

**3)** *Proportion de molécules d'eau marquées.*

Soit $N_0$ le nombre de noyaux $^{15}\mathrm{O}$ (donc de molécules d'eau marquées) et $N$ le nombre total de molécules d'eau. La proportion cherchée est $p = \dfrac{N_0}{N}$.

Nombre total de molécules d'eau (masse $m = \rho V$) :
$$N = \frac{m}{M}\,N_A = \frac{\rho V}{M}\,N_A$$
Nombre de noyaux radioactifs à partir de l'activité initiale $a_0 = \lambda N_0$ avec $\lambda = \dfrac{\ln 2}{t_{1/2}}$ :
$$N_0 = \frac{a_0}{\lambda} = \frac{a_0\,t_{1/2}}{\ln 2}$$
Donc :
$$p = \frac{N_0}{N} = \frac{a_0\,t_{1/2}}{\ln 2}\cdot\frac{M}{\rho V N_A} = \frac{3{,}7\cdot10^{7}\times122\times18}{\ln 2 \times 1 \times 5 \times 6{,}022\cdot10^{23}}$$
$$\boxed{p \approx 3{,}9\cdot10^{-14}} \quad(\text{soit environ } 3{,}9\cdot10^{-12}\,\%)$$

**4)** *Justification de la nouvelle injection à $t \approx 20\ \mathrm{min}$.*

La loi de décroissance radioactive donne $a(t_1) = a_0\,e^{-\lambda t_1}$, d'où :
$$t_1 = -\frac{t_{1/2}}{\ln 2}\,\ln\!\left(\frac{a(t_1)}{a_0}\right) = -\frac{122}{\ln 2}\,\ln(0{,}0015) \approx 1144\ \mathrm{s} \approx 19\ \mathrm{min}$$
<div class="my-2 font-semibold" style="color:#1F4E79">$t_1 \approx 19\ \mathrm{min}$ est proche de $20\ \mathrm{min}$ : on peut donc effectuer une nouvelle injection au bout d'environ 20 minutes.</div>

<div class="my-5 rounded-lg px-4 py-2.5 text-white font-bold" style="background:#1F4E79">Exercice 3 — Électricité <span class="font-normal text-white/80 text-sm">(5,5 points)</span></div>

<div class="mt-6 mb-2 text-base font-bold" style="color:#1F4E79">1 — Charge du condensateur</div>

**1.1)** *Équation différentielle vérifiée par $q(t)$.*

Loi des mailles : $u_R + u_C = E$, avec $u_R = R_0\,i = R_0\,\dfrac{\mathrm{d}q}{\mathrm{d}t}$ et $u_C = \dfrac{q}{C}$ :
$$R_0\,\frac{\mathrm{d}q}{\mathrm{d}t} + \frac{q}{C} = E \;\Longrightarrow\; \boxed{\frac{\mathrm{d}q}{\mathrm{d}t} + \frac{1}{R_0 C}\,q = \frac{E}{R_0}}$$

**1.2)** À partir de l'équation différentielle, $i = \dfrac{\mathrm{d}q}{\mathrm{d}t} = -\dfrac{1}{R_0 C}\,q + \dfrac{E}{R_0}$ : $i(t)$ est une fonction affine de $q$, de pente $a = -\dfrac{1}{R_0 C} = -\dfrac{1}{\tau}$ et d'ordonnée à l'origine $b = \dfrac{E}{R_0}$.

**1.2.1)** *Valeur de $E$.* Lecture : $b = 0{,}25\ \mathrm{A}$ (intersection avec l'axe des ordonnées). Donc :
$$E = b\,R_0 = 0{,}25\times40 = \boxed{10\ \mathrm{V}}$$

**1.2.2)** *Constante de temps.* La pente vaut
$$a = \frac{\Delta i}{\Delta q} = \frac{0{,}05 - 0{,}25}{20\cdot10^{-6} - 0} = -10^{4}\ \mathrm{s^{-1}} \;\Longrightarrow\; \tau = -\frac{1}{a} = \boxed{10^{-4}\ \mathrm{s}}$$

**1.3)** *Vérification de $C$.* De $\tau = R_0\,C$ :
$$C = \frac{\tau}{R_0} = \frac{10^{-4}}{40} = 2{,}5\cdot10^{-6}\ \mathrm{F} = \boxed{2{,}5\ \mathrm{\mu F}}$$

<div class="mt-6 mb-2 text-base font-bold" style="color:#1F4E79">2 — Décharge du condensateur dans la bobine</div>

**2.1.1)** *Équation différentielle.* Loi des mailles dans le circuit (R₁, L, r, C) : $u_C + u_R + u_L = 0$, avec $u_R = R_1\,i$, $u_L = r\,i + L\,\dfrac{\mathrm{d}i}{\mathrm{d}t}$ et $i = \dfrac{\mathrm{d}q}{\mathrm{d}t}$ :
$$\frac{q}{C} + (R_1 + r)\,\frac{\mathrm{d}q}{\mathrm{d}t} + L\,\frac{\mathrm{d}^2 q}{\mathrm{d}t^2} = 0$$
En divisant par $L$ :
$$\boxed{\frac{\mathrm{d}^2 q}{\mathrm{d}t^2} + \underbrace{\frac{R_1+r}{L}}_{A}\,\frac{\mathrm{d}q}{\mathrm{d}t} + \underbrace{\frac{1}{LC}}_{B}\,q = 0}$$
$A$ et $B$ sont bien positifs.

**2.1.2)** *Tension aux bornes de la bobine à $t = 0^+$.* À l'instant du basculement, le condensateur est chargé sous $u_C(0) = E$ et le courant est nul ($i(0) = 0$, continuité dans la bobine), donc $u_R(0) = R_1\,i(0) = 0$. La loi des mailles donne :
$$u_L(0) = -u_C(0) = -E = \boxed{-10\ \mathrm{V}}$$

**2.1.3)** *Vérification de $L = 1{,}0\ \mathrm{H}$.* La période propre $T_0 = 2\pi\sqrt{LC}$, et la lecture graphique donne $T = T_0 = 10\ \mathrm{ms}$. Donc :
$$L = \frac{T_0^2}{4\pi^2 C} = \frac{(10\cdot10^{-3})^2}{4\times10\times2{,}5\cdot10^{-6}} = \boxed{1{,}0\ \mathrm{H}}$$
(en prenant $\pi^2 = 10$).

**2.1.4)** *Énergie dissipée par effet Joule.* L'énergie totale est $E_T = \dfrac{1}{2}L\,i^2 + \dfrac{q^2}{2C}$. Aux instants où $q$ est extrémal, $i = 0$, donc seule subsiste l'énergie du condensateur :
- à $t = 0$ : $q_0 = 25\ \mathrm{\mu C}$, $E_{T0} = \dfrac{q_0^2}{2C}$ ;
- à $t_1$ : $q_1 = -15\ \mathrm{\mu C}$, $E_{T1} = \dfrac{q_1^2}{2C}$.

$$\Delta E = E_{T1} - E_{T0} = \frac{q_1^2 - q_0^2}{2C} = \frac{(15\cdot10^{-6})^2 - (25\cdot10^{-6})^2}{2\times2{,}5\cdot10^{-6}} = -8\cdot10^{-5}\ \mathrm{J}$$
<div class="my-2 font-semibold" style="color:#1F4E79">L'énergie dissipée par effet Joule est $|\Delta E| = 80\ \mathrm{\mu J}$.</div>

**2.2)** *Valeur minimale de $R$.* La condition apériodique $A > 2\sqrt{B}$ s'écrit :
$$\frac{R_T}{L} > 2\sqrt{\frac{1}{LC}} \;\Longrightarrow\; R_T > 2\sqrt{\frac{L}{C}} = R_c, \qquad R_c = 2\sqrt{\frac{L}{C}}$$
**Analyse dimensionnelle :** avec $[L] = \dfrac{[U][t]}{[I]}$ et $[C] = \dfrac{[I][t]}{[U]}$,
$$[R_c] = \left(\frac{[L]}{[C]}\right)^{1/2} = \left(\frac{[U]^2}{[I]^2}\right)^{1/2} = \frac{[U]}{[I]} = [R]$$
$R_c$ a donc bien la dimension d'une résistance.

**Valeur minimale :** $R_T = R + r > R_c$, donc $R > R_c - r = 2\sqrt{\dfrac{L}{C}} - r$ :
$$R_{\min} = 2\sqrt{\frac{1}{2{,}5\cdot10^{-6}}} - 12 \approx 1253\ \Omega \;\Longrightarrow\; \boxed{R_{\min} \approx 1253\ \Omega}$$

<div class="mt-6 mb-2 text-base font-bold" style="color:#1F4E79">3 — Oscillations forcées RLC série</div>

**3.1)** *Intensité indiquée par l'ampèremètre.* L'ampèremètre indique $I_{\text{eff}} = \dfrac{U}{Z} = \dfrac{U_m}{Z\sqrt{2}}$. La lecture de l'oscillogramme donne $U_m = 3\ \mathrm{V}$ (3 divisions × 1 V) :
$$I_{\text{eff}} = \frac{3}{390{,}4\times\sqrt{2}} \approx 5{,}43\cdot10^{-3}\ \mathrm{A} = \boxed{5{,}43\ \mathrm{mA}}$$

**3.2)** *Valeur de $R_2$.* La tension efficace aux bornes du conducteur ohmique vaut $U_R = R_2\,I_{\text{eff}}$, avec $U_{Rm} = 2\ \mathrm{V}$ (lecture) :
$$R_2 = \frac{U_{Rm}}{I_m} = \frac{U_{Rm}}{I_{\text{eff}}\sqrt{2}} = \frac{2}{5{,}43\cdot10^{-3}\times\sqrt{2}} \approx \boxed{260\ \Omega}$$

**3.3)** *Expression numérique de $u(t)$.* Lecture : période $T = 4\times2\ \mathrm{ms} = 8\ \mathrm{ms}$, donc $N = \dfrac{1}{T} = 125\ \mathrm{Hz}$ et $2\pi N = 250\pi\ \mathrm{rad\cdot s^{-1}}$. Le décalage temporel entre les deux courbes correspond à $\dfrac{T}{8}$, soit
$$|\varphi| = \frac{2\pi}{T}\cdot\frac{T}{8} = \frac{\pi}{4}$$
La tension $u$ est en avance de phase sur $i$ (circuit inductif), donc $\varphi = +\dfrac{\pi}{4}$ :
$$\boxed{u(t) = 3\cos\!\left(250\pi\,t + \frac{\pi}{4}\right)\ (\mathrm{V})}$$

<div class="my-5 rounded-lg px-4 py-2.5 text-white font-bold" style="background:#1F4E79">Exercice 4 — Mécanique <span class="font-normal text-white/80 text-sm">(3,25 points)</span></div>

<div class="mt-6 mb-2 text-base font-bold" style="color:#1F4E79">Partie I : Mouvement d'un skieur</div>

**1.1)** *Accélération (sans frottement fluide).*

Bilan : poids $\vec{P}$, réaction de la piste $\vec{R} = \vec{N} + \vec{T}$. Deuxième loi de Newton : $\vec{P} + \vec{N} + \vec{T} = m\,\vec{a}_G$.

Projection sur $Ox$ (ligne de plus grande pente, sens du mouvement) : $mg\sin\alpha - T = m\,a_G$.
Projection sur $Oy$ : $-mg\cos\alpha + N = 0 \Rightarrow N = mg\cos\alpha$.

Avec $T = k\,N = k\,mg\cos\alpha$ :
$$a_G = g\sin\alpha - \frac{T}{m} = g\sin\alpha - k\,g\cos\alpha \;\Longrightarrow\; \boxed{a_G = g(\sin\alpha - k\cos\alpha)}$$

**1.2)** *Accélération graphique.* La courbe $v = f(t)$ est une droite passant par l'origine, donc $v = a_G\,t$ avec :
$$a_G = \frac{\Delta v}{\Delta t} = \frac{1{,}4 - 0}{2 - 0} = \boxed{0{,}7\ \mathrm{m\cdot s^{-2}}}$$

**1.3)** *Vérification de $k$.* De $a_G = g(\sin\alpha - k\cos\alpha)$ :
$$k = \frac{1}{\cos\alpha}\left(\sin\alpha - \frac{a_G}{g}\right) = \frac{1}{\cos45^\circ}\left(\sin45^\circ - \frac{0{,}7}{10}\right) \approx \boxed{0{,}9}$$

**2.1)** *Équation différentielle (avec frottement fluide).*

On ajoute la force $\vec{F} = -\lambda\vec{v}$. Projection sur $Ox$ :
$$mg\sin\alpha - T - \lambda v = m\,\frac{\mathrm{d}v}{\mathrm{d}t}$$
soit, en divisant par $m$ :
$$\frac{\mathrm{d}v}{\mathrm{d}t} + \underbrace{\frac{\lambda}{m}}_{A}\,v + \underbrace{\left(\frac{T}{m} - g\sin\alpha\right)}_{B} = 0 \;\Longrightarrow\; \boxed{\frac{\mathrm{d}v}{\mathrm{d}t} + A\,v + B = 0}$$
avec $A = \dfrac{\lambda}{m} = \dfrac{5}{75} \approx 0{,}067\ \mathrm{s^{-1}}$ et $B = \dfrac{k\,g\cos\alpha}{m} - g\sin\alpha$ (constante négative ici).

**2.2)** *Vitesse limite.* En régime permanent $\dfrac{\mathrm{d}v_\ell}{\mathrm{d}t} = 0$, donc $A\,v_\ell + B = 0$ :
$$v_\ell = -\frac{B}{A} = \frac{m\,g(\sin\alpha - k\cos\alpha)}{\lambda} = \frac{75\times10\times(\sin45^\circ - 0{,}9\cos45^\circ)}{5} \approx \boxed{10{,}6\ \mathrm{m\cdot s^{-1}}}$$

**2.3)** *Vitesse $v_2$ par la méthode d'Euler.*

D'abord $a_1 = -B - A\,v_1$ (d'après l'équation différentielle). Avec $-B = a_G$ sans frottement... numériquement : $a_1 = -(-0{,}71) - 0{,}067\times6{,}30 \approx 0{,}29\ \mathrm{m\cdot s^{-2}}$.

Pas $\Delta t = t_2 - t_1 = 1{,}4\ \mathrm{s}$ :
$$v_2 = v_1 + a_1\,\Delta t = 6{,}30 + 0{,}29\times1{,}4 \approx \boxed{6{,}70\ \mathrm{m\cdot s^{-1}}}$$

<div class="mt-6 mb-2 text-base font-bold" style="color:#1F4E79">Partie II : Sphère chargée</div>

**1)** *Équations horaires.*

Bilan : poids $\vec{P} = m\vec{g}$ et force électrostatique $\vec{F} = q\vec{E}$. Deuxième loi de Newton :
$$\vec{a}_G = \vec{g} + \frac{q}{m}\,\vec{E}$$
Le champ $\vec{E}$ est horizontal ($\parallel Ox$, $E = \dfrac{U_0}{d}$) et $\vec{g}$ vertical descendant ($\parallel -Oy$) :
$$a_x = \frac{q}{m}\,E = \alpha\,\frac{U_0}{d}, \qquad a_y = -g$$
Conditions initiales : vitesse nulle, $x_0 = \dfrac{d}{2}$, $y_0 = \ell$. Par double intégration :
$$\boxed{x(t) = \frac{1}{2}\,\alpha\,\frac{U_0}{d}\,t^2 + \frac{d}{2}}, \qquad \boxed{y(t) = -\frac{1}{2}\,g\,t^2 + \ell}$$
Application numérique ($\alpha = 10^{-6}$, $d = 4\cdot10^{-2}$, $\ell = 1$, $g = 10$) :
$$x(t) = 1{,}25\cdot10^{-5}\,U_0\,t^2 + 2\cdot10^{-2}, \qquad y(t) = -5\,t^2 + 1$$

**2)** *Équation de la trajectoire.*

De $x = 1{,}25\cdot10^{-5}\,U_0\,t^2 + 2\cdot10^{-2}$, on tire $t^2 = \dfrac{x - 2\cdot10^{-2}}{1{,}25\cdot10^{-5}\,U_0}$. En reportant dans $y = -5t^2 + 1$ :
$$\boxed{y = -\frac{4\cdot10^{5}}{U_0}\,x + \frac{8\cdot10^{3}}{U_0} + 1}$$

**3)** *Détermination de $U_0$.*

La trajectoire passe par $P(d,0)$, soit $x_P = d = 4\cdot10^{-2}\ \mathrm{m}$, $y_P = 0$ :
$$0 = -\frac{4\cdot10^{5}}{U_0}\,d + \frac{8\cdot10^{3}}{U_0} + 1 \;\Longrightarrow\; U_0 = 4\cdot10^{5}\,d - 8\cdot10^{3}$$
$$U_0 = 4\cdot10^{5}\times4\cdot10^{-2} - 8\cdot10^{3} = 8\cdot10^{3}\ \mathrm{V} \;\Longrightarrow\; \boxed{U_0 = 8\ \mathrm{kV}}$$
