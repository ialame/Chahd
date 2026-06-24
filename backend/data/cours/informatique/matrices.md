## Introduction

Une **matrice** (ou tableau à deux dimensions) sert à organiser des valeurs en **lignes** et en **colonnes**, comme un tableau de notes ou une grille. En Python, on la représente par une **liste de listes** : chaque élément de la liste extérieure est lui-même une liste qui décrit une **ligne**.

```python
M = [[1, 2, 3],
     [4, 5, 6]]
```

Cette matrice `M` possède **2 lignes** et **3 colonnes**.

## Accès à un élément

On accède à un élément avec **deux indices** : `M[i][j]` désigne l'élément situé à la **ligne `i`** et à la **colonne `j`**. Comme pour les listes, les indices commencent à **0**.

```python
M = [[1, 2, 3],
     [4, 5, 6]]

print(M[0][0])   # 1  : ligne 0, colonne 0
print(M[1][2])   # 6  : ligne 1, colonne 2
M[0][1] = 9      # modifie la valeur : ligne 0, colonne 1
```

- `M[i]` désigne la **ligne entière** numéro `i` (c'est une liste).
- `M[i][j]` désigne **un seul élément** de cette ligne.

## Dimensions d'une matrice

- Le **nombre de lignes** est la longueur de la liste extérieure : `len(M)`.
- Le **nombre de colonnes** est la longueur d'une ligne : `len(M[0])`.

```python
M = [[1, 2, 3],
     [4, 5, 6]]

nb_lignes = len(M)        # 2
nb_colonnes = len(M[0])   # 3
```

On suppose ici que toutes les lignes ont la **même longueur** (matrice rectangulaire), ce qui est presque toujours le cas en pratique.

## Parcours par double boucle

Pour visiter **tous les éléments**, on utilise **deux boucles imbriquées** : une boucle sur les lignes `i`, et à l'intérieur une boucle sur les colonnes `j`.

```python
for i in range(len(M)):
    for j in range(len(M[0])):
        print(M[i][j])
```

- La boucle **extérieure** choisit la ligne `i`.
- La boucle **intérieure** parcourt toutes les colonnes `j` de cette ligne.

## Création d'une matrice

On peut créer une matrice de zéros par **boucles** ou, plus court, par **compréhension de liste**.

```python
# Par compréhension : 3 lignes, 4 colonnes, remplie de 0
M = [[0 for j in range(4)] for i in range(3)]

# Par boucles : le même résultat
M = []
for i in range(3):
    ligne = []
    for j in range(4):
        ligne.append(0)
    M.append(ligne)
```

\begin{remarque}
À retenir : crée toujours la matrice avec une **compréhension imbriquée** `[[0 for j in range(c)] for i in range(l)]`. N'écris **jamais** `[[0] * c] * l` : toutes les lignes seraient la **même** liste, et modifier une case en changerait plusieurs.
\end{remarque}

## Exemple : somme de tous les éléments

```python
def somme_totale(M):
    s = 0
    for i in range(len(M)):
        for j in range(len(M[0])):
            s = s + M[i][j]
    return s
```

## Exemple : somme d'une ligne, somme d'une colonne

La **somme d'une ligne `i`** parcourt les colonnes ; la **somme d'une colonne `j`** parcourt les lignes.

```python
def somme_ligne(M, i):
    s = 0
    for j in range(len(M[0])):
        s = s + M[i][j]
    return s

def somme_colonne(M, j):
    s = 0
    for i in range(len(M)):
        s = s + M[i][j]
    return s
```

## Exemple : recherche d'un élément

On parcourt la matrice et on renvoie **True** dès que la valeur cherchée est trouvée.

```python
def appartient(M, x):
    for i in range(len(M)):
        for j in range(len(M[0])):
            if M[i][j] == x:
                return True
    return False
```

## Exemple : transposée

La **transposée** d'une matrice échange lignes et colonnes : l'élément en ligne `i`, colonne `j` devient l'élément en ligne `j`, colonne `i`. Une matrice de `l` lignes et `c` colonnes donne une transposée de `c` lignes et `l` colonnes.

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

- Pour `M = [[1, 2, 3], [4, 5, 6]]`, on obtient `T = [[1, 4], [2, 5], [3, 6]]`.
