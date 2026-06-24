-- QCM du chapitre Mathématiques « Les structures algébriques ». ids 2703/2704.
SET SESSION sql_mode = CONCAT(@@sql_mode, ',NO_BACKSLASH_ESCAPES');
SET @l := (SELECT id FROM lecon WHERE slug = 'structures-algebriques'
           AND matiere_id = (SELECT id FROM matiere WHERE slug = 'maths'));

INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
 (2703, NULL, @l, 'QCM — Lois de composition et groupes', 'Lois internes, propriétés et groupes.', 1);

INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES
 (270301,2703,'Une loi de composition interne sur $E$ est une application de $E \times E$ vers :','Le résultat $x * y$ doit rester dans $E$ (stabilité).',1),
 (270302,2703,'Quelle loi n''est pas interne sur $\mathbb{N}$ ?','$2 - 5 = -3 \notin \mathbb{N}$, donc la soustraction n''est pas interne sur $\mathbb{N}$.',2),
 (270303,2703,'Une loi $*$ est associative lorsque :','Par définition $(x*y)*z = x*(y*z)$ pour tous $x,y,z$.',3),
 (270304,2703,'Quel est l''élément neutre de la multiplication ?','$x \times 1 = x$, donc le neutre multiplicatif est $1$.',4),
 (270305,2703,'Le symétrique de $x$ pour l''addition s''appelle :','C''est l''opposé, noté $-x$, car $x + (-x) = 0$.',5),
 (270306,2703,'Lequel des ensembles suivants n''est pas un groupe pour $+$ ?','$(\mathbb{N}, +)$ n''est pas un groupe : $1$ n''a pas d''opposé dans $\mathbb{N}$.',6),
 (270307,2703,'Un groupe dont la loi est commutative est dit :','Un groupe commutatif est appelé groupe abélien.',7),
 (270308,2703,'La caractérisation unique d''un sous-groupe $H$ de $(G,*)$ est :','$H \neq \varnothing$ et $\forall x,y \in H,\ x * y^{-1} \in H$.',8);

INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
 (2703011,270301,'$E$',TRUE,1),(2703012,270301,'$E \times E$',FALSE,2),(2703013,270301,'$\mathbb{R}$',FALSE,3),(2703014,270301,'$\varnothing$',FALSE,4),
 (2703021,270302,'La soustraction',TRUE,1),(2703022,270302,'L''addition',FALSE,2),(2703023,270302,'La multiplication',FALSE,3),(2703024,270302,'Le maximum',FALSE,4),
 (2703031,270303,'$(x*y)*z = x*(y*z)$',TRUE,1),(2703032,270303,'$x*y = y*x$',FALSE,2),(2703033,270303,'$x*e = x$',FALSE,3),(2703034,270303,'$x*x'' = e$',FALSE,4),
 (2703041,270304,'$1$',TRUE,1),(2703042,270304,'$0$',FALSE,2),(2703043,270304,'$-1$',FALSE,3),(2703044,270304,'$x$',FALSE,4),
 (2703051,270305,'L''opposé $-x$',TRUE,1),(2703052,270305,'L''inverse $x^{-1}$',FALSE,2),(2703053,270305,'Le neutre $e$',FALSE,3),(2703054,270305,'Le régulier',FALSE,4),
 (2703061,270306,'$(\mathbb{N}, +)$',TRUE,1),(2703062,270306,'$(\mathbb{Z}, +)$',FALSE,2),(2703063,270306,'$(\mathbb{Q}, +)$',FALSE,3),(2703064,270306,'$(\mathbb{R}, +)$',FALSE,4),
 (2703071,270307,'Abélien',TRUE,1),(2703072,270307,'Cyclique',FALSE,2),(2703073,270307,'Unitaire',FALSE,3),(2703074,270307,'Régulier',FALSE,4),
 (2703081,270308,'$H \neq \varnothing$ et $x * y^{-1} \in H$',TRUE,1),(2703082,270308,'$H = G$',FALSE,2),(2703083,270308,'$H \subseteq \varnothing$',FALSE,3),(2703084,270308,'$x * y \notin H$',FALSE,4);

INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
 (2704, NULL, @l, 'QCM — Anneaux, corps et morphismes', 'Anneaux, corps et homomorphismes.', 2);

INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES
 (270401,2704,'Dans un anneau $(A,+,\times)$, quelle structure forme $(A,+)$ ?','Par définition, $(A,+)$ est un groupe abélien.',1),
 (270402,2704,'Un anneau est dit unitaire lorsque :','La multiplication possède un neutre $1_A$ avec $1_A \neq 0_A$.',2),
 (270403,2704,'Quelle propriété relie $\times$ et $+$ dans un anneau ?','La multiplication est distributive par rapport à l''addition.',3),
 (270404,2704,'Que vaut $0_A \times x$ dans tout anneau ?','On a toujours $0_A \times x = 0_A$.',4),
 (270405,2704,'Lequel des ensembles suivants n''est pas un corps ?','$(\mathbb{Z}, +, \times)$ n''est pas un corps : $2$ n''a pas d''inverse.',5),
 (270406,2704,'Dans un corps $K$, $(K \setminus \{0_K\}, \times)$ est :','Tout élément non nul est inversible : c''est un groupe abélien.',6),
 (270407,2704,'Une application $f$ vérifiant $f(x*y) = f(x) \perp f(y)$ est :','C''est la définition d''un homomorphisme de groupes.',7),
 (270408,2704,'Pour un homomorphisme de groupes $f$, que vaut $f(e)$ ?','Un homomorphisme envoie le neutre sur le neutre : $f(e) = e''$.',8);

INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
 (2704011,270401,'Un groupe abélien',TRUE,1),(2704012,270401,'Un corps',FALSE,2),(2704013,270401,'Un anneau non commutatif',FALSE,3),(2704014,270401,'Un ensemble vide',FALSE,4),
 (2704021,270402,'$\times$ possède un neutre $1_A \neq 0_A$',TRUE,1),(2704022,270402,'$+$ est commutative',FALSE,2),(2704023,270402,'$\times$ est commutative',FALSE,3),(2704024,270402,'$A$ est fini',FALSE,4),
 (2704031,270403,'La distributivité',TRUE,1),(2704032,270403,'L''associativité de $+$',FALSE,2),(2704033,270403,'La commutativité de $\times$',FALSE,3),(2704034,270403,'La stabilité',FALSE,4),
 (2704041,270404,'$0_A$',TRUE,1),(2704042,270404,'$x$',FALSE,2),(2704043,270404,'$1_A$',FALSE,3),(2704044,270404,'$-x$',FALSE,4),
 (2704051,270405,'$(\mathbb{Z}, +, \times)$',TRUE,1),(2704052,270405,'$(\mathbb{Q}, +, \times)$',FALSE,2),(2704053,270405,'$(\mathbb{R}, +, \times)$',FALSE,3),(2704054,270405,'$(\mathbb{C}, +, \times)$',FALSE,4),
 (2704061,270406,'Un groupe abélien',TRUE,1),(2704062,270406,'Un anneau non unitaire',FALSE,2),(2704063,270406,'Un ensemble non stable',FALSE,3),(2704064,270406,'Vide',FALSE,4),
 (2704071,270407,'Un homomorphisme de groupes',TRUE,1),(2704072,270407,'Une partie stable',FALSE,2),(2704073,270407,'Un élément régulier',FALSE,3),(2704074,270407,'Un sous-groupe',FALSE,4),
 (2704081,270408,'$e''$ (le neutre de l''arrivée)',TRUE,1),(2704082,270408,'$0$',FALSE,2),(2704083,270408,'$e$ (le neutre de départ)',FALSE,3),(2704084,270408,'$f(x)^{-1}$',FALSE,4);
