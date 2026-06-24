### Problème 1 : Boîte à outils de géométrie
\begin{enonce}
On veut construire un petit ensemble de fonctions pour travailler sur des cercles. On rappelle qu'on peut utiliser une valeur approchée de $\pi$.
\begin{enumerate}
    \item Écrire une fonction `aire_disque(r)` qui renvoie l'aire d'un disque de rayon `r` (aire $= \pi r^2$).
    \item Écrire une fonction `perimetre_cercle(r)` qui renvoie le périmètre d'un cercle de rayon `r` (périmètre $= 2 \pi r$).
    \item En **utilisant** les deux fonctions précédentes, écrire une procédure `affiche_infos(r)` qui affiche le rayon, l'aire et le périmètre, sans rien renvoyer.
    \item Pourquoi est-il préférable de définir une seule fois la valeur de $\pi$ comme variable globale plutôt que de la réécrire dans chaque fonction ?
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item On définit `PI` une fois pour toutes en variable globale, puis on l'utilise :
```python
PI = 3.14159

def aire_disque(r):
    return PI * r * r
```
    \item La même variable globale `PI` est lue par cette fonction :
```python
def perimetre_cercle(r):
    return 2 * PI * r
```
    \item La procédure appelle les deux fonctions et affiche les résultats ; elle ne contient pas de `return` :
```python
def affiche_infos(r):
    print("Rayon :", r)
    print("Aire :", aire_disque(r))
    print("Perimetre :", perimetre_cercle(r))
```
Par exemple `affiche_infos(2)` affiche `Rayon : 2`, `Aire : 12.56636` puis `Perimetre : 12.56636`.
    \item En définissant `PI` une seule fois, toutes les fonctions utilisent la **même** valeur : si on veut une approximation plus précise, on ne modifie qu'un seul endroit. Recopier la valeur dans chaque fonction multiplie les risques d'erreur et d'incohérence.
\end{enumerate}

### Problème 2 : Analyse d'un mot
\begin{enonce}
On veut analyser une chaîne de caractères composée de lettres minuscules.
\begin{enumerate}
    \item Écrire une fonction `est_voyelle(c)` qui renvoie `True` si le caractère `c` est une voyelle (`a`, `e`, `i`, `o`, `u`, `y`), `False` sinon.
    \item En utilisant `est_voyelle`, écrire une fonction `compte_voyelles(mot)` qui renvoie le nombre de voyelles du mot.
    \item Écrire une fonction `compte_consonnes(mot)` qui renvoie le nombre de consonnes, en réutilisant les fonctions précédentes (on supposera que `mot` ne contient que des lettres).
    \item Tester ces fonctions sur le mot `"bonjour"`.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item On teste l'appartenance à une chaîne contenant les voyelles :
```python
def est_voyelle(c):
    return c in "aeiouy"
```
    \item On parcourt le mot et on incrémente un compteur à chaque voyelle :
```python
def compte_voyelles(mot):
    c = 0
    for lettre in mot:
        if est_voyelle(lettre):
            c = c + 1
    return c
```
    \item Les lettres qui ne sont pas des voyelles sont des consonnes. Le plus simple est de retrancher les voyelles de la longueur totale, en réutilisant `compte_voyelles` :
```python
def compte_consonnes(mot):
    return len(mot) - compte_voyelles(mot)
```
    \item Pour `"bonjour"` (7 lettres), les voyelles sont `o`, `o`, `u`, soit 3 voyelles :
```python
print(compte_voyelles("bonjour"))    # affiche 3
print(compte_consonnes("bonjour"))   # affiche 4
```
La somme des deux vaut bien `len("bonjour")`, c'est-à-dire 7.
\end{enumerate}

### Problème 3 : Convertisseur de température
\begin{enonce}
On souhaite convertir des températures entre degrés Celsius et degrés Fahrenheit. On rappelle les formules :
$$F = \frac{9}{5} \, C + 32 \qquad C = \frac{5}{9} \, (F - 32)$$
\begin{enumerate}
    \item Écrire une fonction `celsius_vers_fahrenheit(c)` qui renvoie la température en Fahrenheit.
    \item Écrire une fonction `fahrenheit_vers_celsius(f)` qui renvoie la température en Celsius.
    \item Vérifier que convertir 100 °C en Fahrenheit puis reconvertir le résultat en Celsius redonne bien 100.
    \item Écrire une fonction `tableau_conversion(debut, fin)` qui renvoie la liste des températures en Fahrenheit correspondant aux degrés Celsius entiers de `debut` à `fin` inclus.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item On applique directement la première formule :
```python
def celsius_vers_fahrenheit(c):
    return 9 / 5 * c + 32
```
    \item On applique la formule réciproque :
```python
def fahrenheit_vers_celsius(f):
    return 5 / 9 * (f - 32)
```
    \item On compose les deux fonctions : la sortie de l'une devient l'argument de l'autre :
```python
f = celsius_vers_fahrenheit(100)   # f vaut 212.0
print(fahrenheit_vers_celsius(f))  # affiche 100.0
```
On retrouve bien `100.0` : les deux fonctions sont réciproques l'une de l'autre.
    \item On construit une liste en appelant la première fonction pour chaque degré entier :
```python
def tableau_conversion(debut, fin):
    resultat = []
    for c in range(debut, fin + 1):
        resultat.append(celsius_vers_fahrenheit(c))
    return resultat
```
Par exemple `tableau_conversion(0, 3)` renvoie `[32.0, 33.8, 35.6, 37.4]`.
\end{enumerate}
