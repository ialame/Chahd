### Problème 1 : Recherche d'un mot dans un dictionnaire
\begin{enonce}
On range les mots d'un dictionnaire dans une liste `mots` **triée par ordre alphabétique** (Python compare les chaînes avec les opérateurs `<`, `==`, `>`). On veut savoir si un mot `m` figure dans le dictionnaire.
\begin{enumerate}
    \item Écrire une fonction `existe_seq(mots, m)` qui répond par recherche séquentielle et renvoie `True` ou `False`.
    \item Écrire une fonction `existe_dicho(mots, m)` qui répond par recherche dichotomique.
    \item Pour un dictionnaire de `100 000` mots, estimer le nombre de comparaisons de chaque méthode dans le pire des cas, et donner leur complexité.
    \item Modifier `existe_dicho` pour qu'elle renvoie l'**indice** du mot s'il est présent, et `-1` sinon.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Parcours simple avec arrêt dès que le mot est trouvé :
```python
def existe_seq(mots, m):
    for mot in mots:
        if mot == m:
            return True
    return False
```
    \item On maintient un intervalle `[g, d]` et on compare `m` au mot du milieu ; comme la liste est triée alphabétiquement, on élimine une moitié à chaque tour :
```python
def existe_dicho(mots, m):
    g, d = 0, len(mots) - 1
    while g <= d:
        milieu = (g + d) // 2
        if mots[milieu] == m:
            return True
        elif mots[milieu] < m:
            g = milieu + 1
        else:
            d = milieu - 1
    return False
```
    \item La recherche séquentielle fait jusqu'à `100 000` comparaisons (complexité $O(n)$). La dichotomie en fait au plus environ `17`, car $2^{17} = 131072 > 100000$ (complexité $O(\log n)$). La dichotomie est donc spectaculairement plus rapide, ce qui justifie de maintenir le dictionnaire trié.
    \item Il suffit de renvoyer `milieu` au lieu de `True`, et `-1` à la fin :
```python
def existe_dicho(mots, m):
    g, d = 0, len(mots) - 1
    while g <= d:
        milieu = (g + d) // 2
        if mots[milieu] == m:
            return milieu
        elif mots[milieu] < m:
            g = milieu + 1
        else:
            d = milieu - 1
    return -1
```
\end{enumerate}

### Problème 2 : Comparer trois algorithmes de tri
\begin{enonce}
On veut trier une liste d'entiers et comparer le travail effectué par différents tris. On considère la liste `L = [5, 2, 4, 1, 3]`.
\begin{enumerate}
    \item Dérouler le **tri par sélection** sur `L` : donner l'état de la liste après chaque échange.
    \item Écrire une fonction `tri_bulles_count(liste)` qui trie par la méthode des bulles et renvoie le couple `(liste triée, nombre d'échanges effectués)`.
    \item Pour une liste de `n` éléments **triée à l'envers** (cas le pire), combien d'échanges fait le tri à bulles ? Quelle est sa complexité en comparaisons ?
    \item Parmi sélection, insertion et bulles, lequel profite le plus d'une liste **déjà presque triée** ? Justifier.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Déroulement du tri par sélection sur `[5, 2, 4, 1, 3]` :
    - `i = 0` : minimum = `1` (indice 3), échange avec l'indice 0 → `[1, 2, 4, 5, 3]`.
    - `i = 1` : minimum à partir de 1 = `2`, déjà en place → `[1, 2, 4, 5, 3]`.
    - `i = 2` : minimum à partir de 2 = `3` (indice 4), échange avec l'indice 2 → `[1, 2, 3, 5, 4]`.
    - `i = 3` : minimum à partir de 3 = `4` (indice 4), échange avec l'indice 3 → `[1, 2, 3, 4, 5]`.
    \item On compte chaque échange de voisins :
```python
def tri_bulles_count(liste):
    n = len(liste)
    echanges = 0
    for i in range(n - 1):
        for j in range(n - 1 - i):
            if liste[j] > liste[j + 1]:
                liste[j], liste[j + 1] = liste[j + 1], liste[j]
                echanges = echanges + 1
    return liste, echanges
```
    \item Une liste triée à l'envers est le pire des cas : chaque paire d'éléments est dans le mauvais ordre, et le tri à bulles fait alors $\dfrac{n(n-1)}{2}$ échanges. Le nombre de comparaisons vaut aussi $\dfrac{n(n-1)}{2}$ dans tous les cas pour la version simple, soit une complexité $O(n^2)$.
    \item Le **tri par insertion** est le plus avantagé par une liste presque triée : pour chaque clé déjà bien placée, la boucle `while` s'arrête immédiatement, sans décalage. Sur une liste déjà triée, il ne fait que `n - 1` comparaisons (complexité $O(n)$). Le tri par sélection, lui, fait **toujours** $\dfrac{n(n-1)}{2}$ comparaisons, que la liste soit triée ou non : il ne profite pas du tout d'un ordre initial favorable.
\end{enumerate}

### Problème 3 : Trier puis rechercher
\begin{enonce}
On reçoit une liste d'entiers `L` **non triée**, et on doit répondre à de **nombreuses** requêtes du type « la valeur `v` est-elle dans `L` ? ». Une bonne stratégie est de trier `L` une seule fois, puis d'utiliser la recherche dichotomique pour chaque requête.
\begin{enumerate}
    \item Écrire une fonction `tri_insertion(liste)` qui trie la liste sur place par insertion.
    \item Écrire une fonction `recherche_dichotomique(liste, v)` qui renvoie l'indice de `v` dans une liste **triée**, ou `-1`.
    \item On a `q` requêtes à traiter. Comparer le coût total de la stratégie « trier une fois puis `q` dichotomies » à celui de « faire `q` recherches séquentielles sans trier ». À partir de quand la première stratégie est-elle plus intéressante ?
    \item Écrire une fonction `compte_presents(L, valeurs)` qui, après avoir trié une **copie** de `L`, renvoie combien de valeurs de la liste `valeurs` sont présentes dans `L`.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Tri par insertion sur place :
```python
def tri_insertion(liste):
    for i in range(1, len(liste)):
        cle = liste[i]
        j = i - 1
        while j >= 0 and liste[j] > cle:
            liste[j + 1] = liste[j]
            j = j - 1
        liste[j + 1] = cle
    return liste
```
    \item Recherche dichotomique renvoyant l'indice :
```python
def recherche_dichotomique(liste, v):
    g, d = 0, len(liste) - 1
    while g <= d:
        milieu = (g + d) // 2
        if liste[milieu] == v:
            return milieu
        elif liste[milieu] < v:
            g = milieu + 1
        else:
            d = milieu - 1
    return -1
```
    \item Le tri coûte de l'ordre de $O(n^2)$ (tri par insertion), puis chaque dichotomie coûte $O(\log n)$, soit $O(n^2 + q \log n)$ au total. La stratégie sans tri coûte $O(n)$ par requête, soit $O(q \times n)$ au total. Dès que le nombre de requêtes `q` devient **grand** (du même ordre que `n` ou plus), le terme $q \times n$ dépasse $n^2 + q \log n$ : trier une fois pour ensuite chercher en $O(\log n)$ devient nettement plus rentable. Pour une seule requête, en revanche, la recherche séquentielle directe suffit.
    \item On trie une **copie** (avec `list(L)`) pour ne pas modifier `L`, puis on compte les présences par dichotomie :
```python
def compte_presents(L, valeurs):
    triee = list(L)
    tri_insertion(triee)
    c = 0
    for v in valeurs:
        if recherche_dichotomique(triee, v) != -1:
            c = c + 1
    return c
```
Pour `L = [5, 2, 4, 1, 3]` et `valeurs = [3, 7, 1, 9]`, la copie triée est `[1, 2, 3, 4, 5]` ; seules `3` et `1` sont présentes, donc la fonction renvoie `2`.
\end{enumerate}
