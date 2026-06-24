### Exercice 1 : Évaluer des conditions
\begin{enonce}
On donne les affectations suivantes :
```python
a = 7
b = 3
c = 7
```
Indiquer, pour chaque expression, si elle vaut `True` ou `False`, en justifiant.
\begin{enumerate}
    \item `a > b`
    \item `a == c`
    \item `a != c`
    \item `a > b and b > c`
    \item `a == c or b > a`
    \item `not (a < b)`
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item `a > b` : `7 > 3` est vrai, donc `True`.
    \item `a == c` : `7 == 7` est vrai, donc `True`.
    \item `a != c` : `7 != 7` est faux (ils sont égaux), donc `False`.
    \item `a > b and b > c` : le premier terme `7 > 3` est vrai mais le second `3 > 7` est faux ; avec `and`, il faut les **deux**, donc `False`.
    \item `a == c or b > a` : le premier terme `7 == 7` est vrai ; avec `or`, **une seule** condition vraie suffit, donc `True`.
    \item `not (a < b)` : `a < b` vaut `7 < 3`, c'est-à-dire `False` ; `not False` donne `True`.
\end{enumerate}

### Exercice 2 : Pair ou impair
\begin{enonce}
Écrire une fonction `parite(n)` qui reçoit un entier `n` et renvoie la chaîne `"pair"` si `n` est pair, et `"impair"` sinon.
\end{enonce}

\textbf{Solution :}
On teste le **reste** de la division par 2 avec l'opérateur `%` : un nombre est pair si ce reste est nul.
```python
def parite(n):
    if n % 2 == 0:
        return "pair"
    else:
        return "impair"
```
Par exemple `parite(10)` renvoie `"pair"` et `parite(7)` renvoie `"impair"`. Comme `return` interrompt la fonction, le `else` est même facultatif, mais il rend l'intention plus claire.

### Exercice 3 : Le maximum de trois nombres
\begin{enonce}
Écrire une fonction `maximum3(a, b, c)` qui renvoie le plus grand des trois nombres `a`, `b` et `c`, **sans utiliser** la fonction `max`.
\end{enonce}

\textbf{Solution :}
On part de l'hypothèse que `a` est le plus grand, puis on corrige si l'un des autres le dépasse :
```python
def maximum3(a, b, c):
    plus_grand = a
    if b > plus_grand:
        plus_grand = b
    if c > plus_grand:
        plus_grand = c
    return plus_grand
```
Pour `maximum3(4, 9, 2)`, on garde `9`. On peut aussi tout écrire avec des conditions composées :
```python
def maximum3(a, b, c):
    if a >= b and a >= c:
        return a
    elif b >= c:
        return b
    else:
        return c
```
Les deux versions donnent le même résultat ; la première se généralise plus facilement à un grand nombre de valeurs.

### Exercice 4 : La mention au bac
\begin{enonce}
Écrire une fonction `mention(note)` qui reçoit une note sur 20 et renvoie la mention selon le barème :
\begin{enumerate}
    \item `"Très bien"` si la note est supérieure ou égale à 16 ;
    \item `"Bien"` à partir de 14 ;
    \item `"Assez bien"` à partir de 12 ;
    \item `"Passable"` à partir de 10 ;
    \item `"Refusé"` en dessous de 10.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
On enchaîne des `elif` du seuil le plus élevé au plus bas. Comme Python s'arrête à la **première** condition vraie, il suffit de tester `note >= 14` après avoir éliminé le cas `note >= 16` :
```python
def mention(note):
    if note >= 16:
        return "Très bien"
    elif note >= 14:
        return "Bien"
    elif note >= 12:
        return "Assez bien"
    elif note >= 10:
        return "Passable"
    else:
        return "Refusé"
```
Ainsi `mention(15)` renvoie `"Bien"` (15 n'atteint pas 16 mais dépasse 14) et `mention(8)` renvoie `"Refusé"`. L'ordre des tests est essentiel : écrire `note >= 10` en premier capturerait toutes les bonnes notes par erreur.

### Exercice 5 : Année bissextile
\begin{enonce}
Une année est **bissextile** si elle est divisible par 4, **sauf** si elle est divisible par 100 sans l'être par 400. Par exemple 2024 et 2000 sont bissextiles, mais 1900 ne l'est pas. Écrire une fonction `bissextile(annee)` qui renvoie `True` ou `False`.
\end{enonce}

\textbf{Solution :}
On traduit la règle directement avec les opérateurs logiques. Une année est bissextile si elle est divisible par 400, **ou bien** divisible par 4 mais **pas** par 100 :
```python
def bissextile(annee):
    return annee % 400 == 0 or (annee % 4 == 0 and annee % 100 != 0)
```
La fonction renvoie directement le booléen de l'expression : `bissextile(2024)` donne `True`, `bissextile(1900)` donne `False`, `bissextile(2000)` donne `True`. On évite ainsi un `if ... return True else return False`, inutile quand l'expression est déjà un booléen.

### Exercice 6 : Caractériser un triangle
\begin{enonce}
On donne trois longueurs `a`, `b`, `c` (strictement positives). Écrire une fonction `type_triangle(a, b, c)` qui renvoie :
\begin{enumerate}
    \item `"impossible"` si les trois longueurs ne forment pas un triangle (inégalité triangulaire non vérifiée) ;
    \item `"équilatéral"` si les trois côtés sont égaux ;
    \item `"isocèle"` si exactement deux côtés sont égaux ;
    \item `"quelconque"` sinon.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
On vérifie d'abord l'**inégalité triangulaire** (chaque côté plus petit que la somme des deux autres), puis on distingue les cas d'égalité :
```python
def type_triangle(a, b, c):
    if a >= b + c or b >= a + c or c >= a + b:
        return "impossible"
    if a == b and b == c:
        return "équilatéral"
    elif a == b or b == c or a == c:
        return "isocèle"
    else:
        return "quelconque"
```
L'ordre compte : on élimine d'abord le cas impossible, puis on teste l'égalité des trois côtés **avant** l'égalité de deux côtés, sinon un triangle équilatéral serait classé « isocèle ». Ainsi `type_triangle(3, 3, 3)` renvoie `"équilatéral"`, `type_triangle(5, 5, 3)` renvoie `"isocèle"` et `type_triangle(1, 2, 10)` renvoie `"impossible"`.
