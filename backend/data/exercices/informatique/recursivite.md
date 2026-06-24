### Exercice 1 : Identifier le cas de base
\begin{enonce}
On considère la fonction récursive suivante :
```python
def mystere(n):
    if n == 0:
        return 0
    return 2 + mystere(n - 1)
```
\begin{enumerate}
    \item Quel est le cas de base de cette fonction ? Quel est le cas récursif ?
    \item Vérifier qu'à chaque appel on se rapproche bien du cas de base.
    \item Que renvoie `mystere(3)` ? Détailler les appels.
    \item Que se passerait-il si on appelait `mystere(-1)` ?
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Le **cas de base** est `n == 0`, qui renvoie `0` sans nouvel appel. Le **cas récursif** est la dernière ligne, qui rappelle `mystere(n - 1)`.
    \item À chaque appel récursif, l'argument passe de `n` à `n - 1` : il **diminue de 1**, donc on se rapproche du cas de base `n == 0`.
    \item On déroule les appels :
```python
mystere(3) = 2 + mystere(2)
           = 2 + (2 + mystere(1))
           = 2 + (2 + (2 + mystere(0)))
           = 2 + 2 + 2 + 0 = 6
```
La fonction renvoie `6` (elle calcule `2 * n`).
    \item Avec `n = -1`, le cas de base `n == 0` n'est **jamais atteint** : l'argument devient `-2`, `-3`, ... On obtient une **récursion infinie** qui se termine par une `RecursionError`.
\end{enumerate}

### Exercice 2 : Factorielle
\begin{enonce}
La factorielle est définie par `0! = 1` et `n! = n * (n-1)!`.
\begin{enumerate}
    \item Écrire une fonction récursive `factorielle(n)` qui renvoie `n!` pour un entier `n >= 0`.
    \item Préciser le cas de base et le cas récursif.
    \item Vérifier le résultat pour `factorielle(4)`.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item On traduit directement la définition :
```python
def factorielle(n):
    if n == 0:                      # cas de base
        return 1
    return n * factorielle(n - 1)   # cas récursif
```
    \item Le **cas de base** est `n == 0`, qui renvoie `1`. Le **cas récursif** multiplie `n` par la factorielle de `n - 1` : l'argument diminue de 1 à chaque appel, donc on atteint toujours `0`.
    \item On déroule : `factorielle(4) = 4 * 3 * 2 * 1 * 1 = 24`. La fonction renvoie bien `24`.
\end{enumerate}

### Exercice 3 : Somme des entiers de 1 à n
\begin{enonce}
\begin{enumerate}
    \item Écrire une fonction récursive `somme(n)` qui renvoie la somme des entiers de 1 à `n`, c'est-à-dire `1 + 2 + ... + n`.
    \item Quel est le cas de base ?
    \item Vérifier que `somme(5)` renvoie bien `15`.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item La somme de 1 à `n` vaut `n` plus la somme de 1 à `n - 1` :
```python
def somme(n):
    if n == 0:                  # cas de base
        return 0
    return n + somme(n - 1)     # cas récursif
```
    \item Le **cas de base** est `n == 0`, qui renvoie `0` (la somme vide). Comme l'argument diminue de 1 à chaque appel, on atteint toujours ce cas.
    \item On déroule : `somme(5) = 5 + 4 + 3 + 2 + 1 + 0 = 15`. La fonction renvoie bien `15`.
\end{enumerate}

### Exercice 4 : Puissance
\begin{enonce}
On veut calculer $x^n$ pour un entier `n >= 0`, en utilisant la relation $x^n = x \times x^{n-1}$.
\begin{enumerate}
    \item Écrire une fonction récursive `puissance(x, n)`.
    \item Quel est le cas de base ? Que vaut $x^0$ ?
    \item Combien d'appels récursifs sont nécessaires pour calculer `puissance(2, 10)` ?
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item On traduit la relation, sachant que la puissance 0 vaut 1 :
```python
def puissance(x, n):
    if n == 0:                       # cas de base
        return 1
    return x * puissance(x, n - 1)   # cas récursif
```
    \item Le **cas de base** est `n == 0`, et $x^0 = 1$. À chaque appel récursif, seul `n` diminue de 1 (`x` ne change pas), donc on atteint toujours `n == 0`.
    \item On passe de `n = 10` à `n = 0` en diminuant de 1 à chaque fois : il y a donc **10 appels récursifs** avant d'atteindre le cas de base. `puissance(2, 10)` renvoie `1024`.
\end{enumerate}

### Exercice 5 : Une suite récurrente
\begin{enonce}
On considère la suite définie par `u(0) = 3` et `u(n) = 2 * u(n-1) + 1` pour `n >= 1`.
\begin{enumerate}
    \item Écrire une fonction récursive `u(n)` qui renvoie le terme de rang `n`.
    \item Identifier le cas de base et le cas récursif.
    \item Calculer à la main `u(0)`, `u(1)`, `u(2)` et vérifier avec la fonction.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item On traduit la définition de la suite :
```python
def u(n):
    if n == 0:                # cas de base
        return 3
    return 2 * u(n - 1) + 1   # cas récursif
```
    \item Le **cas de base** est `n == 0`, qui renvoie la valeur initiale `3`. Le **cas récursif** utilise le terme précédent `u(n - 1)` ; comme `n` diminue de 1 à chaque appel, on atteint toujours `0`.
    \item On calcule : `u(0) = 3`, puis `u(1) = 2 * 3 + 1 = 7`, puis `u(2) = 2 * 7 + 1 = 15`. La fonction renvoie les mêmes valeurs.
\end{enumerate}

### Exercice 6 : PGCD par l'algorithme d'Euclide
\begin{enonce}
L'algorithme d'Euclide repose sur `pgcd(a, b) = pgcd(b, a % b)` avec `pgcd(a, 0) = a`.
\begin{enumerate}
    \item Écrire une fonction récursive `pgcd(a, b)`.
    \item Quel est le cas de base ? Pourquoi la récursion se termine-t-elle toujours ?
    \item Détailler les appels pour `pgcd(48, 36)`.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item On traduit directement la relation d'Euclide :
```python
def pgcd(a, b):
    if b == 0:                # cas de base
        return a
    return pgcd(b, a % b)     # cas récursif
```
    \item Le **cas de base** est `b == 0`, qui renvoie `a`. À chaque appel, le second argument devient `a % b`, qui est **strictement plus petit** que `b` (un reste est toujours inférieur au diviseur). Cette suite d'entiers positifs strictement décroissante atteint forcément `0` : la récursion se termine.
    \item On déroule les appels :
```python
pgcd(48, 36) = pgcd(36, 12)   # 48 % 36 = 12
             = pgcd(12, 0)    # 36 % 12 = 0
             = 12             # cas de base
```
La fonction renvoie `12`.
\end{enumerate}
