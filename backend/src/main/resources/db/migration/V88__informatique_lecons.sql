-- Chapitres du module Informatique (2 Bac Sciences Mathématiques) : algorithmique + Python.
SET @i := (SELECT id FROM matiere WHERE slug = 'informatique');

INSERT INTO lecon (matiere_id, slug, titre, ordre) VALUES
 (@i, 'bases-python',               'Les bases de la programmation en Python', 1),
 (@i, 'structures-conditionnelles', 'Les structures conditionnelles', 2),
 (@i, 'structures-iteratives',      'Les structures itératives (boucles)', 3),
 (@i, 'fonctions',                  'Les fonctions et les procédures', 4),
 (@i, 'listes',                     'Les listes (tableaux à une dimension)', 5),
 (@i, 'matrices',                   'Les matrices (tableaux à deux dimensions)', 6),
 (@i, 'chaines-caracteres',         'Les chaînes de caractères', 7),
 (@i, 'tri-recherche',              'Les algorithmes de tri et de recherche', 8),
 (@i, 'recursivite',                'La récursivité', 9);
