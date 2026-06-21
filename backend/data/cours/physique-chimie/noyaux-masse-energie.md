Une réaction nucléaire libère des quantités d'énergie colossales, sans commune mesure avec la chimie. La clé est l'**équivalence entre masse et énergie** découverte par Einstein. Ce chapitre définit le **défaut de masse**, l'**énergie de liaison** et explique la **fission** et la **fusion**.

## 1. Équivalence masse-énergie

\begin{definition}[Relation d'Einstein]
À toute masse $m$ est associée une énergie $E$ :
\[
\boxed{E = m\,c^{2}}
\]
avec $E$ en joules ($\mathrm{J}$), $m$ en $\mathrm{kg}$ et $c \approx 3{,}00\times10^{8}~\mathrm{m\cdot s^{-1}}$.
\end{definition}

\begin{remarque}
En physique nucléaire, on utilise des unités adaptées :
\begin{itemize}
    \item la masse en **unité de masse atomique** : $1~\mathrm{u} = 1{,}66054\times10^{-27}~\mathrm{kg}$ ;
    \item l'énergie en **mégaélectron-volt** : $1~\mathrm{MeV} = 1{,}602\times10^{-13}~\mathrm{J}$.
\end{itemize}
La correspondance pratique est : $\boxed{1~\mathrm{u} \leftrightarrow 931{,}5~\mathrm{MeV}/c^{2}}$.
\end{remarque}

## 2. Défaut de masse et énergie de liaison

\begin{definition}[Défaut de masse]
La masse d'un noyau est **inférieure** à la somme des masses de ses nucléons pris séparément. Cette différence est le **défaut de masse** :
\[
\Delta m = \big(Z\,m_p + N\,m_n\big) - m_{\text{noyau}} \;>\; 0
\]
\end{definition}

\begin{definition}[Énergie de liaison]
L'**énergie de liaison** $E_\ell$ d'un noyau est l'énergie qu'il faut fournir pour **séparer** ses nucléons. Elle correspond, par l'équivalence masse-énergie, au défaut de masse :
\[
\boxed{E_\ell = \Delta m\,c^{2}}
\]
\end{definition}

<img src="data:image/svg+xml;base64,PHN2ZyB2aWV3Qm94PSIwIDAgNDcwIDIwMCIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiBmb250LWZhbWlseT0ic2Fucy1zZXJpZiI+PGRlZnM+PG1hcmtlciBpZD0iZDEiIG1hcmtlcldpZHRoPSI5IiBtYXJrZXJIZWlnaHQ9IjkiIHJlZlg9IjQiIHJlZlk9IjciIG9yaWVudD0iYXV0byI+PHBhdGggZD0iTTAsMCBMNCw3IEw4LDAgWiIgZmlsbD0iIzBmNzY2ZSIvPjwvbWFya2VyPjwvZGVmcz48dGV4dCB4PSIyMzUiIHk9IjE2IiB0ZXh0LWFuY2hvcj0ibWlkZGxlIiBmb250LXNpemU9IjE0IiBmb250LXdlaWdodD0iYm9sZCIgZmlsbD0iIzFGNEU3OSI+w4luZXJnaWUgZGUgbGlhaXNvbiBkdSBub3lhdTwvdGV4dD48Y2lyY2xlIGN4PSIxMjAiIGN5PSI1MiIgcj0iNyIgZmlsbD0iI2RjMjYyNiIvPjxjaXJjbGUgY3g9IjE0NSIgY3k9IjQ2IiByPSI3IiBmaWxsPSIjOTRhM2I4Ii8+PGNpcmNsZSBjeD0iMTcwIiBjeT0iNTQiIHI9IjciIGZpbGw9IiNkYzI2MjYiLz48Y2lyY2xlIGN4PSIxOTUiIGN5PSI0NSIgcj0iNyIgZmlsbD0iIzk0YTNiOCIvPjxjaXJjbGUgY3g9IjIyMCIgY3k9IjUzIiByPSI3IiBmaWxsPSIjZGMyNjI2Ii8+PGxpbmUgeDE9IjEwMCIgeTE9IjY4IiB4Mj0iMzAwIiB5Mj0iNjgiIHN0cm9rZT0iIzMzNDE1NSIgc3Ryb2tlLXdpZHRoPSIyIi8+PHRleHQgeD0iMTAwIiB5PSIzNCIgZm9udC1zaXplPSIxMiIgZmlsbD0iIzMzNDE1NSI+WiBwcm90b25zICsgTiBuZXV0cm9ucyBzw6lwYXLDqXM8L3RleHQ+PHRleHQgeD0iMzA1IiB5PSI2MCIgZm9udC1zaXplPSIxMSIgZmlsbD0iIzY0NzQ4YiI+bWFzc2UgcGx1cyBncmFuZGU8L3RleHQ+PGc+PGNpcmNsZSBjeD0iMTUwIiBjeT0iMTUwIiByPSI3IiBmaWxsPSIjZGMyNjI2Ii8+PGNpcmNsZSBjeD0iMTY2IiBjeT0iMTQ2IiByPSI3IiBmaWxsPSIjOTRhM2I4Ii8+PGNpcmNsZSBjeD0iMTU4IiBjeT0iMTYwIiByPSI3IiBmaWxsPSIjZGMyNjI2Ii8+PGNpcmNsZSBjeD0iMTc0IiBjeT0iMTU4IiByPSI3IiBmaWxsPSIjOTRhM2I4Ii8+PGNpcmNsZSBjeD0iMTY2IiBjeT0iMTcwIiByPSI3IiBmaWxsPSIjZGMyNjI2Ii8+PC9nPjxsaW5lIHgxPSIxMDAiIHkxPSIxNTAiIHgyPSIzMDAiIHkyPSIxNTAiIHN0cm9rZT0iIzMzNDE1NSIgc3Ryb2tlLXdpZHRoPSIyIi8+PHRleHQgeD0iMjA1IiB5PSIxOTUiIGZvbnQtc2l6ZT0iMTIiIGZpbGw9IiMzMzQxNTUiPm5veWF1IGxpw6kgKG1hc3NlIHBsdXMgcGV0aXRlKTwvdGV4dD48bGluZSB4MT0iMzAwIiB5MT0iNjgiIHgyPSIzMDAiIHkyPSIxNTAiIHN0cm9rZT0iIzBmNzY2ZSIgc3Ryb2tlLXdpZHRoPSIxLjgiIG1hcmtlci1lbmQ9InVybCgjZDEpIi8+PHRleHQgeD0iMzEyIiB5PSIxMTUiIGZvbnQtc2l6ZT0iMTMiIGZpbGw9IiMwZjc2NmUiIGZvbnQtd2VpZ2h0PSJib2xkIj5FJiM4NDY3OyA9ICYjOTE2O20mIzE4MztjJiMxNzg7PC90ZXh0Pjwvc3ZnPgo=" alt="schéma" style="width:100%;max-width:470px;display:block;margin:14px auto">

\begin{definition}[Énergie de liaison par nucléon]
La grandeur $\dfrac{E_\ell}{A}$ mesure la **stabilité** d'un noyau : **plus elle est grande, plus le noyau est stable**. La courbe d'Aston représente $\dfrac{E_\ell}{A}$ en fonction de $A$.
\end{definition}

<img src="data:image/svg+xml;base64,PHN2ZyB2aWV3Qm94PSIwIDAgNDcwIDIxNSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiBmb250LWZhbWlseT0ic2Fucy1zZXJpZiI+PGRlZnM+PG1hcmtlciBpZD0iYXIiIG1hcmtlcldpZHRoPSI4IiBtYXJrZXJIZWlnaHQ9IjgiIHJlZlg9IjYiIHJlZlk9IjMiIG9yaWVudD0iYXV0byI+PHBhdGggZD0iTTAsMCBMNiwzIEwwLDYgWiIgZmlsbD0iIzQ3NTU2OSIvPjwvbWFya2VyPjxtYXJrZXIgaWQ9ImZ1IiBtYXJrZXJXaWR0aD0iOCIgbWFya2VySGVpZ2h0PSI4IiByZWZYPSI2IiByZWZZPSIzIiBvcmllbnQ9ImF1dG8iPjxwYXRoIGQ9Ik0wLDAgTDYsMyBMMCw2IFoiIGZpbGw9IiMwZjc2NmUiLz48L21hcmtlcj48bWFya2VyIGlkPSJmaSIgbWFya2VyV2lkdGg9IjgiIG1hcmtlckhlaWdodD0iOCIgcmVmWD0iNiIgcmVmWT0iMyIgb3JpZW50PSJhdXRvIj48cGF0aCBkPSJNMCwwIEw2LDMgTDAsNiBaIiBmaWxsPSIjYjQ1MzA5Ii8+PC9tYXJrZXI+PC9kZWZzPjx0ZXh0IHg9IjIzNSIgeT0iMTUiIHRleHQtYW5jaG9yPSJtaWRkbGUiIGZvbnQtc2l6ZT0iMTMiIGZvbnQtd2VpZ2h0PSJib2xkIiBmaWxsPSIjMUY0RTc5Ij5Db3VyYmUgZCdBc3RvbiA6IMOpbmVyZ2llIGRlIGxpYWlzb24gcGFyIG51Y2zDqW9uPC90ZXh0PjxsaW5lIHgxPSI1MCIgeTE9IjE3NSIgeDI9IjQ1MCIgeTI9IjE3NSIgc3Ryb2tlPSIjNDc1NTY5IiBzdHJva2Utd2lkdGg9IjEuNSIgbWFya2VyLWVuZD0idXJsKCNhcikiLz48bGluZSB4MT0iNTAiIHkxPSIxNzUiIHgyPSI1MCIgeTI9IjM1IiBzdHJva2U9IiM0NzU1NjkiIHN0cm9rZS13aWR0aD0iMS41IiBtYXJrZXItZW5kPSJ1cmwoI2FyKSIvPjx0ZXh0IHg9IjU1IiB5PSI0NSIgZm9udC1zaXplPSIxMSIgZmlsbD0iIzQ3NTU2OSI+RSYjODQ2NzsvQSAoTWVWL251Y2zDqW9uKTwvdGV4dD48dGV4dCB4PSI0NTIiIHk9IjE5MCIgZm9udC1zaXplPSIxMiIgZmlsbD0iIzQ3NTU2OSI+QTwvdGV4dD48cG9seWxpbmUgcG9pbnRzPSI1NCwxNjAgNjIsOTAgNzYsNzIgOTYsNjQgMTUwLDUyIDI0NSw1NyAzNDAsNjQgNDMyLDcwIiBmaWxsPSJub25lIiBzdHJva2U9IiMxRjRFNzkiIHN0cm9rZS13aWR0aD0iMi41Ii8+PGNpcmNsZSBjeD0iMTUwIiBjeT0iNTIiIHI9IjMuNSIgZmlsbD0iI2RjMjYyNiIvPjx0ZXh0IHg9IjE1MCIgeT0iNDQiIHRleHQtYW5jaG9yPSJtaWRkbGUiIGZvbnQtc2l6ZT0iMTAiIGZpbGw9IiNkYzI2MjYiIGZvbnQtd2VpZ2h0PSJib2xkIj4mIzgzMTI7JiM4MzEwO0ZlICh+OCw4KTwvdGV4dD48bGluZSB4MT0iNzAiIHkxPSIxMjAiIHgyPSIxMjAiIHkyPSI3MiIgc3Ryb2tlPSIjMGY3NjZlIiBzdHJva2Utd2lkdGg9IjEuNiIgbWFya2VyLWVuZD0idXJsKCNmdSkiLz48dGV4dCB4PSI2MiIgeT0iMTM1IiBmb250LXNpemU9IjExIiBmaWxsPSIjMGY3NjZlIiBmb250LXdlaWdodD0iYm9sZCI+ZnVzaW9uPC90ZXh0PjxsaW5lIHgxPSIzNjAiIHkxPSI5NSIgeDI9IjIwMCIgeTI9IjU4IiBzdHJva2U9IiNiNDUzMDkiIHN0cm9rZS13aWR0aD0iMS42IiBtYXJrZXItZW5kPSJ1cmwoI2ZpKSIvPjx0ZXh0IHg9IjM2MCIgeT0iMTEwIiBmb250LXNpemU9IjExIiBmaWxsPSIjYjQ1MzA5IiBmb250LXdlaWdodD0iYm9sZCI+Zmlzc2lvbjwvdGV4dD48L3N2Zz4K" alt="schéma" style="width:100%;max-width:470px;display:block;margin:14px auto">

\begin{remarque}
Les noyaux les plus stables ont une énergie de liaison par nucléon maximale (environ $8{,}8~\mathrm{MeV/nucléon}$), pour $A \approx 60$ (fer, nickel).
\end{remarque}

## 3. Fission et fusion

\begin{definition}[Fission nucléaire]
La **fission** est la division d'un **noyau lourd** (ex. : uranium) en deux noyaux plus légers, sous l'impact d'un neutron, avec libération d'énergie et de neutrons.
\end{definition}

\begin{definition}[Fusion nucléaire]
La **fusion** est l'union de deux **noyaux légers** (ex. : isotopes de l'hydrogène) en un noyau plus lourd, avec libération d'énergie. C'est la source d'énergie des étoiles.
\end{definition}

\begin{propriete}[Énergie libérée par une réaction]
Une réaction nucléaire libère de l'énergie si la masse **diminue**. L'énergie libérée vaut :
\[
\boxed{E_{lib} = |\Delta m|\,c^{2}} \quad\text{avec}\quad \Delta m = m_{\text{produits}} - m_{\text{réactifs}}
\]
Fission et fusion font passer vers des noyaux de **plus grande** énergie de liaison par nucléon (plus stables).
\end{propriete}

\begin{methode}[Calculer l'énergie libérée]
1. Calculer $\Delta m = m_{\text{produits}} - m_{\text{réactifs}}$ (en u ou en kg).
2. Multiplier par $c^{2}$ : $E = |\Delta m|\,c^{2}$ (ou utiliser $1~\mathrm{u} \to 931{,}5~\mathrm{MeV}$).
\end{methode}

## L'essentiel

\begin{propriete}[À retenir]
\begin{itemize}
    \item Équivalence masse-énergie : $E = m\,c^{2}$ ; $1~\mathrm{u} \leftrightarrow 931{,}5~\mathrm{MeV}/c^{2}$.
    \item Défaut de masse : $\Delta m = (Z m_p + N m_n) - m_{\text{noyau}} > 0$.
    \item Énergie de liaison : $E_\ell = \Delta m\,c^{2}$ ; stabilité $\propto \dfrac{E_\ell}{A}$ (max vers $A\approx 60$).
    \item Énergie libérée : $E_{lib} = |\Delta m|\,c^{2}$ (fission des noyaux lourds, fusion des noyaux légers).
\end{itemize}
\end{propriete}
