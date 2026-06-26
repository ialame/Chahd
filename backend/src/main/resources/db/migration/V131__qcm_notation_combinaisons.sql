-- Notation des combinaisons : au Maroc on note C_n^p (grand C, n en indice, p en exposant),
-- et NON \binom{n}{p} (style français, entre parenthèses).
-- Convertit \binom{A}{B} -> C_{A}^{B} dans tous les QCM (énoncés, explications, choix).
-- sql_mode par défaut (backslash = échappement) : pattern '\\\\binom' matche le littéral \binom,
-- remplacement 'C_{\\1}^{\\2}' produit C_{A}^{B} (testé sur la base prod).

UPDATE question
   SET enonce = REGEXP_REPLACE(enonce, '\\\\binom\\{([^{}]+)\\}\\{([^{}]+)\\}', 'C_{\\1}^{\\2}')
 WHERE enonce LIKE '%binom%';

UPDATE question
   SET explication = REGEXP_REPLACE(explication, '\\\\binom\\{([^{}]+)\\}\\{([^{}]+)\\}', 'C_{\\1}^{\\2}')
 WHERE explication LIKE '%binom%';

UPDATE choix
   SET texte = REGEXP_REPLACE(texte, '\\\\binom\\{([^{}]+)\\}\\{([^{}]+)\\}', 'C_{\\1}^{\\2}')
 WHERE texte LIKE '%binom%';
