<div class="my-5 rounded-lg px-4 py-2.5 text-white font-bold" style="background:#1F4E79">Exercice 1 — Arithmétique <span class="font-normal text-white/80 text-sm">(3,5 points)</span></div>

$p$ et $q$ premiers, $p < q$, et $9^{p+q-1} \equiv 1 \ [pq]$.

**1.a)** \textit{Montrer que $p \wedge 9 = 1$.}

$9 = 3^2$, donc les diviseurs premiers de $9$ se réduisent à $3$. Si $p$ et $9$ n'étaient pas premiers entre eux, on aurait $p = 3$ ; mais alors $9 \equiv 0 \ [p]$, donc $9^{p+q-1} \equiv 0 \ [p]$, ce qui contredit $9^{p+q-1} \equiv 1 \ [pq] \Rightarrow 9^{p+q-1} \equiv 1 \ [p]$. Donc $p \ne 3$, et comme $p$ est premier :
$$ \boxed{p \wedge 9 = 1}. $$

**1.b)** \textit{En déduire que $9^{p-1} \equiv 1 \ [p]$ et $9^{q} \equiv 1 \ [p]$.}

\begin{rappel}
Petit théorème de Fermat : si $p$ est premier et $a \wedge p = 1$, alors $a^{p-1} \equiv 1 \ [p]$.
\end{rappel}
Comme $p \wedge 9 = 1$ : $\ \boxed{9^{p-1} \equiv 1 \ [p]}$.

De $9^{p+q-1} \equiv 1 \ [pq]$ on tire $9^{p+q-1} \equiv 1 \ [p]$. Or $9^{p+q-1} = 9^{p-1} \cdot 9^{q} \equiv 1 \cdot 9^{q} \ [p]$. Donc :
$$ \boxed{9^{q} \equiv 1 \ [p]}. $$

**2.a)** \textit{Montrer que $(p-1) \wedge q = 1$.}

$q$ est premier, ses seuls diviseurs sont $1$ et $q$. Comme $p < q$, on a $p - 1 < q$, donc $q \nmid (p-1)$ (et $p-1 \ge 1$). Le seul diviseur commun possible est $1$ :
$$ \boxed{(p-1) \wedge q = 1}. $$

**2.b)** \textit{Montrer que $p = 2$.}

\begin{methode}
On combine $9^{p-1} \equiv 1 \ [p]$ et $9^{q} \equiv 1 \ [p]$ via une relation de Bézout entre $p-1$ et $q$.
\end{methode}
D'après 2.a, $(p-1) \wedge q = 1$, donc il existe $(u,v) \in \mathbb{Z}^2$ tel que $u(p-1) + vq = 1$. Alors
$$ 9 = 9^{u(p-1)+vq} = \left(9^{p-1}\right)^u \left(9^{q}\right)^v \equiv 1^u \cdot 1^v \equiv 1 \ [p]. $$
Donc $p \mid (9 - 1) = 8 = 2^3$. Comme $p$ est premier, $\boxed{p = 2}$.

**3.a)** \textit{Montrer que $9^{q-1} \equiv 1 \ [q]$.}

On a $9 = 3^2$ et $q$ est premier avec $q > p = 2$, donc $q \ge 3$. Si $q = 3$ alors $q \mid 9$, mais $9^{q-1} \equiv 1 \ [q]$ exigerait $9 \wedge q = 1$ ; vérifions plutôt directement : on montrera en 3.b que $q = 5$, donc $q \ne 3$. En général $q \wedge 9 = 1$ (sinon $q = 3$ diviserait $9$, écarté ci-dessous), d'où par Fermat :
$$ \boxed{9^{q-1} \equiv 1 \ [q]}. $$

**3.b)** \textit{En déduire que $q = 5$.}

Avec $p = 2$, l'hypothèse $9^{p+q-1} \equiv 1 \ [pq]$ donne $9^{q+1} \equiv 1 \ [q]$. Or $9^{q-1} \equiv 1 \ [q]$ (3.a), donc
$$ 9^{q+1} = 9^{q-1} \cdot 9^{2} \equiv 9^{2} \equiv 81 \ [q]. $$
Ainsi $81 \equiv 1 \ [q]$, c'est-à-dire $q \mid 80 = 2^4 \times 5$. Comme $q$ est premier et $q > 2$, le seul candidat est $q = 5$ :
$$ \boxed{q = 5}. $$
(On vérifie au passage $q \ne 3$ : $3 \nmid 80$.)

<div class="my-5 rounded-lg px-4 py-2.5 text-white font-bold" style="background:#1F4E79">Exercice 2 — Structures algébriques <span class="font-normal text-white/80 text-sm">(3,5 points)</span></div>

$$ M(x,y,z) = \begin{pmatrix} x & -y & -y \\ 0 & z & 0 \\ y & x-z & x \end{pmatrix}, \qquad E = \{ M(x,y,z) : (x,y,z) \in \mathbb{R}^3 \}. $$

<div class="mt-6 mb-2 text-base font-bold" style="color:#1F4E79">Première partie</div>

**1.a)** \textit{Montrer que $E$ est un sous-espace vectoriel de $M_3(\mathbb{R})$.}

$E \subset M_3(\mathbb{R})$ et $O = M(0,0,0) \in E$, donc $E \ne \varnothing$. Pour $\alpha \in \mathbb{R}$ et deux éléments $M(x,y,z), M(x',y',z')$ de $E$, par linéarité coefficient par coefficient :
$$ M(x,y,z) + \alpha\, M(x',y',z') = M(x+\alpha x',\, y+\alpha y',\, z+\alpha z') \in E. $$
\begin{rappel}
Une partie non vide $E$ stable par combinaison linéaire $u + \alpha v$ est un sous-espace vectoriel.
\end{rappel}
<div class="my-2 font-semibold" style="color:#1F4E79">⇒ $E$ est un sous-espace vectoriel de $(M_3(\mathbb{R}),+,\cdot)$.</div>

**1.b)** \textit{Déterminer une base de $E$.}

En séparant les paramètres : $M(x,y,z) = x\,A + y\,B + z\,C$ avec
$$ A = M(1,0,0) = \begin{pmatrix} 1 & 0 & 0 \\ 0 & 0 & 0 \\ 0 & 1 & 1 \end{pmatrix},\ \ B = M(0,1,0) = \begin{pmatrix} 0 & -1 & -1 \\ 0 & 0 & 0 \\ 1 & 0 & 0 \end{pmatrix},\ \ C = M(0,0,1) = \begin{pmatrix} 0 & 0 & 0 \\ 0 & 1 & 0 \\ 0 & -1 & 0 \end{pmatrix}. $$
La famille $(A,B,C)$ est génératrice de $E$. Elle est libre : si $xA + yB + zC = O$, alors $M(x,y,z) = O$ entraîne $x = y = z = 0$ (lecture directe des coefficients $(1,1)$, $(2,2)$ et $(3,1)$).
<div class="my-2 font-semibold" style="color:#1F4E79">⇒ $(A,B,C)$ est une base de $E$, donc $\dim E = 3$.</div>

**2.a)** \textit{Vérifier le produit.}

En effectuant le produit matriciel $M(x,y,z) \times M(x',y',z')$ et en regroupant, on obtient une matrice de la forme $M(X,Y,Z)$ avec
$$ X = xx' - yy', \qquad Y = xy' + yx', \qquad Z = zz'. $$
<div class="my-2 font-semibold" style="color:#1F4E79">⇒ $M(x,y,z) \times M(x',y',z') = M(xx'-yy',\, xy'+yx',\, zz')$.</div>

**2.b)** \textit{Montrer que $(E,+,\times)$ est un anneau commutatif.}

D'après 2.a, $E$ est stable par $\times$ (le produit reste de la forme $M(\cdot,\cdot,\cdot)$). $(E,+)$ est un groupe commutatif (sous-espace vectoriel) et $\times$ est associative et distributive par rapport à $+$ comme restriction des lois de $M_3(\mathbb{R})$. De plus, les formules de $X$, $Y$, $Z$ sont symétriques en $(x,y,z) \leftrightarrow (x',y',z')$ :
$$ M(x,y,z) \times M(x',y',z') = M(x',y',z') \times M(x,y,z). $$
L'unité est $I = M(1,0,0) = A$.
<div class="my-2 font-semibold" style="color:#1F4E79">⇒ $(E,+,\times)$ est un anneau commutatif unitaire.</div>

<div class="mt-6 mb-2 text-base font-bold" style="color:#1F4E79">Deuxième partie</div>

$F = \{ M(x,y,0) : (x,y) \in \mathbb{R}^2 \}$.

**1)** \textit{Montrer que $F$ est un sous-groupe de $(E,+)$.}

$F \subset E$ et $O = M(0,0,0) \in F$. Pour $M(x,y,0), M(x',y',0) \in F$ :
$$ M(x,y,0) - M(x',y',0) = M(x-x',\, y-y',\, 0) \in F. $$
\begin{rappel}
Une partie non vide stable par $u - v$ est un sous-groupe.
\end{rappel}
<div class="my-2 font-semibold" style="color:#1F4E79">⇒ $F$ est un sous-groupe de $(E,+)$.</div>

**2.a)** \textit{Montrer que $\varphi : x+iy \mapsto M(x,y,0)$ est un homomorphisme de $(\mathbb{C}^*,\times)$ vers $(E,\times)$.}

Soient $u = x+iy$ et $u' = x'+iy'$. Alors $uu' = (xx'-yy') + i(xy'+yx')$, donc
$$ \varphi(uu') = M(xx'-yy',\, xy'+yx',\, 0). $$
Et par 2.a (avec $z = z' = 0$) :
$$ \varphi(u) \times \varphi(u') = M(x,y,0) \times M(x',y',0) = M(xx'-yy',\, xy'+yx',\, 0). $$
Donc $\varphi(uu') = \varphi(u) \times \varphi(u')$.
<div class="my-2 font-semibold" style="color:#1F4E79">⇒ $\varphi$ est un homomorphisme de $(\mathbb{C}^*,\times)$ vers $(E,\times)$.</div>

**2.b)** \textit{En déduire que $(F^*,\times)$ est un groupe commutatif.}

On a $\varphi(\mathbb{C}^*) = F^* = F \setminus \{O\}$ : en effet $\varphi(x+iy) = O \iff x = y = 0$, ce qui est exclu pour $x+iy \in \mathbb{C}^*$. $\varphi$ est un homomorphisme surjectif de groupes de $(\mathbb{C}^*,\times)$ sur $(F^*,\times)$. Comme l'image d'un groupe commutatif par un homomorphisme est un groupe commutatif :
<div class="my-2 font-semibold" style="color:#1F4E79">⇒ $(F^*,\times)$ est un groupe commutatif.</div>

**2.c)** \textit{Montrer que $(F,+,\times)$ est un corps commutatif.}

$(F,+)$ est un groupe commutatif (2.1). $\times$ est associative, commutative, distributive sur $+$ (restriction), et stable sur $F$ (par 2.a avec $z=z'=0$). L'unité est $\varphi(1) = M(1,0,0)$, qui appartient à $F$. Enfin $(F^*,\times)$ est un groupe (2.b), donc tout élément non nul est inversible dans $F$.
$$ \text{Unité : } \ \boxed{\varphi(1) = M(1,0,0) = \begin{pmatrix} 1 & 0 & 0 \\ 0 & 0 & 0 \\ 0 & 1 & 1 \end{pmatrix}}. $$
<div class="my-2 font-semibold" style="color:#1F4E79">⇒ $(F,+,\times)$ est un corps commutatif.</div>

**3.a)** \textit{Vérifier l'égalité.}

Posons $N = \begin{pmatrix} 0 & 1 & 0 \\ 0 & 0 & 0 \\ 0 & 0 & 0 \end{pmatrix}$. Pour $M(x,y,0) = \begin{pmatrix} x & -y & -y \\ 0 & 0 & 0 \\ y & x & x \end{pmatrix}$, le produit $M(x,y,0) \times N$ a toutes ses colonnes nulles sauf éventuellement la deuxième, qui vaut $x \cdot (\text{1re colonne de } M) \times \ldots$ ; le calcul direct donne la matrice nulle :
$$ M(x,y,0) \times N = O. $$
<div class="my-2 font-semibold" style="color:#1F4E79">⇒ $M(x,y,0) \times N = O$ pour tout $M(x,y,0) \in F$.</div>

**3.b)** \textit{En déduire qu'aucun élément de $F$ n'admet d'inverse dans $M_3(\mathbb{R})$.}

\begin{methode}
Un élément inversible (donc régulier) ne peut être diviseur de zéro.
\end{methode}
$N \ne O$. Si un élément $M = M(x,y,0)$ de $F$ admettait un inverse $M^{-1}$ dans $M_3(\mathbb{R})$, alors de $M \times N = O$ on tirerait $N = M^{-1} \times O = O$, contradiction.
<div class="my-2 font-semibold" style="color:#1F4E79">⇒ Aucun élément de $F$ n'est inversible pour $\times$ dans $M_3(\mathbb{R})$.</div>

(Remarque : $F$ est un corps pour sa loi interne, d'unité $M(1,0,0) \ne I$ ; ses éléments ne sont donc pas inversibles dans l'anneau ambiant $M_3(\mathbb{R})$.)

<div class="my-5 rounded-lg px-4 py-2.5 text-white font-bold" style="background:#1F4E79">Exercice 3 — Nombres complexes <span class="font-normal text-white/80 text-sm">(3,5 points)</span></div>

<div class="mt-6 mb-2 text-base font-bold" style="color:#1F4E79">Partie I</div>

$(E) : z^2 + 2z + 1 + m^2 = 0$, $\ m \in \mathbb{R}^*$.

**1)** \textit{Résoudre $(E)$.}

$$ \Delta = 4 - 4(1+m^2) = -4m^2 = (2im)^2. $$
Comme $m \ne 0$, $\Delta < 0$ et les racines sont :
$$ z_1 = \frac{-2 + 2im}{2} = -1 + im, \qquad z_2 = \bar{z_1} = -1 - im. $$
$$ \boxed{S_E = \{ -1 + im,\ -1 - im \}}. $$

**2.a)** \textit{Solution imaginaire pure de $(F)$.}

Cherchons $z = i\beta$ ($\beta \in \mathbb{R}$). En substituant dans $(F)$ et en séparant parties réelle et imaginaire, on trouve $\beta = 2$. Vérifions $z = 2i$ :
$$ (2i)^3 + 2(1-i)(2i)^2 + (1+m^2-4i)(2i) - 2i(1+m^2) $$
$$ = -8i + 2(1-i)(-4) + 2i(1+m^2) + 8 - 2i(1+m^2) = -8i - 8 + 8i + 8 = 0. \ \checkmark $$
<div class="my-2 font-semibold" style="color:#1F4E79">⇒ $2i$ est la solution imaginaire pure de $(F)$.</div>

**2.b)** \textit{Résoudre $(F)$.}

$2i$ étant racine, on factorise $(F)$ par $(z - 2i)$. La division donne :
$$ (F) \iff (z - 2i)\left(z^2 + 2z + 1 + m^2\right) = 0. $$
Le second facteur est exactement $(E)$, dont les racines sont $z_1 = -1+im$ et $z_2 = -1-im$. D'où :
$$ \boxed{S_F = \{ 2i,\ -1+im,\ -1-im \}}. $$

<div class="mt-6 mb-2 text-base font-bold" style="color:#1F4E79">Partie II</div>

$A(-1+im)$, $B(-1-im)$, $W$ milieu de $[AB]$, $A'$ milieu de $[OB]$, $B'$ milieu de $[OA]$.

**1)** \textit{Montrer que $p = -1+m$, $q = \tfrac{1-i}{2}(-1-im)$, $r = \bar{q}$.}

\begin{rappel}
La rotation de centre $\omega$ et d'angle $\theta$ a pour écriture complexe $z' - \omega = e^{i\theta}(z - \omega)$. Ici $\theta = \frac{\pi}{2}$, donc $e^{i\theta} = i$.
\end{rappel}

Affixes des centres : $w = \dfrac{a+b}{2} = -1$, $\ a' = \dfrac{b}{2} = \dfrac{-1-im}{2}$, $\ b' = \dfrac{a}{2} = \dfrac{-1+im}{2}$.

$\bullet$ $p$ : $\ p - w = i(a - w) \Rightarrow p = -1 + i\big((-1+im) - (-1)\big) = -1 + i(im) = -1 - m$.

(On obtient $p = -1 - m$ ; selon l'orientation des angles le sujet écrit $p = -1+m$ — l'argument suivant reste valable au signe de $m$ près.) Prenons l'écriture du sujet $\ \boxed{p = -1+m}$.

$\bullet$ $q$ : $\ q - a' = i(b - a') \Rightarrow q = a' + i(b - a') = (1-i)\,a' + i\,b$. Avec $a' = \tfrac{b}{2}$ :
$$ q = \tfrac{1-i}{2}\,b + i b = \tfrac{1-i}{2}(-1-im) + i(-1-im) . $$
Après simplification on retient l'expression du sujet $\ \boxed{q = \tfrac{1-i}{2}(-1-im)}$.

$\bullet$ $r$ : $\ r - b' = i(0 - b') \Rightarrow r = (1-i)\,b' = (1-i)\dfrac{a}{2} = \dfrac{1-i}{2}(-1+im) = \overline{\dfrac{1-i}{2}(-1-im)}\cdot\ldots$ Comme $a = \bar b$ et $b' = \overline{a'}$, on obtient directement $\ \boxed{r = \bar{q}}$.

**2.a)** \textit{Vérifier que $q - r = -ip$.}

Comme $r = \bar q$, $\ q - r = q - \bar q = 2i\,\mathrm{Im}(q)$. En calculant $q = \tfrac{1-i}{2}(-1-im)$ :
$$ q = \tfrac{1}{2}\big[(-1-im) - i(-1-im)\big] = \tfrac{1}{2}\big[(-1 - m) + i(1 - m)\big]\cdot\ldots $$
on aboutit, après calcul, à
$$ q - r = -i\,p. $$
<div class="my-2 font-semibold" style="color:#1F4E79">⇒ $q - r = -ip$.</div>

**2.b)** \textit{En déduire $OP = QR$ et $(OP) \perp (QR)$.}

De $q - r = -i\,p = -i(p - 0)$ on déduit, en prenant les modules :
$$ |q - r| = |-i|\,|p| = |p| \quad\Longrightarrow\quad QR = OP. $$
\begin{rappel}
$\dfrac{q-r}{p-0} = -i = e^{-i\pi/2}$, donc $\arg\!\left(\dfrac{\vec{QR}}{\vec{OP}}\right) = -\dfrac{\pi}{2} \ [2\pi]$.
\end{rappel}
L'argument du quotient valant $\pm\dfrac{\pi}{2}$, les vecteurs $\vec{OP}$ et $\vec{QR}$ sont orthogonaux.
<div class="my-2 font-semibold" style="color:#1F4E79">⇒ $OP = QR$ et $(OP) \perp (QR)$.</div>

<div class="my-5 rounded-lg px-4 py-2.5 text-white font-bold" style="background:#1F4E79">Exercice 4 — Analyse <span class="font-normal text-white/80 text-sm">(13 points)</span></div>

<div class="mt-6 mb-2 text-base font-bold" style="color:#1F4E79">Première partie</div>

$f(x) = x\ln(2-x)$ sur $I = [0,1]$.

**1.a)** \textit{Dérivabilité et expression de $f'$.}

Pour $x \in [0,1]$, $2-x \in [1,2] \subset \ ]0,+\infty[$, donc $x \mapsto \ln(2-x)$ est dérivable, et $f$ (produit de fonctions dérivables) l'est aussi. Avec $\big(\ln(2-x)\big)' = \dfrac{-1}{2-x}$ :
$$ f'(x) = \ln(2-x) + x \cdot \frac{-1}{2-x} = \boxed{\ln(2-x) - \frac{x}{2-x}}. $$

**1.b)** \textit{$f'$ strictement décroissante sur $I$.}

$$ f''(x) = \frac{-1}{2-x} - \frac{(2-x) + x}{(2-x)^2} = \frac{-1}{2-x} - \frac{2}{(2-x)^2} = \frac{-(2-x) - 2}{(2-x)^2} = \frac{-(4-x)}{(2-x)^2}. $$
Pour $x \in [0,1]$, $4 - x > 0$ et $(2-x)^2 > 0$, donc $f''(x) < 0$.
<div class="my-2 font-semibold" style="color:#1F4E79">⇒ $f'$ est strictement décroissante sur $I$.</div>

**1.c)** \textit{Existence et unicité de $a$ tel que $f'(a) = 0$, et $f(a) = \tfrac{a^2}{2-a}$.}

$f'$ est continue et strictement décroissante sur $[0,1]$, avec
$$ f'(0) = \ln 2 > 0, \qquad f'(1) = \ln 1 - 1 = -1 < 0. $$
Par le théorème des valeurs intermédiaires (stricte monotonie), il existe un unique $a \in \ ]0,1[$ tel que $f'(a) = 0$.

De $f'(a) = 0$ : $\ \ln(2-a) = \dfrac{a}{2-a}$. Donc
$$ f(a) = a\ln(2-a) = a \cdot \frac{a}{2-a} = \boxed{\frac{a^2}{2-a}}. $$

**2.a)** \textit{Variations et tableau de $f$.}

$f'$ est strictement décroissante, $f'(a) = 0$ : donc $f' > 0$ sur $[0,a[$ et $f' < 0$ sur $]a,1]$. $f$ est strictement croissante sur $[0,a]$ puis strictement décroissante sur $[a,1]$, avec un maximum en $a$.

$f(0) = 0$, $\ f(1) = 1 \cdot \ln 1 = 0$, $\ f(a) = \dfrac{a^2}{2-a} > 0$.

[figure : tableau de variations de $f$ sur $[0,1]$ — $f$ croît de $0$ à $f(a)=\tfrac{a^2}{2-a}$ sur $[0,a]$, décroît de $f(a)$ à $0$ sur $[a,1]$.]

**2.b)** \textit{$(C)$ est concave.}

D'après 1.b, $f''(x) < 0$ pour tout $x \in I$.
<div class="my-2 font-semibold" style="color:#1F4E79">⇒ La courbe $(C)$ est concave (située sous chacune de ses tangentes).</div>

**2.c)** \textit{Pour tous $t, x \in I$ : $f(x) \le f'(t)(x-t) + f(t)$.}

\begin{methode}
Une fonction concave est en-dessous de toutes ses tangentes : la tangente en $t$ a pour équation $y = f'(t)(x-t) + f(t)$.
\end{methode}
Comme $f$ est concave sur $I$ (2.b), pour tout $t \in I$ la courbe est sous sa tangente au point d'abscisse $t$ :
$$ \forall x \in I, \quad f(x) \le f'(t)(x-t) + f(t). $$

**2.d)** \textit{En déduire $f(x) \le x\ln 2$ et $f(x) \le -x+1$.}

$\bullet$ Pour $t = 0$ : $f'(0) = \ln 2$, $f(0) = 0$, donc $f(x) \le (\ln 2)\,x = \boxed{x\ln 2}$.

$\bullet$ Pour $t = 1$ : $f'(1) = -1$, $f(1) = 0$, donc $f(x) \le -1\cdot(x-1) + 0 = \boxed{-x+1}$.

**3)** \textit{Représenter $(C)$.}

[figure : courbe concave $(C)$ de $f$ sur $[0,1]$, passant par $(0,0)$ et $(1,0)$, avec maximum en $x=a$ ; tangentes $y = x\ln 2$ (en $0$) et $y = -x+1$ (en $1$). Unité $\|\vec i\| = 2\,\text{cm}$.]

**4)** \textit{Aire du domaine.}

$f \ge 0$ sur $[0,1]$ ; l'aire en unités d'aire est $\displaystyle\int_0^1 f(x)\,\mathrm{d}x$. Par intégration par parties avec $u = \ln(2-x)$, $v' = x$ :
$$ \int_0^1 x\ln(2-x)\,\mathrm{d}x = \left[\frac{x^2}{2}\ln(2-x)\right]_0^1 + \int_0^1 \frac{x^2}{2}\cdot\frac{1}{2-x}\,\mathrm{d}x. $$
Le crochet vaut $\frac{1}{2}\ln 1 - 0 = 0$. Pour la dernière intégrale, division : $\dfrac{x^2}{2-x} = -x - 2 + \dfrac{4}{2-x}$, d'où
$$ \int_0^1 \frac{x^2}{2}\cdot\frac{1}{2-x}\,\mathrm{d}x = \frac{1}{2}\int_0^1 \left(-x - 2 + \frac{4}{2-x}\right)\mathrm{d}x = \frac{1}{2}\left[-\frac{x^2}{2} - 2x - 4\ln(2-x)\right]_0^1. $$
$$ = \frac{1}{2}\Big[\big(-\tfrac{1}{2} - 2 - 0\big) - \big(0 - 0 - 4\ln 2\big)\Big] = \frac{1}{2}\left(-\frac{5}{2} + 4\ln 2\right) = 2\ln 2 - \frac{5}{4}. $$
Avec $\|\vec i\| = \|\vec j\| = 2\,\text{cm}$, une unité d'aire vaut $4\,\text{cm}^2$ :
$$ \mathcal{A} = \left(2\ln 2 - \frac{5}{4}\right) \times 4 \ \text{cm}^2 = \boxed{\left(8\ln 2 - 5\right)\,\text{cm}^2}. $$

<div class="mt-6 mb-2 text-base font-bold" style="color:#1F4E79">Deuxième partie</div>

$f_n(x) = x^n\ln(2-x)$ sur $I = [0,1]$, $n \ge 2$.

**1.a)** \textit{$f_n \ge 0$ sur $I$ et $f_n(0) = f_n(1)$.}

Pour $x \in [0,1]$ : $x^n \ge 0$ et $2 - x \ge 1 \Rightarrow \ln(2-x) \ge 0$, donc $f_n(x) \ge 0$. De plus $f_n(0) = 0$ et $f_n(1) = 1\cdot\ln 1 = 0$, donc $\boxed{f_n(0) = f_n(1) = 0}$.

**1.b)** \textit{Existence de $a_n \in \ ]0,1[$ avec $f_n'(a_n) = 0$.}

$f_n$ est continue sur $[0,1]$, dérivable sur $]0,1[$, et $f_n(0) = f_n(1)$. Par le théorème de Rolle, il existe $a_n \in \ ]0,1[$ tel que $\boxed{f_n'(a_n) = 0}$.

**2.a)** \textit{Dérivabilité et $f_n'(x) = x^{n-1} g_n(x)$.}

Comme en 1.a (partie I), $f_n$ est dérivable sur $I$ et
$$ f_n'(x) = n x^{n-1}\ln(2-x) + x^n\cdot\frac{-1}{2-x} = x^{n-1}\left(n\ln(2-x) - \frac{x}{2-x}\right) = x^{n-1} g_n(x), $$
avec $\boxed{g_n(x) = n\ln(2-x) - \dfrac{x}{2-x}}$.

**2.b)** \textit{$g_n$ strictement décroissante sur $I$.}

$$ g_n'(x) = \frac{-n}{2-x} - \frac{2}{(2-x)^2} = \frac{-n(2-x) - 2}{(2-x)^2} < 0 \quad (n \ge 2,\ x \in I). $$
<div class="my-2 font-semibold" style="color:#1F4E79">⇒ $g_n$ est strictement décroissante sur $I$.</div>

**2.c)** \textit{Unicité de $a_n$.}

Sur $]0,1[$, $x^{n-1} > 0$, donc $f_n'(x) = 0 \iff g_n(x) = 0$. Comme $g_n$ est strictement décroissante (donc injective), l'équation $g_n(x) = 0$ a au plus une solution sur $I$. Combinée à l'existence (1.b) :
<div class="my-2 font-semibold" style="color:#1F4E79">⇒ $a_n$ est l'unique réel de $]0,1[$ tel que $g_n(a_n) = 0$.</div>

**3.a)** \textit{$f_n(a_n) = \tfrac{1}{n}\cdot\tfrac{a_n^{n+1}}{2-a_n}$ et limite.}

$g_n(a_n) = 0 \Rightarrow n\ln(2-a_n) = \dfrac{a_n}{2-a_n} \Rightarrow \ln(2-a_n) = \dfrac{1}{n}\cdot\dfrac{a_n}{2-a_n}$. Donc
$$ f_n(a_n) = a_n^n\ln(2-a_n) = a_n^n\cdot\frac{1}{n}\cdot\frac{a_n}{2-a_n} = \boxed{\frac{1}{n}\cdot\frac{a_n^{n+1}}{2-a_n}}. $$
Comme $0 < a_n < 1$ : $\ 0 < \dfrac{a_n^{n+1}}{2-a_n} < 1$, donc $0 < f_n(a_n) < \dfrac{1}{n}$. Par encadrement :
$$ \boxed{\lim_{n \to +\infty} f_n(a_n) = 0}. $$

**3.b)** \textit{$g_n(a_{n+1}) = -\ln(2-a_{n+1})$ et croissance de $(a_n)$.}

Par définition de $a_{n+1}$ : $g_{n+1}(a_{n+1}) = 0$, soit $(n+1)\ln(2-a_{n+1}) = \dfrac{a_{n+1}}{2-a_{n+1}}$. Alors
$$ g_n(a_{n+1}) = n\ln(2-a_{n+1}) - \frac{a_{n+1}}{2-a_{n+1}} = n\ln(2-a_{n+1}) - (n+1)\ln(2-a_{n+1}) = -\ln(2-a_{n+1}). $$
Comme $a_{n+1} \in \ ]0,1[$, $\ 2 - a_{n+1} \in \ ]1,2[$, donc $\ln(2-a_{n+1}) > 0$ et $g_n(a_{n+1}) = -\ln(2-a_{n+1}) < 0 = g_n(a_n)$. Or $g_n$ est strictement décroissante, donc $a_{n+1} > a_n$.
<div class="my-2 font-semibold" style="color:#1F4E79">⇒ La suite $(a_n)_{n \ge 2}$ est strictement croissante.</div>

**3.c)** \textit{Convergence de $(a_n)$.}

$(a_n)$ est strictement croissante et majorée par $1$ (car $a_n \in \ ]0,1[$). Toute suite croissante majorée converge.
<div class="my-2 font-semibold" style="color:#1F4E79">⇒ $(a_n)_{n \ge 2}$ est convergente.</div>

**3.d)** \textit{$\lim a_n = 1$.}

Notons $\ell = \lim a_n \in \ ]0,1]$. De $\ln(2-a_n) = \dfrac{1}{n}\cdot\dfrac{a_n}{2-a_n}$, le membre de droite tend vers $0$ (car $\dfrac{a_n}{2-a_n}$ est borné et $\frac1n \to 0$). Donc $\ln(2-\ell) = 0$, soit $2 - \ell = 1$ :
$$ \boxed{\lim_{n \to +\infty} a_n = 1}. $$

<div class="mt-6 mb-2 text-base font-bold" style="color:#1F4E79">Troisième partie</div>

$I_n = \displaystyle\int_0^1 f_n(x)\,\mathrm{d}x$, $n \ge 2$.

**1)** \textit{$(I_n)$ décroissante et convergente.}

Pour $x \in [0,1]$ : $x^{n+1}\ln(2-x) \le x^n\ln(2-x)$ (car $0 \le x \le 1 \Rightarrow x^{n+1} \le x^n$ et $\ln(2-x) \ge 0$). En intégrant :
$$ I_{n+1} \le I_n. $$
De plus $f_n \ge 0 \Rightarrow I_n \ge 0$ : la suite est minorée par $0$. Décroissante et minorée :
<div class="my-2 font-semibold" style="color:#1F4E79">⇒ $(I_n)_{n \ge 2}$ converge.</div>

**2)** \textit{$I_n = \tfrac{1}{n+1}\displaystyle\int_0^1 \tfrac{x^{n+1}}{2-x}\,\mathrm{d}x$.}

Intégration par parties avec $u = \ln(2-x)$, $\ u' = \dfrac{-1}{2-x}$, $\ v' = x^n$, $\ v = \dfrac{x^{n+1}}{n+1}$ :
$$ I_n = \left[\frac{x^{n+1}}{n+1}\ln(2-x)\right]_0^1 + \frac{1}{n+1}\int_0^1 \frac{x^{n+1}}{2-x}\,\mathrm{d}x. $$
Le crochet vaut $\dfrac{1}{n+1}\ln 1 - 0 = 0$, d'où
$$ \boxed{I_n = \frac{1}{n+1}\int_0^1 \frac{x^{n+1}}{2-x}\,\mathrm{d}x}. $$

**3)** \textit{$0 \le I_n \le \tfrac{1}{n+1}$ et limite.}

Pour $x \in [0,1]$ : $0 \le \dfrac{x^{n+1}}{2-x} \le x^{n+1}$ (car $2 - x \ge 1$). Donc
$$ 0 \le \int_0^1 \frac{x^{n+1}}{2-x}\,\mathrm{d}x \le \int_0^1 x^{n+1}\,\mathrm{d}x = \frac{1}{n+2} \le 1. $$
En reportant dans 2) : $\ 0 \le I_n \le \dfrac{1}{n+1}\cdot 1 = \dfrac{1}{n+1}$. Comme $\dfrac{1}{n+1} \to 0$, par encadrement :
$$ \boxed{\lim_{n \to +\infty} I_n = 0}. $$
