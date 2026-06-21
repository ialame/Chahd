Le **condensateur** stocke des charges électriques. Associé à un résistor, il forme le **dipôle RC**, dont la réponse (charge et décharge) est régie par une **constante de temps** $\tau = RC$. C'est le premier des circuits du programme.

## 1. Le condensateur

\begin{definition}[Condensateur]
Un **condensateur** est constitué de deux **armatures** conductrices séparées par un isolant. Il porte une charge $q$ proportionnelle à la tension $u_C$ entre ses bornes :
\[
\boxed{q = C\,u_C}
\]
où $C$ est la **capacité**, en **farads** ($\mathrm{F}$).
\end{definition}

\begin{propriete}[Relation intensité–tension]
En convention récepteur, l'intensité qui traverse le condensateur est :
\[
i = \frac{\mathrm{d}q}{\mathrm{d}t} = C\,\frac{\mathrm{d}u_C}{\mathrm{d}t}
\]
\end{propriete}

## 2. Charge du condensateur

On charge le condensateur à travers un résistor $R$ avec un générateur de tension $E$.

<img src="data:image/svg+xml;base64,PHN2ZyB2aWV3Qm94PSIwIDAgNDcwIDIxNSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiBmb250LWZhbWlseT0ic2Fucy1zZXJpZiI+PGRlZnM+PG1hcmtlciBpZD0iaSIgbWFya2VyV2lkdGg9IjkiIG1hcmtlckhlaWdodD0iOSIgcmVmWD0iNyIgcmVmWT0iMyIgb3JpZW50PSJhdXRvIj48cGF0aCBkPSJNMCwwIEw3LDMgTDAsNiBaIiBmaWxsPSIjMUY0RTc5Ii8+PC9tYXJrZXI+PG1hcmtlciBpZD0idWMiIG1hcmtlcldpZHRoPSI4IiBtYXJrZXJIZWlnaHQ9IjgiIHJlZlg9IjQiIHJlZlk9IjYiIG9yaWVudD0iYXV0byI+PHBhdGggZD0iTTAsMCBMNCw2IEw4LDAgWiIgZmlsbD0iI2I0NTMwOSIvPjwvbWFya2VyPjxtYXJrZXIgaWQ9InVjdCIgbWFya2VyV2lkdGg9IjgiIG1hcmtlckhlaWdodD0iOCIgcmVmWD0iNCIgcmVmWT0iMiIgb3JpZW50PSJhdXRvIj48cGF0aCBkPSJNMCw2IEw0LDAgTDgsNiBaIiBmaWxsPSIjYjQ1MzA5Ii8+PC9tYXJrZXI+PC9kZWZzPjx0ZXh0IHg9IjIzNSIgeT0iMTgiIHRleHQtYW5jaG9yPSJtaWRkbGUiIGZvbnQtc2l6ZT0iMTQiIGZvbnQtd2VpZ2h0PSJib2xkIiBmaWxsPSIjMUY0RTc5Ij5Nb250YWdlIGRlIGNoYXJnZSBkJ3VuIGRpcMO0bGUgUkM8L3RleHQ+PGxpbmUgeDE9Ijk1IiB5MT0iNTUiIHgyPSI5NSIgeTI9IjEwMCIgc3Ryb2tlPSIjMzM0MTU1IiBzdHJva2Utd2lkdGg9IjIiLz48bGluZSB4MT0iNzYiIHkxPSIxMDAiIHgyPSIxMTQiIHkyPSIxMDAiIHN0cm9rZT0iIzMzNDE1NSIgc3Ryb2tlLXdpZHRoPSIzIi8+PGxpbmUgeDE9Ijg2IiB5MT0iMTEwIiB4Mj0iMTA0IiB5Mj0iMTEwIiBzdHJva2U9IiMzMzQxNTUiIHN0cm9rZS13aWR0aD0iMyIvPjxsaW5lIHgxPSI5NSIgeTE9IjExMCIgeDI9Ijk1IiB5Mj0iMTc1IiBzdHJva2U9IiMzMzQxNTUiIHN0cm9rZS13aWR0aD0iMiIvPjx0ZXh0IHg9IjYyIiB5PSIxMDAiIGZvbnQtc2l6ZT0iMTMiIGZpbGw9IiMzMzQxNTUiIGZvbnQtd2VpZ2h0PSJib2xkIj5FPC90ZXh0Pjx0ZXh0IHg9IjExOCIgeT0iOTYiIGZvbnQtc2l6ZT0iMTEiIGZpbGw9IiMzMzQxNTUiPis8L3RleHQ+PGxpbmUgeDE9Ijk1IiB5MT0iNTUiIHgyPSIxNzAiIHkyPSI1NSIgc3Ryb2tlPSIjMzM0MTU1IiBzdHJva2Utd2lkdGg9IjIiLz48Y2lyY2xlIGN4PSIxNzAiIGN5PSI1NSIgcj0iMi41IiBmaWxsPSIjMzM0MTU1Ii8+PGxpbmUgeDE9IjE3MCIgeTE9IjU1IiB4Mj0iMTk2IiB5Mj0iNDIiIHN0cm9rZT0iIzMzNDE1NSIgc3Ryb2tlLXdpZHRoPSIyIi8+PGNpcmNsZSBjeD0iMjA1IiBjeT0iNTUiIHI9IjIuNSIgZmlsbD0iIzMzNDE1NSIvPjx0ZXh0IHg9IjE4MCIgeT0iMzQiIGZvbnQtc2l6ZT0iMTIiIGZpbGw9IiMzMzQxNTUiPks8L3RleHQ+PGxpbmUgeDE9IjIwNSIgeTE9IjU1IiB4Mj0iMjg4IiB5Mj0iNTUiIHN0cm9rZT0iIzMzNDE1NSIgc3Ryb2tlLXdpZHRoPSIyIi8+PHJlY3QgeD0iMjg4IiB5PSI0OCIgd2lkdGg9IjQ0IiBoZWlnaHQ9IjE0IiBmaWxsPSIjZmZmIiBzdHJva2U9IiMzMzQxNTUiIHN0cm9rZS13aWR0aD0iMiIvPjx0ZXh0IHg9IjMxMCIgeT0iNDAiIHRleHQtYW5jaG9yPSJtaWRkbGUiIGZvbnQtc2l6ZT0iMTIiIGZpbGw9IiMzMzQxNTUiPlI8L3RleHQ+PGxpbmUgeDE9IjMzMiIgeTE9IjU1IiB4Mj0iMzg1IiB5Mj0iNTUiIHN0cm9rZT0iIzMzNDE1NSIgc3Ryb2tlLXdpZHRoPSIyIi8+PGxpbmUgeDE9IjI0MCIgeTE9IjU1IiB4Mj0iMjU4IiB5Mj0iNTUiIHN0cm9rZT0iIzFGNEU3OSIgc3Ryb2tlLXdpZHRoPSIyLjIiIG1hcmtlci1lbmQ9InVybCgjaSkiLz48dGV4dCB4PSIyNDgiIHk9IjUwIiBmb250LXNpemU9IjExIiBmaWxsPSIjMUY0RTc5Ij5pPC90ZXh0PjxsaW5lIHgxPSIzODUiIHkxPSI1NSIgeDI9IjM4NSIgeTI9IjEwMiIgc3Ryb2tlPSIjMzM0MTU1IiBzdHJva2Utd2lkdGg9IjIiLz48bGluZSB4MT0iMzYwIiB5MT0iMTAyIiB4Mj0iNDEwIiB5Mj0iMTAyIiBzdHJva2U9IiMzMzQxNTUiIHN0cm9rZS13aWR0aD0iMyIvPjxsaW5lIHgxPSIzNjAiIHkxPSIxMTQiIHgyPSI0MTAiIHkyPSIxMTQiIHN0cm9rZT0iIzMzNDE1NSIgc3Ryb2tlLXdpZHRoPSIzIi8+PGxpbmUgeDE9IjM4NSIgeTE9IjExNCIgeDI9IjM4NSIgeTI9IjE3NSIgc3Ryb2tlPSIjMzM0MTU1IiBzdHJva2Utd2lkdGg9IjIiLz48dGV4dCB4PSI0MTYiIHk9IjExMiIgZm9udC1zaXplPSIxMyIgZmlsbD0iIzMzNDE1NSIgZm9udC13ZWlnaHQ9ImJvbGQiPkM8L3RleHQ+PGxpbmUgeDE9IjQzNyIgeTE9IjEwNCIgeDI9IjQzNyIgeTI9IjExMyIgc3Ryb2tlPSIjYjQ1MzA5IiBzdHJva2Utd2lkdGg9IjEuNiIgbWFya2VyLXN0YXJ0PSJ1cmwoI3VjdCkiIG1hcmtlci1lbmQ9InVybCgjdWMpIi8+PHRleHQgeD0iNDQyIiB5PSIxMTIiIGZvbnQtc2l6ZT0iMTIiIGZpbGw9IiNiNDUzMDkiIGZvbnQtd2VpZ2h0PSJib2xkIj51PC90ZXh0Pjx0ZXh0IHg9IjQ1MyIgeT0iMTE2IiBmb250LXNpemU9IjkiIGZpbGw9IiNiNDUzMDkiPkM8L3RleHQ+PGxpbmUgeDE9Ijk1IiB5MT0iMTc1IiB4Mj0iMzg1IiB5Mj0iMTc1IiBzdHJva2U9IiMzMzQxNTUiIHN0cm9rZS13aWR0aD0iMiIvPjwvc3ZnPgo=" alt="schéma" style="width:100%;max-width:470px;display:block;margin:14px auto">

\begin{propriete}[Équation différentielle de la charge]
La loi des mailles donne $E = u_R + u_C = R\,i + u_C$. Avec $i = C\,\dfrac{\mathrm{d}u_C}{\mathrm{d}t}$ :
\[
\boxed{RC\,\frac{\mathrm{d}u_C}{\mathrm{d}t} + u_C = E}
\]
\end{propriete}

\begin{propriete}[Solution]
Avec $u_C(0) = 0$, la tension croît exponentiellement vers $E$ :
\[
u_C(t) = E\left(1 - e^{-t/\tau}\right), \qquad \tau = RC
\]
et l'intensité décroît : $i(t) = \dfrac{E}{R}\,e^{-t/\tau}$.
\end{propriete}

<img src="data:image/svg+xml;base64,PHN2ZyB2aWV3Qm94PSIwIDAgNDcwIDIxMCIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiBmb250LWZhbWlseT0ic2Fucy1zZXJpZiI+PGRlZnM+PG1hcmtlciBpZD0iY2EiIG1hcmtlcldpZHRoPSI4IiBtYXJrZXJIZWlnaHQ9IjgiIHJlZlg9IjYiIHJlZlk9IjMiIG9yaWVudD0iYXV0byI+PHBhdGggZD0iTTAsMCBMNiwzIEwwLDYgWiIgZmlsbD0iIzQ3NTU2OSIvPjwvbWFya2VyPjwvZGVmcz48dGV4dCB4PSIyMzUiIHk9IjE2IiB0ZXh0LWFuY2hvcj0ibWlkZGxlIiBmb250LXNpemU9IjE0IiBmb250LXdlaWdodD0iYm9sZCIgZmlsbD0iIzFGNEU3OSI+Q2hhcmdlIGR1IGNvbmRlbnNhdGV1cjwvdGV4dD48bGluZSB4MT0iNTUiIHkxPSIxNzUiIHgyPSI0NTAiIHkyPSIxNzUiIHN0cm9rZT0iIzQ3NTU2OSIgc3Ryb2tlLXdpZHRoPSIxLjUiIG1hcmtlci1lbmQ9InVybCgjY2EpIi8+PGxpbmUgeDE9IjU1IiB5MT0iMTc1IiB4Mj0iNTUiIHkyPSIzNSIgc3Ryb2tlPSIjNDc1NTY5IiBzdHJva2Utd2lkdGg9IjEuNSIgbWFya2VyLWVuZD0idXJsKCNjYSkiLz48dGV4dCB4PSI0MCIgeT0iNDQiIGZvbnQtc2l6ZT0iMTIiIGZpbGw9IiM0NzU1NjkiPnU8L3RleHQ+PHRleHQgeD0iNTAiIHk9IjQ4IiBmb250LXNpemU9IjkiIGZpbGw9IiM0NzU1NjkiPkM8L3RleHQ+PHRleHQgeD0iNDUyIiB5PSIxOTAiIGZvbnQtc2l6ZT0iMTIiIGZpbGw9IiM0NzU1NjkiPnQ8L3RleHQ+PGxpbmUgeDE9IjU1IiB5MT0iNTUiIHgyPSI0NDUiIHkyPSI1NSIgc3Ryb2tlPSIjY2JkNWUxIiBzdHJva2UtZGFzaGFycmF5PSI0IDMiLz48dGV4dCB4PSI0OCIgeT0iNTkiIHRleHQtYW5jaG9yPSJlbmQiIGZvbnQtc2l6ZT0iMTEiIGZpbGw9IiMzMzQxNTUiPkU8L3RleHQ+PHBvbHlsaW5lIHBvaW50cz0iNTUsMTc1LjAgNjEsMTY0LjQgNjcsMTU0LjggNzMsMTQ2LjAgNzksMTM4LjAgODUsMTMwLjYgOTEsMTI0LjAgOTcsMTE3LjkgMTAzLDExMi4zIDEwOSwxMDcuMyAxMTUsMTAyLjcgMTIxLDk4LjUgMTI3LDk0LjYgMTMzLDkxLjEgMTM5LDg4LjAgMTQ1LDg1LjEgMTUxLDgyLjQgMTU3LDgwLjAgMTYzLDc3LjggMTY5LDc1LjggMTc1LDczLjkgMTgxLDcyLjMgMTg3LDcwLjcgMTkzLDY5LjQgMTk5LDY4LjEgMjA1LDY2LjkgMjExLDY1LjkgMjE3LDY0LjkgMjIzLDY0LjEgMjI5LDYzLjMgMjM1LDYyLjUgMjQxLDYxLjkgMjQ3LDYxLjMgMjUzLDYwLjcgMjU5LDYwLjIgMjY1LDU5LjcgMjcxLDU5LjMgMjc3LDU4LjkgMjgzLDU4LjYgMjg5LDU4LjMgMjk1LDU4LjAgMzAxLDU3LjcgMzA3LDU3LjUgMzEzLDU3LjMgMzE5LDU3LjEgMzI1LDU2LjkgMzMxLDU2LjcgMzM3LDU2LjYgMzQzLDU2LjQgMzQ5LDU2LjMgMzU1LDU2LjIgMzYxLDU2LjEgMzY3LDU2LjAgMzczLDU1LjkgMzc5LDU1LjggMzg1LDU1LjcgMzkxLDU1LjcgMzk3LDU1LjYgNDAzLDU1LjYgNDA5LDU1LjUgNDE1LDU1LjUgNDIxLDU1LjQgNDI3LDU1LjQgNDMzLDU1LjQgNDM5LDU1LjMiIGZpbGw9Im5vbmUiIHN0cm9rZT0iIzFGNEU3OSIgc3Ryb2tlLXdpZHRoPSIyLjUiIHN0cm9rZS1saW5lam9pbj0icm91bmQiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPjxsaW5lIHgxPSI1NSIgeTE9IjE3NSIgeDI9IjEyMCIgeTI9IjU1IiBzdHJva2U9IiM5NGEzYjgiIHN0cm9rZS13aWR0aD0iMSIgc3Ryb2tlLWRhc2hhcnJheT0iNSA0Ii8+PGxpbmUgeDE9IjU1IiB5MT0iOTkiIHgyPSIxMjAiIHkyPSI5OSIgc3Ryb2tlPSIjMGY3NjZlIiBzdHJva2Utd2lkdGg9IjEiIHN0cm9rZS1kYXNoYXJyYXk9IjQgMyIvPjxsaW5lIHgxPSIxMjAiIHkxPSI5OSIgeDI9IjEyMCIgeTI9IjE3NSIgc3Ryb2tlPSIjMGY3NjZlIiBzdHJva2Utd2lkdGg9IjEiIHN0cm9rZS1kYXNoYXJyYXk9IjQgMyIvPjx0ZXh0IHg9IjQ4IiB5PSIxMDMiIHRleHQtYW5jaG9yPSJlbmQiIGZvbnQtc2l6ZT0iMTAiIGZpbGw9IiMwZjc2NmUiPjAsNjNFPC90ZXh0Pjx0ZXh0IHg9IjEyMCIgeT0iMTg5IiB0ZXh0LWFuY2hvcj0ibWlkZGxlIiBmb250LXNpemU9IjEyIiBmaWxsPSIjMGY3NjZlIiBmb250LXdlaWdodD0iYm9sZCI+JiM5NjQ7PC90ZXh0Pjx0ZXh0IHg9IjI0MCIgeT0iMTIwIiBmb250LXNpemU9IjEwIiBmaWxsPSIjOTRhM2I4Ij50YW5nZW50ZSDDoCBsJ29yaWdpbmU8L3RleHQ+PC9zdmc+" alt="schéma" style="width:100%;max-width:470px;display:block;margin:14px auto">

## 3. Décharge du condensateur

Le condensateur chargé ($u_C(0) = E$) se décharge dans le résistor :
\[
RC\,\frac{\mathrm{d}u_C}{\mathrm{d}t} + u_C = 0
\quad\Longrightarrow\quad
u_C(t) = E\,e^{-t/\tau}
\]

## 4. La constante de temps

\begin{definition}[Constante de temps]
La grandeur $\tau = RC$ (en secondes) caractérise la **rapidité** de la charge/décharge.
\end{definition}

\begin{propriete}[Interprétations]
\begin{itemize}
    \item À $t = \tau$, la charge atteint $u_C = 0{,}63\,E$ (et la décharge, $0{,}37\,E$).
    \item Le régime permanent est pratiquement atteint au bout de $t \approx 5\tau$.
    \item Graphiquement, $\tau$ est l'abscisse du point d'intersection de la **tangente à l'origine** avec l'asymptote $u_C = E$.
\end{itemize}
\end{propriete}

\begin{methode}[Déterminer $\tau$ expérimentalement]
1. Repérer la valeur finale $E$ et calculer $0{,}63\,E$.
2. Lire l'abscisse $t$ pour laquelle $u_C = 0{,}63\,E$ : c'est $\tau$.
3. En déduire $C = \dfrac{\tau}{R}$ (ou $R = \dfrac{\tau}{C}$).
\end{methode}

## 5. Énergie emmagasinée

\begin{definition}[Énergie d'un condensateur]
Un condensateur chargé sous la tension $u_C$ emmagasine l'énergie :
\[
E_C = \frac{1}{2}\,C\,u_C^{2}
\]
\end{definition}

## L'essentiel

\begin{propriete}[À retenir]
\begin{itemize}
    \item Condensateur : $q = C\,u_C$ et $i = C\,\dfrac{\mathrm{d}u_C}{\mathrm{d}t}$.
    \item Charge : $u_C(t) = E\left(1 - e^{-t/\tau}\right)$ ; décharge : $u_C(t) = E\,e^{-t/\tau}$.
    \item Constante de temps : $\tau = RC$ ; $u_C(\tau) = 0{,}63\,E$ ; régime établi à $5\tau$.
    \item Énergie : $E_C = \dfrac{1}{2}C\,u_C^{2}$.
\end{itemize}
\end{propriete}
