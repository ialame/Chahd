### Problème 1 : Suite numérique et seuil
\begin{enonce}
On considère la suite définie par $u_0 = 1$ et $u_{n+1} = 2 \times u_n + 1$.
\begin{enumerate}
    \item Écrire une fonction `terme(n)` qui renvoie le terme $u_n$ à l'aide d'une boucle `for`.
    \item Calculer à la main les valeurs de $u_0$ à $u_4$ et vérifier `terme(4)`.
    \item Écrire une fonction `premier_depassement(seuil)` qui renvoie le plus petit indice `n` tel que $u_n > \text{seuil}$, à l'aide d'une boucle `while`.
    \item Que renvoie `premier_depassement(100)` ?
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item On part de $u_0 = 1$ et on applique la relation `n` fois :
```python
def terme(n):
    u = 1
    for i in range(n):
        u = 2 * u + 1
    return u
```
La boucle `range(n)` s'exécute exactement `n` fois pour passer de $u_0$ à $u_n$.
    \item En appliquant $u_{n+1} = 2u_n + 1$ : $u_0 = 1$, $u_1 = 3$, $u_2 = 7$, $u_3 = 15$, $u_4 = 31$. Donc `terme(4)` renvoie `31`.
    \item On avance dans la suite tant que le terme ne dépasse pas le seuil, en comptant les étapes :
```python
def premier_depassement(seuil):
    u = 1
    n = 0
    while u <= seuil:
        u = 2 * u + 1
        n = n + 1
    return n
```
La variable `u` augmente strictement à chaque tour, donc la condition finit par devenir fausse : pas de boucle infinie.
    \item La suite vaut $u_0 = 1,\ u_1 = 3,\ u_2 = 7,\ u_3 = 15,\ u_4 = 31,\ u_5 = 63,\ u_6 = 127, \dots$ Le premier terme strictement supérieur à 100 est $u_6 = 127$. Donc `premier_depassement(100)` renvoie `6`.
\end{enumerate}

### Problème 2 : Analyse des chiffres d'un nombre
\begin{enonce}
On veut analyser les chiffres d'un entier `n` strictement positif sans le convertir en chaîne de caractères.
\begin{enumerate}
    \item Écrire une fonction `somme_chiffres(n)` qui renvoie la somme des chiffres de `n`.
    \item Écrire une fonction `est_multiple_3(n)` qui renvoie `True` si `n` est divisible par 3, en utilisant `somme_chiffres` (un nombre est divisible par 3 si et seulement si la somme de ses chiffres l'est).
    \item Écrire une fonction `nb_chiffres_pairs(n)` qui compte combien de chiffres de `n` sont pairs.
    \item Tester les trois fonctions avec `n = 1234`.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item On isole le chiffre des unités avec `n % 10`, puis on retire ce chiffre avec `n // 10` :
```python
def somme_chiffres(n):
    s = 0
    while n > 0:
        s = s + n % 10
        n = n // 10
    return s
```
    \item On réutilise la fonction précédente et le critère de divisibilité par 3 :
```python
def est_multiple_3(n):
    return somme_chiffres(n) % 3 == 0
```
    \item Même technique d'extraction des chiffres, avec un compteur conditionnel :
```python
def nb_chiffres_pairs(n):
    c = 0
    while n > 0:
        chiffre = n % 10
        if chiffre % 2 == 0:
            c = c + 1
        n = n // 10
    return c
```
    \item Pour `n = 1234` : les chiffres sont 1, 2, 3, 4. La somme vaut $1 + 2 + 3 + 4 = 10$, donc `somme_chiffres(1234)` renvoie `10`. Comme `10 % 3` vaut `1`, `est_multiple_3(1234)` renvoie `False`. Les chiffres pairs sont 2 et 4, donc `nb_chiffres_pairs(1234)` renvoie `2`.
\end{enumerate}

### Problème 3 : Nombres premiers
\begin{enonce}
\begin{enumerate}
    \item Écrire une fonction `est_premier(n)` qui renvoie `True` si l'entier `n` est premier, `False` sinon. On rappelle qu'un entier est premier s'il est supérieur ou égal à 2 et n'admet aucun diviseur autre que 1 et lui-même.
    \item Écrire une fonction `compte_premiers(a, b)` qui renvoie le nombre d'entiers premiers entre `a` et `b` inclus.
    \item Écrire une fonction `liste_premiers(b)` qui renvoie la liste de tous les nombres premiers inférieurs ou égaux à `b`.
    \item Que renvoie `liste_premiers(20)` ?
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item On cherche un diviseur entre 2 et `n-1` ; dès qu'on en trouve un, le nombre n'est pas premier (`break` via `return`) :
```python
def est_premier(n):
    if n < 2:
        return False
    for d in range(2, n):
        if n % d == 0:
            return False
    return True
```
Le test `n < 2` écarte 0, 1 et les négatifs, qui ne sont pas premiers. Si la boucle se termine sans trouver de diviseur, le nombre est premier.
    \item On parcourt l'intervalle et on incrémente un compteur à chaque nombre premier :
```python
def compte_premiers(a, b):
    c = 0
    for n in range(a, b + 1):
        if est_premier(n):
            c = c + 1
    return c
```
    \item Même parcours, mais on accumule les nombres premiers dans une liste :
```python
def liste_premiers(b):
    resultat = []
    for n in range(2, b + 1):
        if est_premier(n):
            resultat.append(n)
    return resultat
```
On part de 2 car c'est le plus petit nombre premier.
    \item Les nombres premiers inférieurs ou égaux à 20 sont 2, 3, 5, 7, 11, 13, 17, 19. Donc `liste_premiers(20)` renvoie `[2, 3, 5, 7, 11, 13, 17, 19]`, et `compte_premiers(2, 20)` renvoie `8`.
\end{enumerate}
