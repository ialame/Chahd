-- Annales 1 Bac : examen régional d'Histoire-Géographie 2024 (arabe, PDF officiels).
SET SESSION sql_mode = CONCAT(@@sql_mode, ',NO_BACKSLASH_ESCAPES');
SET @m := (SELECT id FROM matiere WHERE slug = 'histoire-geo-1bac');
INSERT INTO annale (id, matiere_id, titre, annee, session, sujet_url, corrige_url) VALUES
 (420, @m, 'Examen régional Histoire-Géo — Béni Mellal-Khénifra (2024)', 2024, 'NORMALE', '/annales/histoire-geo-1bac-2024-beni-mellal-khenifra-sujet.pdf', '/annales/histoire-geo-1bac-2024-beni-mellal-khenifra-corrige.pdf'),
 (421, @m, 'Examen régional Histoire-Géo — Casablanca-Settat (2024)', 2024, 'NORMALE', '/annales/histoire-geo-1bac-2024-casablanca-settat-sujet.pdf', '/annales/histoire-geo-1bac-2024-casablanca-settat-corrige.pdf'),
 (422, @m, 'Examen régional Histoire-Géo — Drâa-Tafilalet (2024)', 2024, 'NORMALE', '/annales/histoire-geo-1bac-2024-draa-tafilalet-sujet.pdf', '/annales/histoire-geo-1bac-2024-draa-tafilalet-corrige.pdf'),
 (423, @m, 'Examen régional Histoire-Géo — Fès-Meknès (2024)', 2024, 'NORMALE', '/annales/histoire-geo-1bac-2024-fes-meknes-sujet.pdf', '/annales/histoire-geo-1bac-2024-fes-meknes-corrige.pdf'),
 (424, @m, 'Examen régional Histoire-Géo — Guelmim-Oued Noun (2024)', 2024, 'NORMALE', '/annales/histoire-geo-1bac-2024-guelmim-oued-noun-sujet.pdf', '/annales/histoire-geo-1bac-2024-guelmim-oued-noun-corrige.pdf'),
 (425, @m, 'Examen régional Histoire-Géo — Laâyoune-Sakia El Hamra (2024)', 2024, 'NORMALE', '/annales/histoire-geo-1bac-2024-laayoune-sakia-el-hamra-sujet.pdf', '/annales/histoire-geo-1bac-2024-laayoune-sakia-el-hamra-corrige.pdf'),
 (426, @m, 'Examen régional Histoire-Géo — Marrakech-Safi (2024)', 2024, 'NORMALE', '/annales/histoire-geo-1bac-2024-marrakech-safi-sujet.pdf', NULL),
 (427, @m, 'Examen régional Histoire-Géo — Oriental (2024)', 2024, 'NORMALE', '/annales/histoire-geo-1bac-2024-oriental-sujet.pdf', '/annales/histoire-geo-1bac-2024-oriental-corrige.pdf'),
 (428, @m, 'Examen régional Histoire-Géo — Rabat-Salé-Kénitra (2024)', 2024, 'NORMALE', '/annales/histoire-geo-1bac-2024-rabat-sale-kenitra-sujet.pdf', '/annales/histoire-geo-1bac-2024-rabat-sale-kenitra-corrige.pdf'),
 (429, @m, 'Examen régional Histoire-Géo — Tanger-Tétouan-Al Hoceïma (2024)', 2024, 'NORMALE', '/annales/histoire-geo-1bac-2024-tanger-tetouan-al-hoceima-sujet.pdf', '/annales/histoire-geo-1bac-2024-tanger-tetouan-al-hoceima-corrige.pdf');
