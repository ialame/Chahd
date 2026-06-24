### Exercice 1 : Affectation et types
\begin{enonce}
On exécute les instructions suivantes :
```python
a = 7
b = 3.0
c = "12"
d = a > b
```
\begin{enumerate}
    \item Donner le type renvoyé par `type(a)`, `type(b)`, `type(c)` et `type(d)`.
    \item Que vaut `d` ?
    \item Quelle est la différence entre la valeur `12` et la valeur `"12"` ?
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item `type(a)` renvoie `int` (entier), `type(b)` renvoie `float` (réel, car `3.0` contient un point décimal), `type(c)` renvoie `str` (chaîne, car la valeur est entre guillemets) et `type(d)` renvoie `bool` : une comparaison renvoie toujours un booléen.
    \item `d` vaut `True`, car `7 > 3.0` est vrai.
    \item `12` est un **entier** : on peut faire des calculs avec (`12 + 1` vaut `13`). `"12"` est une **chaîne de caractères** : c'est du texte. On ne peut pas l'additionner à un nombre ; il faut d'abord le convertir avec `int("12")`.
\end{enumerate}

### Exercice 2 : Les opérateurs de division
\begin{enonce}
Sans utiliser l'ordinateur, donner la valeur **et le type** renvoyés par chacune des expressions suivantes :
```python
17 / 5
17 // 5
17 % 5
2 ** 10
```
\end{enonce}

\textbf{Solution :}
- `17 / 5` est la division **réelle** : elle renvoie `3.4`, de type `float`. La division `/` renvoie toujours un `float`, même quand le résultat est entier (`10 / 2` vaut `5.0`).
- `17 // 5` est la division **entière** (le quotient) : elle renvoie `3`, de type `int`.
- `17 % 5` est le **reste** (modulo) de la division de 17 par 5 : comme $17 = 5 \times 3 + 2$, elle renvoie `2`, de type `int`.
- `2 ** 10` est la **puissance** $2^{10}$ : elle renvoie `1024`, de type `int`.

### Exercice 3 : Échanger deux variables
\begin{enonce}
On dispose de deux variables `x` et `y` :
```python
x = 5
y = 8
```
\begin{enumerate}
    \item Écrire les instructions qui échangent leurs valeurs en utilisant une variable temporaire `t`.
    \item Réécrire l'échange en une seule ligne, sans variable temporaire.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item On mémorise l'ancienne valeur de `x` avant de l'écraser :
```python
t = x
x = y
y = t
```
Si on écrivait directement `x = y` puis `y = x`, la valeur initiale de `x` serait perdue dès la première ligne, et `x` et `y` finiraient tous deux à `8`.
    \item Python permet l'**affectation simultanée**, qui évalue d'abord toute la partie droite puis affecte :
```python
x, y = y, x
```
Après exécution, `x` vaut `8` et `y` vaut `5`.
\end{enumerate}

### Exercice 4 : Saisie et conversion
\begin{enonce}
On veut lire au clavier un entier `n` saisi par l'utilisateur, puis afficher son carré. Un élève écrit :
```python
n = input("Entrez un entier : ")
print("Son carré est", n * n)
```
\begin{enumerate}
    \item Si l'utilisateur saisit `4`, que se passe-t-il ? Pourquoi ?
    \item Corriger le programme pour qu'il affiche bien `16`.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item La fonction `input` renvoie toujours une **chaîne de caractères**. Donc `n` vaut la chaîne `"4"`, et `n * n` n'est pas un calcul : multiplier une chaîne par un entier répète la chaîne, mais multiplier une chaîne par une chaîne provoque une **erreur** (`TypeError`). Le programme s'arrête sans afficher le carré.
    \item Il faut **convertir** la saisie en entier avec `int(...)` :
```python
n = int(input("Entrez un entier : "))
print("Son carré est", n * n)
```
Avec la saisie `4`, `n` vaut l'entier `4` et le programme affiche `Son carré est 16`.
\end{enumerate}

### Exercice 5 : Expressions booléennes
\begin{enonce}
Soit les variables :
```python
age = 17
permis = False
```
\begin{enumerate}
    \item Que vaut l'expression `age >= 18 and permis` ?
    \item Que vaut l'expression `age >= 18 or not permis` ?
    \item Écrire une expression booléenne qui vaut `True` si l'âge est compris entre 13 et 17 inclus.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item `age >= 18` vaut `False` (car 17 < 18). `False and permis` vaut `False` : un `and` est vrai seulement si ses deux membres sont vrais.
    \item `not permis` vaut `True` (car `permis` est `False`). `False or True` vaut `True` : un `or` est vrai dès qu'un de ses membres est vrai. L'expression vaut donc `True`.
    \item On encadre l'âge par deux comparaisons reliées par `and` :
```python
13 <= age <= 17
```
Python autorise cette écriture chaînée, équivalente à `age >= 13 and age <= 17`. Avec `age = 17`, elle vaut `True`.
\end{enumerate}

### Exercice 6 : Suivre l'évolution des variables
\begin{enonce}
On exécute le programme suivant :
```python
a = 2
b = 5
a = a + b
b = a - b
a = a - b
```
\begin{enumerate}
    \item Donner la valeur de `a` et de `b` après chaque ligne.
    \item Quel est l'effet global de ce programme ?
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item On suit pas à pas, en se rappelant que l'affectation calcule d'abord la partie droite avec les valeurs **actuelles** :
- Après `a = 2` : `a` vaut `2`.
- Après `b = 5` : `a` vaut `2`, `b` vaut `5`.
- Après `a = a + b` : `a` vaut `7`, `b` vaut `5`.
- Après `b = a - b` : `b` vaut `7 - 5 = 2`, `a` vaut toujours `7`.
- Après `a = a - b` : `a` vaut `7 - 2 = 5`, `b` vaut `2`.
    \item Au départ `a = 2` et `b = 5` ; à la fin `a = 5` et `b = 2`. Ce programme **échange** les valeurs de `a` et `b` en utilisant uniquement des additions et des soustractions, sans variable temporaire.
\end{enumerate}
