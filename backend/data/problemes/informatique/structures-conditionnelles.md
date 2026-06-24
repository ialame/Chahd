### Problème 1 : Tarification d'un parking
\begin{enonce}
Un parking applique le tarif suivant en fonction de la durée de stationnement, en minutes :
\begin{enumerate}
    \item les 15 premières minutes sont gratuites ;
    \item de 16 à 60 minutes : 2 dirhams ;
    \item au-delà d'une heure : 2 dirhams pour la première heure, puis 3 dirhams par heure **entamée** supplémentaire ;
    \item le tarif est **plafonné** à 20 dirhams par jour.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item On commence par les deux cas simples, traités avec un `if / elif` :
```python
def tarif(minutes):
    if minutes <= 15:
        return 0
    elif minutes <= 60:
        return 2
    # cas au-delà d'une heure : traité ensuite
```
    \item Pour le cas général, on compte le nombre d'heures **entamées** au-delà de la première. La quantité `minutes - 60` correspond au temps après la première heure ; le nombre d'heures entamées s'obtient en divisant par 60 en arrondissant **vers le haut**, ce que réalise `(minutes - 60 + 59) // 60` :
```python
def tarif(minutes):
    if minutes <= 15:
        prix = 0
    elif minutes <= 60:
        prix = 2
    else:
        heures_sup = (minutes - 60 + 59) // 60
        prix = 2 + 3 * heures_sup
    if prix > 20:
        prix = 20
    return prix
```
    \item Le dernier `if` applique le **plafond** : quel que soit le calcul précédent, on ne dépasse jamais 20 dirhams. On vérifie : `tarif(10)` donne `0`, `tarif(45)` donne `2`, `tarif(61)` donne `5` (une heure entamée en plus), `tarif(120)` donne `5` aussi (2 heures pile, soit une heure supplémentaire entamée), et `tarif(600)` donne `20` (plafond atteint).
\end{enumerate}

### Problème 2 : Résolution d'une équation du second degré
\begin{enonce}
On veut résoudre dans $\mathbb{R}$ l'équation $ax^2 + bx + c = 0$.
\begin{enumerate}
    \item Écrire une fonction `discriminant(a, b, c)` qui renvoie la valeur du discriminant $\Delta = b^2 - 4ac$.
    \item Écrire une fonction `nb_solutions(a, b, c)` qui, dans le cas $a \neq 0$, renvoie le nombre de solutions réelles (0, 1 ou 2) selon le signe du discriminant.
    \item Écrire une fonction `resoudre(a, b, c)` qui renvoie la liste des solutions réelles, en supposant $a \neq 0$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Application directe de la formule :
```python
def discriminant(a, b, c):
    return b * b - 4 * a * c
```
    \item Le nombre de solutions dépend du **signe** de $\Delta$ : deux si positif, une (racine double) si nul, aucune si négatif. On enchaîne un `if / elif / else` :
```python
def nb_solutions(a, b, c):
    delta = discriminant(a, b, c)
    if delta > 0:
        return 2
    elif delta == 0:
        return 1
    else:
        return 0
```
    \item On réutilise le discriminant et on construit la liste des racines correspondantes. La racine carrée s'obtient avec `delta ** 0.5` :
```python
def resoudre(a, b, c):
    delta = discriminant(a, b, c)
    if delta < 0:
        return []
    elif delta == 0:
        return [-b / (2 * a)]
    else:
        racine = delta ** 0.5
        x1 = (-b - racine) / (2 * a)
        x2 = (-b + racine) / (2 * a)
        return [x1, x2]
```
Pour $x^2 - 3x + 2 = 0$, soit `resoudre(1, -3, 2)`, le discriminant vaut `1`, donc la fonction renvoie `[1.0, 2.0]`. Pour `resoudre(1, 2, 1)`, $\Delta = 0$ et on obtient la racine double `[-1.0]`. Pour `resoudre(1, 0, 1)`, $\Delta = -4 < 0$ et on renvoie `[]`.
\end{enumerate}

### Problème 3 : Classification d'un point dans le plan
\begin{enonce}
On repère un point du plan par ses coordonnées `(x, y)`.
\begin{enumerate}
    \item Écrire une fonction `quadrant(x, y)` qui renvoie le numéro du quadrant (1, 2, 3 ou 4) auquel appartient le point, ou la chaîne `"axe"` si le point est situé sur l'un des axes (l'une des coordonnées au moins est nulle). On rappelle que le quadrant 1 correspond à $x > 0$ et $y > 0$, le quadrant 2 à $x < 0$ et $y > 0$, le quadrant 3 à $x < 0$ et $y < 0$, et le quadrant 4 à $x > 0$ et $y < 0$.
    \item Écrire une fonction `dans_disque(x, y, r)` qui renvoie `True` si le point est à l'intérieur (ou sur le bord) du disque de centre l'origine et de rayon `r`, et `False` sinon.
    \item En utilisant les deux fonctions précédentes, écrire `decrire(x, y, r)` qui renvoie une chaîne décrivant le point, par exemple `"quadrant 1, dans le disque"` ou `"sur un axe, hors du disque"`.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item On commence par écarter le cas des axes, ce qui garantit ensuite que `x` et `y` sont tous deux non nuls. On distingue alors les quadrants par le signe de chaque coordonnée, avec des conditions composées :
```python
def quadrant(x, y):
    if x == 0 or y == 0:
        return "axe"
    elif x > 0 and y > 0:
        return 1
    elif x < 0 and y > 0:
        return 2
    elif x < 0 and y < 0:
        return 3
    else:
        return 4
```
Le `else` final couvre le seul cas restant, `x > 0 and y < 0`, soit le quadrant 4.
    \item Un point est dans le disque de rayon `r` si sa distance à l'origine $\sqrt{x^2 + y^2}$ est inférieure ou égale à `r`. Pour éviter la racine carrée, on compare les **carrés** :
```python
def dans_disque(x, y, r):
    return x * x + y * y <= r * r
```
    \item On combine les deux résultats en construisant la phrase morceau par morceau :
```python
def decrire(x, y, r):
    q = quadrant(x, y)
    if q == "axe":
        position = "sur un axe"
    else:
        position = "quadrant " + str(q)
    if dans_disque(x, y, r):
        disque = "dans le disque"
    else:
        disque = "hors du disque"
    return position + ", " + disque
```
Par exemple `decrire(3, 4, 5)` renvoie `"quadrant 1, dans le disque"` (car $3^2 + 4^2 = 25 = 5^2$, le point est sur le bord), tandis que `decrire(0, 7, 5)` renvoie `"sur un axe, hors du disque"`.
\end{enumerate}
