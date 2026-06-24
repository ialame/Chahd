## Introduction

Quand un programme grossit, on a souvent besoin de **réutiliser** un même bloc d'instructions à plusieurs endroits. Plutôt que de le recopier, on lui donne un **nom** : c'est une **fonction**. Une fonction permet de **découper** un problème en morceaux simples, plus faciles à écrire, à tester et à corriger.

## Définir une fonction avec `def`

On définit une fonction avec le mot-clé `def`, suivi du **nom** de la fonction, d'une liste de **paramètres** entre parenthèses, puis de deux-points. Le **corps** de la fonction est le bloc **indenté** qui suit.

```python
def carre(x):
    resultat = x * x
    return resultat
```

- `def` annonce la définition d'une fonction.
- `carre` est le **nom** de la fonction.
- `x` est un **paramètre** : une variable qui recevra une valeur lors de l'appel.
- Tout ce qui est **indenté** sous le `def` appartient au corps de la fonction.

## La valeur de retour : `return`

L'instruction `return` **renvoie** une valeur à l'endroit où la fonction a été appelée. Dès que `return` est exécutée, la fonction **s'arrête** immédiatement.

```python
def carre(x):
    return x * x

y = carre(5)     # y vaut 25
print(carre(3))  # affiche 9
```

- La valeur renvoyée peut être stockée dans une variable ou utilisée dans une expression.
- Une fonction peut contenir plusieurs `return`, mais un seul sera exécuté à chaque appel.

```python
def maximum(a, b):
    if a > b:
        return a
    else:
        return b

print(maximum(4, 9))   # affiche 9
```

## Fonction et procédure

On distingue deux usages selon qu'il y a ou non une valeur renvoyée.

- Une **fonction** calcule et **renvoie une valeur** avec `return`. On l'utilise dans une expression.
- Une **procédure** **n'a pas de `return`** : elle réalise une action (souvent un affichage) sans renvoyer de résultat exploitable.

```python
def affiche_bonjour(nom):       # procédure : pas de return
    print("Bonjour", nom)

def est_pair(n):                # fonction : renvoie un booléen
    return n % 2 == 0

affiche_bonjour("Sara")         # action : affiche "Bonjour Sara"
print(est_pair(8))              # affiche True
```

- En Python, une procédure est en réalité une fonction qui renvoie la valeur spéciale `None`.
- `print(...)` **affiche** une valeur, mais ne la **renvoie** pas : afficher et renvoyer sont deux choses différentes.

## Appel d'une fonction et arguments

Pour **exécuter** une fonction, on l'**appelle** en écrivant son nom suivi de parenthèses contenant les **arguments**.

```python
def somme(a, b):
    return a + b

print(somme(2, 5))   # 2 et 5 sont les arguments
```

- Le **paramètre** est le nom écrit dans la définition (`a`, `b`).
- L'**argument** est la valeur fournie lors de l'appel (`2`, `5`).
- Les arguments sont associés aux paramètres dans l'**ordre**, de gauche à droite.

## Variables locales et variables globales

Une variable créée **dans** une fonction est une **variable locale** : elle n'existe que pendant l'exécution de la fonction et disparaît ensuite. Une variable définie **en dehors** de toute fonction est **globale**.

```python
def calcule():
    interne = 10        # variable locale
    return interne

print(calcule())        # affiche 10
print(interne)          # ERREUR : interne n'existe pas ici
```

- Les **paramètres** sont eux aussi des variables **locales**.
- Une fonction peut **lire** une variable globale, mais il vaut mieux lui **passer** les valeurs dont elle a besoin par ses paramètres.

```python
TVA = 0.2               # variable globale

def prix_ttc(prix_ht):
    return prix_ht * (1 + TVA)   # lit la globale TVA

print(prix_ttc(100))    # affiche 120.0
```

\begin{remarque}
À retenir : une **fonction** renvoie une valeur avec `return` ; une **procédure** réalise une action sans `return`. Ne confonds pas `print` (qui **affiche**) et `return` (qui **renvoie**). Les **paramètres** et les variables créées dans une fonction sont **locales** : elles n'existent pas à l'extérieur. À l'appel, les **arguments** remplacent les **paramètres** dans l'ordre.
\end{remarque}
