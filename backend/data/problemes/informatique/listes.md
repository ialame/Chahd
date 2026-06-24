### Problème 1 : Statistiques d'une série de notes
\begin{enonce}
On dispose d'une liste `notes` contenant les notes (sur 20) d'une classe, par exemple :
```python
notes = [12, 8, 15, 17, 9, 14, 6, 18, 11, 13]
```
\begin{enumerate}
    \item Écrire une fonction `nb_admis(notes)` qui renvoie le nombre de notes supérieures ou égales à 10.
    \item Écrire une fonction `minimum(notes)` qui renvoie la plus petite note, sans utiliser `min`.
    \item Écrire une fonction `etendue(notes)` qui renvoie l'écart entre la plus grande et la plus petite note.
    \item Écrire une fonction `au_dessus_moyenne(notes)` qui renvoie la liste des notes strictement supérieures à la moyenne de la classe.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item On compte avec un compteur incrémenté à chaque note suffisante :
```python
def nb_admis(notes):
    c = 0
    for n in notes:
        if n >= 10:
            c = c + 1
    return c
```
    \item On garde la plus petite valeur rencontrée :
```python
def minimum(notes):
    m = notes[0]
    for n in notes:
        if n < m:
            m = n
    return m
```
    \item L'étendue réutilise `minimum` et un `maximum` construit de la même façon :
```python
def etendue(notes):
    maxi = notes[0]
    for n in notes:
        if n > maxi:
            maxi = n
    return maxi - minimum(notes)
```
    \item On calcule d'abord la moyenne, puis on filtre :
```python
def au_dessus_moyenne(notes):
    moy = sum(notes) / len(notes)
    return [n for n in notes if n > moy]
```
Pour la liste donnée, la moyenne vaut `12.3`, donc `au_dessus_moyenne(notes)` renvoie `[15, 17, 14, 18, 13]`.
\end{enumerate}

### Problème 2 : Recherche dans une liste triée (dichotomie)
\begin{enonce}
On suppose que `L` est une liste d'entiers **triée par ordre croissant**. On veut savoir si une valeur `v` y figure.
\begin{enumerate}
    \item Écrire une fonction `appartient(L, v)` qui renvoie `True` ou `False` par un parcours simple.
    \item Écrire une fonction `dicho(L, v)` qui répond à la même question par **recherche dichotomique** (en comparant `v` à l'élément du milieu et en réduisant l'intervalle de recherche).
    \item Pour une liste de $n$ éléments, combien de comparaisons font, dans le pire des cas, chacune des deux méthodes ? Conclure.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Parcours linéaire avec arrêt dès que la valeur est trouvée :
```python
def appartient(L, v):
    for x in L:
        if x == v:
            return True
    return False
```
    \item On maintient un intervalle `[g, d]` et on regarde l'élément du milieu :
```python
def dicho(L, v):
    g, d = 0, len(L) - 1
    while g <= d:
        m = (g + d) // 2
        if L[m] == v:
            return True
        elif L[m] < v:
            g = m + 1
        else:
            d = m - 1
    return False
```
Comme `L` est triée, si `L[m] < v` la valeur ne peut être que dans la moitié droite, et inversement : on élimine la moitié des éléments à chaque tour.
    \item Le parcours simple fait jusqu'à $n$ comparaisons (complexité $O(n)$). La dichotomie divise l'intervalle par 2 à chaque étape : elle fait de l'ordre de $\log_2(n)$ comparaisons (complexité $O(\log n)$). Pour $n = 1000$, c'est environ 10 comparaisons au lieu de 1000 : la dichotomie est bien plus efficace, mais elle exige une liste **triée**.
\end{enumerate}

### Problème 3 : Inverser une liste
\begin{enonce}
\begin{enumerate}
    \item Écrire une fonction `inverse(L)` qui renvoie une **nouvelle** liste contenant les éléments de `L` dans l'ordre inverse, sans utiliser `L[::-1]` ni `reversed`.
    \item Écrire une procédure `inverse_sur_place(L)` qui inverse `L` **elle-même** en échangeant les éléments deux par deux, sans créer de seconde liste.
    \item Combien d'échanges effectue `inverse_sur_place` pour une liste de $n$ éléments ?
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item On parcourt `L` de la fin vers le début en construisant la nouvelle liste :
```python
def inverse(L):
    resultat = []
    for i in range(len(L) - 1, -1, -1):
        resultat.append(L[i])
    return resultat
```
    \item On échange l'élément `i` avec l'élément symétrique `n-1-i`, en s'arrêtant au milieu :
```python
def inverse_sur_place(L):
    n = len(L)
    for i in range(n // 2):
        L[i], L[n - 1 - i] = L[n - 1 - i], L[i]
```
L'affectation simultanée `L[i], L[j] = L[j], L[i]` réalise l'échange sans variable temporaire.
    \item On échange une fois chaque paire $(i, n-1-i)$ pour `i` allant de 0 à $\lfloor n/2 \rfloor - 1$ : il y a donc $\lfloor n/2 \rfloor$ échanges. C'est deux fois moins d'opérations que de reconstruire une liste, et sans mémoire supplémentaire.
\end{enumerate}
