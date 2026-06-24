-- QCM du chapitre Mathématiques « Les nombres complexes (approfondissement) ». ids 2705/2706.
SET SESSION sql_mode = CONCAT(@@sql_mode, ',NO_BACKSLASH_ESCAPES');
SET @l := (SELECT id FROM lecon WHERE slug = 'nombres-complexes-sm'
           AND matiere_id = (SELECT id FROM matiere WHERE slug = 'maths'));

INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
 (2705, NULL, @l, 'QCM — Forme exponentielle, Moivre et racines n-ièmes', 'Forme exponentielle, module et argument, formule de Moivre, formules d''Euler, racines $n$-ièmes.', 1);

INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES
 (270501,2705,'La forme exponentielle d''un complexe non nul de module $r$ et d''argument $\theta$ est :','Par définition $e^{i\theta} = \cos\theta + i\sin\theta$, donc $z = r\,e^{i\theta}$.',1),
 (270502,2705,'Que vaut $|e^{i\theta}|$ pour tout réel $\theta$ ?','Car $\cos^2\theta + \sin^2\theta = 1$, le module vaut $1$.',2),
 (270503,2705,'Pour $z = r\,e^{i\theta}$ et $z'' = r''\,e^{i\theta''}$, le produit $zz''$ vaut :','Les modules se multiplient et les arguments s''ajoutent.',3),
 (270504,2705,'D''après la formule de Moivre, $(\cos\theta + i\sin\theta)^n$ vaut :','La formule de Moivre donne $\cos(n\theta) + i\sin(n\theta)$.',4),
 (270505,2705,'D''après les formules d''Euler, $\cos\theta$ vaut :','$\cos\theta = \dfrac{e^{i\theta} + e^{-i\theta}}{2}$.',5),
 (270506,2705,'Combien de solutions distinctes a l''équation $z^n = 1$ ?','Il y a exactement $n$ racines $n$-ièmes de l''unité.',6),
 (270507,2705,'Les racines $n$-ièmes de l''unité sont :','Ce sont les $z_k = e^{i\frac{2k\pi}{n}}$ pour $k = 0, \dots, n-1$.',7),
 (270508,2705,'Que vaut la somme des $n$ racines $n$-ièmes de l''unité ($n \ge 2$) ?','La somme des racines $n$-ièmes de l''unité est nulle.',8);

INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
 (2705011,270501,'$z = r\,e^{i\theta}$',TRUE,1),(2705012,270501,'$z = r + e^{i\theta}$',FALSE,2),(2705013,270501,'$z = \theta\,e^{ir}$',FALSE,3),(2705014,270501,'$z = e^{r\theta}$',FALSE,4),
 (2705021,270502,'$1$',TRUE,1),(2705022,270502,'$\theta$',FALSE,2),(2705023,270502,'$0$',FALSE,3),(2705024,270502,'$e^\theta$',FALSE,4),
 (2705031,270503,'$r r''\,e^{i(\theta+\theta'')}$',TRUE,1),(2705032,270503,'$r r''\,e^{i(\theta-\theta'')}$',FALSE,2),(2705033,270503,'$(r+r'')\,e^{i\theta\theta''}$',FALSE,3),(2705034,270503,'$r r''\,e^{i\theta\theta''}$',FALSE,4),
 (2705041,270504,'$\cos(n\theta) + i\sin(n\theta)$',TRUE,1),(2705042,270504,'$n\cos\theta + i n\sin\theta$',FALSE,2),(2705043,270504,'$\cos(\theta^n) + i\sin(\theta^n)$',FALSE,3),(2705044,270504,'$\cos\theta + i\sin(n\theta)$',FALSE,4),
 (2705051,270505,'$\dfrac{e^{i\theta} + e^{-i\theta}}{2}$',TRUE,1),(2705052,270505,'$\dfrac{e^{i\theta} - e^{-i\theta}}{2i}$',FALSE,2),(2705053,270505,'$\dfrac{e^{i\theta} + e^{-i\theta}}{2i}$',FALSE,3),(2705054,270505,'$\dfrac{e^{i\theta}}{2}$',FALSE,4),
 (2705061,270506,'$n$',TRUE,1),(2705062,270506,'$1$',FALSE,2),(2705063,270506,'$2$',FALSE,3),(2705064,270506,'Une infinité',FALSE,4),
 (2705071,270507,'$e^{i\frac{2k\pi}{n}},\ k = 0,\dots,n-1$',TRUE,1),(2705072,270507,'$e^{i\frac{k\pi}{n}},\ k = 0,\dots,n-1$',FALSE,2),(2705073,270507,'$e^{ikn},\ k = 0,\dots,n-1$',FALSE,3),(2705074,270507,'$n^k,\ k = 0,\dots,n-1$',FALSE,4),
 (2705081,270508,'$0$',TRUE,1),(2705082,270508,'$1$',FALSE,2),(2705083,270508,'$n$',FALSE,3),(2705084,270508,'$-1$',FALSE,4);

INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
 (2706, NULL, @l, 'QCM — Géométrie, équations et transformations', 'Affixe, module-distance, argument-angle, équations dans $\mathbb{C}$, translation, rotation, homothétie, similitude.', 2);

INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES
 (270601,2706,'La distance $AB$ en fonction des affixes vaut :','$AB = |z_B - z_A|$, module de l''affixe du vecteur $\vec{AB}$.',1),
 (270602,2706,'L''argument de $z_B - z_A$ représente :','C''est l''angle $(\vec{u}, \vec{AB})$ modulo $2\pi$.',2),
 (270603,2706,'Les points $A$, $B$, $C$ sont alignés si et seulement si :','$\dfrac{z_C - z_A}{z_B - z_A}$ est un réel.',3),
 (270604,2706,'Pour $az^2 + bz + c = 0$ ($a,b,c \in \mathbb{C}$), avec $\delta^2 = \Delta = b^2-4ac$, les solutions sont :','$z = \dfrac{-b \pm \delta}{2a}$.',4),
 (270605,2706,'L''écriture complexe d''une rotation de centre $\Omega(\omega)$ et d''angle $\theta$ est :','$z'' - \omega = e^{i\theta}(z - \omega)$.',5),
 (270606,2706,'L''écriture complexe d''une translation de vecteur d''affixe $b$ est :','$z'' = z + b$.',6),
 (270607,2706,'La transformation $z'' = az + b$ avec $a \ne 1$ est une similitude directe de rapport et d''angle :','Le rapport est $|a|$ et l''angle est $\arg(a)$.',7),
 (270608,2706,'Le centre (point fixe) de la similitude $z'' = az + b$ ($a \ne 1$) a pour affixe :','On résout $\omega = a\omega + b$, d''où $\omega = \dfrac{b}{1-a}$.',8);

INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
 (2706011,270601,'$|z_B - z_A|$',TRUE,1),(2706012,270601,'$z_B - z_A$',FALSE,2),(2706013,270601,'$\arg(z_B - z_A)$',FALSE,3),(2706014,270601,'$|z_B| - |z_A|$',FALSE,4),
 (2706021,270602,'L''angle $(\vec{u}, \vec{AB})$',TRUE,1),(2706022,270602,'La distance $AB$',FALSE,2),(2706023,270602,'L''aire du triangle',FALSE,3),(2706024,270602,'Le milieu de $[AB]$',FALSE,4),
 (2706031,270603,'$\dfrac{z_C - z_A}{z_B - z_A} \in \mathbb{R}$',TRUE,1),(2706032,270603,'$\dfrac{z_C - z_A}{z_B - z_A} \in i\mathbb{R}$',FALSE,2),(2706033,270603,'$z_A + z_B + z_C = 0$',FALSE,3),(2706034,270603,'$|z_C| = |z_A| = |z_B|$',FALSE,4),
 (2706041,270604,'$z = \dfrac{-b \pm \delta}{2a}$',TRUE,1),(2706042,270604,'$z = \dfrac{-b \pm \sqrt{\Delta}}{2a}$ avec $\sqrt{\Delta} \ge 0$',FALSE,2),(2706043,270604,'$z = \dfrac{b \pm \delta}{2a}$',FALSE,3),(2706044,270604,'$z = -b \pm \delta$',FALSE,4),
 (2706051,270605,'$z'' - \omega = e^{i\theta}(z - \omega)$',TRUE,1),(2706052,270605,'$z'' - \omega = \theta(z - \omega)$',FALSE,2),(2706053,270605,'$z'' = z + e^{i\theta}$',FALSE,3),(2706054,270605,'$z'' - \omega = e^{i\theta} z$',FALSE,4),
 (2706061,270606,'$z'' = z + b$',TRUE,1),(2706062,270606,'$z'' = bz$',FALSE,2),(2706063,270606,'$z'' = z - \omega$',FALSE,3),(2706064,270606,'$z'' = e^{ib} z$',FALSE,4),
 (2706071,270607,'Rapport $|a|$, angle $\arg(a)$',TRUE,1),(2706072,270607,'Rapport $a$, angle $|a|$',FALSE,2),(2706073,270607,'Rapport $\arg(a)$, angle $|a|$',FALSE,3),(2706074,270607,'Rapport $1$, angle $b$',FALSE,4),
 (2706081,270608,'$\omega = \dfrac{b}{1 - a}$',TRUE,1),(2706082,270608,'$\omega = \dfrac{b}{a - 1}$',FALSE,2),(2706083,270608,'$\omega = \dfrac{a}{1 - b}$',FALSE,3),(2706084,270608,'$\omega = a + b$',FALSE,4);
