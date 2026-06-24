## Introduction

**Python** est un langage de programmation interprété : un programme appelé **interpréteur** lit et exécute le code instruction par instruction. C'est le langage utilisé au programme de Sciences Mathématiques.

## Variables et affectation

Une **variable** est un nom qui désigne une valeur stockée en mémoire. On lui donne une valeur avec l'opérateur d'**affectation** `=`.

```python
x = 5
nom = "Sara"
x = x + 1      # x vaut maintenant 6
```

- À gauche du `=` : le **nom** de la variable ; à droite : la **valeur** (ou une expression).
- Un nom de variable commence par une lettre, ne contient pas d'espace, et ne doit pas être un mot réservé.

## Les types de base

Chaque valeur a un **type**. La fonction `type(...)` renvoie le type d'une valeur.

```python
a = 7          # int   : entier
b = 3.14       # float : réel
nom = "Ali"    # str   : chaîne de caractères
ok = True      # bool  : booléen (True ou False)
```

| Type | Rôle | Exemple |
|---|---|---|
| `int` | nombre entier | `12`, `-3` |
| `float` | nombre réel | `3.14`, `2.0` |
| `str` | texte | `"bonjour"` |
| `bool` | vrai / faux | `True`, `False` |

## Les opérateurs

**Opérateurs arithmétiques** :

```python
print(7 + 2)    # 9
print(7 - 2)    # 5
print(7 * 2)    # 14
print(7 / 2)    # 3.5   (division réelle)
print(7 // 2)   # 3     (division entière / quotient)
print(7 % 2)    # 1     (reste, modulo)
print(2 ** 3)   # 8     (puissance)
```

- **Opérateurs de comparaison** : `==` (égal), `!=` (différent), `<`, `>`, `<=`, `>=`. Ils renvoient un **booléen**.
- **Opérateurs logiques** : `and` (et), `or` (ou), `not` (non).

## Entrées et sorties

- `print(...)` **affiche** une valeur à l'écran.
- `input(...)` **lit** une saisie au clavier ; elle renvoie toujours une **chaîne** (`str`), qu'il faut souvent **convertir**.

```python
n = int(input("Entrez un entier : "))
print("Le double de", n, "est", 2 * n)
```

**Conversion de types** : `int(x)`, `float(x)`, `str(x)`.

```python
age = int("18")     # la chaîne "18" devient l'entier 18
texte = str(2025)   # l'entier 2025 devient la chaîne "2025"
```

\begin{remarque}
À retenir : `=` est l'**affectation**, `==` est le **test d'égalité**. `input` renvoie une **chaîne** : convertis-la avec `int()` ou `float()` pour calculer. Distingue `/` (réelle), `//` (entière) et `%` (reste).
\end{remarque}
