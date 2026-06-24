## Introduction

Manipuler des **listes** est une tâche courante en programmation : il faut souvent **rechercher** un élément dans une liste, ou **trier** ses éléments. Ce chapitre présente les algorithmes classiques de recherche (séquentielle, dichotomique) et de tri (sélection, à bulles, insertion), avec leur code Python et un exemple de déroulement.

## La recherche séquentielle

La **recherche séquentielle** (ou linéaire) consiste à **parcourir** la liste élément par élément, du début jusqu'à trouver la valeur cherchée. C'est la méthode la plus simple : elle ne demande aucune condition sur la liste.

```python
def recherche_sequentielle(liste, valeur):
    for i in range(len(liste)):
        if liste[i] == valeur:
            return i        # position trouvée
    return -1               # valeur absente
```

- On renvoie l'**indice** de la première occurrence trouvée.
- On renvoie `-1` (par convention) si la valeur n'est pas dans la liste.

**Exemple de déroulement** pour chercher `7` dans `[3, 8, 7, 1]` :

- `i = 0` : `liste[0]` vaut `3` ≠ `7`, on continue.
- `i = 1` : `liste[1]` vaut `8` ≠ `7`, on continue.
- `i = 2` : `liste[2]` vaut `7` = `7`, on **renvoie 2**.

Dans le pire des cas (valeur absente), il faut parcourir **toute** la liste : autant de comparaisons que d'éléments.

## La recherche dichotomique

La **recherche dichotomique** fonctionne uniquement sur une liste **triée**. Le principe est de **diviser en deux** : on compare la valeur cherchée à l'élément du **milieu**, ce qui permet d'éliminer la moitié de la liste à chaque étape.

- Si la valeur du milieu est la bonne, c'est terminé.
- Si la valeur cherchée est **plus petite**, elle ne peut être que dans la **moitié gauche**.
- Si elle est **plus grande**, elle ne peut être que dans la **moitié droite**.

```python
def recherche_dichotomique(liste, valeur):
    gauche = 0
    droite = len(liste) - 1
    while gauche <= droite:
        milieu = (gauche + droite) // 2
        if liste[milieu] == valeur:
            return milieu
        elif liste[milieu] < valeur:
            gauche = milieu + 1     # on garde la moitié droite
        else:
            droite = milieu - 1     # on garde la moitié gauche
    return -1
```

**Exemple de déroulement** pour chercher `7` dans la liste triée `[1, 3, 7, 8, 9]` :

- `gauche = 0`, `droite = 4`, `milieu = 2` : `liste[2]` vaut `7` = `7`, on **renvoie 2**.

Pour chercher `9` dans la même liste :

- `gauche = 0`, `droite = 4`, `milieu = 2` : `liste[2]` vaut `7` < `9`, donc `gauche = 3`.
- `gauche = 3`, `droite = 4`, `milieu = 3` : `liste[3]` vaut `8` < `9`, donc `gauche = 4`.
- `gauche = 4`, `droite = 4`, `milieu = 4` : `liste[4]` vaut `9` = `9`, on **renvoie 4**.

## Efficacité : dichotomique contre séquentielle

À chaque étape, la dichotomie **divise par deux** le nombre d'éléments à examiner. Pour une liste d'un million d'éléments, la recherche séquentielle peut demander un million de comparaisons, tandis que la dichotomie en demande au plus une **vingtaine** : elle est **bien plus rapide**. En contrepartie, elle exige une liste **déjà triée**.

## Le tri par sélection

Le **tri par sélection** consiste, à chaque étape, à **chercher le plus petit** élément de la partie non triée et à le placer à sa position définitive (en l'**échangeant** avec le premier élément de cette partie).

```python
def tri_selection(liste):
    n = len(liste)
    for i in range(n - 1):
        i_min = i
        for j in range(i + 1, n):
            if liste[j] < liste[i_min]:
                i_min = j
        liste[i], liste[i_min] = liste[i_min], liste[i]  # échange
    return liste
```

**Exemple de déroulement** sur `[5, 2, 4, 1]` :

- Plus petit parmi tous : `1` (indice 3), échange avec l'indice 0 → `[1, 2, 4, 5]`.
- Plus petit à partir de l'indice 1 : `2`, déjà en place → `[1, 2, 4, 5]`.
- Plus petit à partir de l'indice 2 : `4`, déjà en place → `[1, 2, 4, 5]`.

## Le tri à bulles

Le **tri à bulles** (bubble sort) compare des éléments **voisins** et les **échange** s'ils sont dans le mauvais ordre. À chaque parcours, le plus grand élément « remonte » comme une bulle vers la fin de la liste.

```python
def tri_bulles(liste):
    n = len(liste)
    for i in range(n - 1):
        for j in range(n - 1 - i):
            if liste[j] > liste[j + 1]:
                liste[j], liste[j + 1] = liste[j + 1], liste[j]  # échange
    return liste
```

**Exemple de déroulement** (premier parcours) sur `[5, 2, 4, 1]` :

- Comparer `5` et `2` : ordre mauvais, échange → `[2, 5, 4, 1]`.
- Comparer `5` et `4` : ordre mauvais, échange → `[2, 4, 5, 1]`.
- Comparer `5` et `1` : ordre mauvais, échange → `[2, 4, 1, 5]`.

Le plus grand (`5`) est arrivé à la fin. Les parcours suivants trient le reste.

## Le tri par insertion

Le **tri par insertion** prend les éléments un par un et **insère** chacun à sa **bonne place** parmi les éléments déjà triés à sa gauche. C'est la méthode que l'on utilise instinctivement pour trier des cartes à jouer.

```python
def tri_insertion(liste):
    for i in range(1, len(liste)):
        cle = liste[i]
        j = i - 1
        while j >= 0 and liste[j] > cle:
            liste[j + 1] = liste[j]   # on décale vers la droite
            j = j - 1
        liste[j + 1] = cle            # on insère la clé
    return liste
```

**Exemple de déroulement** sur `[5, 2, 4, 1]` :

- `cle = 2` : on décale `5`, on insère `2` → `[2, 5, 4, 1]`.
- `cle = 4` : on décale `5`, on insère `4` → `[2, 4, 5, 1]`.
- `cle = 1` : on décale `5`, `4`, `2`, on insère `1` → `[1, 2, 4, 5]`.

\begin{remarque}
À retenir : la **recherche dichotomique** n'est utilisable que sur une liste **triée**, mais elle est **bien plus rapide** que la **séquentielle** car elle divise le problème par deux à chaque étape. Les trois tris vus (**sélection**, **à bulles**, **insertion**) reposent tous sur des **comparaisons** et des **échanges** entre éléments de la liste.
\end{remarque}
