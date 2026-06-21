-- QCM du chapitre « Transformations rapides et lentes » (notions + applications).
SET SESSION sql_mode = CONCAT(@@sql_mode, ',NO_BACKSLASH_ESCAPES');
SET @l := (SELECT id FROM lecon WHERE slug = 'transformations-rapides-lentes'
           AND matiere_id = (SELECT id FROM matiere WHERE slug = 'physique-chimie'));

-- ===== notions (2129) =====
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
 (2129, NULL, @l, 'QCM — Transformations rapides/lentes : notions', 'Vitesse, demi-réaction, facteurs cinétiques.', 1);

INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES
 (212901,2129,'Une transformation chimique rapide est :','Quasi instantanée.',1),
 (212902,2129,'Une transformation chimique lente :','Évolue de façon mesurable dans le temps.',2),
 (212903,2129,'La vitesse volumique de réaction est définie par :','$v = \dfrac{1}{V}\dfrac{\mathrm{d}x}{\mathrm{d}t}$.',3),
 (212904,2129,'Au cours du temps, la vitesse de réaction :','Diminue.',4),
 (212905,2129,'Graphiquement, la vitesse correspond à :','La pente de la tangente à la courbe $x(t)$.',5),
 (212906,2129,'Le temps de demi-réaction correspond à :','$x = \dfrac{x_{max}}{2}$.',6),
 (212907,2129,'Les facteurs cinétiques sont :','La température, la concentration et le catalyseur.',7),
 (212908,2129,'Un catalyseur :','Accélère la réaction sans être consommé.',8);

INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
 (2129011,212901,'quasi instantanée',TRUE,1),(2129012,212901,'très lente',FALSE,2),(2129013,212901,'impossible',FALSE,3),(2129014,212901,'réversible',FALSE,4),
 (2129021,212902,'évolue de façon mesurable dans le temps',TRUE,1),(2129022,212902,'est instantanée',FALSE,2),(2129023,212902,'ne se produit pas',FALSE,3),(2129024,212902,'est toujours totale',FALSE,4),
 (2129031,212903,'$\dfrac{1}{V}\dfrac{\mathrm{d}x}{\mathrm{d}t}$',TRUE,1),(2129032,212903,'$V\dfrac{\mathrm{d}x}{\mathrm{d}t}$',FALSE,2),(2129033,212903,'$\dfrac{x}{t}$',FALSE,3),(2129034,212903,'$\dfrac{\mathrm{d}V}{\mathrm{d}t}$',FALSE,4),
 (2129041,212904,'diminue',TRUE,1),(2129042,212904,'augmente',FALSE,2),(2129043,212904,'reste constante',FALSE,3),(2129044,212904,'est nulle',FALSE,4),
 (2129051,212905,'la pente de la tangente à $x(t)$',TRUE,1),(2129052,212905,'l''ordonnée à l''origine',FALSE,2),(2129053,212905,'l''aire sous la courbe',FALSE,3),(2129054,212905,'la valeur finale',FALSE,4),
 (2129061,212906,'$x = \dfrac{x_{max}}{2}$',TRUE,1),(2129062,212906,'$x = x_{max}$',FALSE,2),(2129063,212906,'$x = 0$',FALSE,3),(2129064,212906,'$x = 2\,x_{max}$',FALSE,4),
 (2129071,212907,'température, concentration, catalyseur',TRUE,1),(2129072,212907,'masse, volume, couleur',FALSE,2),(2129073,212907,'pression uniquement',FALSE,3),(2129074,212907,'aucun',FALSE,4),
 (2129081,212908,'accélère sans être consommé',TRUE,1),(2129082,212908,'ralentit la réaction',FALSE,2),(2129083,212908,'est un réactif',FALSE,3),(2129084,212908,'apparaît dans le bilan',FALSE,4);

-- ===== applications (2130) =====
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
 (2130, NULL, @l, 'QCM — Transformations rapides/lentes : applications', 'Facteurs cinétiques, vitesse, suivi.', 2);

INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES
 (213001,2130,'Si l''on augmente la température, la vitesse de réaction :','Augmente.',1),
 (213002,2130,'Si l''on augmente la concentration des réactifs, la vitesse :','Augmente.',2),
 (213003,2130,'Un catalyseur apparaît-il dans le bilan de la réaction ?','Non (il n''est pas consommé).',3),
 (213004,2130,'La vitesse de réaction est maximale :','À $t = 0$ (au début de la réaction).',4),
 (213005,2130,'Pour suivre une réaction qui dégage un gaz, on peut mesurer :','Le volume (ou la pression) du gaz.',5),
 (213006,2130,'Lorsque l''avancement atteint $x_{max}$, la vitesse est :','Nulle.',6),
 (213007,2130,'À l''instant $t_{1/2}$, l''avancement vaut :','$\dfrac{x_{max}}{2}$.',7),
 (213008,2130,'Une réaction de précipitation est généralement :','Rapide.',8);

INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
 (2130011,213001,'augmente',TRUE,1),(2130012,213001,'diminue',FALSE,2),(2130013,213001,'ne change pas',FALSE,3),(2130014,213001,'s''annule',FALSE,4),
 (2130021,213002,'augmente',TRUE,1),(2130022,213002,'diminue',FALSE,2),(2130023,213002,'ne change pas',FALSE,3),(2130024,213002,'devient négative',FALSE,4),
 (2130031,213003,'non',TRUE,1),(2130032,213003,'oui',FALSE,2),(2130033,213003,'seulement à chaud',FALSE,3),(2130034,213003,'seulement en catalyse enzymatique',FALSE,4),
 (2130041,213004,'à t = 0',TRUE,1),(2130042,213004,'à la fin',FALSE,2),(2130043,213004,'à $t_{1/2}$',FALSE,3),(2130044,213004,'jamais',FALSE,4),
 (2130051,213005,'le volume (ou la pression) du gaz',TRUE,1),(2130052,213005,'la masse du solvant',FALSE,2),(2130053,213005,'la couleur du bécher',FALSE,3),(2130054,213005,'rien',FALSE,4),
 (2130061,213006,'nulle',TRUE,1),(2130062,213006,'maximale',FALSE,2),(2130063,213006,'constante',FALSE,3),(2130064,213006,'négative',FALSE,4),
 (2130071,213007,'$\dfrac{x_{max}}{2}$',TRUE,1),(2130072,213007,'$x_{max}$',FALSE,2),(2130073,213007,'$0$',FALSE,3),(2130074,213007,'$\dfrac{x_{max}}{4}$',FALSE,4),
 (2130081,213008,'rapide',TRUE,1),(2130082,213008,'lente',FALSE,2),(2130083,213008,'impossible',FALSE,3),(2130084,213008,'catalysée',FALSE,4);
