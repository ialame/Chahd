-- Sciences de l'Ingénieur (SI) : matière de la filière Sciences Mathématiques (B), coefficient 3.
-- Phase 1 — annales nationales officielles 2019-2025 (sujet + corrigé) hébergées (PDF viewer + pages PNG).
-- La SI n'a pas encore de cours/QCM : matière « annales d'abord ».
SET SESSION sql_mode = CONCAT(@@sql_mode, ',NO_BACKSLASH_ESCAPES');

-- 1. La matière (id auto-incrémenté, après les 7 existantes)
INSERT INTO matiere (slug, nom, coefficient, description, couleur, icone, ordre) VALUES
 ('sciences-ingenieur', 'Sciences de l''Ingénieur', 3,
  'Analyse fonctionnelle, chaîne d''énergie, chaîne d''information et dessin technique — épreuve nationale de la filière Sciences Mathématiques B (coef. 3).',
  '#0d9488', '⚙️', 8);

-- 2. Visible uniquement par la filière Sciences Mathématiques (id 2)
INSERT INTO matiere_filiere (matiere_id, filiere_id)
 SELECT id, 2 FROM matiere WHERE slug = 'sciences-ingenieur';

-- 3. Annales (sujet + corrigé officiels — tous publiés, y compris 2025)
SET @si := (SELECT id FROM matiere WHERE slug = 'sciences-ingenieur');
INSERT INTO annale (id, matiere_id, titre, annee, session, sujet_url, corrige_url) VALUES
 (300, @si, 'Bac Sciences de l''Ingénieur (Sciences Maths) — Session normale 2019',        2019, 'NORMALE',    '/annales/si-2019-normale-sujet.pdf',    '/annales/si-2019-normale-corrige.pdf'),
 (301, @si, 'Bac Sciences de l''Ingénieur (Sciences Maths) — Session de rattrapage 2019',  2019, 'RATTRAPAGE', '/annales/si-2019-rattrapage-sujet.pdf', '/annales/si-2019-rattrapage-corrige.pdf'),
 (302, @si, 'Bac Sciences de l''Ingénieur (Sciences Maths) — Session normale 2020',        2020, 'NORMALE',    '/annales/si-2020-normale-sujet.pdf',    '/annales/si-2020-normale-corrige.pdf'),
 (303, @si, 'Bac Sciences de l''Ingénieur (Sciences Maths) — Session de rattrapage 2020',  2020, 'RATTRAPAGE', '/annales/si-2020-rattrapage-sujet.pdf', '/annales/si-2020-rattrapage-corrige.pdf'),
 (304, @si, 'Bac Sciences de l''Ingénieur (Sciences Maths) — Session normale 2021',        2021, 'NORMALE',    '/annales/si-2021-normale-sujet.pdf',    '/annales/si-2021-normale-corrige.pdf'),
 (305, @si, 'Bac Sciences de l''Ingénieur (Sciences Maths) — Session de rattrapage 2021',  2021, 'RATTRAPAGE', '/annales/si-2021-rattrapage-sujet.pdf', '/annales/si-2021-rattrapage-corrige.pdf'),
 (306, @si, 'Bac Sciences de l''Ingénieur (Sciences Maths) — Session normale 2022',        2022, 'NORMALE',    '/annales/si-2022-normale-sujet.pdf',    '/annales/si-2022-normale-corrige.pdf'),
 (307, @si, 'Bac Sciences de l''Ingénieur (Sciences Maths) — Session de rattrapage 2022',  2022, 'RATTRAPAGE', '/annales/si-2022-rattrapage-sujet.pdf', '/annales/si-2022-rattrapage-corrige.pdf'),
 (308, @si, 'Bac Sciences de l''Ingénieur (Sciences Maths) — Session normale 2023',        2023, 'NORMALE',    '/annales/si-2023-normale-sujet.pdf',    '/annales/si-2023-normale-corrige.pdf'),
 (309, @si, 'Bac Sciences de l''Ingénieur (Sciences Maths) — Session de rattrapage 2023',  2023, 'RATTRAPAGE', '/annales/si-2023-rattrapage-sujet.pdf', '/annales/si-2023-rattrapage-corrige.pdf'),
 (310, @si, 'Bac Sciences de l''Ingénieur (Sciences Maths) — Session normale 2024',        2024, 'NORMALE',    '/annales/si-2024-normale-sujet.pdf',    '/annales/si-2024-normale-corrige.pdf'),
 (311, @si, 'Bac Sciences de l''Ingénieur (Sciences Maths) — Session de rattrapage 2024',  2024, 'RATTRAPAGE', '/annales/si-2024-rattrapage-sujet.pdf', '/annales/si-2024-rattrapage-corrige.pdf'),
 (312, @si, 'Bac Sciences de l''Ingénieur (Sciences Maths) — Session normale 2025',        2025, 'NORMALE',    '/annales/si-2025-normale-sujet.pdf',    '/annales/si-2025-normale-corrige.pdf'),
 (313, @si, 'Bac Sciences de l''Ingénieur (Sciences Maths) — Session de rattrapage 2025',  2025, 'RATTRAPAGE', '/annales/si-2025-rattrapage-sujet.pdf', '/annales/si-2025-rattrapage-corrige.pdf');
