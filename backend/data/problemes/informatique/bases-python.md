### Problème 1 : Conversion d'une durée
\begin{enonce}
On dispose d'une durée exprimée en secondes, stockée dans une variable entière, par exemple :
```python
duree = 3725
```
\begin{enumerate}
    \item Calculer le nombre d'heures entières contenues dans `duree`, à l'aide d'un opérateur de division.
    \item Une fois les heures retirées, calculer le nombre de minutes entières restantes.
    \item Calculer le nombre de secondes restantes.
    \item Écrire un programme complet qui lit une durée au clavier et affiche le résultat sous la forme `1 h 2 min 5 s`.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Une heure vaut $3600$ secondes. Le nombre d'heures entières est le **quotient** de la division entière :
```python
heures = duree // 3600   # 3725 // 3600 = 1
```
    \item Le **reste** après les heures s'obtient avec le modulo, puis on le divise par 60 pour avoir les minutes (une minute vaut 60 secondes) :
```python
reste = duree % 3600     # 125
minutes = reste // 60    # 125 // 60 = 2
```
    \item Les secondes restantes sont le reste de la division par 60 :
```python
secondes = reste % 60    # 125 % 60 = 5
```
    \item On rassemble le tout en lisant la durée et en convertissant la saisie en entier :
```python
duree = int(input("Durée en secondes : "))
heures = duree // 3600
reste = duree % 3600
minutes = reste // 60
secondes = reste % 60
print(heures, "h", minutes, "min", secondes, "s")
```
Pour `duree = 3725`, le programme affiche `1 h 2 min 5 s`. Les opérateurs `//` et `%` sont la clé : `//` donne le nombre de paquets complets, `%` donne ce qui reste.
\end{enumerate}

### Problème 2 : Calcul d'une facture
\begin{enonce}
Un magasin vend un article à un prix unitaire `prix`. Un client en achète une `quantite`. On applique une réduction de 10 % si le montant dépasse 500 dirhams, puis une TVA de 20 %.
\begin{enumerate}
    \item Écrire les instructions qui calculent le `montant` hors réduction (prix unitaire multiplié par la quantité).
    \item Écrire une expression booléenne qui vaut `True` si la réduction s'applique.
    \item En supposant la réduction applicable, calculer le montant après réduction.
    \item Écrire un programme complet qui lit `prix` (un réel) et `quantite` (un entier) au clavier, applique la réduction si nécessaire, ajoute la TVA et affiche le montant final à payer.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Le montant brut est un produit ; on l'écrit dans une variable :
```python
montant = prix * quantite
```
    \item La réduction s'applique quand le montant dépasse 500 :
```python
montant > 500
```
Cette expression renvoie un booléen (`True` ou `False`).
    \item Réduire de 10 %, c'est garder 90 % du montant, soit multiplier par `0.9` :
```python
montant = montant * 0.9
```
    \item On assemble le programme. Le test `if` n'applique la réduction que si la condition est vraie, puis on multiplie par `1.2` pour la TVA de 20 % :
```python
prix = float(input("Prix unitaire : "))
quantite = int(input("Quantité : "))
montant = prix * quantite
if montant > 500:
    montant = montant * 0.9
montant = montant * 1.2
print("Montant à payer :", montant, "dirhams")
```
Par exemple, pour `prix = 120.0` et `quantite = 5`, le montant brut vaut `600.0` (> 500), donc après réduction `540.0`, puis après TVA `648.0`. Noter l'usage de `float` pour le prix (qui peut être décimal) et de `int` pour la quantité.
\end{enumerate}

### Problème 3 : Échange et chiffres d'un nombre
\begin{enonce}
On considère un entier `n` à deux chiffres, par exemple `n = 47`.
\begin{enumerate}
    \item À l'aide des opérateurs `//` et `%`, extraire le chiffre des dizaines et le chiffre des unités de `n`.
    \item Vérifier sur l'exemple `n = 47` que l'on obtient bien `4` et `7`.
    \item Construire l'entier obtenu en **échangeant** les deux chiffres (ici, `74`).
    \item Écrire un programme complet qui lit un entier à deux chiffres au clavier et affiche l'entier dont les chiffres sont inversés, ainsi que la somme de ses deux chiffres.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Le chiffre des unités est le reste de la division par 10 ; le chiffre des dizaines est le quotient de la division entière par 10 :
```python
dizaines = n // 10
unites = n % 10
```
    \item Pour `n = 47` : `47 // 10` vaut `4` (les dizaines) et `47 % 10` vaut `7` (les unités). On retrouve bien les deux chiffres.
    \item L'entier inversé a pour dizaines l'ancien chiffre des unités, et pour unités l'ancien chiffre des dizaines. On le reconstruit en multipliant par 10 :
```python
inverse = unites * 10 + dizaines
```
Pour `n = 47`, on obtient `7 * 10 + 4 = 74`.
    \item Le programme complet lit la saisie, la convertit en entier et affiche les deux résultats demandés :
```python
n = int(input("Entier à deux chiffres : "))
dizaines = n // 10
unites = n % 10
inverse = unites * 10 + dizaines
print("Nombre inversé :", inverse)
print("Somme des chiffres :", dizaines + unites)
```
Pour `n = 47`, le programme affiche `Nombre inversé : 74` puis `Somme des chiffres : 11`. Ce problème montre que `//` et `%` par 10 permettent de « découper » un nombre chiffre par chiffre.
\end{enumerate}
