-- Suite de V131 : capture aussi \dbinom et \tbinom (variantes display/text de \binom,
-- utilisées dans les QCM de probabilités / loi binomiale). \binom déjà traité par V131.
-- \binom | \dbinom | \tbinom  {A}{B}  ->  C_{A}^{B}

UPDATE question
   SET enonce = REGEXP_REPLACE(enonce, '\\\\[dt]?binom\\{([^{}]+)\\}\\{([^{}]+)\\}', 'C_{\\1}^{\\2}')
 WHERE enonce LIKE '%binom%';

UPDATE question
   SET explication = REGEXP_REPLACE(explication, '\\\\[dt]?binom\\{([^{}]+)\\}\\{([^{}]+)\\}', 'C_{\\1}^{\\2}')
 WHERE explication LIKE '%binom%';

UPDATE choix
   SET texte = REGEXP_REPLACE(texte, '\\\\[dt]?binom\\{([^{}]+)\\}\\{([^{}]+)\\}', 'C_{\\1}^{\\2}')
 WHERE texte LIKE '%binom%';
