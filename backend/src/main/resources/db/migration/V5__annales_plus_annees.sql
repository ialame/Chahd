-- Ajoute les annales 2019, 2020, 2021, 2022 et 2025 (Maths, Physique-Chimie, SVT).
-- PDF hébergés localement (/annales/**). Corrigés Maths/PC 2025 non encore publiés -> NULL.

INSERT INTO annale (id, matiere_id, titre, annee, session, sujet_url, corrige_url) VALUES
 -- ===== Mathématiques =====
 (15, 1, 'Bac Maths — Session normale 2022',         2022, 'NORMALE',    '/annales/maths-2022-normale-sujet.pdf',     '/annales/maths-2022-normale-corrige.pdf'),
 (16, 1, 'Bac Maths — Session de rattrapage 2022',   2022, 'RATTRAPAGE', '/annales/maths-2022-rattrapage-sujet.pdf',  '/annales/maths-2022-rattrapage-corrige.pdf'),
 (17, 1, 'Bac Maths — Session normale 2021',         2021, 'NORMALE',    '/annales/maths-2021-normale-sujet.pdf',     '/annales/maths-2021-normale-corrige.pdf'),
 (18, 1, 'Bac Maths — Session de rattrapage 2021',   2021, 'RATTRAPAGE', '/annales/maths-2021-rattrapage-sujet.pdf',  '/annales/maths-2021-rattrapage-corrige.pdf'),
 (19, 1, 'Bac Maths — Session normale 2020',         2020, 'NORMALE',    '/annales/maths-2020-normale-sujet.pdf',     '/annales/maths-2020-normale-corrige.pdf'),
 (20, 1, 'Bac Maths — Session de rattrapage 2020',   2020, 'RATTRAPAGE', '/annales/maths-2020-rattrapage-sujet.pdf',  '/annales/maths-2020-rattrapage-corrige.pdf'),
 (21, 1, 'Bac Maths — Session normale 2019',         2019, 'NORMALE',    '/annales/maths-2019-normale-sujet.pdf',     '/annales/maths-2019-normale-corrige.pdf'),
 (22, 1, 'Bac Maths — Session de rattrapage 2019',   2019, 'RATTRAPAGE', '/annales/maths-2019-rattrapage-sujet.pdf',  '/annales/maths-2019-rattrapage-corrige.pdf'),
 (23, 1, 'Bac Maths — Session normale 2025',         2025, 'NORMALE',    '/annales/maths-2025-normale-sujet.pdf',     NULL),
 (24, 1, 'Bac Maths — Session de rattrapage 2025',   2025, 'RATTRAPAGE', '/annales/maths-2025-rattrapage-sujet.pdf',  NULL),

 -- ===== Physique-Chimie =====
 (25, 2, 'Bac Physique-Chimie — Session normale 2022',       2022, 'NORMALE',    '/annales/pc-2022-normale-sujet.pdf',     '/annales/pc-2022-normale-corrige.pdf'),
 (26, 2, 'Bac Physique-Chimie — Session de rattrapage 2022', 2022, 'RATTRAPAGE', '/annales/pc-2022-rattrapage-sujet.pdf',  '/annales/pc-2022-rattrapage-corrige.pdf'),
 (27, 2, 'Bac Physique-Chimie — Session normale 2021',       2021, 'NORMALE',    '/annales/pc-2021-normale-sujet.pdf',     '/annales/pc-2021-normale-corrige.pdf'),
 (28, 2, 'Bac Physique-Chimie — Session de rattrapage 2021', 2021, 'RATTRAPAGE', '/annales/pc-2021-rattrapage-sujet.pdf',  '/annales/pc-2021-rattrapage-corrige.pdf'),
 (29, 2, 'Bac Physique-Chimie — Session normale 2020',       2020, 'NORMALE',    '/annales/pc-2020-normale-sujet.pdf',     '/annales/pc-2020-normale-corrige.pdf'),
 (30, 2, 'Bac Physique-Chimie — Session de rattrapage 2020', 2020, 'RATTRAPAGE', '/annales/pc-2020-rattrapage-sujet.pdf',  '/annales/pc-2020-rattrapage-corrige.pdf'),
 (31, 2, 'Bac Physique-Chimie — Session normale 2019',       2019, 'NORMALE',    '/annales/pc-2019-normale-sujet.pdf',     '/annales/pc-2019-normale-corrige.pdf'),
 (32, 2, 'Bac Physique-Chimie — Session de rattrapage 2019', 2019, 'RATTRAPAGE', '/annales/pc-2019-rattrapage-sujet.pdf',  '/annales/pc-2019-rattrapage-corrige.pdf'),
 (33, 2, 'Bac Physique-Chimie — Session normale 2025',       2025, 'NORMALE',    '/annales/pc-2025-normale-sujet.pdf',     NULL),
 (34, 2, 'Bac Physique-Chimie — Session de rattrapage 2025', 2025, 'RATTRAPAGE', '/annales/pc-2025-rattrapage-sujet.pdf',  NULL),

 -- ===== SVT =====
 (35, 3, 'Bac SVT — Session normale 2022',         2022, 'NORMALE',    '/annales/svt-2022-normale-sujet.pdf',     '/annales/svt-2022-normale-corrige.pdf'),
 (36, 3, 'Bac SVT — Session de rattrapage 2022',   2022, 'RATTRAPAGE', '/annales/svt-2022-rattrapage-sujet.pdf',  '/annales/svt-2022-rattrapage-corrige.pdf'),
 (37, 3, 'Bac SVT — Session normale 2021',         2021, 'NORMALE',    '/annales/svt-2021-normale-sujet.pdf',     '/annales/svt-2021-normale-corrige.pdf'),
 (38, 3, 'Bac SVT — Session de rattrapage 2021',   2021, 'RATTRAPAGE', '/annales/svt-2021-rattrapage-sujet.pdf',  '/annales/svt-2021-rattrapage-corrige.pdf'),
 (39, 3, 'Bac SVT — Session normale 2020',         2020, 'NORMALE',    '/annales/svt-2020-normale-sujet.pdf',     '/annales/svt-2020-normale-corrige.pdf'),
 (40, 3, 'Bac SVT — Session de rattrapage 2020',   2020, 'RATTRAPAGE', '/annales/svt-2020-rattrapage-sujet.pdf',  '/annales/svt-2020-rattrapage-corrige.pdf'),
 (41, 3, 'Bac SVT — Session normale 2019',         2019, 'NORMALE',    '/annales/svt-2019-normale-sujet.pdf',     '/annales/svt-2019-normale-corrige.pdf'),
 (42, 3, 'Bac SVT — Session de rattrapage 2019',   2019, 'RATTRAPAGE', '/annales/svt-2019-rattrapage-sujet.pdf',  '/annales/svt-2019-rattrapage-corrige.pdf'),
 (43, 3, 'Bac SVT — Session normale 2025',         2025, 'NORMALE',    '/annales/svt-2025-normale-sujet.pdf',     '/annales/svt-2025-normale-corrige.pdf'),
 (44, 3, 'Bac SVT — Session de rattrapage 2025',   2025, 'RATTRAPAGE', '/annales/svt-2025-rattrapage-sujet.pdf',  '/annales/svt-2025-rattrapage-corrige.pdf');
