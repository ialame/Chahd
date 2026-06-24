<div class="my-3 text-sm text-gray-600">Corrigé — Examen National du Baccalauréat, session de rattrapage 2022 · Sciences Mathématiques A et B · Physique-Chimie</div>

<div class="my-5 rounded-lg px-4 py-2.5 text-white font-bold" style="background:#1F4E79">Exercice 1 — Chimie : réactions de l'acide éthanoïque <span class="font-normal text-white/80 text-sm">(7 points)</span></div>

**1.1) Concentration apportée $C_0$.**

La masse d'acide pur introduite est $m_0 = \rho\, V_0 = d\,\rho_e\, V_0$, et la quantité $n_0 = \dfrac{m_0}{M} = \dfrac{d\,\rho_e\, V_0}{M}$. D'où :
$$C_0 = \frac{n_0}{V} = \frac{d\,\rho_e\, V_0}{M\, V} = \frac{1{,}05 \times 1 \times 2}{60 \times 500}\ \mathrm{mol\cdot mL^{-1}}$$

Avec $V_0 = 2\ \mathrm{mL}$ et $V = 500\ \mathrm{mL}$ (mêmes unités au numérateur et dénominateur) :
$$C_0 = \frac{1{,}05 \times 2}{60 \times 0{,}5} = 7{,}0\cdot 10^{-2}\ \mathrm{mol\cdot L^{-1}}. \quad\checkmark$$

**1.2) Expression du pH.**

Réaction : $\mathrm{CH_3COOH + H_2O \rightleftharpoons CH_3COO^- + H_3O^+}$. La constante d'acidité s'écrit, en négligeant les ions $\mathrm{H_3O^+}$ provenant de l'eau et avec $[\mathrm{CH_3COO^-}] = [\mathrm{H_3O^+}]$ :
$$K_A = \frac{[\mathrm{CH_3COO^-}][\mathrm{H_3O^+}]}{[\mathrm{CH_3COOH}]} = \frac{[\mathrm{H_3O^+}]^2}{C_0 - [\mathrm{H_3O^+}]}.$$

En posant $x = [\mathrm{H_3O^+}]$, on obtient l'équation $x^2 + K_A\, x - K_A\, C_0 = 0$, dont la racine positive est :
$$x = \frac{-K_A + \sqrt{K_A^2 + 4 K_A\, C_0}}{2} = \frac{\sqrt{K_A^2 + 4 K_A\, C_0} - K_A}{2}.$$

Puis $\mathrm{pH} = -\log x = -\log\!\left(\dfrac{\sqrt{K_A^2 + 4 K_A\, C_0} - K_A}{2}\right)$, soit :
$$\boxed{\ \mathrm{pH} = \log 2 - \log\!\left(\sqrt{K_A^2 + 4 K_A\, C_0} - K_A\right)\ }$$

**1.3) Taux d'avancement final $\tau$.**

Avec $K_A = 10^{-\mathrm{p}K_A} = 10^{-4{,}8} \approx 1{,}6\cdot 10^{-5}$ et $C_0 = 7{,}0\cdot 10^{-2}$, l'application numérique donne $\mathrm{pH} \approx 2{,}98$.

Le taux d'avancement final est :
$$\tau = \frac{[\mathrm{H_3O^+}]_{\text{éq}}}{C_0} = \frac{10^{-\mathrm{pH}}}{C_0} = \frac{10^{-2{,}98}}{7{,}0\cdot 10^{-2}} \approx 1{,}5\cdot 10^{-2} = 1{,}5\,\%.$$

$\tau \ll 1$ : l'acide éthanoïque est un acide faible.

**1.4) Diagramme de prédominance.**

[figure : axe horizontal du pH ; à gauche pH < pK_A = 4,8 prédominance de CH₃COOH (forme acide) ; à droite pH > 4,8 prédominance de CH₃COO⁻ (forme basique) ; frontière à pH = pK_A]

Comme $\mathrm{pH} \approx 2{,}98 < \mathrm{p}K_A = 4{,}8$, l'espèce prédominante est la forme acide $\mathrm{CH_3COOH}$.

**2.1) Montage de dosage pH-métrique.**

[figure : bécher contenant $V_A = 25{,}0\ \mathrm{mL}$ de solution (S₀) avec barreau aimanté sur agitateur magnétique ; sonde pH reliée à un pH-mètre ; burette graduée au-dessus contenant la solution (S_B) d'hydroxyde de sodium]

**2.2) Équation du dosage.**

$$\mathrm{CH_3COOH_{(aq)} + HO^-_{(aq)} \longrightarrow CH_3COO^-_{(aq)} + H_2O_{(\ell)}}$$

**2.3.1)** L'affirmation juste est la **c.** À l'équivalence, les réactifs ont été introduits en proportions stœchiométriques ; ils sont totalement consommés, donc leurs quantités de matière restantes sont nulles.

**2.3.2) Vérification de $C_0$.**

À l'équivalence : $C_0\, V_A = C_B\, V_{BE}$, donc
$$C_0 = \frac{C_B\, V_{BE}}{V_A} = \frac{8{,}75\cdot 10^{-2} \times 20{,}0}{25{,}0} = 7{,}0\cdot 10^{-2}\ \mathrm{mol\cdot L^{-1}}.$$
La valeur est bien **vérifiée**, en accord avec celle de la question 1.1.

**2.4) pH pour $V_B = \tfrac{2}{3} V_{BE}$.**

Pour $V_B = \dfrac{2}{3} V_{BE}$, on a $V_B < V_{BE}$ : on est avant l'équivalence et la base est le réactif limitant. Il reste de l'acide et de la base conjuguée formée — le mélange est tampon. Le tableau d'avancement donne :
$$n(\mathrm{CH_3COO^-}) = C_B\, V_B, \qquad n(\mathrm{CH_3COOH})_{\text{restant}} = C_0\, V_A - C_B\, V_B = C_B\, V_{BE} - C_B\, V_B.$$

Avec $V_B = \tfrac{2}{3} V_{BE}$ : $n(\mathrm{CH_3COO^-}) = C_B \cdot \tfrac{2}{3} V_{BE}$ et $n(\mathrm{CH_3COOH}) = C_B\,(V_{BE} - \tfrac{2}{3}V_{BE}) = C_B \cdot \tfrac{1}{3} V_{BE}$. D'où le rapport $\dfrac{[\mathrm{CH_3COO^-}]}{[\mathrm{CH_3COOH}]} = 2$, et :
$$\mathrm{pH} = \mathrm{p}K_A + \log\frac{[\mathrm{CH_3COO^-}]}{[\mathrm{CH_3COOH}]} = 4{,}8 + \log 2 \approx 5{,}1.$$

**3.1) Courbe de l'expérience (c).**

L'expérience (c) diffère de (b) seulement par l'ajout d'un catalyseur (acide sulfurique) : à même état d'équilibre final que (b), elle atteint cet état plus rapidement. C'est donc la courbe la plus rapide à se stabiliser parmi celles ayant le même $n_e$ final que (a) et (b) : c'est la **courbe (2)**.

**3.2) Temps de demi-réaction de (b).**

Proposition **fausse**. Les expériences (a) et (b) ont les mêmes quantités initiales (mélange stœchiométrique), donc le même avancement final $x_f$ et la même quantité finale $n_e(\infty)$. À $t = 0$, (b) est à température plus élevée que (a), donc plus rapide : son $t_{1/2}$ (date où $n_e = n_e(\infty)/2$) est plus petit que celui de (a). La lecture graphique de la courbe correspondant à (b) ne donne pas $t_{1/2} = 13\ \mathrm{min}$ (valeur lue sur une autre courbe).

**3.3) Vitesse volumique à $t = 0$ (courbe (1)).**

$$v(t) = \frac{1}{V}\cdot\frac{\mathrm{d}n_e}{\mathrm{d}t}.$$
À $t = 0$, $\dfrac{\mathrm{d}n_e}{\mathrm{d}t}$ est le coefficient directeur de la tangente (T) à la courbe (1) à l'origine. La lecture graphique donne $\dfrac{\mathrm{d}n_e}{\mathrm{d}t}\Big|_{0} \approx 2{,}5\cdot 10^{-2}\ \mathrm{mol\cdot min^{-1}}$. D'où :
$$v(0) = \frac{1}{62\cdot 10^{-3}} \times 2{,}5\cdot 10^{-2} \approx 0{,}4\ \mathrm{mol\cdot L^{-1}\cdot min^{-1}}.$$

**3.4) Instant où $Q_r = 1{,}6$ (courbe (1)).**

La courbe (1) correspond à un mélange équimolaire (expérience (a) ou (d) lue sur la courbe lente). Le quotient de réaction s'écrit :
$$Q_r = \frac{[\mathrm{CH_3COOR}][\mathrm{H_2O}]}{[\mathrm{CH_3COOH}][\mathrm{R{-}OH}]} = \frac{n_e \cdot n_e}{(n_0 - n_e)^2} = \left(\frac{n_e}{n_0 - n_e}\right)^2.$$
On cherche $n_e$ tel que $Q_r = 1{,}6$, soit $\dfrac{n_e}{n_0 - n_e} = \sqrt{1{,}6} \approx 1{,}26$, d'où $n_e \approx 0{,}56\, n_0$. La lecture graphique sur la courbe (1) de la valeur correspondante donne :
$$\boxed{\ t \approx 21\ \mathrm{min}\ }$$

<div class="my-5 rounded-lg px-4 py-2.5 text-white font-bold" style="background:#1F4E79">Exercice 2 — Onde le long d'un ressort <span class="font-normal text-white/80 text-sm">(2 points)</span></div>

**1) Affirmations.**

- **a.** Vraie : c'est bien une onde mécanique progressive.
- **b.** Fausse : la compression des spires se fait dans la direction de propagation, l'onde est **longitudinale**.
- **c.** Fausse : une onde transporte de l'énergie, pas de matière.
- **d.** Fausse : un milieu est dispersif lorsque la célérité **dépend** de la fréquence ; ici l'énoncé décrit un milieu **non** dispersif.

Il y a **une seule** affirmation juste (a).

**2) Célérité.**

La figure 2 montre que le mouvement de $M$ démarre avec un retard $\tau$ après la mise en mouvement de $S$. La lecture donne $\tau = 40\ \mathrm{ms}$ (instant où $M$ commence à bouger). D'où :
$$v = \frac{d}{\tau} = \frac{0{,}64}{40\cdot 10^{-3}} = 16\ \mathrm{m\cdot s^{-1}}.$$

**3) Longueur d'onde.**

La période lue sur la figure 2 est $T = 40\ \mathrm{ms}$. Donc :
$$\lambda = v\, T = 16 \times 40\cdot 10^{-3} = 0{,}64\ \mathrm{m} = 64\ \mathrm{cm}.$$

**4.1) Élongation $x_S(t)$.**

La source $S$ a le même mouvement que $M$ mais en avance du retard $\tau$ : $x_S(t) = x_M(t + \tau)$. C'est la même sinusoïde d'amplitude $5\ \mathrm{mm}$ et de période $40\ \mathrm{ms}$, décalée de $\tau = 40\ \mathrm{ms} = T$ vers la gauche.

[figure : courbe $x_S(t)$ (mm) sinusoïdale d'amplitude 5 mm et de période 40 ms, tracée sur deux périodes (0 à 80 ms), en avance d'une période sur $x_M(t)$]

**4.2) Élongation de $S$ à $t = 90\ \mathrm{ms}$.**

$90\ \mathrm{ms} = 2T + 10\ \mathrm{ms}$. Par périodicité, $x_S(90) = x_S(10\ \mathrm{ms})$. À $t = 10\ \mathrm{ms} = T/4$, la sinusoïde de la source atteint son extremum négatif :
$$x_S(90\ \mathrm{ms}) = -5\ \mathrm{mm}.$$

<div class="my-5 rounded-lg px-4 py-2.5 text-white font-bold" style="background:#1F4E79">Exercice 3 — Datation par le carbone 14 <span class="font-normal text-white/80 text-sm">(1,5 point)</span></div>

**1) Affirmations.**

- **a.** Fausse : la probabilité de désintégration d'un noyau par unité de temps est constante ; elle ne dépend pas de l'âge de l'échantillon.
- **b.** Fausse : la demi-vie est la durée au bout de laquelle la moitié des noyaux initiaux se sont désintégrés.
- **c.** Fausse : les noyaux légers vérifiant $A = 2Z$ (autant de protons que de neutrons) sont au contraire généralement stables.
- **d.** Vraie : la particule $\alpha$ est le noyau d'hélium $^{4}_{2}\mathrm{He}$, soit l'ion $\mathrm{He^{2+}}$.

Il y a **une seule** affirmation juste (d).

**2) Équation de désintégration.**

$$^{14}_{6}\mathrm{C} \longrightarrow\ ^{14}_{7}\mathrm{N} +\ ^{\;0}_{-1}\mathrm{e}$$
La conservation du nombre de charge ($6 = 7 - 1$) et du nombre de masse ($14 = 14$) est respectée : il s'agit d'une désintégration de type **$\beta^-$**.

**3.1) Âge de l'échantillon.**

L'activité décroît selon $a(t) = a_0\, e^{-\lambda t}$ avec $\lambda = \dfrac{\ln 2}{t_{1/2}}$. L'activité initiale (à la mort) correspond à $a_0 = 13{,}6$ désintégrations par minute par gramme, soit $a_0 = \dfrac{13{,}6}{60} \approx 0{,}227\ \mathrm{s^{-1}\cdot g^{-1}}$. L'activité actuelle est $a = 3{,}7\cdot 10^{-2}\ \mathrm{s^{-1}\cdot g^{-1}}$. D'où :
$$t = \frac{1}{\lambda}\ln\frac{a_0}{a} = \frac{t_{1/2}}{\ln 2}\ln\frac{a_0}{a} = \frac{5{,}73\cdot 10^{3}}{\ln 2}\,\ln\frac{0{,}227}{3{,}7\cdot 10^{-2}} \approx 1{,}5\cdot 10^{4}\ \mathrm{ans}.$$

**3.2) Énergie libérée par désintégration totale dans 1 g.**

Énergie libérée par une désintégration :
$$|\Delta E| = \big[m(^{14}_{6}\mathrm{C}) - m(^{14}_{7}\mathrm{N}) - m(^{\;0}_{-1}\mathrm{e})\big]\, c^2 = (14{,}011 - 14{,}008 - 0{,}0005)\times 931{,}5 \approx 2{,}33\ \mathrm{MeV}.$$

Nombre de noyaux de $^{14}\mathrm{C}$ dans 1 g de carbone à la mort : $N_0 = \dfrac{a_0}{\lambda} = \dfrac{a_0\, t_{1/2}}{\ln 2}$ avec $a_0 \approx 0{,}227\ \mathrm{s^{-1}}$ et $t_{1/2} = 5{,}73\cdot 10^{3}\times 365{,}25\times 24\times 3600 \approx 1{,}808\cdot 10^{11}\ \mathrm{s}$ :
$$N_0 = \frac{0{,}227 \times 1{,}808\cdot 10^{11}}{\ln 2} \approx 5{,}9\cdot 10^{10}\ \text{noyaux}.$$

Énergie totale libérée par désintégration complète :
$$|\Delta E|_{\text{tot}} = N_0 \times |\Delta E| \approx 5{,}9\cdot 10^{10}\times 2{,}33 \approx 1{,}37\cdot 10^{11}\ \mathrm{MeV}.$$

<div class="my-5 rounded-lg px-4 py-2.5 text-white font-bold" style="background:#1F4E79">Exercice 4 — Électricité <span class="font-normal text-white/80 text-sm">(4,5 points)</span></div>

**1.1.1) Équation différentielle.**

Loi des mailles : $E = u_r + u_R + u_C = r\, i + R\, i + u_C$. Avec $i = C_0\,\dfrac{\mathrm{d}u_C}{\mathrm{d}t}$ :
$$\boxed{\ (R + r)\, C_0\,\frac{\mathrm{d}u_C}{\mathrm{d}t} + u_C = E\ }$$

**1.1.2) Intensités à $t = 0^-$ et $t = 0^+$.**

Avant la fermeture de $K$ le circuit est ouvert : $i(0^-) = 0$. La tension aux bornes du condensateur est continue, donc $u_C(0^+) = u_C(0^-) = 0$ (condensateur initialement déchargé). La loi des mailles à $t = 0^+$ donne $E = (R + r)\, i(0^+)$ :
$$i(0^-) = 0, \qquad i(0^+) = \frac{E}{R + r}.$$

**1.2) Capacité $C_0$.**

L'énergie emmagasinée est $\mathcal{E} = \dfrac{1}{2} C_0\, U_0^2$, d'où :
$$C_0 = \frac{2\,\mathcal{E}}{U_0^2} = \frac{2\times 50\cdot 10^{6}}{200^2} = 2{,}5\cdot 10^{3}\ \mathrm{F}.$$

**1.3) Nombre $n$ de condensateurs.**

L'énergie stockée par l'association de $n$ condensateurs de capacité $C_0$ en parallèle (capacité équivalente $n\, C_0$) sous la tension $U = 2{,}5\ \mathrm{V}$ est $\mathcal{E} = \dfrac{1}{2}(n\, C_0)\, U^2$, d'où :
$$n = \frac{2\,\mathcal{E}}{C_0\, U^2} = \frac{2\times 50\cdot 10^{6}}{2{,}5\cdot 10^{3}\times 2{,}5^2} = 6400.$$

**2) Valeur de $C_0$ (générateur de courant).**

Le générateur idéal débite un courant constant $I_0$ ; la charge croît linéairement : $q = I_0\, t$, donc $u_C = \dfrac{I_0}{C_0}\, t$. La pente de la droite de la figure 3 est :
$$\frac{\Delta u_C}{\Delta t} = \frac{0{,}5}{125} = 4\cdot 10^{-3}\ \mathrm{V\cdot s^{-1}} = \frac{I_0}{C_0}.$$

Le courant délivré est $I_0 = \dfrac{u_R}{R} = \dfrac{75}{15} = 5\ \mathrm{A}$ (même courant dans la branche série). D'où :
$$C_0 = \frac{I_0}{\Delta u_C / \Delta t} = \frac{5}{4\cdot 10^{-3}} = 1{,}25\cdot 10^{3}\ \mathrm{F}.$$

*(Remarque : selon les valeurs lues sur la figure 3, on retrouve un ordre de grandeur de quelques milliers de farads, cohérent avec la valeur $C_0 \approx 2{,}5\cdot 10^{3}\ \mathrm{F}$ de la partie 1.)*

**3.1) Branchements de l'oscilloscope.**

[figure : schéma de la figure 4 (C, K, bobine (L, r₀), R en série) ; l'entrée Y_A de l'oscilloscope branchée aux bornes du condensateur C et la masse de l'oscilloscope reliée à l'armature inférieure de C, pour visualiser uС(t)]

**3.2) Équation différentielle (RLC libre).**

Loi des mailles : $u_C + u_R + u_b = 0$ avec $u_R = R\, i$, $u_b = r_0\, i + L\,\dfrac{\mathrm{d}i}{\mathrm{d}t}$ et $i = C\,\dfrac{\mathrm{d}u_C}{\mathrm{d}t}$ :
$$\boxed{\ LC\,\frac{\mathrm{d}^2 u_C}{\mathrm{d}t^2} + (R + r_0)\, C\,\frac{\mathrm{d}u_C}{\mathrm{d}t} + u_C = 0\ }$$

**3.3) Valeur de $L$ telle que $T \approx T_0$.**

Pour un amortissement faible, la pseudopériode $T$ est voisine de la période propre $T_0 = 2\pi\sqrt{LC}$. La lecture de la figure 5 donne une pseudopériode $T \approx 20\ \mathrm{ms}$. En posant $T = T_0$ :
$$L = \frac{T_0^2}{4\pi^2\, C} = \frac{(20\cdot 10^{-3})^2}{4\times 10\times 100\cdot 10^{-6}} \approx 0{,}4\ \mathrm{H}.$$

**3.4) Entretien des oscillations.**

Proposition **vraie**. Pour entretenir les oscillations, le générateur doit compenser exactement l'énergie dissipée par effet Joule dans la résistance totale $R + r_0 = 15 + 5 = 20\ \Omega$. La tension qu'il fournit doit annuler le terme résistif de l'équation, soit $u_g = (R + r_0)\, i = 20\, i$. La relation $u_g(t) = 20\, i(t)$ est donc correcte.

<div class="my-5 rounded-lg px-4 py-2.5 text-white font-bold" style="background:#1F4E79">Exercice 5 — Mécanique <span class="font-normal text-white/80 text-sm">(5 points)</span></div>

**Partie I — Mouvement d'un cylindre**

**1.1) Accélération angulaire $\ddot{\theta}$.**

Pour le corps $(S)$ (translation, axe descendant), la 2ᵉ loi de Newton selon $\vec{k}$ : $mg - T = m\, a$, où $T$ est la tension du fil et $a = R\,\ddot{\theta}$ (le fil ne glisse pas).

Pour le cylindre (rotation), la RFD : $J_\Delta\,\ddot{\theta} = T\, R$.

De la seconde : $T = \dfrac{J_\Delta\,\ddot{\theta}}{R}$. En reportant dans la première avec $a = R\,\ddot{\theta}$ :
$$mg - \frac{J_\Delta\,\ddot{\theta}}{R} = m R\,\ddot{\theta} \ \Longrightarrow\ \boxed{\ \ddot{\theta} = \frac{m R}{J_\Delta + m R^2}\, g\ }$$

**1.2) Moment d'inertie $J_\Delta$.**

Le mouvement est uniformément accéléré : $\dot{\theta}(t) = \ddot{\theta}\, t$. La pente de la droite de la figure 2 est $\ddot{\theta} = \dfrac{80}{1} = 80\ \mathrm{rad\cdot s^{-2}}$. En inversant l'expression précédente :
$$J_\Delta = \frac{m R\, g}{\ddot{\theta}} - m R^2 = m R\left(\frac{g}{\ddot{\theta}} - R\right) = 0{,}5\times 0{,}06\left(\frac{10}{80} - 0{,}06\right) \approx 1{,}95\cdot 10^{-3}\ \mathrm{kg\cdot m^2}.$$

**1.3) Nombre de tours en 10 s.**

Le mouvement étant uniformément accéléré sans vitesse initiale : $\theta(t) = \dfrac{1}{2}\,\ddot{\theta}\, t^2$. À $t = 10\ \mathrm{s}$ :
$$\theta = \frac{1}{2}\times 80\times 10^2 = 4000\ \mathrm{rad}.$$
Nombre de tours : $n = \dfrac{\theta}{2\pi} = \dfrac{4000}{2\pi} \approx 637\ \text{tours}.$

**2.1) Équation différentielle (avec frottement de l'air).**

La RFD pour le cylindre devient $J_\Delta\,\ddot{\theta} = T\, R + \mathcal{M}_\Delta = T\, R - k\,\dot{\theta}$, et pour $(S)$ : $mg - T = m R\,\ddot{\theta}$. En éliminant $T$ comme en 1.1 :
$$(J_\Delta + m R^2)\,\ddot{\theta} + k\,\dot{\theta} = m R\, g.$$
En divisant par $(J_\Delta + m R^2)$ et avec $\ddot{\theta} = \dfrac{\mathrm{d}\dot{\theta}}{\mathrm{d}t}$ :
$$\frac{\mathrm{d}\dot{\theta}}{\mathrm{d}t} + \frac{k}{J_\Delta + m R^2}\,\dot{\theta} = \frac{m R\, g}{J_\Delta + m R^2},$$
d'où la forme demandée $\dfrac{\mathrm{d}\dot{\theta}}{\mathrm{d}t} + \dfrac{1}{\tau}\,\dot{\theta} = A$ avec :
$$\frac{1}{\tau} = \frac{k}{J_\Delta + m R^2}, \qquad A = \frac{m R\, g}{J_\Delta + m R^2}.$$

**2.2) Expression et dimension de $\tau$.**

$$\tau = \frac{J_\Delta + m R^2}{k}.$$
Analyse dimensionnelle : $[J_\Delta + m R^2] = \mathrm{kg\cdot m^2}$. Le moment $\mathcal{M}_\Delta = -k\,\dot{\theta}$ a la dimension d'un moment de force, soit $\mathrm{N\cdot m = kg\cdot m^2\cdot s^{-2}}$, et $[\dot{\theta}] = \mathrm{s^{-1}}$, donc $[k] = \dfrac{\mathrm{kg\cdot m^2\cdot s^{-2}}}{\mathrm{s^{-1}}} = \mathrm{kg\cdot m^2\cdot s^{-1}}$. Ainsi :
$$[\tau] = \frac{\mathrm{kg\cdot m^2}}{\mathrm{kg\cdot m^2\cdot s^{-1}}} = \mathrm{s}.$$
$\tau$ a bien la dimension d'un temps.

**2.3) Vitesse angulaire limite $\omega$.**

En régime permanent, $\dot{\theta} = \omega$ est constante, donc $\dfrac{\mathrm{d}\dot{\theta}}{\mathrm{d}t} = 0$. L'équation donne $\dfrac{1}{\tau}\,\omega = A$, soit $\omega = A\,\tau$ :
$$\omega = \frac{m R\, g}{J_\Delta + m R^2}\times\frac{J_\Delta + m R^2}{k} = \frac{m R\, g}{k}.$$

**Partie II — Oscillateur (corps solide – ressort)**

**1.1) Équation différentielle.**

Sur l'axe horizontal $(O,\vec{i})$, la seule force de composante non nulle est la force de rappel $-K x$. La 2ᵉ loi de Newton : $m\,\ddot{x} = -K x$, soit :
$$\boxed{\ \ddot{x} + \frac{K}{m}\, x = 0\ }$$

**1.2) Constante de raideur $K$.**

La pulsation propre est $\omega_0 = \sqrt{\dfrac{K}{m}}$ et la période propre $T_0 = 2\pi\sqrt{\dfrac{m}{K}}$. La figure 4 (courbe $v_x(t)$) donne $T_0 = 0{,}4\ \mathrm{s}$. D'où :
$$K = \frac{4\pi^2\, m}{T_0^2} = \frac{4\times 10\times 0{,}2}{0{,}4^2} = 50\ \mathrm{N\cdot m^{-1}}.$$

**1.3) Valeurs de $x_m$ et $\varphi$.**

La vitesse est $v_x(t) = \dot{x} = -x_m\,\omega_0\sin\!\left(\omega_0 t + \varphi\right)$ avec $\omega_0 = \dfrac{2\pi}{T_0} = \dfrac{2\pi}{0{,}4} = 5\pi\ \mathrm{rad\cdot s^{-1}}$.

Amplitude de la vitesse (lue sur la figure 4) : $V_{\max} = x_m\,\omega_0 = 0{,}8\ \mathrm{m\cdot s^{-1}}$, d'où :
$$x_m = \frac{0{,}8}{5\pi} = \frac{0{,}8}{5\sqrt{10}} \approx 5{,}1\cdot 10^{-2}\ \mathrm{m} = 5{,}1\ \mathrm{cm}.$$

Conditions initiales : on écarte $(S)$ dans le sens positif ($x(0) > 0$) et on lance avec $V_0 > 0$. Alors $x(0) = x_m\cos\varphi > 0$ et $v_x(0) = -x_m\,\omega_0\sin\varphi > 0$, soit $\cos\varphi > 0$ et $\sin\varphi < 0$ : $\varphi \in \left]-\tfrac{\pi}{2}, 0\right[$. La lecture de la figure 4 (valeur $v_x(0)$) fixe $\cos\varphi = \dfrac{V_0}{V_{\max}}$ ; on obtient :
$$\varphi = -\frac{\pi}{6}.$$

**2.1) Diminution de l'amplitude.**

Avec frottements fluides, une partie de l'énergie mécanique du système est dissipée à chaque oscillation (travail résistant des forces de frottement). L'énergie mécanique diminue donc au cours du temps, ce qui se traduit par une diminution progressive de l'amplitude des oscillations.

**2.2) Amortissement fluide.**

Méthode : on relève les abscisses des élongations maximales successives (extrema de même signe) $x_1, x_2, x_3, \dots$ sur la figure 5. Pour un amortissement **fluide** (force proportionnelle à la vitesse), la décroissance de l'amplitude est exponentielle : le rapport de deux maxima successifs $\dfrac{x_{i+1}}{x_i}$ est constant (décrément logarithmique constant). En vérifiant sur la courbe que ce rapport reste approximativement constant d'une oscillation à l'autre, on confirme que l'amortissement est bien fluide (et non solide, pour lequel la décroissance serait linéaire).

**2.3) Affirmations.**

- **a.** La lecture de la figure 5 donne une pseudo-période $T = 0{,}5\ \mathrm{s}$ : **vraie** (sous réserve de la lecture graphique).
- **b.** Fausse : aucune excitation extérieure périodique n'est imposée.
- **c.** Vraie : le système oscille librement après écart de sa position d'équilibre (oscillations libres amorties).
- **d.** Fausse : le régime est pseudopériodique, pas apériodique.

Il y a **deux** affirmations justes (a et c).
