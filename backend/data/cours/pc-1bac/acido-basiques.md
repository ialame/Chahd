Certaines solutions piquent (vinaigre, citron), d'autres sont savonneuses (eau de Javel, soude) : ce sont des solutions **acides** ou **basiques**. Pour comprendre ce qui les distingue, le chimiste danois **Brønsted** propose une définition fondée sur l'échange d'une seule particule : le **proton** $\text{H}^+$. Ce chapitre établit la notion de **couple acide/base**, décrit la **réaction acido-basique** comme un transfert de proton, et introduit la grandeur qui mesure l'acidité d'une solution : le **pH**.

## 1. Acides et bases selon Brønsted

\begin{definition}[Acide et base]
Selon **Brønsted** :
\begin{itemize}
    \item un **acide** est une espèce chimique capable de **céder** (donner) un proton $\text{H}^+$ ;
    \item une **base** est une espèce chimique capable de **capter** (accepter) un proton $\text{H}^+$.
\end{itemize}
\end{definition}

\begin{remarque}[Le proton n'existe pas seul]
Le proton $\text{H}^+$ est un simple noyau d'hydrogène, extrêmement réactif : il ne peut pas exister libre en solution aqueuse. Il est aussitôt capté par une autre espèce. Une base ne peut donc capter un proton que si un acide en cède un : les deux phénomènes sont **indissociables**.
\end{remarque}

## 2. Le couple acide / base

\begin{definition}[Couple acide/base]
À tout acide $\text{AH}$ qui cède un proton correspond une **base conjuguée** $\text{A}^-$ qui peut le récupérer. L'ensemble forme un **couple acide/base**, noté $\text{AH}/\text{A}^-$, relié par la **demi-équation** :
\[
\boxed{\text{AH} = \text{A}^- + \text{H}^+}
\]
\end{definition}

\begin{exemple}[Quelques couples]
\begin{itemize}
    \item acide chlorhydrique : $\text{HCl}/\text{Cl}^-$, demi-équation $\text{HCl} = \text{Cl}^- + \text{H}^+$ ;
    \item acide éthanoïque : $\text{CH}_3\text{COOH}/\text{CH}_3\text{COO}^-$ ;
    \item ion ammonium : $\text{NH}_4^+/\text{NH}_3$.
\end{itemize}
\end{exemple}

\begin{remarque}[Une espèce peut perdre une charge ou en gagner]
Un acide n'est pas forcément neutre et une base n'est pas forcément chargée : dans le couple $\text{NH}_4^+/\text{NH}_3$, l'acide $\text{NH}_4^+$ est un cation et la base $\text{NH}_3$ est neutre. Ce qui compte est la **différence d'un proton** entre l'acide et sa base conjuguée.
\end{remarque}

## 3. Les couples acide/base de l'eau

\begin{propriete}[L'eau est un ampholyte]
La molécule d'eau peut **à la fois** céder et capter un proton : elle appartient à **deux** couples.
\begin{itemize}
    \item Comme **acide**, dans le couple $\text{H}_2\text{O}/\text{HO}^-$ : $\quad \text{H}_2\text{O} = \text{HO}^- + \text{H}^+$ ;
    \item comme **base**, dans le couple $\text{H}_3\text{O}^+/\text{H}_2\text{O}$ : $\quad \text{H}_3\text{O}^+ = \text{H}_2\text{O} + \text{H}^+$.
\end{itemize}
Une espèce ainsi capable de jouer les deux rôles est dite **amphotère** (ou ampholyte).
\end{propriete}

\begin{important}[L'ion hydronium $\text{H}_3\text{O}^+$]
En solution aqueuse, le proton cédé par un acide est immédiatement capté par une molécule d'eau pour former l'**ion oxonium** (ou hydronium) $\text{H}_3\text{O}^+$. C'est cet ion qui caractérise l'acidité d'une solution.
\end{important}

## 4. La réaction acido-basique

\begin{definition}[Réaction acido-basique]
Une **réaction acido-basique** est une réaction au cours de laquelle se produit un **transfert de proton** $\text{H}^+$ entre l'acide d'un couple et la base d'un autre couple. Elle met donc en jeu **deux couples** $\text{A}_1\text{H}/\text{A}_1^-$ et $\text{A}_2\text{H}/\text{A}_2^-$ :
\[
\text{A}_1\text{H} + \text{A}_2^- \rightarrow \text{A}_1^- + \text{A}_2\text{H}
\]
\end{definition}

\begin{methode}[Écrire l'équation d'une réaction acido-basique]
\begin{itemize}
    \item Identifier les deux couples mis en jeu et leur demi-équation $\text{AH} = \text{A}^- + \text{H}^+$.
    \item Écrire la première demi-équation dans le sens où l'acide **cède** le proton.
    \item Écrire la seconde dans le sens où la base **capte** le proton.
    \item **Additionner** les deux demi-équations : le proton $\text{H}^+$ doit disparaître du bilan final.
\end{itemize}
\end{methode}

\begin{exemple}[Acide éthanoïque dans l'eau]
Couples $\text{CH}_3\text{COOH}/\text{CH}_3\text{COO}^-$ et $\text{H}_3\text{O}^+/\text{H}_2\text{O}$ :
\[
\begin{aligned}
\text{CH}_3\text{COOH} &= \text{CH}_3\text{COO}^- + \text{H}^+ \\
\text{H}_2\text{O} + \text{H}^+ &= \text{H}_3\text{O}^+
\end{aligned}
\]
En additionnant :
\[
\text{CH}_3\text{COOH} + \text{H}_2\text{O} \rightarrow \text{CH}_3\text{COO}^- + \text{H}_3\text{O}^+
\]
\end{exemple}

## 5. Le pH d'une solution aqueuse

\begin{definition}[Définition du pH]
Le **pH** d'une solution aqueuse mesure son acidité. Il est lié à la concentration en ions oxonium $[\text{H}_3\text{O}^+]$ (en $\text{mol}\cdot\text{L}^{-1}$) par :
\[
\boxed{\text{pH} = -\log[\text{H}_3\text{O}^+]} \qquad\text{soit}\qquad [\text{H}_3\text{O}^+] = 10^{-\text{pH}}
\]
Le pH est une grandeur **sans unité**.
\end{definition}

\begin{propriete}[Acide, neutre, basique]
À $25\,^{\circ}\text{C}$, le pH d'une solution aqueuse est compris entre $0$ et $14$ :
\begin{itemize}
    \item solution **acide** si $\text{pH} < 7$ (forte concentration en $\text{H}_3\text{O}^+$) ;
    \item solution **neutre** si $\text{pH} = 7$ ;
    \item solution **basique** si $\text{pH} > 7$ (faible concentration en $\text{H}_3\text{O}^+$).
\end{itemize}
Plus une solution est acide, plus son pH est **petit**.
\end{propriete}

\begin{experience}[Mesurer le pH]
On mesure le pH d'une solution avec un **papier pH** (lecture approchée par une teinte) ou, plus précisément, avec un **pH-mètre** muni d'une sonde, préalablement étalonné à l'aide de solutions tampons.
\end{experience}

\begin{exemple}[Acide chlorhydrique]
Une solution d'acide chlorhydrique de concentration $[\text{H}_3\text{O}^+] = 10^{-2}\ \text{mol}\cdot\text{L}^{-1}$ a pour pH :
\[
\text{pH} = -\log(10^{-2}) = 2
\]
La solution est nettement **acide**.
\end{exemple}

\begin{exemple}[Solution de soude]
La **soude** (hydroxyde de sodium $\text{NaOH}$) libère des ions $\text{HO}^-$ : c'est une solution **basique**, de pH supérieur à $7$ (par exemple $\text{pH} \approx 12$ pour une solution courante). La concentration en ions oxonium y est alors très faible : $[\text{H}_3\text{O}^+] = 10^{-12}\ \text{mol}\cdot\text{L}^{-1}$.
\end{exemple}

## L'essentiel

\begin{propriete}[À retenir]
\begin{itemize}
    \item Selon Brønsted : un **acide** cède un proton $\text{H}^+$, une **base** le capte.
    \item Couple acide/base $\text{AH}/\text{A}^-$, relié par $\text{AH} = \text{A}^- + \text{H}^+$.
    \item L'eau est amphotère : couples $\text{H}_3\text{O}^+/\text{H}_2\text{O}$ et $\text{H}_2\text{O}/\text{HO}^-$.
    \item Réaction acido-basique = **transfert de proton** entre deux couples (somme de deux demi-équations).
    \item $\text{pH} = -\log[\text{H}_3\text{O}^+]$ ; acide si $\text{pH} < 7$, neutre si $\text{pH} = 7$, basique si $\text{pH} > 7$.
\end{itemize}
\end{propriete}
