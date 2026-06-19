Ce chapitre présente le calcul intégral, l'une des branches les plus fécondes de l'analyse. Nous allons définir les primitives d'une fonction, puis l'intégrale comme outil de calcul d'aires, de moyennes et de modélisation mathématique.

## Primitives d'une Fonction

### Définition et propriétés

Rechercher les primitives d'une fonction est l'opération inverse de la dérivation.

\begin{definition}[Primitive]
Soit $f$ une fonction définie sur un intervalle $I$.
On appelle **primitive** de $f$ sur $I$ toute fonction $F$ dérivable sur $I$ telle que pour tout $x \in I$ :
\[
F'(x) = f(x)
\]
\end{definition}

\begin{theoreme}[Existence et ensemble des primitives]
\begin{itemize}
    \item Toute fonction **continue** sur un intervalle $I$ admet des primitives sur $I$.
    \item Si $F$ est une primitive de $f$ sur $I$, alors toute autre primitive $G$ de $f$ sur $I$ est de la forme :
    \[
    G(x) = F(x) + C
    \]
    où $C$ est une constante réelle.
\end{itemize}
\end{theoreme}

### Primitives des fonctions usuelles

Le tableau suivant rassemble les formules de primitives obtenues par lecture inverse du tableau des dérivées :

\begin{table}[h!]
\centering
\begin{tabular}{|c|c|c|}
\hline
\textbf{Fonction} $f(x)$ & \textbf{Une primitive} $F(x)$ & \textbf{Intervalle} $I$ \\
\hline
$k$ (constante) & $kx$ & $\R$ \\
$x^n$ ($n \in \N$) & $\frac{x^{n+1}}{n+1}$ & $\R$ \\
$\frac{1}{x^2}$ & $-\frac{1}{x}$ & $]-\infty, 0[$ ou $]0, +\infty[$ \\
$\frac{1}{\sqrt{x}}$ & $2\sqrt{x}$ & $]0, +\infty[$ \\
$e^x$ & $e^x$ & $\R$ \\
$\frac{1}{x}$ & $\ln(x)$ & $]0, +\infty[$ \\
\hline
\end{tabular}
\caption{Primitives des fonctions usuelles}
\end{table}

### Primitives et composition

Pour trouver des primitives de fonctions plus complexes, on repère des formes de dérivées de fonctions composées :

\begin{table}[h!]
\centering
\begin{tabular}{|c|c|c|}
\hline
\textbf{Forme de la fonction} & \textbf{Une primitive} & \textbf{Condition sur} $u$ \\
\hline
$u' u^n$ ($n \in \N^*$) & $\frac{u^{n+1}}{n+1}$ & dérivable \\
$\frac{u'}{u^2}$ & $-\frac{1}{u}$ & $u(x) \ne 0$ \\
$\frac{u'}{\sqrt{u}}$ & $2\sqrt{u}$ & $u(x) > 0$ \\
$u' e^u$ & $e^u$ & dérivable \\
$\frac{u'}{u}$ & $\ln(u)$ & $u(x) > 0$ \\
\hline
\end{tabular}
\caption{Primitives de fonctions composées}
\end{table}

## Le Calcul Intégral

### Définition de l'intégrale

\begin{definition}[Intégrale]
Soit $f$ une fonction continue sur $[a, b]$ et $F$ une primitive de $f$ sur $[a, b]$.
L'**intégrale** de $f$ de $a$ à $b$ est le nombre réel, noté $\int_a^b f(x) \dd x$, défini par :
\[
\int_a^b f(x) \dd x = [F(x)]_a^b = F(b) - F(a)
\]
\end{definition}

### Interprétation géométrique (Aire)

Lorsque la fonction $f$ est continue et positive sur l'intervalle $[a, b]$, l'intégrale $\int_a^b f(x) \dd x$ est égale à l'aire $\mathcal{A}$ de la région délimitée par la courbe $\mathcal{C}_f$, l'axe des abscisses et les droites verticales d'équations $x=a$ et $x=b$ (exprimée en unités d'aire, u.a.).

\begin{center}
<div class="flex justify-center my-5"><img src="data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz4KPHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHhtbG5zOnhsaW5rPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5L3hsaW5rIiB3aWR0aD0iMjE2LjQzN3B0IiBoZWlnaHQ9IjE0OC42NzJwdCIgdmlld0JveD0iMCAwIDIxNi40MzcgMTQ4LjY3MiI+CjxkZWZzPgo8Zz4KPGcgaWQ9ImdseXBoLTAtMCI+CjxwYXRoIGQ9Ik0gMy4zMTI1IC0zIEMgMy4zNzUgLTMuMjY1NjI1IDMuNjA5Mzc1IC00LjE3MTg3NSA0LjI5Njg3NSAtNC4xNzE4NzUgQyA0LjM1OTM3NSAtNC4xNzE4NzUgNC41OTM3NSAtNC4xNzE4NzUgNC43OTY4NzUgLTQuMDQ2ODc1IEMgNC41MTU2MjUgLTQgNC4zMjgxMjUgLTMuNzUgNC4zMjgxMjUgLTMuNTE1NjI1IEMgNC4zMjgxMjUgLTMuMzQzNzUgNC40Mzc1IC0zLjE1NjI1IDQuNzAzMTI1IC0zLjE1NjI1IEMgNC45MjE4NzUgLTMuMTU2MjUgNS4yMzQzNzUgLTMuMzQzNzUgNS4yMzQzNzUgLTMuNzM0Mzc1IEMgNS4yMzQzNzUgLTQuMjUgNC42NTYyNSAtNC4zOTA2MjUgNC4zMTI1IC00LjM5MDYyNSBDIDMuNzM0Mzc1IC00LjM5MDYyNSAzLjM5MDYyNSAtMy44NTkzNzUgMy4yNjU2MjUgLTMuNjQwNjI1IEMgMy4wMTU2MjUgLTQuMjk2ODc1IDIuNDg0Mzc1IC00LjM5MDYyNSAyLjIwMzEyNSAtNC4zOTA2MjUgQyAxLjE1NjI1IC00LjM5MDYyNSAwLjU5Mzc1IC0zLjEwOTM3NSAwLjU5Mzc1IC0yLjg1OTM3NSBDIDAuNTkzNzUgLTIuNzY1NjI1IDAuNzAzMTI1IC0yLjc2NTYyNSAwLjcxODc1IC0yLjc2NTYyNSBDIDAuNzk2ODc1IC0yLjc2NTYyNSAwLjgyODEyNSAtMi43ODEyNSAwLjg0Mzc1IC0yLjg3NSBDIDEuMTg3NSAtMy45MjE4NzUgMS44NDM3NSAtNC4xNzE4NzUgMi4xNzE4NzUgLTQuMTcxODc1IEMgMi4zNTkzNzUgLTQuMTcxODc1IDIuNzE4NzUgLTQuMDc4MTI1IDIuNzE4NzUgLTMuNTE1NjI1IEMgMi43MTg3NSAtMy4yMDMxMjUgMi41NDY4NzUgLTIuNTMxMjUgMi4xNzE4NzUgLTEuMTQwNjI1IEMgMi4wMTU2MjUgLTAuNTMxMjUgMS42NzE4NzUgLTAuMTA5Mzc1IDEuMjM0Mzc1IC0wLjEwOTM3NSBDIDEuMTcxODc1IC0wLjEwOTM3NSAwLjkzNzUgLTAuMTA5Mzc1IDAuNzM0Mzc1IC0wLjIzNDM3NSBDIDAuOTg0Mzc1IC0wLjI4MTI1IDEuMjAzMTI1IC0wLjUgMS4yMDMxMjUgLTAuNzgxMjUgQyAxLjIwMzEyNSAtMS4wNDY4NzUgMC45ODQzNzUgLTEuMTI1IDAuODI4MTI1IC0xLjEyNSBDIDAuNTMxMjUgLTEuMTI1IDAuMjgxMjUgLTAuODU5Mzc1IDAuMjgxMjUgLTAuNTQ2ODc1IEMgMC4yODEyNSAtMC4wOTM3NSAwLjc4MTI1IDAuMTA5Mzc1IDEuMjE4NzUgMC4xMDkzNzUgQyAxLjg3NSAwLjEwOTM3NSAyLjIzNDM3NSAtMC41OTM3NSAyLjI2NTYyNSAtMC42NDA2MjUgQyAyLjM5MDYyNSAtMC4yODEyNSAyLjc1IDAuMTA5Mzc1IDMuMzQzNzUgMC4xMDkzNzUgQyA0LjM1OTM3NSAwLjEwOTM3NSA0LjkyMTg3NSAtMS4xNzE4NzUgNC45MjE4NzUgLTEuNDIxODc1IEMgNC45MjE4NzUgLTEuNTE1NjI1IDQuODQzNzUgLTEuNTE1NjI1IDQuODEyNSAtMS41MTU2MjUgQyA0LjcxODc1IC0xLjUxNTYyNSA0LjcwMzEyNSAtMS40ODQzNzUgNC42ODc1IC0xLjQwNjI1IEMgNC4zNTkzNzUgLTAuMzQzNzUgMy42NzE4NzUgLTAuMTA5Mzc1IDMuMzU5Mzc1IC0wLjEwOTM3NSBDIDIuOTY4NzUgLTAuMTA5Mzc1IDIuODEyNSAtMC40MjE4NzUgMi44MTI1IC0wLjc2NTYyNSBDIDIuODEyNSAtMC45ODQzNzUgMi44NzUgLTEuMjAzMTI1IDIuOTg0Mzc1IC0xLjY0MDYyNSBaIE0gMy4zMTI1IC0zICIvPgo8L2c+CjxnIGlkPSJnbHlwaC0wLTEiPgo8cGF0aCBkPSJNIDQuODI4MTI1IC0zLjc4MTI1IEMgNC44NzUgLTMuOTIxODc1IDQuODc1IC0zLjkzNzUgNC44NzUgLTQuMDE1NjI1IEMgNC44NzUgLTQuMTg3NSA0LjczNDM3NSAtNC4yODEyNSA0LjU3ODEyNSAtNC4yODEyNSBDIDQuNDg0Mzc1IC00LjI4MTI1IDQuMzI4MTI1IC00LjIxODc1IDQuMjM0Mzc1IC00LjA3ODEyNSBDIDQuMjE4NzUgLTQuMDMxMjUgNC4xNDA2MjUgLTMuNzE4NzUgNC4wOTM3NSAtMy41MzEyNSBDIDQuMDMxMjUgLTMuMjgxMjUgMy45NTMxMjUgLTMuMDE1NjI1IDMuODkwNjI1IC0yLjc1IEwgMy40NTMxMjUgLTAuOTUzMTI1IEMgMy40MDYyNSAtMC44MTI1IDIuOTg0Mzc1IC0wLjEwOTM3NSAyLjMyODEyNSAtMC4xMDkzNzUgQyAxLjgxMjUgLTAuMTA5Mzc1IDEuNzAzMTI1IC0wLjU0Njg3NSAxLjcwMzEyNSAtMC45MjE4NzUgQyAxLjcwMzEyNSAtMS4zNzUgMS44NzUgLTEuOTg0Mzc1IDIuMjE4NzUgLTIuODU5Mzc1IEMgMi4zNzUgLTMuMjY1NjI1IDIuNDIxODc1IC0zLjM3NSAyLjQyMTg3NSAtMy41NzgxMjUgQyAyLjQyMTg3NSAtNC4wMzEyNSAyLjA5Mzc1IC00LjM5MDYyNSAxLjU5Mzc1IC00LjM5MDYyNSBDIDAuNjU2MjUgLTQuMzkwNjI1IDAuMjgxMjUgLTIuOTUzMTI1IDAuMjgxMjUgLTIuODU5Mzc1IEMgMC4yODEyNSAtMi43NjU2MjUgMC4zOTA2MjUgLTIuNzY1NjI1IDAuNDA2MjUgLTIuNzY1NjI1IEMgMC41IC0yLjc2NTYyNSAwLjUxNTYyNSAtMi43ODEyNSAwLjU2MjUgLTIuOTM3NSBDIDAuODI4MTI1IC0zLjg3NSAxLjIzNDM3NSAtNC4xNzE4NzUgMS41NjI1IC00LjE3MTg3NSBDIDEuNjU2MjUgLTQuMTcxODc1IDEuODEyNSAtNC4xNzE4NzUgMS44MTI1IC0zLjg1OTM3NSBDIDEuODEyNSAtMy42MDkzNzUgMS43MTg3NSAtMy4zNDM3NSAxLjY1NjI1IC0zLjE1NjI1IEMgMS4yNSAtMi4xMDkzNzUgMS4wNzgxMjUgLTEuNTQ2ODc1IDEuMDc4MTI1IC0xLjA3ODEyNSBDIDEuMDc4MTI1IC0wLjE4NzUgMS43MDMxMjUgMC4xMDkzNzUgMi4yODEyNSAwLjEwOTM3NSBDIDIuNjcxODc1IDAuMTA5Mzc1IDMuMDE1NjI1IC0wLjA2MjUgMy4yOTY4NzUgLTAuMzQzNzUgQyAzLjE1NjI1IDAuMTcxODc1IDMuMDQ2ODc1IDAuNjcxODc1IDIuNjQwNjI1IDEuMTg3NSBDIDIuMzkwNjI1IDEuNTMxMjUgMiAxLjgxMjUgMS41NDY4NzUgMS44MTI1IEMgMS40MDYyNSAxLjgxMjUgMC45Njg3NSAxLjc4MTI1IDAuNzk2ODc1IDEuNDA2MjUgQyAwLjk1MzEyNSAxLjQwNjI1IDEuMDc4MTI1IDEuNDA2MjUgMS4yMTg3NSAxLjI4MTI1IEMgMS4zMjgxMjUgMS4xODc1IDEuNDIxODc1IDEuMDYyNSAxLjQyMTg3NSAwLjg3NSBDIDEuNDIxODc1IDAuNTYyNSAxLjE1NjI1IDAuNTMxMjUgMS4wNDY4NzUgMC41MzEyNSBDIDAuODI4MTI1IDAuNTMxMjUgMC41IDAuNjg3NSAwLjUgMS4xNzE4NzUgQyAwLjUgMS42NzE4NzUgMC45Mzc1IDIuMDMxMjUgMS41NDY4NzUgMi4wMzEyNSBDIDIuNTc4MTI1IDIuMDMxMjUgMy41OTM3NSAxLjE0MDYyNSAzLjg3NSAwLjAxNTYyNSBaIE0gNC44MjgxMjUgLTMuNzgxMjUgIi8+CjwvZz4KPGcgaWQ9ImdseXBoLTAtMiI+CjxwYXRoIGQ9Ik0gMy43MDMxMjUgLTMuNzUgQyAzLjUzMTI1IC00LjEyNSAzLjIzNDM3NSAtNC4zOTA2MjUgMi43OTY4NzUgLTQuMzkwNjI1IEMgMS42MjUgLTQuMzkwNjI1IDAuMzkwNjI1IC0yLjkzNzUgMC4zOTA2MjUgLTEuNDg0Mzc1IEMgMC4zOTA2MjUgLTAuNTQ2ODc1IDAuOTM3NSAwLjEwOTM3NSAxLjcxODc1IDAuMTA5Mzc1IEMgMS45MjE4NzUgMC4xMDkzNzUgMi40MjE4NzUgMC4wNjI1IDMuMDE1NjI1IC0wLjY0MDYyNSBDIDMuMDkzNzUgLTAuMjE4NzUgMy40Mzc1IDAuMTA5Mzc1IDMuOTIxODc1IDAuMTA5Mzc1IEMgNC4yNjU2MjUgMC4xMDkzNzUgNC40ODQzNzUgLTAuMTI1IDQuNjU2MjUgLTAuNDM3NSBDIDQuODEyNSAtMC43OTY4NzUgNC45NTMxMjUgLTEuNDA2MjUgNC45NTMxMjUgLTEuNDIxODc1IEMgNC45NTMxMjUgLTEuNTE1NjI1IDQuODU5Mzc1IC0xLjUxNTYyNSA0LjgyODEyNSAtMS41MTU2MjUgQyA0LjczNDM3NSAtMS41MTU2MjUgNC43MTg3NSAtMS40ODQzNzUgNC42ODc1IC0xLjM0Mzc1IEMgNC41MTU2MjUgLTAuNzAzMTI1IDQuMzQzNzUgLTAuMTA5Mzc1IDMuOTM3NSAtMC4xMDkzNzUgQyAzLjY3MTg3NSAtMC4xMDkzNzUgMy42NDA2MjUgLTAuMzc1IDMuNjQwNjI1IC0wLjU2MjUgQyAzLjY0MDYyNSAtMC43ODEyNSAzLjY1NjI1IC0wLjg1OTM3NSAzLjc2NTYyNSAtMS4yOTY4NzUgQyAzLjg3NSAtMS43MTg3NSAzLjg5MDYyNSAtMS44MTI1IDMuOTg0Mzc1IC0yLjIwMzEyNSBMIDQuMzQzNzUgLTMuNTkzNzUgQyA0LjQwNjI1IC0zLjg1OTM3NSA0LjQwNjI1IC0zLjg5MDYyNSA0LjQwNjI1IC0zLjkyMTg3NSBDIDQuNDA2MjUgLTQuMDkzNzUgNC4yOTY4NzUgLTQuMTg3NSA0LjEyNSAtNC4xODc1IEMgMy44OTA2MjUgLTQuMTg3NSAzLjczNDM3NSAtMy45Njg3NSAzLjcwMzEyNSAtMy43NSBaIE0gMy4wNjI1IC0xLjE4NzUgQyAzLjAxNTYyNSAtMSAzLjAxNTYyNSAtMC45ODQzNzUgMi44NTkzNzUgLTAuODEyNSBDIDIuNDIxODc1IC0wLjI2NTYyNSAyLjAxNTYyNSAtMC4xMDkzNzUgMS43MzQzNzUgLTAuMTA5Mzc1IEMgMS4yNSAtMC4xMDkzNzUgMS4xMDkzNzUgLTAuNjU2MjUgMS4xMDkzNzUgLTEuMDQ2ODc1IEMgMS4xMDkzNzUgLTEuNTQ2ODc1IDEuNDIxODc1IC0yLjc2NTYyNSAxLjY1NjI1IC0zLjIxODc1IEMgMS45NTMxMjUgLTMuODEyNSAyLjQwNjI1IC00LjE3MTg3NSAyLjc5Njg3NSAtNC4xNzE4NzUgQyAzLjQ1MzEyNSAtNC4xNzE4NzUgMy41OTM3NSAtMy4zNTkzNzUgMy41OTM3NSAtMy4yOTY4NzUgQyAzLjU5Mzc1IC0zLjIzNDM3NSAzLjU2MjUgLTMuMTg3NSAzLjU2MjUgLTMuMTI1IFogTSAzLjA2MjUgLTEuMTg3NSAiLz4KPC9nPgo8ZyBpZD0iZ2x5cGgtMC0zIj4KPHBhdGggZD0iTSAyLjM3NSAtNi43ODEyNSBDIDIuMzc1IC02Ljc5Njg3NSAyLjM3NSAtNi44OTA2MjUgMi4yNSAtNi44OTA2MjUgQyAyLjAxNTYyNSAtNi44OTA2MjUgMS4yOTY4NzUgLTYuODEyNSAxLjAzMTI1IC02Ljc5Njg3NSBDIDAuOTUzMTI1IC02Ljc4MTI1IDAuODQzNzUgLTYuNzgxMjUgMC44NDM3NSAtNi41OTM3NSBDIDAuODQzNzUgLTYuNDg0Mzc1IDAuOTM3NSAtNi40ODQzNzUgMS4wNzgxMjUgLTYuNDg0Mzc1IEMgMS41NjI1IC02LjQ4NDM3NSAxLjU3ODEyNSAtNi40MDYyNSAxLjU3ODEyNSAtNi4zMTI1IEMgMS41NzgxMjUgLTYuMjM0Mzc1IDEuNDg0Mzc1IC01LjkwNjI1IDEuNDM3NSAtNS42ODc1IEwgMC42MjUgLTIuNDUzMTI1IEMgMC41IC0xLjk1MzEyNSAwLjQ2ODc1IC0xLjc5Njg3NSAwLjQ2ODc1IC0xLjQ1MzEyNSBDIDAuNDY4NzUgLTAuNSAxIDAuMTA5Mzc1IDEuNzM0Mzc1IDAuMTA5Mzc1IEMgMi45MDYyNSAwLjEwOTM3NSA0LjEyNSAtMS4zNzUgNC4xMjUgLTIuNzk2ODc1IEMgNC4xMjUgLTMuNzAzMTI1IDMuNTkzNzUgLTQuMzkwNjI1IDIuNzk2ODc1IC00LjM5MDYyNSBDIDIuMzQzNzUgLTQuMzkwNjI1IDEuOTM3NSAtNC4xMDkzNzUgMS42NDA2MjUgLTMuNzk2ODc1IFogTSAxLjQzNzUgLTMuMDMxMjUgQyAxLjUgLTMuMjUgMS41IC0zLjI2NTYyNSAxLjU5Mzc1IC0zLjM3NSBDIDIuMDc4MTI1IC00LjAzMTI1IDIuNTMxMjUgLTQuMTcxODc1IDIuNzgxMjUgLTQuMTcxODc1IEMgMy4xNDA2MjUgLTQuMTcxODc1IDMuNDA2MjUgLTMuODc1IDMuNDA2MjUgLTMuMjM0Mzc1IEMgMy40MDYyNSAtMi42NTYyNSAzLjA3ODEyNSAtMS41MTU2MjUgMi45MDYyNSAtMS4xNDA2MjUgQyAyLjU3ODEyNSAtMC40Njg3NSAyLjEwOTM3NSAtMC4xMDkzNzUgMS43MzQzNzUgLTAuMTA5Mzc1IEMgMS4zOTA2MjUgLTAuMTA5Mzc1IDEuMDYyNSAtMC4zNzUgMS4wNjI1IC0xLjEwOTM3NSBDIDEuMDYyNSAtMS4yOTY4NzUgMS4wNjI1IC0xLjQ4NDM3NSAxLjIxODc1IC0yLjEwOTM3NSBaIE0gMS40Mzc1IC0zLjAzMTI1ICIvPgo8L2c+CjxnIGlkPSJnbHlwaC0wLTQiPgo8cGF0aCBkPSJNIDMuNjQwNjI1IC0zLjk2ODc1IEwgNC41IC0zLjk2ODc1IEMgNC43MDMxMjUgLTMuOTY4NzUgNC43OTY4NzUgLTMuOTY4NzUgNC43OTY4NzUgLTQuMTcxODc1IEMgNC43OTY4NzUgLTQuMjgxMjUgNC43MDMxMjUgLTQuMjgxMjUgNC41MzEyNSAtNC4yODEyNSBMIDMuNzAzMTI1IC00LjI4MTI1IEwgMy45MjE4NzUgLTUuNDIxODc1IEMgMy45NTMxMjUgLTUuNjI1IDQuMDkzNzUgLTYuMzI4MTI1IDQuMTU2MjUgLTYuNDUzMTI1IEMgNC4yNSAtNi42NDA2MjUgNC40MDYyNSAtNi43ODEyNSA0LjYyNSAtNi43ODEyNSBDIDQuNjU2MjUgLTYuNzgxMjUgNC45MjE4NzUgLTYuNzgxMjUgNS4xMDkzNzUgLTYuNjA5Mzc1IEMgNC42NzE4NzUgLTYuNTYyNSA0LjU3ODEyNSAtNi4yMTg3NSA0LjU3ODEyNSAtNi4wNzgxMjUgQyA0LjU3ODEyNSAtNS44NDM3NSA0Ljc1IC01LjcxODc1IDQuOTM3NSAtNS43MTg3NSBDIDUuMjAzMTI1IC01LjcxODc1IDUuNDg0Mzc1IC01LjkzNzUgNS40ODQzNzUgLTYuMzEyNSBDIDUuNDg0Mzc1IC02Ljc4MTI1IDUuMDMxMjUgLTcgNC42MjUgLTcgQyA0LjI4MTI1IC03IDMuNjU2MjUgLTYuODI4MTI1IDMuMzU5Mzc1IC01Ljg0Mzc1IEMgMy4yOTY4NzUgLTUuNjQwNjI1IDMuMjY1NjI1IC01LjUzMTI1IDMuMDMxMjUgLTQuMjgxMjUgTCAyLjM0Mzc1IC00LjI4MTI1IEMgMi4xNTYyNSAtNC4yODEyNSAyLjA0Njg3NSAtNC4yODEyNSAyLjA0Njg3NSAtNC4wOTM3NSBDIDIuMDQ2ODc1IC0zLjk2ODc1IDIuMTQwNjI1IC0zLjk2ODc1IDIuMzI4MTI1IC0zLjk2ODc1IEwgMi45ODQzNzUgLTMuOTY4NzUgTCAyLjIzNDM3NSAtMC4wNDY4NzUgQyAyLjA2MjUgMC45MjE4NzUgMS44OTA2MjUgMS44MTI1IDEuMzc1IDEuODEyNSBDIDEuMzI4MTI1IDEuODEyNSAxLjA3ODEyNSAxLjgxMjUgMC44OTA2MjUgMS42NDA2MjUgQyAxLjM0Mzc1IDEuNjA5Mzc1IDEuNDM3NSAxLjI1IDEuNDM3NSAxLjEwOTM3NSBDIDEuNDM3NSAwLjg3NSAxLjI2NTYyNSAwLjc1IDEuMDc4MTI1IDAuNzUgQyAwLjgxMjUgMC43NSAwLjUzMTI1IDAuOTY4NzUgMC41MzEyNSAxLjM0Mzc1IEMgMC41MzEyNSAxLjc5Njg3NSAwLjk2ODc1IDIuMDMxMjUgMS4zNzUgMi4wMzEyNSBDIDEuOTIxODc1IDIuMDMxMjUgMi4zMTI1IDEuNDUzMTI1IDIuNSAxLjA3ODEyNSBDIDIuODEyNSAwLjQ1MzEyNSAzLjA0Njg3NSAtMC43NSAzLjA0Njg3NSAtMC44MjgxMjUgWiBNIDMuNjQwNjI1IC0zLjk2ODc1ICIvPgo8L2c+CjxnIGlkPSJnbHlwaC0xLTAiPgo8cGF0aCBkPSJNIDQuOTIxODc1IC0xLjU2MjUgQyA0LjkyMTg3NSAtMS42MjUgNC44NzUgLTEuNjI1IDQuODI4MTI1IC0xLjYyNSBDIDQuNjU2MjUgLTEuNjI1IDQuNDIxODc1IC0xLjQ4NDM3NSA0LjQwNjI1IC0xLjQ4NDM3NSBDIDQuMjE4NzUgLTEuMzQzNzUgNC4xNzE4NzUgLTEuMjgxMjUgNC4wNDY4NzUgLTEuMTA5Mzc1IEMgMy43NSAtMC42NDA2MjUgMy4zMTI1IC0wLjMxMjUgMi42NTYyNSAtMC4zMTI1IEMgMS43NjU2MjUgLTAuMzEyNSAwLjk2ODc1IC0wLjk1MzEyNSAwLjk2ODc1IC0yLjQzNzUgQyAwLjk2ODc1IC0zLjM0Mzc1IDEuMzI4MTI1IC00LjUxNTYyNSAxLjg0Mzc1IC01LjMxMjUgQyAyLjI4MTI1IC01LjkzNzUgMi44MjgxMjUgLTYuNDUzMTI1IDMuODQzNzUgLTYuNDUzMTI1IEMgNC4yMTg3NSAtNi40NTMxMjUgNC40Njg3NSAtNi4zMTI1IDQuNDY4NzUgLTUuOTUzMTI1IEMgNC40Njg3NSAtNS42MDkzNzUgNC4wOTM3NSAtNC45MDYyNSAzLjk2ODc1IC00LjcwMzEyNSBDIDMuOTIxODc1IC00LjU5Mzc1IDMuOTIxODc1IC00LjU3ODEyNSAzLjkyMTg3NSAtNC41NDY4NzUgQyAzLjkyMTg3NSAtNC40ODQzNzUgMy45Njg3NSAtNC40ODQzNzUgNC4wMzEyNSAtNC40ODQzNzUgQyA0LjIxODc1IC00LjQ4NDM3NSA0LjU5Mzc1IC00LjcwMzEyNSA0LjcwMzEyNSAtNC44NTkzNzUgQyA0LjczNDM3NSAtNC45MDYyNSA1LjMxMjUgLTUuODc1IDUuMzEyNSAtNi4zNzUgQyA1LjMxMjUgLTYuOTIxODc1IDQuODU5Mzc1IC03IDQuNSAtNyBDIDMuMDYyNSAtNyAxLjg3NSAtNi4wNjI1IDEuNDIxODc1IC01LjUgQyAwLjIzNDM3NSAtNC4wNzgxMjUgMC4xMjUgLTIuNTMxMjUgMC4xMjUgLTIuMDE1NjI1IEMgMC4xMjUgLTAuNTYyNSAwLjg1OTM3NSAwLjIzNDM3NSAyIDAuMjM0Mzc1IEMgMy42MDkzNzUgMC4yMzQzNzUgNC45MjE4NzUgLTEuMzEyNSA0LjkyMTg3NSAtMS41NjI1IFogTSA0LjkyMTg3NSAtMS41NjI1ICIvPgo8L2c+CjxnIGlkPSJnbHlwaC0xLTEiPgo8cGF0aCBkPSJNIDUuOTA2MjUgLTEuNjQwNjI1IEMgNS45Njg3NSAtMS4wMTU2MjUgNi4wNzgxMjUgLTAuNTYyNSA2LjEyNSAtMC4zNzUgQyA2LjIzNDM3NSAwLjA3ODEyNSA2LjI5Njg3NSAwLjI5Njg3NSA2LjcxODc1IDAuMjk2ODc1IEMgNy4xNzE4NzUgMC4yOTY4NzUgNy45Mzc1IC0wLjE1NjI1IDcuOTM3NSAtMC4zNDM3NSBDIDcuOTM3NSAtMC4zOTA2MjUgNy44OTA2MjUgLTAuNDIxODc1IDcuODQzNzUgLTAuNDIxODc1IEMgNy43MTg3NSAtMC40MjE4NzUgNy41IC0wLjMxMjUgNy40Njg3NSAtMC4yODEyNSBDIDcuNDA2MjUgLTAuMjUgNy4zOTA2MjUgLTAuMjUgNy4zNTkzNzUgLTAuMjUgQyA3LjA3ODEyNSAtMC4yNSA3LjAzMTI1IC0wLjUxNTYyNSA2LjkwNjI1IC0xLjEwOTM3NSBDIDYuODQzNzUgLTEuNDM3NSA2Ljc1IC0xLjg0Mzc1IDYuNjcxODc1IC0zLjIwMzEyNSBDIDYuNTkzNzUgLTQuMjE4NzUgNi41NjI1IC01LjIzNDM3NSA2LjU2MjUgLTYuMjM0Mzc1IEMgNi41NjI1IC02LjQ4NDM3NSA2LjU2MjUgLTYuNzM0Mzc1IDYuNTYyNSAtNi45Njg3NSBDIDYuNTYyNSAtNy4xNDA2MjUgNi41NjI1IC03LjE3MTg3NSA2LjQ1MzEyNSAtNy4xNzE4NzUgQyA2LjMxMjUgLTcuMTcxODc1IDUuOTA2MjUgLTcgNS43MzQzNzUgLTYuNzM0Mzc1IEwgNS42NzE4NzUgLTYuNjI1IEMgNC44NzUgLTQuOTUzMTI1IDQuMTQwNjI1IC0zLjc1IDMuNjI1IC0yLjkzNzUgQyAzLjA0Njg3NSAtMi4wMzEyNSAyIC0wLjQyMTg3NSAxLjQ2ODc1IC0wLjQyMTg3NSBDIDEuMTA5Mzc1IC0wLjQyMTg3NSAwLjc5Njg3NSAtMC42NTYyNSAwLjcwMzEyNSAtMS4wMTU2MjUgQyAwLjcwMzEyNSAtMS4wMzEyNSAwLjY3MTg3NSAtMS4wOTM3NSAwLjY0MDYyNSAtMS4wOTM3NSBDIDAuNDg0Mzc1IC0xLjA5Mzc1IDAuMjY1NjI1IC0wLjYwOTM3NSAwLjI2NTYyNSAtMC4zNDM3NSBDIDAuMjY1NjI1IDAuMDYyNSAwLjcwMzEyNSAwLjUgMS4xNTYyNSAwLjUgQyAxLjg0Mzc1IDAuNSAyLjk4NDM3NSAtMS4yOTY4NzUgMy4yMDMxMjUgLTEuNjQwNjI1IFogTSA1LjcxODc1IC01Ljk1MzEyNSBMIDUuNzE4NzUgLTUuMzc1IEMgNS43MTg3NSAtNC43OTY4NzUgNS43MzQzNzUgLTQuMjE4NzUgNS43NjU2MjUgLTMuNjQwNjI1IEMgNS43ODEyNSAtMy40NTMxMjUgNS44MTI1IC0yLjcwMzEyNSA1Ljg1OTM3NSAtMi4xODc1IEwgNC4wNDY4NzUgLTIuMTg3NSBDIDMuODkwNjI1IC0yLjE4NzUgMy43MzQzNzUgLTIuMTg3NSAzLjQ4NDM3NSAtMi4wMzEyNSBDIDQuMTcxODc1IC0zLjA5Mzc1IDQuNzUgLTQuMTQwNjI1IDQuODEyNSAtNC4yNSBDIDUuMzEyNSAtNS4xMjUgNS41NzgxMjUgLTUuNzAzMTI1IDUuNzAzMTI1IC01Ljk1MzEyNSBaIE0gNS43MTg3NSAtNS45NTMxMjUgIi8+CjwvZz4KPGcgaWQ9ImdseXBoLTItMCI+CjxwYXRoIGQ9Ik0gMi44MjgxMjUgLTIuNzUgTCAzLjUxNTYyNSAtMi43NSBDIDMuNjU2MjUgLTIuNzUgMy43MzQzNzUgLTIuNzUgMy43MzQzNzUgLTIuOTA2MjUgQyAzLjczNDM3NSAtMyAzLjY1NjI1IC0zIDMuNTMxMjUgLTMgTCAyLjg3NSAtMyBDIDMuMDMxMjUgLTMuODc1IDMuMDkzNzUgLTQuMjAzMTI1IDMuMTU2MjUgLTQuNDA2MjUgQyAzLjE4NzUgLTQuNTQ2ODc1IDMuMzQzNzUgLTQuNzAzMTI1IDMuNSAtNC43MDMxMjUgQyAzLjUxNTYyNSAtNC43MDMxMjUgMy43MDMxMjUgLTQuNzAzMTI1IDMuODI4MTI1IC00LjYwOTM3NSBDIDMuNTQ2ODc1IC00LjUzMTI1IDMuNTMxMjUgLTQuMjgxMjUgMy41MzEyNSAtNC4yMzQzNzUgQyAzLjUzMTI1IC00LjA3ODEyNSAzLjY0MDYyNSAtMy45ODQzNzUgMy43OTY4NzUgLTMuOTg0Mzc1IEMgMy45ODQzNzUgLTMuOTg0Mzc1IDQuMjAzMTI1IC00LjE0MDYyNSA0LjIwMzEyNSAtNC40MDYyNSBDIDQuMjAzMTI1IC00LjcxODc1IDMuODU5Mzc1IC00Ljg5MDYyNSAzLjUgLTQuODkwNjI1IEMgMy4yMDMxMjUgLTQuODkwNjI1IDIuODU5Mzc1IC00LjcxODc1IDIuNjcxODc1IC00LjM3NSBDIDIuNTMxMjUgLTQuMTA5Mzc1IDIuNDY4NzUgLTMuNzk2ODc1IDIuMzI4MTI1IC0zIEwgMS43ODEyNSAtMyBDIDEuNjQwNjI1IC0zIDEuNTQ2ODc1IC0zIDEuNTQ2ODc1IC0yLjg0Mzc1IEMgMS41NDY4NzUgLTIuNzUgMS42NDA2MjUgLTIuNzUgMS43NjU2MjUgLTIuNzUgTCAyLjI4MTI1IC0yLjc1IEMgMi4yODEyNSAtMi43MDMxMjUgMS44MjgxMjUgLTAuMjAzMTI1IDEuNjcxODc1IDAuNTQ2ODc1IEMgMS42NDA2MjUgMC43MDMxMjUgMS41MTU2MjUgMS4yMTg3NSAxLjE4NzUgMS4yMTg3NSBDIDEuMTcxODc1IDEuMjE4NzUgMS4wMTU2MjUgMS4yMTg3NSAwLjg3NSAxLjE0MDYyNSBDIDEuMTU2MjUgMS4wNDY4NzUgMS4xODc1IDAuNzk2ODc1IDEuMTg3NSAwLjc2NTYyNSBDIDEuMTg3NSAwLjYwOTM3NSAxLjA2MjUgMC41IDAuOTA2MjUgMC41IEMgMC43MTg3NSAwLjUgMC41IDAuNjU2MjUgMC41IDAuOTIxODc1IEMgMC41IDEuMjM0Mzc1IDAuODI4MTI1IDEuNDIxODc1IDEuMTg3NSAxLjQyMTg3NSBDIDEuNjI1IDEuNDIxODc1IDEuOTM3NSAwLjk1MzEyNSAyLjAxNTYyNSAwLjgxMjUgQyAyLjI2NTYyNSAwLjM0Mzc1IDIuNDIxODc1IC0wLjUxNTYyNSAyLjQzNzUgLTAuNTkzNzUgWiBNIDIuODI4MTI1IC0yLjc1ICIvPgo8L2c+CjxnIGlkPSJnbHlwaC0zLTAiPgo8cGF0aCBkPSJNIDYuODI4MTI1IC0zLjI1IEMgNi45Njg3NSAtMy4yNSA3LjE3MTg3NSAtMy4yNSA3LjE3MTg3NSAtMy40NTMxMjUgQyA3LjE3MTg3NSAtMy42NDA2MjUgNi45Njg3NSAtMy42NDA2MjUgNi44NDM3NSAtMy42NDA2MjUgTCAwLjg5MDYyNSAtMy42NDA2MjUgQyAwLjc1IC0zLjY0MDYyNSAwLjU2MjUgLTMuNjQwNjI1IDAuNTYyNSAtMy40NTMxMjUgQyAwLjU2MjUgLTMuMjUgMC43NSAtMy4yNSAwLjg5MDYyNSAtMy4yNSBaIE0gNi44NDM3NSAtMS4zMjgxMjUgQyA2Ljk2ODc1IC0xLjMyODEyNSA3LjE3MTg3NSAtMS4zMjgxMjUgNy4xNzE4NzUgLTEuNTE1NjI1IEMgNy4xNzE4NzUgLTEuNzE4NzUgNi45Njg3NSAtMS43MTg3NSA2LjgyODEyNSAtMS43MTg3NSBMIDAuODkwNjI1IC0xLjcxODc1IEMgMC43NSAtMS43MTg3NSAwLjU2MjUgLTEuNzE4NzUgMC41NjI1IC0xLjUxNTYyNSBDIDAuNTYyNSAtMS4zMjgxMjUgMC43NSAtMS4zMjgxMjUgMC44OTA2MjUgLTEuMzI4MTI1IFogTSA2Ljg0Mzc1IC0xLjMyODEyNSAiLz4KPC9nPgo8ZyBpZD0iZ2x5cGgtMy0xIj4KPHBhdGggZD0iTSAyLjkyMTg3NSAtNi4zNTkzNzUgQyAyLjkyMTg3NSAtNi41OTM3NSAyLjkyMTg3NSAtNi42MjUgMi42ODc1IC02LjYyNSBDIDIuMDc4MTI1IC01Ljk4NDM3NSAxLjIwMzEyNSAtNS45ODQzNzUgMC44OTA2MjUgLTUuOTg0Mzc1IEwgMC44OTA2MjUgLTUuNjcxODc1IEMgMS4wNzgxMjUgLTUuNjcxODc1IDEuNjcxODc1IC01LjY3MTg3NSAyLjE4NzUgLTUuOTM3NSBMIDIuMTg3NSAtMC43ODEyNSBDIDIuMTg3NSAtMC40MjE4NzUgMi4xNTYyNSAtMC4zMTI1IDEuMjY1NjI1IC0wLjMxMjUgTCAwLjkzNzUgLTAuMzEyNSBMIDAuOTM3NSAwIEMgMS4yOTY4NzUgLTAuMDMxMjUgMi4xNTYyNSAtMC4wMzEyNSAyLjU0Njg3NSAtMC4wMzEyNSBDIDIuOTUzMTI1IC0wLjAzMTI1IDMuODEyNSAtMC4wMzEyNSA0LjE1NjI1IDAgTCA0LjE1NjI1IC0wLjMxMjUgTCAzLjg0Mzc1IC0wLjMxMjUgQyAyLjk1MzEyNSAtMC4zMTI1IDIuOTIxODc1IC0wLjQyMTg3NSAyLjkyMTg3NSAtMC43ODEyNSBaIE0gMi45MjE4NzUgLTYuMzU5Mzc1ICIvPgo8L2c+CjxnIGlkPSJnbHlwaC0zLTIiPgo8cGF0aCBkPSJNIDIuOTIxODc1IC0xLjY0MDYyNSBMIDIuOTIxODc1IC0wLjc4MTI1IEMgMi45MjE4NzUgLTAuNDIxODc1IDIuOTA2MjUgLTAuMzEyNSAyLjE3MTg3NSAtMC4zMTI1IEwgMS45NTMxMjUgLTAuMzEyNSBMIDEuOTUzMTI1IDAgQyAyLjM1OTM3NSAtMC4wMzEyNSAyLjg3NSAtMC4wMzEyNSAzLjI5Njg3NSAtMC4wMzEyNSBDIDMuNzE4NzUgLTAuMDMxMjUgNC4yNSAtMC4wMzEyNSA0LjY1NjI1IDAgTCA0LjY1NjI1IC0wLjMxMjUgTCA0LjQzNzUgLTAuMzEyNSBDIDMuNzAzMTI1IC0wLjMxMjUgMy42ODc1IC0wLjQyMTg3NSAzLjY4NzUgLTAuNzgxMjUgTCAzLjY4NzUgLTEuNjQwNjI1IEwgNC42ODc1IC0xLjY0MDYyNSBMIDQuNjg3NSAtMS45NTMxMjUgTCAzLjY4NzUgLTEuOTUzMTI1IEwgMy42ODc1IC02LjQ2ODc1IEMgMy42ODc1IC02LjY3MTg3NSAzLjY4NzUgLTYuNzM0Mzc1IDMuNTMxMjUgLTYuNzM0Mzc1IEMgMy40Mzc1IC02LjczNDM3NSAzLjQwNjI1IC02LjczNDM3NSAzLjMyODEyNSAtNi42MDkzNzUgTCAwLjI4MTI1IC0xLjk1MzEyNSBMIDAuMjgxMjUgLTEuNjQwNjI1IFogTSAyLjk4NDM3NSAtMS45NTMxMjUgTCAwLjU2MjUgLTEuOTUzMTI1IEwgMi45ODQzNzUgLTUuNjU2MjUgWiBNIDIuOTg0Mzc1IC0xLjk1MzEyNSAiLz4KPC9nPgo8ZyBpZD0iZ2x5cGgtMy0zIj4KPHBhdGggZD0iTSAzLjI5Njg3NSAyLjM5MDYyNSBDIDMuMjk2ODc1IDIuMzU5Mzc1IDMuMjk2ODc1IDIuMzI4MTI1IDMuMTI1IDIuMTcxODc1IEMgMS44NzUgMC45MjE4NzUgMS41NjI1IC0wLjk2ODc1IDEuNTYyNSAtMi40ODQzNzUgQyAxLjU2MjUgLTQuMjE4NzUgMS45Mzc1IC01LjkzNzUgMy4xNTYyNSAtNy4xODc1IEMgMy4yOTY4NzUgLTcuMjk2ODc1IDMuMjk2ODc1IC03LjMyODEyNSAzLjI5Njg3NSAtNy4zNTkzNzUgQyAzLjI5Njg3NSAtNy40MjE4NzUgMy4yNSAtNy40NTMxMjUgMy4xODc1IC03LjQ1MzEyNSBDIDMuMDkzNzUgLTcuNDUzMTI1IDIuMjAzMTI1IC02Ljc4MTI1IDEuNjA5Mzc1IC01LjUxNTYyNSBDIDEuMTA5Mzc1IC00LjQyMTg3NSAwLjk4NDM3NSAtMy4zMTI1IDAuOTg0Mzc1IC0yLjQ4NDM3NSBDIDAuOTg0Mzc1IC0xLjcwMzEyNSAxLjA5Mzc1IC0wLjUgMS42NDA2MjUgMC42MDkzNzUgQyAyLjIzNDM3NSAxLjg0Mzc1IDMuMDkzNzUgMi40ODQzNzUgMy4xODc1IDIuNDg0Mzc1IEMgMy4yNSAyLjQ4NDM3NSAzLjI5Njg3NSAyLjQ1MzEyNSAzLjI5Njg3NSAyLjM5MDYyNSBaIE0gMy4yOTY4NzUgMi4zOTA2MjUgIi8+CjwvZz4KPGcgaWQ9ImdseXBoLTMtNCI+CjxwYXRoIGQ9Ik0gMi44NzUgLTIuNDg0Mzc1IEMgMi44NzUgLTMuMjY1NjI1IDIuNzY1NjI1IC00LjQ2ODc1IDIuMjE4NzUgLTUuNTc4MTI1IEMgMS42MjUgLTYuODEyNSAwLjc2NTYyNSAtNy40NTMxMjUgMC42NzE4NzUgLTcuNDUzMTI1IEMgMC42MDkzNzUgLTcuNDUzMTI1IDAuNTYyNSAtNy40MDYyNSAwLjU2MjUgLTcuMzU5Mzc1IEMgMC41NjI1IC03LjMyODEyNSAwLjU2MjUgLTcuMjk2ODc1IDAuNzUgLTcuMTI1IEMgMS43MzQzNzUgLTYuMTQwNjI1IDIuMjk2ODc1IC00LjU2MjUgMi4yOTY4NzUgLTIuNDg0Mzc1IEMgMi4yOTY4NzUgLTAuNzgxMjUgMS45MjE4NzUgMC45Njg3NSAwLjcwMzEyNSAyLjIxODc1IEMgMC41NjI1IDIuMzI4MTI1IDAuNTYyNSAyLjM1OTM3NSAwLjU2MjUgMi4zOTA2MjUgQyAwLjU2MjUgMi40Mzc1IDAuNjA5Mzc1IDIuNDg0Mzc1IDAuNjcxODc1IDIuNDg0Mzc1IEMgMC43NjU2MjUgMi40ODQzNzUgMS42NTYyNSAxLjgxMjUgMi4yNSAwLjU0Njg3NSBDIDIuNzUgLTAuNTQ2ODc1IDIuODc1IC0xLjY1NjI1IDIuODc1IC0yLjQ4NDM3NSBaIE0gMi44NzUgLTIuNDg0Mzc1ICIvPgo8L2c+CjwvZz4KPC9kZWZzPgo8cGF0aCBmaWxsPSJub25lIiBzdHJva2Utd2lkdGg9IjAuMTk5MjUiIHN0cm9rZS1saW5lY2FwPSJidXR0IiBzdHJva2UtbGluZWpvaW49Im1pdGVyIiBzdHJva2U9InJnYig4OS45OTkzOSUsIDg5Ljk5OTM5JSwgODkuOTk5MzklKSIgc3Ryb2tlLW9wYWNpdHk9IjEiIHN0cm9rZS1taXRlcmxpbWl0PSIxMCIgZD0iTSAtMTcuMDA4MDQxIDAuMDAwMDg2MTA4MiBMIDE4Ny4wODc4ODYgMC4wMDAwODYxMDgyIE0gLTE3LjAwODA0MSAzNC4wMTgwMzIgTCAxODcuMDg3ODg2IDM0LjAxODAzMiBNIC0xNy4wMDgwNDEgNjguMDMyMDYyIEwgMTg3LjA4Nzg4NiA2OC4wMzIwNjIgTSAtMTcuMDA4MDQxIDEwMi4wNTAwMDggTCAxODcuMDg3ODg2IDEwMi4wNTAwMDggTSAwLjAwMDkzMTU4NCAtMTcuMDA4ODg3IEwgMC4wMDA5MzE1ODQgMTE5LjA1NTA2NCBNIDM0LjAxNDk2MSAtMTcuMDA4ODg3IEwgMzQuMDE0OTYxIDExOS4wNTUwNjQgTSA2OC4wMzI5MDcgLTE3LjAwODg4NyBMIDY4LjAzMjkwNyAxMTkuMDU1MDY0IE0gMTAyLjA0NjkzNyAtMTcuMDA4ODg3IEwgMTAyLjA0NjkzNyAxMTkuMDU1MDY0IE0gMTM2LjA2NDg4MyAtMTcuMDA4ODg3IEwgMTM2LjA2NDg4MyAxMTkuMDU1MDY0IE0gMTcwLjA3ODkxMyAtMTcuMDA4ODg3IEwgMTcwLjA3ODkxMyAxMTkuMDU1MDY0ICIgdHJhbnNmb3JtPSJtYXRyaXgoMC45OTc0MDYsIDAsIDAsIC0wLjk5NzQwNiwgMjAuMTQzNjAyLCAxMjguMTcxOTYxKSIvPgo8cGF0aCBmaWxsPSJub25lIiBzdHJva2Utd2lkdGg9IjAuMzk4NSIgc3Ryb2tlLWxpbmVjYXA9ImJ1dHQiIHN0cm9rZS1saW5lam9pbj0ibWl0ZXIiIHN0cm9rZT0icmdiKDAlLCAwJSwgMCUpIiBzdHJva2Utb3BhY2l0eT0iMSIgc3Ryb2tlLW1pdGVybGltaXQ9IjEwIiBkPSJNIC0xNy4wMDgwNDEgMC4wMDAwODYxMDgyIEwgMTgzLjUwMDQ1MyAwLjAwMDA4NjEwODIgIiB0cmFuc2Zvcm09Im1hdHJpeCgwLjk5NzQwNiwgMCwgMCwgLTAuOTk3NDA2LCAyMC4xNDM2MDIsIDEyOC4xNzE5NjEpIi8+CjxwYXRoIGZpbGwtcnVsZT0ibm9uemVybyIgZmlsbD0icmdiKDAlLCAwJSwgMCUpIiBmaWxsLW9wYWNpdHk9IjEiIGQ9Ik0gMjA2Ljc0NjA5NCAxMjguMTcxODc1IEMgMjA1LjY4NzUgMTI3Ljk3MjY1NiAyMDMuOTY0ODQ0IDEyNy4zNzg5MDYgMjAyLjc3MzQzOCAxMjYuNjc5Njg4IEwgMjAyLjc3MzQzOCAxMjkuNjY0MDYyIEMgMjAzLjk2NDg0NCAxMjguOTY4NzUgMjA1LjY4NzUgMTI4LjM3MTA5NCAyMDYuNzQ2MDk0IDEyOC4xNzE4NzUgIi8+CjxnIGZpbGw9InJnYigwJSwgMCUsIDAlKSIgZmlsbC1vcGFjaXR5PSIxIj4KPHVzZSB4bGluazpocmVmPSIjZ2x5cGgtMC0wIiB4PSIyMDMuOTA0NiIgeT0iMTM1Ljk2MDcwMSIvPgo8L2c+CjxwYXRoIGZpbGw9Im5vbmUiIHN0cm9rZS13aWR0aD0iMC4zOTg1IiBzdHJva2UtbGluZWNhcD0iYnV0dCIgc3Ryb2tlLWxpbmVqb2luPSJtaXRlciIgc3Ryb2tlPSJyZ2IoMCUsIDAlLCAwJSkiIHN0cm9rZS1vcGFjaXR5PSIxIiBzdHJva2UtbWl0ZXJsaW1pdD0iMTAiIGQ9Ik0gMC4wMDA5MzE1ODQgLTE3LjAwODg4NyBMIDAuMDAwOTMxNTg0IDExNS40NzE1NDggIiB0cmFuc2Zvcm09Im1hdHJpeCgwLjk5NzQwNiwgMCwgMCwgLTAuOTk3NDA2LCAyMC4xNDM2MDIsIDEyOC4xNzE5NjEpIi8+CjxwYXRoIGZpbGwtcnVsZT0ibm9uemVybyIgZmlsbD0icmdiKDAlLCAwJSwgMCUpIiBmaWxsLW9wYWNpdHk9IjEiIGQ9Ik0gMjAuMTQ0NTMxIDkuNDI1NzgxIEMgMTkuOTQ1MzEyIDEwLjQ4NDM3NSAxOS4zNDc2NTYgMTIuMjA3MDMxIDE4LjY1MjM0NCAxMy4zOTg0MzggTCAyMS42MzI4MTIgMTMuMzk4NDM4IEMgMjAuOTM3NSAxMi4yMDcwMzEgMjAuMzQzNzUgMTAuNDg0Mzc1IDIwLjE0NDUzMSA5LjQyNTc4MSAiLz4KPGcgZmlsbD0icmdiKDAlLCAwJSwgMCUpIiBmaWxsLW9wYWNpdHk9IjEiPgo8dXNlIHhsaW5rOmhyZWY9IiNnbHlwaC0wLTEiIHg9IjExLjQwNTMzMiIgeT0iMTAuNTk5NzkyIi8+CjwvZz4KPHBhdGggZmlsbC1ydWxlPSJub256ZXJvIiBmaWxsPSJyZ2IoMTAwJSwgODkuOTk5MzklLCA4OS45OTkzOSUpIiBmaWxsLW9wYWNpdHk9IjEiIGQ9Ik0gNTQuMDcwMzEyIDEyOC4xNzE4NzUgTCA1NC4wNzAzMTIgNzcuMjgxMjUgTCA1OC4zMTI1IDczLjk5MjE4OCBMIDYyLjU1NDY4OCA3MC45MTc5NjkgTCA2Ni43OTI5NjkgNjguMDU0Njg4IEwgNzEuMDM1MTU2IDY1LjQwNjI1IEwgNzUuMjc3MzQ0IDYyLjk2ODc1IEwgNzkuNTE1NjI1IDYwLjc0MjE4OCBMIDgzLjc1NzgxMiA1OC43MjY1NjIgTCA4OCA1Ni45MjE4NzUgTCA5Mi4yMzgyODEgNTUuMzMyMDMxIEwgOTYuNDgwNDY5IDUzLjk1MzEyNSBMIDEwMC43MjI2NTYgNTIuNzg5MDYyIEwgMTA0Ljk2NDg0NCA1MS44MzIwMzEgTCAxMDkuMjAzMTI1IDUxLjA5Mzc1IEwgMTEzLjQ0NTMxMiA1MC41NjI1IEwgMTE3LjY4NzUgNTAuMjQyMTg4IEwgMTIxLjkyNTc4MSA1MC4xMzY3MTkgTCAxMjYuMTY3OTY5IDUwLjI0MjE4OCBMIDEzMC40MTAxNTYgNTAuNTYyNSBMIDEzNC42NDg0MzggNTEuMDg5ODQ0IEwgMTM4Ljg5MDYyNSA1MS44MzIwMzEgTCAxNDMuMTMyODEyIDUyLjc4OTA2MiBMIDE0Ny4zNzEwOTQgNTMuOTUzMTI1IEwgMTUxLjYxMzI4MSA1NS4zMzIwMzEgTCAxNTUuODU1NDY5IDU2LjkyMTg3NSBMIDE1NS44NTU0NjkgMTI4LjE3MTg3NSBaIE0gNTQuMDcwMzEyIDEyOC4xNzE4NzUgIi8+CjxwYXRoIGZpbGw9Im5vbmUiIHN0cm9rZS13aWR0aD0iMC43OTcwMSIgc3Ryb2tlLWxpbmVjYXA9ImJ1dHQiIHN0cm9rZS1saW5lam9pbj0ibWl0ZXIiIHN0cm9rZT0icmdiKDEwMCUsIDAlLCAwJSkiIHN0cm9rZS1vcGFjaXR5PSIxIiBzdHJva2UtbWl0ZXJsaW1pdD0iMTAiIGQ9Ik0gNi44MDM3MzggMjQuOTAwNjI3IEwgOC4zODIwNTEgMjYuNjU1MTc5IEwgOS45NjQyODEgMjguMzgyMzE3IEwgMTEuNTQ2NTExIDMwLjA3ODEyMyBMIDEzLjEyNDgyNSAzMS43NDY1MTQgTCAxNC43MDcwNTUgMzMuMzgzNTc0IEwgMTYuMjg1MzY5IDM0Ljk5MzIxOCBMIDE3Ljg2NzU5OSAzNi41NzE1MzIgTCAxOS40NDU5MTIgMzguMTIyNDMxIEwgMjEuMDI4MTQyIDM5LjY0MTk5OCBMIDIyLjYwNjQ1NiA0MS4xMzQxNTEgTCAyNC4xODg2ODYgNDIuNTk0OTcyIEwgMjUuNzcwOTE2IDQ0LjAyODM3OSBMIDI3LjM0OTIzIDQ1LjQzMDQ1NCBMIDI4LjkzMTQ2IDQ2LjgwNTExNCBMIDMwLjUwOTc3MyA0OC4xNDg0NDMgTCAzMi4wOTIwMDMgNDkuNDYwNDQxIEwgMzMuNjcwMzE3IDUwLjc0ODk0IEwgMzUuMjUyNTQ3IDUyLjAwMjE5MiBMIDM2LjgzMDg2MSA1My4yMzE5NDUgTCAzOC40MTMwOTEgNTQuNDI2NDUgTCAzOS45OTUzMjEgNTUuNTk3NDU3IEwgNDEuNTczNjM0IDU2LjczMzIxNiBMIDQzLjE1NTg2NSA1Ny44NDU0NzcgTCA0NC43MzQxNzggNTguOTIyNDkgTCA0Ni4zMTY0MDggNTkuOTc2MDA0IEwgNDcuODk0NzIyIDYwLjk5NDI3MSBMIDQ5LjQ3Njk1MiA2MS45ODkwNCBMIDUxLjA1NTI2NiA2Mi45NDg1NiBMIDUyLjYzNzQ5NiA2My44ODQ1ODMgTCA1NC4yMTk3MjYgNjQuNzg1MzU3IEwgNTUuNzk4MDM5IDY1LjY1ODcxNyBMIDU3LjM4MDI2OSA2Ni41MDQ2NjEgTCA1OC45NTg1ODMgNjcuMzE5Mjc1IEwgNjAuNTQwODEzIDY4LjEwNjQ3NCBMIDYyLjExOTEyNyA2OC44NjIzNDEgTCA2My43MDEzNTcgNjkuNTkwNzkzIEwgNjUuMjc5NjcgNzAuMjg3OTE1IEwgNjYuODYxOSA3MC45NTc2MjEgTCA2OC40NDQxMyA3MS41OTU5OTYgTCA3MC4wMjI0NDQgNzIuMjA2OTU2IEwgNzEuNjA0Njc0IDcyLjc4NjU4NSBMIDczLjE4Mjk4OCA3My4zMzg3OTkgTCA3NC43NjUyMTggNzMuODU5NjgxIEwgNzYuMzQzNTMxIDc0LjM1MzE0OSBMIDc3LjkyNTc2MSA3NC44MTUyODYgTCA3OS41MDQwNzUgNzUuMjUwMDA3IEwgODEuMDg2MzA1IDc1LjY1MzM5OCBMIDgyLjY2ODUzNSA3Ni4wMjkzNzMgTCA4NC4yNDY4NDkgNzYuMzc0MDE3IEwgODUuODI5MDc5IDc2LjY5MTI0NyBMIDg3LjQwNzM5MyA3Ni45NzcxNDUgTCA4OC45ODk2MjMgNzcuMjM1NjI4IEwgOTAuNTY3OTM2IDc3LjQ2Mjc3OSBMIDkyLjE1MDE2NiA3Ny42NjI1MTYgTCA5My43Mjg0OCA3Ny44MzA5MjIgTCA5NS4zMTA3MSA3Ny45NzE5MTMgTCA5Ni44OTI5NCA3OC4wODE1NzIgTCA5OC40NzEyNTQgNzguMTYzODE3IEwgMTAwLjA1MzQ4NCA3OC4yMTQ3MyBMIDEwMS42MzE3OTcgNzguMjM4MjI5IEwgMTAzLjIxNDAyNyA3OC4yMzAzOTYgTCAxMDQuNzkyMzQxIDc4LjE5NTE0OCBMIDEwNi4zNzQ1NzEgNzguMTI4NTY5IEwgMTA3Ljk1Mjg4NSA3OC4wMzA2NTkgTCAxMDkuNTM1MTE1IDc3LjkwOTI1IEwgMTExLjExNzM0NSA3Ny43NTI1OTQgTCAxMTIuNjk1NjU4IDc3LjU3MjQzOSBMIDExNC4yNzc4ODggNzcuMzU3MDM2IEwgMTE1Ljg1NjIwMiA3Ny4xMTgxMzUgTCAxMTcuNDM4NDMyIDc2Ljg0Mzk4NyBMIDExOS4wMTY3NDYgNzYuNTQ2MzM5IEwgMTIwLjU5ODk3NiA3Ni4yMTM0NDQgTCAxMjIuMTc3Mjg5IDc1Ljg1NzA1MSBMIDEyMy43NTk1MiA3NS40NjU0MSBMIDEyNS4zNDE3NSA3NS4wNDYzNTQgTCAxMjYuOTIwMDYzIDc0LjU5OTg4MyBMIDEyOC41MDIyOTMgNzQuMTIyMDgxIEwgMTMwLjA4MDYwNyA3My42MTY4NjQgTCAxMzEuNjYyODM3IDczLjA4MDMxNiBMIDEzMy4yNDExNTEgNzIuNTE2MzUyIEwgMTM0LjgyMzM4MSA3MS45MjEwNTggTCAxMzYuNDAxNjk0IDcxLjI5ODM0OSBMIDEzNy45ODM5MjQgNzAuNjQ0MzA4IEwgMTM5LjU2NjE1NCA2OS45NjI4NTIgTCAxNDEuMTQ0NDY4IDY5LjI1MDA2NiBMIDE0Mi43MjY2OTggNjguNTA5ODY0IEwgMTQ0LjMwNTAxMiA2Ny43MzgzMzEgTCAxNDUuODg3MjQyIDY2LjkzOTM4MyBMIDE0Ny40NjU1NTUgNjYuMTA5MTA0IEwgMTQ5LjA0Nzc4NSA2NS4yNTE0MSBMIDE1MC42MjYwOTkgNjQuMzYyMzg1IEwgMTUyLjIwODMyOSA2My40NDU5NDQgTCAxNTMuNzkwNTU5IDYyLjQ5ODE3MyBMIDE1NS4zNjg4NzMgNjEuNTIyOTg3IEwgMTU2Ljk1MTEwMyA2MC41MTY0NjkgTCAxNTguNTI5NDE2IDU5LjQ4MjUzNyBMIDE2MC4xMTE2NDcgNTguNDE3MjczIEwgMTYxLjY4OTk2IDU3LjMyNDU5NCBMIDE2My4yNzIxOSA1Ni4yMDA1ODQgIiB0cmFuc2Zvcm09Im1hdHJpeCgwLjk5NzQwNiwgMCwgMCwgLTAuOTk3NDA2LCAyMC4xNDM2MDIsIDEyOC4xNzE5NjEpIi8+CjxnIGZpbGw9InJnYigxMDAlLCAwJSwgMCUpIiBmaWxsLW9wYWNpdHk9IjEiPgo8dXNlIHhsaW5rOmhyZWY9IiNnbHlwaC0xLTAiIHg9IjE4Ni42OTgzNTciIHk9Ijc0LjA5MTYzNiIvPgo8L2c+CjxnIGZpbGw9InJnYigxMDAlLCAwJSwgMCUpIiBmaWxsLW9wYWNpdHk9IjEiPgo8dXNlIHhsaW5rOmhyZWY9IiNnbHlwaC0yLTAiIHg9IjE5MS45Mjk3NDkiIHk9Ijc1LjU4MTc2Ii8+CjwvZz4KPHBhdGggZmlsbD0ibm9uZSIgc3Ryb2tlLXdpZHRoPSIwLjc5NzAxIiBzdHJva2UtbGluZWNhcD0iYnV0dCIgc3Ryb2tlLWxpbmVqb2luPSJtaXRlciIgc3Ryb2tlPSJyZ2IoMCUsIDAlLCAwJSkiIHN0cm9rZS1vcGFjaXR5PSIxIiBzdHJva2UtZGFzaGFycmF5PSIyLjk4ODgzIDIuOTg4ODMiIHN0cm9rZS1taXRlcmxpbWl0PSIxMCIgZD0iTSAzNC4wMTQ5NjEgMC4wMDAwODYxMDgyIEwgMzQuMDE0OTYxIDUxLjAyMzA4OSAiIHRyYW5zZm9ybT0ibWF0cml4KDAuOTk3NDA2LCAwLCAwLCAtMC45OTc0MDYsIDIwLjE0MzYwMiwgMTI4LjE3MTk2MSkiLz4KPGcgZmlsbD0icmdiKDAlLCAwJSwgMCUpIiBmaWxsLW9wYWNpdHk9IjEiPgo8dXNlIHhsaW5rOmhyZWY9IiNnbHlwaC0wLTIiIHg9IjQyLjMzNTg3NSIgeT0iMTM4LjI4NDY1NiIvPgo8L2c+CjxnIGZpbGw9InJnYigwJSwgMCUsIDAlKSIgZmlsbC1vcGFjaXR5PSIxIj4KPHVzZSB4bGluazpocmVmPSIjZ2x5cGgtMy0wIiB4PSI1MC4zNTA4NiIgeT0iMTM4LjI4NDY1NiIvPgo8L2c+CjxnIGZpbGw9InJnYigwJSwgMCUsIDAlKSIgZmlsbC1vcGFjaXR5PSIxIj4KPHVzZSB4bGluazpocmVmPSIjZ2x5cGgtMy0xIiB4PSI2MC44NDIwODMiIHk9IjEzOC4yODQ2NTYiLz4KPC9nPgo8cGF0aCBmaWxsPSJub25lIiBzdHJva2Utd2lkdGg9IjAuNzk3MDEiIHN0cm9rZS1saW5lY2FwPSJidXR0IiBzdHJva2UtbGluZWpvaW49Im1pdGVyIiBzdHJva2U9InJnYigwJSwgMCUsIDAlKSIgc3Ryb2tlLW9wYWNpdHk9IjEiIHN0cm9rZS1kYXNoYXJyYXk9IjIuOTg4ODMgMi45ODg4MyIgc3Ryb2tlLW1pdGVybGltaXQ9IjEwIiBkPSJNIDEzNi4wNjQ4ODMgMC4wMDAwODYxMDgyIEwgMTM2LjA2NDg4MyA3MS40MzU0MjMgIiB0cmFuc2Zvcm09Im1hdHJpeCgwLjk5NzQwNiwgMCwgMCwgLTAuOTk3NDA2LCAyMC4xNDM2MDIsIDEyOC4xNzE5NjEpIi8+CjxnIGZpbGw9InJnYigwJSwgMCUsIDAlKSIgZmlsbC1vcGFjaXR5PSIxIj4KPHVzZSB4bGluazpocmVmPSIjZ2x5cGgtMC0zIiB4PSIxNDQuNjExODMzIiB5PSIxMzguNzgxMzY0Ii8+CjwvZz4KPGcgZmlsbD0icmdiKDAlLCAwJSwgMCUpIiBmaWxsLW9wYWNpdHk9IjEiPgo8dXNlIHhsaW5rOmhyZWY9IiNnbHlwaC0zLTAiIHg9IjE1MS42MzkxMDQiIHk9IjEzOC43ODEzNjQiLz4KPC9nPgo8ZyBmaWxsPSJyZ2IoMCUsIDAlLCAwJSkiIGZpbGwtb3BhY2l0eT0iMSI+Cjx1c2UgeGxpbms6aHJlZj0iI2dseXBoLTMtMiIgeD0iMTYyLjEzMDMyNyIgeT0iMTM4Ljc4MTM2NCIvPgo8L2c+CjxnIGZpbGw9InJnYigwJSwgMCUsIDAlKSIgZmlsbC1vcGFjaXR5PSIxIj4KPHVzZSB4bGluazpocmVmPSIjZ2x5cGgtMS0xIiB4PSIxMDAuOTk1Mjg5IiB5PSIxMDQuNDI0NzMzIi8+CjwvZz4KPGcgZmlsbD0icmdiKDAlLCAwJSwgMCUpIiBmaWxsLW9wYWNpdHk9IjEiPgo8dXNlIHhsaW5rOmhyZWY9IiNnbHlwaC0wLTEiIHg9Ijg2LjA1MjE2IiB5PSI0NC4xNDQ1MzUiLz4KPC9nPgo8ZyBmaWxsPSJyZ2IoMCUsIDAlLCAwJSkiIGZpbGwtb3BhY2l0eT0iMSI+Cjx1c2UgeGxpbms6aHJlZj0iI2dseXBoLTMtMCIgeD0iOTQuMDQ0Mjg5IiB5PSI0NC4xNDQ1MzUiLz4KPC9nPgo8ZyBmaWxsPSJyZ2IoMCUsIDAlLCAwJSkiIGZpbGwtb3BhY2l0eT0iMSI+Cjx1c2UgeGxpbms6aHJlZj0iI2dseXBoLTAtNCIgeD0iMTA0LjUyNTU3NiIgeT0iNDQuMTQ0NTM1Ii8+CjwvZz4KPGcgZmlsbD0icmdiKDAlLCAwJSwgMCUpIiBmaWxsLW9wYWNpdHk9IjEiPgo8dXNlIHhsaW5rOmhyZWY9IiNnbHlwaC0zLTMiIHg9IjExMC40NjM3NzkiIHk9IjQ0LjE0NDUzNSIvPgo8L2c+CjxnIGZpbGw9InJnYigwJSwgMCUsIDAlKSIgZmlsbC1vcGFjaXR5PSIxIj4KPHVzZSB4bGluazpocmVmPSIjZ2x5cGgtMC0wIiB4PSIxMTQuMzI4MTgyIiB5PSI0NC4xNDQ1MzUiLz4KPC9nPgo8ZyBmaWxsPSJyZ2IoMCUsIDAlLCAwJSkiIGZpbGwtb3BhY2l0eT0iMSI+Cjx1c2UgeGxpbms6aHJlZj0iI2dseXBoLTMtNCIgeD0iMTIwLjAwNzAzNiIgeT0iNDQuMTQ0NTM1Ii8+CjwvZz4KPC9zdmc+Cg==" class="max-w-full" alt="Figure du cours" /></div>
\end{center}

### Propriétés de l'intégrale

Pour toutes fonctions $f$ et $g$ continues sur $[a, b]$ et tous réels $\alpha, \beta$ :
\begin{itemize}
    \item \textbf{Linéarité} : $\int_a^b (\alpha f(x) + \beta g(x)) \dd x = \alpha \int_a^b f(x) \dd x + \beta \int_a^b g(x) \dd x$.
    \item \textbf{Relation de Chasles} : Pour tout $c \in [a, b]$, $\int_a^b f(x) \dd x = \int_a^c f(x) \dd x + \int_c^b f(x) \dd x$.
    \item \textbf{Positivité et Ordre} : Si $f(x) \ge 0$ sur $[a,b]$, alors $\int_a^b f(x) \dd x \ge 0$. Si $f(x) \le g(x)$, alors $\int_a^b f(x) \dd x \le \int_a^b g(x) \dd x$.
\end{itemize}

### Valeur moyenne d'une fonction

\begin{definition}[Valeur moyenne]
Soit $f$ une fonction continue sur un intervalle $[a, b]$ (avec $a < b$).
La **valeur moyenne** $\mu$ de $f$ sur $[a, b]$ est le réel :
\[
\mu = \frac{1}{b-a} \int_a^b f(x) \dd x
\]
\end{definition}

## L'Intégration par Parties (IPP)

Lorsque l'on cherche l'intégrale d'un produit de deux fonctions dont on ne repère pas de forme de composée immédiate, on utilise la méthode d'intégration par parties.

\begin{theoreme}[Intégration par parties]
Soient $u$ et $v$ deux fonctions dérivables sur $[a, b]$ dont les dérivées $u'$ and $v'$ sont continues sur $[a, b]$. On a :
\[
\int_a^b u'(x) v(x) \dd x = \Big[ u(x) v(x) \Big]_a^b - \int_a^b u(x) v'(x) \dd x
\]
\end{theoreme}

## Équations Différentielles

Une équation différentielle est une équation dont l'inconnue est une fonction, et dans laquelle apparaissent une ou plusieurs dérivées de cette fonction.

### Équations différentielles du premier ordre : $y' = ay + b$

\begin{theoreme}[Solutions de $y' = ay + b$]
Soit $a$ et $b$ deux réels.
\begin{itemize}
    \item Si $a = 0$, l'équation s'écrit $y' = b$. Les solutions sont les fonctions de la forme :
    \[
    y(x) = bx + C \quad (\text{où } C \in \R)
    \]
    \item Si $a \ne 0$, les solutions de l'équation $y' = ay + b$ sur $\R$ sont les fonctions de la forme :
    \[
    y(x) = C e^{ax} - \frac{b}{a} \quad (\text{où } C \in \R)
    \]
\end{itemize}
\end{theoreme}

\begin{propriete}[Solution unique vérifiant une condition initiale]
Pour tous réels $x_0$ et $y_0$, il existe une **unique** solution $f$ de l'équation $y' = ay + b$ vérifiant la condition initiale $f(x_0) = y_0$.
\end{propriete}

### Équations différentielles du second ordre : $y'' + ay' + by = 0$

Considérons l'équation $y'' + ay' + by = 0$ où $a$ et $b$ sont des réels.
Pour la résoudre, on associe l'équation du second degré dans $\Cnum$ appelée **équation caractéristique** :
\[
r^2 + ar + b = 0
\]
Soit $\Delta = a^2 - 4b$ son discriminant.

\begin{theoreme}[Solutions de $y'' + ay' + by = 0$]
\begin{itemize}
    \item \textbf{Si $\Delta > 0$} : L'équation caractéristique admet deux racines réelles distinctes $r_1$ et $r_2$.
    Les solutions de l'équation différentielle sur $\R$ sont les fonctions de la forme :
    \[
    y(x) = \alpha e^{r_1 x} + \beta e^{r_2 x} \quad (\text{où } \alpha, \beta \in \R)
    \]
    \item \textbf{Si $\Delta = 0$} : L'équation caractéristique admet une unique racine réelle double $r_0$.
    Les solutions de l'équation différentielle sur $\R$ sont les fonctions de la forme :
    \[
    y(x) = (\alpha x + \beta) e^{r_0 x} \quad (\text{où } \alpha, \beta \in \R)
    \]
    \item \textbf{Si $\Delta < 0$} : L'équation caractéristique admet deux racines complexes conjuguées $p + \iud q$ et $p - \iud q$ (avec $q \ne 0$).
    Les solutions de l'équation différentielle sur $\R$ sont les fonctions de la forme :
    \[
    y(x) = e^{px} \Big( \alpha \cos(qx) + \beta \sin(qx) \Big) \quad (\text{où } \alpha, \beta \in \R)
    \]
\end{itemize}
\end{theoreme}

## Méthodes Clés

\begin{methode}[Calculer une intégrale par IPP]
Pour appliquer l'intégration par parties pour calculer $\int_a^b f(x) \dd x$ :
\begin{enumerate}
    \item **Écrire la fonction** sous la forme d'un produit $u'(x)v(x)$.
    \item **Choisir judicieusement** $u'(x)$ et $v(x)$ (en général, on dérive les polynômes ou logarithmes, et on intègre les exponentielles ou trigonométriques).
    \item **Calculer** $u(x)$ (une primitive de $u'$) et $v'(x)$ (la dérivée de $v$).
    \item **Appliquer** la formule de l'IPP et simplifier le résultat.
\end{enumerate}
\end{methode}

\begin{exemple}[Calcul par IPP]
Calculons l'intégrale : $I = \int_0^1 x e^x \dd x$.
Posons :
\[
\begin{cases}
v(x) = x & \implies v'(x) = 1 \\
u'(x) = e^x & \implies u(x) = e^x
\end{cases}
\]
Les fonctions $u$ et $v$ sont bien dérivables, et leurs dérivées sont continues sur $[0,1]$.
Par intégration par parties :
\[
I = \Big[ x e^x \Big]_0^1 - \int_0^1 1 \times e^x \dd x = (1 \cdot e^1 - 0 \cdot e^0) - \Big[ e^x \Big]_0^1 = e - (e^1 - e^0) = 1
\]
\end{exemple}

## Exercices d'Entraînement Résolus

### Exercice 1 : Primitive simple avec condition
Déterminer la primitive $F$ de la fonction $f(x) = 3x^2 - x + 1$ sur $\R$ qui s'annule en 0.

\textbf{Solution :}
Les primitives de la fonction polynomiale $f$ sont de la forme :
\[
F(x) = 3\left(\frac{x^3}{3}\right) - \frac{x^2}{2} + x + C = x^3 - \frac{x^2}{2} + x + C
\]
où $C \in \R$.
On cherche la primitive qui s'annule en 0, soit :
\[
F(0) = 0 \iff 0^3 - \frac{0^2}{2} + 0 + C = 0 \iff C = 0
\]
La primitive cherchée est la fonction $F$ définie sur $\R$ par :
\[
F(x) = x^3 - \frac{x^2}{2} + x
\]

### Exercice 2 : Primitive de la forme $u'/u$
Déterminer une primitive de la fonction $f$ définie sur $]-1, +\infty[$ par :
\[
f(x) = \frac{3x^2}{x^3 + 1}
\]

\textbf{Solution :}
Posons $u(x) = x^3 + 1$. La fonction $u$ est strictement positive et dérivable sur $]-1, +\infty[$ avec $u'(x) = 3x^2$.
La fonction $f$ s'écrit donc sous la forme $\frac{u'}{u}$.
Une primitive de $f$ sur cet intervalle est :
\[
F(x) = \ln(u(x)) = \ln(x^3 + 1)
\]

### Exercice 3 : Primitive de la forme $u' e^u$
Déterminer une primitive de la fonction $f$ définie sur $\R$ par :
\[
f(x) = x e^{x^2 + 1}
\]

\textbf{Solution :}
Posons $u(x) = x^2 + 1$. La fonction $u$ est dérivable sur $\R$ avec $u'(x) = 2x$.
Exprimons $f(x)$ en fonction de $u'$ :
\[
f(x) = \frac{1}{2} (2x) e^{x^2 + 1} = \frac{1}{2} u'(x) e^{u(x)}
\]
La fonction $f$ est de la forme $\frac{1}{2} u' e^u$.
Une primitive de $f$ sur $\R$ est :
\[
F(x) = \frac{1}{2} e^{u(x)} = \frac{1}{2} e^{x^2 + 1}
\]

### Exercice 4 : Primitive de la forme $u' u^n$
Déterminer une primitive de la fonction $f$ définie sur $\R$ par :
\[
f(x) = (2x + 1)^4
\]

\textbf{Solution :}
Posons $u(x) = 2x + 1$. La fonction $u$ est dérivable sur $\R$ avec $u'(x) = 2$.
Exprimons $f(x)$ en fonction de $u'$ :
\[
f(x) = \frac{1}{2} \times 2 (2x + 1)^4 = \frac{1}{2} u'(x) (u(x))^4
\]
La fonction $f$ est de la forme $\frac{1}{2} u' u^4$.
Une primitive de $f$ sur $\R$ est :
\[
F(x) = \frac{1}{2} \times \frac{u^5}{5} = \frac{1}{10} (2x + 1)^5
\]

### Exercice 5 : Primitive de la forme $u'/\sqrt{u}$
Déterminer une primitive de la fonction $f$ définie sur $]-1/3, +\infty[$ par :
\[
f(x) = \frac{1}{\sqrt{3x + 1}}
\]

\textbf{Solution :}
Posons $u(x) = 3x + 1$. Sur $]-1/3, +\infty[$, $u(x) > 0$. Sa dérivée est $u'(x) = 3$.
Exprimons $f(x)$ en fonction de $u'$ :
\[
f(x) = \frac{1}{3} \times \frac{3}{\sqrt{3x+1}} = \frac{1}{3} \times \frac{u'(x)}{\sqrt{u(x)}} = \frac{2}{3} \times \frac{u'(x)}{2\sqrt{u(x)}}
\]
La fonction est de la forme $\frac{2}{3} \frac{u'}{2\sqrt{u}}$.
Une primitive de $f$ sur cet intervalle est :
\[
F(x) = \frac{2}{3} \sqrt{u(x)} = \frac{2}{3} \sqrt{3x + 1}
\]

### Exercice 6 : Calcul d'intégrale simple
Calculer l'intégrale suivante :
\[
I = \int_0^1 (3x^2 - 2x + 1) \dd x
\]

\textbf{Solution :}
Une primitive de la fonction $x \mapsto 3x^2 - 2x + 1$ est $F(x) = x^3 - x^2 + x$.
On a :
\[
I = \Big[ x^3 - x^2 + x \Big]_0^1 = (1^3 - 1^2 + 1) - (0^3 - 0^2 + 0) = 1 - 0 = 1
\]

### Exercice 7 : Intégrale de la fonction inverse
Calculer l'intégrale suivante :
\[
J = \int_1^e \frac{1}{x} \dd x
\]

\textbf{Solution :}
Une primitive de la fonction $x \mapsto \frac{1}{x}$ sur $]0, +\infty[$ est $F(x) = \ln(x)$.
On a :
\[
J = \Big[ \ln(x) \Big]_1^e = \ln(e) - \ln(1) = 1 - 0 = 1
\]

### Exercice 8 : Intégrale de fonction trigonométrique
Calculer l'intégrale suivante :
\[
K = \int_0^{\pi} \sin(x) \dd x
\]

\textbf{Solution :}
Une primitive de la fonction $x \mapsto \sin(x)$ est $F(x) = -\cos(x)$.
On a :
\[
K = \Big[ -\cos(x) \Big]_0^{\pi} = -\cos(\pi) - (-\cos(0)) = -(-1) + 1 = 1 + 1 = 2
\]

### Exercice 9 : Calcul de la valeur moyenne
Déterminer la valeur moyenne de la fonction $f(x) = 3x^2$ sur l'intervalle $[1, 3]$.

\textbf{Solution :}
La valeur moyenne est donnée par la formule :
\[
\mu = \frac{1}{3-1} \int_1^3 3x^2 \dd x = \frac{1}{2} \int_1^3 3x^2 \dd x
\]
Une primitive de $3x^2$ est $F(x) = x^3$.
\[
\int_1^3 3x^2 \dd x = \Big[ x^3 \Big]_1^3 = 3^3 - 1^3 = 27 - 1 = 26
\]
On obtient :
\[
\mu = \frac{1}{2} \times 26 = 13
\]

### Exercice 10 : Autre forme $u'/u$ avec exponentielle
Déterminer une primitive de la fonction $f$ définie sur $\R$ par :
\[
f(x) = \frac{e^x}{e^x + 2}
\]

\textbf{Solution :}
Posons $u(x) = e^x + 2$. La fonction $u$ est dérivable et strictement positive sur $\R$ avec $u'(x) = e^x$.
La fonction $f$ s'écrit sous la forme $\frac{u'}{u}$.
Une primitive de $f$ sur $\R$ est :
\[
F(x) = \ln(u(x)) = \ln(e^x + 2)
\]

### Exercice 11 : Équation différentielle du premier ordre
Résoudre sur $\R$ l'équation différentielle $y' - 3y = 6$ et déterminer l'unique solution $f$ telle que $f(0) = 1$.

\textbf{Solution :}
1. L'équation s'écrit $y' = 3y + 6$. C'est une équation de la forme $y' = ay + b$ avec $a=3 \ne 0$ et $b=6$.
   Les solutions générales sur $\R$ sont de la forme :
   \[
   y(x) = C e^{3x} - \frac{6}{3} = C e^{3x} - 2 \quad (\text{où } C \in \R)
   \]
2. Déterminons la solution $f$ vérifiant $f(0) = 1$ :
   \[
   f(0) = 1 \iff C e^{3(0)} - 2 = 1 \iff C - 2 = 1 \iff C = 3
   \]
La solution unique cherchée est la fonction $f$ définie sur $\R$ par :
\[
f(x) = 3 e^{3x} - 2
\]

### Exercice 12 : Équation différentielle du second ordre
Résoudre sur $\R$ l'équation différentielle suivante :
\[
y'' - 2y' + 2y = 0
\]

\textbf{Solution :}
C'est une équation différentielle linéaire homogène du second ordre à coefficients réels.
Écrivons son équation caractéristique associée :
\[
r^2 - 2r + 2 = 0
\]
Calculons son discriminant :
\[
\Delta = (-2)^2 - 4(1)(2) = 4 - 8 = -4
\]
Puisque $\Delta < 0$, l'équation caractéristique admet deux racines complexes conjuguées :
\[
r_1 = \frac{2 - \iud\sqrt{4}}{2} = 1 - \iud \quad \text{et} \quad r_2 = 1 + \iud
\]
Ici, la partie réelle est $p = 1$ et la partie imaginaire est $q = 1$.
D'après le théorème du cours, les solutions de l'équation différentielle sur $\R$ sont les fonctions de la forme :
\[
y(x) = e^x \Big( \alpha \cos(x) + \beta \sin(x) \Big) \quad (\text{où } \alpha, \beta \in \R)
\]

## Problèmes Résolus

### Problème 1 : Calcul d'aire délimitée par deux courbes
On considère la fonction $f$ définie sur $[0, 1]$ par $f(x) = x^2$ et la fonction $g$ définie sur $[0, 1]$ par $g(x) = \sqrt{x}$. On note $\mathcal{C}_f$ et $\mathcal{C}_g$ leurs courbes représentatives.
\begin{enumerate}
    \item Démontrer que pour tout $x \in [0, 1]$, $g(x) \ge f(x)$.
    \item Calculer l'aire $\mathcal{A}$ de la région délimitée par les deux courbes $\mathcal{C}_f$ et $\mathcal{C}_g$ et les droites verticales d'équations $x=0$ et $x=1$ (exprimer le résultat en unités d'aire).
\end{enumerate}

\textbf{Solution :}
\begin{enumerate}
    \item Pour comparer $f(x)$ et $g(x)$ sur $[0, 1]$, calculons la différence :
    \[
    g(x) - f(x) = \sqrt{x} - x^2 = \sqrt{x}(1 - x\sqrt{x}) = \sqrt{x}(1 - x^{3/2})
    \]
    Pour tout $x \in [0, 1]$, on a $0 \le x \le 1 \implies 0 \le x^{3/2} \le 1 \implies 1 - x^{3/2} \ge 0$.
    Le produit est donc positif ou nul sur $[0, 1]$, ce qui montre que $g(x) \ge f(x)$.
    
    \item L'aire $\mathcal{A}$ de la région délimitée par les courbes est l'intégrale de la différence :
    \[
    \mathcal{A} = \int_0^1 (g(x) - f(x)) \dd x = \int_0^1 \left( \sqrt{x} - x^2 \right) \dd x
    \]
    Déterminons une primitive de $x \mapsto x^{1/2} - x^2$ :
    \[
    F(x) = \frac{x^{3/2}}{3/2} - \frac{x^3}{3} = \frac{2}{3}x\sqrt{x} - \frac{x^3}{3}
    \]
    Calculons l'intégrale :
    \[
    \mathcal{A} = \Big[ F(x) \Big]_0^1 = F(1) - F(0) = \left( \frac{2}{3}(1)(1) - \frac{1}{3} \right) - 0 = \frac{2}{3} - \frac{1}{3} = \frac{1}{3} \text{ u.a.}
    \]
    L'aire de la région en forme de fuseau fermée par les deux paraboles est égale à $1/3$ d'unité d'aire.
\end{enumerate}

### Problème 2 : Étude d'une fonction définie par une intégrale
Soit la fonction $F$ définie sur $\R$ par :
\[
F(x) = \int_0^x e^{-t^2} \dd t
\]
\begin{enumerate}
    \item Justifier que la fonction $F$ est dérivable sur $\R$ et donner sa dérivée $F'(x)$.
    \item En déduire le sens de variation de $F$ sur $\R$.
    \item Démontrer que pour tout $t \ge 1$, $t^2 \ge t$, puis en déduire que $e^{-t^2} \le e^{-t}$.
    \item Montrer que pour tout $x \ge 1$ :
    \[
    F(x) \le F(1) + \frac{1}{e} - e^{-x}
    \]
    En déduire que la fonction $F$ est majorée sur $[0, +\infty[$. Que peut-on en déduire pour sa limite en $+\infty$ ?
\end{enumerate}

\textbf{Solution :}
\begin{enumerate}
    \item La fonction $t \mapsto e^{-t^2}$ est continue sur $\R$.
    D'après le théorème fondamental de l'analyse, la fonction $F$ qui à tout $x \in \R$ associe l'intégrale de $0$ à $x$ de la fonction continue est l'unique primitive de cette fonction qui s'annule en 0.
    $F$ est donc dérivable sur $\R$ et pour tout $x \in \R$ :
    \[
    F'(x) = e^{-x^2}
    \]
    
    \item Puisque pour tout réel $x$, la fonction exponentielle est strictement positive, on a $F'(x) = e^{-x^2} > 0$.
    La fonction $F$ est donc **strictement croissante** sur $\R$.
    
    \item Pour tout $t \ge 1$ : en multipliant par $t$ (qui est positif) : $t \times t \ge 1 \times t \implies t^2 \ge t$.
    La fonction exponentielle étant strictement croissante :
    \[
    t^2 \ge t \implies -t^2 \le -t \implies e^{-t^2} \le e^{-t}
    \]
    
    \item Soit $x \ge 1$. En utilisant la relation de Chasles pour l'intégrale :
    \[
    F(x) = \int_0^1 e^{-t^2} \dd t + \int_1^x e^{-t^2} \dd t = F(1) + \int_1^x e^{-t^2} \dd t
    \]
    D'après la question précédente, pour $t \ge 1$, $e^{-t^2} \le e^{-t}$. Par conservation de l'ordre de l'intégrale (avec $1 \le x$) :
    \[
    \int_1^x e^{-t^2} \dd t \le \int_1^x e^{-t} \dd t
    \]
    Calculons cette dernière intégrale :
    \[
    \int_1^x e^{-t} \dd t = \Big[ -e^{-t} \Big]_1^x = -e^{-x} - (-e^{-1}) = \frac{1}{e} - e^{-x}
    \]
    On en déduit que pour tout $x \ge 1$ :
    \[
    F(x) \le F(1) + \frac{1}{e} - e^{-x}
    \]
    De plus, pour tout $x \ge 1$, $e^{-x} > 0 \implies -e^{-x} < 0$, ce qui montre que :
    \[
    F(x) < F(1) + \frac{1}{e}
    \]
    La fonction $F$ est donc majorée sur $[1, +\infty[$ par la valeur constante $M = F(1) + \frac{1}{e}$. Comme elle est continue sur $[0,1]$, elle est bornée sur $[0, +\infty[$.
    Puisque $F$ est croissante et majorée sur $[0, +\infty[$, d'après le théorème de convergence monotone, la fonction $F$ admet une limite finie lorsque $x \to +\infty$.
\end{enumerate}

### Problème 3 : Une suite d'intégrales par parties
On considère la suite $(I_n)$ définie pour tout entier naturel $n$ par :
\[
I_n = \int_0^1 (1 - x^2)^n \dd x
\]
\begin{enumerate}
    \item Calculer la valeur de $I_0$ et $I_1$.
    \item Démontrer que la suite $(I_n)$ est décroissante.
    \item À l'aide d'une intégration par parties sur $I_n$ écrite sous la forme $\int_0^1 1 \times (1-x^2)^n \dd x$, démontrer que pour tout $n \ge 1$ :
    \[
    I_n = 2n \int_0^1 x^2 (1 - x^2)^{n-1} \dd x
    \]
    \item En écrivant $x^2 = 1 - (1 - x^2)$, montrer que pour tout $n \ge 1$ :
    \[
    I_n = \frac{2n}{2n + 1} I_{n-1}
    \]
\end{enumerate}

\textbf{Solution :}
\begin{enumerate}
    \item - Pour $n = 0$ : $I_0 = \int_0^1 (1-x^2)^0 \dd x = \int_0^1 1 \dd x = [x]_0^1 = 1$.
      - Pour $n = 1$ : $I_1 = \int_0^1 (1-x^2) \dd x = \left[ x - \frac{x^3}{3} \right]_0^1 = 1 - \frac{1}{3} = \frac{2}{3}$.
      
    \item Pour tout $x \in [0, 1]$, $0 \le x^2 \le 1 \implies 0 \le 1-x^2 \le 1$.
      En multipliant par $(1-x^2)^n \ge 0$, on a : $(1-x^2)^{n+1} \le (1-x^2)^n$.
      Par conservation de l'ordre de l'intégrale :
      \[
      \int_0^1 (1-x^2)^{n+1} \dd x \le \int_0^1 (1-x^2)^n \dd x \implies I_{n+1} \le I_n
      \]
      La suite $(I_n)$ est donc décroissante.
      
    \item Appliquons une intégration par parties pour $I_n = \int_0^1 1 \times (1-x^2)^n \dd x$.
      Posons :
      \[
      \begin{cases}
      v(x) = (1-x^2)^n & \implies v'(x) = n(1-x^2)^{n-1}(-2x) = -2nx(1-x^2)^{n-1} \\
      u'(x) = 1 & \implies u(x) = x
      \end{cases}
      \]
      Les fonctions $u$ et $v$ sont bien dérivables à dérivées continues sur $[0, 1]$.
      \[
      I_n = \Big[ x(1-x^2)^n \Big]_0^1 - \int_0^1 x \left( -2nx(1-x^2)^{n-1} \right) \dd x
      \]
      Le crochet vaut $1(1-1^2)^n - 0 = 0$. On obtient :
      \[
      I_n = 2n \int_0^1 x^2 (1 - x^2)^{n-1} \dd x
      \]
      
    \item Transformons l'intégrale obtenue en écrivant $x^2 = 1 - (1-x^2)$ :
      \[
      \int_0^1 x^2 (1 - x^2)^{n-1} \dd x = \int_0^1 (1 - (1-x^2)) (1-x^2)^{n-1} \dd x = \int_0^1 (1-x^2)^{n-1} \dd x - \int_0^1 (1-x^2)^n \dd x
      \]
      Ce qui donne :
      \[
      \int_0^1 x^2 (1 - x^2)^{n-1} \dd x = I_{n-1} - I_n
      \]
      En remplaçant dans la relation de la question 3 :
      \[
      I_n = 2n(I_{n-1} - I_n) \iff I_n = 2n I_{n-1} - 2n I_n \iff I_n(1 + 2n) = 2n I_{n-1} \iff I_n = \frac{2n}{2n+1} I_{n-1}
      \]
\end{enumerate}

### Problème 4 : Double intégration par parties
Calculer la valeur exacte de l'intégrale suivante :
\[
I = \int_0^{\pi} x^2 \sin(x) \dd x
\]

\textbf{Solution :}
Appliquons une première intégration par parties. Posons :
\[
\begin{cases}
v(x) = x^2 & \implies v'(x) = 2x \\
u'(x) = \sin(x) & \implies u(x) = -\cos(x)
\end{cases}
\]
Les fonctions $u$ et $v$ sont dérivables à dérivées continues sur $[0, \pi]$.
\[
I = \Big[ -x^2 \cos(x) \Big]_0^{\pi} - \int_0^{\pi} 2x (-\cos(x)) \dd x = \left( -\pi^2 \cos(\pi) - 0 \right) + 2 \int_0^{\pi} x \cos(x) \dd x
\]
Comme $\cos(\pi) = -1$, on a $\Big[ -x^2 \cos(x) \Big]_0^{\pi} = \pi^2$.
On obtient :
\[
I = \pi^2 + 2 J \quad \text{où} \quad J = \int_0^{\pi} x \cos(x) \dd x
\]
Calculons l'intégrale $J$ à l'aide d'une deuxième intégration par parties. Posons :
\[
\begin{cases}
v(x) = x & \implies v'(x) = 1 \\
u'(x) = \cos(x) & \implies u(x) = \sin(x)
\end{cases}
\]
Les fonctions sont dérivables et continues sur $[0, \pi]$.
\[
J = \Big[ x \sin(x) \Big]_0^{\pi} - \int_0^{\pi} 1 \cdot \sin(x) \dd x
\]
Le crochet vaut $\pi \sin(\pi) - 0 = 0$ car $\sin(\pi) = 0$.
Il reste :
\[
J = -\int_0^{\pi} \sin(x) \dd x = \Big[ \cos(x) \Big]_0^{\pi} = \cos(\pi) - \cos(0) = -1 - 1 = -2
\]
En remplaçant la valeur de $J$ dans la première équation :
\[
I = \pi^2 + 2(-2) = \pi^2 - 4
\]
La valeur exacte de l'intégrale est $\pi^2 - 4 \approx 5,87$.

### Problème 5 : Calcul de température moyenne journalière
Dans une région, la température extérieure (en $^\circ$C) au cours d'une journée de 24 heures (de $t=0$ à $t=24$) est modélisée par la fonction :
\[
T(t) = 15 - 6 \cos\left( \frac{\pi(t - 4)}{12} \right)
\]
\begin{enumerate}
    \item Quelle est la température minimale sur la journée et à quelle heure est-elle atteinte ?
    \item Quelle est la température maximale sur la journée et à quelle heure est-elle atteinte ?
    \item Calculer la température moyenne journalière $\mu$ sur la période de 24 heures.
\end{enumerate}

\textbf{Solution :}
\begin{enumerate}
    \item La fonction cosinus varie entre $-1$ et $1$.
    La température est minimale lorsque le cosinus est maximal, c'est-à-dire quand $\cos\left( \frac{\pi(t - 4)}{12} \right) = 1$.
    La température minimale est alors $T_{\min} = 15 - 6(1) = 9^\circ$C.
    Cette valeur est atteinte quand :
    \[
    \frac{\pi(t - 4)}{12} = 0 \text{ (ou } 2\pi) \implies t - 4 = 0 \implies t = 4 \text{ heures}
    \]
    La température minimale de $9^\circ$C est atteinte à 4 heures du matin.
    
    \item La température est maximale lorsque le cosinus est minimal, c'est-à-dire quand $\cos\left( \frac{\pi(t - 4)}{12} \right) = -1$.
    La température maximale est alors $T_{\max} = 15 - 6(-1) = 21^\circ$C.
    Cette valeur est atteinte quand :
    \[
    \frac{\pi(t - 4)}{12} = \pi \implies t - 4 = 12 \implies t = 16 \text{ heures}
    \]
    La température maximale de $21^\circ$C est atteinte à 16 heures (4 heures de l'après-midi).
    
    \item La température moyenne journalière est la valeur moyenne de la fonction $T$ sur $[0, 24]$ :
    \[
    \mu = \frac{1}{24-0} \int_0^{24} T(t) \dd t = \frac{1}{24} \int_0^{24} \left[ 15 - 6 \cos\left( \frac{\pi(t - 4)}{12} \right) \right] \dd t
    \]
    Déterminons une primitive de la fonction $T$.
    Une primitive de $\cos(at+b)$ est $\frac{1}{a} \sin(at+b)$. Ici $a = \frac{\pi}{12}$, donc $\frac{1}{a} = \frac{12}{\pi}$.
    Une primitive de $T$ est :
    \[
    F(t) = 15t - 6 \times \frac{12}{\pi} \sin\left( \frac{\pi(t - 4)}{12} \right) = 15t - \frac{72}{\pi} \sin\left( \frac{\pi(t - 4)}{12} \right)
    \]
    Calculons l'intégrale :
    \[
    \int_0^{24} T(t) \dd t = F(24) - F(0)
    \]
    - $F(24) = 15(24) - \frac{72}{\pi} \sin\left( \frac{20\pi}{12} \right) = 360 - \frac{72}{\pi} \sin\left( \frac{5\pi}{3} \right) = 360 - \frac{72}{\pi} \left( -\frac{\sqrt{3}}{2} \right) = 360 + \frac{36\sqrt{3}}{\pi}$.
    - $F(0) = 15(0) - \frac{72}{\pi} \sin\left( -\frac{4\pi}{12} \right) = -\frac{72}{\pi} \sin\left( -\frac{\pi}{3} \right) = -\frac{72}{\pi} \left( -\frac{\sqrt{3}}{2} \right) = \frac{36\sqrt{3}}{\pi}$.
    La différence vaut :
    \[
    F(24) - F(0) = \left( 360 + \frac{36\sqrt{3}}{\pi} \right) - \frac{36\sqrt{3}}{\pi} = 360
    \]
    On obtient la valeur moyenne :
    \[
    \mu = \frac{1}{24} \times 360 = 15^\circ\text{C}
    \]
    La température moyenne sur la journée est de $15^\circ$C.
\end{enumerate}
