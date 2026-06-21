La mécanique de Newton relie le **mouvement** d'un corps aux **forces** qu'il subit. Après avoir défini les vecteurs cinématiques, ce chapitre énonce les **trois lois de Newton**, fondement de toute la mécanique du programme.

## 1. Référentiel et vecteurs cinématiques

\begin{definition}[Référentiel galiléen]
Un **référentiel galiléen** est un référentiel dans lequel le **principe d'inertie** est vérifié. Le référentiel terrestre est galiléen pour des expériences de courte durée.
\end{definition}

\begin{definition}[Vecteurs cinématiques]
On étudie le mouvement du **centre d'inertie** $G$ :
\begin{itemize}
    \item **vecteur position** : $\overrightarrow{OG}(t)$ ;
    \item **vecteur vitesse** : $\vec{v} = \dfrac{\mathrm{d}\overrightarrow{OG}}{\mathrm{d}t}$ (tangent à la trajectoire) ;
    \item **vecteur accélération** : $\vec{a} = \dfrac{\mathrm{d}\vec{v}}{\mathrm{d}t}$ (en $\mathrm{m\cdot s^{-2}}$).
\end{itemize}
\end{definition}

<img src="data:image/svg+xml;base64,PHN2ZyB2aWV3Qm94PSIwIDAgNDcwIDIwMCIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiBmb250LWZhbWlseT0ic2Fucy1zZXJpZiI+PGRlZnM+PG1hcmtlciBpZD0icCIgbWFya2VyV2lkdGg9IjkiIG1hcmtlckhlaWdodD0iOSIgcmVmWD0iNyIgcmVmWT0iMyIgb3JpZW50PSJhdXRvIj48cGF0aCBkPSJNMCwwIEw3LDMgTDAsNiBaIiBmaWxsPSIjMUY0RTc5Ii8+PC9tYXJrZXI+PG1hcmtlciBpZD0idiIgbWFya2VyV2lkdGg9IjkiIG1hcmtlckhlaWdodD0iOSIgcmVmWD0iNyIgcmVmWT0iMyIgb3JpZW50PSJhdXRvIj48cGF0aCBkPSJNMCwwIEw3LDMgTDAsNiBaIiBmaWxsPSIjMGY3NjZlIi8+PC9tYXJrZXI+PG1hcmtlciBpZD0iYSIgbWFya2VyV2lkdGg9IjkiIG1hcmtlckhlaWdodD0iOSIgcmVmWD0iNyIgcmVmWT0iMyIgb3JpZW50PSJhdXRvIj48cGF0aCBkPSJNMCwwIEw3LDMgTDAsNiBaIiBmaWxsPSIjYjkxYzFjIi8+PC9tYXJrZXI+PC9kZWZzPjx0ZXh0IHg9IjIzNSIgeT0iMTciIHRleHQtYW5jaG9yPSJtaWRkbGUiIGZvbnQtc2l6ZT0iMTQiIGZvbnQtd2VpZ2h0PSJib2xkIiBmaWxsPSIjMUY0RTc5Ij5WZWN0ZXVycyBjaW7DqW1hdGlxdWVzPC90ZXh0PjxwYXRoIGQ9Ik03MCwxNzUgUTI1MCwzNSA0MzAsMTUwIiBmaWxsPSJub25lIiBzdHJva2U9IiNjYmQ1ZTEiIHN0cm9rZS13aWR0aD0iMS42IiBzdHJva2UtZGFzaGFycmF5PSI1IDQiLz48dGV4dCB4PSI0MDgiIHk9IjE2NiIgZm9udC1zaXplPSIxMCIgZmlsbD0iIzk0YTNiOCI+dHJhamVjdG9pcmU8L3RleHQ+PGNpcmNsZSBjeD0iNTIiIGN5PSIxNzgiIHI9IjMuNSIgZmlsbD0iIzMzNDE1NSIvPjx0ZXh0IHg9IjM4IiB5PSIxODIiIGZvbnQtc2l6ZT0iMTIiIGZpbGw9IiMzMzQxNTUiIGZvbnQtd2VpZ2h0PSJib2xkIj5PPC90ZXh0PjxjaXJjbGUgY3g9IjI1MCIgY3k9Ijk5IiByPSIzLjUiIGZpbGw9IiNiOTFjMWMiLz48dGV4dCB4PSIyNDYiIHk9IjkxIiBmb250LXNpemU9IjEyIiBmaWxsPSIjMzM0MTU1IiBmb250LXdlaWdodD0iYm9sZCI+RzwvdGV4dD48bGluZSB4MT0iNTIiIHkxPSIxNzgiIHgyPSIyNDciIHkyPSIxMDEiIHN0cm9rZT0iIzFGNEU3OSIgc3Ryb2tlLXdpZHRoPSIxLjgiIG1hcmtlci1lbmQ9InVybCgjcCkiLz48dGV4dCB4PSIxNDAiIHk9IjEyNiIgZm9udC1zaXplPSIxMiIgZmlsbD0iIzFGNEU3OSIgZm9udC13ZWlnaHQ9ImJvbGQiPk9HPC90ZXh0PjxsaW5lIHgxPSIyNTAiIHkxPSI5OSIgeDI9IjMzNSIgeTI9IjkzIiBzdHJva2U9IiMwZjc2NmUiIHN0cm9rZS13aWR0aD0iMiIgbWFya2VyLWVuZD0idXJsKCN2KSIvPjx0ZXh0IHg9IjMzOSIgeT0iOTEiIGZvbnQtc2l6ZT0iMTMiIGZpbGw9IiMwZjc2NmUiIGZvbnQtd2VpZ2h0PSJib2xkIj52PC90ZXh0PjxsaW5lIHgxPSIyNTAiIHkxPSI5OSIgeDI9IjI1MCIgeTI9IjE2MSIgc3Ryb2tlPSIjYjkxYzFjIiBzdHJva2Utd2lkdGg9IjIiIG1hcmtlci1lbmQ9InVybCgjYSkiLz48dGV4dCB4PSIyNTYiIHk9IjE1MSIgZm9udC1zaXplPSIxMyIgZmlsbD0iI2I5MWMxYyIgZm9udC13ZWlnaHQ9ImJvbGQiPmE8L3RleHQ+PC9zdmc+" alt="schéma" style="width:100%;max-width:470px;display:block;margin:14px auto">

## 2. Première loi : le principe d'inertie

\begin{propriete}[Principe d'inertie]
Dans un référentiel **galiléen**, le centre d'inertie d'un système est **au repos ou en mouvement rectiligne uniforme** (MRU) **si et seulement si** la somme des forces extérieures est nulle :
\[
\sum \vec{F}_{ext} = \vec{0} \iff \vec{v}_G = \overrightarrow{cste}
\]
\end{propriete}

## 3. Deuxième loi : la relation fondamentale de la dynamique

\begin{propriete}[Relation fondamentale de la dynamique (RFD)]
Dans un référentiel galiléen, la somme des forces extérieures est égale au produit de la masse par l'accélération du centre d'inertie :
\[
\boxed{\sum \vec{F}_{ext} = m\,\vec{a}_G}
\]
\end{propriete}

<img src="data:image/svg+xml;base64,PHN2ZyB2aWV3Qm94PSIwIDAgNDcwIDIxMCIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiBmb250LWZhbWlseT0ic2Fucy1zZXJpZiI+PGRlZnM+PG1hcmtlciBpZD0iZiIgbWFya2VyV2lkdGg9IjkiIG1hcmtlckhlaWdodD0iOSIgcmVmWD0iNyIgcmVmWT0iMyIgb3JpZW50PSJhdXRvIj48cGF0aCBkPSJNMCwwIEw3LDMgTDAsNiBaIiBmaWxsPSIjMzM0MTU1Ii8+PC9tYXJrZXI+PG1hcmtlciBpZD0iZnIiIG1hcmtlcldpZHRoPSI5IiBtYXJrZXJIZWlnaHQ9IjkiIHJlZlg9IjciIHJlZlk9IjMiIG9yaWVudD0iYXV0byI+PHBhdGggZD0iTTAsMCBMNywzIEwwLDYgWiIgZmlsbD0iIzFGNEU3OSIvPjwvbWFya2VyPjwvZGVmcz48dGV4dCB4PSIyMzUiIHk9IjE3IiB0ZXh0LWFuY2hvcj0ibWlkZGxlIiBmb250LXNpemU9IjE0IiBmb250LXdlaWdodD0iYm9sZCIgZmlsbD0iIzFGNEU3OSI+QmlsYW4gZGVzIGZvcmNlcyAoMuG1iSBsb2kgZGUgTmV3dG9uKTwvdGV4dD48bGluZSB4MT0iMTIwIiB5MT0iMTUwIiB4Mj0iMzYwIiB5Mj0iMTUwIiBzdHJva2U9IiMzMzQxNTUiIHN0cm9rZS13aWR0aD0iMiIvPjxwYXRoIGQ9Ik0xMjAsMTUwIGwtOCw4IE0xNDAsMTUwIGwtOCw4IE0xNjAsMTUwIGwtOCw4IE0xODAsMTUwIGwtOCw4IE0yMDAsMTUwIGwtOCw4IE0yMjAsMTUwIGwtOCw4IE0yNDAsMTUwIGwtOCw4IE0yNjAsMTUwIGwtOCw4IE0yODAsMTUwIGwtOCw4IE0zMDAsMTUwIGwtOCw4IE0zMjAsMTUwIGwtOCw4IE0zNDAsMTUwIGwtOCw4IiBzdHJva2U9IiM5NGEzYjgiIHN0cm9rZS13aWR0aD0iMSIvPjxyZWN0IHg9IjIxMCIgeT0iMTIyIiB3aWR0aD0iNjAiIGhlaWdodD0iMjgiIGZpbGw9IiNlMGYyZmUiIHN0cm9rZT0iIzAzNjlhMSIgc3Ryb2tlLXdpZHRoPSIxLjUiLz48Y2lyY2xlIGN4PSIyNDAiIGN5PSIxMzYiIHI9IjIuNSIgZmlsbD0iIzMzNDE1NSIvPjxsaW5lIHgxPSIyNDAiIHkxPSIxMzYiIHgyPSIyNDAiIHkyPSI4MCIgc3Ryb2tlPSIjMzM0MTU1IiBzdHJva2Utd2lkdGg9IjIiIG1hcmtlci1lbmQ9InVybCgjZikiLz48dGV4dCB4PSIyNDYiIHk9Ijg2IiBmb250LXNpemU9IjEzIiBmaWxsPSIjMzM0MTU1IiBmb250LXdlaWdodD0iYm9sZCI+UjwvdGV4dD48bGluZSB4MT0iMjQwIiB5MT0iMTM2IiB4Mj0iMjQwIiB5Mj0iMTk1IiBzdHJva2U9IiMzMzQxNTUiIHN0cm9rZS13aWR0aD0iMiIgbWFya2VyLWVuZD0idXJsKCNmKSIvPjx0ZXh0IHg9IjI0NiIgeT0iMTg4IiBmb250LXNpemU9IjEzIiBmaWxsPSIjMzM0MTU1IiBmb250LXdlaWdodD0iYm9sZCI+UDwvdGV4dD48bGluZSB4MT0iMjcwIiB5MT0iMTM2IiB4Mj0iMzQ1IiB5Mj0iMTM2IiBzdHJva2U9IiMxRjRFNzkiIHN0cm9rZS13aWR0aD0iMi4yIiBtYXJrZXItZW5kPSJ1cmwoI2ZyKSIvPjx0ZXh0IHg9IjM0OCIgeT0iMTQwIiBmb250LXNpemU9IjEzIiBmaWxsPSIjMUY0RTc5IiBmb250LXdlaWdodD0iYm9sZCI+RjwvdGV4dD48dGV4dCB4PSIyMzUiIHk9IjQwIiB0ZXh0LWFuY2hvcj0ibWlkZGxlIiBmb250LXNpemU9IjEyIiBmaWxsPSIjMGY3NjZlIj4mIzkzMTtGID0gbSBhPC90ZXh0Pjwvc3ZnPgo=" alt="schéma" style="width:100%;max-width:470px;display:block;margin:14px auto">

\begin{remarque}
La 1ʳᵉ loi est un cas particulier de la 2ᵈᵉ : si $\sum \vec{F}_{ext} = \vec{0}$, alors $\vec{a}_G = \vec{0}$, donc $\vec{v}_G$ est constant.
\end{remarque}

## 4. Troisième loi : les actions réciproques

\begin{propriete}[Principe des actions réciproques]
Lorsqu'un corps $A$ exerce une force sur un corps $B$, le corps $B$ exerce sur $A$ une force **opposée** (même droite d'action, même valeur, sens contraire) :
\[
\boxed{\vec{F}_{A/B} = -\,\vec{F}_{B/A}}
\]
\end{propriete}

## 5. Méthode de résolution

\begin{methode}[Appliquer les lois de Newton]
1. Définir le **système** et le **référentiel** (galiléen).
2. Faire le **bilan des forces extérieures** (poids, réaction, tension…).
3. Appliquer la **RFD** : $\sum \vec{F}_{ext} = m\,\vec{a}_G$.
4. Projeter sur les axes pour obtenir les équations du mouvement.
\end{methode}

## L'essentiel

\begin{propriete}[À retenir]
\begin{itemize}
    \item $\vec{v} = \dfrac{\mathrm{d}\overrightarrow{OG}}{\mathrm{d}t}$, $\vec{a} = \dfrac{\mathrm{d}\vec{v}}{\mathrm{d}t}$.
    \item 1ʳᵉ loi : $\sum \vec{F}_{ext} = \vec{0} \iff$ repos ou MRU.
    \item 2ᵈᵉ loi (RFD) : $\sum \vec{F}_{ext} = m\,\vec{a}_G$.
    \item 3ᵉ loi : $\vec{F}_{A/B} = -\,\vec{F}_{B/A}$.
\end{itemize}
\end{propriete}
