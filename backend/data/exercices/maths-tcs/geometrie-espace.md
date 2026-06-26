### Exercice 1 : Positions relatives de droites dans un cube
\begin{enonce}
$ABCDEFGH$ est un cube : $ABCD$ est la face du bas, $EFGH$ la face du haut avec $E$ au-dessus de $A$, $F$ au-dessus de $B$, $G$ au-dessus de $C$ et $H$ au-dessus de $D$.



Pour chacune des paires de droites suivantes, préciser leur position relative (parallèles, sécantes, ou non coplanaires) :
\begin{enumerate}
    \item $(AD)$ et $(BC)$ ;
    \item $(AB)$ et $(CG)$ ;
    \item $(AC)$ et $(EG)$ ;
    \item $(BF)$ et $(BC)$ ;
    \item $(AF)$ et $(DG)$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item $(AD)$ et $(BC)$ sont deux côtés opposés de la face $ABCD$ : elles sont **parallèles**.
    \item $(AB)$ est une arête du bas et $(CG)$ une arête verticale issue de $C$. Elles n'ont aucun point commun et leurs directions ne sont pas les mêmes : elles sont **non coplanaires** (aucun plan ne les contient toutes les deux).
    \item $(AC)$ et $(EG)$ sont les diagonales de deux faces parallèles ($ABCD$ et $EFGH$). Comme $AEGC$ est un parallélogramme (en fait un rectangle), $(AC)$ et $(EG)$ sont **parallèles**.
    \item $(BF)$ et $(BC)$ passent toutes deux par $B$ : elles sont **sécantes** en $B$.
    \item $(AF)$ est une diagonale de la face $ABFE$ et $(DG)$ une diagonale de la face $DCGH$. Ces deux faces sont parallèles et $AFGD$ est un parallélogramme (on a $\overrightarrow{AF} = \overrightarrow{DG}$), donc $(AF)$ et $(DG)$ sont **parallèles**.
\end{enumerate}

### Exercice 2 : Droite parallèle à un plan
\begin{enonce}
On reprend le cube $ABCDEFGH$ de l'exercice 1.
\begin{enumerate}
    \item Montrer, à l'aide du critère de parallélisme, que la droite $(EH)$ est parallèle au plan $(ABCD)$.
    \item Montrer de même que la droite $(FH)$ est parallèle au plan $(ABCD)$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Critère : si une droite est parallèle à une droite d'un plan, sans être contenue dans ce plan, alors elle est parallèle à ce plan. Or $EFGH$ et $ABCD$ se correspondent face à face, donc $\overrightarrow{EH} = \overrightarrow{AD}$ : la droite $(EH)$ est parallèle à $(AD)$. Comme $(AD)$ est contenue dans $(ABCD)$ et que $(EH)$ ne l'est pas (les points $E$, $H$ sont sur la face du haut), on conclut que $(EH) \parallel (ABCD)$.
    \item De même, $\overrightarrow{FH} = \overrightarrow{BD}$ car les faces $EFGH$ et $ABCD$ sont images l'une de l'autre par la translation $\overrightarrow{AE}$. Donc $(FH) \parallel (BD)$. Comme $(BD) \subset (ABCD)$ et que $(FH) \not\subset (ABCD)$, on a $(FH) \parallel (ABCD)$.
\end{enumerate}

### Exercice 3 : Deux plans parallèles
\begin{enonce}
Toujours dans le cube $ABCDEFGH$, on considère les faces opposées $(ABFE)$ et $(DCGH)$.
\begin{enumerate}
    \item Démontrer que les plans $(ABFE)$ et $(DCGH)$ sont parallèles.
    \item Le plan $(BCGF)$ coupe ces deux plans. Que peut-on dire des deux droites d'intersection obtenues ? Les nommer.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Critère de parallélisme de deux plans : si deux droites sécantes d'un plan sont respectivement parallèles à deux droites de l'autre plan, alors les plans sont parallèles. Dans le plan $(ABFE)$, les droites $(AB)$ et $(AE)$ sont sécantes en $A$. Or $(AB) \parallel (DC)$ (côtés opposés de la face $ABCD$) et $(AE) \parallel (DH)$ (arêtes verticales), avec $(DC)$ et $(DH)$ contenues dans $(DCGH)$. Donc $(ABFE) \parallel (DCGH)$.
    \item Si deux plans parallèles sont coupés par un même plan, les deux droites d'intersection sont **parallèles**. Ici le plan $(BCGF)$ coupe $(ABFE)$ selon $(BF)$ et $(DCGH)$ selon $(CG)$. Donc $(BF) \parallel (CG)$, ce qui se vérifie directement (arêtes verticales du cube).
\end{enumerate}

### Exercice 4 : Théorème du toit
\begin{enonce}
$SABCD$ est une pyramide dont la base $ABCD$ est un trapèze avec $(AB) \parallel (CD)$. Les faces $(SAB)$ et $(SCD)$ se coupent.
\begin{enumerate}
    \item Justifier que les plans $(SAB)$ et $(SCD)$ sont sécants et préciser un point de leur intersection.
    \item Démontrer que leur droite d'intersection $(\Delta)$ est parallèle à $(AB)$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Le point $S$ appartient à la fois à $(SAB)$ et à $(SCD)$ : les deux plans ont donc un point commun. Comme ils ne sont pas confondus (par exemple $A \in (SAB)$ mais $A \notin (SCD)$), ils sont **sécants**, et leur intersection $(\Delta)$ est une droite passant par $S$.
    \item Appliquons le théorème du toit aux plans sécants $(SAB)$ et $(SCD)$, d'intersection $(\Delta)$. La droite $(AB)$ est contenue dans $(SAB)$, la droite $(CD)$ est contenue dans $(SCD)$, et par hypothèse $(AB) \parallel (CD)$. Le théorème du toit affirme alors que $(AB)$, $(CD)$ et $(\Delta)$ sont parallèles. En particulier $(\Delta) \parallel (AB)$ : l'intersection des deux faces est la droite passant par $S$ et parallèle à $(AB)$.
\end{enumerate}

### Exercice 5 : Orthogonalité dans un cube
\begin{enonce}
On reprend le cube $ABCDEFGH$.
\begin{enumerate}
    \item Démontrer que la droite $(AE)$ est orthogonale au plan $(ABCD)$.
    \item En déduire que $(AE)$ est orthogonale à $(BD)$ et à $(AC)$.
    \item Les droites $(AE)$ et $(BD)$ sont-elles perpendiculaires ?
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Critère d'orthogonalité droite-plan : une droite orthogonale à deux droites sécantes d'un plan est orthogonale à ce plan. L'arête $(AE)$ est verticale, donc orthogonale aux arêtes $(AB)$ et $(AD)$ du carré de base, qui sont deux droites sécantes (en $A$) du plan $(ABCD)$. Donc $(AE) \perp (ABCD)$.
    \item Une droite orthogonale à un plan est orthogonale à **toutes** les droites de ce plan. Comme $(BD)$ et $(AC)$ sont contenues dans $(ABCD)$, on en déduit $(AE) \perp (BD)$ et $(AE) \perp (AC)$.
    \item Deux droites sont perpendiculaires si elles sont orthogonales **et** sécantes (coplanaires). Or $(AE)$ et $(BD)$ n'ont aucun point commun et ne sont pas coplanaires. Elles sont donc **orthogonales mais non perpendiculaires**.
\end{enumerate}

### Exercice 6 : Section plane d'un cube
\begin{enonce}
Dans le cube $ABCDEFGH$, on note $I$ le milieu de $[AE]$ et $J$ le milieu de $[BF]$.
\begin{enumerate}
    \item Justifier que $(IJ) \parallel (AB)$.
    \item Construire et décrire la section du cube par le plan $(IJG)$.
\end{enumerate}
\end{enonce}

\textbf{Solution :}
\begin{enumerate}
    \item Dans la face $ABFE$, $I$ et $J$ sont les milieux des côtés $[AE]$ et $[BF]$. Le segment $[IJ]$ est donc parallèle à $[AB]$ (théorème des milieux dans le rectangle $ABFE$), d'où $(IJ) \parallel (AB)$.
    \item Le plan $(IJG)$ coupe la face avant $ABFE$ selon $[IJ]$. Il contient $G$, sommet de la face arrière $DCGH$. Les faces $ABFE$ et $DCGH$ étant parallèles, le plan de coupe les rencontre selon deux segments parallèles : sur $DCGH$, le côté passant par $G$ et parallèle à $[IJ]$ (donc à $(AB)$, donc à $(HG)$) est le segment $[HG]$ lui-même. La section est ainsi délimitée par $[IJ]$ (sur $ABFE$), $[JG]$ (sur la face droite $BCGF$), $[GH]$ (sur $DCGH$) et $[HI]$ (sur la face gauche $ADHE$). C'est le **parallélogramme** $IJGH$ : on vérifie en effet $\overrightarrow{IJ} = \overrightarrow{HG}$ et $\overrightarrow{IH} = \overrightarrow{JG}$.
\end{enumerate}
