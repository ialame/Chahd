### Problème 1 : Analyse d'un texte
\begin{enonce}
On dispose d'une chaîne de caractères, par exemple :
```python
texte = "Vive le Maroc"
```
\begin{enumerate}
    \item Écrire une fonction `nb_espaces(s)` qui renvoie le nombre d'espaces de `s`.
    \item Écrire une fonction `nb_mots(s)` qui renvoie le nombre de mots de `s`, sans utiliser la méthode `split`. On suppose les mots séparés par un seul espace et que `s` ne commence ni ne finit par un espace.
    \item Écrire une fonction `nb_majuscules(s)` qui renvoie le nombre de lettres majuscules de `s`.
    \item Écrire une fonction `sans_espaces(s)` qui renvoie une **nouvelle** chaîne identique à `s` mais sans aucun espace.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item On compte les caractères égaux à `" "` :
```python
def nb_espaces(s):
    c = 0
    for x in s:
        if x == " ":
            c = c + 1
    return c
```
    \item Sous les hypothèses données, le nombre de mots vaut le nombre d'espaces plus un :
```python
def nb_mots(s):
    return nb_espaces(s) + 1
```
Pour `"Vive le Maroc"`, il y a 2 espaces, donc 3 mots.
    \item On teste si chaque caractère est différent de sa version minuscule (et que ce n'est pas un espace) ; plus simplement, on vérifie l'appartenance à l'alphabet majuscule :
```python
def nb_majuscules(s):
    c = 0
    for x in s:
        if x in "ABCDEFGHIJKLMNOPQRSTUVWXYZ":
            c = c + 1
    return c
```
Pour `"Vive le Maroc"`, la fonction renvoie `2` (V et M).
    \item On reconstruit la chaîne en ne gardant que les caractères qui ne sont pas des espaces :
```python
def sans_espaces(s):
    resultat = ""
    for x in s:
        if x != " ":
            resultat = resultat + x
    return resultat
```
Pour `"Vive le Maroc"`, on obtient `"ViveleMaroc"`.
\end{enumerate}

### Problème 2 : Recherche et remplacement
\begin{enonce}
On veut manipuler une chaîne sans utiliser les méthodes toutes faites comme `find` ou `replace`.
\begin{enumerate}
    \item Écrire une fonction `position(s, c)` qui renvoie l'indice de la **première** apparition du caractère `c` dans `s`, ou `-1` si `c` n'apparaît pas.
    \item Écrire une fonction `contient(s, c)` qui renvoie `True` si `c` apparaît dans `s`, `False` sinon, en réutilisant `position`.
    \item Écrire une fonction `remplacer(s, a, b)` qui renvoie une **nouvelle** chaîne où chaque caractère `a` de `s` est remplacé par le caractère `b`.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item On parcourt par indice pour pouvoir renvoyer la position, et on s'arrête dès la première occurrence :
```python
def position(s, c):
    for i in range(len(s)):
        if s[i] == c:
            return i
    return -1
```
Pour `position("anniversaire", "i")`, la fonction renvoie `4`.
    \item Le caractère est présent exactement quand `position` ne renvoie pas `-1` :
```python
def contient(s, c):
    return position(s, c) != -1
```
    \item On reconstruit la chaîne caractère par caractère : si on rencontre `a`, on ajoute `b`, sinon on garde le caractère :
```python
def remplacer(s, a, b):
    resultat = ""
    for x in s:
        if x == a:
            resultat = resultat + b
        else:
            resultat = resultat + x
    return resultat
```
Pour `remplacer("banane", "a", "o")`, on obtient `"bonone"`. La chaîne `s` n'est pas modifiée puisque les chaînes sont non modifiables : on construit bien une nouvelle chaîne.
\end{enumerate}

### Problème 3 : Vérifier un anagramme
\begin{enonce}
Deux mots sont des **anagrammes** s'ils sont formés exactement des mêmes lettres, avec les mêmes nombres d'occurrences, mais dans un ordre éventuellement différent (ex. « chien » et « niche »).
\begin{enumerate}
    \item Écrire une fonction `occurrences(s, c)` qui renvoie le nombre de fois où le caractère `c` apparaît dans `s`.
    \item Écrire une fonction `sont_anagrammes(s1, s2)` qui renvoie `True` si `s1` et `s2` sont des anagrammes. On pensera d'abord à comparer leurs longueurs, puis à vérifier que chaque caractère de `s1` apparaît autant de fois dans `s1` que dans `s2`.
    \item Tester la fonction sur `("chien", "niche")` et `("chien", "chine")`, puis sur `("chien", "chiens")`.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item C'est le comptage habituel d'un caractère :
```python
def occurrences(s, c):
    total = 0
    for x in s:
        if x == c:
            total = total + 1
    return total
```
    \item Si les longueurs diffèrent, ce ne sont pas des anagrammes. Sinon, il suffit que chaque caractère de `s1` ait le même nombre d'occurrences dans `s1` et dans `s2` :
```python
def sont_anagrammes(s1, s2):
    if len(s1) != len(s2):
        return False
    for c in s1:
        if occurrences(s1, c) != occurrences(s2, c):
            return False
    return True
```
Comme les deux chaînes ont la même longueur et que chaque caractère de `s1` apparaît autant de fois dans les deux, elles sont bien composées des mêmes lettres.
    \item Les tests donnent :
```python
print(sont_anagrammes("chien", "niche"))    # True
print(sont_anagrammes("chien", "chine"))     # True
print(sont_anagrammes("chien", "chiens"))    # False
```
`"niche"` et `"chine"` réutilisent exactement les lettres de `"chien"`, d'où `True` ; `"chiens"` a une lettre de plus (longueurs différentes), d'où `False`.
\end{enumerate}
