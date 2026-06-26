### Exercice 1 : Critères de divisibilité
\begin{enonce}
On considère l'entier $n = 4\,320$.
\begin{enumerate}
    \item Parmi $2$, $3$, $4$, $5$, $9$ et $10$, déterminer tous les diviseurs de $n$ en utilisant les critères de divisibilité.
    \item Le nombre $2\,837$ est-il divisible par $3$ ? par $9$ ?
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Le chiffre des unités de $4\,320$ est $0$ : donc $n$ est divisible par $2$, par $5$ et par $10$. Ses deux derniers chiffres forment $20$, divisible par $4$, donc $n$ est divisible par $4$. La somme des chiffres est $4 + 3 + 2 + 0 = 9$, divisible par $3$ et par $9$ : donc $n$ est divisible par $3$ et par $9$. Finalement $4\,320$ est divisible par les six nombres $2$, $3$, $4$, $5$, $9$ et $10$.
    \item La somme des chiffres de $2\,837$ est $2 + 8 + 3 + 7 = 20$. Comme $20$ n'est divisible ni par $3$ ni par $9$, l'entier $2\,837$ n'est divisible ni par $3$ ni par $9$.
\end{enumerate}

### Exercice 2 : Reconnaître un nombre premier
\begin{enonce}
\begin{enumerate}
    \item Les nombres $51$, $83$ et $91$ sont-ils premiers ?
    \item Donner la liste de tous les nombres premiers compris entre $20$ et $40$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Pour $51$ : la somme des chiffres est $6$, divisible par $3$, donc $51 = 3 \times 17$ : $51$ n'est pas premier. Pour $83$ : on a $\sqrt{83} \approx 9{,}1$, on teste $2$, $3$, $5$, $7$ ; aucun ne divise $83$, donc $83$ est premier. Pour $91$ : on a $91 = 7 \times 13$, donc $91$ n'est pas premier.
    \item Les nombres premiers entre $20$ et $40$ sont : $23$, $29$, $31$, $37$.
\end{enumerate}

### Exercice 3 : Décomposition en facteurs premiers
\begin{enonce}
Décomposer en produit de facteurs premiers les entiers suivants :
$$180, \qquad 504, \qquad 1\,001.$$
\end{enonce}

\textbf{Solution :}
On divise successivement par les nombres premiers croissants.
\begin{itemize}
    \item $180 = 2 \times 90 = 2 \times 2 \times 45 = 2^2 \times 3^2 \times 5$.
    \item $504 = 2 \times 252 = 2^2 \times 126 = 2^3 \times 63 = 2^3 \times 3^2 \times 7$.
    \item $1\,001 = 7 \times 143 = 7 \times 11 \times 13$.
\end{itemize}
On vérifie : $2^3 \times 3^2 \times 7 = 8 \times 9 \times 7 = 504$ et $7 \times 11 \times 13 = 1\,001$.

### Exercice 4 : PGCD et PPCM
\begin{enonce}
On donne $a = 360$ et $b = 84$.
\begin{enumerate}
    \item Décomposer $a$ et $b$ en facteurs premiers.
    \item En déduire $\text{pgcd}(a, b)$ et $\text{ppcm}(a, b)$.
    \item Vérifier la relation $\text{pgcd}(a, b) \times \text{ppcm}(a, b) = a \times b$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item $360 = 2^3 \times 3^2 \times 5$ et $84 = 2^2 \times 3 \times 7$.
    \item Pour le PGCD, on garde les facteurs communs au plus petit exposant : $\text{pgcd}(360, 84) = 2^2 \times 3 = 12$. Pour le PPCM, on garde tous les facteurs au plus grand exposant : $\text{ppcm}(360, 84) = 2^3 \times 3^2 \times 5 \times 7 = 2\,520$.
    \item On a $\text{pgcd} \times \text{ppcm} = 12 \times 2\,520 = 30\,240$ et $a \times b = 360 \times 84 = 30\,240$ : la relation est bien vérifiée.
\end{enumerate}

### Exercice 5 : Fractions irréductibles
\begin{enonce}
Rendre irréductibles les fractions suivantes :
$$\frac{126}{350}, \qquad \frac{84}{210}.$$
\end{enonce}

\textbf{Solution :}
\begin{itemize}
    \item $126 = 2 \times 3^2 \times 7$ et $350 = 2 \times 5^2 \times 7$, donc $\text{pgcd}(126, 350) = 2 \times 7 = 14$. On divise par $14$ : $\dfrac{126}{350} = \dfrac{9}{25}$. Comme $\text{pgcd}(9, 25) = 1$, la fraction $\dfrac{9}{25}$ est irréductible.
    \item $84 = 2^2 \times 3 \times 7$ et $210 = 2 \times 3 \times 5 \times 7$, donc $\text{pgcd}(84, 210) = 2 \times 3 \times 7 = 42$. On divise par $42$ : $\dfrac{84}{210} = \dfrac{2}{5}$, qui est irréductible.
\end{itemize}

### Exercice 6 : Un partage
\begin{enonce}
Un fleuriste dispose de $48$ roses et $60$ tulipes. Il veut composer des bouquets identiques contenant toutes les fleurs, chaque bouquet ayant le même nombre de roses et le même nombre de tulipes.
\begin{enumerate}
    \item Quel est le nombre maximal de bouquets qu'il peut réaliser ?
    \item Combien de roses et de tulipes contient alors chaque bouquet ?
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Le nombre de bouquets doit diviser à la fois $48$ et $60$ ; pour qu'il soit maximal, c'est $\text{pgcd}(48, 60)$. Comme $48 = 2^4 \times 3$ et $60 = 2^2 \times 3 \times 5$, on obtient $\text{pgcd}(48, 60) = 2^2 \times 3 = 12$. Il peut réaliser au maximum $12$ bouquets.
    \item Chaque bouquet contient $48 \div 12 = 4$ roses et $60 \div 12 = 5$ tulipes.
\end{enumerate}
