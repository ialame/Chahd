La **bobine** s'oppose aux variations du courant qui la traverse. Associée à un résistor, elle forme le **dipôle RL**, dont la réponse (établissement et rupture du courant) est régie par une **constante de temps** $\tau = \dfrac{L}{R}$, en parfaite analogie avec le dipôle RC.

## 1. La bobine

\begin{definition}[Bobine]
Une **bobine** est caractérisée par son **inductance** $L$, en **henrys** ($\mathrm{H}$). Pour une bobine idéale (résistance interne négligée), la tension à ses bornes est :
\[
\boxed{u_L = L\,\frac{\mathrm{d}i}{\mathrm{d}t}}
\]
(Avec une résistance interne $r$ : $u = r\,i + L\,\dfrac{\mathrm{d}i}{\mathrm{d}t}$.)
\end{definition}

\begin{remarque}
Une bobine **s'oppose aux variations** de l'intensité : le courant ne peut pas varier de façon discontinue dans une bobine.
\end{remarque}

## 2. Établissement du courant

On établit le courant dans un résistor $R$ et une bobine $L$ avec un générateur $E$.

<img src="data:image/svg+xml;base64,PHN2ZyB2aWV3Qm94PSIwIDAgNDcwIDIxNSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiBmb250LWZhbWlseT0ic2Fucy1zZXJpZiI+PGRlZnM+PG1hcmtlciBpZD0iaSIgbWFya2VyV2lkdGg9IjkiIG1hcmtlckhlaWdodD0iOSIgcmVmWD0iNyIgcmVmWT0iMyIgb3JpZW50PSJhdXRvIj48cGF0aCBkPSJNMCwwIEw3LDMgTDAsNiBaIiBmaWxsPSIjMUY0RTc5Ii8+PC9tYXJrZXI+PG1hcmtlciBpZD0idWMiIG1hcmtlcldpZHRoPSI4IiBtYXJrZXJIZWlnaHQ9IjgiIHJlZlg9IjQiIHJlZlk9IjYiIG9yaWVudD0iYXV0byI+PHBhdGggZD0iTTAsMCBMNCw2IEw4LDAgWiIgZmlsbD0iI2I0NTMwOSIvPjwvbWFya2VyPjxtYXJrZXIgaWQ9InVjdCIgbWFya2VyV2lkdGg9IjgiIG1hcmtlckhlaWdodD0iOCIgcmVmWD0iNCIgcmVmWT0iMiIgb3JpZW50PSJhdXRvIj48cGF0aCBkPSJNMCw2IEw0LDAgTDgsNiBaIiBmaWxsPSIjYjQ1MzA5Ii8+PC9tYXJrZXI+PC9kZWZzPjx0ZXh0IHg9IjIzNSIgeT0iMTgiIHRleHQtYW5jaG9yPSJtaWRkbGUiIGZvbnQtc2l6ZT0iMTQiIGZvbnQtd2VpZ2h0PSJib2xkIiBmaWxsPSIjMUY0RTc5Ij5Nb250YWdlIGQnw6l0YWJsaXNzZW1lbnQgKGRpcMO0bGUgUkwpPC90ZXh0PjxsaW5lIHgxPSI5NSIgeTE9IjU1IiB4Mj0iOTUiIHkyPSIxMDAiIHN0cm9rZT0iIzMzNDE1NSIgc3Ryb2tlLXdpZHRoPSIyIi8+PGxpbmUgeDE9Ijc2IiB5MT0iMTAwIiB4Mj0iMTE0IiB5Mj0iMTAwIiBzdHJva2U9IiMzMzQxNTUiIHN0cm9rZS13aWR0aD0iMyIvPjxsaW5lIHgxPSI4NiIgeTE9IjExMCIgeDI9IjEwNCIgeTI9IjExMCIgc3Ryb2tlPSIjMzM0MTU1IiBzdHJva2Utd2lkdGg9IjMiLz48bGluZSB4MT0iOTUiIHkxPSIxMTAiIHgyPSI5NSIgeTI9IjE3NSIgc3Ryb2tlPSIjMzM0MTU1IiBzdHJva2Utd2lkdGg9IjIiLz48dGV4dCB4PSI2MiIgeT0iMTAwIiBmb250LXNpemU9IjEzIiBmaWxsPSIjMzM0MTU1IiBmb250LXdlaWdodD0iYm9sZCI+RTwvdGV4dD48dGV4dCB4PSIxMTgiIHk9Ijk2IiBmb250LXNpemU9IjExIiBmaWxsPSIjMzM0MTU1Ij4rPC90ZXh0PjxsaW5lIHgxPSI5NSIgeTE9IjU1IiB4Mj0iMTcwIiB5Mj0iNTUiIHN0cm9rZT0iIzMzNDE1NSIgc3Ryb2tlLXdpZHRoPSIyIi8+PGNpcmNsZSBjeD0iMTcwIiBjeT0iNTUiIHI9IjIuNSIgZmlsbD0iIzMzNDE1NSIvPjxsaW5lIHgxPSIxNzAiIHkxPSI1NSIgeDI9IjE5NiIgeTI9IjQyIiBzdHJva2U9IiMzMzQxNTUiIHN0cm9rZS13aWR0aD0iMiIvPjxjaXJjbGUgY3g9IjIwNSIgY3k9IjU1IiByPSIyLjUiIGZpbGw9IiMzMzQxNTUiLz48dGV4dCB4PSIxODAiIHk9IjM0IiBmb250LXNpemU9IjEyIiBmaWxsPSIjMzM0MTU1Ij5LPC90ZXh0PjxsaW5lIHgxPSIyMDUiIHkxPSI1NSIgeDI9IjI4OCIgeTI9IjU1IiBzdHJva2U9IiMzMzQxNTUiIHN0cm9rZS13aWR0aD0iMiIvPjxyZWN0IHg9IjI4OCIgeT0iNDgiIHdpZHRoPSI0NCIgaGVpZ2h0PSIxNCIgZmlsbD0iI2ZmZiIgc3Ryb2tlPSIjMzM0MTU1IiBzdHJva2Utd2lkdGg9IjIiLz48dGV4dCB4PSIzMTAiIHk9IjQwIiB0ZXh0LWFuY2hvcj0ibWlkZGxlIiBmb250LXNpemU9IjEyIiBmaWxsPSIjMzM0MTU1Ij5SPC90ZXh0PjxsaW5lIHgxPSIzMzIiIHkxPSI1NSIgeDI9IjM4NSIgeTI9IjU1IiBzdHJva2U9IiMzMzQxNTUiIHN0cm9rZS13aWR0aD0iMiIvPjxsaW5lIHgxPSIyNDAiIHkxPSI1NSIgeDI9IjI1OCIgeTI9IjU1IiBzdHJva2U9IiMxRjRFNzkiIHN0cm9rZS13aWR0aD0iMi4yIiBtYXJrZXItZW5kPSJ1cmwoI2kpIi8+PHRleHQgeD0iMjQ4IiB5PSI1MCIgZm9udC1zaXplPSIxMSIgZmlsbD0iIzFGNEU3OSI+aTwvdGV4dD48bGluZSB4MT0iMzg1IiB5MT0iNTUiIHgyPSIzODUiIHkyPSI5MiIgc3Ryb2tlPSIjMzM0MTU1IiBzdHJva2Utd2lkdGg9IjIiLz48cGF0aCBkPSJNMzg1LDkyIGE3LDcgMCAwIDEgMCwxNCBhNyw3IDAgMCAxIDAsMTQgYTcsNyAwIDAgMSAwLDE0IGE3LDcgMCAwIDEgMCwxNCIgZmlsbD0ibm9uZSIgc3Ryb2tlPSIjMzM0MTU1IiBzdHJva2Utd2lkdGg9IjIiLz48bGluZSB4MT0iMzg1IiB5MT0iMTQ4IiB4Mj0iMzg1IiB5Mj0iMTc1IiBzdHJva2U9IiMzMzQxNTUiIHN0cm9rZS13aWR0aD0iMiIvPjx0ZXh0IHg9IjQwNCIgeT0iMTI0IiBmb250LXNpemU9IjEzIiBmaWxsPSIjMzM0MTU1IiBmb250LXdlaWdodD0iYm9sZCI+TDwvdGV4dD48bGluZSB4MT0iNDMwIiB5MT0iOTgiIHgyPSI0MzAiIHkyPSIxNDIiIHN0cm9rZT0iI2I0NTMwOSIgc3Ryb2tlLXdpZHRoPSIxLjYiIG1hcmtlci1zdGFydD0idXJsKCN1Y3QpIiBtYXJrZXItZW5kPSJ1cmwoI3VjKSIvPjx0ZXh0IHg9IjQzNSIgeT0iMTE4IiBmb250LXNpemU9IjEyIiBmaWxsPSIjYjQ1MzA5IiBmb250LXdlaWdodD0iYm9sZCI+dTwvdGV4dD48dGV4dCB4PSI0NDYiIHk9IjEyMiIgZm9udC1zaXplPSI5IiBmaWxsPSIjYjQ1MzA5Ij5MPC90ZXh0PjxsaW5lIHgxPSI5NSIgeTE9IjE3NSIgeDI9IjM4NSIgeTI9IjE3NSIgc3Ryb2tlPSIjMzM0MTU1IiBzdHJva2Utd2lkdGg9IjIiLz48L3N2Zz4=" alt="schéma" style="width:100%;max-width:470px;display:block;margin:14px auto">

\begin{propriete}[Équation différentielle]
La loi des mailles $E = u_R + u_L = R\,i + L\,\dfrac{\mathrm{d}i}{\mathrm{d}t}$ s'écrit :
\[
\boxed{L\,\frac{\mathrm{d}i}{\mathrm{d}t} + R\,i = E}
\]
\end{propriete}

\begin{propriete}[Solution]
Avec $i(0) = 0$, le courant croît exponentiellement vers $I_0 = \dfrac{E}{R}$ :
\[
i(t) = \frac{E}{R}\left(1 - e^{-t/\tau}\right), \qquad \tau = \frac{L}{R}
\]
\end{propriete}

<img src="data:image/svg+xml;base64,PHN2ZyB2aWV3Qm94PSIwIDAgNDcwIDIxMCIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiBmb250LWZhbWlseT0ic2Fucy1zZXJpZiI+PGRlZnM+PG1hcmtlciBpZD0iY2EiIG1hcmtlcldpZHRoPSI4IiBtYXJrZXJIZWlnaHQ9IjgiIHJlZlg9IjYiIHJlZlk9IjMiIG9yaWVudD0iYXV0byI+PHBhdGggZD0iTTAsMCBMNiwzIEwwLDYgWiIgZmlsbD0iIzQ3NTU2OSIvPjwvbWFya2VyPjwvZGVmcz48dGV4dCB4PSIyMzUiIHk9IjE2IiB0ZXh0LWFuY2hvcj0ibWlkZGxlIiBmb250LXNpemU9IjE0IiBmb250LXdlaWdodD0iYm9sZCIgZmlsbD0iIzFGNEU3OSI+w4l0YWJsaXNzZW1lbnQgZHUgY291cmFudDwvdGV4dD48bGluZSB4MT0iNTUiIHkxPSIxNzUiIHgyPSI0NTAiIHkyPSIxNzUiIHN0cm9rZT0iIzQ3NTU2OSIgc3Ryb2tlLXdpZHRoPSIxLjUiIG1hcmtlci1lbmQ9InVybCgjY2EpIi8+PGxpbmUgeDE9IjU1IiB5MT0iMTc1IiB4Mj0iNTUiIHkyPSIzNSIgc3Ryb2tlPSIjNDc1NTY5IiBzdHJva2Utd2lkdGg9IjEuNSIgbWFya2VyLWVuZD0idXJsKCNjYSkiLz48dGV4dCB4PSI0NCIgeT0iNDQiIGZvbnQtc2l6ZT0iMTIiIGZpbGw9IiM0NzU1NjkiPmk8L3RleHQ+PHRleHQgeD0iNDUyIiB5PSIxOTAiIGZvbnQtc2l6ZT0iMTIiIGZpbGw9IiM0NzU1NjkiPnQ8L3RleHQ+PGxpbmUgeDE9IjU1IiB5MT0iNTUiIHgyPSI0NDUiIHkyPSI1NSIgc3Ryb2tlPSIjY2JkNWUxIiBzdHJva2UtZGFzaGFycmF5PSI0IDMiLz48dGV4dCB4PSI0OCIgeT0iNTkiIHRleHQtYW5jaG9yPSJlbmQiIGZvbnQtc2l6ZT0iMTAiIGZpbGw9IiMzMzQxNTUiPkkmIzgzMjA7PUUvUjwvdGV4dD48cG9seWxpbmUgcG9pbnRzPSI1NSwxNzUuMCA2MSwxNjQuNCA2NywxNTQuOCA3MywxNDYuMCA3OSwxMzguMCA4NSwxMzAuNiA5MSwxMjQuMCA5NywxMTcuOSAxMDMsMTEyLjMgMTA5LDEwNy4zIDExNSwxMDIuNyAxMjEsOTguNSAxMjcsOTQuNiAxMzMsOTEuMSAxMzksODguMCAxNDUsODUuMSAxNTEsODIuNCAxNTcsODAuMCAxNjMsNzcuOCAxNjksNzUuOCAxNzUsNzMuOSAxODEsNzIuMyAxODcsNzAuNyAxOTMsNjkuNCAxOTksNjguMSAyMDUsNjYuOSAyMTEsNjUuOSAyMTcsNjQuOSAyMjMsNjQuMSAyMjksNjMuMyAyMzUsNjIuNSAyNDEsNjEuOSAyNDcsNjEuMyAyNTMsNjAuNyAyNTksNjAuMiAyNjUsNTkuNyAyNzEsNTkuMyAyNzcsNTguOSAyODMsNTguNiAyODksNTguMyAyOTUsNTguMCAzMDEsNTcuNyAzMDcsNTcuNSAzMTMsNTcuMyAzMTksNTcuMSAzMjUsNTYuOSAzMzEsNTYuNyAzMzcsNTYuNiAzNDMsNTYuNCAzNDksNTYuMyAzNTUsNTYuMiAzNjEsNTYuMSAzNjcsNTYuMCAzNzMsNTUuOSAzNzksNTUuOCAzODUsNTUuNyAzOTEsNTUuNyAzOTcsNTUuNiA0MDMsNTUuNiA0MDksNTUuNSA0MTUsNTUuNSA0MjEsNTUuNCA0MjcsNTUuNCA0MzMsNTUuNCA0MzksNTUuMyIgZmlsbD0ibm9uZSIgc3Ryb2tlPSIjMUY0RTc5IiBzdHJva2Utd2lkdGg9IjIuNSIgc3Ryb2tlLWxpbmVqb2luPSJyb3VuZCIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+PGxpbmUgeDE9IjU1IiB5MT0iMTc1IiB4Mj0iMTIwIiB5Mj0iNTUiIHN0cm9rZT0iIzk0YTNiOCIgc3Ryb2tlLXdpZHRoPSIxIiBzdHJva2UtZGFzaGFycmF5PSI1IDQiLz48bGluZSB4MT0iNTUiIHkxPSI5OSIgeDI9IjEyMCIgeTI9Ijk5IiBzdHJva2U9IiMwZjc2NmUiIHN0cm9rZS13aWR0aD0iMSIgc3Ryb2tlLWRhc2hhcnJheT0iNCAzIi8+PGxpbmUgeDE9IjEyMCIgeTE9Ijk5IiB4Mj0iMTIwIiB5Mj0iMTc1IiBzdHJva2U9IiMwZjc2NmUiIHN0cm9rZS13aWR0aD0iMSIgc3Ryb2tlLWRhc2hhcnJheT0iNCAzIi8+PHRleHQgeD0iNDgiIHk9IjEwMyIgdGV4dC1hbmNob3I9ImVuZCIgZm9udC1zaXplPSIxMCIgZmlsbD0iIzBmNzY2ZSI+MCw2MyBJJiM4MzIwOzwvdGV4dD48dGV4dCB4PSIxMjAiIHk9IjE4OSIgdGV4dC1hbmNob3I9Im1pZGRsZSIgZm9udC1zaXplPSIxMiIgZmlsbD0iIzBmNzY2ZSIgZm9udC13ZWlnaHQ9ImJvbGQiPiYjOTY0OzwvdGV4dD48L3N2Zz4=" alt="schéma" style="width:100%;max-width:470px;display:block;margin:14px auto">

## 3. Rupture du courant

À l'ouverture du circuit (le courant établi $I_0$ décroît) :
\[
L\,\frac{\mathrm{d}i}{\mathrm{d}t} + R\,i = 0
\quad\Longrightarrow\quad
i(t) = I_0\,e^{-t/\tau}
\]

## 4. La constante de temps

\begin{definition}[Constante de temps]
La grandeur $\tau = \dfrac{L}{R}$ (en secondes) caractérise la **rapidité** de l'établissement (ou de la rupture) du courant.
\end{definition}

\begin{propriete}[Interprétations]
\begin{itemize}
    \item À $t = \tau$, le courant atteint $i = 0{,}63\,I_0$.
    \item Le régime permanent est atteint au bout de $t \approx 5\tau$.
    \item En **régime permanent**, $\dfrac{\mathrm{d}i}{\mathrm{d}t} = 0$ : la bobine se comporte comme un **simple fil** ($u_L = 0$), et $I_0 = \dfrac{E}{R}$.
\end{itemize}
\end{propriete}

## 5. Énergie emmagasinée

\begin{definition}[Énergie d'une bobine]
Une bobine parcourue par un courant $i$ emmagasine l'énergie magnétique :
\[
E_L = \frac{1}{2}\,L\,i^{2}
\]
\end{definition}

## L'essentiel

\begin{propriete}[À retenir]
\begin{itemize}
    \item Bobine : $u_L = L\,\dfrac{\mathrm{d}i}{\mathrm{d}t}$ ; elle s'oppose aux variations du courant.
    \item Établissement : $i(t) = \dfrac{E}{R}\left(1 - e^{-t/\tau}\right)$ ; rupture : $i(t) = I_0\,e^{-t/\tau}$.
    \item Constante de temps : $\tau = \dfrac{L}{R}$ ; $i(\tau) = 0{,}63\,I_0$ ; régime établi à $5\tau$.
    \item Énergie : $E_L = \dfrac{1}{2}L\,i^{2}$.
\end{itemize}
\end{propriete}
