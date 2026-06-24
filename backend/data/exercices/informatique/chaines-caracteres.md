### Exercice 1 : Indices et longueur
\begin{enonce}
On considère la chaîne Python suivante :
```python
mot = "Casablanca"
```
\begin{enumerate}
    \item Quelle est la longueur de cette chaîne ? Quelle expression Python la donne ?
    \item Que renvoie `mot[0]` ? Et `mot[-1]` ?
    \item Donner l'indice du dernier caractère en fonction de `len(mot)`.
    \item Écrire une expression qui renvoie le caractère du milieu de la chaîne.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item La chaîne contient 10 caractères. On obtient sa longueur avec `len(mot)`, qui renvoie `10`.
    \item `mot[0]` renvoie le premier caractère `"C"` ; `mot[-1]` renvoie le dernier caractère `"a"`.
    \item Pour une chaîne de longueur `n`, les indices valides vont de `0` à `n - 1` : le dernier caractère est donc à l'indice `len(mot) - 1`, soit `9`.
    \item On utilise la division entière pour trouver l'indice central :
```python
print(mot[len(mot) // 2])   # a  (indice 5)
```
\end{enumerate}

### Exercice 2 : Compter un caractère
\begin{enonce}
Écrire une fonction `compte(s, c)` qui renvoie le nombre d'occurrences du caractère `c` dans la chaîne `s`, **sans utiliser** la méthode `count`.
\end{enonce}

\textbf{Solution :}
On parcourt la chaîne caractère par caractère en incrémentant un compteur :
```python
def compte(s, c):
    total = 0
    for x in s:
        if x == c:
            total = total + 1
    return total
```
Par exemple `compte("anniversaire", "a")` renvoie `2` et `compte("Mississippi", "s")` renvoie `4`.

### Exercice 3 : Compter les voyelles
\begin{enonce}
Écrire une fonction `nb_voyelles(s)` qui renvoie le nombre de voyelles (a, e, i, o, u, y) contenues dans `s`, en tenant compte des majuscules comme des minuscules.
\end{enonce}

\textbf{Solution :}
On met d'abord la chaîne en minuscules pour traiter `A` comme `a`, puis on teste l'appartenance à l'ensemble des voyelles avec l'opérateur `in` :
```python
def nb_voyelles(s):
    compteur = 0
    for c in s.lower():
        if c in "aeiouy":
            compteur = compteur + 1
    return compteur
```
Comme `s.lower()` renvoie une nouvelle chaîne sans modifier `s`, le test couvre majuscules et minuscules. Par exemple `nb_voyelles("Mathematiques")` renvoie `5` et `nb_voyelles("Rabat")` renvoie `2`.

### Exercice 4 : Concaténation et inversion
\begin{enonce}
Écrire une fonction `inverser(s)` qui renvoie la chaîne `s` à l'envers, **sans utiliser** le slicing `s[::-1]`.
\end{enonce}

\textbf{Solution :}
On construit le résultat en plaçant chaque nouveau caractère **devant** les précédents grâce à la concaténation :
```python
def inverser(s):
    resultat = ""
    for c in s:
        resultat = c + resultat
    return resultat
```
À chaque tour, `c + resultat` crée une nouvelle chaîne où `c` est ajouté au début. Pour `s = "Chahd"`, la fonction renvoie `"dhahC"`. On vérifie d'ailleurs que `inverser(s)` donne le même résultat que `s[::-1]`.

### Exercice 5 : Extraire des sous-chaînes (slicing)
\begin{enonce}
On considère la chaîne :
```python
s = "informatique"
```
\begin{enumerate}
    \item Que renvoie `s[0:4]` ? Et `s[4:]` ?
    \item Écrire une expression qui extrait les 3 derniers caractères.
    \item Écrire une fonction `debut_fin(s)` qui renvoie une chaîne formée du premier et du dernier caractère de `s` (on suppose `s` non vide).
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item `s[0:4]` prend les caractères d'indice 0 inclus à 4 exclu, soit `"info"` ; `s[4:]` va de l'indice 4 jusqu'à la fin, soit `"rmatique"`.
    \item On utilise un indice négatif comme borne de départ :
```python
print(s[-3:])   # que
```
    \item On concatène le premier et le dernier caractère :
```python
def debut_fin(s):
    return s[0] + s[-1]
```
Pour `s = "informatique"`, la fonction renvoie `"ie"`.
\end{enumerate}

### Exercice 6 : Palindrome
\begin{enonce}
Un **palindrome** est un mot qui se lit de la même façon dans les deux sens (ex. « radar », « kayak »).
\begin{enumerate}
    \item Écrire une fonction `est_palindrome(s)` qui renvoie `True` si `s` est un palindrome, `False` sinon.
    \item Tester la fonction sur `"radar"`, `"kayak"` et `"python"`.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Il suffit de comparer la chaîne à son inverse, obtenu par slicing `s[::-1]` :
```python
def est_palindrome(s):
    return s == s[::-1]
```
    \item Les tests donnent :
```python
print(est_palindrome("radar"))    # True
print(est_palindrome("kayak"))     # True
print(est_palindrome("python"))    # False
```
`"radar"` et `"kayak"` sont égaux à leur inverse, donc renvoient `True` ; `"python"` inversé donne `"nohtyp"`, différent, donc `False`.
\end{enumerate}
