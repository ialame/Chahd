-- Annales d'anglais (examen national, 2 Bac) — PDF sujet + corrigé hébergés localement.
-- Source : examens nationaux officiels (AlloSchool, course-107). Servis comme PDF.
SET @a := (SELECT id FROM matiere WHERE slug = 'anglais');

INSERT INTO annale (id, matiere_id, titre, annee, session, sujet_url, corrige_url) VALUES
 (100, @a, 'Bac Anglais — Session normale 2025',       2025, 'NORMALE',    '/annales/anglais-2025-normale-sujet.pdf',     '/annales/anglais-2025-normale-corrige.pdf'),
 (101, @a, 'Bac Anglais — Session normale 2024',       2024, 'NORMALE',    '/annales/anglais-2024-normale-sujet.pdf',     '/annales/anglais-2024-normale-corrige.pdf'),
 (102, @a, 'Bac Anglais — Session de rattrapage 2024', 2024, 'RATTRAPAGE', '/annales/anglais-2024-rattrapage-sujet.pdf',  '/annales/anglais-2024-rattrapage-corrige.pdf'),
 (103, @a, 'Bac Anglais — Session normale 2023',       2023, 'NORMALE',    '/annales/anglais-2023-normale-sujet.pdf',     '/annales/anglais-2023-normale-corrige.pdf'),
 (104, @a, 'Bac Anglais — Session de rattrapage 2023', 2023, 'RATTRAPAGE', '/annales/anglais-2023-rattrapage-sujet.pdf',  '/annales/anglais-2023-rattrapage-corrige.pdf'),
 (105, @a, 'Bac Anglais — Session normale 2022',       2022, 'NORMALE',    '/annales/anglais-2022-normale-sujet.pdf',     '/annales/anglais-2022-normale-corrige.pdf'),
 (106, @a, 'Bac Anglais — Session de rattrapage 2022', 2022, 'RATTRAPAGE', '/annales/anglais-2022-rattrapage-sujet.pdf',  NULL),
 (107, @a, 'Bac Anglais — Session normale 2021',       2021, 'NORMALE',    '/annales/anglais-2021-normale-sujet.pdf',     '/annales/anglais-2021-normale-corrige.pdf'),
 (108, @a, 'Bac Anglais — Session de rattrapage 2021', 2021, 'RATTRAPAGE', '/annales/anglais-2021-rattrapage-sujet.pdf',  NULL),
 (109, @a, 'Bac Anglais — Session normale 2020',       2020, 'NORMALE',    '/annales/anglais-2020-normale-sujet.pdf',     '/annales/anglais-2020-normale-corrige.pdf'),
 (110, @a, 'Bac Anglais — Session normale 2019',       2019, 'NORMALE',    '/annales/anglais-2019-normale-sujet.pdf',     '/annales/anglais-2019-normale-corrige.pdf'),
 (111, @a, 'Bac Anglais — Session de rattrapage 2019', 2019, 'RATTRAPAGE', '/annales/anglais-2019-rattrapage-sujet.pdf',  '/annales/anglais-2019-rattrapage-corrige.pdf');
