### Problème 1 : Dimensionnement d'un chauffe-eau
\begin{enonce}
Un chauffe-eau électrique de puissance $P = 2000\,\text{W}$ doit porter $V = 50\,\text{L}$ d'eau de $\theta_i = 15\,^\circ\text{C}$ à $\theta_f = 65\,^\circ\text{C}$.
Données : masse volumique de l'eau $\rho = 1{,}0\,\text{kg}\cdot\text{L}^{-1}$ ; $c_{\text{eau}} = 4185\,\text{J}\cdot\text{kg}^{-1}\cdot\text{K}^{-1}$.
\begin{enumerate}
    \item Déterminer la masse $m$ d'eau à chauffer.
    \item Calculer l'énergie thermique $Q$ nécessaire.
    \item En supposant qu'il n'y a aucune perte, calculer la durée $t$ du chauffage. L'exprimer en minutes.
    \item En réalité, à cause des pertes, le rendement vaut $\eta = 0{,}80$. Calculer la durée réelle $t'$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item $m = \rho\,V = 1{,}0 \times 50 = 50\,\text{kg}$.
    \item $\Delta T = 65 - 15 = 50\,\text{K}$, donc
$$ Q = m\,c_{\text{eau}}\,\Delta T = 50 \times 4185 \times 50 = 1{,}046\times 10^{7}\,\text{J} \approx 10{,}5\,\text{MJ}. $$
    \item Sans perte, toute la puissance sert à chauffer : $Q = P\,t$, donc
$$ t = \frac{Q}{P} = \frac{1{,}046\times 10^{7}}{2000} = 5231\,\text{s} \approx 87\,\text{min} \approx 1\,\text{h}\,27\,\text{min}. $$
    \item Avec pertes, l'énergie réellement fournie est $Q/\eta$, donc $\eta\,P\,t' = Q$ :
$$ t' = \frac{Q}{\eta\,P} = \frac{1{,}046\times 10^{7}}{0{,}80 \times 2000} = 6539\,\text{s} \approx 109\,\text{min} \approx 1\,\text{h}\,49\,\text{min}. $$
Les pertes rallongent le chauffage d'environ $22$ minutes.
\end{enumerate}

### Problème 2 : Des glaçons dans une boisson
\begin{enonce}
On verse $m_e = 0{,}30\,\text{kg}$ d'eau à $\theta_e = 25\,^\circ\text{C}$ dans un verre (calorimètre supposé parfait, capacité négligeable). On y ajoute $m_g = 0{,}040\,\text{kg}$ de glace à $0\,^\circ\text{C}$.
Données : $L_{\text{f}} = 3{,}34\times 10^{5}\,\text{J}\cdot\text{kg}^{-1}$ ; $c_{\text{eau}} = 4185\,\text{J}\cdot\text{kg}^{-1}\cdot\text{K}^{-1}$.
\begin{enumerate}
    \item Par quel(s) mode(s) de transfert la glace refroidit-elle la boisson ?
    \item Calculer l'énergie $Q_{\text{f}}$ nécessaire pour faire fondre toute la glace, et l'énergie maximale que peut céder l'eau en se refroidissant jusqu'à $0\,^\circ\text{C}$. La glace fond-elle entièrement ?
    \item Établir le bilan $\sum Q = 0$ et calculer la température finale $\theta_f$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Essentiellement par **conduction** (contact glace/eau) et **convection** (mouvements du liquide refroidi qui descend). La glace prélève de l'énergie à l'eau pour fondre puis pour se réchauffer.
    \item Fusion totale : $Q_{\text{f}} = m_g L_{\text{f}} = 0{,}040 \times 3{,}34\times 10^{5} = 1{,}34\times 10^{4}\,\text{J}$.
Énergie maximale cédée par l'eau en passant de $25\,^\circ\text{C}$ à $0\,^\circ\text{C}$ :
$$ Q_{\max} = m_e c_{\text{eau}} (25-0) = 0{,}30 \times 4185 \times 25 = 3{,}14\times 10^{4}\,\text{J}. $$
Comme $Q_{\max} = 3{,}14\times 10^{4}\,\text{J} > Q_{\text{f}} = 1{,}34\times 10^{4}\,\text{J}$, l'eau peut fournir l'énergie de fusion : **toute la glace fond**.
    \item Le système est isolé. La glace fond ($+m_g L_{\text{f}}$), puis l'eau de fonte ($0\,^\circ\text{C}$) se réchauffe jusqu'à $\theta_f$, pendant que l'eau initiale se refroidit :
$$ m_g L_{\text{f}} + m_g c_{\text{eau}}(\theta_f - 0) + m_e c_{\text{eau}}(\theta_f - 25) = 0. $$
Numériquement : $1{,}34\times 10^{4} + 167{,}4\,\theta_f + 1255{,}5(\theta_f - 25) = 0$, soit
$$ 1422{,}9\,\theta_f = 31388 - 13360 = 18028 \;\Rightarrow\; \theta_f \approx 12{,}7\,^\circ\text{C}. $$
La boisson se stabilise vers $13\,^\circ\text{C}$.
\end{enumerate}

### Problème 3 : Mesure de la capacité thermique d'un métal
\begin{enonce}
Pour déterminer la capacité thermique massique $c_{\text{m}}$ d'un métal, on chauffe un bloc de masse $m = 0{,}150\,\text{kg}$ dans de l'eau bouillante : il atteint $\theta_1 = 100\,^\circ\text{C}$. On le plonge rapidement dans un calorimètre contenant $m_e = 0{,}250\,\text{kg}$ d'eau à $\theta_2 = 16\,^\circ\text{C}$. La valeur en eau du calorimètre est $\mu = 0{,}021\,\text{kg}$. À l'équilibre, on lit $\theta_f = 20\,^\circ\text{C}$.
Donnée : $c_{\text{eau}} = 4185\,\text{J}\cdot\text{kg}^{-1}\cdot\text{K}^{-1}$.
\begin{enumerate}
    \item Pourquoi chauffe-t-on le bloc dans l'eau bouillante avant de connaître sa température initiale ?
    \item Écrire le bilan thermique $\sum Q = 0$ du système {bloc + eau + calorimètre}.
    \item En déduire $c_{\text{m}}$. À quel métal usuel cette valeur correspond-elle ?
    \item Si l'on avait négligé la valeur en eau $\mu$, la valeur trouvée pour $c_{\text{m}}$ serait-elle surestimée ou sous-estimée ?
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item L'eau bouillante (sous pression atmosphérique normale) reste à $100\,^\circ\text{C}$ pendant l'ébullition : on connaît ainsi avec certitude la température initiale du bloc, $\theta_1 = 100\,^\circ\text{C}$.
    \item Le bloc cède de l'énergie ; l'eau et le calorimètre (à $\theta_2$, valeur en eau $\mu$) en reçoivent. Système isolé :
$$ m\,c_{\text{m}}(\theta_f - \theta_1) + (m_e + \mu)\,c_{\text{eau}}(\theta_f - \theta_2) = 0. $$
    \item On isole $c_{\text{m}}$ :
$$ c_{\text{m}} = \frac{(m_e + \mu)\,c_{\text{eau}}(\theta_f - \theta_2)}{m(\theta_1 - \theta_f)} = \frac{(0{,}250 + 0{,}021)\times 4185 \times (20-16)}{0{,}150 \times (100-20)}. $$
Numérateur : $0{,}271 \times 4185 \times 4 = 4{,}54\times 10^{3}\,\text{J}$ ; dénominateur : $0{,}150 \times 80 = 12{,}0\,\text{kg}\cdot\text{K}$. D'où
$$ c_{\text{m}} = \frac{4{,}54\times 10^{3}}{12{,}0} \approx 378\,\text{J}\cdot\text{kg}^{-1}\cdot\text{K}^{-1}. $$
Cette valeur est très proche de celle du **cuivre** ($c_{\text{Cu}} \approx 385\,\text{J}\cdot\text{kg}^{-1}\cdot\text{K}^{-1}$).
    \item En négligeant $\mu$, on remplace $(m_e+\mu)$ par $m_e$, plus petit : le numérateur diminue, donc $c_{\text{m}}$ serait **sous-estimée**. Tenir compte de $\mu$ corrige cette erreur systématique.
\end{enumerate}
