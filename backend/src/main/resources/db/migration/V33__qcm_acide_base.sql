-- QCM du chapitre « Réactions acide-base » (notions + applications).
SET SESSION sql_mode = CONCAT(@@sql_mode, ',NO_BACKSLASH_ESCAPES');
SET @l := (SELECT id FROM lecon WHERE slug = 'acide-base'
           AND matiere_id = (SELECT id FROM matiere WHERE slug = 'physique-chimie'));

-- ===== notions (2133) =====
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
 (2133, NULL, @l, 'QCM — Acide-base : notions', 'Couples, pH, constante d''acidité, prédominance.', 1);

INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES
 (213301,2133,'Selon Brønsted, un acide est :','Un donneur de proton $H^{+}$.',1),
 (213302,2133,'Selon Brønsted, une base est :','Un accepteur de proton $H^{+}$.',2),
 (213303,2133,'Le produit ionique de l''eau à 25 °C vaut :','$K_e = [H_3O^{+}][OH^{-}] = 10^{-14}$.',3),
 (213304,2133,'Le pH d''une solution est défini par :','$pH = -\log[H_3O^{+}]$.',4),
 (213305,2133,'À 25 °C, une solution est acide si :','$pH < 7$.',5),
 (213306,2133,'La constante d''acidité du couple $AH/A^{-}$ est :','$K_A = \dfrac{[A^{-}][H_3O^{+}]}{[AH]}$.',6),
 (213307,2133,'La relation entre pH et $pK_A$ est :','$pH = pK_A + \log\dfrac{[A^{-}]}{[AH]}$.',7),
 (213308,2133,'Si $pH > pK_A$, l''espèce prédominante est :','La base $A^{-}$.',8);

INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
 (2133011,213301,'un donneur de proton',TRUE,1),(2133012,213301,'un accepteur de proton',FALSE,2),(2133013,213301,'un donneur d''électron',FALSE,3),(2133014,213301,'un ion métallique',FALSE,4),
 (2133021,213302,'un accepteur de proton',TRUE,1),(2133022,213302,'un donneur de proton',FALSE,2),(2133023,213302,'un accepteur d''électron',FALSE,3),(2133024,213302,'un gaz',FALSE,4),
 (2133031,213303,'$10^{-14}$',TRUE,1),(2133032,213303,'$10^{-7}$',FALSE,2),(2133033,213303,'$10^{14}$',FALSE,3),(2133034,213303,'$1$',FALSE,4),
 (2133041,213304,'$-\log[H_3O^{+}]$',TRUE,1),(2133042,213304,'$\log[H_3O^{+}]$',FALSE,2),(2133043,213304,'$[H_3O^{+}]$',FALSE,3),(2133044,213304,'$-\log[OH^{-}]$',FALSE,4),
 (2133051,213305,'$pH < 7$',TRUE,1),(2133052,213305,'$pH > 7$',FALSE,2),(2133053,213305,'$pH = 7$',FALSE,3),(2133054,213305,'$pH = 14$',FALSE,4),
 (2133061,213306,'$\dfrac{[A^{-}][H_3O^{+}]}{[AH]}$',TRUE,1),(2133062,213306,'$\dfrac{[AH]}{[A^{-}][H_3O^{+}]}$',FALSE,2),(2133063,213306,'$[A^{-}][H_3O^{+}][AH]$',FALSE,3),(2133064,213306,'$\dfrac{[AH][H_3O^{+}]}{[A^{-}]}$',FALSE,4),
 (2133071,213307,'$pK_A + \log\dfrac{[A^{-}]}{[AH]}$',TRUE,1),(2133072,213307,'$pK_A - \log\dfrac{[A^{-}]}{[AH]}$',FALSE,2),(2133073,213307,'$pK_A \times \dfrac{[A^{-}]}{[AH]}$',FALSE,3),(2133074,213307,'$pK_A + \dfrac{[A^{-}]}{[AH]}$',FALSE,4),
 (2133081,213308,'la base $A^{-}$',TRUE,1),(2133082,213308,'l''acide $AH$',FALSE,2),(2133083,213308,'l''eau',FALSE,3),(2133084,213308,'les ions $OH^{-}$ seuls',FALSE,4);

-- ===== applications (2134) =====
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
 (2134, NULL, @l, 'QCM — Acide-base : applications', 'pH, K_A, prédominance, dosage.', 2);

INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES
 (213401,2134,'Une solution telle que $[H_3O^{+}] = 10^{-3}~\mathrm{mol/L}$ a un pH de :','$pH = -\log(10^{-3}) = 3$.',1),
 (213402,2134,'Une solution de $pH = 5$ a une concentration $[H_3O^{+}]$ de :','$[H_3O^{+}] = 10^{-5}~\mathrm{mol/L}$.',2),
 (213403,2134,'À 25 °C, si $[H_3O^{+}] = 10^{-4}~\mathrm{mol/L}$, alors $[OH^{-}]$ vaut :','$[OH^{-}] = \dfrac{K_e}{[H_3O^{+}]} = \dfrac{10^{-14}}{10^{-4}} = 10^{-10}~\mathrm{mol/L}$.',3),
 (213404,2134,'Une constante d''acidité $K_A = 10^{-5}$ correspond à un $pK_A$ de :','$pK_A = -\log(10^{-5}) = 5$.',4),
 (213405,2134,'Pour un couple de $pK_A = 4{,}8$, à $pH = 6$, l''espèce prédominante est :','$pH > pK_A$ : la base $A^{-}$ prédomine.',5),
 (213406,2134,'L''égalité $pH = pK_A$ est atteinte lorsque :','$[AH] = [A^{-}]$.',6),
 (213407,2134,'À l''équivalence d''un dosage, les réactifs sont :','Dans les proportions stœchiométriques.',7),
 (213408,2134,'Une solution de $pH = 2$ est :','Acide.',8);

INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
 (2134011,213401,'$3$',TRUE,1),(2134012,213401,'$-3$',FALSE,2),(2134013,213401,'$11$',FALSE,3),(2134014,213401,'$10^{-3}$',FALSE,4),
 (2134021,213402,'$10^{-5}~\mathrm{mol/L}$',TRUE,1),(2134022,213402,'$10^{5}~\mathrm{mol/L}$',FALSE,2),(2134023,213402,'$5~\mathrm{mol/L}$',FALSE,3),(2134024,213402,'$10^{-9}~\mathrm{mol/L}$',FALSE,4),
 (2134031,213403,'$10^{-10}~\mathrm{mol/L}$',TRUE,1),(2134032,213403,'$10^{-4}~\mathrm{mol/L}$',FALSE,2),(2134033,213403,'$10^{-14}~\mathrm{mol/L}$',FALSE,3),(2134034,213403,'$10^{10}~\mathrm{mol/L}$',FALSE,4),
 (2134041,213404,'$5$',TRUE,1),(2134042,213404,'$-5$',FALSE,2),(2134043,213404,'$10$',FALSE,3),(2134044,213404,'$9$',FALSE,4),
 (2134051,213405,'la base $A^{-}$',TRUE,1),(2134052,213405,'l''acide $AH$',FALSE,2),(2134053,213405,'aucune',FALSE,3),(2134054,213405,'les deux à égalité',FALSE,4),
 (2134061,213406,'$[AH] = [A^{-}]$',TRUE,1),(2134062,213406,'$[AH] = 0$',FALSE,2),(2134063,213406,'$[A^{-}] = 0$',FALSE,3),(2134064,213406,'$pH = 7$',FALSE,4),
 (2134071,213407,'dans les proportions stœchiométriques',TRUE,1),(2134072,213407,'en excès d''acide',FALSE,2),(2134073,213407,'en excès de base',FALSE,3),(2134074,213407,'absents',FALSE,4),
 (2134081,213408,'acide',TRUE,1),(2134082,213408,'basique',FALSE,2),(2134083,213408,'neutre',FALSE,3),(2134084,213408,'impossible',FALSE,4);
