### Exercice 1 : Construction et accès
\begin{enonce}
On considère la liste Python suivante :
```python
temperatures = [18, 21, 17, 25, 19, 22, 16]
```
\begin{enumerate}
    \item Quelle est la longueur de cette liste ? Quelle expression Python la donne ?
    \item Que renvoie `temperatures[0]` ? Et `temperatures[-1]` ?
    \item Écrire une instruction qui remplace la valeur d'indice 3 par 24.
    \item Écrire une expression qui extrait la sous-liste des trois premières valeurs.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item La liste contient 7 éléments. On obtient la longueur avec `len(temperatures)`, qui renvoie `7`.
    \item `temperatures[0]` renvoie le premier élément `18` ; `temperatures[-1]` renvoie le dernier élément `16`.
    \item On affecte directement par l'indice :
```python
temperatures[3] = 24
```
    \item On utilise une tranche (slice) `[0:3]` (la borne 3 est exclue) :
```python
debut = temperatures[0:3]   # [18, 21, 17]
```
\end{enumerate}

### Exercice 2 : Parcours et somme
\begin{enonce}
Écrire une fonction `moyenne(notes)` qui reçoit une liste de nombres non vide et renvoie leur moyenne, **sans utiliser** la fonction `sum`.
\end{enonce}

\textbf{Solution :}
On parcourt la liste en accumulant le total, puis on divise par le nombre d'éléments :
```python
def moyenne(notes):
    total = 0
    for note in notes:
        total = total + note
    return total / len(notes)
```
Par exemple `moyenne([12, 15, 9])` renvoie `12.0`. La liste étant supposée non vide, `len(notes)` n'est jamais nul, donc la division est toujours définie.

### Exercice 3 : Recherche d'un maximum
\begin{enonce}
Écrire une fonction `indice_max(L)` qui renvoie l'indice du plus grand élément d'une liste `L` non vide (le premier en cas d'égalité), sans utiliser `max`.
\end{enonce}

\textbf{Solution :}
On mémorise l'indice du meilleur élément vu jusqu'à présent et on le met à jour :
```python
def indice_max(L):
    imax = 0
    for i in range(1, len(L)):
        if L[i] > L[imax]:
            imax = i
    return imax
```
On part de l'indice `0` et on ne change `imax` que si on trouve **strictement** plus grand, ce qui garantit que le premier maximum est conservé en cas d'égalité. Pour `L = [3, 9, 9, 2]`, la fonction renvoie `1`.

### Exercice 4 : Construire une nouvelle liste
\begin{enonce}
Écrire une fonction `pairs(L)` qui renvoie une **nouvelle** liste contenant uniquement les éléments pairs de `L`, dans le même ordre. Proposer une version avec une boucle, puis une version en compréhension.
\end{enonce}

\textbf{Solution :}
Version avec boucle et `append` :
```python
def pairs(L):
    resultat = []
    for x in L:
        if x % 2 == 0:
            resultat.append(x)
    return resultat
```
Version en **compréhension de liste**, plus concise :
```python
def pairs(L):
    return [x for x in L if x % 2 == 0]
```
Les deux renvoient `[4, 2, 8]` pour `L = [4, 7, 2, 5, 8]`. On crée bien une nouvelle liste : `L` n'est pas modifiée.

### Exercice 5 : Modifier sur place
\begin{enonce}
Écrire une fonction `incremente(L)` qui **modifie la liste `L` elle-même** en ajoutant 1 à chacun de ses éléments (la fonction ne renvoie rien). Expliquer pourquoi il faut parcourir les indices et non les éléments.
\end{enonce}

\textbf{Solution :}
Pour modifier la liste en place, on doit réaffecter chaque case par son indice :
```python
def incremente(L):
    for i in range(len(L)):
        L[i] = L[i] + 1
```
Si on écrivait `for x in L: x = x + 1`, la variable `x` est une **copie** de la valeur (les entiers sont immuables) : la réaffecter ne change pas la case de la liste. En passant par `L[i] = ...`, on écrit réellement dans la liste. Après `incremente(t)` sur `t = [5, 0, 3]`, `t` vaut `[6, 1, 4]`.
