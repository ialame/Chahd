-- QCM du chapitre « Estérification et hydrolyse » (notions + applications).
SET SESSION sql_mode = CONCAT(@@sql_mode, ',NO_BACKSLASH_ESCAPES');
SET @l := (SELECT id FROM lecon WHERE slug = 'esterification-hydrolyse'
           AND matiere_id = (SELECT id FROM matiere WHERE slug = 'physique-chimie'));

-- ===== notions (2137) =====
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
 (2137, NULL, @l, 'QCM — Estérification : notions', 'Groupes, réaction, rendement.', 1);

INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES
 (213701,2137,'Le groupe caractéristique de l''acide carboxylique est :','$-COOH$.',1),
 (213702,2137,'Le groupe caractéristique de l''alcool est :','$-OH$.',2),
 (213703,2137,'L''estérification produit :','Un ester et de l''eau.',3),
 (213704,2137,'L''estérification est une réaction :','Lente, limitée et athermique.',4),
 (213705,2137,'L''hydrolyse de l''ester est :','La réaction inverse de l''estérification.',5),
 (213706,2137,'Le rendement d''une estérification est défini par :','$r = \dfrac{n_{ester\ formé}}{n_{ester\ max}}$.',6),
 (213707,2137,'Un catalyseur acide ($H^{+}$) :','Accélère la réaction sans modifier le rendement.',7),
 (213708,2137,'Comme l''estérification est athermique, la constante $K$ :','Ne dépend pas de la température.',8);

INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
 (2137011,213701,'$-COOH$',TRUE,1),(2137012,213701,'$-OH$',FALSE,2),(2137013,213701,'$-COO-$',FALSE,3),(2137014,213701,'$-NH_2$',FALSE,4),
 (2137021,213702,'$-OH$',TRUE,1),(2137022,213702,'$-COOH$',FALSE,2),(2137023,213702,'$-COO-$',FALSE,3),(2137024,213702,'$-CHO$',FALSE,4),
 (2137031,213703,'un ester et de l''eau',TRUE,1),(2137032,213703,'un acide et un alcool',FALSE,2),(2137033,213703,'un gaz',FALSE,3),(2137034,213703,'un sel',FALSE,4),
 (2137041,213704,'lente, limitée et athermique',TRUE,1),(2137042,213704,'rapide et totale',FALSE,2),(2137043,213704,'instantanée',FALSE,3),(2137044,213704,'exothermique et totale',FALSE,4),
 (2137051,213705,'la réaction inverse',TRUE,1),(2137052,213705,'la même réaction',FALSE,2),(2137053,213705,'une combustion',FALSE,3),(2137054,213705,'une oxydation',FALSE,4),
 (2137061,213706,'$\dfrac{n_{ester\ formé}}{n_{ester\ max}}$',TRUE,1),(2137062,213706,'$\dfrac{n_{ester\ max}}{n_{ester\ formé}}$',FALSE,2),(2137063,213706,'$n_{ester\ formé}\times n_{ester\ max}$',FALSE,3),(2137064,213706,'$n_{ester\ max} - n_{ester\ formé}$',FALSE,4),
 (2137071,213707,'accélère sans modifier le rendement',TRUE,1),(2137072,213707,'augmente le rendement',FALSE,2),(2137073,213707,'ralentit la réaction',FALSE,3),(2137074,213707,'est consommé',FALSE,4),
 (2137081,213708,'ne dépend pas de la température',TRUE,1),(2137082,213708,'augmente avec la température',FALSE,2),(2137083,213708,'diminue avec la température',FALSE,3),(2137084,213708,'est nulle',FALSE,4);

-- ===== applications (2138) =====
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
 (2138, NULL, @l, 'QCM — Estérification : applications', 'Rendement, vitesse, contrôle.', 2);

INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES
 (213801,2138,'Un catalyseur modifie-t-il le rendement d''une estérification ?','Non (il ne change que la vitesse).',1),
 (213802,2138,'Pour augmenter le rendement d''une estérification, on peut :','Utiliser un excès d''un réactif ou éliminer l''eau formée.',2),
 (213803,2138,'Pour accélérer l''estérification, on peut :','Chauffer ou ajouter un catalyseur acide.',3),
 (213804,2138,'Le rendement d''une estérification (quantités égales, alcool primaire) est d''environ :','67 %.',4),
 (213805,2138,'Si $n_{ester} = 0{,}67~\mathrm{mol}$ et $n_{max} = 1~\mathrm{mol}$, le rendement vaut :','$r = \dfrac{0{,}67}{1} = 0{,}67$ (67 %).',5),
 (213806,2138,'L''hydrolyse d''un ester donne :','Un acide carboxylique et un alcool.',6),
 (213807,2138,'Éliminer l''eau formée au cours de l''estérification :','Augmente le rendement (déplace l''équilibre vers l''ester).',7),
 (213808,2138,'La réaction d''estérification est :','Limitée (non totale).',8);

INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
 (2138011,213801,'non',TRUE,1),(2138012,213801,'oui',FALSE,2),(2138013,213801,'seulement à froid',FALSE,3),(2138014,213801,'il l''annule',FALSE,4),
 (2138021,213802,'utiliser un excès de réactif ou éliminer l''eau',TRUE,1),(2138022,213802,'ajouter un catalyseur',FALSE,2),(2138023,213802,'chauffer davantage',FALSE,3),(2138024,213802,'diminuer les quantités',FALSE,4),
 (2138031,213803,'chauffer ou ajouter un catalyseur',TRUE,1),(2138032,213803,'refroidir',FALSE,2),(2138033,213803,'diluer fortement',FALSE,3),(2138034,213803,'retirer un réactif',FALSE,4),
 (2138041,213804,'67 %',TRUE,1),(2138042,213804,'100 %',FALSE,2),(2138043,213804,'33 %',FALSE,3),(2138044,213804,'5 %',FALSE,4),
 (2138051,213805,'$0{,}67$',TRUE,1),(2138052,213805,'$1{,}5$',FALSE,2),(2138053,213805,'$0{,}33$',FALSE,3),(2138054,213805,'$1$',FALSE,4),
 (2138061,213806,'un acide carboxylique et un alcool',TRUE,1),(2138062,213806,'un ester et de l''eau',FALSE,2),(2138063,213806,'un gaz',FALSE,3),(2138064,213806,'un sel et de l''eau',FALSE,4),
 (2138071,213807,'augmente le rendement',TRUE,1),(2138072,213807,'diminue le rendement',FALSE,2),(2138073,213807,'ne change rien',FALSE,3),(2138074,213807,'arrête la réaction',FALSE,4),
 (2138081,213808,'limitée (non totale)',TRUE,1),(2138082,213808,'totale',FALSE,2),(2138083,213808,'instantanée',FALSE,3),(2138084,213808,'impossible',FALSE,4);
