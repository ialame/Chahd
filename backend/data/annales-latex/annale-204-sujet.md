<div class="my-5 rounded-lg px-4 py-2.5 text-white font-bold" style="background:#1F4E79">Exercice 1 <span class="font-normal text-white/80 text-sm">(12 points)</span></div>

Pour tout entier naturel $n$, on considère la fonction $f_n$ définie sur $\R$ par :
$$f_n(x) = \frac{-2e^x}{1+e^x} + nx$$

Soit $(C_n)$ sa courbe représentative dans un repère orthonormé $(O,\vec{i},\vec{j})$ (on prendra $\|\vec{i}\| = \|\vec{j}\| = 1\,\text{cm}$).

\textbf{Partie I} \\

**1.a)** Calculer $\lim\limits_{x \to +\infty} \left(f_n(x) - nx + 2\right)$, puis interpréter graphiquement le résultat obtenu.

**1.b)** Montrer que la courbe $(C_n)$ admet, en $-\infty$, une asymptote $(\Delta_n)$ dont on déterminera une équation cartésienne.

**2.a)** Montrer que la fonction $f_n$ est dérivable sur $\R$ et que :
$$(\forall x \in \R) \quad f_n'(x) = \frac{-2e^x}{(1+e^x)^2} + n$$

**2.b)** Montrer que $(\forall x \in \R) \ \dfrac{4e^x}{(1+e^x)^2} \le 1$.

**2.c)** En déduire le sens de variation de la fonction $f_n$ sur $\R$ (on distinguera les deux cas : $n = 0$ et $n \ge 1$).

**3.a)** Déterminer l'équation de la tangente à la courbe $(C_n)$ au point $I$ d'abscisse $0$.

**3.b)** Montrer que le point $I$ est le seul point d'inflexion de la courbe $(C_n)$.

**4)** Représenter graphiquement dans le même repère les deux courbes $(C_0)$ et $(C_2)$.

**5)** Pour tout réel $t > 0$, on pose $A(t)$ l'aire du domaine plan limité par $(C_n)$ et les droites d'équations respectives $y = nx - 2$, $x = 0$ et $x = t$.

**5.a)** Calculer $A(t)$ pour tout $t > 0$.

**5.b)** Calculer $\lim\limits_{t \to +\infty} A(t)$.

\textbf{Partie II} \\

On considère la suite $(u_n)_{n \ge 0}$ définie par $u_0 = 0$ et $(\forall n \in \N) \ u_{n+1} = f_0(u_n)$.

**1.a)** Montrer que l'équation $f_0(x) = x$ admet une unique solution $\alpha$ dans $\R$.

**1.b)** Montrer que $(\forall x \in \R) \ \left|f_0'(x)\right| \le \dfrac{1}{2}$.

**2.a)** Montrer que $(\forall n \in \N) \ \left|u_{n+1} - \alpha\right| \le \dfrac{1}{2}\left|u_n - \alpha\right|$.

**2.b)** En déduire que $(\forall n \in \N) \ \left|u_n - \alpha\right| \le \left(\dfrac{1}{2}\right)^n |\alpha|$.

**2.c)** Montrer que la suite $(u_n)_{n \ge 0}$ converge vers $\alpha$.

\textbf{Partie III} \\

On suppose dans cette partie que $n \ge 2$.

**1.a)** Montrer que pour tout entier $n \ge 2$, il existe un unique réel $x_n$ solution de l'équation $f_n(x) = 0$.

**1.b)** Montrer que pour tout entier $n \ge 2$, $0 < x_n < 1$ (on prendra $\dfrac{2e}{1+e} < 1{,}47$).

**2.a)** Montrer que pour tout entier $n \ge 2$, $f_{n+1}(x_n) > 0$.

**2.b)** En déduire que la suite $(x_n)_{n \ge 2}$ est strictement décroissante.

**2.c)** Montrer que la suite $(x_n)_{n \ge 2}$ est convergente.

**3.a)** Montrer que pour tout entier $n \ge 2$, $\dfrac{1}{n} < x_n < \dfrac{1}{n}\left(\dfrac{2e}{1+e}\right)$.

**3.b)** En déduire $\lim\limits_{n \to +\infty} x_n$, puis montrer que $\lim\limits_{n \to +\infty} n x_n = 1$.

**4.a)** Montrer que pour tout entier $n \ge 2$, on a $x_n \le x_2$.

**4.b)** En déduire $\lim\limits_{n \to +\infty} (x_n)^n$.

<div class="my-5 rounded-lg px-4 py-2.5 text-white font-bold" style="background:#1F4E79">Exercice 2 <span class="font-normal text-white/80 text-sm">(4 points)</span></div>

Soient $a$, $b$ et $c$ trois nombres complexes non nuls tels que $a + b \ne c$.

**1.a)** Résoudre dans l'ensemble $\C$ l'équation d'inconnue $z$ :
$$(E) : z^2 - (a+b+c)z + c(a+b) = 0$$

**1.b)** On suppose dans cette question que $a = i$, $b = e^{i\frac{\pi}{3}}$ et $c = a - b$. Écrire les deux solutions de l'équation $(E)$ sous forme exponentielle.

**2)** Le plan complexe est rapporté à un repère orthonormé direct $(O,\vec{u},\vec{v})$. On considère les trois points $A(a)$, $B(b)$ et $C(c)$ qu'on suppose non alignés.

Soient $P(p)$ le centre de la rotation d'angle $\dfrac{\pi}{2}$ qui transforme $B$ en $A$, $Q(q)$ le centre de la rotation d'angle $\left(-\dfrac{\pi}{2}\right)$ qui transforme $C$ en $A$, et $D(d)$ le milieu du segment $[BC]$.

**2.a)** Montrer que $2p = b + a + (a-b)i$ et $2q = c + a + (c-a)i$.

**2.b)** Calculer $\dfrac{p-d}{q-d}$.

**2.c)** En déduire la nature du triangle $PDQ$.

**3)** Soient $E$ le symétrique de $B$ par rapport à $P$, $F$ le symétrique de $C$ par rapport à $Q$ et $K$ le milieu du segment $[EF]$.

**3.a)** Montrer que l'affixe de $K$ est $k = a + \dfrac{i}{2}(c - b)$.

**3.b)** Montrer que les points $K$, $P$, $Q$ et $D$ sont cocycliques.

<div class="my-5 rounded-lg px-4 py-2.5 text-white font-bold" style="background:#1F4E79">Exercice 3 <span class="font-normal text-white/80 text-sm">(4 points)</span></div>

\textbf{Partie I} \\
On considère dans $\Z \times \Z$ l'équation $(E) : 47x - 43y = 1$.

**1)** Vérifier que le couple $(11, 12)$ est une solution particulière de l'équation $(E)$.

**2)** Résoudre dans $\Z \times \Z$ l'équation $(E)$.

\textbf{Partie II} \\
On considère dans $\Z$ l'équation $(F) : x^{41} \equiv 4 \ [43]$.

**1)** Soit $x \in \Z$ une solution de l'équation $(F)$.

**1.a)** Montrer que $x$ et $43$ sont premiers entre eux, en déduire que $x^{42} \equiv 1 \ [43]$.

**1.b)** Montrer que $4x \equiv 1 \ [43]$, en déduire que $x \equiv 11 \ [43]$.

**2)** Donner l'ensemble des solutions dans $\Z$ de l'équation $(F)$.

\textbf{Partie III} \\
On considère dans $\Z$ le système à deux équations suivant :
$$(S) : \begin{cases} x^{41} \equiv 4 \ [43] \\ x^{47} \equiv 10 \ [47] \end{cases}$$

**1)** Soit $x$ une solution du système $(S)$.

**1.a)** Montrer que $x$ est solution du système $(S') : \begin{cases} x \equiv 11 \ [43] \\ x \equiv 10 \ [47] \end{cases}$

**1.b)** En déduire que $x \equiv 527 \ [2021]$ (on pourra utiliser la partie I).

**2)** Donner l'ensemble des solutions dans $\Z$ du système $(S)$.
