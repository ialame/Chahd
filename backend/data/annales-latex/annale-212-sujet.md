<div class="my-5 rounded-lg px-4 py-2.5 text-white font-bold" style="background:#1F4E79">Exercice 1 <span class="font-normal text-white/80 text-sm">(10 points)</span></div>

On considère la fonction numérique $f$ définie sur $\mathbb{R}$ par : $f(x) = \dfrac{e^x}{e^{2x} + e}$

et soit $(\Gamma)$ sa courbe représentative dans un repère **orthogonal** $(O,\vec{i},\vec{j})$.

**Partie I :**

**1.a)** Montrer que : $(\forall x \in \mathbb{R})$ ; $f(1 - x) = f(x)$.

**1.b)** Interpréter graphiquement le résultat obtenu.

**1.c)** Calculer $\lim\limits_{x \to -\infty} f(x)$ puis en déduire $\lim\limits_{x \to +\infty} f(x)$.

**1.d)** Interpréter graphiquement les deux résultats obtenus.

**2.a)** Montrer que : $(\forall x \in \mathbb{R})$ ; $f'(x) = f(x)\dfrac{1 - e^{2x-1}}{1 + e^{2x-1}}$.

**2.b)** Donner les variations de $f$ puis en déduire que :
$$ (\forall x \in \mathbb{R}) \quad ; \quad 0 < f(x) < \frac{1}{2} $$

**3)** Représenter graphiquement la courbe $(\Gamma)$.

(On prendra $\|\vec{i}\| = 1\,\text{cm}$, $\|\vec{j}\| = 2\,\text{cm}$ et $\dfrac{1}{2\sqrt{e}} \simeq 0.30$ et $\dfrac{1}{1+e} \simeq 0.27$)

**4.a)** Montrer que : $\displaystyle\int_0^{\frac{1}{2}} f(x)\,dx = \int_{\frac{1}{2}}^1 f(x)\,dx$.

**4.b)** En déduire que $\displaystyle\int_0^1 f(x)\,dx = 2\int_0^{\frac{1}{2}} f(x)\,dx$.

**5.a)** En effectuant le changement de variables : $t = e^x$, montrer que :
$$ \int_0^{\frac{1}{2}} f(x)\,dx = \int_1^{\sqrt{e}} \frac{dt}{t^2 + e} $$

**5.b)** Montrer que : $\displaystyle\int_0^{\frac{1}{2}} f(x)\,dx = \frac{1}{\sqrt{e}}\left(\arctan(\sqrt{e}) - \frac{\pi}{4}\right)$.

**5.c)** En déduire l'aire, en $\text{cm}^2$, du domaine plan délimité par $(\Gamma)$, les droites d'équations respectives : $x = 0$, $x = 1$ et $y = 0$.

**Partie II :**

On considère la suite $(u_n)_{n \in \mathbb{N}}$ définie par : $u_0 \in \left]0; \frac{1}{2}\right[$ et $(\forall n \in \mathbb{N})$ ; $u_{n+1} = f(u_n)$.

**1)** En utilisant le résultat de la question I.2-a), montrer que :
$$ (\forall x \in \mathbb{R}) \quad ; \quad |f'(x)| \le f(x) $$

**2.a)** Montrer que : $\left(\forall x \in \left[0; \frac{1}{2}\right]\right)$ ; $0 \le f'(x) < \dfrac{1}{2}$.

**2.b)** Montrer que la fonction $g : x \mapsto g(x) = f(x) - x$ est strictement décroissante sur $\mathbb{R}$.

**2.c)** En déduire qu'il existe un unique réel $\alpha \in \left]0; \frac{1}{2}\right[$ tel que : $f(\alpha) = \alpha$.

**3.a)** Montrer que : $(\forall n \in \mathbb{N})$ ; $0 < u_n < \dfrac{1}{2}$.

**3.b)** Montrer que : $(\forall n \in \mathbb{N})$ ; $|u_{n+1} - \alpha| \le \dfrac{1}{2}|u_n - \alpha|$.

**3.c)** Montrer par récurrence que : $(\forall n \in \mathbb{N})$ ; $|u_n - \alpha| \le \left(\dfrac{1}{2}\right)^{n+1}$.

**3.d)** En déduire que la suite $(u_n)_{n \in \mathbb{N}}$ converge vers $\alpha$.

**Partie III :**

On considère la suite numérique $(S_n)_{n \in \mathbb{N}}$ définie par :
$$ (\forall n \in \mathbb{N}^*) \quad ; \quad S_n = \frac{1}{n(n+1)} \sum_{k=1}^{k=n} \frac{k}{e^{\frac{k}{n}} + e^{\frac{n-k}{n}}} $$

**1.a)** Vérifier que : $(\forall n \in \mathbb{N}^*)$ ; $S_n = \dfrac{1}{n+1} \displaystyle\sum_{k=1}^{k=n} \frac{k}{n} f\left(\frac{k}{n}\right)$.

**1.b)** Montrer que : $\displaystyle\int_0^1 x\,f(x)\,dx = \int_0^{\frac{1}{2}} f(x)\,dx$.

(On pourra effectuer le changement de variables : $t = 1 - x$)

**2)** Montrer que la suite $(S_n)_{n \in \mathbb{N}}$ est convergente et déterminer sa limite.

<div class="my-5 rounded-lg px-4 py-2.5 text-white font-bold" style="background:#1F4E79">Exercice 2 <span class="font-normal text-white/80 text-sm">(3.5 points)</span></div>

Soit $\alpha \in [0; 2\pi[$.

On considère dans l'ensemble des nombres complexes $\mathbb{C}$ l'équation $(E_\alpha)$ d'inconnue $z$ :
$$ (E_\alpha) \quad : \quad z^2 - 2^\alpha e^{i\alpha}(1 + 2i)z + i\,2^{2\alpha+1} e^{i2\alpha} = 0 $$

**Partie I :**

**1.a)** Vérifier que le discriminant de l'équation $(E_\alpha)$ est : $\Delta_\alpha = \left(2^\alpha e^{i\alpha}(1 - 2i)\right)^2$.

**1.b)** En déduire les deux solutions $a$ et $b$ de l'équation $(E_\alpha)$ avec $|a| < |b|$.

**2)** Vérifier que $\dfrac{b}{a}$ est un imaginaire pur.

**Partie II :**

Le plan complexe est rapporté à un repère orthonormé direct $(O,\vec{u},\vec{v})$.

On note par $M(z)$ le point d'affixe le nombre complexe $z$.

On pose $\dfrac{b}{a} = \lambda i$ avec $\lambda = \text{Im}\left(\dfrac{b}{a}\right)$.

**1)** On considère les points $A(a)$, $B(b)$ et $H(h)$ avec $\dfrac{1}{h} = \dfrac{1}{a} + \dfrac{1}{b}$.

**1.a)** Montrer que : $\dfrac{h}{b - a} = -\left(\dfrac{\lambda}{\lambda^2 + 1}\right)i$ puis en déduire que les droites $(OH)$ et $(AB)$ sont perpendiculaires.

**1.b)** Montrer que : $\dfrac{h - a}{b - a} = \dfrac{1}{\lambda^2 + 1}$ puis en déduire que les points $H$, $A$ et $B$ sont alignés.

**2)** Soient $I(m)$ le milieu du segment $[OH]$ et $J(n)$ le milieu du segment $[HB]$.

**2.a)** Montrer que : $\dfrac{n}{m - a} = -\lambda i$.

**2.b)** En déduire que les droites $(OJ)$ et $(AI)$ sont perpendiculaires et que $OJ = |\lambda|\,AI$.

**2.c)** Soit $K$ le point d'intersection des droites $(OJ)$ et $(AI)$. Montrer que les points $K$, $I$, $H$ et $J$ sont cocycliques.

**2.d)** Montrer que les droites $(IJ)$ et $(OA)$ sont perpendiculaires.

<div class="my-5 rounded-lg px-4 py-2.5 text-white font-bold" style="background:#1F4E79">Exercice 3 <span class="font-normal text-white/80 text-sm">(3 points)</span></div>

Soient $p$ un nombre premier impair et $a$ un entier premier avec $p$.

**1)** Montrer que $a^{\frac{p-1}{2}} \equiv 1 \ [p]$ ou $a^{\frac{p-1}{2}} \equiv -1 \ [p]$.

**2)** On considère dans $\mathbb{Z}$ l'équation : $ax^2 \equiv 1 \ [p]$. Soit $x_0$ une solution de cette équation.

**2.a)** Montrer que : $x_0^{\,p-1} \equiv 1 \ [p]$.

**2.b)** En déduire que : $a^{\frac{p-1}{2}} \equiv 1 \ [p]$.

**3)** Soit $n$ un entier naturel non nul.

**3.a)** Montrer que si $p$ divise $2^{2n+1} - 1$ alors $2^{\frac{p-1}{2}} \equiv 1 \ [p]$.

**3.b)** En déduire que l'équation $(E)$ : $11x + (2^{2n+1} - 1)y = 1$ admet au moins une solution dans $\mathbb{Z}^2$.

**4)** On considère dans $\mathbb{Z}$ l'équation $(F)$ : $x^2 + 5x + 2 \equiv 0 \ [11]$.

**4.a)** Montrer que : $(F) \iff 2(2x + 5)^2 \equiv 1 \ [11]$.

**4.b)** En déduire que l'équation $(F)$ n'admet pas de solution dans $\mathbb{Z}$.

<div class="my-5 rounded-lg px-4 py-2.5 text-white font-bold" style="background:#1F4E79">Exercice 4 <span class="font-normal text-white/80 text-sm">(3.5 points)</span></div>

On rappelle que $(M_3(\mathbb{R}), +, \times)$ est un anneau unitaire et non commutatif de zéro la matrice $O = \begin{pmatrix} 0 & 0 & 0 \\ 0 & 0 & 0 \\ 0 & 0 & 0 \end{pmatrix}$ et d'unité la matrice $I = \begin{pmatrix} 1 & 0 & 0 \\ 0 & 1 & 0 \\ 0 & 0 & 1 \end{pmatrix}$, et que $(M_3(\mathbb{R}), +, .)$ est un espace vectoriel réel.

Soient la matrice $A = \begin{pmatrix} -1 & -1 & 0 \\ -1 & -1 & 0 \\ -1 & 1 & -2 \end{pmatrix}$ et l'ensemble $E = \{ M(x) = I + xA \,/\, x \in \mathbb{R} \}$.

**1.a)** Vérifier que : $A^2 = -2A$.

**1.b)** En déduire que : $\forall (x,y) \in \mathbb{R}^2$ ; $M(x) \times M(y) = M(x + y - 2xy)$.

**2.a)** Calculer $M\left(\dfrac{1}{2}\right) \times \begin{pmatrix} 0 & 0 & 0 \\ 0 & 0 & 0 \\ 0 & 0 & 1 \end{pmatrix}$.

**2.b)** En déduire que la matrice $M\left(\dfrac{1}{2}\right)$ n'est pas inversible dans $(M_3(\mathbb{R}), \times)$.

**3)** Montrer que : $E - \left\{ M\left(\dfrac{1}{2}\right) \right\}$ est stable pour la multiplication dans $M_3(\mathbb{R})$.

(on pourra utiliser l'identité : $\left(x - \dfrac{1}{2}\right)\left(y - \dfrac{1}{2}\right) = \dfrac{-1}{2}\left(x + y - 2xy - \dfrac{1}{2}\right)$)

**4)** Montrer que : $\left( E - \left\{ M\left(\dfrac{1}{2}\right) \right\}, \times \right)$ est un groupe commutatif.

**5)** On munit $E$ de la loi de composition interne $T$ définie par :
$$ \forall (x,y) \in \mathbb{R}^2 \ ; \ M(x)\, T\, M(y) = M\left(x + y - \frac{1}{2}\right) $$

et on considère l'application $\varphi$ définie de $\mathbb{R}$ vers $E$ par : $\forall x \in \mathbb{R}$ ; $\varphi(x) = M\left(\dfrac{1 - x}{2}\right)$.

**5.a)** Montrer que $\varphi$ est un homomorphisme de $(\mathbb{R}, +)$ vers $(E, T)$ et que $\varphi(\mathbb{R}) = E$.

**5.b)** En déduire que $(E, T)$ est un groupe commutatif.

**6)** Montrer que $(E, T, \times)$ est un corps commutatif.
