-- Distinction Sciences Mathématiques A / B.
--   SM-A : épreuve nationale de SVT (comme SP) + Informatique (contrôle continu).
--   SM-B : épreuve nationale de Sciences de l'Ingénieur + Informatique.
-- Le reste (Maths, PC, langues, philo, français, chapitres maths SM, annales maths/PC SM) est commun.
--
-- La filière 2 existante (« sciences-mathematiques », qui a déjà la SI) devient SM-B
-- (les utilisateurs SM actuels gardent donc leur contenu). On ajoute SM-A (id 3) avec la SVT.

-- 1. Renommer la filière 2 en SM-B ; créer SM-A (id 3)
UPDATE filiere SET slug = 'sciences-mathematiques-b', nom = 'Sciences Mathématiques B', ordre = 3 WHERE id = 2;
INSERT INTO filiere (id, slug, nom, ordre) VALUES (3, 'sciences-mathematiques-a', 'Sciences Mathématiques A', 2);

-- 2. Matières communes SM -> visibles aussi par SM-A (3)
INSERT INTO matiere_filiere (matiere_id, filiere_id)
 SELECT m.id, 3 FROM matiere m
 WHERE m.slug IN ('maths', 'physique-chimie', 'informatique', 'anglais', 'philosophie', 'francais');

-- SVT : matière nationale propre à SM-A (en plus de SP). (La SI reste réservée à SM-B = filière 2.)
INSERT INTO matiere_filiere (matiere_id, filiere_id)
 SELECT id, 3 FROM matiere WHERE slug = 'svt';

-- 3. Contenu commun aux deux SM : répliquer les tags de la filière 2 vers SM-A (3)
--    (chapitres maths spécifiques SM + annales maths/PC SM 200-232)
INSERT INTO lecon_filiere (lecon_id, filiere_id)
 SELECT lecon_id, 3 FROM lecon_filiere WHERE filiere_id = 2;

INSERT INTO annale_filiere (annale_id, filiere_id)
 SELECT annale_id, 3 FROM annale_filiere WHERE filiere_id = 2;
