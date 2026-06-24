-- Annales Sciences Mathématiques (A) — Maths + Physique-Chimie. PDF sujet + corrigé officiels hébergés.
-- Taguées filière Sciences Mathématiques (id 2).
SET @m := (SELECT id FROM matiere WHERE slug = 'maths');
SET @p := (SELECT id FROM matiere WHERE slug = 'physique-chimie');

INSERT INTO annale (id, matiere_id, titre, annee, session, sujet_url, corrige_url) VALUES
 (200, @m, 'Bac Maths (Sciences Maths) — Session normale 2019', 2019, 'NORMALE', '/annales/maths-sm-2019-normale-sujet.pdf', '/annales/maths-sm-2019-normale-corrige.pdf'),
 (201, @m, 'Bac Maths (Sciences Maths) — Session de rattrapage 2019', 2019, 'RATTRAPAGE', '/annales/maths-sm-2019-rattrapage-sujet.pdf', '/annales/maths-sm-2019-rattrapage-corrige.pdf'),
 (202, @m, 'Bac Maths (Sciences Maths) — Session normale 2020', 2020, 'NORMALE', '/annales/maths-sm-2020-normale-sujet.pdf', '/annales/maths-sm-2020-normale-corrige.pdf'),
 (203, @m, 'Bac Maths (Sciences Maths) — Session de rattrapage 2020', 2020, 'RATTRAPAGE', '/annales/maths-sm-2020-rattrapage-sujet.pdf', '/annales/maths-sm-2020-rattrapage-corrige.pdf'),
 (204, @m, 'Bac Maths (Sciences Maths) — Session normale 2021', 2021, 'NORMALE', '/annales/maths-sm-2021-normale-sujet.pdf', '/annales/maths-sm-2021-normale-corrige.pdf'),
 (205, @m, 'Bac Maths (Sciences Maths) — Session de rattrapage 2021', 2021, 'RATTRAPAGE', '/annales/maths-sm-2021-rattrapage-sujet.pdf', '/annales/maths-sm-2021-rattrapage-corrige.pdf'),
 (206, @m, 'Bac Maths (Sciences Maths) — Session normale 2022', 2022, 'NORMALE', '/annales/maths-sm-2022-normale-sujet.pdf', '/annales/maths-sm-2022-normale-corrige.pdf'),
 (207, @m, 'Bac Maths (Sciences Maths) — Session de rattrapage 2022', 2022, 'RATTRAPAGE', '/annales/maths-sm-2022-rattrapage-sujet.pdf', '/annales/maths-sm-2022-rattrapage-corrige.pdf'),
 (208, @m, 'Bac Maths (Sciences Maths) — Session normale 2023', 2023, 'NORMALE', '/annales/maths-sm-2023-normale-sujet.pdf', '/annales/maths-sm-2023-normale-corrige.pdf'),
 (209, @m, 'Bac Maths (Sciences Maths) — Session de rattrapage 2023', 2023, 'RATTRAPAGE', '/annales/maths-sm-2023-rattrapage-sujet.pdf', '/annales/maths-sm-2023-rattrapage-corrige.pdf'),
 (210, @m, 'Bac Maths (Sciences Maths) — Session normale 2024', 2024, 'NORMALE', '/annales/maths-sm-2024-normale-sujet.pdf', '/annales/maths-sm-2024-normale-corrige.pdf'),
 (211, @m, 'Bac Maths (Sciences Maths) — Session de rattrapage 2024', 2024, 'RATTRAPAGE', '/annales/maths-sm-2024-rattrapage-sujet.pdf', '/annales/maths-sm-2024-rattrapage-corrige.pdf'),
 (212, @m, 'Bac Maths (Sciences Maths) — Session normale 2025', 2025, 'NORMALE', '/annales/maths-sm-2025-normale-sujet.pdf', NULL),
 (213, @m, 'Bac Maths (Sciences Maths) — Session de rattrapage 2025', 2025, 'RATTRAPAGE', '/annales/maths-sm-2025-rattrapage-sujet.pdf', NULL),
 (220, @p, 'Bac Physique-Chimie (Sciences Maths) — Session normale 2019', 2019, 'NORMALE', '/annales/pc-sm-2019-normale-sujet.pdf', '/annales/pc-sm-2019-normale-corrige.pdf'),
 (221, @p, 'Bac Physique-Chimie (Sciences Maths) — Session de rattrapage 2019', 2019, 'RATTRAPAGE', '/annales/pc-sm-2019-rattrapage-sujet.pdf', '/annales/pc-sm-2019-rattrapage-corrige.pdf'),
 (222, @p, 'Bac Physique-Chimie (Sciences Maths) — Session normale 2020', 2020, 'NORMALE', '/annales/pc-sm-2020-normale-sujet.pdf', '/annales/pc-sm-2020-normale-corrige.pdf'),
 (223, @p, 'Bac Physique-Chimie (Sciences Maths) — Session de rattrapage 2020', 2020, 'RATTRAPAGE', '/annales/pc-sm-2020-rattrapage-sujet.pdf', '/annales/pc-sm-2020-rattrapage-corrige.pdf'),
 (224, @p, 'Bac Physique-Chimie (Sciences Maths) — Session normale 2021', 2021, 'NORMALE', '/annales/pc-sm-2021-normale-sujet.pdf', '/annales/pc-sm-2021-normale-corrige.pdf'),
 (225, @p, 'Bac Physique-Chimie (Sciences Maths) — Session de rattrapage 2021', 2021, 'RATTRAPAGE', '/annales/pc-sm-2021-rattrapage-sujet.pdf', '/annales/pc-sm-2021-rattrapage-corrige.pdf'),
 (226, @p, 'Bac Physique-Chimie (Sciences Maths) — Session normale 2022', 2022, 'NORMALE', '/annales/pc-sm-2022-normale-sujet.pdf', '/annales/pc-sm-2022-normale-corrige.pdf'),
 (227, @p, 'Bac Physique-Chimie (Sciences Maths) — Session de rattrapage 2022', 2022, 'RATTRAPAGE', '/annales/pc-sm-2022-rattrapage-sujet.pdf', '/annales/pc-sm-2022-rattrapage-corrige.pdf'),
 (228, @p, 'Bac Physique-Chimie (Sciences Maths) — Session normale 2023', 2023, 'NORMALE', '/annales/pc-sm-2023-normale-sujet.pdf', '/annales/pc-sm-2023-normale-corrige.pdf'),
 (229, @p, 'Bac Physique-Chimie (Sciences Maths) — Session de rattrapage 2023', 2023, 'RATTRAPAGE', '/annales/pc-sm-2023-rattrapage-sujet.pdf', '/annales/pc-sm-2023-rattrapage-corrige.pdf'),
 (230, @p, 'Bac Physique-Chimie (Sciences Maths) — Session normale 2024', 2024, 'NORMALE', '/annales/pc-sm-2024-normale-sujet.pdf', '/annales/pc-sm-2024-normale-corrige.pdf'),
 (231, @p, 'Bac Physique-Chimie (Sciences Maths) — Session de rattrapage 2024', 2024, 'RATTRAPAGE', '/annales/pc-sm-2024-rattrapage-sujet.pdf', '/annales/pc-sm-2024-rattrapage-corrige.pdf'),
 (232, @p, 'Bac Physique-Chimie (Sciences Maths) — Session normale 2025', 2025, 'NORMALE', '/annales/pc-sm-2025-normale-sujet.pdf', NULL);

INSERT INTO annale_filiere (annale_id, filiere_id)
 SELECT id, 2 FROM annale WHERE id BETWEEN 200 AND 232;
