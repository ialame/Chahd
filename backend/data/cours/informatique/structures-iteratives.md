## Introduction

Une **structure itérative**, ou **boucle**, permet de répéter un ou plusieurs blocs d'instructions plusieurs fois, sans les réécrire. C'est l'un des outils les plus puissants de la programmation : il évite la répétition du code et permet de traiter de grandes quantités de données. Python propose deux boucles principales : la boucle `for` et la boucle `while`.

## La boucle `for` et `range`

La boucle `for` répète un bloc d'instructions un **nombre connu** de fois. On l'associe le plus souvent à la fonction `range`, qui produit une suite d'entiers.

```python
for i in range(5):
    print(i)        # affiche 0, 1, 2, 3, 4
```

- La variable `i` est la **variable de boucle** : elle prend successivement chaque valeur produite par `range`.
- Le bloc répété est **indenté** (décalé vers la droite, en général 4 espaces).

La fonction `range` s'utilise sous trois formes :

```python
range(n)          # de 0 jusqu'à n-1
range(a, b)       # de a jusqu'à b-1
range(a, b, pas)  # de a jusqu'à b-1, en avançant de "pas"
```

- `range(n)` produit `0, 1, ..., n-1` : la borne `n` est **exclue**.
- `range(a, b)` produit `a, a+1, ..., b-1` : on commence à `a`, et `b` est exclue.
- `range(a, b, pas)` avance d'une valeur égale au **pas** à chaque tour.

```python
for i in range(2, 8):
    print(i)        # affiche 2, 3, 4, 5, 6, 7

for i in range(0, 10, 2):
    print(i)        # affiche 0, 2, 4, 6, 8

for i in range(10, 0, -1):
    print(i)        # affiche 10, 9, 8, ..., 1 (pas négatif)
```

## La boucle `while`

La boucle `while` répète un bloc d'instructions **tant qu'une condition est vraie**. On l'utilise quand on ne connaît pas à l'avance le nombre de répétitions.

```python
n = 1
while n <= 5:
    print(n)
    n = n + 1       # on modifie n pour ne pas boucler indéfiniment
```

- La **condition** est testée avant chaque tour. Si elle est fausse au départ, le bloc n'est jamais exécuté.
- Il faut que la condition finisse par devenir **fausse**, sinon la boucle ne s'arrête jamais : c'est une **boucle infinie**.

```python
# Boucle infinie à éviter :
# while True:
#     print("sans fin")   # rien ne modifie la condition
```

## Compteur et accumulateur

Deux techniques reviennent dans presque toutes les boucles :

- Un **compteur** est une variable qui augmente d'un certain pas à chaque tour, souvent pour **compter** des éléments.
- Un **accumulateur** est une variable qui collecte un résultat au fil des tours (une **somme** ou un **produit** par exemple). On l'initialise **avant** la boucle.

```python
# Accumulateur de somme
somme = 0
for i in range(1, 6):
    somme = somme + i      # on ajoute i à la somme
print(somme)               # 15  (1+2+3+4+5)
```

```python
# Accumulateur de produit
produit = 1                # on initialise à 1, pas à 0
for i in range(1, 5):
    produit = produit * i
print(produit)             # 24  (1*2*3*4)
```

```python
# Compteur : combien de nombres pairs entre 1 et 10 ?
compteur = 0
for i in range(1, 11):
    if i % 2 == 0:
        compteur = compteur + 1
print(compteur)            # 5
```

- Pour une **somme**, l'accumulateur s'initialise à `0`.
- Pour un **produit**, l'accumulateur s'initialise à `1`.

## `break` et `continue`

Deux instructions modifient le déroulement d'une boucle :

- `break` **arrête** complètement la boucle, même si elle n'est pas terminée.
- `continue` **saute** le reste du tour courant et passe directement au tour suivant.

```python
# break : on s'arrête dès qu'on trouve 7
for i in range(1, 100):
    if i == 7:
        break
    print(i)               # affiche 1, 2, 3, 4, 5, 6
```

```python
# continue : on ignore les nombres pairs
for i in range(1, 7):
    if i % 2 == 0:
        continue
    print(i)               # affiche 1, 3, 5
```

## Exemples classiques

**Somme des n premiers entiers** :

```python
n = int(input("Entrez n : "))
somme = 0
for i in range(1, n + 1):
    somme = somme + i
print("La somme est", somme)
```

**Factorielle d'un entier** (`n!` = 1 × 2 × ... × n) :

```python
n = int(input("Entrez n : "))
factorielle = 1
for i in range(1, n + 1):
    factorielle = factorielle * i
print(n, "! =", factorielle)
```

**Table de multiplication** d'un nombre :

```python
nombre = int(input("Quelle table ? "))
for i in range(1, 11):
    print(nombre, "x", i, "=", nombre * i)
```

**Recherche** d'un élément (existe-t-il un diviseur de `n` entre 2 et n-1 ?) :

```python
n = int(input("Entrez n : "))
trouve = False
for d in range(2, n):
    if n % d == 0:
        trouve = True
        break
if trouve:
    print(n, "n'est pas premier")
else:
    print(n, "est premier")
```

\begin{remarque}
À retenir : la boucle `for` sert quand le **nombre de tours est connu** (avec `range`), la boucle `while` quand il dépend d'une **condition**. La borne de droite de `range` est toujours **exclue**. Initialise un accumulateur de **somme** à `0` et de **produit** à `1`. `break` arrête la boucle, `continue` passe au tour suivant. Veille à toujours faire **évoluer la condition** d'un `while` pour éviter une boucle infinie.
\end{remarque}
