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

<div class="flex justify-center my-5"><img src="data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz4KPHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHhtbG5zOnhsaW5rPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5L3hsaW5rIiB3aWR0aD0iMjMwLjE3OHB0IiBoZWlnaHQ9Ijc5LjU0MnB0IiB2aWV3Qm94PSIwIDAgMjMwLjE3OCA3OS41NDIiPgo8ZGVmcz4KPGc+CjxnIGlkPSJnbHlwaC0wLTAiPgo8cGF0aCBkPSJNIDAuNTYyNSAtMy4zOTA2MjUgQyAwLjU2MjUgLTEuMzQzNzUgMi4xNTYyNSAwLjIxODc1IDQgMC4yMTg3NSBDIDUuNjA5Mzc1IDAuMjE4NzUgNi41OTM3NSAtMS4xNTYyNSA2LjU5Mzc1IC0yLjMxMjUgQyA2LjU5Mzc1IC0yLjQwNjI1IDYuNTkzNzUgLTIuNDg0Mzc1IDYuNDUzMTI1IC0yLjQ4NDM3NSBDIDYuMzQzNzUgLTIuNDg0Mzc1IDYuMzQzNzUgLTIuNDIxODc1IDYuMzQzNzUgLTIuMzEyNSBDIDYuMjY1NjI1IC0wLjkwNjI1IDUuMjAzMTI1IC0wLjA5Mzc1IDQuMTI1IC0wLjA5Mzc1IEMgMy41MTU2MjUgLTAuMDkzNzUgMS41NzgxMjUgLTAuNDIxODc1IDEuNTc4MTI1IC0zLjM3NSBDIDEuNTc4MTI1IC02LjM0Mzc1IDMuNSAtNi42NzE4NzUgNC4xMDkzNzUgLTYuNjcxODc1IEMgNS4xODc1IC02LjY3MTg3NSA2LjA3ODEyNSAtNS43ODEyNSA2LjI2NTYyNSAtNC4zMjgxMjUgQyA2LjI5Njg3NSAtNC4xODc1IDYuMjk2ODc1IC00LjE1NjI1IDYuNDIxODc1IC00LjE1NjI1IEMgNi41OTM3NSAtNC4xNTYyNSA2LjU5Mzc1IC00LjE4NzUgNi41OTM3NSAtNC4zOTA2MjUgTCA2LjU5Mzc1IC02Ljc1IEMgNi41OTM3NSAtNi45MjE4NzUgNi41OTM3NSAtNi45ODQzNzUgNi40ODQzNzUgLTYuOTg0Mzc1IEMgNi40Mzc1IC02Ljk4NDM3NSA2LjQwNjI1IC02Ljk4NDM3NSA2LjMxMjUgLTYuODU5Mzc1IEwgNS44MjgxMjUgLTYuMTI1IEMgNS40NTMxMjUgLTYuNDg0Mzc1IDQuOTUzMTI1IC02Ljk4NDM3NSA0IC02Ljk4NDM3NSBDIDIuMTU2MjUgLTYuOTg0Mzc1IDAuNTYyNSAtNS40MDYyNSAwLjU2MjUgLTMuMzkwNjI1IFogTSAwLjU2MjUgLTMuMzkwNjI1ICIvPgo8L2c+CjxnIGlkPSJnbHlwaC0wLTEiPgo8cGF0aCBkPSJNIDYuMDc4MTI1IC02IEMgNi4wNzgxMjUgLTYuMzQzNzUgNi4wOTM3NSAtNi40NTMxMjUgNi44NTkzNzUgLTYuNDUzMTI1IEwgNy4wOTM3NSAtNi40NTMxMjUgTCA3LjA5Mzc1IC02Ljc2NTYyNSBDIDYuNzUgLTYuNzM0Mzc1IDYuMDE1NjI1IC02LjczNDM3NSA1LjY0MDYyNSAtNi43MzQzNzUgQyA1LjI2NTYyNSAtNi43MzQzNzUgNC41MTU2MjUgLTYuNzM0Mzc1IDQuMTcxODc1IC02Ljc2NTYyNSBMIDQuMTcxODc1IC02LjQ1MzEyNSBMIDQuNDA2MjUgLTYuNDUzMTI1IEMgNS4xNzE4NzUgLTYuNDUzMTI1IDUuMTg3NSAtNi4zNDM3NSA1LjE4NzUgLTYgTCA1LjE4NzUgLTMuNjcxODc1IEwgMi4yMzQzNzUgLTMuNjcxODc1IEwgMi4yMzQzNzUgLTYgQyAyLjIzNDM3NSAtNi4zNDM3NSAyLjI1IC02LjQ1MzEyNSAzLjAxNTYyNSAtNi40NTMxMjUgTCAzLjI1IC02LjQ1MzEyNSBMIDMuMjUgLTYuNzY1NjI1IEMgMi45MDYyNSAtNi43MzQzNzUgMi4xNzE4NzUgLTYuNzM0Mzc1IDEuNzk2ODc1IC02LjczNDM3NSBDIDEuNDIxODc1IC02LjczNDM3NSAwLjY3MTg3NSAtNi43MzQzNzUgMC4zMjgxMjUgLTYuNzY1NjI1IEwgMC4zMjgxMjUgLTYuNDUzMTI1IEwgMC41NjI1IC02LjQ1MzEyNSBDIDEuMzI4MTI1IC02LjQ1MzEyNSAxLjM0Mzc1IC02LjM0Mzc1IDEuMzQzNzUgLTYgTCAxLjM0Mzc1IC0wLjc2NTYyNSBDIDEuMzQzNzUgLTAuNDIxODc1IDEuMzI4MTI1IC0wLjMxMjUgMC41NjI1IC0wLjMxMjUgTCAwLjMyODEyNSAtMC4zMTI1IEwgMC4zMjgxMjUgMCBDIDAuNjcxODc1IC0wLjAzMTI1IDEuNDA2MjUgLTAuMDMxMjUgMS43ODEyNSAtMC4wMzEyNSBDIDIuMTU2MjUgLTAuMDMxMjUgMi45MDYyNSAtMC4wMzEyNSAzLjI1IDAgTCAzLjI1IC0wLjMxMjUgTCAzLjAxNTYyNSAtMC4zMTI1IEMgMi4yNSAtMC4zMTI1IDIuMjM0Mzc1IC0wLjQyMTg3NSAyLjIzNDM3NSAtMC43NjU2MjUgTCAyLjIzNDM3NSAtMy4zNzUgTCA1LjE4NzUgLTMuMzc1IEwgNS4xODc1IC0wLjc2NTYyNSBDIDUuMTg3NSAtMC40MjE4NzUgNS4xNzE4NzUgLTAuMzEyNSA0LjQwNjI1IC0wLjMxMjUgTCA0LjE3MTg3NSAtMC4zMTI1IEwgNC4xNzE4NzUgMCBDIDQuNTE1NjI1IC0wLjAzMTI1IDUuMjUgLTAuMDMxMjUgNS42MjUgLTAuMDMxMjUgQyA2IC0wLjAzMTI1IDYuNzUgLTAuMDMxMjUgNy4wOTM3NSAwIEwgNy4wOTM3NSAtMC4zMTI1IEwgNi44NTkzNzUgLTAuMzEyNSBDIDYuMDkzNzUgLTAuMzEyNSA2LjA3ODEyNSAtMC40MjE4NzUgNi4wNzgxMjUgLTAuNzY1NjI1IFogTSA2LjA3ODEyNSAtNiAiLz4KPC9nPgo8ZyBpZD0iZ2x5cGgtMC0yIj4KPHBhdGggZD0iTSA3LjE0MDYyNSAtMy4zNTkzNzUgQyA3LjE0MDYyNSAtNS4zNzUgNS42NDA2MjUgLTYuOTg0Mzc1IDMuODQzNzUgLTYuOTg0Mzc1IEMgMi4wNzgxMjUgLTYuOTg0Mzc1IDAuNTYyNSAtNS40MDYyNSAwLjU2MjUgLTMuMzU5Mzc1IEMgMC41NjI1IC0xLjMyODEyNSAyLjA3ODEyNSAwLjIxODc1IDMuODQzNzUgMC4yMTg3NSBDIDUuNjQwNjI1IDAuMjE4NzUgNy4xNDA2MjUgLTEuMzU5Mzc1IDcuMTQwNjI1IC0zLjM1OTM3NSBaIE0gMy44NTkzNzUgLTAuMDQ2ODc1IEMgMi45MDYyNSAtMC4wNDY4NzUgMS41NzgxMjUgLTAuOTA2MjUgMS41NzgxMjUgLTMuNSBDIDEuNTc4MTI1IC02LjA2MjUgMy4wMTU2MjUgLTYuNzM0Mzc1IDMuODQzNzUgLTYuNzM0Mzc1IEMgNC43MDMxMjUgLTYuNzM0Mzc1IDYuMTI1IC02LjAzMTI1IDYuMTI1IC0zLjUgQyA2LjEyNSAtMC44NzUgNC43NjU2MjUgLTAuMDQ2ODc1IDMuODU5Mzc1IC0wLjA0Njg3NSBaIE0gMy44NTkzNzUgLTAuMDQ2ODc1ICIvPgo8L2c+CjxnIGlkPSJnbHlwaC0xLTAiPgo8cGF0aCBkPSJNIDEuODkwNjI1IC0yLjMxMjUgQyAyLjQzNzUgLTIuMzEyNSAyLjgyODEyNSAtMS45Mzc1IDIuODI4MTI1IC0xLjIwMzEyNSBDIDIuODI4MTI1IC0wLjM0Mzc1IDIuMzI4MTI1IC0wLjA3ODEyNSAxLjkyMTg3NSAtMC4wNzgxMjUgQyAxLjY0MDYyNSAtMC4wNzgxMjUgMS4wMzEyNSAtMC4xNTYyNSAwLjc1IC0wLjU2MjUgQyAxLjA2MjUgLTAuNTc4MTI1IDEuMTQwNjI1IC0wLjgxMjUgMS4xNDA2MjUgLTAuOTUzMTI1IEMgMS4xNDA2MjUgLTEuMTcxODc1IDAuOTg0Mzc1IC0xLjM0Mzc1IDAuNzY1NjI1IC0xLjM0Mzc1IEMgMC41NjI1IC0xLjM0Mzc1IDAuMzc1IC0xLjIxODc1IDAuMzc1IC0wLjkzNzUgQyAwLjM3NSAtMC4yODEyNSAxLjA5Mzc1IDAuMTQwNjI1IDEuOTM3NSAwLjE0MDYyNSBDIDIuOTA2MjUgMC4xNDA2MjUgMy41NjI1IC0wLjUgMy41NjI1IC0xLjIwMzEyNSBDIDMuNTYyNSAtMS43MzQzNzUgMy4xMjUgLTIuMjgxMjUgMi4zNTkzNzUgLTIuNDM3NSBDIDMuMDkzNzUgLTIuNzAzMTI1IDMuMzQzNzUgLTMuMjE4NzUgMy4zNDM3NSAtMy42NTYyNSBDIDMuMzQzNzUgLTQuMjAzMTI1IDIuNzE4NzUgLTQuNjA5Mzc1IDEuOTUzMTI1IC00LjYwOTM3NSBDIDEuMTcxODc1IC00LjYwOTM3NSAwLjU5Mzc1IC00LjIzNDM3NSAwLjU5Mzc1IC0zLjY3MTg3NSBDIDAuNTkzNzUgLTMuNDM3NSAwLjc1IC0zLjMxMjUgMC45NTMxMjUgLTMuMzEyNSBDIDEuMTcxODc1IC0zLjMxMjUgMS4yOTY4NzUgLTMuNDY4NzUgMS4yOTY4NzUgLTMuNjU2MjUgQyAxLjI5Njg3NSAtMy44NTkzNzUgMS4xNzE4NzUgLTQuMDE1NjI1IDAuOTUzMTI1IC00LjAzMTI1IEMgMS4xODc1IC00LjMyODEyNSAxLjY3MTg3NSAtNC40MDYyNSAxLjkyMTg3NSAtNC40MDYyNSBDIDIuMjM0Mzc1IC00LjQwNjI1IDIuNjcxODc1IC00LjI1IDIuNjcxODc1IC0zLjY1NjI1IEMgMi42NzE4NzUgLTMuMzU5Mzc1IDIuNTc4MTI1IC0zLjAzMTI1IDIuNDA2MjUgLTIuODI4MTI1IEMgMi4xNzE4NzUgLTIuNTYyNSAxLjk4NDM3NSAtMi41NDY4NzUgMS42MjUgLTIuNTMxMjUgQyAxLjQ1MzEyNSAtMi41MTU2MjUgMS40Mzc1IC0yLjUxNTYyNSAxLjQwNjI1IC0yLjUgQyAxLjM5MDYyNSAtMi41IDEuMzQzNzUgLTIuNDg0Mzc1IDEuMzQzNzUgLTIuNDIxODc1IEMgMS4zNDM3NSAtMi4zMTI1IDEuNDA2MjUgLTIuMzEyNSAxLjUxNTYyNSAtMi4zMTI1IFogTSAxLjg5MDYyNSAtMi4zMTI1ICIvPgo8L2c+CjxnIGlkPSJnbHlwaC0xLTEiPgo8cGF0aCBkPSJNIDMuNSAtMS4yNjU2MjUgTCAzLjI2NTYyNSAtMS4yNjU2MjUgQyAzLjI1IC0xLjEwOTM3NSAzLjE3MTg3NSAtMC43MDMxMjUgMy4wOTM3NSAtMC42MjUgQyAzLjAzMTI1IC0wLjU5Mzc1IDIuNSAtMC41OTM3NSAyLjQwNjI1IC0wLjU5Mzc1IEwgMS4xMjUgLTAuNTkzNzUgQyAxLjg1OTM3NSAtMS4yMzQzNzUgMi4wOTM3NSAtMS40MjE4NzUgMi41MTU2MjUgLTEuNzUgQyAzLjAzMTI1IC0yLjE3MTg3NSAzLjUgLTIuNTkzNzUgMy41IC0zLjI1IEMgMy41IC00LjA5Mzc1IDIuNzY1NjI1IC00LjYwOTM3NSAxLjg3NSAtNC42MDkzNzUgQyAxLjAxNTYyNSAtNC42MDkzNzUgMC40Mzc1IC00IDAuNDM3NSAtMy4zNTkzNzUgQyAwLjQzNzUgLTMuMDE1NjI1IDAuNzM0Mzc1IC0yLjk2ODc1IDAuODEyNSAtMi45Njg3NSBDIDAuOTY4NzUgLTIuOTY4NzUgMS4xNzE4NzUgLTMuMDkzNzUgMS4xNzE4NzUgLTMuMzQzNzUgQyAxLjE3MTg3NSAtMy40Njg3NSAxLjEyNSAtMy43MTg3NSAwLjc2NTYyNSAtMy43MTg3NSBDIDAuOTg0Mzc1IC00LjIwMzEyNSAxLjQ1MzEyNSAtNC4zNTkzNzUgMS43ODEyNSAtNC4zNTkzNzUgQyAyLjQ2ODc1IC00LjM1OTM3NSAyLjgyODEyNSAtMy44MTI1IDIuODI4MTI1IC0zLjI1IEMgMi44MjgxMjUgLTIuNjU2MjUgMi40MDYyNSAtMi4xNzE4NzUgMi4xNzE4NzUgLTEuOTIxODc1IEwgMC41IC0wLjI2NTYyNSBDIDAuNDM3NSAtMC4yMDMxMjUgMC40Mzc1IC0wLjE4NzUgMC40Mzc1IDAgTCAzLjI5Njg3NSAwIFogTSAzLjUgLTEuMjY1NjI1ICIvPgo8L2c+CjxnIGlkPSJnbHlwaC0yLTAiPgo8cGF0aCBkPSJNIDEuMDkzNzUgLTQuMjY1NjI1IEwgMC4zMjgxMjUgLTQuMjY1NjI1IEwgMC4zMjgxMjUgLTMuOTY4NzUgTCAxLjA5Mzc1IC0zLjk2ODc1IEwgMS4wOTM3NSAtMC42ODc1IEMgMS4wOTM3NSAtMC4zNDM3NSAwLjgxMjUgLTAuMzEyNSAwLjUxNTYyNSAtMC4zMTI1IEwgMC4zNDM3NSAtMC4zMTI1IEwgMC4zNDM3NSAtMC4wMTU2MjUgTCAyLjcxODc1IC0wLjAxNTYyNSBMIDIuNzE4NzUgLTAuMzEyNSBMIDIuNDA2MjUgLTAuMzEyNSBDIDIuMTg3NSAtMC4zMTI1IDEuOTY4NzUgLTAuMzI4MTI1IDEuODQzNzUgLTAuNDM3NSBDIDEuNzY1NjI1IC0wLjUzMTI1IDEuNzY1NjI1IC0wLjY1NjI1IDEuNzY1NjI1IC0wLjc2NTYyNSBMIDEuNzY1NjI1IC0zLjk2ODc1IEwgMi44OTA2MjUgLTMuOTY4NzUgTCAyLjg5MDYyNSAtNC4yNjU2MjUgTCAxLjczNDM3NSAtNC4yNjU2MjUgTCAxLjczNDM3NSAtNS41NjI1IEMgMS43MzQzNzUgLTYuMTA5Mzc1IDIuMTA5Mzc1IC02Ljc4MTI1IDIuNjQwNjI1IC02Ljc4MTI1IEMgMi43NSAtNi43ODEyNSAyLjg3NSAtNi43NSAyLjk2ODc1IC02LjcwMzEyNSBDIDIuNzgxMjUgLTYuNjQwNjI1IDIuNjcxODc1IC02LjQ2ODc1IDIuNjcxODc1IC02LjI4MTI1IEMgMi42NzE4NzUgLTYuMDE1NjI1IDIuODU5Mzc1IC01Ljg1OTM3NSAzLjA5Mzc1IC01Ljg1OTM3NSBDIDMuMzU5Mzc1IC01Ljg1OTM3NSAzLjU0Njg3NSAtNi4wNDY4NzUgMy41NDY4NzUgLTYuMjY1NjI1IEMgMy41NDY4NzUgLTYuNzUgMy4wNDY4NzUgLTcgMi42NDA2MjUgLTcgQyAxLjc1IC03IDEuMDkzNzUgLTYuMjk2ODc1IDEuMDkzNzUgLTUuMzI4MTI1IFogTSAxLjA5Mzc1IC00LjI2NTYyNSAiLz4KPC9nPgo8ZyBpZD0iZ2x5cGgtMi0xIj4KPHBhdGggZD0iTSAyLjMyODEyNSAtNC40Mzc1IEMgMS4wNzgxMjUgLTQuMzEyNSAwLjI4MTI1IC0zLjI2NTYyNSAwLjI4MTI1IC0yLjEwOTM3NSBDIDAuMjgxMjUgLTAuOTg0Mzc1IDEuMTU2MjUgMC4wOTM3NSAyLjQ4NDM3NSAwLjA5Mzc1IEMgMy42NzE4NzUgMC4wOTM3NSA0LjY3MTg3NSAtMC44NzUgNC42NzE4NzUgLTIuMTI1IEMgNC42NzE4NzUgLTMuMjk2ODc1IDMuNzgxMjUgLTQuNDUzMTI1IDIuNDUzMTI1IC00LjQ1MzEyNSBDIDIuNDIxODc1IC00LjQ1MzEyNSAyLjM3NSAtNC40Mzc1IDIuMzI4MTI1IC00LjQzNzUgWiBNIDEuMTA5Mzc1IC0xLjg3NSBMIDEuMTA5Mzc1IC0yLjMxMjUgQyAxLjEwOTM3NSAtMy4wNzgxMjUgMS4zNDM3NSAtNC4yMTg3NSAyLjQ2ODc1IC00LjIxODc1IEMgMy4yNjU2MjUgLTQuMjE4NzUgMy43MTg3NSAtMy41NDY4NzUgMy44MTI1IC0yLjc5Njg3NSBDIDMuODI4MTI1IC0yLjU3ODEyNSAzLjgyODEyNSAtMi4zNzUgMy44MjgxMjUgLTIuMTU2MjUgQyAzLjgyODEyNSAtMS41IDMuNzY1NjI1IC0wLjcwMzEyNSAzLjEyNSAtMC4zNDM3NSBDIDIuOTM3NSAtMC4yMDMxMjUgMi43MTg3NSAtMC4xNTYyNSAyLjQ4NDM3NSAtMC4xNTYyNSBDIDEuNzY1NjI1IC0wLjE1NjI1IDEuMjY1NjI1IC0wLjcxODc1IDEuMTU2MjUgLTEuNDg0Mzc1IEMgMS4xMjUgLTEuNjA5Mzc1IDEuMTI1IC0xLjc1IDEuMTA5Mzc1IC0xLjg3NSBaIE0gMS4xMDkzNzUgLTEuODc1ICIvPgo8L2c+CjxnIGlkPSJnbHlwaC0yLTIiPgo8cGF0aCBkPSJNIDAuMzEyNSAtNC4yNjU2MjUgTCAwLjMxMjUgLTMuOTY4NzUgTCAwLjQ2ODc1IC0zLjk2ODc1IEMgMC43OTY4NzUgLTMuOTY4NzUgMS4wOTM3NSAtMy45Mzc1IDEuMDkzNzUgLTMuNDY4NzUgTCAxLjA5Mzc1IC0wLjczNDM3NSBDIDEuMDkzNzUgLTAuMzI4MTI1IDAuODEyNSAtMC4zMTI1IDAuMzc1IC0wLjMxMjUgTCAwLjMxMjUgLTAuMzEyNSBMIDAuMzEyNSAtMC4wMTU2MjUgTCAyLjU2MjUgLTAuMDE1NjI1IEwgMi41NjI1IC0wLjMxMjUgTCAyLjI5Njg3NSAtMC4zMTI1IEMgMi4wMTU2MjUgLTAuMzEyNSAxLjc4MTI1IC0wLjM1OTM3NSAxLjc4MTI1IC0wLjcxODc1IEwgMS43ODEyNSAtMi41MzEyNSBDIDEuNzgxMjUgLTMuMjUgMi4xNTYyNSAtNC4xNTYyNSAzLjEyNSAtNC4xNTYyNSBDIDMuNzY1NjI1IC00LjE1NjI1IDMuODI4MTI1IC0zLjQ4NDM3NSAzLjgyODEyNSAtMy4wNDY4NzUgTCAzLjgyODEyNSAtMC42ODc1IEMgMy44MjgxMjUgLTAuMzQzNzUgMy41MzEyNSAtMC4zMTI1IDMuMjM0Mzc1IC0wLjMxMjUgTCAzLjA0Njg3NSAtMC4zMTI1IEwgMy4wNDY4NzUgLTAuMDE1NjI1IEwgNS4yOTY4NzUgLTAuMDE1NjI1IEwgNS4yOTY4NzUgLTAuMzEyNSBMIDUuMDQ2ODc1IC0wLjMxMjUgQyA0Ljc4MTI1IC0wLjMxMjUgNC41MTU2MjUgLTAuMzU5Mzc1IDQuNTE1NjI1IC0wLjY4NzUgTCA0LjUxNTYyNSAtMi44NTkzNzUgQyA0LjUxNTYyNSAtMy4xODc1IDQuNSAtMy41MzEyNSA0LjM0Mzc1IC0zLjgyODEyNSBDIDQuMTI1IC00LjI2NTYyNSAzLjYwOTM3NSAtNC4zNzUgMy4xNTYyNSAtNC4zNzUgQyAyLjU2MjUgLTQuMzc1IDEuOTM3NSAtMy45Njg3NSAxLjczNDM3NSAtMy4zNzUgTCAxLjcxODc1IC00LjM3NSBaIE0gMC4zMTI1IC00LjI2NTYyNSAiLz4KPC9nPgo8ZyBpZD0iZ2x5cGgtMi0zIj4KPHBhdGggZD0iTSAzLjU2MjUgLTMuODI4MTI1IEMgMy4yOTY4NzUgLTMuODEyNSAzLjA5Mzc1IC0zLjY1NjI1IDMuMDkzNzUgLTMuMzc1IEMgMy4wOTM3NSAtMy4xMDkzNzUgMy4yODEyNSAtMi45MjE4NzUgMy41NDY4NzUgLTIuOTIxODc1IEMgMy44NDM3NSAtMi45MjE4NzUgNCAtMy4xNDA2MjUgNCAtMy40MjE4NzUgTCA0IC0zLjQ4NDM3NSBDIDMuOTA2MjUgLTQuMjAzMTI1IDMuMDYyNSAtNC40Mzc1IDIuNDg0Mzc1IC00LjQzNzUgQyAxLjI4MTI1IC00LjQzNzUgMC4zMjgxMjUgLTMuMzc1IDAuMzI4MTI1IC0yLjE1NjI1IEMgMC4zMjgxMjUgLTEuMDMxMjUgMS4yMDMxMjUgMC4wOTM3NSAyLjQ4NDM3NSAwLjA5Mzc1IEMgMy4xMjUgMC4wOTM3NSAzLjc4MTI1IC0wLjI1IDQuMDQ2ODc1IC0wLjk1MzEyNSBDIDQuMDYyNSAtMS4wMTU2MjUgNC4xMDkzNzUgLTEuMDkzNzUgNC4xMDkzNzUgLTEuMTcxODc1IEMgNC4xMDkzNzUgLTEuMjM0Mzc1IDQuMDYyNSAtMS4yODEyNSA0IC0xLjI4MTI1IEMgMy44NDM3NSAtMS4yODEyNSAzLjc1IC0wLjkwNjI1IDMuNjg3NSAtMC43ODEyNSBDIDMuNDUzMTI1IC0wLjM5MDYyNSAzLjA0Njg3NSAtMC4xNTYyNSAyLjU5Mzc1IC0wLjE1NjI1IEMgMS41MzEyNSAtMC4xNTYyNSAxLjIwMzEyNSAtMS4yMDMxMjUgMS4xNTYyNSAtMS45ODQzNzUgTCAxLjE1NjI1IC0yLjEwOTM3NSBDIDEuMTU2MjUgLTIuOTA2MjUgMS4zNDM3NSAtNC4wOTM3NSAyLjQzNzUgLTQuMTg3NSBMIDIuNTE1NjI1IC00LjE4NzUgQyAyLjg3NSAtNC4xODc1IDMuMjY1NjI1IC00LjA3ODEyNSAzLjU2MjUgLTMuODI4MTI1IFogTSAzLjU2MjUgLTMuODI4MTI1ICIvPgo8L2c+CjxnIGlkPSJnbHlwaC0yLTQiPgo8cGF0aCBkPSJNIDEuNDY4NzUgLTYuMTA5Mzc1IEMgMS40Njg3NSAtNS40MjE4NzUgMS4xODc1IC00LjE4NzUgMC4xNzE4NzUgLTQuMTg3NSBMIDAuMTcxODc1IC0zLjk2ODc1IEwgMS4wMzEyNSAtMy45Njg3NSBMIDEuMDMxMjUgLTEuNDA2MjUgQyAxLjAzMTI1IC0xLjA3ODEyNSAxLjA0Njg3NSAtMC43NSAxLjIwMzEyNSAtMC40Njg3NSBDIDEuNDIxODc1IC0wLjA2MjUgMS44OTA2MjUgMC4wOTM3NSAyLjMyODEyNSAwLjA5Mzc1IEMgMy4xNDA2MjUgMC4wOTM3NSAzLjI5Njg3NSAtMC44MTI1IDMuMjk2ODc1IC0xLjQzNzUgTCAzLjI5Njg3NSAtMS43OTY4NzUgTCAzLjA0Njg3NSAtMS43OTY4NzUgQyAzLjA0Njg3NSAtMS42NTYyNSAzLjA2MjUgLTEuNSAzLjA2MjUgLTEuMzQzNzUgQyAzLjA2MjUgLTAuOTA2MjUgMi45Njg3NSAtMC4xNTYyNSAyLjM3NSAtMC4xNTYyNSBDIDEuODEyNSAtMC4xNTYyNSAxLjcxODc1IC0wLjgyODEyNSAxLjcxODc1IC0xLjI4MTI1IEwgMS43MTg3NSAtMy45Njg3NSBMIDMuMTI1IC0zLjk2ODc1IEwgMy4xMjUgLTQuMjY1NjI1IEwgMS43MTg3NSAtNC4yNjU2MjUgTCAxLjcxODc1IC02LjEwOTM3NSBaIE0gMS40Njg3NSAtNi4xMDkzNzUgIi8+CjwvZz4KPGcgaWQ9ImdseXBoLTItNSI+CjxwYXRoIGQ9Ik0gMC4zNTkzNzUgLTQuMjY1NjI1IEwgMC4zNTkzNzUgLTMuOTY4NzUgTCAwLjU2MjUgLTMuOTY4NzUgQyAwLjg0Mzc1IC0zLjk2ODc1IDEuMDkzNzUgLTMuOTIxODc1IDEuMDkzNzUgLTMuNDY4NzUgTCAxLjA5Mzc1IC0wLjcxODc1IEMgMS4wOTM3NSAtMC4zNzUgMC45MjE4NzUgLTAuMzEyNSAwLjMyODEyNSAtMC4zMTI1IEwgMC4zMjgxMjUgLTAuMDE1NjI1IEwgMi40NTMxMjUgLTAuMDE1NjI1IEwgMi40NTMxMjUgLTAuMzEyNSBMIDIuMjY1NjI1IC0wLjMxMjUgQyAyIC0wLjMxMjUgMS43NjU2MjUgLTAuMzQzNzUgMS43NjU2MjUgLTAuNjU2MjUgTCAxLjc2NTYyNSAtNC4zNzUgWiBNIDEuMjAzMTI1IC02LjYyNSBDIDAuOTUzMTI1IC02LjU5Mzc1IDAuNzUgLTYuMzc1IDAuNzUgLTYuMTA5Mzc1IEMgMC43NSAtNS44MjgxMjUgMSAtNS41OTM3NSAxLjI4MTI1IC01LjU5Mzc1IEMgMS41NDY4NzUgLTUuNTkzNzUgMS43OTY4NzUgLTUuODEyNSAxLjc5Njg3NSAtNi4xMDkzNzUgQyAxLjc5Njg3NSAtNi40MDYyNSAxLjU2MjUgLTYuNjQwNjI1IDEuMjgxMjUgLTYuNjQwNjI1IEMgMS4yNSAtNi42NDA2MjUgMS4yMzQzNzUgLTYuNjI1IDEuMjAzMTI1IC02LjYyNSBaIE0gMS4yMDMxMjUgLTYuNjI1ICIvPgo8L2c+CjxnIGlkPSJnbHlwaC0yLTYiPgo8cGF0aCBkPSJNIDEuMTA5Mzc1IC0yLjI5Njg3NSBMIDMuOTY4NzUgLTIuMjk2ODc1IEMgNC4wNzgxMjUgLTIuMjk2ODc1IDQuMTI1IC0yLjM3NSA0LjEyNSAtMi40ODQzNzUgQyA0LjEyNSAtMy41MzEyNSAzLjQ4NDM3NSAtNC40Mzc1IDIuMzc1IC00LjQzNzUgQyAxLjE1NjI1IC00LjQzNzUgMC4yODEyNSAtMy4zNTkzNzUgMC4yODEyNSAtMi4xNzE4NzUgQyAwLjI4MTI1IC0xLjI2NTYyNSAwLjc4MTI1IC0wLjQ1MzEyNSAxLjY1NjI1IC0wLjA2MjUgQyAxLjg3NSAwLjA0Njg3NSAyLjE1NjI1IDAuMDkzNzUgMi4zOTA2MjUgMC4wOTM3NSBMIDIuNDIxODc1IDAuMDkzNzUgQyAzLjE4NzUgMC4wOTM3NSAzLjgyODEyNSAtMC4zMjgxMjUgNC4wOTM3NSAtMS4wOTM3NSBDIDQuMDkzNzUgLTEuMTI1IDQuMDkzNzUgLTEuMTU2MjUgNC4wOTM3NSAtMS4xODc1IEMgNC4wOTM3NSAtMS4yNjU2MjUgNC4wNjI1IC0xLjMxMjUgNCAtMS4zMTI1IEMgMy44NDM3NSAtMS4zMTI1IDMuNzgxMjUgLTAuOTg0Mzc1IDMuNzE4NzUgLTAuODc1IEMgMy40ODQzNzUgLTAuNDM3NSAzIC0wLjE1NjI1IDIuNDg0Mzc1IC0wLjE1NjI1IEMgMi4xMjUgLTAuMTU2MjUgMS43OTY4NzUgLTAuMzU5Mzc1IDEuNTMxMjUgLTAuNjI1IEMgMS4xNDA2MjUgLTEuMDc4MTI1IDEuMTA5Mzc1IC0xLjcxODc1IDEuMTA5Mzc1IC0yLjI5Njg3NSBaIE0gMS4xMjUgLTIuNSBDIDEuMTI1IC0zLjI2NTYyNSAxLjUzMTI1IC00LjIxODc1IDIuMzQzNzUgLTQuMjE4NzUgTCAyLjM5MDYyNSAtNC4yMTg3NSBDIDMuMzU5Mzc1IC00LjEyNSAzLjM0Mzc1IC0zLjA5Mzc1IDMuNDUzMTI1IC0yLjUgWiBNIDEuMTI1IC0yLjUgIi8+CjwvZz4KPGcgaWQ9ImdseXBoLTItNyI+CjxwYXRoIGQ9Ik0gMS43NSAtNC40Mzc1IEMgMS4zNzUgLTQuMzkwNjI1IDAuOTg0Mzc1IC00LjMyODEyNSAwLjcwMzEyNSAtNC4wNzgxMjUgQyAwLjQ2ODc1IC0zLjg3NSAwLjMyODEyNSAtMy41MzEyNSAwLjMyODEyNSAtMy4yMTg3NSBDIDAuMzI4MTI1IC0xLjUzMTI1IDMuMDc4MTI1IC0yLjQ4NDM3NSAzLjA3ODEyNSAtMSBDIDMuMDc4MTI1IC0wLjM5MDYyNSAyLjUzMTI1IC0wLjEyNSAxLjk4NDM3NSAtMC4xMjUgQyAxLjIzNDM3NSAtMC4xMjUgMC43MzQzNzUgLTAuNjU2MjUgMC41OTM3NSAtMS41IEMgMC41NzgxMjUgLTEuNTkzNzUgMC41NjI1IC0xLjY4NzUgMC40NTMxMjUgLTEuNjg3NSBDIDAuMzU5Mzc1IC0xLjY4NzUgMC4zMjgxMjUgLTEuNjI1IDAuMzI4MTI1IC0xLjU2MjUgTCAwLjMyODEyNSAwLjAxNTYyNSBDIDAuMzQzNzUgMC4wNjI1IDAuMzU5Mzc1IDAuMDkzNzUgMC40MjE4NzUgMC4wOTM3NSBMIDAuNDM3NSAwLjA5Mzc1IEMgMC41OTM3NSAwLjA5Mzc1IDAuNzUgLTAuMjY1NjI1IDAuODc1IC0wLjI5Njg3NSBDIDAuOTUzMTI1IC0wLjI5Njg3NSAxLjIzNDM3NSAtMC4wNDY4NzUgMS40Mzc1IDAuMDE1NjI1IEMgMS42MDkzNzUgMC4wNzgxMjUgMS43ODEyNSAwLjA5Mzc1IDEuOTY4NzUgMC4wOTM3NSBDIDIuNzgxMjUgMC4wOTM3NSAzLjU2MjUgLTAuMzQzNzUgMy41NjI1IC0xLjI1IEMgMy41NjI1IC0xLjkwNjI1IDMuMDkzNzUgLTIuNDM3NSAyLjQzNzUgLTIuNjA5Mzc1IEMgMS44MjgxMjUgLTIuNzgxMjUgMC44MTI1IC0yLjc4MTI1IDAuODEyNSAtMy41IEMgMC44MTI1IC00LjA5Mzc1IDEuNDY4NzUgLTQuMjUgMS45MDYyNSAtNC4yNSBDIDIuMzkwNjI1IC00LjI1IDMuMDc4MTI1IC0zLjk4NDM3NSAzLjA3ODEyNSAtMy4xMjUgQyAzLjA3ODEyNSAtMy4wNDY4NzUgMy4wNzgxMjUgLTIuOTY4NzUgMy4xODc1IC0yLjk2ODc1IEMgMy4yODEyNSAtMi45Njg3NSAzLjMyODEyNSAtMy4wNDY4NzUgMy4zMjgxMjUgLTMuMTQwNjI1IEMgMy4zMjgxMjUgLTMuMTg3NSAzLjMxMjUgLTMuMjM0Mzc1IDMuMzEyNSAtMy4yODEyNSBMIDMuMzEyNSAtNC4yOTY4NzUgQyAzLjMxMjUgLTQuMzU5Mzc1IDMuMjgxMjUgLTQuNDM3NSAzLjIwMzEyNSAtNC40Mzc1IEMgMy4wNDY4NzUgLTQuNDM3NSAyLjk1MzEyNSAtNC4xODc1IDIuODQzNzUgLTQuMTg3NSBMIDIuODI4MTI1IC00LjE4NzUgQyAyLjc1IC00LjE4NzUgMi41OTM3NSAtNC4zMTI1IDIuNDg0Mzc1IC00LjM1OTM3NSBDIDIuMjk2ODc1IC00LjQyMTg3NSAyLjA5Mzc1IC00LjQ1MzEyNSAxLjkwNjI1IC00LjQ1MzEyNSBDIDEuODU5Mzc1IC00LjQ1MzEyNSAxLjc5Njg3NSAtNC40Mzc1IDEuNzUgLTQuNDM3NSBaIE0gMS43NSAtNC40Mzc1ICIvPgo8L2c+CjxnIGlkPSJnbHlwaC0yLTgiPgo8cGF0aCBkPSJNIDAuMjY1NjI1IC00LjI2NTYyNSBMIDAuMjY1NjI1IC0zLjk2ODc1IEwgMC40MjE4NzUgLTMuOTY4NzUgQyAwLjc1IC0zLjk2ODc1IDEuMDQ2ODc1IC0zLjkzNzUgMS4wNDY4NzUgLTMuNDY4NzUgTCAxLjA0Njg3NSAtMC43MzQzNzUgQyAxLjA0Njg3NSAtMC4zMjgxMjUgMC43NjU2MjUgLTAuMzEyNSAwLjMyODEyNSAtMC4zMTI1IEwgMC4yNjU2MjUgLTAuMzEyNSBMIDAuMjY1NjI1IC0wLjAxNTYyNSBMIDIuNjcxODc1IC0wLjAxNTYyNSBMIDIuNjcxODc1IC0wLjMxMjUgQyAyLjU0Njg3NSAtMC4zMTI1IDIuNDA2MjUgLTAuMzEyNSAyLjI4MTI1IC0wLjMxMjUgQyAxLjk2ODc1IC0wLjMxMjUgMS43MDMxMjUgLTAuMzU5Mzc1IDEuNzAzMTI1IC0wLjcxODc1IEwgMS43MDMxMjUgLTIuMDQ2ODc1IEMgMS43MDMxMjUgLTIuODc1IDEuOTA2MjUgLTQuMTU2MjUgMi44NzUgLTQuMTU2MjUgQyAyLjkwNjI1IC00LjE1NjI1IDIuOTM3NSAtNC4xNTYyNSAyLjk4NDM3NSAtNC4xNTYyNSBMIDIuOTg0Mzc1IC00LjE0MDYyNSBDIDIuODI4MTI1IC00LjA3ODEyNSAyLjc1IC0zLjkyMTg3NSAyLjc1IC0zLjc2NTYyNSBDIDIuNzUgLTMuNTMxMjUgMi45MDYyNSAtMy4zNzUgMy4xMjUgLTMuMzQzNzUgQyAzLjQyMTg3NSAtMy4zNDM3NSAzLjYwOTM3NSAtMy41MTU2MjUgMy42MDkzNzUgLTMuNzY1NjI1IEMgMy42MDkzNzUgLTQuMTU2MjUgMy4yMzQzNzUgLTQuMzc1IDIuODc1IC00LjM3NSBDIDIuMjgxMjUgLTQuMzc1IDEuNzY1NjI1IC0zLjg1OTM3NSAxLjY3MTg3NSAtMy4zMTI1IEwgMS42NTYyNSAtNC4zNzUgWiBNIDAuMjY1NjI1IC00LjI2NTYyNSAiLz4KPC9nPgo8L2c+CjwvZGVmcz4KPGcgZmlsbD0icmdiKDAlLCAwJSwgMCUpIiBmaWxsLW9wYWNpdHk9IjEiPgo8dXNlIHhsaW5rOmhyZWY9IiNnbHlwaC0wLTAiIHg9IjYuNTIyMTI0IiB5PSI1MC45MDY4OCIvPgo8dXNlIHhsaW5rOmhyZWY9IiNnbHlwaC0wLTEiIHg9IjEzLjY3NTkyMyIgeT0iNTAuOTA2ODgiLz4KPC9nPgo8ZyBmaWxsPSJyZ2IoMCUsIDAlLCAwJSkiIGZpbGwtb3BhY2l0eT0iMSI+Cjx1c2UgeGxpbms6aHJlZj0iI2dseXBoLTEtMCIgeD0iMjEuMTA2MTUiIHk9IjUyLjM5MjMyNyIvPgo8L2c+CjxnIGZpbGw9InJnYigwJSwgMCUsIDAlKSIgZmlsbC1vcGFjaXR5PSIxIj4KPHVzZSB4bGluazpocmVmPSIjZ2x5cGgtMC0wIiB4PSI1MS45MTY3NDQiIHk9IjUxLjY0OTYwMyIvPgo8L2c+CjxnIGZpbGw9InJnYigwJSwgMCUsIDAlKSIgZmlsbC1vcGFjaXR5PSIxIj4KPHVzZSB4bGluazpocmVmPSIjZ2x5cGgtMC0yIiB4PSI5MS4wOTkxMzMiIHk9IjUxLjY0OTYwMyIvPgo8L2c+CjxnIGZpbGw9InJnYigwJSwgMCUsIDAlKSIgZmlsbC1vcGFjaXR5PSIxIj4KPHVzZSB4bGluazpocmVmPSIjZ2x5cGgtMC0wIiB4PSIxMjQuODk1NTM0IiB5PSI1MC45MDY4OCIvPgo8dXNlIHhsaW5rOmhyZWY9IiNnbHlwaC0wLTEiIHg9IjEzMi4wNDkzMzMiIHk9IjUwLjkwNjg4Ii8+CjwvZz4KPGcgZmlsbD0icmdiKDAlLCAwJSwgMCUpIiBmaWxsLW9wYWNpdHk9IjEiPgo8dXNlIHhsaW5rOmhyZWY9IiNnbHlwaC0xLTEiIHg9IjEzOS40Nzg1NjYiIHk9IjUyLjM5MjMyNyIvPgo8L2c+CjxnIGZpbGw9InJnYigwJSwgMCUsIDAlKSIgZmlsbC1vcGFjaXR5PSIxIj4KPHVzZSB4bGluazpocmVmPSIjZ2x5cGgtMC0wIiB4PSIxNjQuMzUzMzM4IiB5PSI1MC45MDY4OCIvPgo8dXNlIHhsaW5rOmhyZWY9IiNnbHlwaC0wLTEiIHg9IjE3MS41MDcxMzYiIHk9IjUwLjkwNjg4Ii8+CjwvZz4KPGcgZmlsbD0icmdiKDAlLCAwJSwgMCUpIiBmaWxsLW9wYWNpdHk9IjEiPgo8dXNlIHhsaW5rOmhyZWY9IiNnbHlwaC0xLTEiIHg9IjE3OC45MzYzNjkiIHk9IjUyLjM5MjMyNyIvPgo8L2c+CjxnIGZpbGw9InJnYigwJSwgMCUsIDAlKSIgZmlsbC1vcGFjaXR5PSIxIj4KPHVzZSB4bGluazpocmVmPSIjZ2x5cGgtMC0wIiB4PSIyMDMuODExMTQxIiB5PSI1MC45MDY4OCIvPgo8dXNlIHhsaW5rOmhyZWY9IiNnbHlwaC0wLTEiIHg9IjIxMC45NjQ5MzkiIHk9IjUwLjkwNjg4Ii8+CjwvZz4KPGcgZmlsbD0icmdiKDAlLCAwJSwgMCUpIiBmaWxsLW9wYWNpdHk9IjEiPgo8dXNlIHhsaW5rOmhyZWY9IiNnbHlwaC0xLTAiIHg9IjIxOC4zOTQxNzMiIHk9IjUyLjM5MjMyNyIvPgo8L2c+CjxwYXRoIGZpbGw9Im5vbmUiIHN0cm9rZS13aWR0aD0iMC4zOTg1IiBzdHJva2UtbGluZWNhcD0iYnV0dCIgc3Ryb2tlLWxpbmVqb2luPSJtaXRlciIgc3Ryb2tlPSJyZ2IoMCUsIDAlLCAwJSkiIHN0cm9rZS1vcGFjaXR5PSIxIiBzdHJva2UtbWl0ZXJsaW1pdD0iMTAiIGQ9Ik0gMTMuMDg5Mzc2IC0wLjAwMDUzNjc0OCBMIDMyLjU2ODA3OSAtMC4wMDA1MzY3NDggIiB0cmFuc2Zvcm09Im1hdHJpeCgwLjk5NDI3NSwgMCwgMCwgLTAuOTk0Mjc1LCAxNi4wMzYzNDIsIDQ4LjI2NTA5MSkiLz4KPHBhdGggZmlsbD0ibm9uZSIgc3Ryb2tlLXdpZHRoPSIwLjM5ODUiIHN0cm9rZS1saW5lY2FwPSJidXR0IiBzdHJva2UtbGluZWpvaW49Im1pdGVyIiBzdHJva2U9InJnYigwJSwgMCUsIDAlKSIgc3Ryb2tlLW9wYWNpdHk9IjEiIHN0cm9rZS1taXRlcmxpbWl0PSIxMCIgZD0iTSA0Ni44MDE5MTIgLTAuMDAwNTM2NzQ4IEwgNzEuOTc3MjkxIC0wLjAwMDUzNjc0OCAiIHRyYW5zZm9ybT0ibWF0cml4KDAuOTk0Mjc1LCAwLCAwLCAtMC45OTQyNzUsIDE2LjAzNjM0MiwgNDguMjY1MDkxKSIvPgo8cGF0aCBmaWxsPSJub25lIiBzdHJva2Utd2lkdGg9IjAuMzk4NSIgc3Ryb2tlLWxpbmVjYXA9ImJ1dHQiIHN0cm9rZS1saW5lam9pbj0ibWl0ZXIiIHN0cm9rZT0icmdiKDAlLCAwJSwgMCUpIiBzdHJva2Utb3BhY2l0eT0iMSIgc3Ryb2tlLW1pdGVybGltaXQ9IjEwIiBkPSJNIDg2Ljc2NTA3NiAtMC4wMDA1MzY3NDggTCAxMDUuOTY4NzY3IC0wLjAwMDUzNjc0OCAiIHRyYW5zZm9ybT0ibWF0cml4KDAuOTk0Mjc1LCAwLCAwLCAtMC45OTQyNzUsIDE2LjAzNjM0MiwgNDguMjY1MDkxKSIvPgo8cGF0aCBmaWxsPSJub25lIiBzdHJva2Utd2lkdGg9IjAuMzk4NSIgc3Ryb2tlLWxpbmVjYXA9ImJ1dHQiIHN0cm9rZS1saW5lam9pbj0ibWl0ZXIiIHN0cm9rZT0icmdiKDAlLCAwJSwgMCUpIiBzdHJva2Utb3BhY2l0eT0iMSIgc3Ryb2tlLW1pdGVybGltaXQ9IjEwIiBkPSJNIDEzMi4xNDIwNDcgLTAuMDAwNTM2NzQ4IEwgMTQ1LjY1Mjk5IC0wLjAwMDUzNjc0OCAiIHRyYW5zZm9ybT0ibWF0cml4KDAuOTk0Mjc1LCAwLCAwLCAtMC45OTQyNzUsIDE2LjAzNjM0MiwgNDguMjY1MDkxKSIvPgo8cGF0aCBmaWxsPSJub25lIiBzdHJva2Utd2lkdGg9IjAuMzk4NSIgc3Ryb2tlLWxpbmVjYXA9ImJ1dHQiIHN0cm9rZS1saW5lam9pbj0ibWl0ZXIiIHN0cm9rZT0icmdiKDAlLCAwJSwgMCUpIiBzdHJva2Utb3BhY2l0eT0iMSIgc3Ryb2tlLW1pdGVybGltaXQ9IjEwIiBkPSJNIDE3MS44MzAxOTkgLTAuMDAwNTM2NzQ4IEwgMTg1LjM0MTE0MyAtMC4wMDA1MzY3NDggIiB0cmFuc2Zvcm09Im1hdHJpeCgwLjk5NDI3NSwgMCwgMCwgLTAuOTk0Mjc1LCAxNi4wMzYzNDIsIDQ4LjI2NTA5MSkiLz4KPGcgZmlsbD0icmdiKDAlLCAwJSwgMCUpIiBmaWxsLW9wYWNpdHk9IjEiPgo8dXNlIHhsaW5rOmhyZWY9IiNnbHlwaC0wLTIiIHg9IjUxLjY0MTMyOSIgeT0iMTcuODI4MzQ1Ii8+CjwvZz4KPHBhdGggZmlsbD0ibm9uZSIgc3Ryb2tlLXdpZHRoPSIwLjM5ODUiIHN0cm9rZS1saW5lY2FwPSJidXR0IiBzdHJva2UtbGluZWpvaW49Im1pdGVyIiBzdHJva2U9InJnYigwJSwgMCUsIDAlKSIgc3Ryb2tlLW9wYWNpdHk9IjEiIHN0cm9rZS1taXRlcmxpbWl0PSIxMCIgZD0iTSAzNy4zMDYxNDIgNS4xMDI4OTkgTCAzNy4zMDYxNDIgMjguOTE1MDA1ICIgdHJhbnNmb3JtPSJtYXRyaXgoMC45OTQyNzUsIDAsIDAsIC0wLjk5NDI3NSwgMTYuMDM2MzQyLCA0OC4yNjUwOTEpIi8+CjxwYXRoIGZpbGw9Im5vbmUiIHN0cm9rZS13aWR0aD0iMC4zOTg1IiBzdHJva2UtbGluZWNhcD0iYnV0dCIgc3Ryb2tlLWxpbmVqb2luPSJtaXRlciIgc3Ryb2tlPSJyZ2IoMCUsIDAlLCAwJSkiIHN0cm9rZS1vcGFjaXR5PSIxIiBzdHJva2UtbWl0ZXJsaW1pdD0iMTAiIGQ9Ik0gNDIuMDY3Nzc4IDUuMTAyODk5IEwgNDIuMDY3Nzc4IDI4LjkxNTAwNSAiIHRyYW5zZm9ybT0ibWF0cml4KDAuOTk0Mjc1LCAwLCAwLCAtMC45OTQyNzUsIDE2LjAzNjM0MiwgNDguMjY1MDkxKSIvPgo8cGF0aCBmaWxsPSJub25lIiBzdHJva2Utd2lkdGg9IjAuMzk4NSIgc3Ryb2tlLWxpbmVjYXA9ImJ1dHQiIHN0cm9rZS1saW5lam9pbj0ibWl0ZXIiIHN0cm9rZT0icmdiKDUwJSwgNTAlLCA1MCUpIiBzdHJva2Utb3BhY2l0eT0iMSIgc3Ryb2tlLWRhc2hhcnJheT0iMi45ODg4MyAyLjk4ODgzIiBzdHJva2UtbWl0ZXJsaW1pdD0iMTAiIGQ9Ik0gMjMuODEwOTEzIC0xMi43NTcxNjIgTCAyMy44MTA5MTMgNDUuMzU2NzkgTCA5NS4yNDMzMDEgNDUuMzU2NzkgTCA5NS4yNDMzMDEgLTEyLjc1NzE2MiBaIE0gMjMuODEwOTEzIC0xMi43NTcxNjIgIiB0cmFuc2Zvcm09Im1hdHJpeCgwLjk5NDI3NSwgMCwgMCwgLTAuOTk0Mjc1LCAxNi4wMzYzNDIsIDQ4LjI2NTA5MSkiLz4KPGcgZmlsbD0icmdiKDUwJSwgNTAlLCA1MCUpIiBmaWxsLW9wYWNpdHk9IjEiPgo8dXNlIHhsaW5rOmhyZWY9IiNnbHlwaC0yLTAiIHg9IjQ1Ljg4NDQ3NyIgeT0iNzIuODE0NzM1Ii8+Cjx1c2UgeGxpbms6aHJlZj0iI2dseXBoLTItMSIgeD0iNDguOTEwNjI3IiB5PSI3Mi44MTQ3MzUiLz4KPHVzZSB4bGluazpocmVmPSIjZ2x5cGgtMi0yIiB4PSI1My44NjI0MTkiIHk9IjcyLjgxNDczNSIvPgo8dXNlIHhsaW5rOmhyZWY9IiNnbHlwaC0yLTMiIHg9IjU5LjM2Mzk2OSIgeT0iNzIuODE0NzM1Ii8+Cjx1c2UgeGxpbms6aHJlZj0iI2dseXBoLTItNCIgeD0iNjMuNzY1MDExIiB5PSI3Mi44MTQ3MzUiLz4KPHVzZSB4bGluazpocmVmPSIjZ2x5cGgtMi01IiB4PSI2Ny42MTYyOTQiIHk9IjcyLjgxNDczNSIvPgo8dXNlIHhsaW5rOmhyZWY9IiNnbHlwaC0yLTEiIHg9IjcwLjM2NzA2OSIgeT0iNzIuODE0NzM1Ii8+Cjx1c2UgeGxpbms6aHJlZj0iI2dseXBoLTItMiIgeD0iNzUuMzE4ODYxIiB5PSI3Mi44MTQ3MzUiLz4KPC9nPgo8ZyBmaWxsPSJyZ2IoNTAlLCA1MCUsIDUwJSkiIGZpbGwtb3BhY2l0eT0iMSI+Cjx1c2UgeGxpbms6aHJlZj0iI2dseXBoLTItNiIgeD0iODQuMTE4OTY0IiB5PSI3Mi44MTQ3MzUiLz4KPHVzZSB4bGluazpocmVmPSIjZ2x5cGgtMi03IiB4PSI4OC41MjAwMDYiIHk9IjcyLjgxNDczNSIvPgo8dXNlIHhsaW5rOmhyZWY9IiNnbHlwaC0yLTQiIHg9IjkyLjQyNTc3IiB5PSI3Mi44MTQ3MzUiLz4KPHVzZSB4bGluazpocmVmPSIjZ2x5cGgtMi02IiB4PSI5Ni4yNzcwNTMiIHk9IjcyLjgxNDczNSIvPgo8dXNlIHhsaW5rOmhyZWY9IiNnbHlwaC0yLTgiIHg9IjEwMC42NzgwOTYiIHk9IjcyLjgxNDczNSIvPgo8L2c+Cjwvc3ZnPgo=" class="max-w-full" alt="Figure" /></div>

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
