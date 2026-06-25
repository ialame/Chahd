La théorie des ensembles est le langage commun de toutes les mathématiques. Ce chapitre fixe le vocabulaire de base — appartenance, inclusion, ensemble des parties — puis développe les opérations sur les ensembles (intersection, réunion, complémentaire, produit cartésien) et leurs lois fondamentales. On y introduit ensuite la notion d'**application**, qui formalise l'idée de correspondance entre deux ensembles, et l'on étudie les propriétés essentielles que sont l'injectivité, la surjectivité et la bijectivité, ainsi que la composition et l'inversion des applications.

## Ensembles et appartenance

\begin{definition}[Ensemble, élément]
Un **ensemble** est une collection d'objets appelés ses **éléments**. Si $x$ est un élément de l'ensemble $E$, on dit que $x$ **appartient** à $E$ et on note $x \in E$. Dans le cas contraire, on note $x \notin E$.
\end{definition}

Un ensemble peut être décrit **en extension**, en listant ses éléments entre accolades, ou **en compréhension**, par une propriété caractéristique.

\begin{exemple}
En extension : $E = \{1, 2, 3, 4\}$. En compréhension : $E = \{ n \in \mathbb{N} \mid 1 \le n \le 4 \}$. On a $3 \in E$ mais $5 \notin E$.
\end{exemple}

\begin{definition}[Ensemble vide]
L'**ensemble vide**, noté $\varnothing$, est l'ensemble qui ne contient aucun élément. Pour tout objet $x$, on a $x \notin \varnothing$.
\end{definition}

\begin{important}
Il ne faut pas confondre l'élément $x$ et l'ensemble $\{x\}$ qui le contient : $x \in \{x\}$, mais $x \neq \{x\}$. De même, $\varnothing$ et $\{\varnothing\}$ sont différents : le second est un ensemble à un élément (qui est l'ensemble vide), donc $\varnothing \in \{\varnothing\}$.
\end{important}

## Inclusion et égalité

\begin{definition}[Inclusion]
On dit que $E$ est **inclus** dans $F$, et on note $E \subset F$, lorsque tout élément de $E$ est aussi élément de $F$ :
$$E \subset F \iff \big( \forall x,\ x \in E \implies x \in F \big).$$
On dit alors que $E$ est une **partie** (ou un **sous-ensemble**) de $F$.
\end{definition}

\begin{propriete}[Propriétés de l'inclusion]
Pour tous ensembles $E$, $F$, $G$ :
\begin{itemize}
    \item $\varnothing \subset E$ et $E \subset E$ (réflexivité) ;
    \item si $E \subset F$ et $F \subset G$, alors $E \subset G$ (transitivité).
\end{itemize}
\end{propriete}

\begin{definition}[Égalité]
Deux ensembles $E$ et $F$ sont **égaux** lorsqu'ils ont exactement les mêmes éléments. Cela équivaut à la **double inclusion** :
$$E = F \iff (E \subset F \ \text{et}\ F \subset E).$$
\end{definition}

\begin{methode}[Montrer une égalité d'ensembles]
Pour prouver que $E = F$, on procède en général par double inclusion : on montre d'abord $E \subset F$ (on prend $x \in E$ et on prouve $x \in F$), puis $F \subset E$ de la même manière.
\end{methode}

## Ensemble des parties

\begin{definition}[Ensemble des parties]
Soit $E$ un ensemble. L'**ensemble des parties** de $E$, noté $\mathcal{P}(E)$, est l'ensemble dont les éléments sont toutes les parties de $E$ :
$$\mathcal{P}(E) = \{ A \mid A \subset E \}.$$
\end{definition}

\begin{important}
Attention à bien distinguer $\in$ et $\subset$ : pour une partie $A$ de $E$, on écrit $A \subset E$ mais $A \in \mathcal{P}(E)$.
\end{important}

\begin{exemple}
Si $E = \{a, b\}$, alors
$$\mathcal{P}(E) = \big\{ \varnothing,\ \{a\},\ \{b\},\ \{a, b\} \big\}.$$
On remarque que $\varnothing \in \mathcal{P}(E)$ et $E \in \mathcal{P}(E)$.
\end{exemple}

\begin{propriete}
Si $E$ est un ensemble fini possédant $n$ éléments, alors $\mathcal{P}(E)$ possède $2^n$ éléments.
\end{propriete}

## Intersection et réunion

\begin{definition}[Intersection, réunion]
Soient $A$ et $B$ deux parties d'un ensemble $E$.
\begin{itemize}
    \item L'**intersection** de $A$ et $B$ est $A \cap B = \{ x \in E \mid x \in A \ \text{et}\ x \in B \}$.
    \item La **réunion** de $A$ et $B$ est $A \cup B = \{ x \in E \mid x \in A \ \text{ou}\ x \in B \}$.
\end{itemize}
\end{definition}

<div class="flex justify-center my-5"><img src="data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz4KPHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHhtbG5zOnhsaW5rPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5L3hsaW5rIiB3aWR0aD0iMzU2LjExNnB0IiBoZWlnaHQ9IjEyNS41MjFwdCIgdmlld0JveD0iMCAwIDM1Ni4xMTYgMTI1LjUyMSI+CjxkZWZzPgo8Zz4KPGcgaWQ9ImdseXBoLTAtMCI+CjxwYXRoIGQ9Ik0gMi44MTI1IC0zLjAxNTYyNSBMIDMuNzE4NzUgLTMuMDE1NjI1IEMgNC4zNTkzNzUgLTMuMDE1NjI1IDQuNDg0Mzc1IC0yLjkwNjI1IDQuNDg0Mzc1IC0yLjYyNSBDIDQuNDg0Mzc1IC0yLjU0Njg3NSA0LjQ1MzEyNSAtMi4zNTkzNzUgNC40MjE4NzUgLTIuMjE4NzUgQyA0LjQwNjI1IC0yLjE1NjI1IDQuMzkwNjI1IC0yLjEyNSA0LjM5MDYyNSAtMi4wOTM3NSBDIDQuMzkwNjI1IC0yLjA3ODEyNSA0LjM5MDYyNSAtMS45Njg3NSA0LjUxNTYyNSAtMS45Njg3NSBDIDQuNjI1IC0xLjk2ODc1IDQuNjI1IC0yLjAzMTI1IDQuNjcxODc1IC0yLjE3MTg3NSBMIDUuMTQwNjI1IC00LjA0Njg3NSBDIDUuMTcxODc1IC00LjE3MTg3NSA1LjE3MTg3NSAtNC4xODc1IDUuMTcxODc1IC00LjIzNDM3NSBDIDUuMTcxODc1IC00LjI5Njg3NSA1LjEyNSAtNC4zNDM3NSA1LjA0Njg3NSAtNC4zNDM3NSBDIDQuOTUzMTI1IC00LjM0Mzc1IDQuOTM3NSAtNC4yOTY4NzUgNC44OTA2MjUgLTQuMTI1IEMgNC43MTg3NSAtMy40MjE4NzUgNC40Mzc1IC0zLjI5Njg3NSAzLjczNDM3NSAtMy4yOTY4NzUgTCAyLjg3NSAtMy4yOTY4NzUgQyAzLjAxNTYyNSAtMy44NTkzNzUgMy40Mzc1IC01LjU0Njg3NSAzLjQ4NDM3NSAtNS42NTYyNSBDIDMuNTMxMjUgLTUuNzgxMjUgMy41OTM3NSAtNS43OTY4NzUgMy44OTA2MjUgLTUuNzk2ODc1IEwgNS4yMDMxMjUgLTUuNzk2ODc1IEMgNi4zMTI1IC01Ljc5Njg3NSA2LjU2MjUgLTUuNTMxMjUgNi41NjI1IC00LjgxMjUgQyA2LjU2MjUgLTQuNTMxMjUgNi41MzEyNSAtNC4yNjU2MjUgNi41MzEyNSAtNC4yMDMxMjUgQyA2LjUzMTI1IC00LjEyNSA2LjU2MjUgLTQuMDYyNSA2LjY1NjI1IC00LjA2MjUgQyA2Ljc1IC00LjA2MjUgNi43NjU2MjUgLTQuMTI1IDYuNzgxMjUgLTQuMjk2ODc1IEwgNi45Njg3NSAtNS45NTMxMjUgQyA2Ljk2ODc1IC02LjA3ODEyNSA2Ljg3NSAtNi4wNzgxMjUgNi43MTg3NSAtNi4wNzgxMjUgTCAyLjEwOTM3NSAtNi4wNzgxMjUgQyAxLjkzNzUgLTYuMDc4MTI1IDEuODQzNzUgLTYuMDc4MTI1IDEuODQzNzUgLTUuOTIxODc1IEMgMS44NDM3NSAtNS43OTY4NzUgMS45Mzc1IC01Ljc5Njg3NSAyLjEyNSAtNS43OTY4NzUgQyAyLjE1NjI1IC01Ljc5Njg3NSAyLjMxMjUgLTUuNzk2ODc1IDIuNDUzMTI1IC01Ljc4MTI1IEMgMi42NTYyNSAtNS43NSAyLjY1NjI1IC01LjcxODc1IDIuNjU2MjUgLTUuNjQwNjI1IEMgMi42NTYyNSAtNS42MDkzNzUgMi42NTYyNSAtNS41OTM3NSAyLjYyNSAtNS40Mzc1IEwgMS40Mzc1IC0wLjY3MTg3NSBDIDEuMzQzNzUgLTAuMzU5Mzc1IDEuMzI4MTI1IC0wLjI4MTI1IDAuNjU2MjUgLTAuMjgxMjUgQyAwLjQ4NDM3NSAtMC4yODEyNSAwLjM5MDYyNSAtMC4yODEyNSAwLjM5MDYyNSAtMC4xMDkzNzUgQyAwLjM5MDYyNSAwIDAuNDg0Mzc1IDAgMC42NDA2MjUgMCBMIDUuMzU5Mzc1IDAgQyA1LjUxNTYyNSAwIDUuNTQ2ODc1IDAgNS41NjI1IC0wLjAzMTI1IEMgNS41OTM3NSAtMC4wNDY4NzUgNS42MDkzNzUgLTAuMDQ2ODc1IDUuNjU2MjUgLTAuMTcxODc1IEMgNS43NjU2MjUgLTAuNDA2MjUgNi41MzEyNSAtMi4xMDkzNzUgNi41MzEyNSAtMi4xODc1IEMgNi41MzEyNSAtMi4yNjU2MjUgNi40Njg3NSAtMi4zMTI1IDYuNDA2MjUgLTIuMzEyNSBDIDYuMzI4MTI1IC0yLjMxMjUgNi4zMTI1IC0yLjI5Njg3NSA2LjIxODc1IC0yLjA5Mzc1IEMgNS42NzE4NzUgLTAuODQzNzUgNS4yOTY4NzUgLTAuMjgxMjUgMy44MTI1IC0wLjI4MTI1IEwgMi40NTMxMjUgLTAuMjgxMjUgQyAyLjMyODEyNSAtMC4yODEyNSAyLjMxMjUgLTAuMjgxMjUgMi4yNjU2MjUgLTAuMjgxMjUgQyAyLjE4NzUgLTAuMjk2ODc1IDIuMTU2MjUgLTAuMjk2ODc1IDIuMTU2MjUgLTAuMzU5Mzc1IEMgMi4xNTYyNSAtMC4zOTA2MjUgMi4xNTYyNSAtMC40MDYyNSAyLjIwMzEyNSAtMC41NzgxMjUgWiBNIDIuODEyNSAtMy4wMTU2MjUgIi8+CjwvZz4KPGcgaWQ9ImdseXBoLTAtMSI+CjxwYXRoIGQ9Ik0gMS42MjUgLTEuMDQ2ODc1IEMgMS4xODc1IC0wLjMyODEyNSAwLjc5Njg3NSAtMC4yOTY4NzUgMC40Mzc1IC0wLjI4MTI1IEMgMC4zNzUgLTAuMjY1NjI1IDAuMzI4MTI1IC0wLjIwMzEyNSAwLjMyODEyNSAtMC4xMDkzNzUgQyAwLjMyODEyNSAtMC4wNjI1IDAuMzU5Mzc1IDAgMC40NTMxMjUgMCBDIDAuNjI1IDAgMS4wNDY4NzUgLTAuMDMxMjUgMS4yMTg3NSAtMC4wMzEyNSBDIDEuNDA2MjUgLTAuMDMxMjUgMS44OTA2MjUgMCAyLjA5Mzc1IDAgQyAyLjE0MDYyNSAwIDIuMjY1NjI1IDAgMi4yNjU2MjUgLTAuMTU2MjUgQyAyLjI2NTYyNSAtMC4yNjU2MjUgMi4xNTYyNSAtMC4yODEyNSAyLjEyNSAtMC4yODEyNSBDIDIuMDQ2ODc1IC0wLjI4MTI1IDEuNzAzMTI1IC0wLjI5Njg3NSAxLjcwMzEyNSAtMC41NzgxMjUgQyAxLjcwMzEyNSAtMC43MDMxMjUgMS44MTI1IC0wLjg1OTM3NSAxLjgyODEyNSAtMC45MDYyNSBMIDIuNTMxMjUgLTIuMDYyNSBMIDQuODc1IC0yLjA2MjUgQyA0Ljg5MDYyNSAtMS44NTkzNzUgNC45MjE4NzUgLTEuNTYyNSA0Ljk1MzEyNSAtMS4zMjgxMjUgQyA0Ljk4NDM3NSAtMC45ODQzNzUgNS4wNDY4NzUgLTAuNTkzNzUgNS4wNDY4NzUgLTAuNTYyNSBDIDUuMDQ2ODc1IC0wLjQyMTg3NSA0LjkyMTg3NSAtMC4yODEyNSA0LjM5MDYyNSAtMC4yODEyNSBDIDQuMzEyNSAtMC4yODEyNSA0LjE4NzUgLTAuMjgxMjUgNC4xODc1IC0wLjEwOTM3NSBDIDQuMTg3NSAtMC4wMTU2MjUgNC4yNjU2MjUgMCA0LjMyODEyNSAwIEMgNC41IDAgNC43MDMxMjUgLTAuMDE1NjI1IDQuODkwNjI1IC0wLjAxNTYyNSBDIDUuMDYyNSAtMC4wMTU2MjUgNS4yODEyNSAtMC4wMzEyNSA1LjQyMTg3NSAtMC4wMzEyNSBDIDUuNzE4NzUgLTAuMDMxMjUgNS43MzQzNzUgLTAuMDMxMjUgNS45NTMxMjUgLTAuMDE1NjI1IEMgNi4wOTM3NSAtMC4wMTU2MjUgNi4yOTY4NzUgMCA2LjQzNzUgMCBDIDYuNSAwIDYuNjA5Mzc1IDAgNi42MDkzNzUgLTAuMTU2MjUgQyA2LjYwOTM3NSAtMC4yODEyNSA2LjUxNTYyNSAtMC4yODEyNSA2LjQwNjI1IC0wLjI4MTI1IEMgNS44NzUgLTAuMjgxMjUgNS44NTkzNzUgLTAuMzQzNzUgNS44NDM3NSAtMC41OTM3NSBMIDUuMjAzMTI1IC02LjE1NjI1IEMgNS4xODc1IC02LjM1OTM3NSA1LjE4NzUgLTYuNDA2MjUgNS4wMzEyNSAtNi40MDYyNSBDIDQuOTA2MjUgLTYuNDA2MjUgNC44NTkzNzUgLTYuMzQzNzUgNC43ODEyNSAtNi4yMTg3NSBaIE0gMi43MDMxMjUgLTIuMzQzNzUgTCA0LjUxNTYyNSAtNS4yOTY4NzUgTCA0Ljg0Mzc1IC0yLjM0Mzc1IFogTSAyLjcwMzEyNSAtMi4zNDM3NSAiLz4KPC9nPgo8ZyBpZD0iZ2x5cGgtMC0yIj4KPHBhdGggZD0iTSAxLjQ1MzEyNSAtMC42NzE4NzUgQyAxLjM3NSAtMC4zNTkzNzUgMS4zNTkzNzUgLTAuMjgxMjUgMC42ODc1IC0wLjI4MTI1IEMgMC41MTU2MjUgLTAuMjgxMjUgMC40MjE4NzUgLTAuMjgxMjUgMC40MjE4NzUgLTAuMTA5Mzc1IEMgMC40MjE4NzUgMCAwLjUxNTYyNSAwIDAuNjcxODc1IDAgTCAzLjkyMTg3NSAwIEMgNS4zNzUgMCA2LjQzNzUgLTEuMDQ2ODc1IDYuNDM3NSAtMS45MjE4NzUgQyA2LjQzNzUgLTIuNTYyNSA1LjkwNjI1IC0zLjA5Mzc1IDUuMDE1NjI1IC0zLjE4NzUgQyA2LjA0Njg3NSAtMy4zOTA2MjUgNi45MDYyNSAtNC4wNjI1IDYuOTA2MjUgLTQuODU5Mzc1IEMgNi45MDYyNSAtNS41NjI1IDYuMjY1NjI1IC02LjEwOTM3NSA1LjIwMzEyNSAtNi4xMDkzNzUgTCAyLjE0MDYyNSAtNi4xMDkzNzUgQyAxLjk4NDM3NSAtNi4xMDkzNzUgMS44NzUgLTYuMTA5Mzc1IDEuODc1IC01LjkzNzUgQyAxLjg3NSAtNS44MjgxMjUgMS45NTMxMjUgLTUuODI4MTI1IDIuMTQwNjI1IC01LjgyODEyNSBDIDIuMTg3NSAtNS44MjgxMjUgMi4zNDM3NSAtNS44MjgxMjUgMi40ODQzNzUgLTUuODEyNSBDIDIuNjQwNjI1IC01Ljc5Njg3NSAyLjcwMzEyNSAtNS43ODEyNSAyLjcwMzEyNSAtNS42NzE4NzUgQyAyLjcwMzEyNSAtNS42MjUgMi42ODc1IC01LjU5Mzc1IDIuNjU2MjUgLTUuNSBaIE0gMi44NDM3NSAtMy4yODEyNSBMIDMuMzkwNjI1IC01LjQ4NDM3NSBDIDMuNDg0Mzc1IC01Ljc5Njg3NSAzLjUgLTUuODI4MTI1IDMuODc1IC01LjgyODEyNSBMIDUuMDc4MTI1IC01LjgyODEyNSBDIDYgLTUuODI4MTI1IDYuMDkzNzUgLTUuMTI1IDYuMDkzNzUgLTQuODkwNjI1IEMgNi4wOTM3NSAtNC4xMDkzNzUgNS4yNSAtMy4yODEyNSA0LjI1IC0zLjI4MTI1IFogTSAyLjQyMTg3NSAtMC4yODEyNSBDIDIuMjk2ODc1IC0wLjI4MTI1IDIuMjgxMjUgLTAuMjgxMjUgMi4yNSAtMC4yODEyNSBDIDIuMTU2MjUgLTAuMjk2ODc1IDIuMTI1IC0wLjI5Njg3NSAyLjEyNSAtMC4zNTkzNzUgQyAyLjEyNSAtMC4zOTA2MjUgMi4xMjUgLTAuNDA2MjUgMi4xNzE4NzUgLTAuNTc4MTI1IEwgMi43ODEyNSAtMy4wNjI1IEwgNC40Njg3NSAtMy4wNjI1IEMgNS4wMTU2MjUgLTMuMDYyNSA1LjU5Mzc1IC0yLjgyODEyNSA1LjU5Mzc1IC0yLjAxNTYyNSBDIDUuNTkzNzUgLTEuMTI1IDQuNzY1NjI1IC0wLjI4MTI1IDMuNzAzMTI1IC0wLjI4MTI1IFogTSAyLjQyMTg3NSAtMC4yODEyNSAiLz4KPC9nPgo8ZyBpZD0iZ2x5cGgtMS0wIj4KPHBhdGggZD0iTSA1LjYwOTM3NSAtMy4zOTA2MjUgQyA1LjYwOTM3NSAtNC43NjU2MjUgNC4yMTg3NSAtNS4zNTkzNzUgMy4wNjI1IC01LjM1OTM3NSBDIDEuODkwNjI1IC01LjM1OTM3NSAwLjUxNTYyNSAtNC43NjU2MjUgMC41MTU2MjUgLTMuMzkwNjI1IEwgMC41MTU2MjUgLTAuMTQwNjI1IEMgMC41MTU2MjUgMC4wMTU2MjUgMC41MTU2MjUgMC4yMDMxMjUgMC43MDMxMjUgMC4yMDMxMjUgQyAwLjg5MDYyNSAwLjIwMzEyNSAwLjg5MDYyNSAwLjAzMTI1IDAuODkwNjI1IC0wLjE0MDYyNSBMIDAuODkwNjI1IC0zLjM3NSBDIDAuODkwNjI1IC00LjY3MTg3NSAyLjM0Mzc1IC00Ljk4NDM3NSAzLjA2MjUgLTQuOTg0Mzc1IEMgMy43NSAtNC45ODQzNzUgNS4yMTg3NSAtNC42ODc1IDUuMjE4NzUgLTMuMzc1IEwgNS4yMTg3NSAtMC4xNDA2MjUgQyA1LjIxODc1IDAuMDE1NjI1IDUuMjE4NzUgMC4yMDMxMjUgNS40MDYyNSAwLjIwMzEyNSBDIDUuNjA5Mzc1IDAuMjAzMTI1IDUuNjA5Mzc1IDAuMDMxMjUgNS42MDkzNzUgLTAuMTQwNjI1IFogTSA1LjYwOTM3NSAtMy4zOTA2MjUgIi8+CjwvZz4KPGcgaWQ9ImdseXBoLTEtMSI+CjxwYXRoIGQ9Ik0gNS42MDkzNzUgLTUuMDMxMjUgQyA1LjYwOTM3NSAtNS4xODc1IDUuNjA5Mzc1IC01LjM1OTM3NSA1LjQyMTg3NSAtNS4zNTkzNzUgQyA1LjIxODc1IC01LjM1OTM3NSA1LjIxODc1IC01LjE4NzUgNS4yMTg3NSAtNS4wMzEyNSBMIDUuMjE4NzUgLTEuNzk2ODc1IEMgNS4yMTg3NSAtMC40ODQzNzUgMy43NjU2MjUgLTAuMTg3NSAzLjA2MjUgLTAuMTg3NSBDIDIuMzU5Mzc1IC0wLjE4NzUgMC44OTA2MjUgLTAuNDg0Mzc1IDAuODkwNjI1IC0xLjc5Njg3NSBMIDAuODkwNjI1IC01LjAzMTI1IEMgMC44OTA2MjUgLTUuMTg3NSAwLjg5MDYyNSAtNS4zNTkzNzUgMC43MDMxMjUgLTUuMzU5Mzc1IEMgMC41MTU2MjUgLTUuMzU5Mzc1IDAuNTE1NjI1IC01LjE4NzUgMC41MTU2MjUgLTUuMDMxMjUgTCAwLjUxNTYyNSAtMS43NjU2MjUgQyAwLjUxNTYyNSAtMC40MDYyNSAxLjg5MDYyNSAwLjIwMzEyNSAzLjA2MjUgMC4yMDMxMjUgQyA0LjIxODc1IDAuMjAzMTI1IDUuNjA5Mzc1IC0wLjQwNjI1IDUuNjA5Mzc1IC0xLjc2NTYyNSBaIE0gNS42MDkzNzUgLTUuMDMxMjUgIi8+CjwvZz4KPC9nPgo8Y2xpcFBhdGggaWQ9ImNsaXAtMCI+CjxwYXRoIGNsaXAtcnVsZT0ibm9uemVybyIgZD0iTSA2NSAxNCBMIDEwMSAxNCBMIDEwMSA5MCBMIDY1IDkwIFogTSA2NSAxNCAiLz4KPC9jbGlwUGF0aD4KPGNsaXBQYXRoIGlkPSJjbGlwLTEiPgo8cGF0aCBjbGlwLXJ1bGU9Im5vbnplcm8iIGQ9Ik0gMTAwLjUyNzM0NCA1MS44MzIwMzEgQyAxMDAuNTI3MzQ0IDMxLjE1MjM0NCA4My43NjE3MTkgMTQuMzg2NzE5IDYzLjA4MjAzMSAxNC4zODY3MTkgQyA0Mi40MDIzNDQgMTQuMzg2NzE5IDI1LjYzNjcxOSAzMS4xNTIzNDQgMjUuNjM2NzE5IDUxLjgzMjAzMSBDIDI1LjYzNjcxOSA3Mi41MTE3MTkgNDIuNDAyMzQ0IDg5LjI3NzM0NCA2My4wODIwMzEgODkuMjc3MzQ0IEMgODMuNzYxNzE5IDg5LjI3NzM0NCAxMDAuNTI3MzQ0IDcyLjUxMTcxOSAxMDAuNTI3MzQ0IDUxLjgzMjAzMSBaIE0gMTAwLjUyNzM0NCA1MS44MzIwMzEgIi8+CjwvY2xpcFBhdGg+CjwvZGVmcz4KPHBhdGggZmlsbD0ibm9uZSIgc3Ryb2tlLXdpZHRoPSIwLjc5NzAxIiBzdHJva2UtbGluZWNhcD0iYnV0dCIgc3Ryb2tlLWxpbmVqb2luPSJtaXRlciIgc3Ryb2tlPSJyZ2IoNjQuOTk5MzklLCA2NC45OTkzOSUsIDY0Ljk5OTM5JSkiIHN0cm9rZS1vcGFjaXR5PSIxIiBzdHJva2UtbWl0ZXJsaW1pdD0iMTAiIGQ9Ik0gLTc5LjU5ODMzNyAtNDguNjQxNzc1IEwgLTc5LjU5ODMzNyA0OC42NDIxMjEgTCA3OS41OTY3IDQ4LjY0MjEyMSBMIDc5LjU5NjcgLTQ4LjY0MTc3NSBaIE0gLTc5LjU5ODMzNyAtNDguNjQxNzc1ICIgdHJhbnNmb3JtPSJtYXRyaXgoMC45OTYxOTgsIDAsIDAsIC0wLjk5NjE5OCwgODIuOTA1MTEyLCA1MS44MzIyMDMpIi8+CjxnIGZpbGw9InJnYig2OS45OTk2OTUlLCA2OS45OTk2OTUlLCA2OS45OTk2OTUlKSIgZmlsbC1vcGFjaXR5PSIxIj4KPHVzZSB4bGluazpocmVmPSIjZ2x5cGgtMC0wIiB4PSIxNDguNjU1MjA0IiB5PSIxNC4xMzUwNTkiLz4KPC9nPgo8ZyBjbGlwLXBhdGg9InVybCgjY2xpcC0wKSI+CjxnIGNsaXAtcGF0aD0idXJsKCNjbGlwLTEpIj4KPHBhdGggZmlsbC1ydWxlPSJub256ZXJvIiBmaWxsPSJyZ2IoNzkuOTk4Nzc5JSwgNzkuOTk4Nzc5JSwgMTAwJSkiIGZpbGwtb3BhY2l0eT0iMSIgZD0iTSAxNDAuMTcxODc1IDUxLjgzMjAzMSBDIDE0MC4xNzE4NzUgMzEuMTUyMzQ0IDEyMy40MTAxNTYgMTQuMzg2NzE5IDEwMi43MzA0NjkgMTQuMzg2NzE5IEMgODIuMDQ2ODc1IDE0LjM4NjcxOSA2NS4yODUxNTYgMzEuMTUyMzQ0IDY1LjI4NTE1NiA1MS44MzIwMzEgQyA2NS4yODUxNTYgNzIuNTExNzE5IDgyLjA0Njg3NSA4OS4yNzczNDQgMTAyLjczMDQ2OSA4OS4yNzczNDQgQyAxMjMuNDEwMTU2IDg5LjI3NzM0NCAxNDAuMTcxODc1IDcyLjUxMTcxOSAxNDAuMTcxODc1IDUxLjgzMjAzMSBaIE0gMTQwLjE3MTg3NSA1MS44MzIwMzEgIi8+CjwvZz4KPC9nPgo8cGF0aCBmaWxsPSJub25lIiBzdHJva2Utd2lkdGg9IjAuNzk3MDEiIHN0cm9rZS1saW5lY2FwPSJidXR0IiBzdHJva2UtbGluZWpvaW49Im1pdGVyIiBzdHJva2U9InJnYigwJSwgMCUsIDY5Ljk5OTY5NSUpIiBzdHJva2Utb3BhY2l0eT0iMSIgc3Ryb2tlLW1pdGVybGltaXQ9IjEwIiBkPSJNIDE3LjY4OTQ3OSAwLjAwMDE3MjgyIEMgMTcuNjg5NDc5IDIwLjc1ODc3NiAwLjg1OTg3NSAzNy41ODgzOCAtMTkuODk4NzI4IDM3LjU4ODM4IEMgLTQwLjY1NzMzMSAzNy41ODgzOCAtNTcuNDg2OTM1IDIwLjc1ODc3NiAtNTcuNDg2OTM1IDAuMDAwMTcyODIgQyAtNTcuNDg2OTM1IC0yMC43NTg0MyAtNDAuNjU3MzMxIC0zNy41ODgwMzUgLTE5Ljg5ODcyOCAtMzcuNTg4MDM1IEMgMC44NTk4NzUgLTM3LjU4ODAzNSAxNy42ODk0NzkgLTIwLjc1ODQzIDE3LjY4OTQ3OSAwLjAwMDE3MjgyIFogTSAxNy42ODk0NzkgMC4wMDAxNzI4MiAiIHRyYW5zZm9ybT0ibWF0cml4KDAuOTk2MTk4LCAwLCAwLCAtMC45OTYxOTgsIDgyLjkwNTExMiwgNTEuODMyMjAzKSIvPgo8cGF0aCBmaWxsPSJub25lIiBzdHJva2Utd2lkdGg9IjAuNzk3MDEiIHN0cm9rZS1saW5lY2FwPSJidXR0IiBzdHJva2UtbGluZWpvaW49Im1pdGVyIiBzdHJva2U9InJnYig2OS45OTk2OTUlLCAwJSwgMCUpIiBzdHJva2Utb3BhY2l0eT0iMSIgc3Ryb2tlLW1pdGVybGltaXQ9IjEwIiBkPSJNIDU3LjQ4NTI5OCAwLjAwMDE3MjgyIEMgNTcuNDg1Mjk4IDIwLjc1ODc3NiA0MC42NTk2MTUgMzcuNTg4MzggMTkuOTAxMDEyIDM3LjU4ODM4IEMgLTAuODYxNTEzIDM3LjU4ODM4IC0xNy42ODcxOTYgMjAuNzU4Nzc2IC0xNy42ODcxOTYgMC4wMDAxNzI4MiBDIC0xNy42ODcxOTYgLTIwLjc1ODQzIC0wLjg2MTUxMyAtMzcuNTg4MDM1IDE5LjkwMTAxMiAtMzcuNTg4MDM1IEMgNDAuNjU5NjE1IC0zNy41ODgwMzUgNTcuNDg1Mjk4IC0yMC43NTg0MyA1Ny40ODUyOTggMC4wMDAxNzI4MiBaIE0gNTcuNDg1Mjk4IDAuMDAwMTcyODIgIiB0cmFuc2Zvcm09Im1hdHJpeCgwLjk5NjE5OCwgMCwgMCwgLTAuOTk2MTk4LCA4Mi45MDUxMTIsIDUxLjgzMjIwMykiLz4KPGcgZmlsbD0icmdiKDAlLCAwJSwgNjkuOTk5Njk1JSkiIGZpbGwtb3BhY2l0eT0iMSI+Cjx1c2UgeGxpbms6aHJlZj0iI2dseXBoLTAtMSIgeD0iMzEuMDA2MTY0IiB5PSI1NC44ODM1NTkiLz4KPC9nPgo8ZyBmaWxsPSJyZ2IoNjkuOTk5Njk1JSwgMCUsIDAlKSIgZmlsbC1vcGFjaXR5PSIxIj4KPHVzZSB4bGluazpocmVmPSIjZ2x5cGgtMC0yIiB4PSIxMjcuNjY3Mjk2IiB5PSI1NC44ODM1NTkiLz4KPC9nPgo8ZyBmaWxsPSJyZ2IoMCUsIDAlLCAwJSkiIGZpbGwtb3BhY2l0eT0iMSI+Cjx1c2UgeGxpbms6aHJlZj0iI2dseXBoLTAtMSIgeD0iNzAuNjY3ODExIiB5PSIxMTguNzU4ODA1Ii8+CjwvZz4KPGcgZmlsbD0icmdiKDAlLCAwJSwgMCUpIiBmaWxsLW9wYWNpdHk9IjEiPgo8dXNlIHhsaW5rOmhyZWY9IiNnbHlwaC0xLTAiIHg9Ijc5LjU4ODUxMyIgeT0iMTE4Ljc1ODgwNSIvPgo8L2c+CjxnIGZpbGw9InJnYigwJSwgMCUsIDAlKSIgZmlsbC1vcGFjaXR5PSIxIj4KPHVzZSB4bGluazpocmVmPSIjZ2x5cGgtMC0yIiB4PSI4Ny43NTQ0MzQiIHk9IjExOC43NTg4MDUiLz4KPC9nPgo8cGF0aCBmaWxsPSJub25lIiBzdHJva2Utd2lkdGg9IjAuNzk3MDEiIHN0cm9rZS1saW5lY2FwPSJidXR0IiBzdHJva2UtbGluZWpvaW49Im1pdGVyIiBzdHJva2U9InJnYig2NC45OTkzOSUsIDY0Ljk5OTM5JSwgNjQuOTk5MzklKSIgc3Ryb2tlLW9wYWNpdHk9IjEiIHN0cm9rZS1taXRlcmxpbWl0PSIxMCIgZD0iTSAxMTAuNTU0MjMyIC00OC42NDE3NzUgTCAxMTAuNTU0MjMyIDQ4LjY0MjEyMSBMIDI2OS43NDkyNjkgNDguNjQyMTIxIEwgMjY5Ljc0OTI2OSAtNDguNjQxNzc1IFogTSAxMTAuNTU0MjMyIC00OC42NDE3NzUgIiB0cmFuc2Zvcm09Im1hdHJpeCgwLjk5NjE5OCwgMCwgMCwgLTAuOTk2MTk4LCA4Mi45MDUxMTIsIDUxLjgzMjIwMykiLz4KPGcgZmlsbD0icmdiKDY5Ljk5OTY5NSUsIDY5Ljk5OTY5NSUsIDY5Ljk5OTY5NSUpIiBmaWxsLW9wYWNpdHk9IjEiPgo8dXNlIHhsaW5rOmhyZWY9IiNnbHlwaC0wLTAiIHg9IjMzOC4wODAzNCIgeT0iMTQuMTM1MDU5Ii8+CjwvZz4KPHBhdGggZmlsbC1ydWxlPSJub256ZXJvIiBmaWxsPSJyZ2IoODEuOTk5MjA3JSwgMTAwJSwgODEuOTk5MjA3JSkiIGZpbGwtb3BhY2l0eT0iMSIgZD0iTSAyODkuOTUzMTI1IDUxLjgzMjAzMSBDIDI4OS45NTMxMjUgMzEuMTUyMzQ0IDI3My4xODc1IDE0LjM4NjcxOSAyNTIuNTA3ODEyIDE0LjM4NjcxOSBDIDIzMS44MjgxMjUgMTQuMzg2NzE5IDIxNS4wNjI1IDMxLjE1MjM0NCAyMTUuMDYyNSA1MS44MzIwMzEgQyAyMTUuMDYyNSA3Mi41MTE3MTkgMjMxLjgyODEyNSA4OS4yNzczNDQgMjUyLjUwNzgxMiA4OS4yNzczNDQgQyAyNzMuMTg3NSA4OS4yNzczNDQgMjg5Ljk1MzEyNSA3Mi41MTE3MTkgMjg5Ljk1MzEyNSA1MS44MzIwMzEgWiBNIDI4OS45NTMxMjUgNTEuODMyMDMxICIvPgo8cGF0aCBmaWxsLXJ1bGU9Im5vbnplcm8iIGZpbGw9InJnYig4MS45OTkyMDclLCAxMDAlLCA4MS45OTkyMDclKSIgZmlsbC1vcGFjaXR5PSIxIiBkPSJNIDMyOS42MDE1NjIgNTEuODMyMDMxIEMgMzI5LjYwMTU2MiAzMS4xNTIzNDQgMzEyLjgzNTkzOCAxNC4zODY3MTkgMjkyLjE1NjI1IDE0LjM4NjcxOSBDIDI3MS40NzY1NjIgMTQuMzg2NzE5IDI1NC43MTA5MzggMzEuMTUyMzQ0IDI1NC43MTA5MzggNTEuODMyMDMxIEMgMjU0LjcxMDkzOCA3Mi41MTE3MTkgMjcxLjQ3NjU2MiA4OS4yNzczNDQgMjkyLjE1NjI1IDg5LjI3NzM0NCBDIDMxMi44MzU5MzggODkuMjc3MzQ0IDMyOS42MDE1NjIgNzIuNTExNzE5IDMyOS42MDE1NjIgNTEuODMyMDMxIFogTSAzMjkuNjAxNTYyIDUxLjgzMjAzMSAiLz4KPHBhdGggZmlsbD0ibm9uZSIgc3Ryb2tlLXdpZHRoPSIwLjc5NzAxIiBzdHJva2UtbGluZWNhcD0iYnV0dCIgc3Ryb2tlLWxpbmVqb2luPSJtaXRlciIgc3Ryb2tlPSJyZ2IoMCUsIDAlLCA2OS45OTk2OTUlKSIgc3Ryb2tlLW9wYWNpdHk9IjEiIHN0cm9rZS1taXRlcmxpbWl0PSIxMCIgZD0iTSAyMDcuODM4MTI3IDAuMDAwMTcyODIgQyAyMDcuODM4MTI3IDIwLjc1ODc3NiAxOTEuMDA4NTIzIDM3LjU4ODM4IDE3MC4yNDk5MiAzNy41ODgzOCBDIDE0OS40OTEzMTcgMzcuNTg4MzggMTMyLjY2MTcxMyAyMC43NTg3NzYgMTMyLjY2MTcxMyAwLjAwMDE3MjgyIEMgMTMyLjY2MTcxMyAtMjAuNzU4NDMgMTQ5LjQ5MTMxNyAtMzcuNTg4MDM1IDE3MC4yNDk5MiAtMzcuNTg4MDM1IEMgMTkxLjAwODUyMyAtMzcuNTg4MDM1IDIwNy44MzgxMjcgLTIwLjc1ODQzIDIwNy44MzgxMjcgMC4wMDAxNzI4MiBaIE0gMjA3LjgzODEyNyAwLjAwMDE3MjgyICIgdHJhbnNmb3JtPSJtYXRyaXgoMC45OTYxOTgsIDAsIDAsIC0wLjk5NjE5OCwgODIuOTA1MTEyLCA1MS44MzIyMDMpIi8+CjxwYXRoIGZpbGw9Im5vbmUiIHN0cm9rZS13aWR0aD0iMC43OTcwMSIgc3Ryb2tlLWxpbmVjYXA9ImJ1dHQiIHN0cm9rZS1saW5lam9pbj0ibWl0ZXIiIHN0cm9rZT0icmdiKDY5Ljk5OTY5NSUsIDAlLCAwJSkiIHN0cm9rZS1vcGFjaXR5PSIxIiBzdHJva2UtbWl0ZXJsaW1pdD0iMTAiIGQ9Ik0gMjQ3LjYzNzg2NyAwLjAwMDE3MjgyIEMgMjQ3LjYzNzg2NyAyMC43NTg3NzYgMjMwLjgwODI2MyAzNy41ODgzOCAyMTAuMDQ5NjYgMzcuNTg4MzggQyAxODkuMjkxMDU3IDM3LjU4ODM4IDE3Mi40NjE0NTIgMjAuNzU4Nzc2IDE3Mi40NjE0NTIgMC4wMDAxNzI4MiBDIDE3Mi40NjE0NTIgLTIwLjc1ODQzIDE4OS4yOTEwNTcgLTM3LjU4ODAzNSAyMTAuMDQ5NjYgLTM3LjU4ODAzNSBDIDIzMC44MDgyNjMgLTM3LjU4ODAzNSAyNDcuNjM3ODY3IC0yMC43NTg0MyAyNDcuNjM3ODY3IDAuMDAwMTcyODIgWiBNIDI0Ny42Mzc4NjcgMC4wMDAxNzI4MiAiIHRyYW5zZm9ybT0ibWF0cml4KDAuOTk2MTk4LCAwLCAwLCAtMC45OTYxOTgsIDgyLjkwNTExMiwgNTEuODMyMjAzKSIvPgo8ZyBmaWxsPSJyZ2IoMCUsIDAlLCA2OS45OTk2OTUlKSIgZmlsbC1vcGFjaXR5PSIxIj4KPHVzZSB4bGluazpocmVmPSIjZ2x5cGgtMC0xIiB4PSIyMjAuNDMxMjk5IiB5PSI1NC44ODM1NTkiLz4KPC9nPgo8ZyBmaWxsPSJyZ2IoNjkuOTk5Njk1JSwgMCUsIDAlKSIgZmlsbC1vcGFjaXR5PSIxIj4KPHVzZSB4bGluazpocmVmPSIjZ2x5cGgtMC0yIiB4PSIzMTcuMDkxNDM1IiB5PSI1NC44ODM1NTkiLz4KPC9nPgo8ZyBmaWxsPSJyZ2IoMCUsIDAlLCAwJSkiIGZpbGwtb3BhY2l0eT0iMSI+Cjx1c2UgeGxpbms6aHJlZj0iI2dseXBoLTAtMSIgeD0iMjYwLjA5MTk1MSIgeT0iMTE4Ljc1ODgwNSIvPgo8L2c+CjxnIGZpbGw9InJnYigwJSwgMCUsIDAlKSIgZmlsbC1vcGFjaXR5PSIxIj4KPHVzZSB4bGluazpocmVmPSIjZ2x5cGgtMS0xIiB4PSIyNjkuMDEyNjUyIiB5PSIxMTguNzU4ODA1Ii8+CjwvZz4KPGcgZmlsbD0icmdiKDAlLCAwJSwgMCUpIiBmaWxsLW9wYWNpdHk9IjEiPgo8dXNlIHhsaW5rOmhyZWY9IiNnbHlwaC0wLTIiIHg9IjI3Ny4xNzg1NzMiIHk9IjExOC43NTg4MDUiLz4KPC9nPgo8L3N2Zz4K" class="max-w-full" alt="Figure" /></div>

\begin{definition}[Ensembles disjoints]
On dit que $A$ et $B$ sont **disjoints** lorsque $A \cap B = \varnothing$, c'est-à-dire lorsqu'ils n'ont aucun élément commun.
\end{definition}

\begin{exemple}
Avec $A = \{1, 2, 3\}$ et $B = \{2, 3, 4, 5\}$ :
$$A \cap B = \{2, 3\}, \qquad A \cup B = \{1, 2, 3, 4, 5\}.$$
\end{exemple}

\begin{propriete}[Règles de calcul]
Pour toutes parties $A$, $B$, $C$ de $E$ :
\begin{itemize}
    \item **Commutativité** : $A \cap B = B \cap A$ et $A \cup B = B \cup A$ ;
    \item **Associativité** : $(A \cap B) \cap C = A \cap (B \cap C)$ et $(A \cup B) \cup C = A \cup (B \cup C)$ ;
    \item **Idempotence** : $A \cap A = A$ et $A \cup A = A$ ;
    \item **Éléments neutres** : $A \cap E = A$, $A \cup \varnothing = A$, $A \cap \varnothing = \varnothing$, $A \cup E = E$.
\end{itemize}
\end{propriete}

\begin{theoreme}[Distributivité]
Pour toutes parties $A$, $B$, $C$ de $E$ :
$$A \cap (B \cup C) = (A \cap B) \cup (A \cap C),$$
$$A \cup (B \cap C) = (A \cup B) \cap (A \cup C).$$
\end{theoreme}

## Complémentaire et différence

\begin{definition}[Complémentaire]
Soit $A$ une partie de $E$. Le **complémentaire** de $A$ dans $E$ est l'ensemble des éléments de $E$ qui n'appartiennent pas à $A$. On le note $\complement_E A$ ou $\overline{A}$ :
$$\overline{A} = \{ x \in E \mid x \notin A \}.$$
\end{definition}

\begin{propriete}
Pour toute partie $A$ de $E$ :
\begin{itemize}
    \item $\overline{\overline{A}} = A$ ;
    \item $A \cap \overline{A} = \varnothing$ et $A \cup \overline{A} = E$ ;
    \item $\overline{\varnothing} = E$ et $\overline{E} = \varnothing$.
\end{itemize}
\end{propriete}

\begin{theoreme}[Lois de De Morgan]
Pour toutes parties $A$ et $B$ de $E$ :
$$\overline{A \cup B} = \overline{A} \cap \overline{B}, \qquad \overline{A \cap B} = \overline{A} \cup \overline{B}.$$
\end{theoreme}

\begin{definition}[Différence]
La **différence** de $A$ et $B$ est l'ensemble des éléments de $A$ qui n'appartiennent pas à $B$ :
$$A \setminus B = \{ x \mid x \in A \ \text{et}\ x \notin B \} = A \cap \overline{B}.$$
\end{definition}

\begin{exemple}
Avec $E = \{0,1,2,3,4,5\}$, $A = \{1,2,3\}$ et $B = \{2,3,4\}$ :
$$\overline{A} = \{0,4,5\}, \qquad A \setminus B = \{1\}, \qquad B \setminus A = \{4\}.$$
\end{exemple}

## Produit cartésien

\begin{definition}[Produit cartésien]
Soient $E$ et $F$ deux ensembles. Le **produit cartésien** $E \times F$ est l'ensemble des **couples** $(x, y)$ où $x \in E$ et $y \in F$ :
$$E \times F = \{ (x, y) \mid x \in E \ \text{et}\ y \in F \}.$$
Deux couples sont égaux si et seulement si leurs composantes le sont : $(x, y) = (x', y') \iff x = x' \ \text{et}\ y = y'$.
\end{definition}

\begin{important}
Le couple est **ordonné** : en général $(x, y) \neq (y, x)$. Ainsi le produit cartésien n'est pas commutatif : $E \times F \neq F \times E$ dès que $E \neq F$.
\end{important}

\begin{exemple}
Avec $E = \{1, 2\}$ et $F = \{a, b\}$ :
$$E \times F = \{ (1, a),\ (1, b),\ (2, a),\ (2, b) \}.$$
Si $E$ a $n$ éléments et $F$ a $p$ éléments, alors $E \times F$ en a $n \times p$. On note $E^2 = E \times E$, ainsi $\mathbb{R}^2$ est l'ensemble des couples de réels (le plan).
\end{exemple}

## Applications

\begin{definition}[Application]
Soient $E$ et $F$ deux ensembles. Une **application** $f$ de $E$ vers $F$ est une correspondance qui à **chaque** élément $x$ de $E$ associe un **unique** élément de $F$, noté $f(x)$. On écrit :
$$f : E \longrightarrow F, \quad x \longmapsto f(x).$$
L'ensemble $E$ est l'**ensemble de départ** et $F$ l'**ensemble d'arrivée**.
\end{definition}

\begin{definition}[Image, antécédent]
Soit $f : E \to F$ une application et $x \in E$.
\begin{itemize}
    \item L'élément $f(x)$ est l'**image** de $x$ par $f$.
    \item Si $y = f(x)$, on dit que $x$ est **un** antécédent de $y$ par $f$.
\end{itemize}
\end{definition}

\begin{important}
Tout élément de $E$ possède une et une seule image. En revanche, un élément $y$ de $F$ peut avoir **plusieurs** antécédents, ou **aucun**.
\end{important}

\begin{definition}[Égalité de deux applications]
Deux applications $f$ et $g$ sont **égales** lorsqu'elles ont le même ensemble de départ $E$, le même ensemble d'arrivée $F$, et que $f(x) = g(x)$ pour tout $x \in E$.
\end{definition}

## Injection, surjection, bijection

\begin{definition}[Application injective]
Une application $f : E \to F$ est **injective** lorsque deux éléments distincts ont des images distinctes, autrement dit lorsque tout élément de $F$ a **au plus un** antécédent :
$$\forall x_1, x_2 \in E, \quad f(x_1) = f(x_2) \implies x_1 = x_2.$$
\end{definition}

\begin{definition}[Application surjective]
Une application $f : E \to F$ est **surjective** lorsque tout élément de $F$ a **au moins un** antécédent :
$$\forall y \in F, \ \exists x \in E, \quad y = f(x).$$
\end{definition}

\begin{definition}[Application bijective]
Une application $f : E \to F$ est **bijective** lorsqu'elle est à la fois injective et surjective. De manière équivalente, tout élément de $F$ a **exactement un** antécédent :
$$\forall y \in F, \ \exists !\, x \in E, \quad y = f(x).$$
\end{definition}

\begin{methode}[Étudier la nature d'une application]
Pour montrer que $f$ est injective, on suppose $f(x_1) = f(x_2)$ et on en déduit $x_1 = x_2$. Pour la surjectivité, on se donne $y \in F$ quelconque et on cherche $x \in E$ tel que $f(x) = y$ (en résolvant l'équation d'inconnue $x$). Si pour chaque $y$ cette équation admet une solution unique, $f$ est bijective.
\end{methode}

\begin{exemple}
Soit $f : \mathbb{R} \to \mathbb{R}$ définie par $f(x) = 2x + 1$. Pour tout $y \in \mathbb{R}$, l'équation $2x + 1 = y$ a l'unique solution $x = \dfrac{y - 1}{2}$ : $f$ est donc **bijective**.

En revanche, $g : \mathbb{R} \to \mathbb{R}$, $g(x) = x^2$ n'est ni injective ($g(-1) = g(1) = 1$) ni surjective ($-1$ n'a pas d'antécédent).
\end{exemple}

## Composée de deux applications

\begin{definition}[Composée]
Soient $f : E \to F$ et $g : F \to G$ deux applications. La **composée** de $f$ suivie de $g$ est l'application $g \circ f : E \to G$ définie par :
$$(g \circ f)(x) = g\big(f(x)\big) \quad \text{pour tout } x \in E.$$
\end{definition}

\begin{important}
La composition n'est en général **pas commutative** : $g \circ f$ et $f \circ g$ sont en général différentes (et l'une peut même ne pas être définie). En revanche, elle est **associative** : $h \circ (g \circ f) = (h \circ g) \circ f$.
\end{important}

\begin{propriete}[Composée et propriétés]
Soient $f : E \to F$ et $g : F \to G$.
\begin{itemize}
    \item Si $f$ et $g$ sont injectives, alors $g \circ f$ est injective.
    \item Si $f$ et $g$ sont surjectives, alors $g \circ f$ est surjective.
    \item Si $f$ et $g$ sont bijectives, alors $g \circ f$ est bijective.
\end{itemize}
\end{propriete}

## Application réciproque

\begin{definition}[Application identité]
L'**application identité** de $E$ est l'application $\operatorname{id}_E : E \to E$ définie par $\operatorname{id}_E(x) = x$ pour tout $x \in E$.
\end{definition}

\begin{theoreme}[Application réciproque]
Soit $f : E \to F$ une application **bijective**. Il existe une unique application, appelée **application réciproque** de $f$ et notée $f^{-1} : F \to E$, telle que :
$$f^{-1} \circ f = \operatorname{id}_E \quad \text{et} \quad f \circ f^{-1} = \operatorname{id}_F.$$
Pour $x \in E$ et $y \in F$ : $\quad y = f(x) \iff x = f^{-1}(y).$
\end{theoreme}

\begin{propriete}
Si $f : E \to F$ est bijective, alors $f^{-1}$ est aussi bijective et $\big(f^{-1}\big)^{-1} = f$. Si de plus $g : F \to G$ est bijective, alors $g \circ f$ est bijective et :
$$(g \circ f)^{-1} = f^{-1} \circ g^{-1}.$$
\end{propriete}

\begin{exemple}
Pour $f : \mathbb{R} \to \mathbb{R}$, $f(x) = 2x + 1$, bijective, on résout $y = 2x + 1$ en $x = \dfrac{y-1}{2}$. La réciproque est donc :
$$f^{-1} : \mathbb{R} \to \mathbb{R}, \quad y \longmapsto \frac{y - 1}{2}.$$
\end{exemple}

## Restriction et prolongement

\begin{definition}[Restriction]
Soit $f : E \to F$ une application et $A$ une partie de $E$. La **restriction** de $f$ à $A$ est l'application $f_{|A} : A \to F$ définie par $f_{|A}(x) = f(x)$ pour tout $x \in A$.
\end{definition}

\begin{definition}[Prolongement]
Soit $g : A \to F$ une application, où $A \subset E$. On dit qu'une application $f : E \to F$ est un **prolongement** de $g$ à $E$ lorsque $f_{|A} = g$, c'est-à-dire $f(x) = g(x)$ pour tout $x \in A$.
\end{definition}

\begin{important}
Une restriction est **unique**, mais une application admet en général **plusieurs** prolongements possibles : il suffit de choisir librement les valeurs de $f$ sur $E \setminus A$.
\end{important}

\begin{exemple}
La fonction $g : \mathbb{R}^* \to \mathbb{R}$, $g(x) = \dfrac{\sin x}{x}$ se prolonge en une application continue $f : \mathbb{R} \to \mathbb{R}$ en posant $f(0) = 1$ et $f(x) = g(x)$ pour $x \neq 0$. Restreindre $f$ à $\mathbb{R}^*$ redonne $g$.
\end{exemple}
