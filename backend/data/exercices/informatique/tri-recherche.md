### Exercice 1 : Recherche séquentielle avec compteur
\begin{enonce}
Écrire une fonction `recherche_count(L, v)` qui cherche la valeur `v` dans la liste `L` par parcours séquentiel et renvoie un couple `(indice, nb)` où `indice` est la position de la première occurrence de `v` (ou `-1` si `v` est absente) et `nb` le nombre de comparaisons effectuées. Combien de comparaisons fait la fonction pour `recherche_count([3, 8, 7, 1], 7)` ?
\end{enonce}

\textbf{Solution :}
On parcourt la liste en comptant chaque comparaison `L[i] == v` :
```python
def recherche_count(L, v):
    nb = 0
    for i in range(len(L)):
        nb = nb + 1
        if L[i] == v:
            return (i, nb)
    return (-1, nb)
```
Pour `recherche_count([3, 8, 7, 1], 7)`, on compare `3`, puis `8`, puis `7` : la valeur est trouvée à l'indice `2` après `3` comparaisons. La fonction renvoie donc `(2, 3)`. Si la valeur est absente, on fait `len(L)` comparaisons (le pire des cas).

### Exercice 2 : Recherche dichotomique pas à pas
\begin{enonce}
On considère la liste **triée** `L = [2, 5, 9, 12, 18, 23, 30]`.
\begin{enumerate}
    \item Dérouler la recherche dichotomique de la valeur `23` : indiquer à chaque étape les valeurs de `gauche`, `droite` et `milieu`.
    \item Combien de comparaisons à l'élément du milieu cela demande-t-il ?
    \item Quelle valeur ferait faire le plus d'étapes possible à l'algorithme sur cette liste ?
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Avec `recherche_dichotomique(L, 23)` :
    - `gauche = 0`, `droite = 6`, `milieu = 3` : `L[3]` vaut `12` < `23`, donc `gauche = 4`.
    - `gauche = 4`, `droite = 6`, `milieu = 5` : `L[5]` vaut `23` = `23`, on **renvoie 5**.
    \item Il a fallu **2** comparaisons à l'élément du milieu.
    \item La liste a 7 éléments. Comme la dichotomie divise par deux à chaque tour, il faut au plus $\lceil \log_2(7) \rceil = 3$ étapes. Une valeur absente comme `15` (ou une valeur trouvée à la toute dernière étape) atteint ce maximum de `3` comparaisons.
\end{enumerate}

### Exercice 3 : Tri par sélection et nombre de comparaisons
\begin{enonce}
\begin{enumerate}
    \item Dérouler le tri par sélection sur la liste `[4, 1, 3, 2]` en donnant l'état de la liste après chaque échange.
    \item Modifier la fonction `tri_selection` pour qu'elle renvoie aussi le nombre total de comparaisons `liste[j] < liste[i_min]` effectuées.
    \item Combien de comparaisons fait ce tri pour une liste de `n` éléments ?
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Déroulement :
    - `i = 0` : plus petit parmi tous = `1` (indice 1), échange avec l'indice 0 → `[1, 4, 3, 2]`.
    - `i = 1` : plus petit à partir de l'indice 1 = `2` (indice 3), échange avec l'indice 1 → `[1, 2, 3, 4]`.
    - `i = 2` : plus petit à partir de l'indice 2 = `3`, déjà en place → `[1, 2, 3, 4]`.
    \item On ajoute un compteur incrémenté à chaque comparaison :
```python
def tri_selection_count(liste):
    n = len(liste)
    comparaisons = 0
    for i in range(n - 1):
        i_min = i
        for j in range(i + 1, n):
            comparaisons = comparaisons + 1
            if liste[j] < liste[i_min]:
                i_min = j
        liste[i], liste[i_min] = liste[i_min], liste[i]
    return liste, comparaisons
```
    \item La boucle interne fait $(n-1) + (n-2) + \dots + 1 = \dfrac{n(n-1)}{2}$ comparaisons, **quel que soit** le contenu de la liste. Pour `n = 4`, cela donne `6` comparaisons ; la complexité est $O(n^2)$.
\end{enumerate}

### Exercice 4 : Tri par insertion
\begin{enonce}
\begin{enumerate}
    \item Dérouler le tri par insertion sur `[3, 1, 4, 2]` en donnant l'état de la liste après chaque insertion de la clé.
    \item Sur quel type de liste le tri par insertion est-il le plus rapide ? Pourquoi ?
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Déroulement (la clé est l'élément inséré dans la partie gauche déjà triée) :
    - `cle = 1` : on décale `3`, on insère `1` → `[1, 3, 4, 2]`.
    - `cle = 4` : `4` est plus grand que `3`, aucun décalage → `[1, 3, 4, 2]`.
    - `cle = 2` : on décale `4`, puis `3`, on insère `2` → `[1, 2, 3, 4]`.
    \item Il est le plus rapide sur une liste **déjà triée** (ou presque triée) : la condition `liste[j] > cle` de la boucle `while` est alors fausse dès le premier test, donc aucun décalage n'a lieu. Dans ce cas favorable, le tri ne fait qu'`n - 1` comparaisons, soit une complexité $O(n)$.
\end{enumerate}

### Exercice 5 : Tri à bulles optimisé
\begin{enonce}
Dans le tri à bulles, si lors d'un parcours complet on n'effectue **aucun** échange, c'est que la liste est déjà triée : on peut alors s'arrêter. Écrire une fonction `tri_bulles_opt(liste)` qui exploite cette idée à l'aide d'un drapeau (booléen). Combien de parcours fait-elle si on lui donne une liste déjà triée ?
\end{enonce}

\textbf{Solution :}
On utilise une variable `echange` remise à `False` au début de chaque parcours ; si elle reste `False`, on sort de la boucle avec `break` :
```python
def tri_bulles_opt(liste):
    n = len(liste)
    for i in range(n - 1):
        echange = False
        for j in range(n - 1 - i):
            if liste[j] > liste[j + 1]:
                liste[j], liste[j + 1] = liste[j + 1], liste[j]
                echange = True
        if not echange:
            break
    return liste
```
Sur une liste déjà triée, le premier parcours ne provoque **aucun** échange : `echange` reste `False`, on s'arrête. La fonction ne fait donc qu'**un seul** parcours, soit une complexité $O(n)$ dans ce cas favorable (contre $O(n^2)$ pour la version non optimisée).

### Exercice 6 : Comparer recherche séquentielle et dichotomique
\begin{enonce}
On dispose d'une liste triée de `n = 1000` entiers.
\begin{enumerate}
    \item Dans le pire des cas, combien de comparaisons fait la recherche séquentielle ?
    \item Et la recherche dichotomique ?
    \item Pourquoi ne peut-on **pas** utiliser la recherche dichotomique sur une liste non triée ?
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item La recherche séquentielle parcourt potentiellement toute la liste : jusqu'à `1000` comparaisons (complexité $O(n)$).
    \item La dichotomie divise par deux à chaque étape. Comme $2^{10} = 1024 > 1000$, elle fait au plus `10` comparaisons (complexité $O(\log n)$).
    \item La dichotomie déduit, à partir de la comparaison avec le milieu, dans quelle moitié se trouve la valeur. Ce raisonnement n'est valable que si la liste est triée : sur une liste quelconque, le fait que `L[milieu] < v` ne garantit pas que `v` soit dans la moitié droite, donc l'algorithme pourrait éliminer à tort la moitié contenant la valeur cherchée.
\end{enumerate}
