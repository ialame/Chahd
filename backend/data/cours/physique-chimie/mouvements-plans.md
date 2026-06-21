Les lois de Newton permettent d'étudier le mouvement d'un corps dans un **champ uniforme**. On traite trois cas du programme : le **projectile** (champ de pesanteur), la particule chargée dans un **champ électrique**, et dans un **champ magnétique**.

## 1. Le projectile dans le champ de pesanteur

\begin{propriete}[Équations du mouvement]
Un projectile (masse $m$) lancé avec une vitesse $\vec{v_0}$ inclinée d'un angle $\alpha$ n'est soumis qu'à son **poids**. La RFD donne $\vec{a} = \vec{g}$, soit $a_x = 0$ et $a_y = -g$. En intégrant :
\[
\begin{cases} v_x = v_0\cos\alpha \\ v_y = -g\,t + v_0\sin\alpha \end{cases}
\qquad
\begin{cases} x = (v_0\cos\alpha)\,t \\ y = -\tfrac{1}{2}g\,t^{2} + (v_0\sin\alpha)\,t \end{cases}
\]
\end{propriete}

\begin{propriete}[Trajectoire]
En éliminant le temps, l'équation de la trajectoire est une **parabole** :
\[
y = -\frac{g}{2\,v_0^{2}\cos^{2}\alpha}\,x^{2} + (\tan\alpha)\,x
\]
Le mouvement est **uniforme** horizontalement et **uniformément accéléré** verticalement.
\end{propriete}

<img src="data:image/svg+xml;base64,PHN2ZyB2aWV3Qm94PSIwIDAgNDcwIDIwMCIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiBmb250LWZhbWlseT0ic2Fucy1zZXJpZiI+PGRlZnM+PG1hcmtlciBpZD0idiIgbWFya2VyV2lkdGg9IjkiIG1hcmtlckhlaWdodD0iOSIgcmVmWD0iNyIgcmVmWT0iMyIgb3JpZW50PSJhdXRvIj48cGF0aCBkPSJNMCwwIEw3LDMgTDAsNiBaIiBmaWxsPSIjMGY3NjZlIi8+PC9tYXJrZXI+PG1hcmtlciBpZD0iZyIgbWFya2VyV2lkdGg9IjkiIG1hcmtlckhlaWdodD0iOSIgcmVmWD0iNyIgcmVmWT0iMyIgb3JpZW50PSJhdXRvIj48cGF0aCBkPSJNMCwwIEw3LDMgTDAsNiBaIiBmaWxsPSIjYjkxYzFjIi8+PC9tYXJrZXI+PC9kZWZzPjx0ZXh0IHg9IjIzNSIgeT0iMTciIHRleHQtYW5jaG9yPSJtaWRkbGUiIGZvbnQtc2l6ZT0iMTQiIGZvbnQtd2VpZ2h0PSJib2xkIiBmaWxsPSIjMUY0RTc5Ij5Qcm9qZWN0aWxlIGRhbnMgbGUgY2hhbXAgZGUgcGVzYW50ZXVyPC90ZXh0PjxsaW5lIHgxPSI1NSIgeTE9IjE3MCIgeDI9IjQzMCIgeTI9IjE3MCIgc3Ryb2tlPSIjOTRhM2I4IiBzdHJva2Utd2lkdGg9IjEuMiIvPjxsaW5lIHgxPSI1NSIgeTE9IjE3MCIgeDI9IjU1IiB5Mj0iNDAiIHN0cm9rZT0iIzk0YTNiOCIgc3Ryb2tlLXdpZHRoPSIxLjIiLz48cGF0aCBkPSJNNTUsMTcwIFEyMTAsMzggNDA1LDE3MCIgZmlsbD0ibm9uZSIgc3Ryb2tlPSIjMUY0RTc5IiBzdHJva2Utd2lkdGg9IjIuMyIvPjxjaXJjbGUgY3g9IjU1IiBjeT0iMTcwIiByPSIzLjUiIGZpbGw9IiMzMzQxNTUiLz48dGV4dCB4PSI0MCIgeT0iMTg0IiBmb250LXNpemU9IjEyIiBmaWxsPSIjMzM0MTU1IiBmb250LXdlaWdodD0iYm9sZCI+TzwvdGV4dD48bGluZSB4MT0iNTUiIHkxPSIxNzAiIHgyPSIxMjMiIHkyPSIxMTIiIHN0cm9rZT0iIzBmNzY2ZSIgc3Ryb2tlLXdpZHRoPSIyLjIiIG1hcmtlci1lbmQ9InVybCgjdikiLz48dGV4dCB4PSIxMjYiIHk9IjEwOCIgZm9udC1zaXplPSIxMiIgZmlsbD0iIzBmNzY2ZSIgZm9udC13ZWlnaHQ9ImJvbGQiPnY8L3RleHQ+PHRleHQgeD0iMTM1IiB5PSIxMTIiIGZvbnQtc2l6ZT0iOSIgZmlsbD0iIzBmNzY2ZSI+MDwvdGV4dD48cGF0aCBkPSJNOTUsMTcwIEE0MCw0MCAwIDAsMCA4MywxNTAiIGZpbGw9Im5vbmUiIHN0cm9rZT0iIzMzNDE1NSIgc3Ryb2tlLXdpZHRoPSIxIi8+PHRleHQgeD0iOTgiIHk9IjE2MCIgZm9udC1zaXplPSIxMSIgZmlsbD0iIzMzNDE1NSI+JiM5NDU7PC90ZXh0PjxsaW5lIHgxPSIyMzUiIHkxPSI3OCIgeDI9IjIzNSIgeTI9IjEyMCIgc3Ryb2tlPSIjYjkxYzFjIiBzdHJva2Utd2lkdGg9IjIuMiIgbWFya2VyLWVuZD0idXJsKCNnKSIvPjx0ZXh0IHg9IjI0MSIgeT0iMTA0IiBmb250LXNpemU9IjEzIiBmaWxsPSIjYjkxYzFjIiBmb250LXdlaWdodD0iYm9sZCI+ZzwvdGV4dD48L3N2Zz4K" alt="schéma" style="width:100%;max-width:470px;display:block;margin:14px auto">

## 2. Particule chargée dans un champ électrique uniforme

\begin{propriete}[Force et accélération électriques]
Une particule de charge $q$ placée dans un champ électrique uniforme $\vec{E}$ subit la **force électrique** :
\[
\vec{F} = q\,\vec{E}
\quad\Longrightarrow\quad
\vec{a} = \frac{q\,\vec{E}}{m}
\]
\end{propriete}

\begin{remarque}
L'accélération étant constante, le mouvement est **analogue à celui du projectile** : la trajectoire entre les armatures est une **parabole** (déviation électrostatique).
\end{remarque}

## 3. Particule chargée dans un champ magnétique uniforme

\begin{propriete}[Force de Lorentz]
Une particule de charge $q$, de vitesse $\vec{v}$, dans un champ magnétique $\vec{B}$, subit la **force de Lorentz** :
\[
\boxed{\vec{F} = q\,\vec{v}\wedge\vec{B}}
\]
de valeur $F = |q|\,v\,B\sin\theta$. Elle est **perpendiculaire** à $\vec{v}$.
\end{propriete}

\begin{propriete}[Mouvement circulaire uniforme]
Comme $\vec{F} \perp \vec{v}$, la force magnétique ne **travaille pas** : la **vitesse reste constante**. Le mouvement (pour $\vec{v} \perp \vec{B}$) est **circulaire uniforme**, de rayon :
\[
\boxed{R = \frac{m\,v}{|q|\,B}}
\]
\end{propriete}

<img src="data:image/svg+xml;base64,PHN2ZyB2aWV3Qm94PSIwIDAgNDcwIDIyMCIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiBmb250LWZhbWlseT0ic2Fucy1zZXJpZiI+PGRlZnM+PG1hcmtlciBpZD0idiIgbWFya2VyV2lkdGg9IjkiIG1hcmtlckhlaWdodD0iOSIgcmVmWD0iNyIgcmVmWT0iMyIgb3JpZW50PSJhdXRvIj48cGF0aCBkPSJNMCwwIEw3LDMgTDAsNiBaIiBmaWxsPSIjMGY3NjZlIi8+PC9tYXJrZXI+PG1hcmtlciBpZD0iZiIgbWFya2VyV2lkdGg9IjkiIG1hcmtlckhlaWdodD0iOSIgcmVmWD0iNyIgcmVmWT0iMyIgb3JpZW50PSJhdXRvIj48cGF0aCBkPSJNMCwwIEw3LDMgTDAsNiBaIiBmaWxsPSIjYjkxYzFjIi8+PC9tYXJrZXI+PC9kZWZzPjx0ZXh0IHg9IjIzNSIgeT0iMTciIHRleHQtYW5jaG9yPSJtaWRkbGUiIGZvbnQtc2l6ZT0iMTQiIGZvbnQtd2VpZ2h0PSJib2xkIiBmaWxsPSIjMUY0RTc5Ij5DaGFtcCBtYWduw6l0aXF1ZSA6IG1vdXZlbWVudCBjaXJjdWxhaXJlPC90ZXh0PjxnIHN0cm9rZT0iIzdkZDNmYyIgc3Ryb2tlLXdpZHRoPSIxLjQiPjxwYXRoIGQ9Ik0xNTAsNzAgbDgsOCBNMTU4LDcwIGwtOCw4Ii8+PHBhdGggZD0iTTMxNSw3MCBsOCw4IE0zMjMsNzAgbC04LDgiLz48cGF0aCBkPSJNMTUwLDE3NSBsOCw4IE0xNTgsMTc1IGwtOCw4Ii8+PHBhdGggZD0iTTMxNSwxNzUgbDgsOCBNMzIzLDE3NSBsLTgsOCIvPjwvZz48dGV4dCB4PSIzNTAiIHk9IjIwMCIgZm9udC1zaXplPSIxMSIgZmlsbD0iIzAzNjlhMSI+QiAoZW50cmFudCk8L3RleHQ+PGNpcmNsZSBjeD0iMjM1IiBjeT0iMTI1IiByPSI2OCIgZmlsbD0ibm9uZSIgc3Ryb2tlPSIjY2JkNWUxIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWRhc2hhcnJheT0iNSA0Ii8+PGxpbmUgeDE9IjIzNSIgeTE9IjEyNSIgeDI9IjMwMyIgeTI9IjEyNSIgc3Ryb2tlPSIjNjQ3NDhiIiBzdHJva2Utd2lkdGg9IjEiIHN0cm9rZS1kYXNoYXJyYXk9IjMgMiIvPjx0ZXh0IHg9IjI2MiIgeT0iMTIwIiBmb250LXNpemU9IjEyIiBmaWxsPSIjNjQ3NDhiIiBmb250LXdlaWdodD0iYm9sZCI+UjwvdGV4dD48Y2lyY2xlIGN4PSIyMzUiIGN5PSI1NyIgcj0iNSIgZmlsbD0iIzFGNEU3OSIvPjx0ZXh0IHg9IjIwMCIgeT0iNTAiIGZvbnQtc2l6ZT0iMTEiIGZpbGw9IiMxRjRFNzkiIGZvbnQtd2VpZ2h0PSJib2xkIj5xICZndDsgMDwvdGV4dD48bGluZSB4MT0iMjM1IiB5MT0iNTciIHgyPSIzMDUiIHkyPSI1NyIgc3Ryb2tlPSIjMGY3NjZlIiBzdHJva2Utd2lkdGg9IjIuMiIgbWFya2VyLWVuZD0idXJsKCN2KSIvPjx0ZXh0IHg9IjMwOCIgeT0iNTQiIGZvbnQtc2l6ZT0iMTMiIGZpbGw9IiMwZjc2NmUiIGZvbnQtd2VpZ2h0PSJib2xkIj52PC90ZXh0PjxsaW5lIHgxPSIyMzUiIHkxPSI1NyIgeDI9IjIzNSIgeTI9IjEwOCIgc3Ryb2tlPSIjYjkxYzFjIiBzdHJva2Utd2lkdGg9IjIuMiIgbWFya2VyLWVuZD0idXJsKCNmKSIvPjx0ZXh0IHg9IjI0MSIgeT0iOTIiIGZvbnQtc2l6ZT0iMTMiIGZpbGw9IiNiOTFjMWMiIGZvbnQtd2VpZ2h0PSJib2xkIj5GPC90ZXh0Pjwvc3ZnPgo=" alt="schéma" style="width:100%;max-width:470px;display:block;margin:14px auto">

## L'essentiel

\begin{propriete}[À retenir]
\begin{itemize}
    \item Projectile : $\vec{a} = \vec{g}$, trajectoire **parabolique** ; horizontal uniforme, vertical uniformément accéléré.
    \item Champ électrique : $\vec{F} = q\vec{E}$, $\vec{a} = \dfrac{q\vec{E}}{m}$ ; trajectoire parabolique.
    \item Champ magnétique : $\vec{F} = q\vec{v}\wedge\vec{B}$ ; mouvement **circulaire uniforme**, $R = \dfrac{mv}{|q|B}$.
    \item La force magnétique **ne travaille pas** (vitesse constante).
\end{itemize}
\end{propriete}
