-- Annales 1 Bac : examen régional de Français 2024 (toutes régions). PDF officiels.
SET SESSION sql_mode = CONCAT(@@sql_mode, ',NO_BACKSLASH_ESCAPES');
SET @m := (SELECT id FROM matiere WHERE slug = 'francais-1bac');
INSERT INTO annale (id, matiere_id, titre, annee, session, sujet_url, corrige_url) VALUES
 (400, @m, 'Examen régional Français — Béni Mellal-Khénifra (2024)', 2024, 'NORMALE', '/annales/francais-1bac-2024-beni-mellal-khenifra-sujet.pdf', '/annales/francais-1bac-2024-beni-mellal-khenifra-corrige.pdf'),
 (401, @m, 'Examen régional Français — Casablanca-Settat (2024)', 2024, 'NORMALE', '/annales/francais-1bac-2024-casablanca-settat-sujet.pdf', '/annales/francais-1bac-2024-casablanca-settat-corrige.pdf'),
 (402, @m, 'Examen régional Français — Dakhla-Oued Ed-Dahab (2024)', 2024, 'NORMALE', '/annales/francais-1bac-2024-dakhla-oued-ed-dahab-sujet.pdf', '/annales/francais-1bac-2024-dakhla-oued-ed-dahab-corrige.pdf'),
 (403, @m, 'Examen régional Français — Drâa-Tafilalet (2024)', 2024, 'NORMALE', '/annales/francais-1bac-2024-draa-tafilalet-sujet.pdf', '/annales/francais-1bac-2024-draa-tafilalet-corrige.pdf'),
 (404, @m, 'Examen régional Français — Fès-Meknès (2024)', 2024, 'NORMALE', '/annales/francais-1bac-2024-fes-meknes-sujet.pdf', '/annales/francais-1bac-2024-fes-meknes-corrige.pdf'),
 (405, @m, 'Examen régional Français — Guelmim-Oued Noun (2024)', 2024, 'NORMALE', '/annales/francais-1bac-2024-guelmim-oued-noun-sujet.pdf', '/annales/francais-1bac-2024-guelmim-oued-noun-corrige.pdf'),
 (406, @m, 'Examen régional Français — Laâyoune-Sakia El Hamra (2024)', 2024, 'NORMALE', '/annales/francais-1bac-2024-laayoune-sakia-el-hamra-sujet.pdf', '/annales/francais-1bac-2024-laayoune-sakia-el-hamra-corrige.pdf'),
 (407, @m, 'Examen régional Français — Marrakech-Safi (2024)', 2024, 'NORMALE', '/annales/francais-1bac-2024-marrakech-safi-sujet.pdf', '/annales/francais-1bac-2024-marrakech-safi-corrige.pdf'),
 (408, @m, 'Examen régional Français — Rabat-Salé-Kénitra (2024)', 2024, 'NORMALE', '/annales/francais-1bac-2024-rabat-sale-kenitra-sujet.pdf', '/annales/francais-1bac-2024-rabat-sale-kenitra-corrige.pdf'),
 (409, @m, 'Examen régional Français — Souss Massa (2024)', 2024, 'NORMALE', '/annales/francais-1bac-2024-souss-massa-sujet.pdf', NULL),
 (410, @m, 'Examen régional Français — Tanger-Tétouan-Al Hoceïma (2024)', 2024, 'NORMALE', '/annales/francais-1bac-2024-tanger-tetouan-al-hoceima-sujet.pdf', '/annales/francais-1bac-2024-tanger-tetouan-al-hoceima-corrige.pdf');
