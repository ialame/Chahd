Lorsqu'un solide tombe dans un fluide (liquide ou gaz), il subit, en plus de son poids, la **poussée d'Archimède** et une **force de frottement**. L'application de la 2ᵉ loi de Newton conduit à une équation différentielle dont la solution tend vers une **vitesse limite**.

## 1. Bilan des forces

\begin{propriete}[Forces sur le solide]
Un solide (de masse $m$, volume $V$) en chute dans un fluide subit :
\begin{itemize}
    \item le **poids** $\vec{P}$, vers le bas, de valeur $P = mg$ ;
    \item la **poussée d'Archimède** $\vec{F}_A$, vers le haut : $F_A = \rho_{fluide}\,V\,g$ ;
    \item la **force de frottement fluide** $\vec{f}$, **opposée à la vitesse** (vers le haut pendant la chute), modélisée par $f = k\,v$ ou $f = k\,v^{2}$.
\end{itemize}
\end{propriete}

<img src="data:image/svg+xml;base64,PHN2ZyB2aWV3Qm94PSIwIDAgNDcwIDIxNSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiBmb250LWZhbWlseT0ic2Fucy1zZXJpZiI+PGRlZnM+PG1hcmtlciBpZD0iZiIgbWFya2VyV2lkdGg9IjkiIG1hcmtlckhlaWdodD0iOSIgcmVmWD0iNyIgcmVmWT0iMyIgb3JpZW50PSJhdXRvIj48cGF0aCBkPSJNMCwwIEw3LDMgTDAsNiBaIiBmaWxsPSIjMzM0MTU1Ii8+PC9tYXJrZXI+PG1hcmtlciBpZD0idSIgbWFya2VyV2lkdGg9IjkiIG1hcmtlckhlaWdodD0iOSIgcmVmWD0iNyIgcmVmWT0iMyIgb3JpZW50PSJhdXRvIj48cGF0aCBkPSJNMCwwIEw3LDMgTDAsNiBaIiBmaWxsPSIjMGY3NjZlIi8+PC9tYXJrZXI+PG1hcmtlciBpZD0idyIgbWFya2VyV2lkdGg9IjkiIG1hcmtlckhlaWdodD0iOSIgcmVmWD0iNyIgcmVmWT0iMyIgb3JpZW50PSJhdXRvIj48cGF0aCBkPSJNMCwwIEw3LDMgTDAsNiBaIiBmaWxsPSIjYjQ1MzA5Ii8+PC9tYXJrZXI+PC9kZWZzPjx0ZXh0IHg9IjIzNSIgeT0iMTciIHRleHQtYW5jaG9yPSJtaWRkbGUiIGZvbnQtc2l6ZT0iMTQiIGZvbnQtd2VpZ2h0PSJib2xkIiBmaWxsPSIjMUY0RTc5Ij5CaWxhbiBkZXMgZm9yY2VzIGRhbnMgdW4gZmx1aWRlPC90ZXh0PjxyZWN0IHg9IjE1MCIgeT0iNDAiIHdpZHRoPSIxNzAiIGhlaWdodD0iMTY1IiBmaWxsPSIjZTBmMmZlIiBzdHJva2U9IiM3ZGQzZmMiIHN0cm9rZS13aWR0aD0iMS41Ii8+PHRleHQgeD0iMTU2IiB5PSIxOTgiIGZvbnQtc2l6ZT0iMTEiIGZpbGw9IiMwMzY5YTEiPmZsdWlkZTwvdGV4dD48Y2lyY2xlIGN4PSIyMzUiIGN5PSIxMjAiIHI9IjE0IiBmaWxsPSIjOTRhM2I4IiBzdHJva2U9IiM0NzU1NjkiIHN0cm9rZS13aWR0aD0iMS41Ii8+PGxpbmUgeDE9IjIzNSIgeTE9IjEzNCIgeDI9IjIzNSIgeTI9IjE5MCIgc3Ryb2tlPSIjMzM0MTU1IiBzdHJva2Utd2lkdGg9IjIuMiIgbWFya2VyLWVuZD0idXJsKCNmKSIvPjx0ZXh0IHg9IjI0MCIgeT0iMTgwIiBmb250LXNpemU9IjEzIiBmaWxsPSIjMzM0MTU1IiBmb250LXdlaWdodD0iYm9sZCI+UDwvdGV4dD48bGluZSB4MT0iMjIzIiB5MT0iMTA2IiB4Mj0iMjIzIiB5Mj0iNTIiIHN0cm9rZT0iIzBmNzY2ZSIgc3Ryb2tlLXdpZHRoPSIyLjIiIG1hcmtlci1lbmQ9InVybCgjdSkiLz48dGV4dCB4PSIxODgiIHk9IjcwIiBmb250LXNpemU9IjEzIiBmaWxsPSIjMGY3NjZlIiBmb250LXdlaWdodD0iYm9sZCI+RjwvdGV4dD48dGV4dCB4PSIxOTkiIHk9Ijc0IiBmb250LXNpemU9IjkiIGZpbGw9IiMwZjc2NmUiPkE8L3RleHQ+PGxpbmUgeDE9IjI0NyIgeTE9IjEwNiIgeDI9IjI0NyIgeTI9IjcyIiBzdHJva2U9IiNiNDUzMDkiIHN0cm9rZS13aWR0aD0iMi4yIiBtYXJrZXItZW5kPSJ1cmwoI3cpIi8+PHRleHQgeD0iMjUzIiB5PSI4NCIgZm9udC1zaXplPSIxMyIgZmlsbD0iI2I0NTMwOSIgZm9udC13ZWlnaHQ9ImJvbGQiPmY8L3RleHQ+PHRleHQgeD0iMzMwIiB5PSIxMjAiIGZvbnQtc2l6ZT0iMTEiIGZpbGw9IiM2NDc0OGIiPnYgKGNodXRlKTwvdGV4dD48bGluZSB4MT0iMzUwIiB5MT0iMTA4IiB4Mj0iMzUwIiB5Mj0iMTMyIiBzdHJva2U9IiM2NDc0OGIiIHN0cm9rZS13aWR0aD0iMS40IiBtYXJrZXItZW5kPSJ1cmwoI2YpIi8+PC9zdmc+" alt="schéma" style="width:100%;max-width:470px;display:block;margin:14px auto">

## 2. Équation différentielle du mouvement

En projetant la 2ᵉ loi de Newton sur un axe vertical orienté vers le bas :

\begin{propriete}[Équation différentielle (frottement $f = kv$)]
\[
m\,\frac{\mathrm{d}v}{\mathrm{d}t} = mg - F_A - k\,v
\quad\Longrightarrow\quad
\boxed{\frac{\mathrm{d}v}{\mathrm{d}t} + \frac{k}{m}\,v = g - \frac{F_A}{m}}
\]
\end{propriete}

## 3. La vitesse limite

\begin{definition}[Vitesse limite]
La **vitesse limite** $v_{lim}$ est atteinte lorsque l'**accélération s'annule** ($\dfrac{\mathrm{d}v}{\mathrm{d}t} = 0$) : les forces se compensent. Pour $f = kv$ :
\[
mg = F_A + k\,v_{lim}
\quad\Longrightarrow\quad
\boxed{v_{lim} = \frac{mg - F_A}{k}}
\]
\end{definition}

\begin{propriete}[Deux régimes]
\begin{itemize}
    \item **Régime initial (transitoire)** : la vitesse augmente, l'accélération diminue.
    \item **Régime asymptotique (permanent)** : $v = v_{lim}$, le mouvement est **rectiligne uniforme**.
\end{itemize}
\end{propriete}

<img src="data:image/svg+xml;base64,PHN2ZyB2aWV3Qm94PSIwIDAgNDcwIDIxMCIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiBmb250LWZhbWlseT0ic2Fucy1zZXJpZiI+PGRlZnM+PG1hcmtlciBpZD0iY2EiIG1hcmtlcldpZHRoPSI4IiBtYXJrZXJIZWlnaHQ9IjgiIHJlZlg9IjYiIHJlZlk9IjMiIG9yaWVudD0iYXV0byI+PHBhdGggZD0iTTAsMCBMNiwzIEwwLDYgWiIgZmlsbD0iIzQ3NTU2OSIvPjwvbWFya2VyPjwvZGVmcz48dGV4dCB4PSIyMzUiIHk9IjE2IiB0ZXh0LWFuY2hvcj0ibWlkZGxlIiBmb250LXNpemU9IjE0IiBmb250LXdlaWdodD0iYm9sZCIgZmlsbD0iIzFGNEU3OSI+Vml0ZXNzZSBhdSBjb3VycyBkZSBsYSBjaHV0ZTwvdGV4dD48bGluZSB4MT0iNTUiIHkxPSIxNzUiIHgyPSI0NTAiIHkyPSIxNzUiIHN0cm9rZT0iIzQ3NTU2OSIgc3Ryb2tlLXdpZHRoPSIxLjUiIG1hcmtlci1lbmQ9InVybCgjY2EpIi8+PGxpbmUgeDE9IjU1IiB5MT0iMTc1IiB4Mj0iNTUiIHkyPSIzNSIgc3Ryb2tlPSIjNDc1NTY5IiBzdHJva2Utd2lkdGg9IjEuNSIgbWFya2VyLWVuZD0idXJsKCNjYSkiLz48dGV4dCB4PSI0NCIgeT0iNDQiIGZvbnQtc2l6ZT0iMTIiIGZpbGw9IiM0NzU1NjkiPnY8L3RleHQ+PHRleHQgeD0iNDUyIiB5PSIxOTAiIGZvbnQtc2l6ZT0iMTIiIGZpbGw9IiM0NzU1NjkiPnQ8L3RleHQ+PGxpbmUgeDE9IjU1IiB5MT0iNTUiIHgyPSI0NDUiIHkyPSI1NSIgc3Ryb2tlPSIjY2JkNWUxIiBzdHJva2UtZGFzaGFycmF5PSI0IDMiLz48dGV4dCB4PSI0OCIgeT0iNTkiIHRleHQtYW5jaG9yPSJlbmQiIGZvbnQtc2l6ZT0iMTAiIGZpbGw9IiMzMzQxNTUiPnY8L3RleHQ+PHRleHQgeD0iNDgiIHk9IjY2IiB0ZXh0LWFuY2hvcj0iZW5kIiBmb250LXNpemU9IjgiIGZpbGw9IiMzMzQxNTUiPmxpbTwvdGV4dD48cG9seWxpbmUgcG9pbnRzPSI1NSwxNzUuMCA2MSwxNjQuNCA2NywxNTQuOCA3MywxNDYuMCA3OSwxMzguMCA4NSwxMzAuNiA5MSwxMjQuMCA5NywxMTcuOSAxMDMsMTEyLjMgMTA5LDEwNy4zIDExNSwxMDIuNyAxMjEsOTguNSAxMjcsOTQuNiAxMzMsOTEuMSAxMzksODguMCAxNDUsODUuMSAxNTEsODIuNCAxNTcsODAuMCAxNjMsNzcuOCAxNjksNzUuOCAxNzUsNzMuOSAxODEsNzIuMyAxODcsNzAuNyAxOTMsNjkuNCAxOTksNjguMSAyMDUsNjYuOSAyMTEsNjUuOSAyMTcsNjQuOSAyMjMsNjQuMSAyMjksNjMuMyAyMzUsNjIuNSAyNDEsNjEuOSAyNDcsNjEuMyAyNTMsNjAuNyAyNTksNjAuMiAyNjUsNTkuNyAyNzEsNTkuMyAyNzcsNTguOSAyODMsNTguNiAyODksNTguMyAyOTUsNTguMCAzMDEsNTcuNyAzMDcsNTcuNSAzMTMsNTcuMyAzMTksNTcuMSAzMjUsNTYuOSAzMzEsNTYuNyAzMzcsNTYuNiAzNDMsNTYuNCAzNDksNTYuMyAzNTUsNTYuMiAzNjEsNTYuMSAzNjcsNTYuMCAzNzMsNTUuOSAzNzksNTUuOCAzODUsNTUuNyAzOTEsNTUuNyAzOTcsNTUuNiA0MDMsNTUuNiA0MDksNTUuNSA0MTUsNTUuNSA0MjEsNTUuNCA0MjcsNTUuNCA0MzMsNTUuNCA0MzksNTUuMyIgZmlsbD0ibm9uZSIgc3Ryb2tlPSIjMUY0RTc5IiBzdHJva2Utd2lkdGg9IjIuNSIgc3Ryb2tlLWxpbmVqb2luPSJyb3VuZCIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+PGxpbmUgeDE9IjU1IiB5MT0iMTc1IiB4Mj0iMTIwIiB5Mj0iNTUiIHN0cm9rZT0iIzk0YTNiOCIgc3Ryb2tlLXdpZHRoPSIxIiBzdHJva2UtZGFzaGFycmF5PSI1IDQiLz48dGV4dCB4PSIxMzUiIHk9IjE1MCIgZm9udC1zaXplPSIxMCIgZmlsbD0iIzY0NzQ4YiI+csOpZ2ltZSBpbml0aWFsPC90ZXh0Pjx0ZXh0IHg9IjMwMCIgeT0iNDgiIGZvbnQtc2l6ZT0iMTAiIGZpbGw9IiM2NDc0OGIiPnLDqWdpbWUgYXN5bXB0b3RpcXVlPC90ZXh0Pjwvc3ZnPg==" alt="schéma" style="width:100%;max-width:470px;display:block;margin:14px auto">

## 4. Cas de la chute libre

\begin{definition}[Chute libre]
Une chute est **libre** si le solide n'est soumis qu'à son **poids** (poussée d'Archimède et frottements négligés). Alors :
\[
\frac{\mathrm{d}v}{\mathrm{d}t} = g \quad\Longrightarrow\quad v(t) = g\,t + v_0
\]
Le mouvement est **rectiligne uniformément accéléré** ; il n'y a pas de vitesse limite.
\end{definition}

\begin{methode}[Résolution approchée — méthode d'Euler]
À partir de $a_i = \dfrac{\mathrm{d}v}{\mathrm{d}t}\Big|_{t_i}$, on calcule pas à pas :
\[
v_{i+1} = v_i + a_i\,\Delta t
\]
\end{methode}

## L'essentiel

\begin{propriete}[À retenir]
\begin{itemize}
    \item Forces : poids $mg$, poussée $F_A = \rho_{fluide}Vg$ (vers le haut), frottement $f$ opposé à $\vec{v}$.
    \item Équation : $m\dfrac{\mathrm{d}v}{\mathrm{d}t} = mg - F_A - f$.
    \item Vitesse limite ($a = 0$) : $v_{lim} = \dfrac{mg - F_A}{k}$ (pour $f = kv$).
    \item Chute libre (poids seul) : $a = g$, mouvement uniformément accéléré.
\end{itemize}
\end{propriete}
