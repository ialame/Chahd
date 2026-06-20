### Problème 1 : Modélisation médicale (Faux positifs et Faux négatifs)
\begin{enonce}
Dans une population, une maladie touche $1\%$ des individus. On met au point un test de dépistage de cette maladie :
- Si un individu est malade, le test est positif dans $99\%$ des cas (sensibilité du test).
- Si un individu est sain, le test est négatif dans $95\%$ des cas (spécificité du test).
On choisit un individu au hasard. On note $M$ l'événement « l'individu est malade » et $T$ « le test est positif ».
\begin{enumerate}
    \item Modéliser la situation par un arbre pondéré.
    \item Calculer la probabilité que le test soit positif pour un individu choisi au hasard.
    \item Si le test d'un individu est positif, quelle est la probabilité qu'il soit réellement malade ? Commenter le résultat obtenu.
    \item Si le test est négatif, quelle est la probabilité que l'individu soit tout de même malade (cas d'un faux négatif) ?
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item L'arbre pondéré traduisant la situation est :
    \begin{center}
    <div class="flex justify-center my-5"><img src="data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz4KPHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHhtbG5zOnhsaW5rPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5L3hsaW5rIiB3aWR0aD0iMTg2LjI5OXB0IiBoZWlnaHQ9IjEwNS40ODFwdCIgdmlld0JveD0iMCAwIDE4Ni4yOTkgMTA1LjQ4MSI+CjxkZWZzPgo8Zz4KPGcgaWQ9ImdseXBoLTAtMCI+CjxwYXRoIGQ9Ik0gNC4yNjU2MjUgLTUuNTMxMjUgTCA0LjI2NTYyNSAtNS44NDM3NSBMIDAuNjg3NSAtNS44NDM3NSBMIDAuNjg3NSAtNS41MzEyNSBaIE0gNC4yNjU2MjUgLTUuNTMxMjUgIi8+CjwvZz4KPGcgaWQ9ImdseXBoLTEtMCI+CjxwYXRoIGQ9Ik0gOS4xNzE4NzUgLTYgQyA5LjI2NTYyNSAtNi4zNTkzNzUgOS4yODEyNSAtNi40NTMxMjUgMTAuMDMxMjUgLTYuNDUzMTI1IEMgMTAuMjUgLTYuNDUzMTI1IDEwLjM0Mzc1IC02LjQ1MzEyNSAxMC4zNDM3NSAtNi42NTYyNSBDIDEwLjM0Mzc1IC02Ljc2NTYyNSAxMC4yNSAtNi43NjU2MjUgMTAuMDc4MTI1IC02Ljc2NTYyNSBMIDguNzY1NjI1IC02Ljc2NTYyNSBDIDguNTE1NjI1IC02Ljc2NTYyNSA4LjUgLTYuNzY1NjI1IDguMzc1IC02LjU3ODEyNSBMIDQuNzY1NjI1IC0wLjkzNzUgTCA0IC02LjUzMTI1IEMgMy45Njg3NSAtNi43NjU2MjUgMy45Mzc1IC02Ljc2NTYyNSAzLjY4NzUgLTYuNzY1NjI1IEwgMi4zMjgxMjUgLTYuNzY1NjI1IEMgMi4xNDA2MjUgLTYuNzY1NjI1IDIuMDMxMjUgLTYuNzY1NjI1IDIuMDMxMjUgLTYuNTc4MTI1IEMgMi4wMzEyNSAtNi40NTMxMjUgMi4xMjUgLTYuNDUzMTI1IDIuMzEyNSAtNi40NTMxMjUgQyAyLjQ1MzEyNSAtNi40NTMxMjUgMi42MjUgLTYuNDUzMTI1IDIuNzUgLTYuNDM3NSBDIDIuOTA2MjUgLTYuNDIxODc1IDIuOTY4NzUgLTYuMzkwNjI1IDIuOTY4NzUgLTYuMjgxMjUgQyAyLjk2ODc1IC02LjIzNDM3NSAyLjk1MzEyNSAtNi4yMTg3NSAyLjkyMTg3NSAtNi4wOTM3NSBMIDEuNjcxODc1IC0xLjA0Njg3NSBDIDEuNTYyNSAtMC42NTYyNSAxLjM5MDYyNSAtMC4zNDM3NSAwLjU5Mzc1IC0wLjMxMjUgQyAwLjU0Njg3NSAtMC4zMTI1IDAuNDIxODc1IC0wLjI5Njg3NSAwLjQyMTg3NSAtMC4xMjUgQyAwLjQyMTg3NSAtMC4wMzEyNSAwLjQ2ODc1IDAgMC41NjI1IDAgQyAwLjg3NSAwIDEuMjE4NzUgLTAuMDMxMjUgMS41NDY4NzUgLTAuMDMxMjUgQyAxLjg3NSAtMC4wMzEyNSAyLjIzNDM3NSAwIDIuNTYyNSAwIEMgMi42MDkzNzUgMCAyLjc1IDAgMi43NSAtMC4yMDMxMjUgQyAyLjc1IC0wLjMxMjUgMi42NDA2MjUgLTAuMzEyNSAyLjU2MjUgLTAuMzEyNSBDIDIgLTAuMzEyNSAxLjg5MDYyNSAtMC41MTU2MjUgMS44OTA2MjUgLTAuNzUgQyAxLjg5MDYyNSAtMC44MTI1IDEuOTA2MjUgLTAuODU5Mzc1IDEuOTM3NSAtMC45Njg3NSBMIDMuMjgxMjUgLTYuMzc1IEwgNC4xNDA2MjUgLTAuMjM0Mzc1IEMgNC4xNTYyNSAtMC4xMDkzNzUgNC4xNzE4NzUgMCA0LjI5Njg3NSAwIEMgNC4zOTA2MjUgMCA0LjQ1MzEyNSAtMC4xMDkzNzUgNC41IC0wLjE3MTg3NSBMIDguNTE1NjI1IC02LjQ1MzEyNSBMIDcuMTA5Mzc1IC0wLjc2NTYyNSBDIDcgLTAuMzkwNjI1IDYuOTg0Mzc1IC0wLjMxMjUgNi4yMDMxMjUgLTAuMzEyNSBDIDYuMDMxMjUgLTAuMzEyNSA1LjkyMTg3NSAtMC4zMTI1IDUuOTIxODc1IC0wLjEyNSBDIDUuOTIxODc1IDAgNi4wNDY4NzUgMCA2LjA3ODEyNSAwIEMgNi4zNDM3NSAwIDcuMDMxMjUgLTAuMDMxMjUgNy4yOTY4NzUgLTAuMDMxMjUgQyA3LjcwMzEyNSAtMC4wMzEyNSA4LjE0MDYyNSAwIDguNTQ2ODc1IDAgQyA4LjU5Mzc1IDAgOC43MzQzNzUgMCA4LjczNDM3NSAtMC4yMDMxMjUgQyA4LjczNDM3NSAtMC4zMTI1IDguNjQwNjI1IC0wLjMxMjUgOC40NTMxMjUgLTAuMzEyNSBDIDguMDc4MTI1IC0wLjMxMjUgNy44MTI1IC0wLjMxMjUgNy44MTI1IC0wLjQ4NDM3NSBDIDcuODEyNSAtMC41MzEyNSA3LjgxMjUgLTAuNTQ2ODc1IDcuODU5Mzc1IC0wLjcxODc1IFogTSA5LjE3MTg3NSAtNiAiLz4KPC9nPgo8ZyBpZD0iZ2x5cGgtMS0xIj4KPHBhdGggZD0iTSA0LjIzNDM3NSAtNi4wMTU2MjUgQyA0LjI5Njg3NSAtNi4yOTY4NzUgNC4zNDM3NSAtNi4zNDM3NSA0LjQ1MzEyNSAtNi4zNzUgQyA0LjU0Njg3NSAtNi40MDYyNSA0Ljg3NSAtNi40MDYyNSA1LjA3ODEyNSAtNi40MDYyNSBDIDYuMDc4MTI1IC02LjQwNjI1IDYuNTMxMjUgLTYuMzU5Mzc1IDYuNTMxMjUgLTUuNTkzNzUgQyA2LjUzMTI1IC01LjQzNzUgNi40ODQzNzUgLTUuMDQ2ODc1IDYuNDUzMTI1IC00Ljc5Njg3NSBDIDYuNDM3NSAtNC43NSA2LjQyMTg3NSAtNC42NDA2MjUgNi40MjE4NzUgLTQuNjA5Mzc1IEMgNi40MjE4NzUgLTQuNTQ2ODc1IDYuNDUzMTI1IC00LjQ4NDM3NSA2LjUzMTI1IC00LjQ4NDM3NSBDIDYuNjQwNjI1IC00LjQ4NDM3NSA2LjY3MTg3NSAtNC41NjI1IDYuNjg3NSAtNC43MDMxMjUgTCA2Ljk1MzEyNSAtNi40MjE4NzUgQyA2Ljk2ODc1IC02LjQ2ODc1IDYuOTY4NzUgLTYuNTYyNSA2Ljk2ODc1IC02LjU5Mzc1IEMgNi45Njg3NSAtNi43MDMxMjUgNi44NzUgLTYuNzAzMTI1IDYuNzAzMTI1IC02LjcwMzEyNSBMIDEuMjAzMTI1IC02LjcwMzEyNSBDIDAuOTY4NzUgLTYuNzAzMTI1IDAuOTUzMTI1IC02LjcwMzEyNSAwLjg5MDYyNSAtNi41MTU2MjUgTCAwLjI5Njg3NSAtNC43NjU2MjUgQyAwLjI4MTI1IC00Ljc1IDAuMjM0Mzc1IC00LjYwOTM3NSAwLjIzNDM3NSAtNC41OTM3NSBDIDAuMjM0Mzc1IC00LjUzMTI1IDAuMjgxMjUgLTQuNDg0Mzc1IDAuMzU5Mzc1IC00LjQ4NDM3NSBDIDAuNDUzMTI1IC00LjQ4NDM3NSAwLjQ2ODc1IC00LjUzMTI1IDAuNTMxMjUgLTQuNjg3NSBDIDEuMDYyNSAtNi4yMTg3NSAxLjMxMjUgLTYuNDA2MjUgMi43ODEyNSAtNi40MDYyNSBMIDMuMTcxODc1IC02LjQwNjI1IEMgMy40NTMxMjUgLTYuNDA2MjUgMy40NTMxMjUgLTYuMzU5Mzc1IDMuNDUzMTI1IC02LjI4MTI1IEMgMy40NTMxMjUgLTYuMjE4NzUgMy40MjE4NzUgLTYuMTA5Mzc1IDMuNDA2MjUgLTYuMDc4MTI1IEwgMi4wNzgxMjUgLTAuNzgxMjUgQyAxLjk4NDM3NSAtMC40MjE4NzUgMS45Njg3NSAtMC4zMTI1IDAuOTA2MjUgLTAuMzEyNSBDIDAuNTQ2ODc1IC0wLjMxMjUgMC40ODQzNzUgLTAuMzEyNSAwLjQ4NDM3NSAtMC4xMjUgQyAwLjQ4NDM3NSAwIDAuNTkzNzUgMCAwLjY1NjI1IDAgQyAwLjkyMTg3NSAwIDEuMjAzMTI1IC0wLjAxNTYyNSAxLjQ2ODc1IC0wLjAxNTYyNSBDIDEuNzUgLTAuMDE1NjI1IDIuMDMxMjUgLTAuMDMxMjUgMi4zMTI1IC0wLjAzMTI1IEMgMi41NzgxMjUgLTAuMDMxMjUgMi44NTkzNzUgLTAuMDE1NjI1IDMuMTI1IC0wLjAxNTYyNSBDIDMuNDIxODc1IC0wLjAxNTYyNSAzLjcxODc1IDAgNCAwIEMgNC4wOTM3NSAwIDQuMjAzMTI1IDAgNC4yMDMxMjUgLTAuMjAzMTI1IEMgNC4yMDMxMjUgLTAuMzEyNSA0LjEyNSAtMC4zMTI1IDMuODc1IC0wLjMxMjUgQyAzLjYyNSAtMC4zMTI1IDMuNSAtMC4zMTI1IDMuMjM0Mzc1IC0wLjMyODEyNSBDIDIuOTUzMTI1IC0wLjM1OTM3NSAyLjg3NSAtMC4zOTA2MjUgMi44NzUgLTAuNTQ2ODc1IEMgMi44NzUgLTAuNTYyNSAyLjg3NSAtMC42MDkzNzUgMi45MDYyNSAtMC43NSBaIE0gNC4yMzQzNzUgLTYuMDE1NjI1ICIvPgo8L2c+CjxnIGlkPSJnbHlwaC0yLTAiPgo8cGF0aCBkPSJNIDIuMTcxODc1IC02LjA0Njg3NSBDIDAuNDY4NzUgLTUuODkwNjI1IDAuMzU5Mzc1IC0zLjkyMTg3NSAwLjM1OTM3NSAtMi44NzUgQyAwLjM1OTM3NSAtMi4wNDY4NzUgMC40Mzc1IC0xLjAzMTI1IDAuOTg0Mzc1IC0wLjM5MDYyNSBDIDEuMzEyNSAtMC4wMzEyNSAxLjc5Njg3NSAwLjIwMzEyNSAyLjI4MTI1IDAuMjAzMTI1IEMgNC4xNDA2MjUgMC4yMDMxMjUgNC4yMTg3NSAtMi4wNjI1IDQuMjE4NzUgLTIuOTY4NzUgQyA0LjIxODc1IC0zLjgxMjUgNC4xMjUgLTQuODI4MTI1IDMuNTc4MTI1IC01LjQ1MzEyNSBDIDMuMjY1NjI1IC01LjgxMjUgMi43ODEyNSAtNi4wNDY4NzUgMi4yOTY4NzUgLTYuMDQ2ODc1IEMgMi4yNSAtNi4wNDY4NzUgMi4yMTg3NSAtNi4wNDY4NzUgMi4xNzE4NzUgLTYuMDQ2ODc1IFogTSAxLjEwOTM3NSAtMi41MzEyNSBDIDEuMTA5Mzc1IC0yLjU5Mzc1IDEuMTA5Mzc1IC0yLjY3MTg3NSAxLjEwOTM3NSAtMi43MzQzNzUgTCAxLjEwOTM3NSAtMi45NTMxMjUgQyAxLjEwOTM3NSAtMy45ODQzNzUgMS4xNDA2MjUgLTUuNDUzMTI1IDIuMjk2ODc1IC01LjQ1MzEyNSBDIDMuNDIxODc1IC01LjQ1MzEyNSAzLjQ2ODc1IC0zLjkyMTg3NSAzLjQ2ODc1IC0zLjE1NjI1IEwgMy40Njg3NSAtMi43MzQzNzUgQyAzLjQ2ODc1IC0xLjg5MDYyNSAzLjQyMTg3NSAtMC43ODEyNSAyLjU2MjUgLTAuNDM3NSBDIDIuNDg0Mzc1IC0wLjQwNjI1IDIuMzkwNjI1IC0wLjM5MDYyNSAyLjI5Njg3NSAtMC4zOTA2MjUgQyAxLjQyMTg3NSAtMC4zOTA2MjUgMS4yMDMxMjUgLTEuNDA2MjUgMS4xNDA2MjUgLTIuMTcxODc1IEMgMS4xMjUgLTIuMjk2ODc1IDEuMTQwNjI1IC0yLjQwNjI1IDEuMTA5Mzc1IC0yLjUzMTI1IFogTSAxLjEwOTM3NSAtMi41MzEyNSAiLz4KPC9nPgo8ZyBpZD0iZ2x5cGgtMi0xIj4KPHBhdGggZD0iTSAwLjg5MDYyNSAtMC43ODEyNSBMIDAuODkwNjI1IC0wLjAxNTYyNSBMIDEuMTI1IC0wLjAxNTYyNSBMIDAuODkwNjI1IDEuMTI1IEwgMS4yODEyNSAxLjEyNSBMIDEuNjU2MjUgMCBMIDEuNjU2MjUgLTAuNzgxMjUgWiBNIDAuODkwNjI1IC0wLjc4MTI1ICIvPgo8L2c+CjxnIGlkPSJnbHlwaC0yLTIiPgo8cGF0aCBkPSJNIDMuMzc1IC0yLjQzNzUgTCAzLjM5MDYyNSAtMi40Mzc1IEMgMy4zNDM3NSAtMS42NzE4NzUgMi45Njg3NSAtMC4zOTA2MjUgMS44NzUgLTAuMzkwNjI1IEwgMS43OTY4NzUgLTAuMzkwNjI1IEMgMS42MDkzNzUgLTAuNDA2MjUgMS40MDYyNSAtMC40NTMxMjUgMS4yMzQzNzUgLTAuNTQ2ODc1IEMgMS4xNDA2MjUgLTAuNTkzNzUgMS4wNDY4NzUgLTAuNjcxODc1IDAuOTUzMTI1IC0wLjczNDM3NSBMIDAuNjU2MjUgLTAuMjE4NzUgQyAxLjAzMTI1IDAuMDQ2ODc1IDEuNDIxODc1IDAuMTg3NSAxLjkwNjI1IDAuMTg3NSBDIDMuMzc1IDAuMTg3NSA0LjEyNSAtMS40NTMxMjUgNC4xODc1IC0yLjc4MTI1IEwgNC4xODc1IC0yLjkyMTg3NSBDIDQuMTg3NSAtNC4wOTM3NSAzLjk4NDM3NSAtNi4wNDY4NzUgMi4yOTY4NzUgLTYuMDQ2ODc1IEMgMS4xNDA2MjUgLTYuMDQ2ODc1IDAuMzkwNjI1IC00Ljk1MzEyNSAwLjM5MDYyNSAtMy44NzUgQyAwLjM5MDYyNSAtMi45ODQzNzUgMC43OTY4NzUgLTEuNzE4NzUgMS44NDM3NSAtMS43MTg3NSBDIDIuNDA2MjUgLTEuNzE4NzUgMy4xMDkzNzUgLTIgMy4zNzUgLTIuNDM3NSBaIE0gMy4zNzUgLTMuODkwNjI1IEMgMy4zNTkzNzUgLTMuODU5Mzc1IDMuMzU5Mzc1IC0zLjgyODEyNSAzLjM1OTM3NSAtMy43OTY4NzUgQyAzLjM1OTM3NSAtMy43MzQzNzUgMy4zNzUgLTMuNjU2MjUgMy4zNzUgLTMuNTkzNzUgTCAzLjM3NSAtMy41NDY4NzUgQyAzLjMxMjUgLTIuOTM3NSAyLjkyMTg3NSAtMi4yOTY4NzUgMi4yMTg3NSAtMi4yOTY4NzUgQyAxLjQyMTg3NSAtMi4yOTY4NzUgMS4xNzE4NzUgLTMuMTI1IDEuMTcxODc1IC0zLjgyODEyNSBDIDEuMTcxODc1IC00LjQyMTg3NSAxLjI4MTI1IC01LjQ4NDM3NSAyLjM0Mzc1IC01LjQ4NDM3NSBDIDMuMTcxODc1IC01LjQ4NDM3NSAzLjM3NSAtNC4yNjU2MjUgMy4zNzUgLTMuOTIxODc1IFogTSAzLjM3NSAtMy44OTA2MjUgIi8+CjwvZz4KPGcgaWQ9ImdseXBoLTItMyI+CjxwYXRoIGQ9Ik0gMC43MTg3NSAtNS44NDM3NSBMIDAuNzE4NzUgLTIuNTMxMjUgTCAxLjE3MTg3NSAtMi41MzEyNSBDIDEuMjAzMTI1IC0yLjUzMTI1IDEuMjE4NzUgLTIuNTE1NjI1IDEuMjY1NjI1IC0yLjUxNTYyNSBDIDEuNDA2MjUgLTIuNTE1NjI1IDEuNDg0Mzc1IC0yLjc1IDEuNTYyNSAtMi44NTkzNzUgQyAxLjc1IC0zLjA3ODEyNSAyLjA0Njg3NSAtMy4yMzQzNzUgMi4zNDM3NSAtMy4yMzQzNzUgQyAzLjA3ODEyNSAtMy4yMzQzNzUgMy4yNjU2MjUgLTIuNDIxODc1IDMuMjY1NjI1IC0xLjg5MDYyNSBDIDMuMjY1NjI1IC0xLjIxODc1IDIuOTg0Mzc1IC0wLjM5MDYyNSAyLjA3ODEyNSAtMC4zOTA2MjUgQyAxLjUgLTAuMzkwNjI1IDAuOTY4NzUgLTAuNzE4NzUgMC42NTYyNSAtMS4yMTg3NSBMIDAuNDM3NSAtMC44NTkzNzUgQyAwLjQwNjI1IC0wLjgxMjUgMC4zNTkzNzUgLTAuNzUgMC4zNTkzNzUgLTAuNzAzMTI1IEMgMC4zNTkzNzUgLTAuNjI1IDAuNSAtMC40ODQzNzUgMC41NzgxMjUgLTAuNDIxODc1IEMgMC45Njg3NSAtMC4wMzEyNSAxLjUzMTI1IDAuMTg3NSAyLjA3ODEyNSAwLjE4NzUgQyAzLjE3MTg3NSAwLjE4NzUgNC4xMjUgLTAuNjg3NSA0LjEyNSAtMS44NDM3NSBDIDQuMTI1IC0yLjg0Mzc1IDMuMzc1IC0zLjgxMjUgMi4zNzUgLTMuODEyNSBMIDIuMjk2ODc1IC0zLjgxMjUgQyAxLjk2ODc1IC0zLjc4MTI1IDEuNjcxODc1IC0zLjY1NjI1IDEuNDIxODc1IC0zLjQ2ODc1IEwgMS40MjE4NzUgLTUuMjM0Mzc1IEwgMy44MTI1IC01LjIzNDM3NSBMIDMuODEyNSAtNS44NDM3NSBaIE0gMC43MTg3NSAtNS44NDM3NSAiLz4KPC9nPgo8ZyBpZD0iZ2x5cGgtMi00Ij4KPHBhdGggZD0iTSAwLjc5Njg3NSAtNS40NTMxMjUgTCAwLjc5Njg3NSAtNC45MDYyNSBDIDEuMjE4NzUgLTQuOTA2MjUgMS41NjI1IC00Ljk2ODc1IDIgLTUuMTA5Mzc1IEwgMiAtMC41NjI1IEwgMC44NTkzNzUgLTAuNTYyNSBMIDAuODU5Mzc1IC0wLjAxNTYyNSBMIDMuOTA2MjUgLTAuMDE1NjI1IEwgMy45MDYyNSAtMC41NjI1IEwgMi43NjU2MjUgLTAuNTYyNSBMIDIuNzY1NjI1IC02LjA0Njg3NSBMIDIuNjcxODc1IC02LjA0Njg3NSBDIDIuNTMxMjUgLTYuMDQ2ODc1IDIuNDg0Mzc1IC01Ljk1MzEyNSAyLjM5MDYyNSAtNS44OTA2MjUgQyAxLjk2ODc1IC01LjU0Njg3NSAxLjM0Mzc1IC01LjQ1MzEyNSAwLjc5Njg3NSAtNS40NTMxMjUgWiBNIDAuNzk2ODc1IC01LjQ1MzEyNSAiLz4KPC9nPgo8L2c+CjxjbGlwUGF0aCBpZD0iY2xpcC0wIj4KPHBhdGggY2xpcC1ydWxlPSJub256ZXJvIiBkPSJNIDAuMTA1NDY5IDQyIEwgODkgNDIgTCA4OSA4OCBMIDAuMTA1NDY5IDg4IFogTSAwLjEwNTQ2OSA0MiAiLz4KPC9jbGlwUGF0aD4KPGNsaXBQYXRoIGlkPSJjbGlwLTEiPgo8cGF0aCBjbGlwLXJ1bGU9Im5vbnplcm8iIGQ9Ik0gMC4xMDU0NjkgMTcgTCA4OSAxNyBMIDg5IDYzIEwgMC4xMDU0NjkgNjMgWiBNIDAuMTA1NDY5IDE3ICIvPgo8L2NsaXBQYXRoPgo8L2RlZnM+CjxnIGZpbGw9InJnYigwJSwgMCUsIDAlKSIgZmlsbC1vcGFjaXR5PSIxIj4KPHVzZSB4bGluazpocmVmPSIjZ2x5cGgtMC0wIiB4PSI4OS4zNTUxNjkiIHk9IjgyLjA3NzE1NCIvPgo8L2c+CjxnIGZpbGw9InJnYigwJSwgMCUsIDAlKSIgZmlsbC1vcGFjaXR5PSIxIj4KPHVzZSB4bGluazpocmVmPSIjZ2x5cGgtMS0wIiB4PSI4NS42NTgzNTkiIHk9Ijg0LjU4MjgyNiIvPgo8L2c+CjxnIGNsaXAtcGF0aD0idXJsKCNjbGlwLTApIj4KPHBhdGggZmlsbD0ibm9uZSIgc3Ryb2tlLXdpZHRoPSIwLjc5NzAxIiBzdHJva2UtbGluZWNhcD0iYnV0dCIgc3Ryb2tlLWxpbmVqb2luPSJtaXRlciIgc3Ryb2tlPSJyZ2IoMCUsIDAlLCAwJSkiIHN0cm9rZS1vcGFjaXR5PSIxIiBzdHJva2UtbWl0ZXJsaW1pdD0iMTAiIGQ9Ik0gMy41MTk1MzkgLTEuMTcwNzU5IEwgNzEuNzI0NTgxIC0yMy45MTEwMDYgIiB0cmFuc2Zvcm09Im1hdHJpeCgwLjk5NTEwNCwgMCwgMCwgLTAuOTk1MTA0LCA2LjM4NDQxMiwgNTIuMzA3NjMpIi8+CjwvZz4KPHBhdGggZmlsbC1ydWxlPSJub256ZXJvIiBmaWxsPSJyZ2IoMCUsIDAlLCAwJSkiIGZpbGwtb3BhY2l0eT0iMSIgZD0iTSA4Mi4xNTYyNSA3Ny41NjY0MDYgQyA4MC45MzM1OTQgNzYuODkwNjI1IDc5LjA1ODU5NCA3NS40NDkyMTkgNzcuODc4OTA2IDc0LjEwNTQ2OSBMIDc2LjY1NjI1IDc3Ljc3MzQzOCBDIDc4LjQwNjI1IDc3LjQwNjI1IDgwLjc3MzQzOCA3Ny4zNzg5MDYgODIuMTU2MjUgNzcuNTY2NDA2ICIvPgo8ZyBmaWxsPSJyZ2IoMCUsIDAlLCAwJSkiIGZpbGwtb3BhY2l0eT0iMSI+Cjx1c2UgeGxpbms6aHJlZj0iI2dseXBoLTAtMCIgeD0iMTczLjk3ODc5NCIgeT0iOTYuMTgwNzYiLz4KPC9nPgo8ZyBmaWxsPSJyZ2IoMCUsIDAlLCAwJSkiIGZpbGwtb3BhY2l0eT0iMSI+Cjx1c2UgeGxpbms6aHJlZj0iI2dseXBoLTEtMSIgeD0iMTcyLjA0NTMwOCIgeT0iOTguNjg2NDMxIi8+CjwvZz4KPHBhdGggZmlsbD0ibm9uZSIgc3Ryb2tlLXdpZHRoPSIwLjc5NzAxIiBzdHJva2UtbGluZWNhcD0iYnV0dCIgc3Ryb2tlLWxpbmVqb2luPSJtaXRlciIgc3Ryb2tlPSJyZ2IoMCUsIDAlLCAwJSkiIHN0cm9rZS1vcGFjaXR5PSIxIiBzdHJva2UtbWl0ZXJsaW1pdD0iMTAiIGQ9Ik0gOTMuOTM0ODkgLTI5LjgyNjY5IEwgMTU4LjM1OTcwMyAtNDAuNTY2Nzc2ICIgdHJhbnNmb3JtPSJtYXRyaXgoMC45OTUxMDQsIDAsIDAsIC0wLjk5NTEwNCwgNi4zODQ0MTIsIDUyLjMwNzYzKSIvPgo8cGF0aCBmaWxsLXJ1bGU9Im5vbnplcm8iIGZpbGw9InJnYigwJSwgMCUsIDAlKSIgZmlsbC1vcGFjaXR5PSIxIiBkPSJNIDE2OC41NDY4NzUgOTMuNDQxNDA2IEMgMTY3LjIzMDQ2OSA5Mi45NjA5MzggMTY1LjE1NjI1IDkxLjgyODEyNSAxNjMuNzc3MzQ0IDkwLjY4MzU5NCBMIDE2My4xNDQ1MzEgOTQuNSBDIDE2NC44MTY0MDYgOTMuODYzMjgxIDE2Ny4xNDg0MzggOTMuNDY4NzUgMTY4LjU0Njg3NSA5My40NDE0MDYgIi8+CjxnIGZpbGw9InJnYigwJSwgMCUsIDAlKSIgZmlsbC1vcGFjaXR5PSIxIj4KPHVzZSB4bGluazpocmVmPSIjZ2x5cGgtMi0wIiB4PSIxMjYuMDUxNjExIiB5PSI5Ny4yMDk2OTciLz4KPHVzZSB4bGluazpocmVmPSIjZ2x5cGgtMi0xIiB4PSIxMzAuNjM1OTkxIiB5PSI5Ny4yMDk2OTciLz4KPHVzZSB4bGluazpocmVmPSIjZ2x5cGgtMi0yIiB4PSIxMzMuMTgyNDcyIiB5PSI5Ny4yMDk2OTciLz4KPHVzZSB4bGluazpocmVmPSIjZ2x5cGgtMi0zIiB4PSIxMzcuNzY2ODUyIiB5PSI5Ny4yMDk2OTciLz4KPC9nPgo8ZyBmaWxsPSJyZ2IoMCUsIDAlLCAwJSkiIGZpbGwtb3BhY2l0eT0iMSI+Cjx1c2UgeGxpbms6aHJlZj0iI2dseXBoLTEtMSIgeD0iMTcyLjA0NTMwOCIgeT0iNjkuNzk4NTY5Ii8+CjwvZz4KPHBhdGggZmlsbD0ibm9uZSIgc3Ryb2tlLXdpZHRoPSIwLjc5NzAxIiBzdHJva2UtbGluZWNhcD0iYnV0dCIgc3Ryb2tlLWxpbmVqb2luPSJtaXRlciIgc3Ryb2tlPSJyZ2IoMCUsIDAlLCAwJSkiIHN0cm9rZS1vcGFjaXR5PSIxIiBzdHJva2UtbWl0ZXJsaW1pdD0iMTAiIGQ9Ik0gOTMuOTM0ODkgLTI2Ljg2Njg4NSBMIDE1OC4zNTk3MDMgLTE2LjEyNjc5OSAiIHRyYW5zZm9ybT0ibWF0cml4KDAuOTk1MTA0LCAwLCAwLCAtMC45OTUxMDQsIDYuMzg0NDEyLCA1Mi4zMDc2MykiLz4KPHBhdGggZmlsbC1ydWxlPSJub256ZXJvIiBmaWxsPSJyZ2IoMCUsIDAlLCAwJSkiIGZpbGwtb3BhY2l0eT0iMSIgZD0iTSAxNjguNTQ2ODc1IDY3LjU4OTg0NCBDIDE2Ny4xNDg0MzggNjcuNTYyNSAxNjQuODE2NDA2IDY3LjE2Nzk2OSAxNjMuMTQ0NTMxIDY2LjUzMTI1IEwgMTYzLjc3NzM0NCA3MC4zNDc2NTYgQyAxNjUuMTU2MjUgNjkuMjAzMTI1IDE2Ny4yMzA0NjkgNjguMDcwMzEyIDE2OC41NDY4NzUgNjcuNTg5ODQ0ICIvPgo8ZyBmaWxsPSJyZ2IoMCUsIDAlLCAwJSkiIGZpbGwtb3BhY2l0eT0iMSI+Cjx1c2UgeGxpbms6aHJlZj0iI2dseXBoLTItMCIgeD0iMTI2LjA1MTYxMSIgeT0iNjguNDg4MDE3Ii8+Cjx1c2UgeGxpbms6aHJlZj0iI2dseXBoLTItMSIgeD0iMTMwLjYzNTk5MSIgeT0iNjguNDg4MDE3Ii8+Cjx1c2UgeGxpbms6aHJlZj0iI2dseXBoLTItMCIgeD0iMTMzLjE4MjQ3MiIgeT0iNjguNDg4MDE3Ii8+Cjx1c2UgeGxpbms6aHJlZj0iI2dseXBoLTItMyIgeD0iMTM3Ljc2Njg1MiIgeT0iNjguNDg4MDE3Ii8+CjwvZz4KPGcgZmlsbD0icmdiKDAlLCAwJSwgMCUpIiBmaWxsLW9wYWNpdHk9IjEiPgo8dXNlIHhsaW5rOmhyZWY9IiNnbHlwaC0yLTAiIHg9IjM3Ljg3MjQ4IiB5PSI3NS4wMTY4OTMiLz4KPHVzZSB4bGluazpocmVmPSIjZ2x5cGgtMi0xIiB4PSI0Mi40NTY4NiIgeT0iNzUuMDE2ODkzIi8+Cjx1c2UgeGxpbms6aHJlZj0iI2dseXBoLTItMiIgeD0iNDUuMDAzMzQxIiB5PSI3NS4wMTY4OTMiLz4KPHVzZSB4bGluazpocmVmPSIjZ2x5cGgtMi0yIiB4PSI0OS41ODc3MjEiIHk9Ijc1LjAxNjg5MyIvPgo8L2c+CjxnIGZpbGw9InJnYigwJSwgMCUsIDAlKSIgZmlsbC1vcGFjaXR5PSIxIj4KPHVzZSB4bGluazpocmVmPSIjZ2x5cGgtMS0wIiB4PSI4NS42NTgzNTkiIHk9IjI3LjQ4Nzc1MiIvPgo8L2c+CjxnIGNsaXAtcGF0aD0idXJsKCNjbGlwLTEpIj4KPHBhdGggZmlsbD0ibm9uZSIgc3Ryb2tlLXdpZHRoPSIwLjc5NzAxIiBzdHJva2UtbGluZWNhcD0iYnV0dCIgc3Ryb2tlLWxpbmVqb2luPSJtaXRlciIgc3Ryb2tlPSJyZ2IoMCUsIDAlLCAwJSkiIHN0cm9rZS1vcGFjaXR5PSIxIiBzdHJva2UtbWl0ZXJsaW1pdD0iMTAiIGQ9Ik0gMy41MTk1MzkgMS4xNzI3NDcgTCA3MS43MjQ1ODEgMjMuOTA5MDY5ICIgdHJhbnNmb3JtPSJtYXRyaXgoMC45OTUxMDQsIDAsIDAsIC0wLjk5NTEwNCwgNi4zODQ0MTIsIDUyLjMwNzYzKSIvPgo8L2c+CjxwYXRoIGZpbGwtcnVsZT0ibm9uemVybyIgZmlsbD0icmdiKDAlLCAwJSwgMCUpIiBmaWxsLW9wYWNpdHk9IjEiIGQ9Ik0gODIuMTU2MjUgMjcuMDQ2ODc1IEMgODAuNzczNDM4IDI3LjIzODI4MSA3OC40MDYyNSAyNy4yMTA5MzggNzYuNjU2MjUgMjYuODQzNzUgTCA3Ny44Nzg5MDYgMzAuNTExNzE5IEMgNzkuMDU4NTk0IDI5LjE2Nzk2OSA4MC45MzM1OTQgMjcuNzI2NTYyIDgyLjE1NjI1IDI3LjA0Njg3NSAiLz4KPGcgZmlsbD0icmdiKDAlLCAwJSwgMCUpIiBmaWxsLW9wYWNpdHk9IjEiPgo8dXNlIHhsaW5rOmhyZWY9IiNnbHlwaC0wLTAiIHg9IjE3My45Nzg3OTQiIHk9IjM5Ljc2NTM0MiIvPgo8L2c+CjxnIGZpbGw9InJnYigwJSwgMCUsIDAlKSIgZmlsbC1vcGFjaXR5PSIxIj4KPHVzZSB4bGluazpocmVmPSIjZ2x5cGgtMS0xIiB4PSIxNzIuMDQ1MzA4IiB5PSI0Mi4yNzIwMDgiLz4KPC9nPgo8cGF0aCBmaWxsPSJub25lIiBzdHJva2Utd2lkdGg9IjAuNzk3MDEiIHN0cm9rZS1saW5lY2FwPSJidXR0IiBzdHJva2UtbGluZWpvaW49Im1pdGVyIiBzdHJva2U9InJnYigwJSwgMCUsIDAlKSIgc3Ryb2tlLW9wYWNpdHk9IjEiIHN0cm9rZS1taXRlcmxpbWl0PSIxMCIgZD0iTSA5My45MzQ4OSAyNi44NjQ5NDggTCAxNTguMzU5NzAzIDE2LjEyNDg2MiAiIHRyYW5zZm9ybT0ibWF0cml4KDAuOTk1MTA0LCAwLCAwLCAtMC45OTUxMDQsIDYuMzg0NDEyLCA1Mi4zMDc2MykiLz4KPHBhdGggZmlsbC1ydWxlPSJub256ZXJvIiBmaWxsPSJyZ2IoMCUsIDAlLCAwJSkiIGZpbGwtb3BhY2l0eT0iMSIgZD0iTSAxNjguNTQ2ODc1IDM3LjAyMzQzOCBDIDE2Ny4yMzA0NjkgMzYuNTQyOTY5IDE2NS4xNTYyNSAzNS40MTQwNjIgMTYzLjc3NzM0NCAzNC4yNjk1MzEgTCAxNjMuMTQ0NTMxIDM4LjA4MjAzMSBDIDE2NC44MTY0MDYgMzcuNDQ5MjE5IDE2Ny4xNDg0MzggMzcuMDUwNzgxIDE2OC41NDY4NzUgMzcuMDIzNDM4ICIvPgo8ZyBmaWxsPSJyZ2IoMCUsIDAlLCAwJSkiIGZpbGwtb3BhY2l0eT0iMSI+Cjx1c2UgeGxpbms6aHJlZj0iI2dseXBoLTItMCIgeD0iMTI2LjA1MTYxMSIgeT0iNDAuNzk0Mjc5Ii8+Cjx1c2UgeGxpbms6aHJlZj0iI2dseXBoLTItMSIgeD0iMTMwLjYzNTk5MSIgeT0iNDAuNzk0Mjc5Ii8+Cjx1c2UgeGxpbms6aHJlZj0iI2dseXBoLTItMCIgeD0iMTMzLjE4MjQ3MiIgeT0iNDAuNzk0Mjc5Ii8+Cjx1c2UgeGxpbms6aHJlZj0iI2dseXBoLTItNCIgeD0iMTM3Ljc2Njg1MiIgeT0iNDAuNzk0Mjc5Ii8+CjwvZz4KPGcgZmlsbD0icmdiKDAlLCAwJSwgMCUpIiBmaWxsLW9wYWNpdHk9IjEiPgo8dXNlIHhsaW5rOmhyZWY9IiNnbHlwaC0xLTEiIHg9IjE3Mi4wNDUzMDgiIHk9IjEzLjM4NDE0NiIvPgo8L2c+CjxwYXRoIGZpbGw9Im5vbmUiIHN0cm9rZS13aWR0aD0iMC43OTcwMSIgc3Ryb2tlLWxpbmVjYXA9ImJ1dHQiIHN0cm9rZS1saW5lam9pbj0ibWl0ZXIiIHN0cm9rZT0icmdiKDAlLCAwJSwgMCUpIiBzdHJva2Utb3BhY2l0eT0iMSIgc3Ryb2tlLW1pdGVybGltaXQ9IjEwIiBkPSJNIDkzLjkzNDg5IDI5LjgyODY3OCBMIDE1OC4zNTk3MDMgNDAuNTY4NzY0ICIgdHJhbnNmb3JtPSJtYXRyaXgoMC45OTUxMDQsIDAsIDAsIC0wLjk5NTEwNCwgNi4zODQ0MTIsIDUyLjMwNzYzKSIvPgo8cGF0aCBmaWxsLXJ1bGU9Im5vbnplcm8iIGZpbGw9InJnYigwJSwgMCUsIDAlKSIgZmlsbC1vcGFjaXR5PSIxIiBkPSJNIDE2OC41NDY4NzUgMTEuMTc1NzgxIEMgMTY3LjE0ODQzOCAxMS4xNDg0MzggMTY0LjgxNjQwNiAxMC43NSAxNjMuMTQ0NTMxIDEwLjExNzE4OCBMIDE2My43NzczNDQgMTMuOTI5Njg4IEMgMTY1LjE1NjI1IDEyLjc4NTE1NiAxNjcuMjMwNDY5IDExLjY1NjI1IDE2OC41NDY4NzUgMTEuMTc1NzgxICIvPgo8ZyBmaWxsPSJyZ2IoMCUsIDAlLCAwJSkiIGZpbGwtb3BhY2l0eT0iMSI+Cjx1c2UgeGxpbms6aHJlZj0iI2dseXBoLTItMCIgeD0iMTI2LjA1MTYxMSIgeT0iMTIuMDcyNTk5Ii8+Cjx1c2UgeGxpbms6aHJlZj0iI2dseXBoLTItMSIgeD0iMTMwLjYzNTk5MSIgeT0iMTIuMDcyNTk5Ii8+Cjx1c2UgeGxpbms6aHJlZj0iI2dseXBoLTItMiIgeD0iMTMzLjE4MjQ3MiIgeT0iMTIuMDcyNTk5Ii8+Cjx1c2UgeGxpbms6aHJlZj0iI2dseXBoLTItMiIgeD0iMTM3Ljc2Njg1MiIgeT0iMTIuMDcyNTk5Ii8+CjwvZz4KPGcgZmlsbD0icmdiKDAlLCAwJSwgMCUpIiBmaWxsLW9wYWNpdHk9IjEiPgo8dXNlIHhsaW5rOmhyZWY9IiNnbHlwaC0yLTAiIHg9IjM3Ljg3MjQ4IiB5PSIzNC4yNjU0MDMiLz4KPHVzZSB4bGluazpocmVmPSIjZ2x5cGgtMi0xIiB4PSI0Mi40NTY4NiIgeT0iMzQuMjY1NDAzIi8+Cjx1c2UgeGxpbms6aHJlZj0iI2dseXBoLTItMCIgeD0iNDUuMDAzMzQxIiB5PSIzNC4yNjU0MDMiLz4KPHVzZSB4bGluazpocmVmPSIjZ2x5cGgtMi00IiB4PSI0OS41ODc3MjEiIHk9IjM0LjI2NTQwMyIvPgo8L2c+Cjwvc3ZnPgo=" class="max-w-full" alt="Figure du cours" /></div>
    \end{center}
    
    \item D'après la formule des probabilités totales, $\mathcal{P} = \{M, \bar{M}\}$ constituant une partition de l'univers :
    \[
    \begin{aligned}
    P(T) &= P(M \cap T) + P(\bar{M} \cap T) \\
    &= P(M) \times P_M(T) + P(\bar{M}) \times P_{\bar{M}}(T) \\
    &= 0,01 \times 0,99 + 0,99 \times 0,05 \\
    &= 0,0099 + 0,0495 = 0,0594
    \end{aligned}
    \]
    La probabilité que le test soit positif est de 0,0594 (soit $5,94\%$).
    
    \item On cherche à calculer la probabilité conditionnelle $P_T(M)$ :
    \[
    P_T(M) = \frac{P(M \cap T)}{P(T)} = \frac{0,0099}{0,0594} = \frac{99}{594} = \frac{1}{6} \approx 0,167
    \]
    Commentaire : Bien que le test soit individuellement très performant (99\% de sensibilité et 95\% de spécificité), un individu dont le test est positif n'a qu'environ $16,7\%$ de chances d'être réellement malade. Cela est dû au fait que la maladie est rare ($1\%$) : le nombre absolu de faux positifs ($4,95\%$) est bien plus important que le nombre de vrais positifs ($0,99\%$).
    
    \item On cherche à calculer la probabilité d'être malade sachant que le test est négatif, soit $P_{\bar{T}}(M)$ :
    \[
    P_{\bar{T}}(M) = \frac{P(M \cap \bar{T})}{P(\bar{T})} = \frac{P(M) \times P_M(\bar{T})}{1 - P(T)} = \frac{0,01 \times 0,01}{1 - 0,0594} = \frac{0,0001}{0,9406} \approx 0,000106
    \]
    La probabilité qu'un patient ayant un test négatif soit quand même malade est extrêmement faible (environ $0,01\%$).
\end{enumerate}

### Problème 2 : Modélisation des parts de marché (Suites et Probabilités)
\begin{enonce}
Dans un pays, deux opérateurs de téléphonie mobile A et B se partagent le marché. On constate chaque année que :
- $15\%$ des clients de l'opérateur A changent pour B, tandis que $85\%$ lui restent fidèles.
- $20\%$ des clients de l'opérateur B changent pour A, tandis que $80\%$ lui restent fidèles.
Initialement (à l'année 0), l'opérateur A détient $70\%$ des clients et B en détient $30\%$.
Pour tout entier $n \ge 0$, on note $a_n$ la part de marché de A et $b_n$ la part de marché de B à l'année $n$.
\begin{enumerate}
    \item Justifier que pour tout entier $n \ge 0$, $a_n + b_n = 1$.
    \item Exprimer $a_{n+1}$ en fonction de $a_n$ et $b_n$, puis démontrer que :
    \[
    a_{n+1} = 0,65 a_n + 0,2
    \]
    \item Soit la suite $(u_n)$ définie pour tout entier $n \ge 0$ par $u_n = a_n - \frac{4}{7}$.
    Montrer que la suite $(u_n)$ est géométrique de raison $0,65$.
    \item Exprimer $u_n$ puis $a_n$ en fonction de $n$.
    \item Déterminer la limite de la suite $(a_n)$ lorsque $n \to +\infty$. Interpréter ce résultat.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Les deux opérateurs A et B se partageant l'intégralité du marché sans perte de clients globale, la somme des proportions de clients de A et B est égale à la totalité du marché, soit $a_n + b_n = 1$ pour tout $n \ge 0$.
    
    \item À l'année $n+1$, les clients de A proviennent :
    - des clients fidèles de A de l'année précédente (proportion $0,85 a_n$).
    - des clients de B ayant migré chez A (proportion $0,20 b_n$).
    D'où :
    \[
    a_{n+1} = 0,85 a_n + 0,20 b_n
    \]
    Comme $b_n = 1 - a_n$, on obtient :
    \[
    a_{n+1} = 0,85 a_n + 0,20(1 - a_n) = 0,85 a_n + 0,2 - 0,2 a_n = 0,65 a_n + 0,2
    \]
    
    \item Exprimons $u_{n+1}$ en fonction de $u_n$ :
    \[
    \begin{aligned}
    u_{n+1} &= a_{n+1} - \frac{4}{7} \\
    &= (0,65 a_n + 0,2) - \frac{4}{7} \\
    &= 0,65 a_n + \frac{1}{5} - \frac{4}{7} \\
    &= 0,65 a_n + \frac{7 - 20}{35} \\
    &= 0,65 a_n - \frac{13}{35}
    \end{aligned}
    \]
    Factorisons par $0,65 = \frac{13}{20}$ :
    \[
    u_{n+1} = 0,65 \left( a_n - \frac{13/35}{13/20} \right) = 0,65 \left( a_n - \frac{13}{35} \times \frac{20}{13} \right) = 0,65 \left( a_n - \frac{20}{35} \right) = 0,65 \left( a_n - \frac{4}{7} \right) = 0,65 u_n
    \]
    La suite $(u_n)$ est donc géométrique de raison $q = 0,65$.
    
    \item Le premier terme de la suite est :
    \[
    u_0 = a_0 - \frac{4}{7} = 0,7 - \frac{4}{7} = \frac{7}{10} - \frac{4}{7} = \frac{49 - 40}{70} = \frac{9}{70}
    \]
    Par propriété des suites géométriques :
    \[
    u_n = u_0 \times q^n = \frac{9}{70} \times (0,65)^n
    \]
    On en déduit que :
    \[
    a_n = u_n + \frac{4}{7} = \frac{9}{70} \times (0,65)^n + \frac{4}{7}
    \]
    
    \item Comme $-1 < 0,65 < 1$, on a $\lim_{n \to +\infty} (0,65)^n = 0$.
    Par théorème d'opération sur les limites :
    \[
    \lim_{n \to +\infty} a_n = \frac{4}{7} \approx 0,571
    \]
    À long terme, la part de marché de l'opérateur A se stabilisera autour de $57,1\%$ et celle de l'opérateur B autour de $42,9\%$, indépendamment des parts de marché de départ.
\end{enumerate}

### Problème 3 : Jeu de casino et espérance de gain
\begin{enonce}
Un joueur participe à un jeu dans un casino. Il lance un dé équilibré à 6 faces :
- S'il obtient un 6, il gagne 10 euros.
- S'il obtient 4 ou 5, il gagne 2 euros.
- S'il obtient 1, 2 ou 3, il perd 5 euros.
\begin{enumerate}
    \item Soit $X$ la variable aléatoire représentant le gain algébrique du joueur à l'issue d'une partie. Déterminer la loi de probabilité de $X$.
    \item Calculer l'espérance mathématique $E(X)$. Le jeu est-il favorable au joueur ?
    \item Le joueur effectue 5 parties successives et indépendantes. On note $Y$ le nombre de parties gagnantes (les parties où le joueur réalise un gain strictement positif).
    \begin{enumerate}
        \item Préciser la loi suivie par la variable aléatoire $Y$.
        \item Calculer la probabilité que le joueur gagne au moins 4 parties sur les 5 (arrondir à $10^{-4}$).
        \item Quelle est la probabilité que le joueur perde de l'argent sur l'ensemble des 5 parties dans le cas extrême où il ne gagne aucune partie ?
    \end{enumerate}
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Les valeurs possibles pour $X$ sont $10$, $2$ et $-5$. Les probabilités associées sont :
    - $P(X = 10) = P(\{6\}) = \frac{1}{6}$
    - $P(X = 2) = P(\{4, 5\}) = \frac{2}{6} = \frac{1}{3}$
    - $P(X = -5) = P(\{1, 2, 3\}) = \frac{3}{6} = \frac{1}{2}$
    La loi de probabilité de $X$ est donnée par le tableau :
    \begin{center}
    \begin{tabular}{|c|c|c|c|}
    \hline
    $x_i$ & $-5$ & $2$ & $10$ \\
    \hline
    $P(X = x_i)$ & $1/2$ & $1/3$ & $1/6$ \\
    \hline
    \end{tabular}
    \end{center}
    
    \item L'espérance mathématique est :
    \[
    E(X) = -5 \times \frac{1}{2} + 2 \times \frac{1}{3} + 10 \times \frac{1}{6} = -\frac{15}{6} + \frac{4}{6} + \frac{10}{6} = -\frac{1}{6} \approx -0,17 \text{ euro}
    \]
    Puisque $E(X) < 0$, le jeu est défavorable au joueur (il perd en moyenne environ 17 centimes d'euro par partie).
    
    \item Répétition de 5 épreuves de Bernoulli :
    \begin{enumerate}
        \item Une partie est gagnante si le gain est strictement positif, soit si $X \in \{2, 10\}$. La probabilité de succès pour une partie est :
        \[
        p = P(X = 2) + P(X = 10) = \frac{1}{3} + \frac{1}{6} = \frac{3}{6} = 0,5
        \]
        Comme les parties sont identiques et indépendantes, la variable aléatoire $Y$ suit la loi binomiale de paramètres $n = 5$ et $p = 0,5$, soit $\mathcal{B}(5; 0,5)$.
        
        \item On cherche $P(Y \ge 4)$ :
        \[
        \begin{aligned}
        P(Y \ge 4) &= P(Y = 4) + P(Y = 5) \\
        &= \binom{5}{4} (0,5)^4 (0,5)^1 + \binom{5}{5} (0,5)^5 (0,5)^0 \\
        &= 5 \times (0,5)^5 + 1 \times (0,5)^5 \\
        &= 6 \times 0,03125 = 0,1875
        \end{aligned}
        \]
        La probabilité que le joueur gagne au moins 4 parties est de 0,1875.
        
        \item Si le joueur ne gagne aucune partie ($Y=0$), cela signifie qu'il a perdu à chacune des 5 parties (il a obtenu 5 fois l'issue $-5$ euros). La probabilité de cet événement est :
        \[
        P(Y = 0) = \binom{5}{0} (0,5)^0 (0,5)^5 = 0,03125
        \]
        Dans ce cas, le gain total sur les 5 parties est $5 \times (-5) = -25$ euros.
    \end{enumerate}
\end{enumerate}
