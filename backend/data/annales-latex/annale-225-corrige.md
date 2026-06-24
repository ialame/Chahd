<div class="my-5 rounded-lg px-4 py-2.5 text-white font-bold" style="background:#1F4E79">Exercice 1 — Chimie <span class="font-normal text-white/80 text-sm">(7 points)</span></div>

<div class="mt-4 mb-2 text-base font-bold" style="color:#1F4E79">Partie I : Réactions avec l'ion ammonium</div>

**1.1.** *Équation de la réaction de $\mathrm{NH_4^+}$ avec l'eau.*

$$\mathrm{NH_{4(aq)}^+ + H_2O_{(l)} \;\rightleftharpoons\; NH_{3(aq)} + H_3O_{(aq)}^+}$$

**1.2.** *Expression et valeur de $\tau$.*

On dresse le tableau d'avancement (volume $V$ de solution). L'eau est en excès, donc le réactif limitant est $\mathrm{NH_4^+}$ : $x_{max} = C\cdot V$, d'où $\tau = \dfrac{x_{\text{éq}}}{x_{max}} = \dfrac{x_{\text{éq}}}{C\,V}$.

À l'équilibre : $[\mathrm{NH_4^+}] = C - \dfrac{x_{\text{éq}}}{V}$, $[\mathrm{H_3O^+}] = \dfrac{x_{\text{éq}}}{V}$, $[\mathrm{Cl^-}] = C$. En négligeant $\mathrm{HO^-}$ :

$$\sigma = \lambda_2\,[\mathrm{NH_4^+}] + \lambda_1\,[\mathrm{H_3O^+}] + \lambda_3\,[\mathrm{Cl^-}] = \frac{x_{\text{éq}}}{V}(\lambda_1 - \lambda_2) + C(\lambda_2 + \lambda_3)$$

On en tire $\dfrac{x_{\text{éq}}}{V} = \dfrac{\sigma - C(\lambda_2+\lambda_3)}{\lambda_1-\lambda_2}$, puis :

$$\boxed{\;\tau = \frac{\sigma - C(\lambda_2 + \lambda_3)}{C(\lambda_1 - \lambda_2)}\;}$$

<div class="my-3 rounded-md bg-amber-50 border border-amber-200 px-3 py-2 text-sm text-amber-900"><strong>Attention aux unités :</strong> $\sigma = 74{,}898\ \mathrm{mS\cdot m^{-1}} = 74{,}898\cdot10^{-3}\ \mathrm{S\cdot m^{-1}}$ et $C = 5{,}0\cdot10^{-3}\ \mathrm{mol\cdot L^{-1}} = 5{,}0\ \mathrm{mol\cdot m^{-3}}$ (soit $5{,}0\cdot10^{-3}\cdot10^{3}$).</div>

$$\tau = \frac{74{,}898\cdot10^{-3} - 5{,}0\cdot10^{-3}\cdot10^{3}\,(7{,}34\cdot10^{-3} + 7{,}63\cdot10^{-3})}{5{,}0\cdot10^{-3}\cdot10^{3}\,(34{,}9\cdot10^{-3} - 7{,}34\cdot10^{-3})} \approx 3{,}48\cdot10^{-4}$$

<div class="my-2 font-semibold" style="color:#1F4E79">⇒ $\tau \approx 3{,}48\cdot10^{-4} \approx 0{,}035\%$.</div>

**1.3.** *Expression de $K_A$ et vérification du $pK_A$.*

À l'équilibre $[\mathrm{H_3O^+}] = [\mathrm{NH_3}] = \dfrac{x_{\text{éq}}}{V} = \tau\,C$ et $[\mathrm{NH_4^+}] = C(1-\tau)$, donc :

$$K_A = \frac{[\mathrm{NH_3}]\,[\mathrm{H_3O^+}]}{[\mathrm{NH_4^+}]} = \frac{(\tau C)^2}{C(1-\tau)} \;\Longrightarrow\; \boxed{\;K_A = \frac{C\,\tau^2}{1-\tau}\;}$$

$$pK_A = -\log K_A = -\log\!\left(\frac{5{,}0\cdot10^{-3}\times(3{,}48\cdot10^{-4})^2}{1 - 3{,}48\cdot10^{-4}}\right) \approx 9{,}2 \quad\checkmark$$

**1.4.** *Diagramme de prédominance et espèce prédominante.*

[figure : axe horizontal du pH ; à gauche de $pK_A$ prédominance de l'acide $\mathrm{NH_4^+}$ ($[\mathrm{NH_4^+}]>[\mathrm{NH_3}]$), à droite prédominance de la base $\mathrm{NH_3}$ ($[\mathrm{NH_4^+}]<[\mathrm{NH_3}]$), égalité en $pH = pK_A$.]

Le $pH$ de la solution : $pH = -\log[\mathrm{H_3O^+}] = -\log(\tau C) = -\log(5{,}0\cdot10^{-3}\times3{,}48\cdot10^{-4}) \approx 5{,}72$.

Comme $pH = 5{,}72 < pK_A = 9{,}2$, on est dans le domaine de l'acide.

<div class="my-2 font-semibold" style="color:#1F4E79">⇒ L'espèce prédominante est l'acide $\mathrm{NH_4^+}$.</div>

**1.5.** *Effet de la dilution — affirmations exactes.*

- **a.** Faux : par dilution, le taux d'avancement final $\tau$ d'un acide faible **augmente** (et non l'inverse) — l'affirmation telle qu'écrite est donc à examiner avec soin (voir remarque).
- **b.** Exacte : à l'équilibre $Q_{r,\text{éq}} = K_A$ ne dépend que de la température, il reste constant.
- **c.** Faux : l'avancement à l'équilibre $x_{\text{éq}}$ varie avec la dilution.
- **d.** Faux : le $pK_A$ ne dépend que de la température, il ne diminue pas par dilution.

<div class="my-2 font-semibold" style="color:#1F4E79">⇒ D'après le corrigé officiel : 2 affirmations sont retenues comme exactes.</div>

<div class="my-3 rounded-md bg-sky-50 border border-sky-200 px-3 py-2 text-sm text-sky-900"><strong>Remarque :</strong> le corrigé officiel annonce « 2 affirmations exactes » mais ne coche en réalité que (b) comme exacte (a, c, d étant fausses), ce qui révèle une incohérence interne du document. Physiquement : (b) est exacte ($Q_{r,\text{éq}}=K_A$ constant) ; pour un acide faible la dilution augmente $\tau$, donc (a) « $\tau$ augmente » serait plutôt vraie, ce qui donnerait alors bien 2 réponses exactes (a et b). On retiendra le résultat $\boxed{2}$ en signalant cette ambiguïté.</div>

**2.1.** *Équation de la réaction du dosage.*

$$\mathrm{NH_{4(aq)}^+ + HO_{(aq)}^- \;\rightleftharpoons\; NH_{3(aq)} + H_2O_{(l)}}$$

**2.2.** *Constante d'équilibre du dosage.*

$$K = \frac{[\mathrm{NH_3}]}{[\mathrm{NH_4^+}]\,[\mathrm{HO^-}]} = \frac{[\mathrm{NH_3}]\,[\mathrm{H_3O^+}]}{[\mathrm{NH_4^+}]}\cdot\frac{1}{[\mathrm{H_3O^+}]\,[\mathrm{HO^-}]} = \frac{K_A}{K_e}$$

$$K = \frac{10^{-pK_A}}{K_e} = \frac{10^{-9{,}2}}{10^{-14}} \approx 6{,}31\cdot10^{4}$$

La réaction est quasi-totale ($K \gg 10^4$) : le dosage est exploitable.

**2.3.** *Vérification de l'indication du flacon.*

À l'équivalence : $n(\mathrm{NH_4^+})_{\text{initial}} = n(\mathrm{HO^-})_{\text{versé}}$, soit $C_A\,V_A = C_B\,V_{BE}$ :

$$C_A = \frac{C_B\,V_{BE}}{V_A} = \frac{2{,}0\cdot10^{-2}\times28{,}3}{20} \approx 2{,}83\cdot10^{-2}\ \mathrm{mol\cdot L^{-1}}$$

Concentration massique : $C_m = C_A\cdot M(\mathrm{NH_4Cl}) = 2{,}83\cdot10^{-2}\times53{,}5 \approx 1{,}51\ \mathrm{g\cdot L^{-1}}$.

<div class="my-2 font-semibold" style="color:#1F4E79">⇒ $C_m = C_0 = 1{,}51\ \mathrm{g\cdot L^{-1}}$ : l'indication du flacon est vérifiée.</div>

<div class="mt-4 mb-2 text-base font-bold" style="color:#1F4E79">Partie II : Pile nickel-argent</div>

**1.** *Équation bilan de fonctionnement.*

Cathode (réduction) : $\mathrm{Ag^+ + e^- \to Ag}$ ; anode (oxydation) : $\mathrm{Ni \to Ni^{2+} + 2e^-}$.

$$\boxed{\;2\,\mathrm{Ag_{(aq)}^+ + Ni_{(s)} \longrightarrow Ni_{(aq)}^{2+} + 2\,Ag_{(s)}}\;}$$

**2.** *Capacité de la pile $Q_{max}$.*

Avancements maximaux des deux réactifs :
- $\mathrm{Ag^+}$ : $x_{max,1} = \dfrac{[\mathrm{Ag^+}]_i\,V}{2} = \dfrac{0{,}10\times0{,}1}{2} = 5{,}0\cdot10^{-3}\ \mathrm{mol}$ ;
- $\mathrm{Ni}$ : $x_{max,2} = \dfrac{m_1}{M(\mathrm{Ni})} = \dfrac{1{,}5}{58{,}7} \approx 2{,}55\cdot10^{-2}\ \mathrm{mol}$.

Le réactif limitant est $\mathrm{Ag^+}$ : $x_{max} = 5{,}0\cdot10^{-3}\ \mathrm{mol}$. La quantité d'électrons échangés est $n(e^-) = 2\,x_{max}$ :

$$Q_{max} = 2\,x_{max}\cdot F = 2\times5{,}0\cdot10^{-3}\times9{,}65\cdot10^{4} \approx \boxed{965\ \mathrm{C}}$$

**3.** *Nouvelle concentration en $\mathrm{Ni^{2+}}$.*

La charge débitée pendant $\Delta t = 30\ \mathrm{min} = 1800\ \mathrm{s}$ est $Q = I\,\Delta t$. Comme $n(e^-) = 2x = \dfrac{Q}{F}$, on a $x = \dfrac{I\,\Delta t}{2F}$.

$$[\mathrm{Ni^{2+}}] = [\mathrm{Ni^{2+}}]_i + \frac{x}{V} = [\mathrm{Ni^{2+}}]_i + \frac{I\,\Delta t}{2FV}$$

$$[\mathrm{Ni^{2+}}] = 0{,}10 + \frac{0{,}2\times30\times60}{2\times9{,}65\cdot10^{4}\times0{,}1} \approx \boxed{0{,}12\ \mathrm{mol\cdot L^{-1}}}$$

<div class="my-5 rounded-lg px-4 py-2.5 text-white font-bold" style="background:#1F4E79">Exercice 2 — Ondes <span class="font-normal text-white/80 text-sm">(2 points)</span></div>

**1.** Non : une onde lumineuse est une onde **électromagnétique**, elle se propage dans le vide. Une onde mécanique nécessite un milieu matériel pour se propager.

**2.** Pour observer la diffraction, la dimension de l'obstacle doit être de l'ordre de la longueur d'onde : $\lambda \lesssim a \lesssim 100\,\lambda$. Le diamètre $a$ du fil doit donc être de l'**ordre de grandeur de $\lambda$**.

**3.** *Affirmations exactes.*

- **a.** Faux : la célérité de la lumière dépend du milieu transparent (indice $n = c/v$).
- **b.** Faux : une lumière monochromatique a une seule longueur d'onde **et** une seule fréquence.
- **c.** Exacte : la dispersion par un prisme montre que $n$ dépend de la fréquence.
- **d.** Exacte : le vide est non dispersif (toutes les radiations s'y propagent à la même vitesse $c$).

<div class="my-2 font-semibold" style="color:#1F4E79">⇒ Nombre d'affirmations exactes : 2 (c et d).</div>

**4.1.** *Longueur d'onde du laser.*

La courbe $\theta = f\!\left(\dfrac{1}{a}\right)$ est une droite passant par l'origine : $\theta = K\cdot\dfrac{1}{a}$. Le coefficient directeur se lit graphiquement :

$$K = \frac{\Delta\theta}{\Delta(1/a)} = \frac{(15 - 6)\cdot10^{-3}}{(25 - 10)\cdot10^{3}} = 6\cdot10^{-7}\ \mathrm{m}$$

Or la relation de diffraction donne $\theta = \dfrac{\lambda}{a}$, donc par identification $\lambda = K$ :

$$\boxed{\;\lambda = 6\cdot10^{-7}\ \mathrm{m} = 0{,}6\ \mu\mathrm{m}\;}$$

**4.2.** *Diamètre $a_1$.*

D'après la figure 1, $\tan\theta = \dfrac{L/2}{D} \approx \theta = \dfrac{L}{2D}$. Avec $\theta = \dfrac{\lambda}{a_1}$ :

$$\frac{\lambda}{a_1} = \frac{L_1}{2D} \;\Longrightarrow\; a_1 = \frac{2\lambda D}{L_1} = \frac{2\times6\cdot10^{-7}\times2{,}0}{4\cdot10^{-2}} = 6\cdot10^{-5}\ \mathrm{m}$$

<div class="my-2 font-semibold" style="color:#1F4E79">⇒ $a_1 = 60\ \mu\mathrm{m}$.</div>

<div class="my-5 rounded-lg px-4 py-2.5 text-white font-bold" style="background:#1F4E79">Exercice 3 — Transformations nucléaires <span class="font-normal text-white/80 text-sm">(1,5 points)</span></div>

**1.** *Équation de la réaction nucléaire.*

$$_{92}^{235}\mathrm{U} + {}_{0}^{1}\mathrm{n} \;\longrightarrow\; {}_{58}^{146}\mathrm{Ce} + {}_{34}^{85}\mathrm{Se} + x\,{}_{0}^{1}\mathrm{n}$$

Conservation du nombre de nucléons : $235 + 1 = 146 + 85 + x \Rightarrow x = 5$.

$$\boxed{\;_{92}^{235}\mathrm{U} + {}_{0}^{1}\mathrm{n} \longrightarrow {}_{58}^{146}\mathrm{Ce} + {}_{34}^{85}\mathrm{Se} + 5\,{}_{0}^{1}\mathrm{n}\;}$$

**2.** *Énergie $|\Delta E|$ d'une fission.*

$$|\Delta E| = \left|\big[m(_{58}^{146}\mathrm{Ce}) + m(_{34}^{85}\mathrm{Se}) + 5\,m_n - m(_{92}^{235}\mathrm{U}) - m_n\big]\,c^2\right|$$

$$= \big[m(_{92}^{235}\mathrm{U}) - m(_{58}^{146}\mathrm{Ce}) - m(_{34}^{85}\mathrm{Se}) - 4\,m_n\big]\,c^2$$

$$= \big[234{,}9935 - 145{,}8782 - 84{,}9033 - 4\times1{,}0087\big]\times931{,}5\ \mathrm{MeV} = 0{,}1772\times931{,}5 \approx 165{,}06\ \mathrm{MeV}$$

$$|\Delta E| = 165{,}06\times1{,}6022\cdot10^{-13} \approx \boxed{2{,}645\cdot10^{-11}\ \mathrm{J}}$$

**3.** *Énergie produite par $1\ \mathrm{kg}$ d'uranium activé à $5\%$.*

Masse activée : $m' = \dfrac{5}{100}\times1 = 0{,}05\ \mathrm{kg}$. Nombre de noyaux :

$$N = \frac{m'}{m(_{92}^{235}\mathrm{U})} = \frac{0{,}05}{234{,}9935\times1{,}6605\cdot10^{-27}} \approx 1{,}28\cdot10^{23}$$

$$E = N\cdot|\Delta E| = 1{,}28\cdot10^{23}\times2{,}645\cdot10^{-11} \approx \boxed{3{,}39\cdot10^{12}\ \mathrm{J}}$$

**4.** *Masse d'uranium activé consommée en un an.*

L'énergie électrique fournie : $E_e = p\cdot\Delta t$. Le rendement relie l'énergie électrique à l'énergie nucléaire : $r = \dfrac{E_e}{E_T} \Rightarrow E_T = \dfrac{p\,\Delta t}{r}$.

La masse $m$ produit $E_T$, tandis que $m' = 0{,}05\ \mathrm{kg}$ produit $E = 3{,}39\cdot10^{12}\ \mathrm{J}$. On forme le rapport $\dfrac{m}{m'} = \dfrac{E_T}{E}$, soit $m = \dfrac{p\,\Delta t}{r\,E}\,m'$. En posant $E_T = m\cdot\dfrac{E}{m'}$ (énergie par kg $= E/m' = 6{,}78\cdot10^{13}\ \mathrm{J\cdot kg^{-1}}$), il vient :

$$m = \frac{p\,\Delta t}{r\,(E/m')} = \frac{1450\cdot10^{6}\times365{,}25\times24\times3600}{0{,}34\times3{,}388\cdot10^{15}} \approx \boxed{3{,}97\cdot10^{4}\ \mathrm{kg}}$$

<div class="my-3 rounded-md bg-sky-50 border border-sky-200 px-3 py-2 text-sm text-sky-900"><strong>Remarque :</strong> $3{,}388\cdot10^{15}\ \mathrm{J}$ est l'énergie produite par $1\ \mathrm{kg}$ d'uranium activé ($E/m'$ avec $m'=0{,}05$, soit $6{,}78\cdot10^{13}\ \mathrm{J\cdot kg^{-1}}$ rapporté au kg total) ; la valeur officielle retient $E_T = p\Delta t/r$ et $m = E_T/(E/m')$.</div>

<div class="my-5 rounded-lg px-4 py-2.5 text-white font-bold" style="background:#1F4E79">Exercice 4 — Électricité <span class="font-normal text-white/80 text-sm">(5 points)</span></div>

**1.1.** *Équation différentielle en $u(t)$.*

Loi d'additivité des tensions : $u_b + u = E$, avec $u_b = L\dfrac{di}{dt} + r\,i$. Comme $u = R\,i$, on a $i = \dfrac{u}{R}$ et $\dfrac{di}{dt} = \dfrac{1}{R}\dfrac{du}{dt}$ :

$$\frac{L}{R}\frac{du}{dt} + \frac{r}{R}u + u = E \;\Longrightarrow\; \boxed{\;\frac{du}{dt} + \frac{R+r}{L}\,u = \frac{R\,E}{L}\;}$$

**1.2.** *Vérification de $r$ et $L$.*

En régime permanent $\dfrac{du}{dt} = 0$, donc $u_{max}\dfrac{R+r}{L} = \dfrac{RE}{L}$, d'où $r = \dfrac{R(E - u_{max})}{u_{max}}$. La figure 2 donne $u_{max} = 3{,}6\ \mathrm{V}$ :

$$r = \frac{4\times(9 - 3{,}6)}{3{,}6} = \boxed{6\ \Omega}$$

La constante de temps $\tau = \dfrac{L}{R+r}$ se lit $\tau = 0{,}1\ \mathrm{s}$ (intersection de la tangente à l'origine et de l'asymptote), donc :

$$L = \tau(R+r) = 0{,}1\times(4+6) = \boxed{1\ \mathrm{H}}$$

**1.3.1.** *Condition $u = 0{,}99\,u_{max}$.*

La puissance vaut $98{,}01\%$ de sa valeur maximale : $\dfrac{u^2}{R} = 0{,}9801\,\dfrac{u_{max}^2}{R}$, donc $u = \sqrt{0{,}9801}\,u_{max} = 0{,}99\,u_{max}$.

**1.3.2.** *Durée $t_R$.*

$$0{,}99\,u_{max} = u_{max}\big(1 - e^{-t_R/\tau}\big) \;\Longrightarrow\; e^{-t_R/\tau} = 0{,}01 \;\Longrightarrow\; t_R = -\tau\ln(0{,}01)$$

$$t_R = -0{,}1\times\ln(0{,}01) \approx \boxed{0{,}46\ \mathrm{s}}$$

**1.3.3.** D'après $t_R = -\tau\ln(0{,}01)$, prolonger $t_R$ revient à augmenter $\tau = \dfrac{L}{R+r}$. On peut **diminuer $R$** (remplacer la lampe par une de résistance plus faible) ou augmenter $L$.

**2.1.** *Valeur de $k$.*

Additivité des tensions dans le circuit (figure 3) : $u_b + u_C = u_g$, soit $L\dfrac{di}{dt} + r\,i + u_C = k\,i$, d'où $L\dfrac{di}{dt} + (r-k)\,i + u_C = 0$. Avec $i = C\dfrac{du_C}{dt}$ :

$$\frac{d^2u_C}{dt^2} + \frac{r-k}{L}\frac{du_C}{dt} + \frac{1}{LC}u_C = 0$$

Pour des oscillations sinusoïdales non amorties (circuit LC équivalent), le terme d'amortissement doit s'annuler : $r - k = 0$, donc $\boxed{k = r = 6\ \Omega}$.

**2.2.** *$I_m$, $C$ et $Q_0$.*

D'après la figure 4, l'énergie magnétique maximale est $E_{m,max} = 2\ \mu\mathrm{J}$, atteinte quand $E_e = 0$ (toute l'énergie est magnétique) : $E_{m,max} = \dfrac{1}{2}L\,I_m^2$.

$$I_m = \sqrt{\frac{2\,E_{m,max}}{L}} = \sqrt{\frac{2\times2\cdot10^{-6}}{1}} = \boxed{2\ \mathrm{mA}}$$

La période de l'énergie magnétique vaut la moitié de la période propre : $T = \dfrac{T_0}{2}$. La figure 4 donne $T = 2\pi\cdot10^{-4}\ \mathrm{s}$, donc $T_0 = 2T$. Avec $T_0 = 2\pi\sqrt{LC}$ :

$$C = \frac{T_0^2}{4\pi^2 L} = \frac{(2\times2\pi\cdot10^{-4})^2}{4\pi^2\times1} = \frac{(2\pi\cdot10^{-4})^2}{\pi^2} = 4\cdot10^{-8}\ \mathrm{F} = \boxed{40\ \mathrm{nF}}$$

La charge maximale : $E_{e,max} = E_{m,max} = \dfrac{Q_0^2}{2C}$, donc :

$$Q_0 = \sqrt{2C\,E_{m,max}} = \sqrt{2\times4\cdot10^{-8}\times2\cdot10^{-6}} = 4\cdot10^{-7}\ \mathrm{C} = \boxed{0{,}4\ \mu\mathrm{C}}$$

**3.1.** *Résistance associée à la courbe (b).*

Plus $R$ est petite, plus la résonance est aiguë (pic élevé et étroit). La courbe (b) est la plus aiguë, et comme $R_1 < R_2$, elle correspond à $R_1$.

**3.2.** *Fréquence de résonance.*

Lue au sommet des courbes : $\boxed{N_0 = 800\ \mathrm{Hz}}$.

**3.3.** *Bande passante et facteur de qualité (courbe b).*

À la résonance $I_0 = 6{,}2\ \mathrm{mA}$. La bande passante à $-3\ \mathrm{dB}$ correspond à $I \geq \dfrac{I_0}{\sqrt2} = \dfrac{6{,}2}{\sqrt2} \approx 4{,}4\ \mathrm{mA}$. Graphiquement : $N_1 = 720\ \mathrm{Hz}$ et $N_2 = 880\ \mathrm{Hz}$.

$$\Delta N = N_2 - N_1 = 880 - 720 = 160\ \mathrm{Hz} \;\Longrightarrow\; Q = \frac{N_0}{\Delta N} = \frac{800}{160} = \boxed{5}$$

**3.4.** *Valeur de $R_1$.*

La bande passante vérifie $\Delta N = \dfrac{R}{2\pi L}$ avec $R = R_1 + r$ :

$$R_1 + r = 2\pi L\,\Delta N \;\Longrightarrow\; R_1 = 2\pi L\,\Delta N - r = 2\pi\times1\times160 - 6 \approx \boxed{999\ \Omega \approx 1000\ \Omega}$$

<div class="my-5 rounded-lg px-4 py-2.5 text-white font-bold" style="background:#1F4E79">Exercice 5 — Mécanique <span class="font-normal text-white/80 text-sm">(4,5 points)</span></div>

<div class="mt-4 mb-2 text-base font-bold" style="color:#1F4E79">Partie I : Expérience de Millikan</div>

**1.1.** *Équation différentielle du mouvement.*

Système : la gouttelette $(S)$. Forces : poids $\vec P = m\vec g$, frottement $\vec f = -6\pi\eta r\,\vec v$, poussée $\vec F_A = -\rho_A V_s\,\vec g = -\dfrac{4}{3}\pi r^3\rho_A\,\vec g$.

Deuxième loi de Newton, projetée sur l'axe $(O,\vec k)$ (orienté vers le bas) :

$$mg - 6\pi\eta r\,v - \frac{4}{3}\pi r^3\rho_A g = m\frac{dv}{dt}$$

Avec $m = \dfrac{4}{3}\pi r^3\rho_H$, on divise par $m$ :

$$\frac{dv}{dt} + \frac{6\pi\eta r}{\frac{4}{3}\pi r^3\rho_H}\,v = g\!\left(1 - \frac{\rho_A}{\rho_H}\right) \;\Longrightarrow\; \boxed{\;\frac{dv}{dt} + \frac{9\eta}{2\rho_H r^2}\,v = g\!\left(1 - \frac{\rho_A}{\rho_H}\right)\;}$$

**1.2.** *Vitesse limite $v_\ell$.*

En régime permanent $\dfrac{dv}{dt} = 0$ :

$$\frac{9\eta}{2\rho_H r^2}\,v_\ell = g\!\left(1 - \frac{\rho_A}{\rho_H}\right) \;\Longrightarrow\; \boxed{\;v_\ell = \frac{2g\,r^2}{9\eta}(\rho_H - \rho_A)\;}$$

**1.3.** *Vérification de $r$.*

$$r = \sqrt{\frac{9\eta\,v_\ell}{2g(\rho_H - \rho_A)}} = \sqrt{\frac{9\times1{,}8\cdot10^{-5}\times2{,}0\cdot10^{-4}}{2\times9{,}81\times(1{,}3\cdot10^{2} - 1{,}3)}} \approx 3{,}58\cdot10^{-6}\ \mathrm{m}$$

<div class="my-2 font-semibold" style="color:#1F4E79">⇒ $r \approx 3{,}6\ \mu\mathrm{m}$.</div>

**2.1.** *Expression de la charge $q$.*

À l'immobilisation, première loi de Newton : $\vec P + \vec F_A + \vec F_e = \vec 0$. Projection sur $(O,\vec k)$ :

$$\frac{4}{3}\pi r^3\rho_H g - \frac{4}{3}\pi r^3\rho_A g + q\frac{U_0}{d} = 0 \;\Longrightarrow\; \boxed{\;q = \frac{4\pi r^3\,d\,g}{3\,U_0}(\rho_A - \rho_H)\;}$$

($q < 0$ puisque $\rho_A < \rho_H$, cohérent avec une charge négative.)

**2.2.** *Nombre de charges élémentaires.*

$q = -N\,e$, donc $N = -\dfrac{q}{e} = \dfrac{4\pi r^3\,d\,g}{3\,e\,U_0}(\rho_H - \rho_A)$ :

$$N = \frac{4\pi(3{,}6\cdot10^{-6})^3\times2{,}0\cdot10^{-2}\times9{,}81}{3\times1{,}6\cdot10^{-19}\times3{,}1\cdot10^{3}}(1{,}3\cdot10^{2} - 1{,}3) \approx 9{,}95 \approx \boxed{10}$$

La gouttelette porte la charge $q = -10\,e$.

<div class="mt-4 mb-2 text-base font-bold" style="color:#1F4E79">Partie II : Spectrographe de masse</div>

**1.1.** *Nature du mouvement de $^6\mathrm{Li^+}$ entre $O$ et $O'$.*

L'ion est soumis à la force électrostatique $\vec F = e\vec E$ (poids négligé). Deuxième loi de Newton : $m_1\vec a_1 = e\vec E$, donc $\vec a_1 = \dfrac{e}{m_1}\vec E$ est constant. Projection sur $(O,\vec i)$ : $a_1 = \dfrac{e\,U_0}{m_1\,d} = \text{cte}$.

<div class="my-2 font-semibold" style="color:#1F4E79">⇒ Mouvement rectiligne uniformément accéléré.</div>

**1.2.** *Équations horaires.*

Avec $v_0 = 0$ et $x_0 = 0$ à $t = 0$ :

$$x(t) = \frac{1}{2}a_1\,t^2 = \frac{e\,U_0}{2\,m_1\,d}\,t^2 \qquad ; \qquad v(t) = \frac{dx}{dt} = \frac{e\,U_0}{m_1\,d}\,t$$

**1.3.** *Expression de $v_1$.*

En éliminant $t$ : de $v = \dfrac{eU_0}{m_1 d}t$ on tire $t = \dfrac{v\,m_1 d}{eU_0}$, reporté dans $x$ :

$$x = \frac{eU_0}{2m_1 d}\left(\frac{v\,m_1 d}{eU_0}\right)^2 = \frac{m_1 d}{2eU_0}v^2 \;\Longrightarrow\; v^2 = \frac{2eU_0}{m_1 d}\,x$$

En $O'$, $x = d$, donc :

$$\boxed{\;v_1 = \sqrt{\frac{2e\,U_0}{m_1}}\;}$$

**2.** *Distance $MN$.*

Dans le compartiment (3), mouvement circulaire uniforme : la force de Lorentz est centripète, $\dfrac{m v^2}{R} = e\,v\,B$, d'où le rayon $R = \dfrac{m\,v}{e\,B}$. Avec $v = \sqrt{\dfrac{2eU_0}{m}}$ :

$$R = \frac{m}{eB}\sqrt{\frac{2eU_0}{m}} = \frac{1}{B}\sqrt{\frac{2m\,U_0}{e}}$$

Les ions atteignent l'écran après un demi-tour, donc $D = 2R$. Comme $m_1 < m_2$ : $R_1 < R_2$ et

$$MN = 2R_2 - 2R_1 = \frac{2}{B}\sqrt{\frac{2U_0}{e}}\left(\sqrt{m_2} - \sqrt{m_1}\right)$$

$$MN = \frac{2}{0{,}1}\sqrt{\frac{2\times2\cdot10^{3}}{1{,}6\cdot10^{-19}}}\left(\sqrt{7\times1{,}67\cdot10^{-27}} - \sqrt{6\times1{,}67\cdot10^{-27}}\right) \approx 2{,}54\cdot10^{-2}\ \mathrm{m}$$

<div class="my-2 font-semibold" style="color:#1F4E79">⇒ $MN \approx 2{,}54\ \mathrm{cm}$.</div>
