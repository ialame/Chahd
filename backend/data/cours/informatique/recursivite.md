## Introduction

La **récursivité** est une technique de programmation dans laquelle une **fonction s'appelle elle-même** pour résoudre un problème. L'idée est de ramener un problème à une version plus petite du même problème, jusqu'à atteindre un cas simple que l'on sait résoudre directement.

## Une fonction récursive

Une **fonction récursive** est une fonction dont la définition contient un appel à elle-même. Pour qu'elle se termine, elle doit toujours comporter deux parties :

- le **cas de base** : la condition d'arrêt, qui donne un résultat sans nouvel appel récursif ;
- le **cas récursif** : la partie qui rappelle la fonction avec des données plus petites, en se rapprochant du cas de base.

```python
def compte_a_rebours(n):
    if n == 0:              # cas de base
        print("Partez !")
    else:                   # cas récursif
        print(n)
        compte_a_rebours(n - 1)
```

À chaque appel, `n` diminue de 1 : on se rapproche du cas de base `n == 0`.

## Le risque de récursion infinie

Si le **cas de base** est absent ou jamais atteint, la fonction s'appelle indéfiniment : c'est une **récursion infinie**. Python finit par arrêter le programme avec l'erreur `RecursionError` (la pile d'appels est saturée).

```python
def boucle(n):
    print(n)
    boucle(n + 1)    # ne s'arrête jamais : pas de cas de base !
```

- Vérifie toujours qu'il existe un **cas de base**.
- Vérifie que chaque appel récursif **progresse** vers ce cas de base.

## La factorielle

La **factorielle** de `n` est le produit des entiers de 1 à `n`. Sa définition récursive est : `n! = n * (n-1)!` avec `0! = 1`.

```python
def factorielle(n):
    if n == 0:               # cas de base
        return 1
    return n * factorielle(n - 1)   # cas récursif

print(factorielle(5))    # 120
```

## La somme de 1 à n

On peut additionner les entiers de 1 à `n` de façon récursive : la somme de 1 à `n` vaut `n` plus la somme de 1 à `n-1`.

```python
def somme(n):
    if n == 0:               # cas de base
        return 0
    return n + somme(n - 1)  # cas récursif

print(somme(4))    # 10  (1 + 2 + 3 + 4)
```

## La puissance

Pour calculer `x` puissance `n`, on utilise : `x**n = x * x**(n-1)`, avec `x**0 = 1`.

```python
def puissance(x, n):
    if n == 0:                    # cas de base
        return 1
    return x * puissance(x, n - 1)   # cas récursif

print(puissance(2, 10))    # 1024
```

## La suite de Fibonacci

La **suite de Fibonacci** est définie par `F(0) = 0`, `F(1) = 1`, et `F(n) = F(n-1) + F(n-2)` pour `n >= 2`. Elle possède **deux cas de base** et le cas récursif fait **deux appels**.

```python
def fibonacci(n):
    if n == 0:               # cas de base
        return 0
    if n == 1:               # cas de base
        return 1
    return fibonacci(n - 1) + fibonacci(n - 2)   # cas récursif

print(fibonacci(7))    # 13
```

## Le PGCD

Le **plus grand commun diviseur** se calcule par l'algorithme d'Euclide, naturellement récursif : `pgcd(a, b) = pgcd(b, a % b)`, et `pgcd(a, 0) = a`.

```python
def pgcd(a, b):
    if b == 0:               # cas de base
        return a
    return pgcd(b, a % b)    # cas récursif

print(pgcd(48, 36))    # 12
```

## Récursif ou itératif ?

Tout calcul récursif peut aussi s'écrire avec une **boucle** : c'est la version **itérative**. Les deux donnent le même résultat.

```python
# Factorielle itérative
def factorielle_iter(n):
    resultat = 1
    for i in range(2, n + 1):
        resultat = resultat * i
    return resultat
```

| Aspect | Récursif | Itératif |
|---|---|---|
| Lisibilité | proche de la définition mathématique | parfois plus long |
| Mémoire | consomme la **pile** d'appels | mémoire constante |
| Risque | `RecursionError` si trop d'appels | aucun débordement de pile |
| Vitesse | souvent plus lent (appels) | souvent plus rapide |

- La version **récursive** est souvent plus **élégante** et plus proche de la définition du problème.
- La version **itérative** est souvent plus **efficace** en mémoire et en temps.

\begin{remarque}
À retenir : une fonction récursive **s'appelle elle-même**. Elle doit toujours posséder un **cas de base** (condition d'arrêt) et un **cas récursif** qui se rapproche de ce cas de base. Sans cas de base, on obtient une **récursion infinie** (`RecursionError`). Tout algorithme récursif peut se réécrire de façon **itérative** avec une boucle.
\end{remarque}
