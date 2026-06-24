### Exercice 1 : Construction et accès
\begin{enonce}
On considère la matrice Python suivante :
```python
M = [[7, 2, 5],
     [1, 8, 3]]
```
\begin{enumerate}
    \item Combien cette matrice a-t-elle de lignes ? de colonnes ? Quelles expressions Python les donnent ?
    \item Que renvoie `M[1][0]` ? Et `M[0][2]` ?
    \item Écrire une instruction qui remplace par 9 la valeur située à la ligne 1, colonne 2.
    \item Que désigne `M[0]` ? De quel type est cette expression ?
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item La matrice a 2 lignes et 3 colonnes. Le nombre de lignes est `len(M)` (qui vaut `2`) et le nombre de colonnes est `len(M[0])` (qui vaut `3`).
    \item `M[1][0]` désigne l'élément de la ligne 1, colonne 0 : il vaut `1`. `M[0][2]` désigne la ligne 0, colonne 2 : il vaut `5`.
    \item On affecte directement par les deux indices :
```python
M[1][2] = 9
```
    \item `M[0]` désigne la **ligne entière** numéro 0, c'est-à-dire la liste `[7, 2, 5]`. C'est donc une liste (et non un seul nombre).
\end{enumerate}

### Exercice 2 : Créer une matrice de zéros
\begin{enonce}
Écrire une fonction `matrice_nulle(l, c)` qui renvoie une matrice de `l` lignes et `c` colonnes remplie de zéros. On explique ensuite pourquoi il ne faut **pas** écrire `[[0] * c] * l`.
\end{enonce}

\textbf{Solution :}
On utilise une **compréhension imbriquée**, qui crée une liste différente pour chaque ligne :
```python
def matrice_nulle(l, c):
    return [[0 for j in range(c)] for i in range(l)]
```
Par exemple `matrice_nulle(2, 3)` renvoie `[[0, 0, 0], [0, 0, 0]]`.

Avec `[[0] * c] * l`, l'opérateur `*` ne **recopie pas** la ligne : il place `l` fois la **même** liste. Toutes les lignes sont alors le même objet, et modifier une case les modifie toutes :
```python
M = [[0] * 3] * 2
M[0][0] = 1
print(M)   # [[1, 0, 0], [1, 0, 0]]  : la ligne 1 a aussi changé !
```
La compréhension imbriquée évite ce piège car chaque tour de la boucle extérieure construit une **nouvelle** liste.

### Exercice 3 : Somme de tous les éléments
\begin{enonce}
Écrire une fonction `somme_totale(M)` qui renvoie la somme de tous les éléments d'une matrice `M`, en utilisant une double boucle sur les indices.
\end{enonce}

\textbf{Solution :}
La boucle extérieure choisit la ligne `i`, la boucle intérieure parcourt les colonnes `j` ; on accumule chaque élément dans `s` :
```python
def somme_totale(M):
    s = 0
    for i in range(len(M)):
        for j in range(len(M[0])):
            s = s + M[i][j]
    return s
```
Pour `M = [[1, 2, 3], [4, 5, 6]]`, on additionne `1+2+3+4+5+6`, donc `somme_totale(M)` renvoie `21`.

### Exercice 4 : Recherche d'un élément
\begin{enonce}
Écrire une fonction `position(M, x)` qui renvoie le couple `(i, j)` des indices de la **première** occurrence de la valeur `x` dans la matrice `M` (parcours ligne par ligne), ou `None` si `x` n'apparaît pas.
\end{enonce}

\textbf{Solution :}
On parcourt la matrice avec une double boucle et on renvoie le couple d'indices dès que la valeur est trouvée :
```python
def position(M, x):
    for i in range(len(M)):
        for j in range(len(M[0])):
            if M[i][j] == x:
                return (i, j)
    return None
```
Le `return` à l'intérieur des boucles arrête la fonction à la première occurrence. Si aucune case ne contient `x`, on sort des deux boucles et on renvoie `None`. Pour `M = [[4, 7], [2, 7]]`, `position(M, 7)` renvoie `(0, 1)` et `position(M, 5)` renvoie `None`.

### Exercice 5 : Maximum d'une matrice
\begin{enonce}
Écrire une fonction `maximum(M)` qui renvoie le plus grand élément d'une matrice `M` non vide, sans utiliser la fonction `max`.
\end{enonce}

\textbf{Solution :}
On part de l'élément en haut à gauche `M[0][0]`, puis on garde la plus grande valeur rencontrée pendant le parcours :
```python
def maximum(M):
    maxi = M[0][0]
    for i in range(len(M)):
        for j in range(len(M[0])):
            if M[i][j] > maxi:
                maxi = M[i][j]
    return maxi
```
On initialise avec une vraie case de la matrice (et non `0`), pour que la fonction soit correcte même si tous les éléments sont négatifs. Pour `M = [[3, 9], [12, 1]]`, `maximum(M)` renvoie `12`.

### Exercice 6 : Transposée
\begin{enonce}
La **transposée** d'une matrice échange ses lignes et ses colonnes : l'élément de ligne `i`, colonne `j` devient l'élément de ligne `j`, colonne `i`. Écrire une fonction `transposee(M)` qui renvoie la transposée de `M`. Quelle est la transposée de `M = [[1, 2, 3], [4, 5, 6]]` ?
\end{enonce}

\textbf{Solution :}
Si `M` a `l` lignes et `c` colonnes, sa transposée `T` a `c` lignes et `l` colonnes. On crée `T` aux bonnes dimensions, puis on recopie chaque élément en échangeant les indices :
```python
def transposee(M):
    l = len(M)
    c = len(M[0])
    T = [[0 for j in range(l)] for i in range(c)]
    for i in range(l):
        for j in range(c):
            T[j][i] = M[i][j]
    return T
```
Pour `M = [[1, 2, 3], [4, 5, 6]]` (2 lignes, 3 colonnes), on obtient une matrice à 3 lignes et 2 colonnes : `transposee(M)` renvoie `[[1, 4], [2, 5], [3, 6]]`.
