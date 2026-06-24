## Introduction

Une **chaîne de caractères** est une suite de caractères : lettres, chiffres, espaces, ponctuation. En Python, son type est `str`. On écrit une chaîne entre guillemets simples `'...'` ou doubles `"..."`.

```python
nom = "Yasmine"
ville = 'Rabat'
vide = ""          # la chaîne vide, qui ne contient aucun caractère
```

## La longueur d'une chaîne

La fonction `len(s)` renvoie le **nombre de caractères** de la chaîne `s`. Une chaîne vide a une longueur de `0`.

```python
s = "Maroc"
print(len(s))      # 5
print(len(""))     # 0
```

## Indices et accès à un caractère

Chaque caractère d'une chaîne possède un **indice** (sa position). En Python, les indices commencent à **0** : le premier caractère est à l'indice `0`, le deuxième à l'indice `1`, etc. On accède à un caractère avec `s[i]`.

```python
s = "Python"
print(s[0])        # P  (premier caractère)
print(s[1])        # y
print(s[5])        # n  (dernier caractère)
```

- Pour une chaîne de longueur `n`, les indices valides vont de `0` à `n - 1`.
- Les **indices négatifs** comptent à partir de la fin : `s[-1]` est le dernier caractère, `s[-2]` l'avant-dernier.

```python
s = "Python"
print(s[-1])       # n  (dernier)
print(s[-2])       # o
```

- Un indice hors limites provoque une erreur (`IndexError`).
- Une chaîne est **non modifiable** : on ne peut pas faire `s[0] = "X"`.

## Parcourir une chaîne

Une boucle `for` permet de parcourir une chaîne **caractère par caractère**.

```python
s = "abc"
for c in s:
    print(c)
# affiche a puis b puis c
```

On peut aussi parcourir par **indice** avec `range(len(s))`, ce qui est utile quand on a besoin de la position.

```python
s = "abc"
for i in range(len(s)):
    print(i, s[i])
# 0 a
# 1 b
# 2 c
```

## Concaténation et répétition

- L'opérateur `+` **concatène** (met bout à bout) deux chaînes.
- L'opérateur `*` **répète** une chaîne un certain nombre de fois.

```python
print("bon" + "jour")     # bonjour
print("ab" * 3)           # ababab
print("-" * 10)           # ----------
```

- On ne peut additionner une chaîne qu'avec une autre chaîne : `"age : " + 18` provoque une erreur. Il faut convertir avec `str(18)`.

```python
age = 18
print("age : " + str(age))   # age : 18
```

## Sous-chaîne (slicing)

Le **découpage** (slicing) `s[a:b]` extrait la sous-chaîne formée des caractères d'indice `a` **inclus** jusqu'à `b` **exclu**.

```python
s = "informatique"
print(s[0:4])     # info
print(s[4:7])     # rma
```

- Si on omet `a`, le découpage commence au début ; si on omet `b`, il va jusqu'à la fin.

```python
s = "informatique"
print(s[:4])      # info
print(s[4:])      # rmatique
print(s[:])       # informatique  (copie complète)
```

- Avec un **pas** négatif, `s[::-1]` renvoie la chaîne **à l'envers**.

```python
print("abc"[::-1])   # cba
```

## Recherche et comptage

- L'opérateur `in` teste si une sous-chaîne (ou un caractère) est **présente** dans une chaîne ; il renvoie un booléen.
- La méthode `s.count(x)` **compte** le nombre d'occurrences de `x` dans `s`.

```python
s = "anniversaire"
print("ann" in s)        # True
print("z" in s)          # False
print(s.count("a"))      # 2
```

## Quelques méthodes utiles

Une **méthode** s'applique à une chaîne avec la notation `s.methode(...)`. Comme une chaîne n'est pas modifiable, ces méthodes renvoient une **nouvelle** chaîne.

```python
s = "Bonjour"
print(s.upper())     # BONJOUR   (tout en majuscules)
print(s.lower())     # bonjour   (tout en minuscules)
print(s)             # Bonjour   (s n'a pas changé)
```

| Méthode | Rôle | Exemple |
|---|---|---|
| `s.upper()` | met en majuscules | `"ab".upper()` → `"AB"` |
| `s.lower()` | met en minuscules | `"AB".lower()` → `"ab"` |
| `s.count(x)` | compte les occurrences | `"aaa".count("a")` → `3` |

## Exemple : compter les voyelles

On parcourt la chaîne et on incrémente un compteur à chaque voyelle.

```python
def nb_voyelles(s):
    compteur = 0
    for c in s.lower():
        if c in "aeiouy":
            compteur = compteur + 1
    return compteur

print(nb_voyelles("Mathematiques"))   # 5
```

## Exemple : inverser une chaîne

On peut utiliser le slicing `s[::-1]`, ou construire le résultat caractère par caractère.

```python
def inverser(s):
    resultat = ""
    for c in s:
        resultat = c + resultat   # on ajoute chaque caractère devant
    return resultat

print(inverser("Chahd"))   # dhahC
```

## Exemple : vérifier un palindrome

Un **palindrome** est un mot qui se lit de la même façon dans les deux sens (ex. « radar », « kayak »). Il suffit de comparer la chaîne à son inverse.

```python
def est_palindrome(s):
    return s == s[::-1]

print(est_palindrome("radar"))   # True
print(est_palindrome("python"))  # False
```

\begin{remarque}
À retenir : les indices commencent à **0** et le dernier caractère est à l'indice `len(s) - 1` (ou `s[-1]`). Le slicing `s[a:b]` prend `a` **inclus** et `b` **exclu**. Une chaîne est **non modifiable** : `upper`, `lower`... renvoient une **nouvelle** chaîne. Astuce : `s[::-1]` inverse la chaîne.
\end{remarque}
