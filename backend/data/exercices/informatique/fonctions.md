### Exercice 1 : Première fonction avec `return`
\begin{enonce}
\begin{enumerate}
    \item Écrire une fonction `cube(x)` qui renvoie le cube de `x`.
    \item En utilisant `cube`, écrire une instruction qui affiche le cube de 4.
    \item Quelle est la différence entre `return x` et `print(x)` dans une fonction ?
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item On définit la fonction avec `def` et on renvoie le résultat avec `return` :
```python
def cube(x):
    return x * x * x
```
    \item On appelle la fonction et on affiche sa valeur renvoyée :
```python
print(cube(4))   # affiche 64
```
    \item `return x` **renvoie** la valeur à l'endroit de l'appel : on peut la stocker dans une variable ou l'utiliser dans une expression. `print(x)` **affiche** seulement la valeur à l'écran : la fonction ne renvoie alors rien d'exploitable (elle renvoie `None`).
\end{enumerate}

### Exercice 2 : Plusieurs paramètres
\begin{enonce}
Écrire une fonction `volume_pave(longueur, largeur, hauteur)` qui renvoie le volume d'un pavé droit. Calculer ensuite le volume d'un pavé de dimensions 2, 3 et 5.
\end{enonce}

\textbf{Solution :}
Les trois paramètres sont associés aux arguments dans l'ordre, de gauche à droite :
```python
def volume_pave(longueur, largeur, hauteur):
    return longueur * largeur * hauteur

print(volume_pave(2, 3, 5))   # affiche 30
```
Ici `longueur` vaut 2, `largeur` vaut 3 et `hauteur` vaut 5 : le volume renvoyé est `2 * 3 * 5 = 30`.

### Exercice 3 : Une procédure (sans `return`)
\begin{enonce}
\begin{enumerate}
    \item Écrire une procédure `table(n)` qui affiche la table de multiplication de `n` de 1 à 10 (une ligne par produit).
    \item Que renvoie l'expression `x = table(3)` ? Quelle est la valeur de `x` ?
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item La procédure réalise une action (afficher) et ne contient pas de `return` :
```python
def table(n):
    for i in range(1, 11):
        print(n, "x", i, "=", n * i)
```
    \item `table(3)` affiche les 10 lignes de la table de 3, mais comme la procédure n'a pas de `return`, elle renvoie la valeur spéciale `None`. Après `x = table(3)`, la variable `x` vaut donc `None`.
\end{enumerate}

### Exercice 4 : Fonction qui renvoie un booléen
\begin{enonce}
Écrire une fonction `est_bissextile(annee)` qui renvoie `True` si l'année est bissextile, `False` sinon. Une année est bissextile si elle est divisible par 4, sauf les années divisibles par 100 qui ne le sont que si elles sont aussi divisibles par 400.
\end{enonce}

\textbf{Solution :}
On traduit directement la règle avec l'opérateur de divisibilité `%` :
```python
def est_bissextile(annee):
    return (annee % 4 == 0 and annee % 100 != 0) or (annee % 400 == 0)
```
La fonction renvoie un booléen, on peut donc l'utiliser dans une condition. Par exemple `est_bissextile(2024)` renvoie `True`, `est_bissextile(1900)` renvoie `False` (divisible par 100 mais pas par 400) et `est_bissextile(2000)` renvoie `True`.

### Exercice 5 : Portée des variables
\begin{enonce}
On exécute le programme suivant :
```python
def ajoute(a, b):
    somme = a + b
    return somme

resultat = ajoute(3, 7)
print(resultat)
print(somme)
```
\begin{enumerate}
    \item Qu'affiche la ligne `print(resultat)` ?
    \item Que se passe-t-il à la ligne `print(somme)` ? Pourquoi ?
    \item Que faut-il faire pour pouvoir afficher la valeur de `somme` à l'extérieur de la fonction ?
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item `ajoute(3, 7)` renvoie `10`, qui est stocké dans `resultat` : la ligne affiche `10`.
    \item La ligne `print(somme)` provoque une **erreur** (`NameError`). La variable `somme` est **locale** à la fonction `ajoute` : elle est créée à l'appel et disparaît quand la fonction se termine. Elle n'existe donc pas à l'extérieur. Les paramètres `a` et `b` sont eux aussi locaux.
    \item Il faut **renvoyer** la valeur (ce que fait déjà `return somme`) et la récupérer à l'extérieur dans une variable, comme `resultat`. C'est `resultat` qui est accessible après l'appel, pas `somme`.
\end{enumerate}

### Exercice 6 : Une fonction qui en appelle une autre
\begin{enonce}
\begin{enumerate}
    \item Écrire une fonction `est_premier(n)` qui renvoie `True` si l'entier `n` (supérieur ou égal à 2) est premier, `False` sinon.
    \item En **utilisant** `est_premier`, écrire une fonction `compte_premiers(a, b)` qui renvoie le nombre d'entiers premiers compris entre `a` et `b` inclus.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Un nombre est premier s'il n'a aucun diviseur entre 2 et $n-1$. Dès qu'on trouve un diviseur, on renvoie `False` :
```python
def est_premier(n):
    for d in range(2, n):
        if n % d == 0:
            return False
    return True
```
    \item La seconde fonction **réutilise** la première : elle parcourt les entiers et compte ceux pour lesquels `est_premier` renvoie `True` :
```python
def compte_premiers(a, b):
    c = 0
    for n in range(a, b + 1):
        if est_premier(n):
            c = c + 1
    return c
```
Par exemple `compte_premiers(2, 10)` renvoie `4`, car les premiers entre 2 et 10 sont 2, 3, 5 et 7. Découper en deux fonctions rend le code plus clair : `est_premier` teste un nombre, `compte_premiers` s'occupe du comptage.
\end{enumerate}
