## Introduction

Jusqu'ici, un programme s'exécutait toujours de la même façon, instruction après instruction. Une **structure conditionnelle** permet à un programme de **prendre une décision** : exécuter certaines instructions seulement si une **condition** est vraie. C'est ce qui rend un programme capable de réagir aux données qu'il reçoit.

## Les conditions

Une **condition** est une expression qui vaut **vrai** (`True`) ou **faux** (`False`) : c'est un **booléen**. On la construit le plus souvent avec un **opérateur de comparaison**.

```python
print(5 > 3)     # True
print(2 == 2)    # True
print(4 != 4)    # False
print(7 <= 1)    # False
```

- `==` teste l'**égalité**, `!=` teste la **différence**.
- `<`, `>`, `<=`, `>=` comparent deux valeurs.
- Attention : ne confonds pas `=` (l'**affectation**) et `==` (le **test d'égalité**).

## Les opérateurs logiques

Pour combiner plusieurs conditions, on utilise les **opérateurs logiques** `and`, `or` et `not`.

- `and` (et) : vrai seulement si **les deux** conditions sont vraies.
- `or` (ou) : vrai si **au moins une** des deux conditions est vraie.
- `not` (non) : **inverse** la valeur d'une condition.

```python
age = 17
print(age >= 0 and age < 18)   # True  : entre 0 et 17
print(age == 18 or age == 19)  # False
print(not (age >= 18))         # True  : age n'est pas majeur
```

## L'instruction if

L'instruction `if` exécute un bloc d'instructions **uniquement si** une condition est vraie. On écrit la condition après `if`, suivie de deux-points `:`, puis le **bloc** sur les lignes suivantes.

```python
note = 14
if note >= 10:
    print("Tu es admis.")
    print("Bravo !")
print("Fin du programme.")
```

- Si la condition est vraie, le bloc indenté s'exécute ; sinon, il est **ignoré**.
- La dernière ligne `print("Fin du programme.")` n'est pas indentée : elle s'exécute **dans tous les cas**.

## L'indentation : le bloc

En Python, l'**indentation** (le décalage vers la droite, par convention **4 espaces**) n'est pas décorative : elle **délimite le bloc** d'instructions rattaché au `if`. Toutes les lignes au même niveau d'indentation forment le même bloc.

```python
if x > 0:
    print("Première ligne du bloc")
    print("Toujours dans le bloc")   # même indentation
print("Hors du bloc")                # revenu à gauche
```

- Une indentation incohérente provoque une erreur (`IndentationError`).
- Il faut être régulier : ne pas mélanger espaces et tabulations.

## L'instruction if / else

Souvent, on veut faire une chose **si** la condition est vraie, et **autre chose sinon**. C'est le rôle de `else` (sinon).

```python
n = int(input("Entrez un entier : "))
if n % 2 == 0:
    print(n, "est pair")
else:
    print(n, "est impair")
```

- Le bloc `if` s'exécute si la condition est vraie ; **sinon** c'est le bloc `else` qui s'exécute.
- `else` n'a **jamais** de condition : il est suivi directement de `:`.

## L'instruction if / elif / else

Pour distinguer **plusieurs cas**, on enchaîne des `elif` (contraction de « else if », sinon si). Python teste les conditions **dans l'ordre** et s'arrête à la **première vraie**.

```python
x = int(input("Entrez un nombre : "))
if x > 0:
    print("Le nombre est positif")
elif x < 0:
    print("Le nombre est négatif")
else:
    print("Le nombre est nul")
```

- On peut mettre **autant de `elif` que nécessaire**.
- Le `else` final (facultatif) traite tous les cas restants.

## Les conditions imbriquées

On peut placer une instruction conditionnelle **à l'intérieur** du bloc d'une autre : ce sont des **conditions imbriquées**. Chaque niveau ajoute une indentation supplémentaire.

```python
age = int(input("Votre âge : "))
if age >= 18:
    print("Vous êtes majeur.")
    if age >= 65:
        print("Vous bénéficiez du tarif senior.")
    else:
        print("Tarif plein.")
else:
    print("Vous êtes mineur.")
```

- Souvent, une combinaison avec `and` peut éviter d'imbriquer : `if age >= 18 and age >= 65:`.

## Exemple : le maximum de deux nombres

```python
a = int(input("a = "))
b = int(input("b = "))
if a >= b:
    maximum = a
else:
    maximum = b
print("Le maximum est", maximum)
```

## Exemple : la mention selon une note

```python
note = float(input("Note sur 20 : "))
if note >= 16:
    mention = "Très bien"
elif note >= 14:
    mention = "Bien"
elif note >= 12:
    mention = "Assez bien"
elif note >= 10:
    mention = "Passable"
else:
    mention = "Refusé"
print("Mention :", mention)
```

- Comme les conditions sont testées dans l'ordre, il suffit d'écrire `note >= 14` après avoir éliminé le cas `note >= 16`.

\begin{remarque}
À retenir : un `if` est suivi d'une **condition** (booléen) puis de `:`, et le **bloc** est défini par l'**indentation** (4 espaces). Utilise `elif` pour enchaîner plusieurs cas et `else` pour le cas restant. Les conditions se combinent avec `and`, `or`, `not`. Ne confonds jamais `=` (affectation) et `==` (égalité).
\end{remarque}
