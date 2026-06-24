### Problème 1 : Somme de deux matrices
\begin{enonce}
On veut additionner deux matrices de **mêmes dimensions** : la somme `S` est la matrice dont chaque élément est `S[i][j] = A[i][j] + B[i][j]`.
\begin{enumerate}
    \item Écrire une fonction `memes_dimensions(A, B)` qui renvoie `True` si `A` et `B` ont le même nombre de lignes et de colonnes, `False` sinon.
    \item Écrire une fonction `somme(A, B)` qui renvoie la matrice somme de `A` et `B` (on suppose qu'elles ont les mêmes dimensions).
    \item Vérifier sur l'exemple `A = [[1, 2], [3, 4]]` et `B = [[5, 6], [7, 8]]`.
    \item La fonction `somme` modifie-t-elle `A` ou `B` ? Justifier.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item On compare le nombre de lignes puis le nombre de colonnes :
```python
def memes_dimensions(A, B):
    return len(A) == len(B) and len(A[0]) == len(B[0])
```
    \item On crée une matrice résultat aux mêmes dimensions, puis on remplit chaque case par la somme des cases correspondantes :
```python
def somme(A, B):
    l = len(A)
    c = len(A[0])
    S = [[0 for j in range(c)] for i in range(l)]
    for i in range(l):
        for j in range(c):
            S[i][j] = A[i][j] + B[i][j]
    return S
```
    \item Pour `A = [[1, 2], [3, 4]]` et `B = [[5, 6], [7, 8]]`, chaque case s'additionne : `somme(A, B)` renvoie `[[6, 8], [10, 12]]`.
    \item `somme` ne modifie ni `A` ni `B` : on n'écrit que dans la **nouvelle** matrice `S`, créée par compréhension. Les matrices `A` et `B` ne sont lues qu'en lecture.
\end{enumerate}

### Problème 2 : Produit de deux matrices
\begin{enonce}
Le **produit** d'une matrice `A` de dimensions $l \times n$ par une matrice `B` de dimensions $n \times c$ est une matrice `P` de dimensions $l \times c$ définie par :
$$P[i][j] = \sum_{k=0}^{n-1} A[i][k] \times B[k][j]$$
\begin{enumerate}
    \item À quelle condition sur les dimensions de `A` et `B` le produit est-il possible ?
    \item Écrire une fonction `produit_scalaire_ligne_colonne(A, B, i, j)` qui calcule la valeur `P[i][j]`, c'est-à-dire la somme ci-dessus.
    \item En déduire une fonction `produit(A, B)` qui renvoie la matrice produit `P`.
    \item Vérifier sur `A = [[1, 2, 3], [4, 5, 6]]` et `B = [[7, 8], [9, 10], [11, 12]]`.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Le produit est possible si le nombre de **colonnes** de `A` est égal au nombre de **lignes** de `B`, c'est-à-dire `len(A[0]) == len(B)`. Cette valeur commune est le `n` de la formule.
    \item On parcourt l'indice `k` de `0` à `n-1` en accumulant les produits `A[i][k] * B[k][j]` :
```python
def produit_scalaire_ligne_colonne(A, B, i, j):
    n = len(B)
    s = 0
    for k in range(n):
        s = s + A[i][k] * B[k][j]
    return s
```
    \item La matrice produit a `len(A)` lignes et `len(B[0])` colonnes ; chaque case se calcule avec la fonction précédente :
```python
def produit(A, B):
    l = len(A)
    c = len(B[0])
    P = [[0 for j in range(c)] for i in range(l)]
    for i in range(l):
        for j in range(c):
            P[i][j] = produit_scalaire_ligne_colonne(A, B, i, j)
    return P
```
    \item `A` est $2 \times 3$ et `B` est $3 \times 2$, donc le produit est $2 \times 2$. Par exemple `P[0][0] = 1 \times 7 + 2 \times 9 + 3 \times 11 = 58`. Au total, `produit(A, B)` renvoie `[[58, 64], [139, 154]]`.
\end{enumerate}

### Problème 3 : Matrices carrées et propriétés
\begin{enonce}
Une matrice est **carrée** lorsqu'elle a autant de lignes que de colonnes. Sa **diagonale principale** est formée des éléments `M[i][i]`. Une matrice carrée est **symétrique** si `M[i][j] == M[j][i]` pour tous les indices.
\begin{enumerate}
    \item Écrire une fonction `est_carree(M)` qui renvoie `True` si `M` est carrée.
    \item Écrire une fonction `trace(M)` qui renvoie la somme des éléments de la diagonale principale d'une matrice carrée.
    \item Écrire une fonction `est_symetrique(M)` qui renvoie `True` si la matrice carrée `M` est symétrique.
    \item Vérifier `est_symetrique` sur `[[1, 2, 0], [2, 5, 7], [0, 7, 9]]` puis sur `[[1, 2], [3, 4]]`.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Une matrice est carrée si son nombre de lignes égale son nombre de colonnes :
```python
def est_carree(M):
    return len(M) == len(M[0])
```
    \item La trace n'utilise qu'**une seule** boucle, sur l'indice commun `i`, pour additionner les `M[i][i]` :
```python
def trace(M):
    s = 0
    for i in range(len(M)):
        s = s + M[i][i]
    return s
```
Pour `M = [[1, 2], [3, 4]]`, la trace vaut `1 + 4 = 5`.
    \item On parcourt toutes les cases ; dès qu'on trouve `M[i][j]` différent de `M[j][i]`, la matrice n'est pas symétrique :
```python
def est_symetrique(M):
    n = len(M)
    for i in range(n):
        for j in range(n):
            if M[i][j] != M[j][i]:
                return False
    return True
```
    \item Pour `[[1, 2, 0], [2, 5, 7], [0, 7, 9]]`, chaque `M[i][j]` est bien égal à son symétrique `M[j][i]` : `est_symetrique` renvoie `True`. Pour `[[1, 2], [3, 4]]`, on a `M[0][1] = 2` mais `M[1][0] = 3` : dès cette comparaison la fonction renvoie `False`.

On peut remarquer qu'il suffirait de comparer les cases au-dessus de la diagonale (`j` allant de `i+1` à `n-1`) pour faire deux fois moins de comparaisons, le résultat étant le même.
\end{enumerate}
