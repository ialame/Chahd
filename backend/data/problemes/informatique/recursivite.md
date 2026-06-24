### Problème 1 : Fibonacci, récursif contre itératif
\begin{enonce}
La suite de Fibonacci est définie par `F(0) = 0`, `F(1) = 1` et `F(n) = F(n-1) + F(n-2)` pour `n >= 2`.
\begin{enumerate}
    \item Écrire une fonction récursive `fib(n)` qui renvoie le terme de rang `n`. Combien y a-t-il de cas de base ?
    \item Dessiner (ou décrire) les appels effectués par `fib(4)`. Que remarque-t-on ?
    \item Écrire une fonction itérative `fib_iter(n)` utilisant une boucle et deux variables.
    \item Pour de grandes valeurs de `n`, laquelle des deux versions est préférable ? Pourquoi ?
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item La définition fournit **deux cas de base** (`n == 0` et `n == 1`) et un cas récursif à deux appels :
```python
def fib(n):
    if n == 0:           # cas de base
        return 0
    if n == 1:           # cas de base
        return 1
    return fib(n - 1) + fib(n - 2)   # cas récursif
```
    \item L'arbre des appels de `fib(4)` se développe ainsi :
```python
fib(4) = fib(3) + fib(2)
fib(3) = fib(2) + fib(1)
fib(2) = fib(1) + fib(0)
```
On constate que `fib(2)` est calculé **deux fois** et `fib(1)` trois fois : les mêmes sous-problèmes sont recalculés plusieurs fois. Le nombre d'appels explose quand `n` augmente.
    \item On garde seulement les deux derniers termes dans deux variables `a` et `b` :
```python
def fib_iter(n):
    a, b = 0, 1
    for _ in range(n):
        a, b = b, a + b
    return a
```
À chaque tour, `a` reçoit l'ancien `b` et `b` reçoit la somme : après `n` tours, `a` vaut `F(n)`.
    \item La version **itérative** est nettement préférable pour de grands `n` : elle fait `n` tours de boucle, alors que la version récursive recalcule sans cesse les mêmes valeurs et devient très lente (et peut atteindre la limite de récursion). La version itérative s'exécute en temps proportionnel à `n` avec une mémoire constante.
\end{enumerate}

### Problème 2 : Retournement d'une chaîne de caractères
\begin{enonce}
On veut écrire une fonction récursive qui renvoie une chaîne à l'envers, sans utiliser `chaine[::-1]`.
\begin{enumerate}
    \item Quel est le cas de base naturel pour une chaîne ?
    \item Écrire une fonction récursive `retourne(s)` qui renvoie la chaîne `s` inversée. On rappelle que `s[0]` est le premier caractère et `s[1:]` la chaîne privée de son premier caractère.
    \item Détailler les appels pour `retourne("abc")`.
    \item Écrire une version itérative `retourne_iter(s)` à l'aide d'une boucle.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Le **cas de base** est la **chaîne vide** `""` : son inverse est elle-même. C'est le plus petit cas que l'on sait traiter directement.
    \item L'idée : l'inverse de `s` est l'inverse de `s[1:]`, suivi du premier caractère `s[0]` :
```python
def retourne(s):
    if s == "":             # cas de base
        return ""
    return retourne(s[1:]) + s[0]   # cas récursif
```
À chaque appel, la chaîne perd son premier caractère : sa longueur diminue de 1, donc on atteint toujours la chaîne vide.
    \item On déroule les appels :
```python
retourne("abc") = retourne("bc") + "a"
                = (retourne("c") + "b") + "a"
                = ((retourne("") + "c") + "b") + "a"
                = (("" + "c") + "b") + "a"
                = "cba"
```
    \item Version itérative : on construit le résultat en plaçant chaque caractère devant les précédents :
```python
def retourne_iter(s):
    resultat = ""
    for c in s:
        resultat = c + resultat
    return resultat
```
En préfixant chaque caractère, le dernier lu se retrouve à la fin : `retourne_iter("abc")` renvoie `"cba"`.
\end{enumerate}

### Problème 3 : Comparer récursif et itératif
\begin{enonce}
On reprend la somme des entiers de 1 à `n`.
\begin{enumerate}
    \item Écrire une version récursive `somme_rec(n)` et une version itérative `somme_iter(n)`.
    \item Pour `n = 5`, vérifier que les deux donnent le même résultat.
    \item La version récursive crée un appel de fonction par valeur de `n`. Que risque-t-il de se passer pour `somme_rec(100000)` en Python ?
    \item Compléter le tableau ci-dessous comparant les deux approches.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Les deux versions :
```python
def somme_rec(n):
    if n == 0:                   # cas de base
        return 0
    return n + somme_rec(n - 1)  # cas récursif

def somme_iter(n):
    total = 0
    for i in range(1, n + 1):
        total = total + i
    return total
```
    \item Les deux renvoient `15` pour `n = 5` (`1 + 2 + 3 + 4 + 5`). Elles calculent exactement la même chose, par deux moyens différents.
    \item La version récursive empile **un appel par valeur** de `n`. Pour `n = 100000`, on dépasse la limite de profondeur de récursion de Python (environ 1000) : l'exécution s'arrête sur une `RecursionError`. La version itérative, elle, n'utilise qu'une boucle et fonctionne sans problème.
    \item Comparaison des deux approches :

| Aspect | Récursif | Itératif |
|---|---|---|
| Lisibilité | proche de la définition mathématique | une simple boucle |
| Mémoire | consomme la pile d'appels (un cadre par appel) | mémoire constante |
| Risque | `RecursionError` si `n` est trop grand | aucun débordement de pile |
| Grandes valeurs | déconseillé | recommandé |

La récursivité est élégante et fidèle à la définition du problème, mais l'itération est plus sûre et plus économe pour de grandes valeurs.
\end{enumerate}
