-- 1ère année Bac — phase 1 : modèle (filières 1 Bac) + matières à examen régional.
-- L'examen régional de fin de 1 Bac porte sur les matières littéraires (Français,
-- Histoire-Géo, Arabe, Éducation Islamique) ; les sciences (Maths/PC/SVT) sont en
-- contrôle continu. On démarre par Français + Histoire-Géographie.

-- 1. Filières 1 Bac (scientifiques)
INSERT INTO filiere (id, slug, nom, ordre) VALUES
 (4, '1bac-sciences-experimentales', '1 Bac Sciences Expérimentales', 4),
 (5, '1bac-sciences-mathematiques',  '1 Bac Sciences Mathématiques',  5);

-- 2. Matières 1 Bac à examen régional (communes aux deux filières scientifiques)
INSERT INTO matiere (slug, nom, coefficient, description, couleur, icone, ordre) VALUES
 ('francais-1bac',     'Français',            2, 'Œuvres au programme et examen régional — 1ère année Bac.',        '#7c3aed', '📖', 20),
 ('histoire-geo-1bac', 'Histoire-Géographie', 2, 'Histoire et géographie — examen régional de 1ère année Bac.',     '#b45309', '🗺️', 21);

-- 3. Tags : les deux matières sont visibles par les deux filières 1 Bac
INSERT INTO matiere_filiere (matiere_id, filiere_id)
 SELECT m.id, f.id
 FROM matiere m CROSS JOIN filiere f
 WHERE m.slug IN ('francais-1bac', 'histoire-geo-1bac')
   AND f.slug IN ('1bac-sciences-experimentales', '1bac-sciences-mathematiques');
