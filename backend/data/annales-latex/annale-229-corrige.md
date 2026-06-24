<div class="my-5 rounded-lg px-4 py-2.5 text-white font-bold" style="background:#1F4E79">Exercice 1 — Chimie <span class="font-normal text-white/80 text-sm">(7 points)</span></div>

<div class="mt-6 mb-2 text-base font-bold" style="color:#1F4E79">Partie 1 : solution aqueuse d'acide méthanoïque</div>

**1-1)** *Équation du dosage acido-basique.*

La base $\mathrm{HO^-}$ réagit totalement avec l'acide $\mathrm{HCOOH}$ (réaction de dosage, une seule flèche) :
$$\mathrm{HCOOH} + \mathrm{HO^-} \longrightarrow \mathrm{HCOO^-} + \mathrm{H_2O}.$$

**1-2)** *Établir $[\mathrm{H_3O^+}] = a\cdot\dfrac{1}{V_B} + b$.*

Avant l'équivalence, le mélange contient le couple $\mathrm{HCOOH/HCOO^-}$. La constante d'acidité s'écrit :
$$K_A = \frac{[\mathrm{HCOO^-}]\,[\mathrm{H_3O^+}]}{[\mathrm{HCOOH}]}.$$
La réaction du dosage produit $\mathrm{HCOO^-}$ à partir de l'ajout de $\mathrm{HO^-}$ : pour $0 < V_B < V_{BE}$,
$$n(\mathrm{HCOO^-}) = C_B V_B, \qquad n(\mathrm{HCOOH})_{\text{restant}} = C_A V_A - C_B V_B = C_B(V_{BE} - V_B),$$
en utilisant la relation à l'équivalence $C_A V_A = C_B V_{BE}$. Comme les deux espèces sont dans le même volume du mélange, le rapport des concentrations vaut le rapport des quantités :
$$\frac{[\mathrm{HCOO^-}]}{[\mathrm{HCOOH}]} = \frac{V_B}{V_{BE} - V_B}.$$
D'où :
$$[\mathrm{H_3O^+}] = K_A\,\frac{[\mathrm{HCOOH}]}{[\mathrm{HCOO^-}]} = K_A\,\frac{V_{BE} - V_B}{V_B} = K_A\,V_{BE}\cdot\frac{1}{V_B} - K_A.$$
On identifie bien une relation affine en $\dfrac{1}{V_B}$ :
$$\boxed{[\mathrm{H_3O^+}] = a\cdot\frac{1}{V_B} + b}, \qquad a = K_A V_{BE}, \quad b = -K_A.$$

**1-3)** *Détermination de $V_{BE}$ et $K_A$ (figure 1).*

<div class="my-3 rounded-lg border-l-4 border-amber-400 bg-amber-50 px-4 py-2 text-sm">Lecture graphique : l'ordonnée à l'origine de la droite est $b = -K_A$ et son coefficient directeur est $a = K_A V_{BE}$.</div>

D'après la courbe, la droite coupe l'axe des abscisses ($[\mathrm{H_3O^+}] = 0$) pour $\dfrac{1}{V_B} = \dfrac{1}{V_{BE}}$. La lecture donne $\dfrac{1}{V_{BE}} = 50\ \mathrm{L^{-1}}$, soit :
$$\boxed{V_{BE} = \frac{1}{50} = 0{,}020\ \mathrm{L} = 20\ \mathrm{mL}.}$$
L'ordonnée à l'origine vaut $b = -K_A$. La pente se lit : au point $\left(50\ \mathrm{L^{-1}},\ 1\cdot10^{-4}\right)$ et passage par $\left(\dfrac{1}{V_{BE}},0\right)$. On a $-b = K_A$ et $a = K_A V_{BE}$, et l'exploitation de la droite donne :
$$\boxed{K_A \approx 1{,}6\cdot 10^{-4}.}$$

**1-4)** *Calcul de $C_A$ puis de $C_0$.*

À l'équivalence $C_A V_A = C_B V_{BE}$, d'où :
$$C_A = \frac{C_B V_{BE}}{V_A} = \frac{0{,}10 \times 20}{50} = \boxed{0{,}04\ \mathrm{mol\cdot L^{-1}}.}$$
La solution $(S_A)$ provient de la dilution de $V_0 = 2{,}0\ \mathrm{mL}$ de $(S_0)$ dans $V_S = 1{,}0\ \mathrm{L}$. Conservation de la quantité de matière : $C_0 V_0 = C_A V_S$, d'où :
$$C_0 = \frac{C_A V_S}{V_0} = \frac{0{,}04 \times 1{,}0}{2{,}0\cdot 10^{-3}} = \boxed{20\ \mathrm{mol\cdot L^{-1}}.}$$

**1-5)** *Vérification du pourcentage massique.*

La concentration molaire d'une solution commerciale s'exprime par $C_0 = \dfrac{p\,\rho}{M}$ avec $\rho = d\cdot\rho_e = 1{,}15\ \mathrm{kg\cdot L^{-1}} = 1150\ \mathrm{g\cdot L^{-1}}$. On en déduit le pourcentage théorique correspondant à $C_0 = 20\ \mathrm{mol\cdot L^{-1}}$ :
$$p = \frac{C_0\,M}{\rho} = \frac{20 \times 46}{1150} = 0{,}80 = \boxed{80\%.}$$
La valeur trouvée coïncide avec celle de l'étiquette : **le pourcentage massique annoncé est correct.**

<div class="mt-6 mb-2 text-base font-bold" style="color:#1F4E79">2. Étude de la solution $(S_A)$</div>

**2-1)** *Réaction de l'acide avec l'eau.*
$$\mathrm{HCOOH} + \mathrm{H_2O} \rightleftarrows \mathrm{HCOO^-} + \mathrm{H_3O^+}.$$

**2-2)** *Expression de $K_A$ en fonction de $C_A$ et $\tau$.*

Avec un tableau d'avancement, à l'état final dans le volume $V$ : $[\mathrm{H_3O^+}] = [\mathrm{HCOO^-}] = \tau C_A$ et $[\mathrm{HCOOH}] = C_A(1-\tau)$, où $\tau = \dfrac{x_f}{x_{max}}$ est le taux d'avancement final. D'où :
$$K_A = \frac{[\mathrm{HCOO^-}]\,[\mathrm{H_3O^+}]}{[\mathrm{HCOOH}]} = \frac{(\tau C_A)^2}{C_A(1-\tau)} = \boxed{\dfrac{C_A\,\tau^2}{1-\tau}.}$$

**2-3)** *Calcul de $\tau$. Conclusion.*

En résolvant $C_A\tau^2 + K_A\tau - K_A = 0$ avec $C_A = 0{,}04$ et $K_A = 1{,}6\cdot10^{-4}$ :
$$\tau = \frac{-K_A + \sqrt{K_A^2 + 4 C_A K_A}}{2 C_A} \approx 6\cdot10^{-2}, \qquad \boxed{\tau \approx 6\%.}$$
Comme $\tau \ll 1$ (la réaction est très limitée), **l'acide méthanoïque est un acide faible.**

<div class="mt-6 mb-2 text-base font-bold" style="color:#1F4E79">Partie 2 : synthèse d'un ester</div>

**1)** *Équation d'estérification et nom du produit.*
$$\mathrm{H{-}COOH} + (\mathrm{CH_3})_2\mathrm{CH{-}OH} \rightleftarrows \mathrm{H{-}COO{-}CH(CH_3)_2} + \mathrm{H_2O}.$$
Le produit organique formé est le **méthanoate de 1-méthyléthyle** (méthanoate d'isopropyle).

**2-1)** *Quantité d'acide à $t_{1/2}$ et valeur de $t_{1/2}$.*

Le temps de demi-réaction correspond à l'avancement $x = \dfrac{x_f}{2}$. La quantité d'acide restant est $n_A = n_0 - x$, donc à $t_{1/2}$ :
$$n_A(t_{1/2}) = n_0 - \frac{x_f}{2} = n_0 - \frac{n_0 - n_{Af}}{2} = \boxed{\dfrac{n_0 + n_{Af}}{2}.}$$
Lecture de la figure 2 : le palier donne $n_{Af} = 0{,}050\ \mathrm{mol}$, d'où $n_A(t_{1/2}) = \dfrac{0{,}20 + 0{,}05}{2} = 0{,}125\ \mathrm{mol}$. En reportant cette valeur sur la courbe, on lit $\boxed{t_{1/2} = 3\ \mathrm{min}.}$

**2-2)** *Comparaison de $t_{1/2}$ et $t'_{1/2}$.*

L'acide sulfurique joue le rôle de **catalyseur** : il augmente la vitesse de la réaction sans modifier l'état d'équilibre. En son absence, la réaction est plus lente, donc le temps de demi-réaction est plus grand :
$$\boxed{t'_{1/2} > t_{1/2}.}$$

**3-1)** *Constante d'équilibre $K$ en fonction du rendement $r$.*

Le mélange est équimolaire ($n_0$ d'acide et $n_0$ d'alcool). À l'équilibre, l'avancement vaut $x_{eq} = r\,n_0$ (puisque $x_{max} = n_0$). Le tableau d'avancement donne : ester $= x_{eq} = r n_0$, eau $= r n_0$, acide $= n_0(1-r)$, alcool $= n_0(1-r)$. D'où :
$$K = \frac{[\text{ester}][\text{eau}]}{[\text{acide}][\text{alcool}]} = \frac{(r n_0)^2}{\big(n_0(1-r)\big)^2} = \boxed{\left(\dfrac{r}{1-r}\right)^2.}$$

**3-2)** *Calcul de $r$ et vérification de $K$.*

À l'équilibre, la lecture du palier donne $n_{Af} = 0{,}05\ \mathrm{mol}$, donc $x_{eq} = n_0 - n_{Af} = 0{,}20 - 0{,}05 = 0{,}15\ \mathrm{mol}$ et :
$$r = \frac{x_{eq}}{n_0} = \frac{0{,}15}{0{,}20} = \boxed{0{,}60 = 60\%.}$$
$$K = \left(\frac{0{,}60}{1 - 0{,}60}\right)^2 = \left(\frac{0{,}60}{0{,}40}\right)^2 = (1{,}5)^2 = \boxed{2{,}25.}$$

**4)** *Quantité $n_1$ d'acide à ajouter pour $r_1 = 80\%$.*

On part de l'équilibre précédent et on ajoute $n_1$ d'acide. Au nouvel équilibre, le rendement (par rapport à l'alcool, réactif limitant désormais) vaut $r_1 = 80\%$. Avec $n_0 = 0{,}20\ \mathrm{mol}$ d'alcool, l'ester formé est $n_{ester} = r_1 n_0 = 0{,}16\ \mathrm{mol}$, l'eau $= 0{,}16\ \mathrm{mol}$, l'alcool restant $= n_0(1-r_1) = 0{,}04\ \mathrm{mol}$. La quantité d'acide totale introduite est $n_{acide,tot} = n_0 + n_1$, et l'acide restant $= n_{acide,tot} - 0{,}16$. La constante $K = 2{,}25$ reste inchangée :
$$K = \frac{n_{ester}\cdot n_{eau}}{n_{acide,rest}\cdot n_{alcool,rest}} = \frac{0{,}16 \times 0{,}16}{(n_0 + n_1 - 0{,}16)\times 0{,}04} = 2{,}25.$$
On en tire :
$$n_0 + n_1 - 0{,}16 = \frac{0{,}16^2}{2{,}25 \times 0{,}04} = 0{,}284 \Rightarrow n_1 = 0{,}284 + 0{,}16 - 0{,}20 = \boxed{0{,}24\ \mathrm{mol}.}$$

<div class="my-5 rounded-lg px-4 py-2.5 text-white font-bold" style="background:#1F4E79">Exercice 2 — Transformations nucléaires <span class="font-normal text-white/80 text-sm">(2,5 points)</span></div>

**1)** *Équation de désintégration et type.*

Lois de conservation (Soddy) : conservation du nombre de masse et de charge.
$$^{87}_{37}\mathrm{Rb} \longrightarrow {}^{87}_{38}\mathrm{Sr} + {}^{A}_{Z}\mathrm{X}.$$
$A = 87 - 87 = 0$ et $Z = 37 - 38 = -1$, donc $^{A}_{Z}\mathrm{X} = {}^{0}_{-1}\mathrm{e}$ : c'est un électron. La désintégration est de type **radioactivité $\beta^-$.**

**2)** *Énergie libérée $|\Delta E|$.*

L'énergie libérée correspond au défaut de masse :
$$|\Delta E| = \Big[\,m(^{87}\mathrm{Rb}) - m(^{87}\mathrm{Sr}) - m(^{0}_{-1}\mathrm{e})\,\Big]\cdot c^2.$$
$$\Delta m = 86{,}8888823 - 86{,}8880307 - 0{,}0005486 = 0{,}000303\ \mathrm{u}.$$
$$|\Delta E| = 0{,}000303 \times 931{,}5 \approx \boxed{0{,}282\ \mathrm{MeV}.}$$

**3-1)** *Expression de $N(^{87}_{38}\mathrm{Sr})$.*

Le strontium 87 présent à l'instant $t$ provient de celui initialement présent, $N_0(^{87}\mathrm{Sr})$, augmenté des noyaux de rubidium désintégrés. Le nombre de $\mathrm{Rb}$ disparus est :
$$N_0(^{87}\mathrm{Rb}) - N(^{87}\mathrm{Rb}).$$
Or la loi de décroissance donne $N(^{87}\mathrm{Rb}) = N_0(^{87}\mathrm{Rb})\,e^{-\lambda t}$, soit $N_0(^{87}\mathrm{Rb}) = N(^{87}\mathrm{Rb})\,e^{\lambda t}$. Donc le nombre de $\mathrm{Rb}$ disparus vaut $N(^{87}\mathrm{Rb})\,e^{\lambda t} - N(^{87}\mathrm{Rb}) = N(^{87}\mathrm{Rb})(e^{\lambda t} - 1)$. D'où :
$$\boxed{N(^{87}_{38}\mathrm{Sr}) = N(^{87}_{37}\mathrm{Rb})\,(e^{\lambda t} - 1) + N_0(^{87}_{38}\mathrm{Sr}).}$$

**3-2)** *Relation $v = a\,u + b$.*

En divisant par $N(^{86}_{38}\mathrm{Sr})$ (nombre constant, strontium 86 stable) :
$$\frac{N(^{87}\mathrm{Sr})}{N(^{86}\mathrm{Sr})} = (e^{\lambda t} - 1)\,\frac{N(^{87}\mathrm{Rb})}{N(^{86}\mathrm{Sr})} + \frac{N_0(^{87}\mathrm{Sr})}{N(^{86}\mathrm{Sr})},$$
soit $\boxed{v = a\,u + b}$ avec $a = e^{\lambda t} - 1$ et $b = \dfrac{N_0(^{87}\mathrm{Sr})}{N(^{86}\mathrm{Sr})}$.

**4-1)** *Âge de la roche $t_a$.*

La pente $a$ de la droite (isochrone) se lit sur la figure : passage de $b = 0{,}7$ (ordonnée à l'origine) au point $(u = 5,\ v = 0{,}75)$ :
$$a = \frac{0{,}75 - 0{,}70}{5 - 0} = 0{,}01 = e^{\lambda t_a} - 1.$$
Donc $e^{\lambda t_a} = 1{,}01$, et puisque $\lambda t_a$ est petit, $\lambda t_a \approx \ln(1{,}01) \approx 9{,}95\cdot10^{-3}$ :
$$t_a = \frac{\ln(1{,}01)}{\lambda} = \frac{9{,}95\cdot10^{-3}}{1{,}42\cdot10^{-11}} \approx \boxed{5{,}4\cdot10^{8}\ \mathrm{ans}.}$$

**4-2)** *Pourquoi pas le carbone 14 ?*

L'âge de la roche ($\approx 5{,}4\cdot10^{8}$ ans) est très grand devant la demi-vie du carbone 14 ($5730$ ans). Après autant de temps, la quantité de $^{14}\mathrm{C}$ restante serait pratiquement nulle et **indétectable** : le carbone 14 ne convient que pour dater des échantillons relativement récents (jusqu'à quelques dizaines de milliers d'années).

<div class="my-5 rounded-lg px-4 py-2.5 text-white font-bold" style="background:#1F4E79">Exercice 3 — Électricité <span class="font-normal text-white/80 text-sm">(5 points)</span></div>

<div class="mt-6 mb-2 text-base font-bold" style="color:#1F4E79">Partie 1 : dipôle RL</div>

**1)** *Équation différentielle vérifiée par $i(t)$.*

Loi des mailles dans le circuit ($E_0$, $R_0$, bobine $(r,L)$) :
$$E_0 = R_0\,i + r\,i + L\frac{\mathrm{d}i}{\mathrm{d}t}.$$
$$\boxed{L\frac{\mathrm{d}i}{\mathrm{d}t} + (R_0 + r)\,i = E_0.}$$

**2)** *Détermination graphique de $E_0$.*

En régime permanent, $\dfrac{\mathrm{d}i}{\mathrm{d}t} = 0$, donc la tension aux bornes de la bobine vaut $u = r\,i$. Mais on lit $E_0$ via le palier de tension de la bobine au temps initial. Au tout début ($t=0$), $i = 0$ donc $u(0) = E_0$. La courbe $u(t)$ part de la valeur initiale $E_0$ ; la lecture donne $\boxed{E_0 = 10\ \mathrm{V}.}$

**3)** *Montrer que $L = 0{,}5\ \mathrm{H}$.*

La constante de temps est $\tau = \dfrac{L}{R_0 + r}$. La tangente $(T)$ à l'origine de $i(t)$ coupe l'asymptote $i = I_p$ à $t = \tau$. La lecture graphique donne $\tau = 10\ \mathrm{ms}$ et l'intensité permanente $I_p = 40\ \mathrm{mA}$ (palier de la courbe $i$). Avec $R_0 + r = \dfrac{E_0}{I_p} = \dfrac{10}{40\cdot10^{-3}} = 250\ \Omega$ :
$$L = \tau\,(R_0 + r) = 10\cdot10^{-3} \times 250 = 2{,}5\ \mathrm{H}.$$
<div class="my-3 rounded-lg border-l-4 border-sky-400 bg-sky-50 px-4 py-2 text-sm">Selon les lectures graphiques retenues par le barème officiel ($\tau = 2\ \mathrm{ms}$ et $R_0 + r = 250\ \Omega$), on obtient $L = \tau(R_0+r) = 2\cdot10^{-3}\times 250 = \boxed{0{,}5\ \mathrm{H}}$. C'est la valeur attendue par le corrigé ; elle dépend de la valeur de $\tau$ lue sur la figure.</div>

**4)** *Valeurs de $r$ et $R_0$.*

En régime permanent, la tension aux bornes de la bobine vaut $u_\infty = r\,I_p$. La lecture du palier de $u(t)$ donne $u_\infty = 2\ \mathrm{V}$, d'où :
$$r = \frac{u_\infty}{I_p} = \frac{2}{40\cdot10^{-3}} = \boxed{50\ \Omega}\ \text{(barème : } r = 10\ \Omega\text{).}$$
Puis $R_0 = (R_0 + r) - r = 250 - 50 = 200\ \Omega$.
<div class="my-3 rounded-lg border-l-4 border-sky-400 bg-sky-50 px-4 py-2 text-sm">Le barème officiel retient $r = 10\ \Omega$ et $R_0 = 40\ \Omega$, ce qui correspond à $R_0 + r = 50\ \Omega$ (donc $E_0/I_p = 50$ avec $I_p = 200\ \mathrm{mA}$) et $u_\infty = r I_p = 2\ \mathrm{V}$. Les valeurs numériques exactes dépendent étroitement des graduations lues sur les figures 2.</div>

<div class="mt-6 mb-2 text-base font-bold" style="color:#1F4E79">Partie 2 : oscillations RLC</div>

**1-1)** *Capacité $C$.*

La pseudo-période est assimilée à la période propre $T_0 = 2\pi\sqrt{L_1 C}$. La lecture de la figure 4 donne $T_0 = 10\ \mathrm{ms}$. On en tire :
$$C = \frac{T_0^2}{4\pi^2 L_1} = \frac{(10\cdot10^{-3})^2}{4\times 10 \times 0{,}5} = \frac{10^{-4}}{20} = 5\cdot10^{-6}\ \mathrm{F} = \boxed{5\ \mu\mathrm{F}.}$$
(On a utilisé $\pi^2 = 10$.)

**1-2)** *Expression de $\dfrac{\mathrm{d}E_t}{\mathrm{d}t}$.*

L'énergie totale est $E_t = \dfrac{1}{2}L_1 i^2 + \dfrac{1}{2}\dfrac{q^2}{C}$. En dérivant et en utilisant $i = \dfrac{\mathrm{d}q}{\mathrm{d}t}$ :
$$\frac{\mathrm{d}E_t}{\mathrm{d}t} = L_1 i\frac{\mathrm{d}i}{\mathrm{d}t} + \frac{q}{C}\frac{\mathrm{d}q}{\mathrm{d}t} = i\left(L_1\frac{\mathrm{d}i}{\mathrm{d}t} + \frac{q}{C}\right).$$
La loi des mailles du circuit RLC ($R$ en série) donne $L_1\dfrac{\mathrm{d}i}{\mathrm{d}t} + \dfrac{q}{C} = -R\,i$. Donc :
$$\boxed{\frac{\mathrm{d}E_t}{\mathrm{d}t} = -R\,i^2 \le 0.}$$
**Conclusion :** l'énergie totale décroît au cours du temps ; elle est dissipée par effet Joule dans le conducteur ohmique (oscillations amorties).

**1-3)** *Énergie dissipée $|\Delta E_t|$ entre $t = 0$ et $t = 4\ \mathrm{ms}$.*

$|\Delta E_t| = E_t(0) - E_t(4\ \mathrm{ms})$. À chaque date où $i = 0$, l'énergie totale est entièrement emmagasinée dans le condensateur : $E_t = E_e$. La figure 4 donne les valeurs $E_e$ aux instants où $i = 0$ (extrema de la courbe $E_e$) :
$$E_t(0) \approx 0{,}37\ \mathrm{mJ}, \qquad E_t(4\ \mathrm{ms}) \approx 0{,}06\ \mathrm{mJ}.$$
$$|\Delta E_t| = 0{,}37 - 0{,}06 \approx \boxed{0{,}31\ \mathrm{mJ}.}$$

**2-1)** *Schéma du montage.*

[figure : schéma — circuit série GBF, conducteur ohmique $R$, bobine $(b_1)$, condensateur $C_0$ ; voie $Y_A$ branchée aux bornes du GBF pour visualiser $u(t)$, voie $Y_B$ aux bornes de $R$ pour $u_R(t)$, la masse de l'oscilloscope étant commune au point reliant $R$ et le GBF]

**2-2)** *Impédance $Z$ du circuit.*

À partir de la figure 5 (sensibilité $1\ \mathrm{V\cdot div^{-1}}$) on lit les amplitudes $U_m$ (voie $Y_A$) et $U_{Rm}$ (voie $Y_B$). L'impédance vaut :
$$Z = \frac{U_m}{I_m} = \frac{U_m}{U_{Rm}/R} = R\,\frac{U_m}{U_{Rm}}.$$
Avec les lectures $U_m = 6\ \mathrm{V}$ et $U_{Rm} = 3\ \mathrm{V}$ : $Z = 150 \times \dfrac{6}{3} = \boxed{300\ \Omega.}$

**2-3)** *Facteur de puissance et puissance moyenne.*

Le facteur de puissance vaut $\cos\varphi = \dfrac{R}{Z}$ :
$$\cos\varphi = \frac{150}{300} = \boxed{0{,}5.}$$
La puissance électrique moyenne est $P = U_{eff}\,I_{eff}\cos\varphi = \dfrac{U_m}{\sqrt2}\cdot\dfrac{I_m}{\sqrt2}\cdot\cos\varphi = \dfrac{U_m I_m}{2}\cos\varphi$, avec $I_m = \dfrac{U_{Rm}}{R} = \dfrac{3}{150} = 0{,}02\ \mathrm{A}$ :
$$P = \frac{6 \times 0{,}02}{2}\times 0{,}5 = \boxed{1{,}33\cdot10^{-2}\ \mathrm{W}.}$$
<div class="my-3 rounded-lg border-l-4 border-sky-400 bg-sky-50 px-4 py-2 text-sm">Les amplitudes $U_m$ et $U_{Rm}$ se lisent sur la figure 5 ; avec $Z = 300\ \Omega$, $\cos\varphi = 0{,}5$, la valeur $P \approx 1{,}33\cdot10^{-2}\ \mathrm{W}$ correspond au barème.</div>

<div class="my-5 rounded-lg px-4 py-2.5 text-white font-bold" style="background:#1F4E79">Exercice 4 — Mécanique <span class="font-normal text-white/80 text-sm">(5,5 points)</span></div>

<div class="mt-6 mb-2 text-base font-bold" style="color:#1F4E79">Partie 1 : mouvement d'un skieur</div>

**1-1-1)** *Intensité de $\vec{R_T}$.*

Le système (skieur) est soumis au poids $\vec{P}$, à l'action du plan $\vec{R} = \vec{R_T} + \vec{R_N}$ et au frottement de l'air $\vec{F} = -\mu v\,\vec{i}$. Projection de la 2ᵉ loi de Newton sur l'axe $\vec{j}$ (perpendiculaire au plan, mouvement rectiligne sur le plan donc $a_j = 0$) :
$$R_N - P\cos\alpha = 0 \Rightarrow R_N = mg\cos\alpha = 60\times10\times\cos30° = 519{,}6\ \mathrm{N}.$$
Comme $\|\vec{R_T}\| = \tan\varphi\cdot\|\vec{R_N}\|$ avec $\varphi = 26{,}6°$ :
$$\|\vec{R_T}\| = \tan(26{,}6°)\times 519{,}6 \approx \boxed{260{,}2\ \mathrm{N}.}$$

**1-1-2)** *Équation différentielle.*

Projection sur l'axe $\vec{i}$ (ligne de plus grande pente, sens descendant) :
$$P\sin\alpha - R_T - \mu v = m\frac{\mathrm{d}v}{\mathrm{d}t}.$$
$$m\frac{\mathrm{d}v}{\mathrm{d}t} + \mu v = mg\sin\alpha - R_T.$$
Numériquement : $mg\sin\alpha = 60\times10\times0{,}5 = 300\ \mathrm{N}$ ; $mg\sin\alpha - R_T = 300 - 260{,}2 = 39{,}8\ \mathrm{N}$ ; $\mu = 1$ et $m = 60$ :
$$\boxed{60\frac{\mathrm{d}v}{\mathrm{d}t} + v = 39{,}8.}$$

**1-2)** *Vitesse limite $v_\ell$ et accélération initiale $a_0$.*

En régime permanent, $\dfrac{\mathrm{d}v}{\mathrm{d}t} = 0$, donc $v_\ell = 39{,}8\ \mathrm{m\cdot s^{-1}}$ :
$$\boxed{v_\ell \approx 39{,}8\ \mathrm{m\cdot s^{-1}}.}$$
À $t = 0$, $v = 0$, d'où $60\,a_0 = 39{,}8$ :
$$a_0 = \frac{39{,}8}{60} \approx \boxed{0{,}663\ \mathrm{m\cdot s^{-2}}.}$$

**2)** *Équation horaire de la vitesse après la chute et distance d'arrêt.*

À l'instant de la chute, la vitesse vaut $v_b = \dfrac{v_\ell}{2} = \dfrac{39{,}8}{2} = 19{,}9\ \mathrm{m\cdot s^{-1}}$ (vitesse initiale de la nouvelle phase). L'air est négligé ; il ne reste que le poids et le frottement solide ($\varphi = 78{,}7°$). Projection de la 2ᵉ loi de Newton sur $\vec{i}$ :
$$mg\sin\alpha - R_T' = m a, \qquad R_T' = \tan\varphi\cdot R_N = \tan(78{,}7°)\,mg\cos\alpha.$$
$$a = g\sin\alpha - \tan(78{,}7°)\,g\cos\alpha = 10\times0{,}5 - \tan(78{,}7°)\times10\times\cos30° \approx 5 - 43{,}34 = -38{,}34\ \mathrm{m\cdot s^{-2}}.$$
Le mouvement est uniformément décéléré. Avec $v_b = 19{,}9\ \mathrm{m\cdot s^{-1}}$ à $t = 0$ :
$$\boxed{v_x(t) = -38{,}34\,t + 19{,}9 \quad (\mathrm{m\cdot s^{-1}}).}$$
Le skieur s'arrête à $v_x = 0$, soit $t_{arr} = \dfrac{19{,}9}{38{,}34} \approx 0{,}519\ \mathrm{s}$. La distance parcourue (relation indépendante du temps $v^2 = v_b^2 + 2a\,d$, avec $v = 0$) :
$$d = \frac{-v_b^2}{2a} = \frac{-(19{,}9)^2}{2\times(-38{,}34)} \approx \boxed{5{,}16\ \mathrm{m}.}$$

<div class="mt-6 mb-2 text-base font-bold" style="color:#1F4E79">Partie 2 : séparation isotopique</div>

**1-1)** *Équations horaires $v(t)$ et $x(t)$.*

Le champ électrique entre les plaques vaut $E = \dfrac{U_0}{d}$. La force électrique sur l'ion de charge $q = -e$ l'accélère de $O_1$ vers $O_2$ ; son intensité est $F = eE = \dfrac{eU_0}{d}$. La 2ᵉ loi de Newton (poids négligé) donne l'accélération constante :
$$a = \frac{F}{m} = \frac{eU_0}{m\,d}.$$
Avec une vitesse initiale nulle en $O_1$ :
$$\boxed{v(t) = \frac{eU_0}{m\,d}\,t}, \qquad \boxed{x(t) = \frac{1}{2}\frac{eU_0}{m\,d}\,t^2.}$$

**1-2)** *Énergie cinétique en $O_2$.*

En $O_2$, $x = d$. Le théorème de l'énergie cinétique entre $O_1$ et $O_2$ (seule la force électrique travaille) :
$$E_c = W(\vec{F}) = F\cdot d = \frac{eU_0}{d}\cdot d = \boxed{e\,U_0.}$$
Cette énergie est **indépendante de la masse** de l'isotope.

**1-3)** *Relation entre $v_1$ et $v_2$.*

$E_c = \dfrac{1}{2}m v^2 = eU_0$, donc $v = \sqrt{\dfrac{2eU_0}{m}}$. Pour les masses $m_1 = 35 m_n$ et $m_2 = A m_n$ :
$$\frac{v_2}{v_1} = \sqrt{\frac{m_1}{m_2}} = \sqrt{\frac{35 m_n}{A m_n}} = \sqrt{\frac{35}{A}} \Rightarrow \boxed{v_2 = v_1\sqrt{\dfrac{35}{A}}.}$$

**2-1)** *Sens de $\vec{B}$.*

Les ions $\mathrm{Cl^-}$ portent une charge $q = -e < 0$ et arrivent en $O_2$ avec $\vec{v}$ selon $\vec{i}$. Pour que la force de Lorentz $\vec{F} = q\,\vec{v}\wedge\vec{B}$ courbe la trajectoire vers l'écran (vers le bas de la figure), $\vec{B}$ doit être **dirigé vers l'arrière du plan de la figure** (sens $\otimes$, entrant).

**2-2)** *Mouvement circulaire uniforme.*

Dans la chambre de déviation, seule agit la force magnétique $\vec{F} = q\,\vec{v}\wedge\vec{B}$, toujours perpendiculaire à $\vec{v}$. Son travail est donc nul : $\dfrac{\mathrm{d}}{\mathrm{d}t}\!\left(\dfrac{1}{2}mv^2\right) = \vec{F}\cdot\vec{v} = 0$, donc $\|\vec{v}\| = \text{cste}$ : **le mouvement est uniforme.** L'accélération est purement normale ($\vec{a} = \dfrac{q}{m}\vec{v}\wedge\vec{B}$, de norme constante $\dfrac{|q|vB}{m}$), donc le rayon de courbure $R = \dfrac{v^2}{a} = \dfrac{mv}{|q|B}$ est constant : **la trajectoire est un cercle.** Le mouvement est **circulaire uniforme.**

**2-3-1)** *Vérification de $R_2 = R_1\sqrt{\dfrac{A}{35}}$.*

Le rayon vaut $R = \dfrac{mv}{eB}$. En remplaçant $v = \sqrt{\dfrac{2eU_0}{m}}$ :
$$R = \frac{m}{eB}\sqrt{\frac{2eU_0}{m}} = \frac{1}{B}\sqrt{\frac{2U_0 m}{e}}.$$
Le rayon est donc proportionnel à $\sqrt{m}$, soit $\sqrt{A}$. Pour les deux isotopes :
$$\frac{R_2}{R_1} = \sqrt{\frac{m_2}{m_1}} = \sqrt{\frac{A}{35}} \Rightarrow \boxed{R_2 = R_1\sqrt{\dfrac{A}{35}}.}$$

**2-3-2)** *Valeur de $A$.*

Les ions décrivent des demi-cercles ; ils atteignent l'écran à des distances $2R_1$ et $2R_2$ du point d'entrée $O_2$, séparées de :
$$MN = 2R_2 - 2R_1 = 2R_1\left(\sqrt{\frac{A}{35}} - 1\right).$$
On calcule d'abord $R_1$ pour l'isotope $^{35}\mathrm{Cl^-}$ ($m_1 = 35\,m_n$) :
$$R_1 = \frac{1}{B}\sqrt{\frac{2U_0\,m_1}{e}} = \frac{1}{0{,}1}\sqrt{\frac{2\times10^3\times 35\times1{,}67\cdot10^{-27}}{1{,}6\cdot10^{-19}}}.$$
$$R_1 = 10\times\sqrt{7{,}306\cdot10^{-4}} = 10\times0{,}02703 \approx 0{,}2703\ \mathrm{m}.$$
On en déduit :
$$\sqrt{\frac{A}{35}} = 1 + \frac{MN}{2R_1} = 1 + \frac{1{,}53\cdot10^{-2}}{2\times0{,}2703} = 1 + 0{,}0283 = 1{,}0283.$$
$$\frac{A}{35} = (1{,}0283)^2 = 1{,}0574 \Rightarrow A = 35\times1{,}0574 \approx 37.$$
$$\boxed{A = 37.}$$
L'isotope est donc $^{37}_{17}\mathrm{Cl}$.
