## Introduction

Une **liste** (ou tableau à une dimension) permet de regrouper plusieurs valeurs sous un seul nom. Au lieu de créer une variable par valeur, on stocke toutes les valeurs dans une même structure que l'on peut parcourir, modifier et agrandir.

```python
notes = [12, 15, 8, 17, 10]
```

Ici `notes` est une liste de cinq entiers.

## Création d'une liste

On crée une liste en plaçant ses éléments entre **crochets** `[...]`, séparés par des virgules.

```python
vide = []                     # liste vide
nombres = [3, 7, 1, 9]        # liste d'entiers
mots = ["lundi", "mardi"]     # liste de chaînes
mixte = [1, "a", True, 3.5]   # une liste peut mélanger les types
```

- Une liste peut être **vide** : `[]`.
- Les éléments gardent l'**ordre** dans lequel on les a écrits.

## Les indices

Chaque élément d'une liste est repéré par un **indice** (sa position). En Python, les indices commencent à **0** : le premier élément a l'indice 0, le deuxième l'indice 1, etc.

```python
t = [10, 20, 30, 40]
#    0   1   2   3      <- indices
```

On **accède** à un élément avec la syntaxe `t[i]` :

```python
print(t[0])   # 10  (premier élément)
print(t[2])   # 30  (troisième élément)
```

On peut aussi **modifier** un élément en lui affectant une nouvelle valeur :

```python
t[1] = 99
print(t)      # [10, 99, 30, 40]
```

- Les indices valides vont de **0** à **len(t) - 1**.
- Python autorise les **indices négatifs** : `t[-1]` est le dernier élément, `t[-2]` l'avant-dernier.

## La longueur d'une liste

La fonction `len(t)` renvoie le **nombre d'éléments** de la liste.

```python
t = [10, 20, 30, 40]
print(len(t))   # 4
```

Comme les indices vont de 0 à `len(t) - 1`, le dernier élément est `t[len(t) - 1]`.

## Parcourir une liste

Pour traiter tous les éléments, on utilise une boucle. Deux manières sont possibles.

**Parcours par indice** : la boucle fait varier l'indice `i` de 0 à `len(t) - 1`.

```python
t = [10, 20, 30]
for i in range(len(t)):
    print(i, t[i])
```

**Parcours par élément** : la boucle prend directement chaque valeur `x` de la liste.

```python
t = [10, 20, 30]
for x in t:
    print(x)
```

- Le parcours **par indice** est utile quand on a besoin de la position (par exemple pour modifier `t[i]`).
- Le parcours **par élément** est plus simple quand on veut seulement lire les valeurs.

## Ajouter un élément

La méthode `append` ajoute une valeur **à la fin** de la liste. Elle est très utile pour construire une liste petit à petit.

```python
t = []
for i in range(5):
    t.append(i * i)
print(t)   # [0, 1, 4, 9, 16]
```

## Somme et moyenne

On parcourt la liste en cumulant les valeurs dans un **accumulateur**.

```python
t = [12, 15, 8, 17, 10]
s = 0
for x in t:
    s = s + x
moyenne = s / len(t)
print(s, moyenne)   # 62 12.4
```

La fonction `sum(t)` calcule directement la somme : `sum(t) / len(t)` donne la moyenne.

## Minimum et maximum

On peut chercher la plus petite (ou la plus grande) valeur en parcourant la liste.

```python
t = [12, 15, 8, 17, 10]
mini = t[0]
for x in t:
    if x < mini:
        mini = x
print(mini)   # 8
```

Les fonctions `min(t)` et `max(t)` donnent directement le minimum et le maximum.

## Rechercher un élément

La **recherche séquentielle** consiste à parcourir la liste jusqu'à trouver la valeur cherchée.

```python
t = [4, 8, 15, 16, 23]
cible = 15
trouve = False
for i in range(len(t)):
    if t[i] == cible:
        trouve = True
print(trouve)   # True
```

- L'opérateur `in` teste plus simplement la présence : `cible in t` vaut `True` ou `False`.

## Compter des éléments

On utilise un **compteur** que l'on incrémente quand une condition est vérifiée.

```python
t = [12, 15, 8, 17, 10]
nb = 0
for x in t:
    if x >= 10:
        nb = nb + 1
print(nb)   # 4  (notes supérieures ou égales à 10)
```

## Le slicing (tranches)

La **tranche** `t[a:b]` renvoie une **nouvelle liste** contenant les éléments des indices `a` (inclus) à `b` (exclu).

```python
t = [10, 20, 30, 40, 50]
print(t[1:4])   # [20, 30, 40]
print(t[:3])    # [10, 20, 30]  (du début à l'indice 2)
print(t[2:])    # [30, 40, 50]  (de l'indice 2 à la fin)
```

- Si on omet `a`, la tranche commence au début ; si on omet `b`, elle va jusqu'à la fin.
- L'indice `b` est **exclu** : `t[1:4]` ne contient pas `t[4]`.

\begin{remarque}
À retenir : les indices commencent à **0** et vont jusqu'à **len(t) - 1**. Accéder à `t[len(t)]` provoque une erreur. La méthode `append` ajoute à la fin ; la tranche `t[a:b]` inclut `a` mais **exclut** `b`. Pour parcourir, choisis `for i in range(len(t))` si tu as besoin de l'indice, sinon `for x in t`.
\end{remarque}
