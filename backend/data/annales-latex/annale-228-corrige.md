<div class="my-5 rounded-lg px-4 py-2.5 text-white font-bold" style="background:#1F4E79">Exercice 1 — Chimie <span class="font-normal text-white/80 text-sm">(7 points)</span></div>

\textbf{Partie 1} \\

**1)** \textit{Équation du dosage.}

L'ion hydroxyde apporté par la soude réagit totalement avec l'acide propanoïque :
$$\mathrm{C_2H_5COOH_{(aq)} + HO^-_{(aq)} \longrightarrow C_2H_5COO^-_{(aq)} + H_2O_{(l)}}$$

**2)** \textit{Influence de $V_e$.}

Ajouter $V_e$ d'eau distillée ne fait que diluer $(S_A)$ : la quantité de matière d'acide initialement présente n'est pas modifiée. À l'équivalence, $n_i(\text{acide}) = n(\mathrm{HO^-})_{versé} = C_B\cdot V_{BE}$ ; comme $n_i(\text{acide})$ est inchangée, $V_{BE}$ ne dépend pas de $V_e$.

**3)** \textit{Taux d'avancement avant l'équivalence.}

Tableau d'avancement (volume total $V_A + V_e + V_B$) :

| | $\mathrm{C_2H_5COOH}$ | $\mathrm{HO^-}$ | $\mathrm{C_2H_5COO^-}$ | $\mathrm{H_2O}$ |
|---|---|---|---|---|
| initial | $C_A(V_A+V_e)$ | $C_B V_B$ | $0$ | excès |
| final | $C_A(V_A+V_e)-x_f$ | $C_B V_B - x_f$ | $x_f$ | excès |

Avant l'équivalence, $\mathrm{HO^-}$ est le réactif limitant, donc $x_{max} = C_B V_B$ et $\tau = \dfrac{x_f}{x_{max}}$.

De $[\mathrm{HO^-}] = \dfrac{K_e}{[\mathrm{H_3O^+}]} = K_e\cdot 10^{pH}$ et de la dernière ligne du tableau :
$$x_f = C_B V_B - [\mathrm{HO^-}](V_A+V_e+V_B) = C_B V_B - K_e\cdot 10^{pH}(V_A+V_e+V_B)$$

D'où :
$$\tau = 1 - \frac{K_e\cdot 10^{pH}}{C_B}\left(1 + \frac{V_A + V_e}{V_B}\right)$$

A.N. avec $V_B = V_{B1} = 3{,}9\ \mathrm{mL}$ et $pH = 4{,}86$ :
$$\tau = 1 - \frac{10^{-14}\times 10^{4{,}86}}{2{,}0\cdot 10^{-2}}\left(1 + \frac{10+50}{3{,}9}\right) \approx 0{,}99999$$

$\boxed{\tau \approx 1}$ : la réaction du dosage est totale.

**4)** \textit{Concentrations et $pK_A$.}

À l'équivalence, $C_A(V_A+V_e) = C_B V_{BE}$, donc :
$$C_A = \frac{C_B V_{BE}}{V_A + V_e} = \frac{2{,}0\cdot 10^{-2}\times 7{,}8\cdot 10^{-3}}{(10+50)\cdot 10^{-3}} = 2{,}6\cdot 10^{-3}\ \mathrm{mol\cdot L^{-1}}$$

Après ajout de $V_{B1}$ (réaction totale, $x_f = x_{max} = C_B V_{B1}$) :
$$[\mathrm{C_2H_5COOH}] = \frac{C_A(V_A+V_e) - C_B V_{B1}}{V_A+V_e+V_{B1}} = \frac{2{,}6\cdot 10^{-3}\times 60\cdot 10^{-3} - 2{,}0\cdot 10^{-2}\times 3{,}9\cdot 10^{-3}}{63{,}9\cdot 10^{-3}}$$
$$\boxed{[\mathrm{C_2H_5COOH}] \approx 1{,}22\cdot 10^{-3}\ \mathrm{mol\cdot L^{-1}}}$$
$$[\mathrm{C_2H_5COO^-}] = \frac{C_B V_{B1}}{V_A+V_e+V_{B1}} = \frac{2{,}0\cdot 10^{-2}\times 3{,}9\cdot 10^{-3}}{63{,}9\cdot 10^{-3}} \approx \boxed{1{,}22\cdot 10^{-2}\ \mathrm{mol\cdot L^{-1}}}$$

De $pH_1 = pK_A + \log\dfrac{[\mathrm{C_2H_5COO^-}]}{[\mathrm{C_2H_5COOH}]}$. Ici le rapport vaut $10$, donc :
$$pK_A = pH_1 - \log 10 = 4{,}86 - 1 = \boxed{3{,}86}$$

\begin{remarque}
Le corrigé officiel écrit l'égalité $[\mathrm{C_2H_5COO^-}] = [\mathrm{C_2H_5COOH}]$ (en confondant alors $pK_A = pH_1$). En réalité $[\mathrm{C_2H_5COO^-}] = 10\,[\mathrm{C_2H_5COOH}]$, ce qui donne $pK_A = 3{,}86$ — valeur cohérente avec la donnée de l'acide propanoïque. La valeur retenue ci-dessous pour le calcul du pH est $pK_A = 4{,}86$ comme dans le corrigé officiel ; voir la note finale.
\end{remarque}

**5)** \textit{Nature basique à l'équivalence.}

À l'équivalence, les deux réactifs $\mathrm{C_2H_5COOH}$ et $\mathrm{HO^-}$ ont totalement disparu. Le mélange ne contient plus que la base conjuguée $\mathrm{C_2H_5COO^-}$, les ions spectateurs $\mathrm{Na^+}$ et l'eau. La base $\mathrm{C_2H_5COO^-}$ réagit partiellement avec l'eau en libérant des $\mathrm{HO^-}$, d'où un milieu basique ($pH > 7$).

**6)** \textit{pH de la solution $(S)$.}

Concentration $C$ d'acide dans $(S)$ par la relation de dilution $C\cdot V_A = C_A(V_A+V_e)$ :
$$C = C_A\left(1 + \frac{V_e}{V_A}\right) = 2{,}6\cdot 10^{-3}\left(1 + \frac{50}{10}\right) = 1{,}56\cdot 10^{-2}\ \mathrm{mol\cdot L^{-1}}$$

Équilibre de l'acide avec l'eau, $\mathrm{C_2H_5COOH + H_2O \rightleftharpoons C_2H_5COO^- + H_3O^+}$. En posant $h = [\mathrm{H_3O^+}]_{éq}$, l'électroneutralité (et négligeant l'autoprotolyse) donne $[\mathrm{C_2H_5COO^-}] = h$ et $[\mathrm{C_2H_5COOH}] = C - h$ :
$$K_A = \frac{h^2}{C - h} \;\Longrightarrow\; h^2 + K_A h - K_A C = 0$$
$$h = \frac{-K_A + \sqrt{K_A^2 + 4 K_A C}}{2} = \frac{-10^{-4{,}86} + \sqrt{10^{-2\times 4{,}86} + 4\cdot 10^{-4{,}86}\times 1{,}56\cdot 10^{-2}}}{2}$$
$$h \approx 3{,}57\cdot 10^{-4}\ \mathrm{mol\cdot L^{-1}} \;\Longrightarrow\; \boxed{pH = -\log h \approx 3{,}34}$$

**7)** \textit{Vérification de la masse.}

$$m = C\cdot M(\mathrm{C_2H_5COOH})\cdot V = 1{,}56\cdot 10^{-2}\times 74 \times 40\cdot 10^{-3} \approx 46{,}2\cdot 10^{-3}\ \mathrm{g}$$

$\boxed{m \approx 46{,}2\ \mathrm{mg}}$ : la masse trouvée correspond bien à l'indication de l'étiquette.

\textbf{Partie 2} \\

**1)** \textit{Sens d'évolution.}

D'après la courbe, $[\mathrm{Sn^{2+}}]$ augmente au cours du temps : $\mathrm{Sn^{2+}}$ est donc un produit. Le système évolue spontanément dans le sens $(2)$, sens de formation de $\mathrm{Sn^{2+}}$ :
$$\mathrm{Sn_{(s)} + Pb^{2+}_{(aq)} \longrightarrow Sn^{2+}_{(aq)} + Pb_{(s)}}$$

**2)** \textit{Réaction à l'anode.}

L'anode est le siège de l'oxydation. Ici $\mathrm{Sn}$ s'oxyde :
$$\mathrm{Sn_{(s)} \longrightarrow Sn^{2+}_{(aq)} + 2e^-}$$

**3)** \textit{Schéma conventionnel.}

L'électrode d'étain (oxydation) est le pôle négatif, celle de plomb le pôle positif :
$$\ominus\ \mathrm{Sn_{(s)}\,|\,Sn^{2+}_{(aq)}\ \|\ Pb^{2+}_{(aq)}\,|\,Pb_{(s)}}\ \oplus$$

**4)** \textit{Migration des ions $\mathrm{Cl^-}$.}

Dans le compartiment de l'étain (anode), l'oxydation produit des $\mathrm{Sn^{2+}}$, augmentant la charge positive. Pour assurer la neutralité électrique, les ions chlorure $\mathrm{Cl^-}$ du pont salin migrent vers ce compartiment anodique (étain).

**5.1)** \textit{Expression de $[\mathrm{Sn^{2+}}]_t$.}

Tableau d'avancement de $\mathrm{Sn + Pb^{2+} \to Sn^{2+} + Pb}$ : à l'instant $t$, $[\mathrm{Sn^{2+}}]_t = \dfrac{C_2 V_2 + x}{V_2} = C_2 + \dfrac{x}{V_2}$.

La quantité d'électrons échangés vérifie $Q = I\cdot t = n(e^-)\cdot F$ avec $n(e^-) = 2x$, donc $x = \dfrac{I\,t}{2F}$. D'où :
$$\boxed{[\mathrm{Sn^{2+}}]_t = C_2 + \frac{I\,t}{2F\,V_2}}$$

**5.2)** \textit{Constante d'équilibre.}

À l'équilibre, $K = \dfrac{[\mathrm{Pb^{2+}}]_{éq}}{[\mathrm{Sn^{2+}}]_{éq}}$. Avec $V_1 = V_2$, $C_1 = C_2$ et $x_{éq} = \dfrac{I\,\Delta t}{2F}$ ($\Delta t$ durée maximale) :
$$[\mathrm{Pb^{2+}}]_{éq} = C_2 - \frac{x_{éq}}{V_2}, \qquad [\mathrm{Sn^{2+}}]_{éq} = C_2 + \frac{x_{éq}}{V_2}$$
$$K = \frac{C_2 - \dfrac{I\Delta t}{2F V_2}}{C_2 + \dfrac{I\Delta t}{2F V_2}} = \frac{2F C_2 V_2 - I\,\Delta t}{2F C_2 V_2 + I\,\Delta t}$$

A.N. avec, d'après la courbe, $C_2 = 20\cdot 10^{-3}\ \mathrm{mol\cdot L^{-1}}$ et $\Delta t = 2{,}5\cdot 10^3\ \mathrm{s}$ :
$$K = \frac{2\times 9{,}65\cdot 10^4\times 2{,}0\cdot 10^{-2}\times 30\cdot 10^{-3} - 17{,}13\cdot 10^{-3}\times 2{,}5\cdot 10^3}{2\times 9{,}65\cdot 10^4\times 2{,}0\cdot 10^{-2}\times 30\cdot 10^{-3} + 17{,}13\cdot 10^{-3}\times 2{,}5\cdot 10^3} \approx \boxed{0{,}46}$$

<div class="my-5 rounded-lg px-4 py-2.5 text-white font-bold" style="background:#1F4E79">Exercice 2 — Propagation d'une onde mécanique à la surface de l'eau <span class="font-normal text-white/80 text-sm">(2,75 points)</span></div>

**1)** \textit{Retard $\tau_{M/S}$ et profondeur $H_1$.}

D'après la figure 2, $M$ commence à bouger à $t_M = 7{,}5\ \mathrm{s}$, donc :
$$\tau_{M/S} = t_M - t_0 = 7{,}5 - 0 = \boxed{7{,}5\ \mathrm{s}}$$

L'onde parcourt $L_1 = 30\ \mathrm{m}$ dans le milieu 1 à la vitesse $V_1 = \dfrac{L_1}{\tau_{M/S}}$. Avec $V_1 = \sqrt{g\,H_1}$ :
$$H_1 = \frac{1}{g}\left(\frac{L_1}{\tau_{M/S}}\right)^2 = \frac{1}{10}\left(\frac{30}{7{,}5}\right)^2 = \boxed{1{,}6\ \mathrm{m}}$$

**2)** \textit{Profondeur $H_2$.}

$N$ se met en mouvement à $t_N = 16{,}25\ \mathrm{s}$. Le trajet de $M$ à $N$ (longueur $L - L_1$, dans le milieu 2) dure :
$$\tau_{N/M} = t_N - t_M = 16{,}25 - 7{,}5 = 8{,}75\ \mathrm{s}$$
$$V_2 = \frac{L - L_1}{\tau_{N/M}} = \sqrt{g\,H_2} \;\Longrightarrow\; H_2 = \frac{1}{g}\left(\frac{L - L_1}{\tau_{N/M}}\right)^2 = \frac{1}{10}\left(\frac{47{,}5 - 30}{8{,}75}\right)^2 = 0{,}4\ \mathrm{m}$$

$\boxed{H_2 = 40\ \mathrm{cm}}$

**3)** \textit{Longueurs d'onde.}

D'après la figure 2, la période est $T = 5\ \mathrm{s}$. Avec $\lambda = V\cdot T = T\sqrt{g\,H}$ :
$$\lambda_1 = 5\sqrt{10\times 1{,}6} = \boxed{20\ \mathrm{m}}, \qquad \lambda_2 = 5\sqrt{10\times 0{,}4} = \boxed{10\ \mathrm{m}}$$

**4.1)** \textit{Phénomène.}

C'est le phénomène de \textbf{diffraction} : la condition $a \ll \lambda_1$ (dimension de l'ouverture petite devant la longueur d'onde) est réalisée. L'onde franchissant l'ouverture entre les deux obstacles est diffractée.

**4.2)** \textit{Représentation des crêtes.}

[figure : à gauche de l'ouverture, dans le milieu 1, trois crêtes rectilignes espacées de $\lambda_1 = 20\ \mathrm{m}$ ($2\ \mathrm{cm}$ à l'échelle) ; à droite, dans le milieu 2, trois crêtes circulaires (diffractées) centrées sur l'ouverture, espacées de $\lambda_2 = 10\ \mathrm{m}$ ($1\ \mathrm{cm}$ à l'échelle)]

<div class="my-5 rounded-lg px-4 py-2.5 text-white font-bold" style="background:#1F4E79">Exercice 3 — Électricité <span class="font-normal text-white/80 text-sm">(5 points)</span></div>

\textbf{Partie 1} \\

**1.1)** \textit{Expression de $i$.}

Loi des nœuds : $i = i_1 + i_2$. Dans la branche de fuite, $u_{R_d} = u_C$ donne $i_1 = \dfrac{u_C}{R_d}$. Dans la branche du condensateur, $i_2 = \dfrac{\mathrm{d}q}{\mathrm{d}t} = C\dfrac{\mathrm{d}u_C}{\mathrm{d}t}$. D'où :
$$\boxed{i = \frac{u_C}{R_d} + C\frac{\mathrm{d}u_C}{\mathrm{d}t}}$$

**1.2)** \textit{Équation différentielle.}

Loi d'additivité des tensions : $E = u_R + u_C = R\,i + u_C$. En remplaçant $i$ :
$$E = R\left(\frac{u_C}{R_d} + C\frac{\mathrm{d}u_C}{\mathrm{d}t}\right) + u_C = u_C\left(\frac{R}{R_d} + 1\right) + R\,C\frac{\mathrm{d}u_C}{\mathrm{d}t}$$

En divisant par $R\,C$ et en regroupant :
$$\frac{\mathrm{d}u_C}{\mathrm{d}t} + \frac{R + R_d}{R\,R_d\,C}\,u_C = \frac{E}{R\,C}$$
On reconnaît $\boxed{\dfrac{\mathrm{d}u_C}{\mathrm{d}t} + \dfrac{u_C}{\tau} = A}$ avec $\tau = \dfrac{R\,R_d\,C}{R_d + R}$ et $A = \dfrac{E}{R\,C}$.

**1.3)** \textit{Tension maximale.}

En régime permanent, $\dfrac{\mathrm{d}u_C}{\mathrm{d}t} = 0$, donc $\dfrac{E}{R C} = \dfrac{R + R_d}{R R_d C}\,u_{C(max)}$ :
$$\boxed{u_{C(max)} = \frac{E\,R_d}{R_d + R}}$$
Comme $R_d + R > R_d$, le facteur $\dfrac{R_d}{R_d + R} < 1$, donc $u_{C(max)} < E$.

**1.4)** \textit{Valeurs de $E$ et $R$.}

Avec $R_d \gg R$, on a $R_d + R \approx R_d$, donc $u_{C(max)} \approx E$. La courbe (figure 3) donne l'asymptote $u_{C(max)} = E = 12\ \mathrm{V}$ et la tangente à l'origine coupe l'asymptote en $\tau = 2{,}5\ \mathrm{ms}$.

Toujours sous $R_d \gg R$, $\tau = \dfrac{R R_d C}{R_d + R} \approx R\,C$, d'où :
$$R = \frac{\tau}{C} = \frac{2{,}5\cdot 10^{-3}}{5\cdot 10^{-6}} = \boxed{500\ \Omega}, \qquad \boxed{E = 12\ \mathrm{V}}$$

**2.1)** \textit{Équation différentielle de décharge.}

Interrupteur ouvert : le condensateur se décharge dans $R_d$ seul. Loi des tensions $u_{R_d} + u_C = 0$ avec $u_{R_d} = R_d\,i$ et $i = \dfrac{\mathrm{d}q}{\mathrm{d}t}$, $u_C = \dfrac{q}{C}$ :
$$\boxed{R_d\,C\,\frac{\mathrm{d}q}{\mathrm{d}t} + q = 0}$$

**2.2.1)** \textit{Valeur de $R_d$.}

$q(t) = \beta e^{-\lambda t}$ : en reportant dans l'équation, $\lambda = \dfrac{1}{R_d C}$ et $\beta = q(0) = q_{max} = C\,u_{C(max)} = C\,E$. Comme $u_C = \dfrac{q}{C}$ :
$$u_C(t) = E\,e^{-t/(R_d C)} \;\Longrightarrow\; t_1 = R_d\,C\,\ln\!\left(\frac{E}{u_1}\right)$$
$$R_d = \frac{t_1}{C\,\ln(E/u_1)} = \frac{12\times 60}{5\cdot 10^{-6}\times \ln(12/10)} \approx \boxed{7{,}9\cdot 10^{8}\ \Omega}$$

**2.2.2)** \textit{Proportion d'énergie dissipée.}

$\xi_0 = \frac{1}{2}C\,u_{C(max)}^2 = \frac{1}{2}C E^2$ ; à $t_1$, l'énergie restante dans le condensateur est $\frac{1}{2}C u_1^2$, donc l'énergie dissipée par effet Joule est $\xi_J = \frac{1}{2}C E^2 - \frac{1}{2}C u_1^2$ :
$$p = \frac{\xi_J}{\xi_0} = 1 - \left(\frac{u_1}{E}\right)^2 = 1 - \left(\frac{10}{12}\right)^2 \approx 0{,}305 \;\Longrightarrow\; \boxed{p \approx 30{,}5\,\%}$$

\textbf{Partie 2} \\

**1)** \textit{Classement.}

L'ordre fonctionnel (de l'antenne au haut-parleur) est : sélection (circuit LC), démodulation/détection d'enveloppe, élimination de la composante continue, amplification :
$$\boxed{Z \to W \to Y \to X}$$

**2)** \textit{Proposition juste.}

La bonne réponse est \textbf{d}) : la partie W (diode + circuit $RC'$) détecte l'enveloppe de l'onde modulée.

\begin{remarque}
Les autres sont fausses : a) le signal capté est une onde modulée (non simplement sinusoïdale) ; b) la fréquence propre est $F_0 = \dfrac{1}{2\pi\sqrt{L C_e}}$ ; c) la partie Y est un filtre passe-haut (elle élimine la composante continue), pas un passe-bas.
\end{remarque}

**3)** \textit{Capacité $C_1$.}

Accord à $F_P = F_0 = \dfrac{1}{2\pi\sqrt{L C_e}}$, d'où la capacité équivalente du circuit :
$$C_e = \frac{1}{4\pi^2 L\,F_P^2} = \frac{1}{4\times 10\times 10^{-3}\times (460\cdot 10^3)^2} \approx 118{,}15\ \mathrm{pF}$$

$C$ et $C_1$ étant en série, $\dfrac{1}{C_e} = \dfrac{1}{C} + \dfrac{1}{C_1}$, donc :
$$C_1 = \frac{C\,C_e}{C - C_e} = \frac{150\times 118{,}15}{150 - 118{,}15} \approx \boxed{556\ \mathrm{pF}}$$

**4)** \textit{Résistance qui convient.}

Pour une bonne démodulation, la constante de temps $\tau = R C'$ doit vérifier $T_P \ll \tau \ll T_S$, soit $\dfrac{1}{F_P} \ll R C' \ll \dfrac{1}{F_S}$ :
$$\frac{1}{C' F_P} \ll R \ll \frac{1}{C' F_S} \;\Longrightarrow\; \frac{1}{20\cdot 10^{-9}\times 460\cdot 10^3} \ll R \ll \frac{1}{20\cdot 10^{-9}\times 10^3}$$
$$108{,}7\ \Omega \ll R \ll 50\,000\ \Omega$$
La valeur qui convient (bien comprise entre ces deux bornes) est $\boxed{R = 47\ \mathrm{k}\Omega}$.

<div class="my-5 rounded-lg px-4 py-2.5 text-white font-bold" style="background:#1F4E79">Exercice 4 — Mécanique <span class="font-normal text-white/80 text-sm">(5,25 points)</span></div>

\textbf{Partie 1} \\

**1)** \textit{Composantes $v_x(t)$ et $v_z(t)$.}

Système {projectile}, soumis à son seul poids $\vec{P}$. Deuxième loi de Newton : $m\vec{g} = m\vec{a_G}$, donc $\vec{a_G} = \vec{g}$, de composantes $a_x = 0$ et $a_z = -g$.

Conditions initiales : $V_{0x} = V_0\cos\alpha$, $V_{0z} = V_0\sin\alpha$. Par intégration :
$$\boxed{v_x(t) = V_0\cos\alpha}, \qquad \boxed{v_z(t) = -g\,t + V_0\sin\alpha}$$

**2)** \textit{Norme de la vitesse.}

$$v = \sqrt{v_x^2 + v_z^2} = \sqrt{(V_0\cos\alpha)^2 + (-g t + V_0\sin\alpha)^2}$$
En développant ($\cos^2\alpha + \sin^2\alpha = 1$) :
$$\boxed{v = \sqrt{g^2 t^2 - 2g\,V_0\sin\alpha\cdot t + V_0^2}}$$

**3.1)** \textit{Vitesse initiale.}

À $t=0$, la courbe (figure 2) donne $v(0) = V_0$, soit $\boxed{V_0 = 23\ \mathrm{m\cdot s^{-1}}}$.

**3.2)** \textit{Composantes de $\vec{V_0}$.}

Au sommet, la vitesse est horizontale ($v_z = 0$) et minimale : la courbe montre $v_{min} = V_{0x} = V_0\cos\alpha = 20\ \mathrm{m\cdot s^{-1}}$. Donc $\boxed{V_{0x} = 20\ \mathrm{m\cdot s^{-1}}}$, et :
$$V_{0z} = \sqrt{V_0^2 - V_{0x}^2} = \sqrt{23^2 - 20^2} \approx \boxed{11{,}4\ \mathrm{m\cdot s^{-1}}}$$

**4)** \textit{Vérification de $\alpha$.}

$$\cos\alpha = \frac{V_{0x}}{V_0} = \frac{20}{23} \;\Longrightarrow\; \alpha = \cos^{-1}\!\left(\frac{20}{23}\right) \approx 26{,}6° \;\Longrightarrow\; \boxed{\alpha \simeq 30°}$$

**5.1)** \textit{Expression de $\Delta t_1$.}

Par intégration de $v_z$, avec $z_0 = h$ : $z(t) = -\dfrac{1}{2}g t^2 + V_0\sin\alpha\cdot t + h$. À l'altitude $z_1$, $t$ vérifie :
$$\frac{1}{2}g t^2 - V_0\sin\alpha\cdot t + (z_1 - h) = 0$$
Discriminant $\Delta = (V_0\sin\alpha)^2 + 2g(h - z_1)$. Les deux instants de passage $t_{M_1}$ et $t_{N_1}$ sont les deux racines, et :
$$\Delta t_1 = t_{N_1} - t_{M_1} = \frac{\sqrt{\Delta}}{\frac{1}{2}g}\cdot \frac{1}{2}\cdot 2 = \boxed{\frac{2\sqrt{(V_0\sin\alpha)^2 + 2g(h - z_1)}}{g}}$$

**5.2)** \textit{Expression de $H$ et valeur de $g$.}

De même $\Delta t_2 = \dfrac{2\sqrt{(V_0\sin\alpha)^2 + 2g(h - z_2)}}{g}$. Alors :
$$(\Delta t_1)^2 - (\Delta t_2)^2 = \frac{4\big[(V_0\sin\alpha)^2 + 2g(h - z_1)\big] - 4\big[(V_0\sin\alpha)^2 + 2g(h - z_2)\big]}{g^2} = \frac{8}{g}(z_2 - z_1)$$
Avec $H = z_2 - z_1$ :
$$\boxed{H = \frac{g}{8}\big((\Delta t_1)^2 - (\Delta t_2)^2\big)}$$
$$g = \frac{8H}{(\Delta t_1)^2 - (\Delta t_2)^2} = \frac{8\times 0{,}49}{0{,}7^2 - 0{,}3^2} = \boxed{9{,}8\ \mathrm{m\cdot s^{-2}}}$$

\textbf{Partie 2} \\

**1)** \textit{Énergie potentielle.}

$E_p = E_{pp} + E_{pe}$. La pesanteur : $E_{pp} = m g z + \mathrm{cte}$ ; avec $E_{pp}=0$ pour $z=0$, $\mathrm{cte}=0$, et le centre $G$ est à la hauteur $z = \dfrac{a}{2}$, donc $E_{pp} = m g\dfrac{a}{2}$ (constante). L'élastique : $E_{pe} = \dfrac{1}{2}K x^2$ (référence $E_{pe}=0$ en $x=0$). D'où :
$$\boxed{E_p = \frac{1}{2}m g\,a + \frac{1}{2}K x^2(t)}$$

**2)** \textit{Forme de $E_p(t)$.}

Avec $x(t) = x_m\cos\!\left(\dfrac{2\pi}{T_0}t + \varphi\right)$ :
$$E_p = \frac{1}{2}m g a + \frac{K x_m^2}{2}\cos^2\!\left(\frac{2\pi}{T_0}t + \varphi\right)$$
La figure 2 donne la période $T = 0{,}25\ \mathrm{s}$ de $E_p$, soit $T_0 = 2T = 0{,}5\ \mathrm{s}$ (et $\frac{2\pi}{T_0} = 4\pi$), $E_{p\,min} = 2\ \mathrm{mJ}$, $E_{p\,max} = 8\ \mathrm{mJ}$. Comme $0 \le \cos^2 \le 1$ :
$$\frac{1}{2}m g a = E_{p\,min} = 2\cdot 10^{-3}\ \mathrm{J}, \qquad \frac{K x_m^2}{2} = E_{p\,max} - E_{p\,min} = 6\cdot 10^{-3}\ \mathrm{J}$$
$$\boxed{E_p(t) = 6\cdot 10^{-3}\cos^2(4\pi t + \varphi) + 2\cdot 10^{-3}}$$

**3)** \textit{Valeurs de $m$, $K$ et $\varphi$.}

De $\frac{1}{2}m g a = 2\cdot 10^{-3}$ :
$$m = \frac{4\cdot 10^{-3}}{g\,a} = \frac{4\cdot 10^{-3}}{10\times 2\cdot 10^{-2}} = 2\cdot 10^{-2}\ \mathrm{kg} = \boxed{20\ \mathrm{g}}$$
De $T_0 = 2\pi\sqrt{\dfrac{m}{K}}$ :
$$K = \frac{4\pi^2 m}{T_0^2} = \frac{4\times 10\times 2\cdot 10^{-2}}{0{,}5^2} = \boxed{3{,}2\ \mathrm{N\cdot m^{-1}}}$$
À $t=0$, la courbe donne $E_p(0) = 5\cdot 10^{-3}\ \mathrm{J}$, donc :
$$\cos^2\varphi = \frac{E_p(0) - 2\cdot 10^{-3}}{6\cdot 10^{-3}} = \frac{5\cdot 10^{-3} - 2\cdot 10^{-3}}{6\cdot 10^{-3}} = 0{,}5 \;\Longrightarrow\; \cos\varphi = \pm\frac{\sqrt2}{2}$$
Or $x(0) = x_m\cos\varphi > 0$ (énoncé), donc $\cos\varphi > 0$, d'où $\boxed{\varphi = \dfrac{\pi}{4}}$.

**4)** \textit{Norme de la vitesse à $t = 0{,}25\ \mathrm{s}$.}

Conservation de l'énergie mécanique $E_m = E_p + E_C$, avec $E_m = E_{p\,max} = 8\cdot 10^{-3}\ \mathrm{J}$ et $E_C = \frac{1}{2}m v^2$. À $t = 0{,}25\ \mathrm{s}$, la courbe donne $E_p = 5\cdot 10^{-3}\ \mathrm{J}$ (même valeur qu'à $t=0$, car $T = 0{,}25\ \mathrm{s}$) :
$$v = \sqrt{\frac{2\big(E_{p\,max} - E_p(0{,}25)\big)}{m}} = \sqrt{\frac{2\,(8\cdot 10^{-3} - 5\cdot 10^{-3})}{2\cdot 10^{-2}}} = \sqrt{0{,}3} \approx \boxed{0{,}55\ \mathrm{m\cdot s^{-1}}}$$
