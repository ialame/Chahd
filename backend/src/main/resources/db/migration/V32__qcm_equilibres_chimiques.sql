-- QCM du chapitre « Les équilibres chimiques » (notions + applications).
SET SESSION sql_mode = CONCAT(@@sql_mode, ',NO_BACKSLASH_ESCAPES');
SET @l := (SELECT id FROM lecon WHERE slug = 'equilibres-chimiques'
           AND matiere_id = (SELECT id FROM matiere WHERE slug = 'physique-chimie'));

-- ===== notions (2131) =====
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
 (2131, NULL, @l, 'QCM — Équilibres chimiques : notions', 'Quotient de réaction, constante K, évolution.', 1);

INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES
 (213101,2131,'Une transformation limitée s''effectue :','Dans les deux sens.',1),
 (213102,2131,'L''état d''équilibre chimique est :','Dynamique (les deux réactions se poursuivent).',2),
 (213103,2131,'Pour $a\,A + b\,B \rightleftharpoons c\,C + d\,D$, le quotient de réaction est :','$Q_r = \dfrac{[C]^{c}[D]^{d}}{[A]^{a}[B]^{b}}$.',3),
 (213104,2131,'Les solides et le solvant dans l''expression de $Q_r$ :','N''interviennent pas (leur terme vaut 1).',4),
 (213105,2131,'À l''équilibre, le quotient de réaction est égal à :','La constante d''équilibre $K$.',5),
 (213106,2131,'La constante d''équilibre $K$ dépend :','De la température seulement.',6),
 (213107,2131,'Le taux d''avancement final est défini par :','$\tau = \dfrac{x_f}{x_{max}}$.',7),
 (213108,2131,'Si $Q_{r,i} < K$, le système évolue dans le sens :','Direct.',8);

INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
 (2131011,213101,'dans les deux sens',TRUE,1),(2131012,213101,'dans un seul sens (totale)',FALSE,2),(2131013,213101,'sans réaction',FALSE,3),(2131014,213101,'instantanément',FALSE,4),
 (2131021,213102,'dynamique',TRUE,1),(2131022,213102,'totalement figé',FALSE,2),(2131023,213102,'impossible',FALSE,3),(2131024,213102,'unidirectionnel',FALSE,4),
 (2131031,213103,'$\dfrac{[C]^{c}[D]^{d}}{[A]^{a}[B]^{b}}$',TRUE,1),(2131032,213103,'$\dfrac{[A]^{a}[B]^{b}}{[C]^{c}[D]^{d}}$',FALSE,2),(2131033,213103,'$[C]+[D]-[A]-[B]$',FALSE,3),(2131034,213103,'$[A][B][C][D]$',FALSE,4),
 (2131041,213104,'n''interviennent pas (terme = 1)',TRUE,1),(2131042,213104,'comptent comme les autres',FALSE,2),(2131043,213104,'comptent pour 0',FALSE,3),(2131044,213104,'doublent le quotient',FALSE,4),
 (2131051,213105,'la constante d''équilibre $K$',TRUE,1),(2131052,213105,'0',FALSE,2),(2131053,213105,'1 toujours',FALSE,3),(2131054,213105,'l''infini',FALSE,4),
 (2131061,213106,'de la température seulement',TRUE,1),(2131062,213106,'des concentrations initiales',FALSE,2),(2131063,213106,'du volume',FALSE,3),(2131064,213106,'de la pression seulement',FALSE,4),
 (2131071,213107,'$\dfrac{x_f}{x_{max}}$',TRUE,1),(2131072,213107,'$\dfrac{x_{max}}{x_f}$',FALSE,2),(2131073,213107,'$x_f \times x_{max}$',FALSE,3),(2131074,213107,'$x_f - x_{max}$',FALSE,4),
 (2131081,213108,'direct',TRUE,1),(2131082,213108,'inverse',FALSE,2),(2131083,213108,'aucun',FALSE,3),(2131084,213108,'les deux à la fois',FALSE,4);

-- ===== applications (2132) =====
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
 (2132, NULL, @l, 'QCM — Équilibres chimiques : applications', 'Sens d''évolution, Q_r, taux d''avancement.', 2);

INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES
 (213201,2132,'Si $Q_{r,i} > K$, le système évolue dans le sens :','Inverse.',1),
 (213202,2132,'Si $Q_{r,i} = K$, le système est :','À l''équilibre (pas d''évolution).',2),
 (213203,2132,'Une transformation totale a un taux d''avancement final :','$\tau = 1$.',3),
 (213204,2132,'Pour $A \rightleftharpoons B$ avec $[A] = 0{,}1$ et $[B] = 0{,}3~\mathrm{mol/L}$, le quotient $Q_r$ vaut :','$Q_r = \dfrac{[B]}{[A]} = \dfrac{0{,}3}{0{,}1} = 3$.',4),
 (213205,2132,'Si $x_f = 0{,}8\,x_{max}$, le taux d''avancement final vaut :','$\tau = \dfrac{x_f}{x_{max}} = 0{,}8$.',5),
 (213206,2132,'La constante d''équilibre $K$ dépend-elle des concentrations initiales ?','Non.',6),
 (213207,2132,'Dans l''expression de $Q_r$, un solide compte pour :','1.',7),
 (213208,2132,'Une transformation avec $\tau < 1$ est :','Limitée.',8);

INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
 (2132011,213201,'inverse',TRUE,1),(2132012,213201,'direct',FALSE,2),(2132013,213201,'aucun',FALSE,3),(2132014,213201,'accéléré',FALSE,4),
 (2132021,213202,'à l''équilibre',TRUE,1),(2132022,213202,'en évolution directe',FALSE,2),(2132023,213202,'en évolution inverse',FALSE,3),(2132024,213202,'instable',FALSE,4),
 (2132031,213203,'$\tau = 1$',TRUE,1),(2132032,213203,'$\tau = 0$',FALSE,2),(2132033,213203,'$\tau = 0{,}5$',FALSE,3),(2132034,213203,'$\tau > 1$',FALSE,4),
 (2132041,213204,'$3$',TRUE,1),(2132042,213204,'$0{,}3$',FALSE,2),(2132043,213204,'$\dfrac{1}{3}$',FALSE,3),(2132044,213204,'$0{,}03$',FALSE,4),
 (2132051,213205,'$0{,}8$',TRUE,1),(2132052,213205,'$1{,}25$',FALSE,2),(2132053,213205,'$8$',FALSE,3),(2132054,213205,'$0{,}2$',FALSE,4),
 (2132061,213206,'non',TRUE,1),(2132062,213206,'oui',FALSE,2),(2132063,213206,'seulement à froid',FALSE,3),(2132064,213206,'seulement pour les acides',FALSE,4),
 (2132071,213207,'1',TRUE,1),(2132072,213207,'0',FALSE,2),(2132073,213207,'sa concentration',FALSE,3),(2132074,213207,'sa masse',FALSE,4),
 (2132081,213208,'limitée',TRUE,1),(2132082,213208,'totale',FALSE,2),(2132083,213208,'impossible',FALSE,3),(2132084,213208,'instantanée',FALSE,4);
