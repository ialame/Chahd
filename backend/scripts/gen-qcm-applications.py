#!/usr/bin/env python3
"""
Génère la migration V14 : pour chaque chapitre de maths, renomme le QCM existant
en « … : notions » et ajoute un 2e QCM « … : applications » (8 questions appliquées).
La bonne réponse est listée en 1er (le QuizRunner mélange les choix à l'affichage).

Usage : python3 scripts/gen-qcm-applications.py
"""
import os

OUT = os.path.join(os.path.dirname(os.path.dirname(os.path.abspath(__file__))),
                   "src/main/resources/db/migration/V14__qcm_applications_chapitres.sql")

# quiz existant -> nouveau titre « notions »
RENAMES = {
    1001: "QCM — Limites et continuité : notions",
    1002: "QCM — Dérivation et étude de fonctions : notions",
    1003: "QCM — Suites numériques : notions",
    1004: "QCM — Logarithme : notions",
    1008: "QCM — Fonction exponentielle : notions",
    1007: "QCM — Calcul intégral : notions",
    1005: "QCM — Nombres complexes : notions",
    1010: "QCM — Géométrie dans l'espace : notions",
    1006: "QCM — Probabilités : notions",
}

# Nouveaux QCM « applications » : (quiz_id, slug_lecon, titre, [questions])
# question = (énoncé, explication, [(choix, correct?), ...])  -> bonne réponse en 1er
APPS = [
 (1012, "limites-continuite", "QCM — Limites et continuité : applications", [
   (r"$\displaystyle\lim_{x\to+\infty}\frac{3x^2-x}{x^2+1}$ vaut :",
    r"On compare les termes de plus haut degré : $\frac{3x^2}{x^2}=3$.",
    [("$3$", True), (r"$+\infty$", False), ("$0$", False), ("$1$", False)]),
   (r"$\displaystyle\lim_{x\to 2}\frac{x^2-4}{x-2}$ vaut :",
    r"$\frac{x^2-4}{x-2}=x+2\to 4$.",
    [("$4$", True), ("$0$", False), ("$2$", False), (r"$+\infty$", False)]),
   (r"$\displaystyle\lim_{x\to+\infty}\frac{e^x}{x}$ vaut :",
    r"Croissance comparée : l'exponentielle l'emporte, la limite est $+\infty$.",
    [(r"$+\infty$", True), ("$0$", False), ("$1$", False), ("$e$", False)]),
   (r"$\displaystyle\lim_{x\to+\infty}\frac{\ln x}{x}$ vaut :",
    r"Croissance comparée : $\frac{\ln x}{x}\to 0$.",
    [("$0$", True), (r"$+\infty$", False), ("$1$", False), (r"$-\infty$", False)]),
   (r"$\displaystyle\lim_{x\to 0^+} x\ln x$ vaut :",
    r"Croissance comparée : $x\ln x\to 0$.",
    [("$0$", True), (r"$-\infty$", False), (r"$+\infty$", False), ("$1$", False)]),
   (r"$\displaystyle\lim_{x\to+\infty}\big(\sqrt{x^2+1}-x\big)$ vaut :",
    r"On multiplie par le conjugué : $\frac{1}{\sqrt{x^2+1}+x}\to 0$.",
    [("$0$", True), (r"$+\infty$", False), ("$1$", False), (r"$\tfrac12$", False)]),
   (r"$\displaystyle\lim_{x\to+\infty}\frac{2x+1}{x-3}$ vaut :",
    r"Quotient de termes de plus haut degré : $\frac{2x}{x}=2$.",
    [("$2$", True), ("$1$", False), (r"$+\infty$", False), ("$0$", False)]),
   (r"Si $f$ est continue sur $[a,b]$ et $f(a)\,f(b)<0$, alors d'après le T.V.I. :",
    r"Le théorème des valeurs intermédiaires garantit une solution de $f(x)=0$.",
    [(r"l'équation $f(x)=0$ admet au moins une solution dans $]a,b[$", True),
     (r"$f$ est croissante sur $[a,b]$", False),
     (r"$f$ est constante", False),
     (r"$f$ n'a pas de solution", False)]),
 ]),
 (1013, "derivation-convexite", "QCM — Dérivation et étude de fonctions : applications", [
   (r"La dérivée de $f(x)=x^3$ est :",
    r"$(x^n)'=n x^{n-1}$ donc $3x^2$.",
    [("$3x^2$", True), ("$x^2$", False), ("$3x$", False), (r"$\tfrac{x^4}{4}$", False)]),
   (r"La dérivée de $f(x)=e^{2x}$ est :",
    r"$(e^{u})'=u'e^{u}$ avec $u=2x$ : $2e^{2x}$.",
    [("$2e^{2x}$", True), ("$e^{2x}$", False), ("$2e^{x}$", False), (r"$2x\,e^{2x}$", False)]),
   (r"La dérivée de $f(x)=\ln(x^2+1)$ est :",
    r"$(\ln u)'=\frac{u'}{u}$ avec $u=x^2+1$ : $\frac{2x}{x^2+1}$.",
    [(r"$\dfrac{2x}{x^2+1}$", True), (r"$\dfrac{1}{x^2+1}$", False),
     (r"$\dfrac{2x}{x^2}$", False), ("$2x$", False)]),
   (r"La dérivée de $f(x)=x\,e^{x}$ est :",
    r"Produit : $(uv)'=u'v+uv'=(x+1)e^{x}$.",
    [("$(x+1)e^{x}$", True), ("$e^{x}$", False), (r"$x\,e^{x}$", False), ("$(x-1)e^{x}$", False)]),
   (r"L'équation de la tangente à $f(x)=x^2$ au point d'abscisse $1$ est :",
    r"$y=f'(1)(x-1)+f(1)=2(x-1)+1=2x-1$.",
    [("$y=2x-1$", True), ("$y=2x+1$", False), ("$y=x^2$", False), ("$y=x-1$", False)]),
   (r"La dérivée de $f(x)=\dfrac{1}{x}$ est :",
    r"$\left(x^{-1}\right)'=-x^{-2}=-\frac{1}{x^2}$.",
    [(r"$-\dfrac{1}{x^2}$", True), (r"$\dfrac{1}{x^2}$", False),
     (r"$\ln x$", False), (r"$-\dfrac{1}{x}$", False)]),
   (r"La dérivée de $f(x)=\sqrt{x}$ (sur $]0,+\infty[$) est :",
    r"$(\sqrt{x})'=\frac{1}{2\sqrt{x}}$.",
    [(r"$\dfrac{1}{2\sqrt{x}}$", True), (r"$\dfrac{1}{\sqrt{x}}$", False),
     (r"$2\sqrt{x}$", False), (r"$\dfrac{1}{2}x$", False)]),
   (r"Une fonction dont la dérivée seconde vérifie $f''(x)>0$ sur un intervalle y est :",
    r"$f''>0$ caractérise la convexité.",
    [("convexe", True), ("concave", False), ("décroissante", False), ("constante", False)]),
 ]),
 (1014, "recurrence-suites", "QCM — Suites numériques : applications", [
   (r"Suite arithmétique de premier terme $u_0=2$ et de raison $r=3$ : $u_5$ vaut :",
    r"$u_n=u_0+nr=2+3n$, donc $u_5=17$.",
    [("$17$", True), ("$15$", False), ("$11$", False), ("$243$", False)]),
   (r"Suite géométrique $u_0=1$, raison $q=2$ : $u_4$ vaut :",
    r"$u_n=u_0 q^n=2^n$, donc $u_4=16$.",
    [("$16$", True), ("$8$", False), ("$9$", False), ("$32$", False)]),
   (r"La somme $1+2+3+\cdots+10$ vaut :",
    r"$\frac{n(n+1)}{2}=\frac{10\cdot 11}{2}=55$.",
    [("$55$", True), ("$45$", False), ("$100$", False), ("$50$", False)]),
   (r"$\displaystyle\lim_{n\to+\infty}\left(\tfrac12\right)^n$ vaut :",
    r"Suite géométrique de raison $|q|<1$ : limite $0$.",
    [("$0$", True), ("$1$", False), (r"$+\infty$", False), (r"$\tfrac12$", False)]),
   (r"$\displaystyle\lim_{n\to+\infty}\frac{2n+1}{n+3}$ vaut :",
    r"Quotient des termes dominants : $\frac{2n}{n}=2$.",
    [("$2$", True), ("$1$", False), ("$0$", False), (r"$+\infty$", False)]),
   (r"La somme $1+q+q^2+\cdots+q^{n}$ (avec $q\neq 1$) vaut :",
    r"Somme géométrique : $\frac{1-q^{n+1}}{1-q}$.",
    [(r"$\dfrac{1-q^{n+1}}{1-q}$", True), (r"$\dfrac{1-q^{n}}{1-q}$", False),
     (r"$\dfrac{q^{n+1}-1}{q}$", False), (r"$n q^{n}$", False)]),
   (r"La suite définie par $u_{n+1}=u_n+2$, $u_0=1$ est :",
    r"L'écart constant $+2$ caractérise une suite arithmétique de raison $2$.",
    [("arithmétique de raison $2$", True), ("géométrique de raison $2$", False),
     ("constante", False), ("non monotone", False)]),
   (r"Une suite croissante et majorée est nécessairement :",
    r"Théorème de convergence monotone.",
    [("convergente", True), ("divergente", False),
     ("géométrique", False), (r"de limite $+\infty$", False)]),
 ]),
 (1015, "logarithme", "QCM — Logarithme : applications", [
   (r"$\ln(1)$ vaut :",
    r"$\ln 1=0$.",
    [("$0$", True), ("$1$", False), ("$e$", False), (r"$+\infty$", False)]),
   (r"La solution de $\ln x = 2$ est :",
    r"$x=e^{2}$.",
    [("$e^{2}$", True), ("$2$", False), ("$2e$", False), (r"$\ln 2$", False)]),
   (r"$\ln 2+\ln 3$ vaut :",
    r"$\ln a+\ln b=\ln(ab)$ donc $\ln 6$.",
    [(r"$\ln 6$", True), (r"$\ln 5$", False), (r"$6$", False), (r"$\ln 2\cdot \ln 3$", False)]),
   (r"$\dfrac{\ln 8}{\ln 2}$ vaut :",
    r"$\ln 8=3\ln 2$ donc le quotient vaut $3$.",
    [("$3$", True), ("$4$", False), (r"$\ln 4$", False), ("$6$", False)]),
   (r"Le domaine de définition de $x\mapsto \ln(x-3)$ est :",
    r"Il faut $x-3>0$.",
    [(r"$]3,+\infty[$", True), (r"$]-\infty,3[$", False),
     (r"$\mathbb{R}$", False), (r"$[3,+\infty[$", False)]),
   (r"La solution de $\ln x = -1$ est :",
    r"$x=e^{-1}=\frac{1}{e}$.",
    [(r"$\dfrac{1}{e}$", True), ("$-e$", False), ("$-1$", False), ("$e$", False)]),
   (r"$\displaystyle\lim_{x\to 0^+}\ln x$ vaut :",
    r"Le logarithme tend vers $-\infty$ en $0^+$.",
    [(r"$-\infty$", True), (r"$+\infty$", False), ("$0$", False), ("$1$", False)]),
   (r"$\ln\!\left(e^{3}\right)$ vaut :",
    r"$\ln(e^{x})=x$.",
    [("$3$", True), ("$e^{3}$", False), (r"$3e$", False), (r"$\ln 3$", False)]),
 ]),
 (1016, "exponentielle", "QCM — Fonction exponentielle : applications", [
   (r"$e^{0}$ vaut :",
    r"$e^{0}=1$.",
    [("$1$", True), ("$0$", False), ("$e$", False), (r"$+\infty$", False)]),
   (r"La solution de $e^{x}=1$ est :",
    r"$e^{x}=1\iff x=0$.",
    [("$0$", True), ("$1$", False), ("$e$", False), (r"$\ln 1$ n'existe pas", False)]),
   (r"La solution de $e^{x}=e^{2}$ est :",
    r"L'exponentielle est injective : $x=2$.",
    [("$2$", True), ("$e^{2}$", False), (r"$\ln 2$", False), ("$0$", False)]),
   (r"$e^{x}\cdot e^{y}$ est égal à :",
    r"Propriété : $e^{x}e^{y}=e^{x+y}$.",
    [("$e^{x+y}$", True), ("$e^{xy}$", False), ("$e^{x}+e^{y}$", False), ("$e^{x-y}$", False)]),
   (r"$\displaystyle\lim_{x\to-\infty}e^{x}$ vaut :",
    r"L'exponentielle tend vers $0$ en $-\infty$.",
    [("$0$", True), (r"$-\infty$", False), (r"$+\infty$", False), ("$1$", False)]),
   (r"$e^{\ln 5}$ vaut :",
    r"$e^{\ln a}=a$.",
    [("$5$", True), (r"$\ln 5$", False), ("$e^{5}$", False), ("$1$", False)]),
   (r"La solution de $e^{2x}=e^{x+1}$ est :",
    r"$2x=x+1\iff x=1$.",
    [("$1$", True), ("$0$", False), ("$2$", False), (r"$\tfrac12$", False)]),
   (r"$\dfrac{e^{5}}{e^{2}}$ est égal à :",
    r"$\frac{e^{a}}{e^{b}}=e^{a-b}=e^{3}$.",
    [("$e^{3}$", True), ("$e^{7}$", False), (r"$e^{5/2}$", False), (r"$e^{2{,}5}$", False)]),
 ]),
 (1017, "primitives-integration", "QCM — Calcul intégral : applications", [
   (r"$\displaystyle\int_0^1 x\,\mathrm{d}x$ vaut :",
    r"$\left[\frac{x^2}{2}\right]_0^1=\frac12$.",
    [(r"$\tfrac12$", True), ("$1$", False), ("$0$", False), ("$2$", False)]),
   (r"Une primitive de $x\mapsto e^{x}$ est :",
    r"$\int e^{x}\,\mathrm{d}x=e^{x}+C$.",
    [("$e^{x}$", True), ("$x e^{x}$", False), (r"$\tfrac{e^{x}}{x}$", False), (r"$\ln x$", False)]),
   (r"$\displaystyle\int_1^{e}\frac{1}{x}\,\mathrm{d}x$ vaut :",
    r"$[\ln x]_1^{e}=\ln e-\ln 1=1$.",
    [("$1$", True), ("$e-1$", False), ("$0$", False), ("$e$", False)]),
   (r"Une primitive de $x\mapsto x^{2}$ est :",
    r"$\int x^2\,\mathrm{d}x=\frac{x^3}{3}+C$.",
    [(r"$\dfrac{x^{3}}{3}$", True), ("$2x$", False), ("$x^{3}$", False), (r"$\dfrac{x^{3}}{2}$", False)]),
   (r"$\displaystyle\int_0^1 e^{x}\,\mathrm{d}x$ vaut :",
    r"$[e^{x}]_0^1=e-1$.",
    [("$e-1$", True), ("$e$", False), ("$1-e$", False), ("$1$", False)]),
   (r"Une primitive de $x\mapsto \cos x$ est :",
    r"$\int\cos x\,\mathrm{d}x=\sin x+C$.",
    [(r"$\sin x$", True), (r"$-\sin x$", False), (r"$-\cos x$", False), (r"$\tan x$", False)]),
   (r"$\displaystyle\int_0^2 3\,\mathrm{d}x$ vaut :",
    r"$\int_a^b k\,\mathrm{d}x=k(b-a)=3\times 2=6$.",
    [("$6$", True), ("$3$", False), ("$5$", False), ("$0$", False)]),
   (r"Si $F$ est une primitive de $f$ sur $[a,b]$, alors $\displaystyle\int_a^b f(x)\,\mathrm{d}x$ vaut :",
    r"Théorème fondamental : $F(b)-F(a)$.",
    [("$F(b)-F(a)$", True), ("$F(a)-F(b)$", False),
     ("$f(b)-f(a)$", False), ("$F(b)+F(a)$", False)]),
 ]),
 (1018, "nombres-complexes", "QCM — Nombres complexes : applications", [
   (r"$i^{2}$ vaut :",
    r"Par définition $i^2=-1$.",
    [("$-1$", True), ("$1$", False), ("$i$", False), ("$-i$", False)]),
   (r"Le module $|3+4i|$ vaut :",
    r"$|a+ib|=\sqrt{a^2+b^2}=\sqrt{9+16}=5$.",
    [("$5$", True), ("$7$", False), (r"$\sqrt{7}$", False), ("$25$", False)]),
   (r"Le conjugué de $2-3i$ est :",
    r"$\overline{a+ib}=a-ib$.",
    [("$2+3i$", True), ("$-2+3i$", False), ("$-2-3i$", False), ("$3-2i$", False)]),
   (r"$(1+i)^{2}$ vaut :",
    r"$(1+i)^2=1+2i+i^2=2i$.",
    [("$2i$", True), ("$2$", False), ("$1+2i$", False), ("$-2i$", False)]),
   (r"Le module $|i|$ vaut :",
    r"$|i|=\sqrt{0^2+1^2}=1$.",
    [("$1$", True), ("$0$", False), ("$i$", False), ("$-1$", False)]),
   (r"Une forme exponentielle de $i$ est :",
    r"$i$ a pour module $1$ et argument $\frac{\pi}{2}$.",
    [(r"$e^{i\pi/2}$", True), (r"$e^{i\pi}$", False),
     (r"$e^{i\pi/4}$", False), (r"$e^{-i\pi/2}$", False)]),
   (r"La partie réelle de $2+5i$ est :",
    r"$\mathrm{Re}(a+ib)=a$.",
    [("$2$", True), ("$5$", False), ("$2+5i$", False), ("$7$", False)]),
   (r"Les solutions de $z^{2}=-1$ sont :",
    r"$z^2=-1\iff z=\pm i$.",
    [(r"$i$ et $-i$", True), (r"$1$ et $-1$", False),
     (r"$i$ seulement", False), ("aucune solution", False)]),
 ]),
 (1019, "geometrie-espace", "QCM — Géométrie dans l'espace : applications", [
   (r"Le produit scalaire $\vec{u}(1,0,0)\cdot\vec{v}(0,1,0)$ vaut :",
    r"$x x'+y y'+z z'=0$ : les vecteurs sont orthogonaux.",
    [("$0$", True), ("$1$", False), ("$3$", False), (r"$\sqrt2$", False)]),
   (r"La norme du vecteur $\vec{u}(1,2,2)$ vaut :",
    r"$\|\vec u\|=\sqrt{1+4+4}=3$.",
    [("$3$", True), ("$5$", False), (r"$\sqrt5$", False), ("$9$", False)]),
   (r"Un vecteur normal au plan d'équation $x+2y+3z-1=0$ est :",
    r"Les coefficients donnent $\vec n(1,2,3)$.",
    [(r"$(1,2,3)$", True), (r"$(1,2,3,-1)$", False),
     (r"$(-1,-2,-3)$ uniquement", False), (r"$(0,0,1)$", False)]),
   (r"L'équation de la sphère de centre $O$ et de rayon $2$ est :",
    r"$x^2+y^2+z^2=R^2=4$.",
    [("$x^2+y^2+z^2=4$", True), ("$x^2+y^2+z^2=2$", False),
     ("$x^2+y^2+z^2=16$", False), ("$x+y+z=2$", False)]),
   (r"Deux plans sont parallèles si leurs vecteurs normaux sont :",
    r"Plans parallèles $\iff$ normaux colinéaires.",
    [("colinéaires", True), ("orthogonaux", False),
     ("de norme $1$", False), ("opposés uniquement", False)]),
   (r"$\vec{u}\cdot\vec{v}=0$ (vecteurs non nuls) signifie que $\vec{u}$ et $\vec{v}$ sont :",
    r"Produit scalaire nul $\iff$ orthogonaux.",
    [("orthogonaux", True), ("colinéaires", False),
     ("égaux", False), ("de même norme", False)]),
   (r"Le milieu $I$ de $A(2,0,4)$ et $B(0,2,0)$ a pour coordonnées :",
    r"$I=\left(\frac{2+0}{2},\frac{0+2}{2},\frac{4+0}{2}\right)=(1,1,2)$.",
    [(r"$(1,1,2)$", True), (r"$(2,2,4)$", False),
     (r"$(1,1,4)$", False), (r"$(-1,1,-2)$", False)]),
   (r"Les coordonnées du vecteur $\vec{AB}$ avec $A(1,2,3)$ et $B(4,2,1)$ sont :",
    r"$\vec{AB}=(x_B-x_A,\,y_B-y_A,\,z_B-z_A)=(3,0,-2)$.",
    [(r"$(3,0,-2)$", True), (r"$(-3,0,2)$", False),
     (r"$(5,4,4)$", False), (r"$(3,0,2)$", False)]),
 ]),
 (1020, "probabilites", "QCM — Probabilités : applications", [
   (r"On lance un dé équilibré à 6 faces. La probabilité d'obtenir $6$ est :",
    r"Un cas favorable sur six équiprobables : $\frac{1}{6}$.",
    [(r"$\dfrac{1}{6}$", True), (r"$\dfrac{1}{2}$", False),
     (r"$\dfrac{1}{3}$", False), ("$6$", False)]),
   (r"Si $P(A)=0{,}3$, alors $P(\overline{A})$ vaut :",
    r"$P(\overline A)=1-P(A)=0{,}7$.",
    [("$0{,}7$", True), ("$0{,}3$", False), ("$1$", False), ("$0$", False)]),
   (r"On lance deux pièces équilibrées. La probabilité d'obtenir « deux faces » est :",
    r"$\frac12\times\frac12=\frac14$.",
    [(r"$\dfrac{1}{4}$", True), (r"$\dfrac{1}{2}$", False),
     (r"$\dfrac{1}{3}$", False), ("$1$", False)]),
   (r"Pour deux événements quelconques, $P(A\cup B)$ vaut :",
    r"Formule du crible : $P(A)+P(B)-P(A\cap B)$.",
    [(r"$P(A)+P(B)-P(A\cap B)$", True), (r"$P(A)+P(B)$", False),
     (r"$P(A)\,P(B)$", False), (r"$P(A\cap B)$", False)]),
   (r"Deux événements $A$ et $B$ sont indépendants si :",
    r"Indépendance $\iff P(A\cap B)=P(A)\,P(B)$.",
    [(r"$P(A\cap B)=P(A)\,P(B)$", True), (r"$P(A\cap B)=0$", False),
     (r"$P(A)=P(B)$", False), (r"$P(A\cup B)=1$", False)]),
   (r"On tire une carte d'un jeu de 52. La probabilité qu'elle soit rouge est :",
    r"$\frac{26}{52}=\frac12$.",
    [(r"$\dfrac{1}{2}$", True), (r"$\dfrac{1}{4}$", False),
     (r"$\dfrac{1}{13}$", False), (r"$\dfrac{1}{26}$", False)]),
   (r"La probabilité conditionnelle $P(A\mid B)$ (avec $P(B)>0$) vaut :",
    r"$P(A\mid B)=\dfrac{P(A\cap B)}{P(B)}$.",
    [(r"$\dfrac{P(A\cap B)}{P(B)}$", True), (r"$\dfrac{P(B)}{P(A)}$", False),
     (r"$P(A)\,P(B)$", False), (r"$P(A\cap B)$", False)]),
   (r"L'espérance du nombre obtenu avec un dé équilibré à 6 faces est :",
    r"$E=\frac{1+2+3+4+5+6}{6}=3{,}5$.",
    [("$3{,}5$", True), ("$3$", False), ("$6$", False), ("$1$", False)]),
 ]),
]


def esc(s):
    return s.replace("'", "''")


def main():
    lines = [
        "-- Découpage notions/applications pour tous les chapitres de maths.",
        "-- QCM existants renommés « : notions » + un 2e QCM « : applications » par chapitre.",
        "SET SESSION sql_mode = CONCAT(@@sql_mode, ',NO_BACKSLASH_ESCAPES');",
        "",
    ]
    for qid, titre in RENAMES.items():
        lines.append(f"UPDATE quiz SET titre = '{esc(titre)}' WHERE id = {qid};")
    lines.append("")

    for qid, slug, titre, questions in APPS:
        lines.append(f"SET @l := (SELECT id FROM lecon WHERE slug = '{slug}' "
                     f"AND matiere_id = (SELECT id FROM matiere WHERE slug = 'maths'));")
        lines.append("INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES")
        lines.append(f" ({qid}, NULL, @l, '{esc(titre)}', 'Exercices d''application directe.', 2);")
        qvals, cvals = [], []
        for k, (en, expl, choix) in enumerate(questions, 1):
            quesid = qid * 100 + k
            qvals.append(f" ({quesid},{qid},'{esc(en)}','{esc(expl)}',{k})")
            for j, (txt, ok) in enumerate(choix, 1):
                cvals.append(f" ({quesid*10+j},{quesid},'{esc(txt)}',{'TRUE' if ok else 'FALSE'},{j})")
        lines.append("INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES")
        lines.append(",\n".join(qvals) + ";")
        lines.append("INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES")
        lines.append(",\n".join(cvals) + ";")
        lines.append("")

    with open(OUT, "w", encoding="utf-8") as f:
        f.write("\n".join(lines) + "\n")
    n_q = sum(len(q) for *_, q in APPS)
    print(f"✓ {OUT}\n  {len(APPS)} QCM applications, {n_q} questions, {len(RENAMES)} renommages")


if __name__ == "__main__":
    main()
