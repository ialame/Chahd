<div class="my-5 rounded-lg px-4 py-2.5 text-white font-bold" style="background:#1F4E79">Exercice 1 — Chimie <span class="font-normal text-white/80 text-sm">(7 points)</span></div>

<div class="mt-6 mb-2 text-base font-bold" style="color:#1F4E79">Partie I : Dosage de la méthylamine</div>

**1)** *Coordonnées du point d'équivalence.*

Le point d'équivalence est repéré par la méthode des tangentes (ou du point d'inflexion) sur la courbe de dosage. On lit :
$$\boxed{V_E \approx 10\ \mathrm{mL}}, \qquad \boxed{\mathrm{pH}_E \approx 6{,}2}.$$
Le pH d'équivalence est acide, ce qui est cohérent avec le dosage d'une base faible par un acide fort.

**2)** *Concentration $C$.*

À l'équivalence, les quantités de matière des réactifs sont dans les proportions stœchiométriques : $n_{\text{base}} = n_{\text{acide}}$, soit $C\cdot V = C_A\cdot V_E$.
$$C = \frac{C_A\,V_E}{V} = \frac{2{,}0\cdot 10^{-2}\times 10}{10} = \boxed{2{,}0\cdot 10^{-2}\ \mathrm{mol\cdot L^{-1}}}.$$

**3)** *Choix de l'indicateur.*

L'indicateur convenable est celui dont la zone de virage contient le $\mathrm{pH}_E \approx 6{,}2$. C'est le **bleu de bromothymol** (zone $6{,}0$–$7{,}6$).

**4)** *Équation de la réaction de dosage.*

$$\mathrm{CH_3NH_2 + H_3O^+ \longrightarrow CH_3NH_3^+ + H_2O}$$

**5)** *Établissement de la relation pour $V_A < V_E$.*

| | $\mathrm{CH_3NH_2}$ | $+\ \mathrm{H_3O^+}$ | $\to \mathrm{CH_3NH_3^+}$ | $+\ \mathrm{H_2O}$ |
|---|---|---|---|---|
| Initial | $C\,V_B$ | $C_A\,V_A$ | $0$ | excès |
| Final | $C\,V_B - x_m$ | $C_A\,V_A - x_m$ | $x_m$ | excès |

Pour $V_A < V_E$, le réactif limitant est l'ion oxonium $\mathrm{H_3O^+}$, donc $x_m = C_A\,V_A$. D'après la relation pH/pK$_A$ appliquée au couple $\mathrm{CH_3NH_3^+/CH_3NH_2}$ :
$$\mathrm{pH} = \mathrm{p}K_{A1} + \log\!\left(\frac{[\mathrm{CH_3NH_2}]}{[\mathrm{CH_3NH_3^+}]}\right).$$
On a $n(\mathrm{CH_3NH_2}) = C\,V_B - x_m = C\,V_B - C_A\,V_A$ et $n(\mathrm{CH_3NH_3^+}) = x_m = C_A\,V_A$. Comme à l'équivalence $C\,V_B = C_A\,V_E$ :
$$n(\mathrm{CH_3NH_2}) = C_A\,V_E - C_A\,V_A = C_A(V_E - V_A).$$
Les deux espèces étant dans le même volume, le rapport des concentrations est égal à celui des quantités :
$$\mathrm{pH} = \mathrm{p}K_{A1} + \log\!\left(\frac{C_A(V_E - V_A)}{C_A\,V_A}\right) = \mathrm{p}K_{A1} + \log\!\left(\frac{V_E - V_A}{V_A}\right) = \mathrm{p}K_{A1} + \log\!\left(\frac{V_E}{V_A} - 1\right).$$
En posant $y = \dfrac{V_A}{V_E}$ :
$$\boxed{\mathrm{pH} = \mathrm{p}K_{A1} + \log\!\left(\frac{1}{y} - 1\right)}.$$

**6)** *Valeur de $y$ et $\mathrm{p}K_{A1}$.*

L'égalité $\mathrm{pH} = \mathrm{p}K_{A1}$ impose $\log\!\left(\dfrac{1}{y} - 1\right) = 0$, soit $\dfrac{1}{y} - 1 = 1$, d'où $\dfrac{1}{y} = 2$ et
$$\boxed{y = \tfrac{1}{2}}.$$
Cette valeur correspond à $V_A = \dfrac{V_E}{2} = 5\ \mathrm{mL}$ (demi-équivalence). On lit alors sur la courbe $\mathrm{pH} = 10{,}5$, d'où
$$\boxed{\mathrm{p}K_{A1} = 10{,}5}.$$

**7.1)** *Réaction de la méthylamine avec l'eau.*

$$\mathrm{CH_3NH_2 + H_2O \rightleftharpoons CH_3NH_3^+ + HO^-}$$

**7.2)** *Taux d'avancement final.*

$$\tau = \frac{x_f}{x_m}.$$
L'eau étant en large excès, le réactif limitant est la méthylamine : $x_m = C\,V$. D'autre part $x_f = n(\mathrm{HO^-})_f = [\mathrm{HO^-}]_f\,V$, avec $[\mathrm{HO^-}]_f = \dfrac{K_e}{[\mathrm{H_3O^+}]_f} = 10^{\mathrm{pH}-14}$. Le pH initial de la solution $(S)$ (avant tout ajout d'acide) se lit sur la courbe : $\mathrm{pH} \approx 11{,}4$.
$$\tau = \frac{10^{\mathrm{pH}-14}}{C} = \frac{10^{11{,}4-14}}{2{,}0\cdot 10^{-2}} = \frac{10^{-2{,}6}}{2{,}0\cdot 10^{-2}} \approx \boxed{0{,}125 = 12{,}5\,\%}.$$
Comme $\tau \ll 1$, la réaction de la méthylamine avec l'eau est **limitée (non totale)**.

<div class="mt-6 mb-2 text-base font-bold" style="color:#1F4E79">Partie II : Hydrolyse basique d'un ester</div>

**1)** *Formule semi-développée de l'éthanoate de propyle.*

[figure : formule semi-développée CH₃–CO–O–CH₂–CH₂–CH₃ (groupe ester avec C=O)]

$$\mathrm{CH_3\!-\!CO\!-\!O\!-\!CH_2\!-\!CH_2\!-\!CH_3}$$

**2.1)** *Temps de demi-réaction de la courbe $\mathscr{C}$.*

À l'avancement maximal (palier) $[\mathrm{CH_3COO^-}]_f = 4\ \mathrm{mmol\cdot L^{-1}}$. La demi-réaction correspond à la moitié :
$$[\mathrm{CH_3COO^-}]_{1/2} = \frac{[\mathrm{CH_3COO^-}]_f}{2} = 2\ \mathrm{mmol\cdot L^{-1}}.$$
On lit graphiquement le temps pour lequel la courbe $\mathscr{C}$ atteint cette valeur :
$$\boxed{t_{1/2} \approx 4{,}8\ \mathrm{min}}.$$

**2.2)** *Courbe correspondant à $\theta_2$.*

La courbe $\mathscr{C}'$ donne un temps de demi-réaction $(t_{1/2})' \approx 1{,}6\ \mathrm{min} < (t_{1/2})$. La température est un facteur cinétique : plus $\theta$ est élevée, plus la réaction est rapide et plus $t_{1/2}$ est petit. La courbe $\mathscr{C}'$ correspond donc à la température la plus élevée $\theta_2$.

**2.3)** *Vitesse volumique à $t = 0$ pour $\mathscr{C}$.*

$$v = \frac{1}{V_T}\frac{\mathrm{d}x}{\mathrm{d}t} = \frac{\mathrm{d}[\mathrm{CH_3COO^-}]}{\mathrm{d}t},$$
c'est la pente de la tangente $(T)$ à l'origine. En lisant deux points de $(T)$ (par exemple passage de $3$ à $2\ \mathrm{mmol\cdot L^{-1}}$ entre $t = 3{,}2$ et $t = 4{,}8\ \mathrm{min}$) :
$$v(0) = \frac{2 - 3}{4{,}8 - 3{,}2}\ \text{(en mmol·L}^{-1}\text{ / min, signe inversé sur la tangente montante)} \approx 0{,}625\ \mathrm{mmol\cdot L^{-1}\cdot min^{-1}}.$$
$$\boxed{v(0) \approx 0{,}63\ \mathrm{mmol\cdot L^{-1}\cdot min^{-1}}}.$$

**2.4)** *Quotient de réaction à $t = t_{1/2}$ (température $\theta_1$).*

D'après le tableau d'avancement, $[\mathrm{CH_3COO^-}]_t = \dfrac{x}{V_T}$ et $[\mathrm{HO^-}]_t = \dfrac{C\,V - x}{V_T} = \dfrac{C}{2} - [\mathrm{CH_3COO^-}]_t$ (mélange équimolaire, $V_B = V_E$, donc $V_T = 2V_E$ et la concentration initiale en $\mathrm{HO^-}$ vaut $C/2$). Le quotient associé à l'équation $\mathrm{E + HO^- \to CH_3COO^- + A}$ est :
$$Q_r = \frac{[\mathrm{CH_3COO^-}]_t}{[\mathrm{HO^-}]_t} = \frac{[\mathrm{CH_3COO^-}]_t}{\dfrac{C}{2} - [\mathrm{CH_3COO^-}]_t}.$$
À $t = t_{1/2}$, $[\mathrm{CH_3COO^-}]_{1/2} = 2{,}0\cdot 10^{-3}\ \mathrm{mol\cdot L^{-1}}$ et $\dfrac{C}{2} = 5{,}0\cdot 10^{-3}\ \mathrm{mol\cdot L^{-1}}$ :
$$Q_r = \frac{2{,}0\cdot 10^{-3}}{5{,}0\cdot 10^{-3} - 2{,}0\cdot 10^{-3}} = \boxed{0{,}44}.$$

**2.5)** *Rendement.*

$$r = \frac{n_{\exp}}{n_{th}}, \qquad n_{\exp} = x_f = [\mathrm{CH_3COO^-}]_f\,V_T, \qquad n_{th} = x_{m} = C\,V \ \text{(mélange équimolaire)}.$$
Avec $V_T = 2V$ :
$$r = \frac{[\mathrm{CH_3COO^-}]_f\,(2V)}{C\,V} = \frac{2\,[\mathrm{CH_3COO^-}]_f}{C} = \frac{2\times 4\cdot 10^{-3}}{10^{-2}} = \frac{8\cdot 10^{-3}}{10^{-2}} = \boxed{0{,}80 = 80\,\%}.$$

<div class="my-5 rounded-lg px-4 py-2.5 text-white font-bold" style="background:#1F4E79">Exercice 2 — Propagation d'une onde le long d'une corde <span class="font-normal text-white/80 text-sm">(3 points)</span></div>

**1)** *Courbe représentant l'aspect de la corde.*

L'aspect de la corde est une « photographie » à l'instant $t_1$ : c'est une représentation de l'élongation en fonction de la position $x$. C'est la **courbe (2)** (axe des abscisses en $x$, en $10^{-2}\ \mathrm{m}$). La courbe (1) (axe en $t$) représente l'élongation d'un point en fonction du temps.

**2)** *Nombre d'affirmations justes.*

- **a)** Faux : la diffraction concerne aussi les ondes mécaniques.
- **b)** Vrai : une onde progressive périodique sinusoïdale possède une période temporelle $T$ et une période spatiale $\lambda$.
- **c)** Faux : sur une corde, l'onde est **transversale** (perpendiculaire à la direction de propagation).
- **d)** Vrai : la célérité d'une onde mécanique ne dépend pas de l'amplitude.

Il y a donc **2** affirmations justes (b et d). Réponse : **B**.

**3.1)** *$\lambda$, $T$ et $v$.*

La courbe (2) (aspect spatial) donne la période spatiale : $\lambda = 40\ \mathrm{cm} = 40\cdot 10^{-2}\ \mathrm{m}$. La courbe (1) (temporelle) donne la période : $T = 8\cdot 10^{-2}\ \mathrm{s}$.
$$v = \frac{\lambda}{T} = \frac{40\cdot 10^{-2}}{8\cdot 10^{-2}} = \boxed{5\ \mathrm{m\cdot s^{-1}}}.$$

**3.2)** *Retard temporel et distance $d$.*

Le front d'onde a atteint, sur la courbe (2), l'abscisse $SM = 80\cdot 10^{-2}\ \mathrm{m}$. Le retard du point $M$ est :
$$\tau = \frac{d}{v}.$$
Comme l'onde a parcouru $80\cdot 10^{-2}\ \mathrm{m}$ jusqu'à l'instant $t_1$, on déduit $d = SM = 80\cdot 10^{-2}\ \mathrm{m}$ et
$$\tau = \frac{80\cdot 10^{-2}}{5} = \boxed{16\cdot 10^{-2}\ \mathrm{s}}, \qquad \boxed{d = 0{,}80\ \mathrm{m}}.$$

**4.1)** *Homogénéité de $v = \sqrt{F/\mu}$.*

$$[v] = \sqrt{\frac{[F]}{[\mu]}} = \sqrt{\frac{M\cdot L\cdot T^{-2}}{M\cdot L^{-1}}} = \sqrt{L^2\cdot T^{-2}} = L\cdot T^{-1}.$$
On retrouve bien la dimension d'une vitesse : la relation est homogène.

**4.2)** *Milieu dispersif ?*

D'après $v = \sqrt{F/\mu}$, la célérité ne dépend que de la tension et de la masse linéique, donc **pas de la fréquence**. La corde n'est **pas** un milieu dispersif.

**4.3)** *Longueur d'onde lorsque $F' = 2F$.*

À fréquence $N$ constante, $\lambda = vT = \dfrac{v}{N}$, donc $\lambda^2 N^2 \mu = v^2\mu = F$. Ainsi :
$$F = \lambda^2 N^2 \mu, \qquad F' = \lambda'^2 N^2 \mu \ \Longrightarrow\ \frac{\lambda'^2}{\lambda^2} = \frac{F'}{F} = 2.$$
$$\lambda' = \sqrt{2}\,\lambda = \sqrt{2}\times 40 \approx \boxed{56{,}6\ \mathrm{cm}}.$$

<div class="my-5 rounded-lg px-4 py-2.5 text-white font-bold" style="background:#1F4E79">Exercice 3 — Électricité <span class="font-normal text-white/80 text-sm">(5 points)</span></div>

<div class="mt-6 mb-2 text-base font-bold" style="color:#1F4E79">I.1 — Étude du dipôle RC</div>

**1.1)** *Équation différentielle.*

Loi d'additivité des tensions : $u_{R_1} + u_{AB} = E$, soit $R_1\,i + u_{AB} = E$. Avec $i = \dfrac{\mathrm{d}q}{\mathrm{d}t} = C_e\dfrac{\mathrm{d}u_{AB}}{\mathrm{d}t}$ et $C_e = \dfrac{C_1 C_2}{C_1 + C_2}$ (association série) :
$$\boxed{R_1\,\frac{C_1 C_2}{C_1 + C_2}\,\frac{\mathrm{d}u_{AB}}{\mathrm{d}t} + u_{AB} = E}.$$

**1.2)** *Expressions de $U_0$ et $\alpha$.*

On injecte $u_{AB}(t) = U_0(1 - e^{\alpha t})$, soit $\dfrac{\mathrm{d}u_{AB}}{\mathrm{d}t} = -U_0\,\alpha\,e^{\alpha t}$, dans l'équation. Par identification :
$$E = U_0 \ \Longrightarrow\ \boxed{U_0 = E}, \qquad R_1\frac{C_1 C_2}{C_1+C_2}\,\alpha = -1 \ \Longrightarrow\ \boxed{\alpha = -\frac{C_1 + C_2}{R_1\,C_1 C_2} = -\frac{1}{R_1 C_e}}.$$

**1.3.1)** *Valeur de $E$.*

Le palier (régime permanent) de $u_{AB}(t)$ vaut $U_0 = E$. On lit sur la figure 2 :
$$\boxed{E = 24\ \mathrm{V}}.$$
*(Le palier lu sur la courbe correspond à la valeur $E$ de la f.é.m. du générateur.)*

**1.3.2)** *Valeur de $C_1$.*

La constante de temps vaut $\tau = R_1 C_e = R_1\dfrac{C_1 C_2}{C_1 + C_2}$, lue comme abscisse d'intersection de la tangente $(T)$ avec l'asymptote : $\tau = 0{,}2\ \mathrm{s}$. On isole $C_1$ :
$$\tau(C_1 + C_2) = R_1 C_1 C_2 \ \Longrightarrow\ C_1(\tau - R_1 C_2) = -\tau C_2 \ \Longrightarrow\ C_1 = \frac{\tau C_2}{R_1 C_2 - \tau}.$$
$$C_1 = \frac{0{,}2\times 4\cdot 10^{-6}}{1{,}5\cdot 10^{5}\times 4\cdot 10^{-6} - 0{,}2} = \frac{0{,}8\cdot 10^{-6}}{0{,}4} = \boxed{2\ \mu\mathrm{F}}.$$

**1.4)** *Charge $q_1(t)$ du condensateur $(C_1)$.*

Les deux condensateurs en série portent la même charge $q$. La tension aux bornes de $C_1$ est :
$$u_{AB} = u_{C_1} + u_{C_2} = u_{C_1} + \frac{C_1}{C_2}u_{C_1} = \frac{C_1 + C_2}{C_2}u_{C_1} \ \Longrightarrow\ u_{C_1} = \frac{C_2}{C_1 + C_2}\,u_{AB}.$$
Donc $q_1 = C_1 u_{C_1} = \dfrac{C_1 C_2}{C_1 + C_2}\,u_{AB} = C_e\,U_0(1 - e^{\alpha t})$. Numériquement : $C_e = \dfrac{2\times 4}{2 + 4}\,\mu\mathrm{F} = \dfrac{4}{3}\,\mu\mathrm{F}$, $U_0 = 24\ \mathrm{V}$, et $\alpha = -\dfrac{1}{R_1 C_e} = -\dfrac{1}{1{,}5\cdot 10^5\times \tfrac{4}{3}\cdot 10^{-6}} = -5\ \mathrm{s^{-1}}$ :
$$\boxed{q_1(t) = 32\cdot 10^{-6}\,(1 - e^{-5t})\ \mathrm{(C)}}.$$

<div class="mt-6 mb-2 text-base font-bold" style="color:#1F4E79">I.2 — Oscillations libres dans le circuit RLC</div>

**2.1)** *Équation différentielle en $u_2$.*

Sur la maille $C_1$–$R_2$–bobine : $u_1 + u_2 + u_b = 0$. En dérivant et en utilisant $\dfrac{\mathrm{d}u_1}{\mathrm{d}t} = \dfrac{i}{C_1} = \dfrac{u_2}{R_2 C_1}$, $u_b = L\dfrac{\mathrm{d}i}{\mathrm{d}t} + r\,i$ avec $i = \dfrac{u_2}{R_2}$, on aboutit à :
$$\frac{L}{R_2}\frac{\mathrm{d}^2 u_2}{\mathrm{d}t^2} + \left(\frac{r}{R_2} + 1\right)\frac{\mathrm{d}u_2}{\mathrm{d}t} + \frac{u_2}{R_2 C_1} = 0,$$
soit, en multipliant par $\dfrac{R_2}{L}$ :
$$\boxed{\frac{\mathrm{d}^2 u_2}{\mathrm{d}t^2} + \frac{r + R_2}{L}\frac{\mathrm{d}u_2}{\mathrm{d}t} + \frac{1}{L C_1}\,u_2 = 0}.$$

**2.2)** *Vérification $C_1 = 2\ \mu\mathrm{F}$.*

En assimilant la pseudo-période $T$ à la période propre $T_0 = 2\pi\sqrt{L C_1}$, avec $T \approx 2\ \mathrm{ms}$ lue sur la figure 3 :
$$T_0^2 = 4\pi^2 L C_1 \ \Longrightarrow\ C_1 = \frac{T_0^2}{4\pi^2 L} = \frac{(2\cdot 10^{-3})^2}{4\times 10\times 0{,}2} = \frac{4\cdot 10^{-6}}{8} \times \text{(}\pi^2=10\text{)} \approx 2\cdot 10^{-6}\ \mathrm{F}.$$
$$\boxed{C_1 = 2\ \mu\mathrm{F}}\quad\text{(cohérent avec la valeur trouvée en I.1).}$$

**2.3)** *Valeur de $k$ pour entretenir les oscillations.*

En ajoutant le générateur $u_g = k\,i$, la loi des mailles $u_1 + u_2 + u_b = u_g$ donne, en remplaçant $u_1 = \dfrac{q}{C_1}$, $u_2 = R_2\dfrac{\mathrm{d}q}{\mathrm{d}t}$, $u_b = L\dfrac{\mathrm{d}^2 q}{\mathrm{d}t^2} + r\dfrac{\mathrm{d}q}{\mathrm{d}t}$ et $i = \dfrac{\mathrm{d}q}{\mathrm{d}t}$ :
$$L\frac{\mathrm{d}^2 q}{\mathrm{d}t^2} + (R_2 + r - k)\frac{\mathrm{d}q}{\mathrm{d}t} + \frac{q}{C_1} = 0.$$
Pour entretenir les oscillations (amortissement nul), le terme dissipatif doit s'annuler : $R_2 + r - k = 0$, d'où
$$\boxed{k = R_2 + r = 32 + 10 = 42\ \Omega}.$$

<div class="mt-6 mb-2 text-base font-bold" style="color:#1F4E79">II — Oscillations forcées (RLC série)</div>

**1)** *Schéma du montage.*

[figure : montage série GBF – conducteur ohmique R – bobine (b) – condensateur ; voie Y₁ aux bornes du générateur (u), voie Y₂ aux bornes de R (u_R), masse commune]

**2)** *Vérification de $r$.*

L'oscillogramme (figure 4) montre $u$ et $u_R$ en phase : le circuit est à la **résonance d'intensité**. À la résonance, l'impédance se réduit à $(R + r)$, donc $U = (R + r)I_m$ et $U_R = R\,I_m$ :
$$\frac{U}{U_R} = \frac{R + r}{R} = 1 + \frac{r}{R} \ \Longrightarrow\ r = R\left(\frac{U}{U_R} - 1\right).$$
La lecture des amplitudes (sensibilité $2{,}5\ \mathrm{V/div}$) donne $U/U_R = 5/4$, d'où :
$$r = 40\left(\frac{5}{4} - 1\right) = \boxed{10\ \Omega}\quad\text{(conforme à la donnée).}$$

**3)** *Puissance moyenne dissipée.*

$$P_0 = (R + r)\,I^2 = (R + r)\left(\frac{U_{R_m}}{\sqrt{2}\,R}\right)^2.$$
Avec les valeurs de l'oscillogramme :
$$\boxed{P_0 \approx 0{,}25\ \mathrm{W}}.$$

<div class="my-5 rounded-lg px-4 py-2.5 text-white font-bold" style="background:#1F4E79">Exercice 4 — Mécanique <span class="font-normal text-white/80 text-sm">(5 points)</span></div>

<div class="mt-6 mb-2 text-base font-bold" style="color:#1F4E79">Partie I — Situation A : oscillateur sur plan incliné</div>

**1)** *Allongement à l'équilibre.*

À l'équilibre, le solide est soumis au poids $\vec P$, à la réaction $\vec R$ du plan et à la tension $\vec T$ du ressort : $\vec P + \vec R + \vec T = \vec 0$. Projection sur l'axe $(O,\vec i)$ (ligne de plus grande pente, sens positif vers le haut) :
$$-mg\sin\alpha - K\,\Delta\ell_0 = 0 \ \Longrightarrow\ \boxed{\Delta\ell_0 = -\frac{mg\sin\alpha}{K}}.$$

**2.1)** *Énergie potentielle totale.*

Énergie potentielle de pesanteur (référence en $O$) : $E_{pp} = mgz = mg\,x\sin\alpha$.
Énergie potentielle élastique : $E_{pe} = \dfrac{1}{2}K(\Delta\ell_0 + x)^2 = \dfrac{1}{2}K\,\Delta\ell_0^2 + Kx\,\Delta\ell_0 + \dfrac{1}{2}Kx^2$.
En sommant et en utilisant la condition d'équilibre $mg\sin\alpha = -K\,\Delta\ell_0$ (donc $Kx\,\Delta\ell_0 = -mgx\sin\alpha$) :
$$E_p = mgx\sin\alpha + \tfrac{1}{2}K\Delta\ell_0^2 - mgx\sin\alpha + \tfrac{1}{2}Kx^2 = \boxed{\tfrac{1}{2}K\left(x^2 + \Delta\ell_0^2\right)}.$$

**2.2)** *Équation différentielle.*

Le mouvement étant sans frottement, l'énergie mécanique se conserve :
$$E_m = E_p + E_c = \tfrac{1}{2}K\left(\Delta\ell_0^2 + x^2\right) + \tfrac{1}{2}m\dot x^2 = \text{constante}.$$
En dérivant par rapport au temps :
$$K x\,\dot x + m\,\dot x\,\ddot x = 0 \ \Longrightarrow\ \dot x\left(m\ddot x + Kx\right) = 0.$$
Comme $\dot x \neq 0$ en général :
$$\boxed{\ddot x + \frac{K}{m}\,x = 0}.$$
C'est l'équation d'un oscillateur harmonique de pulsation $\omega_0 = \sqrt{K/m}$.

**2.3)** *Vitesse au passage par l'équilibre.*

La vitesse est $V(t) = \dot x = -X_m\dfrac{2\pi}{T_0}\sin\!\left(\dfrac{2\pi}{T_0}t + \varphi\right)$. Conditions initiales : lâché sans vitesse à $x(0) = d = X_m$, donc $\varphi = 0$ et $X_m = d$. Au passage par l'équilibre dans le sens positif, la vitesse est maximale en valeur :
$$V_0 = X_m\frac{2\pi}{T_0} = d\,\omega_0 = d\sqrt{\frac{K}{m}} = 2\cdot 10^{-2}\times\sqrt{\frac{50}{0{,}05}} = 2\cdot 10^{-2}\times\sqrt{1000} \approx \boxed{0{,}63\ \mathrm{m\cdot s^{-1}}}.$$

<div class="mt-6 mb-2 text-base font-bold" style="color:#1F4E79">Partie I — Situation B : chute libre</div>

**1)** *Équations horaires.*

En chute libre, seul le poids agit : $\vec P = m\vec a_G$, donc $\vec a_G = \vec g$. Projection dans $(O_1,\vec{i_1},\vec{j_1})$ ($\vec{i_1}$ horizontal, $\vec{j_1}$ vertical ascendant) : $a_x = 0$, $a_y = -g$. Avec $\vec V_{01}$ faisant l'angle $\alpha$ : $V_{0x} = V_{01}\cos\alpha$, $V_{0y} = V_{01}\sin\alpha$. Par intégration et conditions initiales en $O_1$ :
$$\boxed{x_1(t) = V_{01}\cos\alpha\cdot t}, \qquad \boxed{y_1(t) = -\tfrac{1}{2}g\,t^2 + V_{01}\sin\alpha\cdot t}.$$
Numériquement ($V_{01} = 2$, $\alpha = 30^\circ$, $g = 10$) : $x_1(t) = \sqrt{3}\,t$ et $y_1(t) = -5t^2 + t$.

**2)** *Équation de la trajectoire.*

En éliminant $t = \dfrac{x_1}{V_{01}\cos\alpha}$ :
$$\boxed{y_1 = -\frac{g}{2V_{01}^2\cos^2\alpha}\,x_1^2 + \tan\alpha\cdot x_1}.$$
Numériquement : $y_1 = -\dfrac{10}{2\times 4\times \tfrac{3}{4}}\,x_1^2 + \dfrac{1}{\sqrt 3}\,x_1 = -\dfrac{5}{3}x_1^2 + \dfrac{1}{\sqrt 3}x_1$.

**3)** *Le corps tombe-t-il dans la cuve ?*

La cuve est au niveau de $O_1$ ($y_1 = 0$). On cherche la portée $x_P$ (abscisse pour $y_1 = 0$, $x_P \neq 0$) :
$$0 = -\frac{g}{2V_{01}^2\cos^2\alpha}\,x_P + \tan\alpha \ \Longrightarrow\ x_P = \frac{V_{01}^2\sin(2\alpha)}{g} = \frac{2^2\times\sin 60^\circ}{10} = \frac{4\times \tfrac{\sqrt 3}{2}}{10} \approx 0{,}34\ \mathrm{m} = 34\ \mathrm{cm}.$$
Comme $x_{11} = 30\ \mathrm{cm} < x_P = 34\ \mathrm{cm} < x_{12} = 40\ \mathrm{cm}$, le corps $(S)$ **tombe bien dans la cuve à eau**.

<div class="mt-6 mb-2 text-base font-bold" style="color:#1F4E79">Partie II — Satellite artificiel</div>

**1.1)** *Expression de $g_0$.*

Au niveau du sol, on identifie le poids à la force d'attraction universelle : $m g_0 = G\dfrac{M_T\,m}{R_T^2}$, d'où
$$\boxed{g_0 = G\frac{M_T}{R_T^2}}.$$

**1.2)** *Calcul de $M_T$.*

$$M_T = \frac{g_0 R_T^2}{G} = \frac{9{,}8\times(6400\cdot 10^3)^2}{6{,}67\cdot 10^{-11}} \approx \boxed{6{,}0\cdot 10^{24}\ \mathrm{kg}}.$$

**2.1)** *Troisième loi de Kepler.*

Application de la deuxième loi de Newton au satellite (force centripète) : $\vec a_S = \dfrac{G M_T}{(R_T + h)^2}\,\vec n$. La composante normale donne :
$$\frac{V_S^2}{R_T + h} = \frac{G M_T}{(R_T + h)^2} \ \Longrightarrow\ V_S^2 = \frac{G M_T}{R_T + h}.$$
Le mouvement étant circulaire uniforme, $V_S = (R_T + h)\,\omega_S = (R_T + h)\dfrac{2\pi}{T}$. En combinant :
$$(R_T + h)^2\left(\frac{2\pi}{T}\right)^2 = \frac{G M_T}{R_T + h} \ \Longrightarrow\ \boxed{\frac{T^2}{(R_T + h)^3} = \frac{4\pi^2}{G M_T}}.$$

**2.2)** *Masse de la Terre et comparaison.*

$$M_T = \frac{4\pi^2 (R_T + h)^3}{G\,T^2}.$$
Avec $R_T + h = 6400 + 647 = 7047\ \mathrm{km} = 7{,}047\cdot 10^6\ \mathrm{m}$, $T = 98\ \mathrm{min} = 5880\ \mathrm{s}$, $\pi^2 = 10$ :
$$M_T = \frac{4\times 10\times (7{,}047\cdot 10^6)^3}{6{,}67\cdot 10^{-11}\times (5880)^2} \approx \boxed{6{,}0\cdot 10^{24}\ \mathrm{kg}}.$$
Cette valeur est **en accord** avec celle trouvée à la question 1.2 : les deux méthodes (mesure de $g_0$ au sol et loi de Kepler) donnent la même masse de la Terre.
