### Exercice 1 : Comprendre `range`
\begin{enonce}
Pour chacune des boucles suivantes, donner la liste exacte des valeurs prises par la variable `i`, dans l'ordre.
```python
for i in range(4):
    print(i)

for i in range(2, 7):
    print(i)

for i in range(1, 10, 3):
    print(i)

for i in range(5, 0, -1):
    print(i)
```
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item `range(4)` part de 0 et exclut 4 : `i` prend les valeurs `0, 1, 2, 3`.
    \item `range(2, 7)` part de 2 et exclut 7 : `i` prend `2, 3, 4, 5, 6`.
    \item `range(1, 10, 3)` part de 1, avance de 3, exclut 10 : `i` prend `1, 4, 7` (le suivant serait 10, exclu).
    \item `range(5, 0, -1)` part de 5, recule de 1, exclut 0 : `i` prend `5, 4, 3, 2, 1`.
\end{enumerate}
On retient que la borne de droite est toujours **exclue**, y compris avec un pas négatif.

### Exercice 2 : Somme avec une boucle `for`
\begin{enonce}
Écrire une fonction `somme_carres(n)` qui renvoie la somme des carrés des entiers de 1 à `n`, c'est-à-dire $1^2 + 2^2 + \dots + n^2$. Vérifier le résultat pour `n = 4`.
\end{enonce}

\textbf{Solution :}
On utilise un accumulateur de somme initialisé à `0` :
```python
def somme_carres(n):
    total = 0
    for i in range(1, n + 1):
        total = total + i * i
    return total
```
Pour `n = 4` : $1 + 4 + 9 + 16 = 30$, donc `somme_carres(4)` renvoie `30`. On écrit `range(1, n + 1)` pour que `n` soit bien inclus dans la somme.

### Exercice 3 : Produit et factorielle
\begin{enonce}
Écrire une fonction `factorielle(n)` qui renvoie $n! = 1 \times 2 \times \dots \times n$ à l'aide d'une boucle. On conviendra que `factorielle(0)` vaut `1`. Vérifier pour `n = 5`.
\end{enonce}

\textbf{Solution :}
L'accumulateur d'un **produit** s'initialise à `1`, surtout pour que le cas `n = 0` (boucle vide) renvoie bien `1` :
```python
def factorielle(n):
    p = 1
    for i in range(1, n + 1):
        p = p * i
    return p
```
Pour `n = 5` : $1 \times 2 \times 3 \times 4 \times 5 = 120$, donc `factorielle(5)` renvoie `120`. Pour `n = 0`, `range(1, 1)` est vide : la boucle ne s'exécute pas et `p` reste à `1`.

### Exercice 4 : Compteur de multiples
\begin{enonce}
Écrire une fonction `nb_multiples(a, b, k)` qui compte combien d'entiers entre `a` et `b` inclus sont des multiples de `k`. Tester avec `nb_multiples(1, 20, 3)`.
\end{enonce}

\textbf{Solution :}
On parcourt l'intervalle et on incrémente un **compteur** à chaque multiple :
```python
def nb_multiples(a, b, k):
    c = 0
    for n in range(a, b + 1):
        if n % k == 0:
            c = c + 1
    return c
```
Un entier `n` est multiple de `k` quand `n % k == 0`. Entre 1 et 20, les multiples de 3 sont `3, 6, 9, 12, 15, 18` : il y en a 6, donc `nb_multiples(1, 20, 3)` renvoie `6`. On écrit `b + 1` pour inclure la borne `b`.

### Exercice 5 : Boucle `while` et division
\begin{enonce}
Écrire une fonction `nb_chiffres(n)` qui renvoie le nombre de chiffres d'un entier `n` strictement positif, en utilisant une boucle `while` (sans convertir `n` en chaîne de caractères). Tester avec `nb_chiffres(2025)`.
\end{enonce}

\textbf{Solution :}
On supprime le dernier chiffre par division entière par 10, tant que `n` n'est pas nul :
```python
def nb_chiffres(n):
    compteur = 0
    while n > 0:
        n = n // 10
        compteur = compteur + 1
    return compteur
```
À chaque tour, `n // 10` retire le chiffre des unités, et le compteur augmente de 1. Pour `n = 2025` : `2025 -> 202 -> 20 -> 2 -> 0`, soit 4 tours, donc `nb_chiffres(2025)` renvoie `4`. La condition `n > 0` finit toujours par devenir fausse, donc pas de boucle infinie.

### Exercice 6 : Recherche avec `break`
\begin{enonce}
Écrire une fonction `premier_diviseur(n)` qui renvoie le plus petit diviseur de `n` strictement supérieur à 1. Si `n` est premier, la fonction doit renvoyer `n` lui-même. Tester avec `premier_diviseur(15)` et `premier_diviseur(13)`.
\end{enonce}

\textbf{Solution :}
On essaie les diviseurs dans l'ordre croissant et on s'arrête au premier qui convient grâce à `break` (ici via `return`) :
```python
def premier_diviseur(n):
    for d in range(2, n):
        if n % d == 0:
            return d
    return n
```
Dès qu'un diviseur `d` est trouvé, `return d` arrête la boucle et renvoie ce plus petit diviseur. Si aucun `d` entre 2 et `n-1` ne divise `n`, c'est que `n` est premier : la boucle se termine et on renvoie `n`. Ainsi `premier_diviseur(15)` renvoie `3` (car $15 = 3 \times 5$) et `premier_diviseur(13)` renvoie `13` (premier).
