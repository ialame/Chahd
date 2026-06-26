Résoudre une équation, c'est déterminer toutes les valeurs de l'inconnue qui rendent l'égalité vraie ; résoudre une inéquation, c'est trouver toutes celles qui satisfont une comparaison. Ce chapitre du Tronc Commun rassemble les techniques essentielles de résolution dans $\mathbb{R}$ : équations du premier et du second degré, équations produit et quotient, inéquations et tableaux de signes, puis systèmes de deux équations à deux inconnues et systèmes d'inéquations. Ces outils sont fondamentaux : ils interviennent dans tous les autres chapitres (géométrie analytique, fonctions, trigonométrie) et constituent le langage de base de toute modélisation mathématique.

## Vocabulaire et principes généraux

\begin{definition}[Équation, inconnue, solution]
Une **équation** d'inconnue $x$ est une égalité entre deux expressions dont l'une au moins dépend de $x$. Une valeur de $x$ qui rend l'égalité vraie est une **solution** de l'équation. **Résoudre** l'équation, c'est déterminer l'ensemble de toutes ses solutions, noté $S$.
\end{definition}

\begin{propriete}[Équations équivalentes]
Deux équations sont **équivalentes** lorsqu'elles ont le même ensemble de solutions. On obtient une équation équivalente lorsque :
\begin{itemize}
    \item on ajoute (ou retranche) un même nombre, ou une même expression, aux deux membres ;
    \item on multiplie (ou divise) les deux membres par un même nombre **non nul**.
\end{itemize}
Ce sont ces opérations qui permettent d'isoler progressivement l'inconnue.
\end{propriete}

\begin{important}
Multiplier les deux membres par une quantité qui dépend de $x$ (ou qui peut être nulle) risque d'ajouter ou de perdre des solutions. Il faut alors préciser les **conditions d'existence** et vérifier les valeurs trouvées.
\end{important}

## Équation du premier degré

\begin{definition}[Équation du premier degré]
Une **équation du premier degré** à une inconnue $x$ est une équation qui peut se ramener à la forme :
$$ax + b = 0 \quad \text{avec} \quad a \neq 0.$$
\end{definition}

\begin{theoreme}[Résolution]
L'équation $ax + b = 0$, avec $a \neq 0$, admet une **unique** solution :
$$x = -\dfrac{b}{a}, \qquad \text{donc} \qquad S = \left\{ -\dfrac{b}{a} \right\}.$$
\end{theoreme}

\begin{propriete}[Cas particuliers]
Pour l'équation $ax + b = 0$ :
\begin{itemize}
    \item si $a \neq 0$ : une unique solution $x = -\dfrac{b}{a}$ ;
    \item si $a = 0$ et $b \neq 0$ : aucune solution, $S = \varnothing$ ;
    \item si $a = 0$ et $b = 0$ : tout réel est solution, $S = \mathbb{R}$.
\end{itemize}
\end{propriete}

\begin{exemple}
Résolvons $3(x - 2) = 5x + 4$. On développe : $3x - 6 = 5x + 4$, puis $3x - 5x = 4 + 6$, soit $-2x = 10$, d'où $x = -5$. Donc $S = \{-5\}$.
\end{exemple}

## Équation du second degré

\begin{definition}[Équation du second degré]
Une **équation du second degré** à une inconnue $x$ est une équation qui se ramène à la forme :
$$ax^2 + bx + c = 0 \quad \text{avec} \quad a \neq 0.$$
Les réels $a$, $b$, $c$ sont les **coefficients** de l'équation.
\end{definition}

\begin{definition}[Discriminant]
On appelle **discriminant** de l'équation $ax^2 + bx + c = 0$ le nombre réel :
$$\Delta = b^2 - 4ac.$$
\end{definition}

\begin{theoreme}[Résolution par le discriminant]
On considère l'équation $ax^2 + bx + c = 0$ avec $a \neq 0$ et $\Delta = b^2 - 4ac$.
\begin{itemize}
    \item Si $\Delta > 0$ : deux solutions réelles distinctes
    $$x_1 = \dfrac{-b - \sqrt{\Delta}}{2a} \qquad \text{et} \qquad x_2 = \dfrac{-b + \sqrt{\Delta}}{2a}.$$
    \item Si $\Delta = 0$ : une unique solution (dite **double**)
    $$x_0 = -\dfrac{b}{2a}.$$
    \item Si $\Delta < 0$ : aucune solution réelle, $S = \varnothing$.
\end{itemize}
\end{theoreme}

\begin{exemple}
Résolvons $2x^2 - 5x + 2 = 0$. Ici $a = 2$, $b = -5$, $c = 2$, donc
$$\Delta = (-5)^2 - 4 \times 2 \times 2 = 25 - 16 = 9 > 0.$$
Comme $\sqrt{\Delta} = 3$, on obtient $x_1 = \dfrac{5 - 3}{4} = \dfrac{1}{2}$ et $x_2 = \dfrac{5 + 3}{4} = 2$. Donc $S = \left\{ \dfrac{1}{2}\,;\, 2 \right\}$.
\end{exemple}

\begin{propriete}[Factorisation et somme-produit]
Lorsque $\Delta \ge 0$ et que $x_1$, $x_2$ sont les racines (éventuellement confondues), on a la **factorisation** :
$$ax^2 + bx + c = a(x - x_1)(x - x_2).$$
De plus les racines vérifient :
$$x_1 + x_2 = -\dfrac{b}{a} \qquad \text{et} \qquad x_1 \times x_2 = \dfrac{c}{a}.$$
\end{propriete}

\begin{methode}[Reconnaître des cas simples]
Avant de calculer $\Delta$, on observe l'équation $ax^2 + bx + c = 0$ :
\begin{itemize}
    \item si $c = 0$ : on factorise par $x$, soit $x(ax + b) = 0$, d'où $x = 0$ ou $x = -\dfrac{b}{a}$ ;
    \item si $b = 0$ : l'équation $ax^2 + c = 0$ donne $x^2 = -\dfrac{c}{a}$, résoluble seulement si $-\dfrac{c}{a} \ge 0$ ;
    \item si les coefficients sont « lisibles », on peut deviner une racine évidente puis utiliser la somme-produit.
\end{itemize}
\end{methode}

## Équations produit et quotient

\begin{theoreme}[Équation produit nul]
Un produit de facteurs est nul si et seulement si l'un au moins de ses facteurs est nul :
$$A \times B = 0 \iff A = 0 \quad \text{ou} \quad B = 0.$$
\end{theoreme}

\begin{exemple}
Résolvons $(2x - 6)(x + 4) = 0$. On a $2x - 6 = 0$ ou $x + 4 = 0$, soit $x = 3$ ou $x = -4$. Donc $S = \{-4\,;\, 3\}$.
\end{exemple}

\begin{theoreme}[Équation quotient nul]
Sous la **condition d'existence** $B \neq 0$ :
$$\dfrac{A}{B} = 0 \iff A = 0 \quad \text{et} \quad B \neq 0.$$
Un quotient est nul lorsque son numérateur est nul et que son dénominateur ne l'est pas.
\end{theoreme}

\begin{methode}[Résoudre une équation quotient]
\begin{itemize}
    \item Déterminer les **valeurs interdites** en posant $B \neq 0$.
    \item Résoudre $A = 0$.
    \item Conserver uniquement les solutions de $A = 0$ qui ne sont pas des valeurs interdites.
\end{itemize}
\end{methode}

\begin{exemple}
Résolvons $\dfrac{x^2 - 9}{x - 1} = 0$. Condition d'existence : $x \neq 1$. Le numérateur s'annule pour $x^2 - 9 = 0$, soit $x = 3$ ou $x = -3$. Aucune de ces valeurs n'est interdite, donc $S = \{-3\,;\, 3\}$.
\end{exemple}

## Inéquations et signe d'une expression

\begin{definition}[Inéquation]
Une **inéquation** d'inconnue $x$ est une comparaison ($<$, $\le$, $>$ ou $\ge$) entre deux expressions. Résoudre l'inéquation, c'est déterminer l'ensemble des réels qui la vérifient.
\end{definition}

\begin{important}
Lorsqu'on multiplie ou divise les deux membres d'une inéquation par un nombre **négatif**, on doit **changer le sens** de l'inégalité. C'est l'erreur la plus fréquente : par exemple $-2x < 6$ équivaut à $x > -3$.
\end{important}

\begin{theoreme}[Signe de $ax + b$]
Soit $a \neq 0$. L'expression $ax + b$ s'annule en $x = -\dfrac{b}{a}$, et :
\begin{itemize}
    \item elle est du **signe de $a$** pour $x > -\dfrac{b}{a}$ ;
    \item elle est du **signe opposé à $a$** pour $x < -\dfrac{b}{a}$.
\end{itemize}
\end{theoreme}

\begin{theoreme}[Signe de $ax^2 + bx + c$]
Soit $a \neq 0$ et $\Delta = b^2 - 4ac$.
\begin{itemize}
    \item Si $\Delta < 0$ : le trinôme est **toujours du signe de $a$** (jamais nul).
    \item Si $\Delta = 0$ : le trinôme est du signe de $a$, et s'annule en $x_0 = -\dfrac{b}{2a}$.
    \item Si $\Delta > 0$ : entre les racines $x_1$ et $x_2$, le trinôme est du **signe opposé à $a$** ; à l'extérieur de $[x_1\,;\,x_2]$, il est du **signe de $a$**.
\end{itemize}
On résume cela par la règle : « le trinôme est du signe de $a$ partout, sauf entre les racines ».
\end{theoreme}

\begin{methode}[Résoudre une inéquation avec un tableau de signes]
\begin{itemize}
    \item Ramener l'inéquation à une comparaison à $0$ (tous les termes d'un même côté).
    \item Factoriser l'expression et repérer les valeurs qui annulent chaque facteur.
    \item Dresser un **tableau de signes** : une colonne par valeur remarquable, une ligne par facteur, une ligne pour le produit (ou le quotient).
    \item Lire l'ensemble solution selon le signe demandé, en tenant compte des valeurs interdites pour un quotient.
\end{itemize}
\end{methode}

\begin{exemple}
Résolvons $x^2 - x - 6 \le 0$. On a $\Delta = 1 + 24 = 25$, donc $x_1 = -2$ et $x_2 = 3$, avec $a = 1 > 0$. Le trinôme est négatif entre les racines, donc $S = [-2\,;\, 3]$.
\end{exemple}

## Systèmes de deux équations à deux inconnues

\begin{definition}[Système linéaire $2 \times 2$]
Un **système de deux équations du premier degré** à deux inconnues $x$ et $y$ s'écrit :
$$\begin{cases} ax + by = c \\ a'x + b'y = c' \end{cases}$$
Un **couple** $(x\,;\,y)$ est solution s'il vérifie **simultanément** les deux équations.
\end{definition}

\begin{methode}[Résolution par substitution]
On exprime une inconnue en fonction de l'autre à partir d'une équation, puis on **remplace** cette expression dans la seconde équation, qui ne contient plus qu'une seule inconnue.
\end{methode}

\begin{methode}[Résolution par combinaison linéaire]
On multiplie chaque équation par un facteur bien choisi pour que les coefficients d'une même inconnue soient **opposés**, puis on **ajoute** les deux équations afin d'éliminer cette inconnue.
\end{methode}

\begin{exemple}
Résolvons par substitution $\begin{cases} 2x + 3y = 8 \\ x - y = 1 \end{cases}$. La seconde équation donne $x = y + 1$. En reportant dans la première : $2(y + 1) + 3y = 8$, soit $5y + 2 = 8$, d'où $5y = 6$ et $y = \dfrac{6}{5}$. Alors $x = y + 1 = \dfrac{11}{5}$. Donc $S = \left\{\left(\dfrac{11}{5}\,;\,\dfrac{6}{5}\right)\right\}$.
\end{exemple}

\begin{definition}[Déterminant d'un système]
On appelle **déterminant** du système $\begin{cases} ax + by = c \\ a'x + b'y = c' \end{cases}$ le nombre :
$$\det = \begin{vmatrix} a & b \\ a' & b' \end{vmatrix} = ab' - a'b.$$
\end{definition}

\begin{theoreme}[Méthode de Cramer]
Lorsque $\det = ab' - a'b \neq 0$, le système admet un **unique** couple solution :
$$x = \dfrac{\begin{vmatrix} c & b \\ c' & b' \end{vmatrix}}{\det} = \dfrac{cb' - c'b}{ab' - a'b}, \qquad y = \dfrac{\begin{vmatrix} a & c \\ a' & c' \end{vmatrix}}{\det} = \dfrac{ac' - a'c}{ab' - a'b}.$$
\end{theoreme}

\begin{propriete}[Discussion selon le déterminant]
\begin{itemize}
    \item Si $\det \neq 0$ : une unique solution (droites sécantes).
    \item Si $\det = 0$ et le système est incompatible : aucune solution, $S = \varnothing$ (droites strictement parallèles).
    \item Si $\det = 0$ et les deux équations sont proportionnelles : une infinité de solutions (droites confondues).
\end{itemize}
\end{propriete}

\begin{exemple}
Pour $\begin{cases} 2x + 3y = 8 \\ x - y = 1 \end{cases}$, on a $\det = 2 \times (-1) - 1 \times 3 = -5 \neq 0$. Alors
$$x = \dfrac{8 \times (-1) - 1 \times 3}{-5} = \dfrac{-11}{-5} = \dfrac{11}{5}, \qquad y = \dfrac{2 \times 1 - 1 \times 8}{-5} = \dfrac{-6}{-5} = \dfrac{6}{5}.$$
On retrouve $S = \left\{\left(\dfrac{11}{5}\,;\,\dfrac{6}{5}\right)\right\}$.
\end{exemple}

## Systèmes d'inéquations et résolution graphique

\begin{definition}[Système d'inéquations]
Résoudre un **système d'inéquations** à une inconnue, c'est trouver les réels qui vérifient **toutes** les inéquations à la fois. L'ensemble solution est l'**intersection** des ensembles solutions de chaque inéquation.
\end{definition}

\begin{exemple}
Résolvons $\begin{cases} 2x - 1 \ge 3 \\ 5 - x > 0 \end{cases}$. La première donne $x \ge 2$, la seconde $x < 5$. L'intersection est $S = [2\,;\, 5[$.
\end{exemple}

\begin{methode}[Résolution graphique]
On peut interpréter géométriquement équations et inéquations :
\begin{itemize}
    \item une équation $ax + by = c$ (avec $a$ ou $b$ non nul) représente une **droite** dans le plan ;
    \item résoudre un système $2 \times 2$ revient à chercher le **point d'intersection** de deux droites ;
    \item une inéquation $ax + by \le c$ correspond à un **demi-plan** ; un système d'inéquations à deux inconnues délimite alors une région du plan (intersection des demi-plans).
\end{itemize}
La lecture graphique fournit une vérification ou une estimation, que le calcul vient confirmer avec exactitude.
\end{methode}

\begin{important}
La méthode graphique illustre et contrôle les résultats, mais elle reste **approximative** : seule la résolution algébrique (substitution, combinaison, déterminant, discriminant) garantit des solutions exactes.
\end{important}
