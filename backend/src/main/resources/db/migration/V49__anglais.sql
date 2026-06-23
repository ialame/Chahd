-- La matière « Anglais » existe déjà (V2 seed) mais sans contenu. On l'aligne sur la
-- charte (Direction C) et on ajoute l'ossature des chapitres (contenu rempli ensuite).
UPDATE matiere
   SET couleur = '#7c3aed',
       icone = 'EN',
       description = 'Grammaire et fonctions de communication, plus les grands thèmes du programme : éducation, sciences et technologie, citoyenneté, valeurs culturelles.'
 WHERE slug = 'anglais';

SET @m := (SELECT id FROM matiere WHERE slug = 'anglais');

INSERT INTO lecon (matiere_id, slug, titre, ordre) VALUES
 -- Grammaire / langue
 (@m, 'tenses-review',           'Tenses: Present and Past', 1),
 (@m, 'future-forms',            'Talking about the Future', 2),
 (@m, 'modals',                  'Modal Verbs', 3),
 (@m, 'passive-voice',           'The Passive Voice', 4),
 (@m, 'conditionals-wishes',     'Conditionals and Wishes', 5),
 (@m, 'reported-speech',         'Reported Speech', 6),
 (@m, 'relative-clauses',        'Relative Clauses', 7),
 (@m, 'connectors',              'Connectors and Linking Words', 8),
 -- Thèmes / vocabulaire
 (@m, 'education-youth',         'Education and the Gifts of Youth', 9),
 (@m, 'science-technology',      'Science, Technology and Sustainable Development', 10),
 (@m, 'citizenship-human-rights','Citizenship and Human Rights', 11),
 (@m, 'cultural-values',         'Cultural Values and Globalization', 12),
 (@m, 'work-brain-drain',        'Work, Brain Drain and International Cooperation', 13);
