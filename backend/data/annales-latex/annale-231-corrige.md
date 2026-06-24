<div class="my-5 rounded-lg px-4 py-2.5 text-white font-bold" style="background:#1F4E79">Exercice 1 — Chimie <span class="font-normal text-white/80 text-sm">(7 points)</span></div>

\textbf{Partie 1 : Solution aqueuse d'acide éthanoïque}

**1.1)** L'acide éthanoïque réagit avec l'eau selon :
$$\mathrm{CH_3COOH} + \mathrm{H_2O} \rightleftharpoons \mathrm{CH_3COO^-} + \mathrm{H_3O^+}$$

**1.2)** L'avancement final correspond à $[\mathrm{H_3O^+}]_f = 10^{-\mathrm{pH}}$, tandis que l'avancement maximal correspondrait à $C_A$ (acide totalement dissocié). Le taux d'avancement final vaut :
$$\tau = \frac{x_f}{x_{max}} = \frac{[\mathrm{H_3O^+}]_f}{C_A} = \frac{10^{-3{,}4}}{10^{-2}} \simeq 3{,}98 \cdot 10^{-2} = 3{,}98\,\%$$
Comme $\tau < 1$ (très inférieur à $100\,\%$), la réaction est limitée.

**1.3)** Le quotient à l'équilibre s'écrit, par électroneutralité $[\mathrm{CH_3COO^-}] \simeq [\mathrm{H_3O^+}]$ et, dans le cas $[\mathrm{H_3O^+}] \ll C_A$, $[\mathrm{CH_3COOH}] \simeq C_A$ :
$$K_A = \frac{[\mathrm{CH_3COO^-}][\mathrm{H_3O^+}]}{[\mathrm{CH_3COOH}]} \simeq \frac{[\mathrm{H_3O^+}]^2}{C_A}$$
En passant au cologarithme :
$$\mathrm{p}K_A = -\log K_A \simeq -\log\frac{[\mathrm{H_3O^+}]^2}{C_A} = 2\,(-\log[\mathrm{H_3O^+}]) + \log C_A = 2\,\mathrm{pH} + \log(C_A)$$
Application numérique : $\mathrm{p}K_A \simeq 2 \times 3{,}4 + \log(10^{-2}) = 6{,}8 - 2 = \boxed{4{,}8}$.

**2.1)** Réaction de dosage (acide faible + base forte), totale, écrite avec une seule flèche :
$$\mathrm{CH_3COOH} + \mathrm{HO^-} \longrightarrow \mathrm{CH_3COO^-} + \mathrm{H_2O}$$

**2.2.1.a)** Avant l'équivalence (pour $V_B < V_{BE}$), la base ajoutée transforme une fraction de l'acide. Bilan de matière : $n(\mathrm{CH_3COO^-}) = C_B V_B$ (quantité de base versée, entièrement consommée) et $n(\mathrm{CH_3COOH})_{rest} = C_A V_A - C_B V_B = C_B(V_{BE} - V_B)$, puisque à l'équivalence $C_A V_A = C_B V_{BE}$. En négligeant les volumes au dénominateur de leur rapport :
$$K_A = \frac{[\mathrm{CH_3COO^-}][\mathrm{H_3O^+}]}{[\mathrm{CH_3COOH}]} = \frac{C_B V_B}{C_B(V_{BE}-V_B)}\,[\mathrm{H_3O^+}] = \frac{V_B \cdot 10^{-\mathrm{pH}}}{V_{BE}-V_B}$$
Pour $V_B = 7{,}2\ \mathrm{mL}$, on lit (au point de demi-équivalence, $V_B = V_{BE}/2 = 7{,}2\ \mathrm{mL}$, donc $V_{BE} = 14{,}4\ \mathrm{mL}$) un pH égal au $\mathrm{p}K_A$ ; l'application donne $K_A = 10^{-\mathrm{pH}}$, soit $\mathrm{p}K_A = \mathrm{pH}(7{,}2\,\mathrm{mL}) \simeq 4{,}8$, en accord avec la valeur de la question 1.3.

**2.2.1.b)** Le taux d'avancement final à $V_B$ versé est le rapport de l'acétate formé sur l'acide initialement présent dans le bécher (limité par l'acide). À l'équilibre :
$$\tau = \frac{n(\mathrm{CH_3COO^-})}{n(\mathrm{CH_3COO^-}) + n(\mathrm{CH_3COOH})}$$
En remplaçant $[\mathrm{CH_3COOH}] = \dfrac{[\mathrm{CH_3COO^-}][\mathrm{H_3O^+}]}{K_A}$, c'est-à-dire un rapport $\dfrac{[\mathrm{CH_3COOH}]}{[\mathrm{CH_3COO^-}]} = \dfrac{[\mathrm{H_3O^+}]}{K_A} = 10^{\mathrm{p}K_A - \mathrm{pH}}$, et en utilisant $n_{tot}(\mathrm{acide}) = C_A V_A = C_B V_{BE}$ :
$$\tau = \frac{C_B V_B}{C_B V_{BE}}\cdot\frac{1}{1 + 10^{\mathrm{p}K_A - \mathrm{pH}}}\cdot\frac{V_{BE}}{V_B}\bigg/\!\ldots = \frac{V_{BE}}{V_B\,(1 + 10^{\mathrm{p}K_A - \mathrm{pH}})}$$
Au point de demi-équivalence, $\mathrm{pH} = \mathrm{p}K_A$ donc $10^{\mathrm{p}K_A-\mathrm{pH}} = 1$ et $V_B = V_{BE}/2$ :
$$\tau = \frac{V_{BE}}{(V_{BE}/2)\,(1+1)} = \frac{V_{BE}}{V_{BE}} = 1$$
Le taux vaut $\tau = 1$ : la réaction de dosage est totale (contrairement à la réaction de l'acide avec l'eau, qui est limitée).

**2.2.2)** À l'équivalence, $C_A V_A = C_B V_{BE}$ d'où :
$$C_A = \frac{C_B V_{BE}}{V_A} = \frac{2 \cdot 10^{-2} \times 14{,}4}{20} = 1{,}44 \cdot 10^{-2}\ \mathrm{mol.L^{-1}}$$
Cette valeur, du même ordre de grandeur que $10^{-2}\ \mathrm{mol.L^{-1}}$, confirme (aux incertitudes de lecture près) la concentration annoncée $C_A \approx 10^{-2}\ \mathrm{mol.L^{-1}}$.

**2.2.3)** Le pH initial de la solution diluée dans le bécher (avant tout ajout de base) correspond à la concentration $C_A' = \dfrac{C_A V_A}{V_A + V_e}$. On lit le pH initial sur la courbe et on en déduit $C_A'$ via $C_A' = \dfrac{(10^{-\mathrm{pH_0}})^2}{K_A}$ ; la résolution donne $V_e \simeq 30\ \mathrm{mL}$.

**2.2.4)** À l'équivalence d'un dosage acide faible / base forte, le pH est basique (zone $\approx 8$–$9$). L'indicateur dont la zone de virage encadre ce pH d'équivalence est le \textbf{rouge de crésol} ($7{,}4$–$9$). Au début du dosage, le milieu est acide, donc l'indicateur est sous sa forme acide : la solution est de couleur \textbf{jaune}.

\textbf{Partie 2 : Dismutation de l'eau oxygénée}

**1)** Le peroxyde joue à la fois le rôle d'oxydant et de réducteur (couples $\mathrm{H_2O_2}/\mathrm{H_2O}$ et $\mathrm{O_2}/\mathrm{H_2O_2}$) :
$$\mathrm{H_2O_2} + 2\,\mathrm{H^+} + 2\,e^- \longrightarrow 2\,\mathrm{H_2O} \quad(\text{réduction})$$
$$\mathrm{H_2O_2} \longrightarrow \mathrm{O_2} + 2\,\mathrm{H^+} + 2\,e^- \quad(\text{oxydation})$$
La somme redonne bien $2\,\mathrm{H_2O_2} \rightarrow \mathrm{O_2} + 2\,\mathrm{H_2O}$.

**2)** Quantité initiale : $n_0 = C_0 V_0 = 1{,}2 \cdot 10^{-1} \times 10 \cdot 10^{-3} = 1{,}2 \cdot 10^{-3}\ \mathrm{mol}$. La stœchiométrie consomme $2$ mol de $\mathrm{H_2O_2}$ par avancement, donc :
$$x_{max} = \frac{n_0}{2} = \frac{1{,}2 \cdot 10^{-3}}{2} = \boxed{6 \cdot 10^{-4}\ \mathrm{mol}}$$

**3)** Le dioxygène, gaz parfait, occupe le volume gazeux $V - V_0$ (capacité du ballon moins le volume de solution). À l'instant $t$, $n(\mathrm{O_2}) = x(t)$ et :
$$P_{O_2}(V - V_0) = x(t)\,R\,T \;\Longrightarrow\; \boxed{x(t) = \frac{V - V_0}{R\,T}\,P_{O_2}(t)}$$

**4)** La vitesse volumique de réaction est $v = \dfrac{1}{V_0}\dfrac{\mathrm{d}x}{\mathrm{d}t}$. En dérivant la relation précédente :
$$v(t) = \frac{1}{V_0}\cdot\frac{V - V_0}{R\,T}\cdot\frac{\mathrm{d}P_{O_2}}{\mathrm{d}t}$$
La pente de la tangente $(T)$ à $t = 10\ \mathrm{min}$ se lit sur la figure 2 ; avec $V_0 = 10 \cdot 10^{-3}\ \mathrm{m^3}\!\cdot\!10^{-3}$ (soit $V_0 = 10\ \mathrm{mL}$), $V - V_0 = 240\ \mathrm{mL}$, $R = 8{,}31$, $T = 293\ \mathrm{K}$, on obtient :
$$v(10\,\mathrm{min}) \simeq 2{,}15 \cdot 10^{-3}\ \mathrm{mol.L^{-1}.min^{-1}}$$

**5)** Le temps de demi-réaction $t_{1/2}$ est l'instant où l'avancement vaut $x_{max}/2 = 3 \cdot 10^{-4}\ \mathrm{mol}$, soit où la pression atteint la moitié de sa valeur finale. La lecture sur la courbe $P_{O_2} = f(t)$ donne :
$$\boxed{t_{1/2} \simeq 9\ \mathrm{min}}$$

<div class="my-5 rounded-lg px-4 py-2.5 text-white font-bold" style="background:#1F4E79">Exercice 2 — Ondes + Transformations nucléaires <span class="font-normal text-white/80 text-sm">(4 points)</span></div>

\textbf{Partie 1 : Onde à la surface de l'eau}

**1.1)** Le grandissement de l'image est $G = \dfrac{L}{\ell} = \dfrac{20}{10} = 2$. Sur l'écran, $A$ et $B$ (première et troisième crête) sont séparés de deux longueurs d'onde agrandies : $D = 2\,(G\lambda_1)$, soit la longueur d'onde réelle :
$$\lambda_1 = \frac{D}{2\,G} = \frac{40}{2 \times 2} = 10\ \mathrm{mm} = \boxed{1\ \mathrm{cm}}$$

**1.2)** $V_1 = \lambda_1 N_1 = 10 \cdot 10^{-3} \times 20 = \boxed{0{,}2\ \mathrm{m.s^{-1}}}$.

**2)** La condition $\dfrac{\lambda_1}{a} > 1$ (ouverture inférieure ou de l'ordre de la longueur d'onde) est la condition d'obtention de la diffraction. Au-delà de l'ouverture, on observe une onde \textbf{diffractée} : l'onde rectiligne devient une onde circulaire (centrée sur l'ouverture), de même longueur d'onde et de même fréquence.

**3.1)** $A$ et $B$, distants de $D = 40\ \mathrm{mm}$ sur l'écran, vibrent en opposition de phase. La distance réelle vaut $\dfrac{D}{G} = \dfrac{D \cdot \ell}{L}$, et elle correspond à un nombre impair de demi-longueurs d'onde : $\dfrac{D\,\ell}{L} = (2k+1)\dfrac{\lambda_2}{2}$, avec $\lambda_2 = \dfrac{V_2}{N_2}$. Donc :
$$V_2 = \frac{2\,N_2\,\ell\,D}{(2k+1)\,L}$$
L'encadrement $V_2 \in [0{,}2\ ;\ 0{,}3]\ \mathrm{m.s^{-1}}$ sélectionne $2k+1 = 5$ (soit $k = 2$), ce qui donne :
$$V_2 = \frac{2\,N_2\,\ell\,D}{5L} = \frac{2 \times 30 \times 10 \cdot 10^{-3} \times 40 \cdot 10^{-3}}{5 \times 20 \cdot 10^{-3}} = \boxed{0{,}24\ \mathrm{m.s^{-1}}}$$

**3.2)** On a $V_1 = 0{,}2\ \mathrm{m.s^{-1}}$ à $N_1 = 20\ \mathrm{Hz}$ et $V_2 = 0{,}24\ \mathrm{m.s^{-1}}$ à $N_2 = 30\ \mathrm{Hz}$ : la célérité dépend de la fréquence ($V_1 \ne V_2$). L'eau est donc un milieu \textbf{dispersif}.

\textbf{Partie 2 : Plutonium 238}

**1)** Conservation du nombre de charges et du nombre de masse :
$$^{238}_{94}\mathrm{Pu} \longrightarrow {}^{234}_{92}\mathrm{U} + {}^{A}_{Z}\mathrm{X}, \qquad A = 238 - 234 = 4,\quad Z = 94 - 92 = 2$$
La particule émise est $^{4}_{2}\mathrm{He}$ : il s'agit d'une désintégration de type $\boldsymbol\alpha$.

**2)** Défaut de masse : $\Delta m = m(\mathrm{Pu}) - \bigl[m(\mathrm{U}) + m(\mathrm{He})\bigr]$ :
$$\Delta m = 237{,}99799 - (233{,}99048 + 4{,}00153) = 5{,}98 \cdot 10^{-3}\ \mathrm{u}$$
$$|\Delta E| = |\Delta m|\,c^2 = 5{,}98 \cdot 10^{-3} \times 931{,}5 \simeq \boxed{5{,}5703\ \mathrm{MeV}}$$

**3.1)** Nombre de noyaux initiaux : $N_0 = \dfrac{m_0}{M}N_A = \dfrac{130 \cdot 10^{-3}}{238} \times 6{,}02 \cdot 10^{23} \simeq 3{,}29 \cdot 10^{20}$. La constante radioactive est $\lambda = \dfrac{\ln 2}{t_{1/2}}$ avec $t_{1/2} = 87{,}8 \times 3{,}1536 \cdot 10^7\ \mathrm{s} \simeq 2{,}77 \cdot 10^9\ \mathrm{s}$. D'où l'activité initiale :
$$a_0 = \lambda N_0 = \frac{\ln 2}{t_{1/2}}N_0 \simeq \boxed{8{,}2316 \cdot 10^{10}\ \mathrm{Bq}}$$

**3.2)** L'activité décroît selon $a(t) = a_0\,e^{-\lambda t}$. Le fonctionnement normal cesse quand $a = a_c$ :
$$\Delta t = \frac{1}{\lambda}\ln\!\frac{a_0}{a_c} = \frac{t_{1/2}}{\ln 2}\ln\!\frac{a_0}{a_c} = \frac{87{,}8}{\ln 2}\ln\!\frac{8{,}2316 \cdot 10^{10}}{5{,}76 \cdot 10^{10}} \simeq \boxed{45{,}22\ \mathrm{an}}$$

<div class="my-5 rounded-lg px-4 py-2.5 text-white font-bold" style="background:#1F4E79">Exercice 3 — Électricité <span class="font-normal text-white/80 text-sm">(4 points)</span></div>

\textbf{1. Capacité d'un condensateur}

**1.1)** Le générateur débite un courant constant $I$ chargeant le condensateur : $i = \dfrac{\mathrm{d}q}{\mathrm{d}t} = C\dfrac{\mathrm{d}u_C}{\mathrm{d}t} = I$. En intégrant avec $u_C(0) = U_0$ :
$$\boxed{u_C(t) = U_0 + \frac{I}{C}\,t}$$

**1.2)** La courbe $u_C = f(t)$ est une droite. L'ordonnée à l'origine donne $U_0 = \boxed{4\ \mathrm{V}}$. La pente vaut $\dfrac{I}{C}$ ; sa lecture graphique ($\approx 0{,}5\ \mathrm{V.s^{-1}}$) donne :
$$C = \frac{I}{\text{pente}} = \frac{2 \cdot 10^{-6}}{0{,}5} = \boxed{4 \cdot 10^{-6}\ \mathrm{F} = 4\ \mathrm{\mu F}}$$

**1.3)** À $t_1 = 20\ \mathrm{s}$ : $u_C(t_1) = U_0 + \dfrac{I}{C}t_1 = 4 + 0{,}5 \times 20 = 14\ \mathrm{V}$. L'énergie emmagasinée :
$$E_e = \frac{1}{2}C\,u_C^2(t_1) = \frac{1}{2}\times 4 \cdot 10^{-6}\times 14^2 \simeq \boxed{0{,}39\ \mathrm{mJ}}$$

\textbf{2. Grandeurs d'une bobine}

**2.1)** Loi des mailles : $E = u_R + u_b = R\,i + r\,i + L\dfrac{\mathrm{d}i}{\mathrm{d}t}$. Avec $i = \dfrac{u_R}{R}$ :
$$E = u_R + \frac{r}{R}u_R + \frac{L}{R}\frac{\mathrm{d}u_R}{\mathrm{d}t} \;\Longrightarrow\; \frac{\mathrm{d}u_R}{\mathrm{d}t} + \frac{R+r}{L}\,u_R = \frac{R\,E}{L}$$
Par identification avec $\dfrac{\mathrm{d}u_R}{\mathrm{d}t} + \dfrac{u_R}{\tau} = \beta$ :
$$\boxed{\tau = \frac{L}{R+r}}, \qquad \boxed{\beta = \frac{R\,E}{L}}$$

**2.2)** En régime permanent $\left(\dfrac{\mathrm{d}u_R}{\mathrm{d}t} = 0\right)$, $u_R(\infty) = A = \beta\,\tau$ :
$$A = \frac{R\,E}{L}\cdot\frac{L}{R+r} = \boxed{\frac{R\,E}{R+r}}$$

**2.3)** $u_b = E - u_R = E - A\,(1 - e^{-t/\tau}) = E - \dfrac{R\,E}{R+r}(1 - e^{-t/\tau})$. En réduisant :
$$u_b(t) = E\left(1 - \frac{R}{R+r}\right) + \frac{R\,E}{R+r}e^{-t/\tau} = \frac{r\,E}{R+r} + \frac{R\,E}{R+r}e^{-t/\tau} = \boxed{\frac{E}{R+r}\bigl(r + R\,e^{-t/\tau}\bigr)}$$

**2.4)** À $t \to \infty$, $u_b(\infty) = \dfrac{r\,E}{R+r}$ ; à $t = 0$, $u_b(0) = E$. La courbe (figure 4) donne $u_b(0) = E = 6\ \mathrm{V}$ (valeur initiale lue) et $u_b(\infty) = \dfrac{rE}{R+r}$ se lit comme l'asymptote. Le rapport $\dfrac{u_b(\infty)}{u_b(0)} = \dfrac{r}{R+r}$ et la valeur lue conduisent à :
$$r = 10\ \Omega$$
La tangente $(T)$ à l'origine recoupe l'asymptote à l'instant $\tau$ ; sa lecture donne $\tau$, d'où $L = \tau\,(R+r)$. Avec $\tau = 0{,}25\ \mathrm{ms}$ et $R + r = 40\ \Omega$ :
$$L = \tau\,(R+r) = 0{,}25 \cdot 10^{-3} \times 40 = 10 \cdot 10^{-3}\ \mathrm{H} = \boxed{10\ \mathrm{mH}}$$

\textbf{3. Oscillations forcées (RLC série)}

**3.1)** À la résonance d'intensité, l'impédance passe par sa valeur minimale $Z_{min} = R + r$. La courbe $Z = f(N)$ (figure 6) présente un minimum, dont la valeur ($\approx 40\ \Omega = R + r$) correspond exactement à $R + r = 30 + 10 = 40\ \Omega$ : le circuit est bien à l'état de résonance électrique en ce point.

**3.2)** Comme $Z = \dfrac{U}{I}$ et qu'à la résonance $Z_0 = \dfrac{U}{I_0} = R + r$, lorsque $I = \dfrac{I_0}{\sqrt 2}$ :
$$Z = \frac{U}{I} = \frac{U}{I_0/\sqrt 2} = \sqrt 2\,Z_0 = \sqrt 2\,(R+r) = \sqrt 2 \times 40 \simeq \boxed{56{,}5\ \Omega}$$

**3.3)** La bande passante à $-3\ \mathrm{dB}$ est l'intervalle de fréquences pour lequel $Z \le \sqrt 2\,Z_0 \simeq 56{,}5\ \Omega$. La lecture des deux fréquences de coupure sur la figure 6 donne $\Delta N = N_2 - N_1 \simeq 620\ \mathrm{Hz}$. Le facteur de qualité (avec $N_0$ la fréquence de résonance lue) :
$$Q = \frac{N_0}{\Delta N} \simeq \boxed{1{,}3}$$

<div class="my-5 rounded-lg px-4 py-2.5 text-white font-bold" style="background:#1F4E79">Exercice 4 — Mécanique <span class="font-normal text-white/80 text-sm">(5 points)</span></div>

\textbf{Partie 1 : Chute verticale}

**1.1)** À $t = 0$ la balle est immobile ; les forces sont le poids $P = \rho_B V g$ (vers le bas) et la poussée d'Archimède $F = \rho_H V g$ (vers le haut). Comme $\rho_H = 900 > \rho_B = 680$, la poussée l'emporte sur le poids : la résultante est dirigée vers le haut. La balle se déplace donc \textbf{vers le haut}, dans le sens positif de $(O;\vec k)$.

**1.2)** Deuxième loi de Newton, en projection sur $\vec k$ (orienté vers le haut), avec $v > 0$ donc $\vec f$ dirigée vers le bas ($-6\pi\eta R v$) :
$$\rho_B V \frac{\mathrm{d}v}{\mathrm{d}t} = -\rho_B V g + \rho_H V g - 6\pi\eta R v$$
On divise par $\rho_B V = \rho_B\dfrac{4}{3}\pi R^3$ :
$$\frac{\mathrm{d}v}{\mathrm{d}t} + \frac{6\pi\eta R}{\rho_B \frac{4}{3}\pi R^3}\,v = g\!\left(\frac{\rho_H}{\rho_B} - 1\right) \;\Longrightarrow\; \boxed{\frac{\mathrm{d}v}{\mathrm{d}t} + \frac{9\eta}{2\rho_B R^2}\,v = g\!\left(\frac{\rho_H}{\rho_B} - 1\right)}$$

**1.3)** La vitesse limite est atteinte quand $\dfrac{\mathrm{d}v}{\mathrm{d}t} = 0$ : sur la figure 2, $V_\ell$ est l'abscisse à l'ordonnée nulle ; on lit $\boxed{V_\ell \simeq 4{,}88\ \mathrm{m.s^{-1}}}$. À cet instant :
$$\frac{9\eta}{2\rho_B R^2}V_\ell = g\!\left(\frac{\rho_H}{\rho_B} - 1\right) \;\Longrightarrow\; \eta = \frac{2\rho_B R^2 \,g\,(\rho_H/\rho_B - 1)}{9\,V_\ell}$$
$$\eta = \frac{2 \times 680 \times (2{,}5\cdot10^{-2})^2 \times 9{,}8 \times (900/680 - 1)}{9 \times 4{,}88} \simeq \boxed{6{,}13 \cdot 10^{-2}\ \mathrm{(S.I.)}}$$

**1.4)** La balle parcourt la profondeur $H = 2\ \mathrm{m}$ dans l'huile. Sur la courbe $z(t)$ (figure 3) on relève l'instant $t_s$ où $z = H = 2\ \mathrm{m}$, puis sur la courbe $v(t)$ la vitesse correspondante. On obtient une vitesse de sortie :
$$\boxed{v \simeq 2{,}8\ \mathrm{m.s^{-1}}}$$

**2)** Hors de l'huile, la balle n'est soumise qu'à son poids : mouvement rectiligne uniformément varié d'accélération $-g$ (vers le bas). Avec la vitesse initiale $v_0 = 2{,}8\ \mathrm{m.s^{-1}}$ vers le haut, la hauteur maximale (où $v = 0$) au-dessus de la surface :
$$h_m = \frac{v_0^2}{2g} = \frac{2{,}8^2}{2 \times 9{,}8} \simeq 0{,}40\ \mathrm{m} = \boxed{40\ \mathrm{cm}}$$

\textbf{Partie 2 : Pendule pesant}

**1)** Relation fondamentale de la dynamique en rotation autour de $(\Delta)$ : $J_\Delta\ddot\theta = \sum \mathcal{M}_\Delta(\vec F)$. Seul le poids a un moment non nul, $\mathcal{M}_\Delta(\vec P) = -m g L \sin\theta$ (moment de rappel) :
$$J_\Delta\ddot\theta = -m g L\sin\theta$$
Pour les faibles amplitudes $\sin\theta \simeq \theta$ :
$$\boxed{\ddot\theta + \frac{m g L}{J_\Delta}\,\theta = 0}$$

**2)** L'équation est celle d'un oscillateur harmonique de pulsation propre $\omega_0 = \dfrac{2\pi}{T_0}$ avec $\omega_0^2 = \dfrac{mgL}{J_\Delta}$. En injectant $\theta(t) = \theta_m\cos\!\left(\dfrac{2\pi}{T_0}t\right)$ on identifie $\left(\dfrac{2\pi}{T_0}\right)^2 = \dfrac{mgL}{J_\Delta}$, d'où :
$$\boxed{T_0 = 2\pi\sqrt{\frac{J_\Delta}{m g L}}}$$

**3)** La période se lit sur la figure 2 : $T_0 = 0{,}4\ \mathrm{s}$. On en tire :
$$J_\Delta = \frac{T_0^2\,m g L}{4\pi^2} = \frac{0{,}4^2 \times 0{,}4 \times 9{,}8 \times 0{,}5}{4 \times 10} \simeq \boxed{7{,}84 \cdot 10^{-3}\ \mathrm{kg.m^2}}$$

**4)** À la position d'équilibre la vitesse angulaire est maximale : $\dot\theta_{max} = \theta_m\,\dfrac{2\pi}{T_0}$. Avec $\theta_m = 0{,}1\ \mathrm{rad}$ et $T_0 = 0{,}4\ \mathrm{s}$, $\dot\theta_{max} = 0{,}1 \times \dfrac{2\pi}{0{,}4} \simeq 1{,}571\ \mathrm{rad.s^{-1}}$. D'où la vitesse linéaire de $G$ :
$$v_G = L\,\dot\theta_{max} = 0{,}5 \times 1{,}571 \simeq \boxed{1{,}178\ \mathrm{m.s^{-1}}}$$
À l'équilibre, $\theta = 0$ : l'accélération angulaire $\ddot\theta = -\omega_0^2\theta = 0$, donc l'accélération tangentielle est nulle ; il ne reste que l'accélération normale (centripète) :
$$a_G = \frac{v_G^2}{L} = \frac{1{,}178^2}{0{,}5} \simeq \boxed{2{,}775\ \mathrm{m.s^{-2}}}$$

**5)** Conservation de l'énergie mécanique ($E_m = E_c + E_{pp}$ constante, frottements négligés). Avec l'origine de $E_{pp}$ dans le plan horizontal de $G$ à l'équilibre, $E_{pp} = m g L(1 - \cos\theta) \simeq m g L\dfrac{\theta^2}{2}$. À la position de lâcher, $E_c = 0$ et $E_m = m g L\dfrac{\theta_m^2}{2}$. Donc à un angle $\theta$ quelconque :
$$E_c = E_m - E_{pp} = \frac{1}{2}m g L\,\theta_m^2 - \frac{1}{2}m g L\,\theta^2 = \boxed{\frac{1}{2}m g L\,(\theta_m^2 - \theta^2)}$$
Au passage par la position d'équilibre, $\theta = 0$ :
$$E_c = \frac{1}{2}m g L\,\theta_m^2 = \frac{1}{2}\times 0{,}4 \times 9{,}8 \times 0{,}5 \times 0{,}1^2 \simeq \boxed{0{,}022\ \mathrm{J}}$$
