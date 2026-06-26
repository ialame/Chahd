### Exercice 1 : Produit scalaire à partir des normes et de l'angle
\begin{enonce}
Soient $\vec{u}$ et $\vec{v}$ deux vecteurs du plan tels que $\|\vec{u}\| = 5$ et $\|\vec{v}\| = 3$. Calculer le produit scalaire $\vec{u}\cdot\vec{v}$ dans chacun des cas suivants :
\begin{enumerate}
    \item l'angle $(\vec{u},\vec{v})$ mesure $60^\circ$ ;
    \item l'angle $(\vec{u},\vec{v})$ mesure $150^\circ$ ;
    \item l'angle $(\vec{u},\vec{v})$ mesure $90^\circ$ ;
    \item les vecteurs $\vec{u}$ et $\vec{v}$ sont de même sens.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
On applique la définition $\vec{u}\cdot\vec{v} = \|\vec{u}\|\times\|\vec{v}\|\times\cos\big((\vec{u},\vec{v})\big)$, avec $\|\vec{u}\|\times\|\vec{v}\| = 15$.
\begin{enumerate}
    \item $\vec{u}\cdot\vec{v} = 15\cos(60^\circ) = 15\times\tfrac{1}{2} = 7{,}5$.
    \item $\vec{u}\cdot\vec{v} = 15\cos(150^\circ) = 15\times\left(-\tfrac{\sqrt{3}}{2}\right) = -\dfrac{15\sqrt{3}}{2} \approx -12{,}99$. Le résultat est négatif car l'angle est obtus.
    \item $\vec{u}\cdot\vec{v} = 15\cos(90^\circ) = 15\times 0 = 0$ : les vecteurs sont orthogonaux.
    \item De même sens, l'angle vaut $0^\circ$ : $\vec{u}\cdot\vec{v} = 15\cos(0^\circ) = 15\times 1 = 15$. C'est la plus grande valeur possible.
\end{enumerate}

### Exercice 2 : Expression analytique
\begin{enonce}
Le plan est muni d'un repère orthonormé. On considère les vecteurs $\vec{u}\begin{pmatrix} 3 \\ -2 \end{pmatrix}$, $\vec{v}\begin{pmatrix} 4 \\ 5 \end{pmatrix}$ et $\vec{w}\begin{pmatrix} -1 \\ 6 \end{pmatrix}$.
\begin{enumerate}
    \item Calculer $\vec{u}\cdot\vec{v}$, $\vec{u}\cdot\vec{w}$ et $\vec{v}\cdot\vec{w}$.
    \item Calculer les normes $\|\vec{u}\|$ et $\|\vec{v}\|$.
    \item Les vecteurs $\vec{u}$ et $\vec{w}$ sont-ils orthogonaux ?
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item On utilise $\vec{a}\cdot\vec{b} = xx' + yy'$ :
    $$\vec{u}\cdot\vec{v} = 3\times 4 + (-2)\times 5 = 12 - 10 = 2 ;$$
    $$\vec{u}\cdot\vec{w} = 3\times(-1) + (-2)\times 6 = -3 - 12 = -15 ;$$
    $$\vec{v}\cdot\vec{w} = 4\times(-1) + 5\times 6 = -4 + 30 = 26.$$
    \item $\|\vec{u}\| = \sqrt{3^2 + (-2)^2} = \sqrt{9+4} = \sqrt{13}$ et $\|\vec{v}\| = \sqrt{4^2 + 5^2} = \sqrt{16+25} = \sqrt{41}$.
    \item $\vec{u}\cdot\vec{w} = -15 \neq 0$, donc $\vec{u}$ et $\vec{w}$ ne sont **pas** orthogonaux.
\end{enumerate}

### Exercice 3 : Orthogonalité et paramètre
\begin{enonce}
Le plan est muni d'un repère orthonormé.
\begin{enumerate}
    \item On donne $\vec{u}\begin{pmatrix} 2 \\ -3 \end{pmatrix}$ et $\vec{v}\begin{pmatrix} m \\ 4 \end{pmatrix}$. Déterminer la valeur du réel $m$ pour que $\vec{u}$ et $\vec{v}$ soient orthogonaux.
    \item Les vecteurs $\vec{a}\begin{pmatrix} 1 \\ 2 \end{pmatrix}$ et $\vec{b}\begin{pmatrix} -4 \\ 2 \end{pmatrix}$ sont-ils orthogonaux ?
    \item Donner les coordonnées d'un vecteur non nul orthogonal à $\vec{a}\begin{pmatrix} 3 \\ 5 \end{pmatrix}$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item $\vec{u}\cdot\vec{v} = 2m + (-3)\times 4 = 2m - 12$. Les vecteurs sont orthogonaux lorsque $\vec{u}\cdot\vec{v} = 0$, soit $2m - 12 = 0$, donc $m = 6$.
    \item $\vec{a}\cdot\vec{b} = 1\times(-4) + 2\times 2 = -4 + 4 = 0$ : les vecteurs $\vec{a}$ et $\vec{b}$ sont bien orthogonaux.
    \item On cherche $\vec{n}\begin{pmatrix} x \\ y \end{pmatrix}$ tel que $3x + 5y = 0$. Le choix $x = 5$, $y = -3$ convient : $\vec{n}\begin{pmatrix} 5 \\ -3 \end{pmatrix}$ vérifie $3\times 5 + 5\times(-3) = 0$.
\end{enumerate}

### Exercice 4 : Distances et nature d'un triangle
\begin{enonce}
Dans un repère orthonormé, on considère les points $A(1\,;\,2)$, $B(5\,;\,5)$ et $C(-2\,;\,6)$.
\begin{enumerate}
    \item Calculer les longueurs $AB$, $AC$ et $BC$.
    \item Démontrer que le triangle $ABC$ est rectangle et isocèle.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item On calcule les coordonnées des vecteurs, puis leurs normes :
    $$\overrightarrow{AB}\begin{pmatrix} 4 \\ 3 \end{pmatrix},\quad AB = \sqrt{4^2 + 3^2} = \sqrt{25} = 5 ;$$
    $$\overrightarrow{AC}\begin{pmatrix} -3 \\ 4 \end{pmatrix},\quad AC = \sqrt{(-3)^2 + 4^2} = \sqrt{25} = 5 ;$$
    $$\overrightarrow{BC}\begin{pmatrix} -7 \\ 1 \end{pmatrix},\quad BC = \sqrt{(-7)^2 + 1^2} = \sqrt{50} = 5\sqrt{2}.$$
    \item Comme $AB = AC = 5$, le triangle est isocèle en $A$. De plus :
    $$\overrightarrow{AB}\cdot\overrightarrow{AC} = 4\times(-3) + 3\times 4 = -12 + 12 = 0,$$
    donc les côtés $[AB]$ et $[AC]$ sont perpendiculaires : le triangle est rectangle en $A$. Le triangle $ABC$ est rectangle et isocèle en $A$. (On vérifie d'ailleurs $AB^2 + AC^2 = 25 + 25 = 50 = BC^2$, conformément au théorème de Pythagore.)
\end{enumerate}

### Exercice 5 : Calcul d'angles
\begin{enonce}
Le plan est muni d'un repère orthonormé. Déterminer une mesure de l'angle $(\vec{u},\vec{v})$ dans chacun des cas suivants :
\begin{enumerate}
    \item $\vec{u}\begin{pmatrix} 1 \\ 1 \end{pmatrix}$ et $\vec{v}\begin{pmatrix} 1 \\ 0 \end{pmatrix}$ ;
    \item $\vec{u}\begin{pmatrix} -1 \\ \sqrt{3} \end{pmatrix}$ et $\vec{v}\begin{pmatrix} 1 \\ 0 \end{pmatrix}$ ;
    \item $\vec{u}\begin{pmatrix} 2 \\ 2 \end{pmatrix}$ et $\vec{v}\begin{pmatrix} 0 \\ 3 \end{pmatrix}$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
On utilise $\cos\big((\vec{u},\vec{v})\big) = \dfrac{\vec{u}\cdot\vec{v}}{\|\vec{u}\|\,\|\vec{v}\|}$.
\begin{enumerate}
    \item $\vec{u}\cdot\vec{v} = 1$, $\|\vec{u}\| = \sqrt{2}$, $\|\vec{v}\| = 1$, d'où $\cos\theta = \dfrac{1}{\sqrt{2}} = \dfrac{\sqrt{2}}{2}$, donc $\theta = 45^\circ$.
    \item $\vec{u}\cdot\vec{v} = -1$, $\|\vec{u}\| = \sqrt{1+3} = 2$, $\|\vec{v}\| = 1$, d'où $\cos\theta = -\dfrac{1}{2}$, donc $\theta = 120^\circ$.
    \item $\vec{u}\cdot\vec{v} = 2\times 0 + 2\times 3 = 6$, $\|\vec{u}\| = 2\sqrt{2}$, $\|\vec{v}\| = 3$, d'où $\cos\theta = \dfrac{6}{6\sqrt{2}} = \dfrac{1}{\sqrt{2}} = \dfrac{\sqrt{2}}{2}$, donc $\theta = 45^\circ$.
\end{enumerate}

### Exercice 6 : Théorème d'Al-Kashi
\begin{enonce}
Un triangle $ABC$ vérifie $AB = 5$, $AC = 8$ et $\widehat{A} = 60^\circ$.

<div class="flex justify-center my-5"><img src="data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz4KPHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHhtbG5zOnhsaW5rPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5L3hsaW5rIiB3aWR0aD0iMTQ4LjU3NnB0IiBoZWlnaHQ9IjE5MC4zODZwdCIgdmlld0JveD0iMCAwIDE0OC41NzYgMTkwLjM4NiI+CjxkZWZzPgo8Zz4KPGcgaWQ9ImdseXBoLTAtMCI+CjxwYXRoIGQ9Ik0gMS43ODEyNSAtMS4xNDA2MjUgQyAxLjM3NSAtMC40ODQzNzUgMSAtMC4zNDM3NSAwLjU2MjUgLTAuMzEyNSBDIDAuNDM3NSAtMC4yOTY4NzUgMC4zNDM3NSAtMC4yOTY4NzUgMC4zNDM3NSAtMC4xMDkzNzUgQyAwLjM0Mzc1IC0wLjA0Njg3NSAwLjM5MDYyNSAwIDAuNDg0Mzc1IDAgQyAwLjc1IDAgMS4wNDY4NzUgLTAuMDMxMjUgMS4zMjgxMjUgLTAuMDMxMjUgQyAxLjY1NjI1IC0wLjAzMTI1IDIgMCAyLjMyODEyNSAwIEMgMi4zOTA2MjUgMCAyLjUxNTYyNSAwIDIuNTE1NjI1IC0wLjE4NzUgQyAyLjUxNTYyNSAtMC4yOTY4NzUgMi40MjE4NzUgLTAuMzEyNSAyLjM1OTM3NSAtMC4zMTI1IEMgMi4xMjUgLTAuMzI4MTI1IDEuODkwNjI1IC0wLjQwNjI1IDEuODkwNjI1IC0wLjY1NjI1IEMgMS44OTA2MjUgLTAuNzgxMjUgMS45NTMxMjUgLTAuODkwNjI1IDIuMDMxMjUgLTEuMDMxMjUgTCAyLjc4MTI1IC0yLjI5Njg3NSBMIDUuMjgxMjUgLTIuMjk2ODc1IEMgNS4yOTY4NzUgLTIuMDkzNzUgNS40Mzc1IC0wLjczNDM3NSA1LjQzNzUgLTAuNjQwNjI1IEMgNS40Mzc1IC0wLjM0Mzc1IDQuOTIxODc1IC0wLjMxMjUgNC43MTg3NSAtMC4zMTI1IEMgNC41NzgxMjUgLTAuMzEyNSA0LjQ4NDM3NSAtMC4zMTI1IDQuNDg0Mzc1IC0wLjEwOTM3NSBDIDQuNDg0Mzc1IDAgNC41OTM3NSAwIDQuNjI1IDAgQyA1LjAzMTI1IDAgNS40NTMxMjUgLTAuMDMxMjUgNS44NTkzNzUgLTAuMDMxMjUgQyA2LjEwOTM3NSAtMC4wMzEyNSA2LjczNDM3NSAwIDYuOTg0Mzc1IDAgQyA3LjA0Njg3NSAwIDcuMTcxODc1IDAgNy4xNzE4NzUgLTAuMjAzMTI1IEMgNy4xNzE4NzUgLTAuMzEyNSA3LjA2MjUgLTAuMzEyNSA2LjkzNzUgLTAuMzEyNSBDIDYuMzEyNSAtMC4zMTI1IDYuMzEyNSAtMC4zNzUgNi4yOTY4NzUgLTAuNjcxODc1IEwgNS42ODc1IC02Ljg3NSBDIDUuNjcxODc1IC03LjA3ODEyNSA1LjY3MTg3NSAtNy4xMDkzNzUgNS41IC03LjEwOTM3NSBDIDUuMzQzNzUgLTcuMTA5Mzc1IDUuMjk2ODc1IC03LjA0Njg3NSA1LjIzNDM3NSAtNi45NTMxMjUgWiBNIDIuOTY4NzUgLTIuNjA5Mzc1IEwgNC45MjE4NzUgLTUuODkwNjI1IEwgNS4yNSAtMi42MDkzNzUgWiBNIDIuOTY4NzUgLTIuNjA5Mzc1ICIvPgo8L2c+CjxnIGlkPSJnbHlwaC0wLTEiPgo8cGF0aCBkPSJNIDEuNTkzNzUgLTAuNzgxMjUgQyAxLjQ4NDM3NSAtMC4zOTA2MjUgMS40Njg3NSAtMC4zMTI1IDAuNjg3NSAtMC4zMTI1IEMgMC41MTU2MjUgLTAuMzEyNSAwLjQyMTg3NSAtMC4zMTI1IDAuNDIxODc1IC0wLjEwOTM3NSBDIDAuNDIxODc1IDAgMC41IDAgMC42ODc1IDAgTCA0LjIzNDM3NSAwIEMgNS43OTY4NzUgMCA2Ljk2ODc1IC0xLjE3MTg3NSA2Ljk2ODc1IC0yLjE0MDYyNSBDIDYuOTY4NzUgLTIuODU5Mzc1IDYuNDA2MjUgLTMuNDM3NSA1LjQzNzUgLTMuNTQ2ODc1IEMgNi40Njg3NSAtMy43MzQzNzUgNy41MTU2MjUgLTQuNDY4NzUgNy41MTU2MjUgLTUuNDIxODc1IEMgNy41MTU2MjUgLTYuMTU2MjUgNi44NTkzNzUgLTYuNzgxMjUgNS42NzE4NzUgLTYuNzgxMjUgTCAyLjMyODEyNSAtNi43ODEyNSBDIDIuMTQwNjI1IC02Ljc4MTI1IDIuMDMxMjUgLTYuNzgxMjUgMi4wMzEyNSAtNi41OTM3NSBDIDIuMDMxMjUgLTYuNDg0Mzc1IDIuMTI1IC02LjQ4NDM3NSAyLjMxMjUgLTYuNDg0Mzc1IEMgMi4zMjgxMjUgLTYuNDg0Mzc1IDIuNTMxMjUgLTYuNDg0Mzc1IDIuNjg3NSAtNi40NTMxMjUgQyAyLjg3NSAtNi40Mzc1IDIuOTY4NzUgLTYuNDIxODc1IDIuOTY4NzUgLTYuMjk2ODc1IEMgMi45Njg3NSAtNi4yNjU2MjUgMi45NTMxMjUgLTYuMjM0Mzc1IDIuOTIxODc1IC02LjEwOTM3NSBaIE0gMy4wOTM3NSAtMy42NDA2MjUgTCAzLjcwMzEyNSAtNi4xMDkzNzUgQyAzLjc5Njg3NSAtNi40NTMxMjUgMy44MTI1IC02LjQ4NDM3NSA0LjI1IC02LjQ4NDM3NSBMIDUuNTMxMjUgLTYuNDg0Mzc1IEMgNi40MDYyNSAtNi40ODQzNzUgNi42MDkzNzUgLTUuODkwNjI1IDYuNjA5Mzc1IC01LjQ1MzEyNSBDIDYuNjA5Mzc1IC00LjU3ODEyNSA1Ljc1IC0zLjY0MDYyNSA0LjU0Njg3NSAtMy42NDA2MjUgWiBNIDIuNjQwNjI1IC0wLjMxMjUgQyAyLjUgLTAuMzEyNSAyLjQ4NDM3NSAtMC4zMTI1IDIuNDIxODc1IC0wLjMxMjUgQyAyLjMyODEyNSAtMC4zMjgxMjUgMi4yOTY4NzUgLTAuMzQzNzUgMi4yOTY4NzUgLTAuNDIxODc1IEMgMi4yOTY4NzUgLTAuNDUzMTI1IDIuMjk2ODc1IC0wLjQ2ODc1IDIuMzQzNzUgLTAuNjQwNjI1IEwgMy4wMzEyNSAtMy40MjE4NzUgTCA0LjkwNjI1IC0zLjQyMTg3NSBDIDUuODU5Mzc1IC0zLjQyMTg3NSA2LjA0Njg3NSAtMi42ODc1IDYuMDQ2ODc1IC0yLjI1IEMgNi4wNDY4NzUgLTEuMjY1NjI1IDUuMTcxODc1IC0wLjMxMjUgNCAtMC4zMTI1IFogTSAyLjY0MDYyNSAtMC4zMTI1ICIvPgo8L2c+CjxnIGlkPSJnbHlwaC0wLTIiPgo8cGF0aCBkPSJNIDcuNTQ2ODc1IC02LjkwNjI1IEMgNy41NDY4NzUgLTYuOTM3NSA3LjUzMTI1IC03IDcuNDM3NSAtNyBDIDcuNDA2MjUgLTcgNy40MDYyNSAtNyA3LjI5Njg3NSAtNi44OTA2MjUgTCA2LjU5Mzc1IC02LjEyNSBDIDYuNTE1NjI1IC02LjI2NTYyNSA2LjA0Njg3NSAtNyA0Ljk1MzEyNSAtNyBDIDIuNzM0Mzc1IC03IDAuNSAtNC44MTI1IDAuNSAtMi41IEMgMC41IC0wLjg1OTM3NSAxLjY3MTg3NSAwLjIxODc1IDMuMTg3NSAwLjIxODc1IEMgNC4wNDY4NzUgMC4yMTg3NSA0LjgxMjUgLTAuMTcxODc1IDUuMzQzNzUgLTAuNjQwNjI1IEMgNi4yNjU2MjUgLTEuNDUzMTI1IDYuNDIxODc1IC0yLjM1OTM3NSA2LjQyMTg3NSAtMi4zOTA2MjUgQyA2LjQyMTg3NSAtMi40ODQzNzUgNi4zMjgxMjUgLTIuNDg0Mzc1IDYuMzEyNSAtMi40ODQzNzUgQyA2LjI1IC0yLjQ4NDM3NSA2LjIwMzEyNSAtMi40Njg3NSA2LjE4NzUgLTIuMzkwNjI1IEMgNi4wOTM3NSAtMi4wOTM3NSA1Ljg1OTM3NSAtMS4zOTA2MjUgNS4xNzE4NzUgLTAuODEyNSBDIDQuNDg0Mzc1IC0wLjI2NTYyNSAzLjg1OTM3NSAtMC4wOTM3NSAzLjM0Mzc1IC0wLjA5Mzc1IEMgMi40NTMxMjUgLTAuMDkzNzUgMS40MDYyNSAtMC42MDkzNzUgMS40MDYyNSAtMi4xNTYyNSBDIDEuNDA2MjUgLTIuNzE4NzUgMS42MDkzNzUgLTQuMzI4MTI1IDIuNjA5Mzc1IC01LjUgQyAzLjIwMzEyNSAtNi4yMDMxMjUgNC4xNDA2MjUgLTYuNzAzMTI1IDUuMDMxMjUgLTYuNzAzMTI1IEMgNi4wNDY4NzUgLTYuNzAzMTI1IDYuNjI1IC01LjkzNzUgNi42MjUgLTQuNzgxMjUgQyA2LjYyNSAtNC4zNzUgNi41OTM3NSAtNC4zNzUgNi41OTM3NSAtNC4yNjU2MjUgQyA2LjU5Mzc1IC00LjE3MTg3NSA2LjcwMzEyNSAtNC4xNzE4NzUgNi43NSAtNC4xNzE4NzUgQyA2Ljg3NSAtNC4xNzE4NzUgNi44NzUgLTQuMTg3NSA2LjkyMTg3NSAtNC4zNzUgWiBNIDcuNTQ2ODc1IC02LjkwNjI1ICIvPgo8L2c+CjxnIGlkPSJnbHlwaC0xLTAiPgo8cGF0aCBkPSJNIDQuNDY4NzUgLTIgQyA0LjQ2ODc1IC0zLjE4NzUgMy42NDA2MjUgLTQuMTcxODc1IDIuNTc4MTI1IC00LjE3MTg3NSBDIDIuMDkzNzUgLTQuMTcxODc1IDEuNjcxODc1IC00LjAxNTYyNSAxLjMxMjUgLTMuNjcxODc1IEwgMS4zMTI1IC01LjYwOTM3NSBDIDEuNTE1NjI1IC01LjU0Njg3NSAxLjg0Mzc1IC01LjQ2ODc1IDIuMTU2MjUgLTUuNDY4NzUgQyAzLjM3NSAtNS40Njg3NSA0LjA3ODEyNSAtNi4zNzUgNC4wNzgxMjUgLTYuNTE1NjI1IEMgNC4wNzgxMjUgLTYuNTYyNSA0LjA0Njg3NSAtNi42MjUgMy45Njg3NSAtNi42MjUgQyAzLjk2ODc1IC02LjYyNSAzLjkzNzUgLTYuNjI1IDMuODkwNjI1IC02LjU5Mzc1IEMgMy43MDMxMjUgLTYuNSAzLjIwMzEyNSAtNi4yOTY4NzUgMi41NDY4NzUgLTYuMjk2ODc1IEMgMi4xNDA2MjUgLTYuMjk2ODc1IDEuNjg3NSAtNi4zNzUgMS4yMTg3NSAtNi41NzgxMjUgQyAxLjE0MDYyNSAtNi42MDkzNzUgMS4xMjUgLTYuNjA5Mzc1IDEuMTA5Mzc1IC02LjYwOTM3NSBDIDEgLTYuNjA5Mzc1IDEgLTYuNTMxMjUgMSAtNi4zNzUgTCAxIC0zLjQyMTg3NSBDIDEgLTMuMjUgMSAtMy4xNzE4NzUgMS4xNDA2MjUgLTMuMTcxODc1IEMgMS4yMTg3NSAtMy4xNzE4NzUgMS4yMzQzNzUgLTMuMjAzMTI1IDEuMjY1NjI1IC0zLjI2NTYyNSBDIDEuMzc1IC0zLjQyMTg3NSAxLjc1IC0zLjk1MzEyNSAyLjU0Njg3NSAtMy45NTMxMjUgQyAzLjA3ODEyNSAtMy45NTMxMjUgMy4zMTI1IC0zLjUgMy40MDYyNSAtMy4zMTI1IEMgMy41NjI1IC0yLjk1MzEyNSAzLjU3ODEyNSAtMi41NjI1IDMuNTc4MTI1IC0yLjA2MjUgQyAzLjU3ODEyNSAtMS43MTg3NSAzLjU3ODEyNSAtMS4xMjUgMy4zNDM3NSAtMC43MDMxMjUgQyAzLjA5Mzc1IC0wLjMxMjUgMi43MzQzNzUgLTAuMDYyNSAyLjI4MTI1IC0wLjA2MjUgQyAxLjU0Njg3NSAtMC4wNjI1IDAuOTg0Mzc1IC0wLjU5Mzc1IDAuODEyNSAtMS4xNzE4NzUgQyAwLjg0Mzc1IC0xLjE1NjI1IDAuODc1IC0xLjE1NjI1IDAuOTg0Mzc1IC0xLjE1NjI1IEMgMS4zMTI1IC0xLjE1NjI1IDEuNDg0Mzc1IC0xLjQwNjI1IDEuNDg0Mzc1IC0xLjY0MDYyNSBDIDEuNDg0Mzc1IC0xLjg3NSAxLjMxMjUgLTIuMTI1IDAuOTg0Mzc1IC0yLjEyNSBDIDAuODQzNzUgLTIuMTI1IDAuNSAtMi4wNjI1IDAuNSAtMS41OTM3NSBDIDAuNSAtMC43NSAxLjE4NzUgMC4yMTg3NSAyLjI5Njg3NSAwLjIxODc1IEMgMy40NTMxMjUgMC4yMTg3NSA0LjQ2ODc1IC0wLjczNDM3NSA0LjQ2ODc1IC0yIFogTSA0LjQ2ODc1IC0yICIvPgo8L2c+CjxnIGlkPSJnbHlwaC0xLTEiPgo8cGF0aCBkPSJNIDEuNjI1IC00LjU0Njg3NSBDIDEuMTU2MjUgLTQuODQzNzUgMS4xMjUgLTUuMTcxODc1IDEuMTI1IC01LjM0Mzc1IEMgMS4xMjUgLTUuOTUzMTI1IDEuNzY1NjI1IC02LjM3NSAyLjQ2ODc1IC02LjM3NSBDIDMuMjAzMTI1IC02LjM3NSAzLjgyODEyNSAtNS44NTkzNzUgMy44MjgxMjUgLTUuMTQwNjI1IEMgMy44MjgxMjUgLTQuNTc4MTI1IDMuNDUzMTI1IC00LjA5Mzc1IDIuODU5Mzc1IC0zLjc1IFogTSAzLjA3ODEyNSAtMy41OTM3NSBDIDMuNzgxMjUgLTMuOTY4NzUgNC4yNjU2MjUgLTQuNDg0Mzc1IDQuMjY1NjI1IC01LjE0MDYyNSBDIDQuMjY1NjI1IC02LjA0Njg3NSAzLjM5MDYyNSAtNi42MjUgMi40ODQzNzUgLTYuNjI1IEMgMS40ODQzNzUgLTYuNjI1IDAuNjg3NSAtNS44OTA2MjUgMC42ODc1IC00Ljk1MzEyNSBDIDAuNjg3NSAtNC43ODEyNSAwLjcwMzEyNSAtNC4zMjgxMjUgMS4xMjUgLTMuODU5Mzc1IEMgMS4yMzQzNzUgLTMuNzUgMS41OTM3NSAtMy41IDEuODQzNzUgLTMuMzI4MTI1IEMgMS4yNjU2MjUgLTMuMDQ2ODc1IDAuNDIxODc1IC0yLjQ4NDM3NSAwLjQyMTg3NSAtMS41IEMgMC40MjE4NzUgLTAuNDUzMTI1IDEuNDM3NSAwLjIxODc1IDIuNDY4NzUgMC4yMTg3NSBDIDMuNTkzNzUgMC4yMTg3NSA0LjU0Njg3NSAtMC42MDkzNzUgNC41NDY4NzUgLTEuNjcxODc1IEMgNC41NDY4NzUgLTIuMDMxMjUgNC40Mzc1IC0yLjQ2ODc1IDQuMDQ2ODc1IC0yLjg5MDYyNSBDIDMuODU5Mzc1IC0zLjA5Mzc1IDMuNzAzMTI1IC0zLjIwMzEyNSAzLjA3ODEyNSAtMy41OTM3NSBaIE0gMi4wNzgxMjUgLTMuMTg3NSBMIDMuMjk2ODc1IC0yLjQwNjI1IEMgMy41NzgxMjUgLTIuMjE4NzUgNC4wNDY4NzUgLTEuOTIxODc1IDQuMDQ2ODc1IC0xLjMxMjUgQyA0LjA0Njg3NSAtMC41NzgxMjUgMy4yOTY4NzUgLTAuMDYyNSAyLjQ4NDM3NSAtMC4wNjI1IEMgMS42MjUgLTAuMDYyNSAwLjkyMTg3NSAtMC42NzE4NzUgMC45MjE4NzUgLTEuNSBDIDAuOTIxODc1IC0yLjA3ODEyNSAxLjIzNDM3NSAtMi43MTg3NSAyLjA3ODEyNSAtMy4xODc1IFogTSAyLjA3ODEyNSAtMy4xODc1ICIvPgo8L2c+CjxnIGlkPSJnbHlwaC0xLTIiPgo8cGF0aCBkPSJNIDEuMzEyNSAtMy4yNjU2MjUgTCAxLjMxMjUgLTMuNSBDIDEuMzEyNSAtNi4wMTU2MjUgMi41NDY4NzUgLTYuMzc1IDMuMDQ2ODc1IC02LjM3NSBDIDMuMjk2ODc1IC02LjM3NSAzLjcwMzEyNSAtNi4zMTI1IDMuOTIxODc1IC01Ljk2ODc1IEMgMy43ODEyNSAtNS45Njg3NSAzLjM3NSAtNS45Njg3NSAzLjM3NSAtNS41MzEyNSBDIDMuMzc1IC01LjIxODc1IDMuNjI1IC01LjA2MjUgMy44MjgxMjUgLTUuMDYyNSBDIDQgLTUuMDYyNSA0LjI5Njg3NSAtNS4xNTYyNSA0LjI5Njg3NSAtNS41NDY4NzUgQyA0LjI5Njg3NSAtNi4xNDA2MjUgMy44NTkzNzUgLTYuNjI1IDMuMDMxMjUgLTYuNjI1IEMgMS43NjU2MjUgLTYuNjI1IDAuNDIxODc1IC01LjM0Mzc1IDAuNDIxODc1IC0zLjE0MDYyNSBDIDAuNDIxODc1IC0wLjQ4NDM3NSAxLjU2MjUgMC4yMTg3NSAyLjUgMC4yMTg3NSBDIDMuNTkzNzUgMC4yMTg3NSA0LjU0Njg3NSAtMC43MTg3NSA0LjU0Njg3NSAtMi4wMzEyNSBDIDQuNTQ2ODc1IC0zLjI5Njg3NSAzLjY1NjI1IC00LjI1IDIuNTQ2ODc1IC00LjI1IEMgMS44NzUgLTQuMjUgMS41MTU2MjUgLTMuNzM0Mzc1IDEuMzEyNSAtMy4yNjU2MjUgWiBNIDIuNSAtMC4wNjI1IEMgMS44NzUgLTAuMDYyNSAxLjU2MjUgLTAuNjU2MjUgMS41MTU2MjUgLTAuODEyNSBDIDEuMzI4MTI1IC0xLjI2NTYyNSAxLjMyODEyNSAtMi4wNjI1IDEuMzI4MTI1IC0yLjI1IEMgMS4zMjgxMjUgLTMuMDE1NjI1IDEuNjU2MjUgLTQuMDE1NjI1IDIuNTQ2ODc1IC00LjAxNTYyNSBDIDIuNzAzMTI1IC00LjAxNTYyNSAzLjE1NjI1IC00LjAxNTYyNSAzLjQ2ODc1IC0zLjQwNjI1IEMgMy42NDA2MjUgLTMuMDMxMjUgMy42NDA2MjUgLTIuNTMxMjUgMy42NDA2MjUgLTIuMDMxMjUgQyAzLjY0MDYyNSAtMS41NjI1IDMuNjQwNjI1IC0xLjA2MjUgMy40ODQzNzUgLTAuNzAzMTI1IEMgMy4xODc1IC0wLjEwOTM3NSAyLjcxODc1IC0wLjA2MjUgMi41IC0wLjA2MjUgWiBNIDIuNSAtMC4wNjI1ICIvPgo8L2c+CjxnIGlkPSJnbHlwaC0xLTMiPgo8cGF0aCBkPSJNIDQuNTc4MTI1IC0zLjE4NzUgQyA0LjU3ODEyNSAtMy45Njg3NSA0LjUxNTYyNSAtNC43NjU2MjUgNC4xNzE4NzUgLTUuNSBDIDMuNzE4NzUgLTYuNDUzMTI1IDIuOTA2MjUgLTYuNjI1IDIuNDg0Mzc1IC02LjYyNSBDIDEuODkwNjI1IC02LjYyNSAxLjE1NjI1IC02LjM1OTM3NSAwLjc1IC01LjQzNzUgQyAwLjQzNzUgLTQuNzUgMC4zOTA2MjUgLTMuOTY4NzUgMC4zOTA2MjUgLTMuMTg3NSBDIDAuMzkwNjI1IC0yLjQzNzUgMC40MjE4NzUgLTEuNTQ2ODc1IDAuODI4MTI1IC0wLjc4MTI1IEMgMS4yNjU2MjUgMC4wMTU2MjUgMS45ODQzNzUgMC4yMTg3NSAyLjQ2ODc1IDAuMjE4NzUgQyAzLjAxNTYyNSAwLjIxODc1IDMuNzY1NjI1IDAuMDE1NjI1IDQuMjAzMTI1IC0wLjkzNzUgQyA0LjUxNTYyNSAtMS42MjUgNC41NzgxMjUgLTIuMzkwNjI1IDQuNTc4MTI1IC0zLjE4NzUgWiBNIDIuNDY4NzUgMCBDIDIuMDkzNzUgMCAxLjUgLTAuMjUgMS4zMjgxMjUgLTEuMjAzMTI1IEMgMS4yMTg3NSAtMS43OTY4NzUgMS4yMTg3NSAtMi43MTg3NSAxLjIxODc1IC0zLjI5Njg3NSBDIDEuMjE4NzUgLTMuOTM3NSAxLjIxODc1IC00LjU5Mzc1IDEuMjk2ODc1IC01LjEyNSBDIDEuNDg0Mzc1IC02LjMxMjUgMi4yMTg3NSAtNi40MDYyNSAyLjQ2ODc1IC02LjQwNjI1IEMgMi43OTY4NzUgLTYuNDA2MjUgMy40NTMxMjUgLTYuMjE4NzUgMy42NDA2MjUgLTUuMjM0Mzc1IEMgMy43NSAtNC42ODc1IDMuNzUgLTMuOTIxODc1IDMuNzUgLTMuMjk2ODc1IEMgMy43NSAtMi41NDY4NzUgMy43NSAtMS44NzUgMy42NDA2MjUgLTEuMjUgQyAzLjQ4NDM3NSAtMC4yOTY4NzUgMi45MjE4NzUgMCAyLjQ2ODc1IDAgWiBNIDIuNDY4NzUgMCAiLz4KPC9nPgo8ZyBpZD0iZ2x5cGgtMi0wIj4KPHBhdGggZD0iTSAzLjUzMTI1IC0xLjczNDM3NSBDIDMuNTMxMjUgLTIuNTc4MTI1IDIuODQzNzUgLTMuMjM0Mzc1IDIuMDMxMjUgLTMuMjM0Mzc1IEMgMS4yMDMxMjUgLTMuMjM0Mzc1IDAuNTMxMjUgLTIuNTYyNSAwLjUzMTI1IC0xLjc1IEMgMC41MzEyNSAtMC45MDYyNSAxLjIwMzEyNSAtMC4yNSAyLjAzMTI1IC0wLjI1IEMgMi44NTkzNzUgLTAuMjUgMy41MzEyNSAtMC45MjE4NzUgMy41MzEyNSAtMS43MzQzNzUgWiBNIDIuMDMxMjUgLTAuNTkzNzUgQyAxLjM3NSAtMC41OTM3NSAwLjg3NSAtMS4xMjUgMC44NzUgLTEuNzM0Mzc1IEMgMC44NzUgLTIuMzkwNjI1IDEuMzkwNjI1IC0yLjg5MDYyNSAyLjAzMTI1IC0yLjg5MDYyNSBDIDIuNjg3NSAtMi44OTA2MjUgMy4xODc1IC0yLjM1OTM3NSAzLjE4NzUgLTEuNzUgQyAzLjE4NzUgLTEuMDkzNzUgMi42NzE4NzUgLTAuNTkzNzUgMi4wMzEyNSAtMC41OTM3NSBaIE0gMi4wMzEyNSAtMC41OTM3NSAiLz4KPC9nPgo8L2c+CjwvZGVmcz4KPHBhdGggZmlsbD0ibm9uZSIgc3Ryb2tlLXdpZHRoPSIwLjc5NzAxIiBzdHJva2UtbGluZWNhcD0iYnV0dCIgc3Ryb2tlLWxpbmVqb2luPSJtaXRlciIgc3Ryb2tlPSJyZ2IoMCUsIDAlLCAwJSkiIHN0cm9rZS1vcGFjaXR5PSIxIiBzdHJva2UtbWl0ZXJsaW1pdD0iMTAiIGQ9Ik0gLTAuMDAxMzU0ODUgMC4wMDEwNDY3OCBMIDExMy4zOTQ0MjQgMC4wMDEwNDY3OCBMIDkwLjcxNjA1MiAxNTcuMTE5NDEgWiBNIC0wLjAwMTM1NDg1IDAuMDAxMDQ2NzggIiB0cmFuc2Zvcm09Im1hdHJpeCgwLjk5Njc4NSwgMCwgMCwgLTAuOTk2Nzg1LCAxNy4yNzA4ODIsIDE3My4xOTI0NSkiLz4KPGcgZmlsbD0icmdiKDAlLCAwJSwgMCUpIiBmaWxsLW9wYWNpdHk9IjEiPgo8dXNlIHhsaW5rOmhyZWY9IiNnbHlwaC0wLTAiIHg9IjYuMzE1MjE0IiB5PSIxODMuNDg1MjU1Ii8+CjwvZz4KPGcgZmlsbD0icmdiKDAlLCAwJSwgMCUpIiBmaWxsLW9wYWNpdHk9IjEiPgo8dXNlIHhsaW5rOmhyZWY9IiNnbHlwaC0wLTEiIHg9IjEzMy44MDcwNDkiIHk9IjE4My40ODUyNTUiLz4KPC9nPgo8ZyBmaWxsPSJyZ2IoMCUsIDAlLCAwJSkiIGZpbGwtb3BhY2l0eT0iMSI+Cjx1c2UgeGxpbms6aHJlZj0iI2dseXBoLTAtMiIgeD0iMTAzLjc4OTg1NiIgeT0iMTMuMDczODM3Ii8+CjwvZz4KPGcgZmlsbD0icmdiKDAlLCAwJSwgMCUpIiBmaWxsLW9wYWNpdHk9IjEiPgo8dXNlIHhsaW5rOmhyZWY9IiNnbHlwaC0xLTAiIHg9IjcxLjI5OTYzOCIgeT0iMTgzLjA5OTQ5OSIvPgo8L2c+CjxnIGZpbGw9InJnYigwJSwgMCUsIDAlKSIgZmlsbC1vcGFjaXR5PSIxIj4KPHVzZSB4bGluazpocmVmPSIjZ2x5cGgtMS0xIiB4PSI1NC4wMDc0MDUiIHk9IjkxLjM4MzI4NiIvPgo8L2c+CjxwYXRoIGZpbGw9Im5vbmUiIHN0cm9rZS13aWR0aD0iMC4zOTg1IiBzdHJva2UtbGluZWNhcD0iYnV0dCIgc3Ryb2tlLWxpbmVqb2luPSJtaXRlciIgc3Ryb2tlPSJyZ2IoMCUsIDAlLCAwJSkiIHN0cm9rZS1vcGFjaXR5PSIxIiBzdHJva2UtbWl0ZXJsaW1pdD0iMTAiIGQ9Ik0gMjAuNDA4MDA0IDAuMDAxMDQ2NzggQyAyMC40MDgwMDQgNy4yOTAxMDQgMTYuNTIwNTA3IDE0LjAzMDUyMiAxMC4yMDMzMjUgMTcuNjc1MDUgIiB0cmFuc2Zvcm09Im1hdHJpeCgwLjk5Njc4NSwgMCwgMCwgLTAuOTk2Nzg1LCAxNy4yNzA4ODIsIDE3My4xOTI0NSkiLz4KPGcgZmlsbD0icmdiKDAlLCAwJSwgMCUpIiBmaWxsLW9wYWNpdHk9IjEiPgo8dXNlIHhsaW5rOmhyZWY9IiNnbHlwaC0xLTIiIHg9IjM4LjI3OTEzIiB5PSIxNjQuMTc4NTIiLz4KPHVzZSB4bGluazpocmVmPSIjZ2x5cGgtMS0zIiB4PSI0My4yNDQ0MTYiIHk9IjE2NC4xNzg1MiIvPgo8L2c+CjxnIGZpbGw9InJnYigwJSwgMCUsIDAlKSIgZmlsbC1vcGFjaXR5PSIxIj4KPHVzZSB4bGluazpocmVmPSIjZ2x5cGgtMi0wIiB4PSI0OC4yMDkxMDUiIHk9IjE2MC41NzUxNDEiLz4KPC9nPgo8L3N2Zz4K" class="max-w-full" alt="Figure" /></div>

\begin{enumerate}
    \item Calculer la longueur $BC$.
    \item En déduire $\cos\widehat{B}$, puis une mesure de l'angle $\widehat{B}$ arrondie au degré.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item D'après le théorème d'Al-Kashi :
    $$BC^2 = AB^2 + AC^2 - 2\,AB\times AC\times\cos\widehat{A} = 5^2 + 8^2 - 2\times 5\times 8\times\cos(60^\circ).$$
    Donc $BC^2 = 25 + 64 - 80\times\tfrac{1}{2} = 89 - 40 = 49$, d'où $BC = 7$.
    \item On applique de nouveau Al-Kashi, cette fois pour le côté $[AC]$ opposé à l'angle $\widehat{B}$ :
    $$AC^2 = AB^2 + BC^2 - 2\,AB\times BC\times\cos\widehat{B},$$
    soit $64 = 25 + 49 - 2\times 5\times 7\times\cos\widehat{B} = 74 - 70\cos\widehat{B}$. On en tire $70\cos\widehat{B} = 10$, donc $\cos\widehat{B} = \dfrac{1}{7} \approx 0{,}143$, et $\widehat{B} \approx 82^\circ$.
\end{enumerate}
