-- Annales de français (examens régionaux, 1er Bac sciences) — PDF sujet hébergé.
-- Corrigés = rédigés (transcriptions annale-{id}-sujet.md). Échantillon 2024 (6 régions).
SET @f := (SELECT id FROM matiere WHERE slug = 'francais');

INSERT INTO annale (id, matiere_id, titre, annee, session, sujet_url, corrige_url) VALUES
 (140, @f, 'Français — Examen régional 2024 (Fès-Meknès)',              2024, 'NORMALE', '/annales/francais-2024-fes-meknes-sujet.pdf',              NULL),
 (141, @f, 'Français — Examen régional 2024 (Rabat-Salé-Kénitra)',      2024, 'NORMALE', '/annales/francais-2024-rabat-sale-kenitra-sujet.pdf',      NULL),
 (142, @f, 'Français — Examen régional 2024 (Casablanca-Settat)',       2024, 'NORMALE', '/annales/francais-2024-casablanca-settat-sujet.pdf',       NULL),
 (143, @f, 'Français — Examen régional 2024 (Marrakech-Safi)',          2024, 'NORMALE', '/annales/francais-2024-marrakech-safi-sujet.pdf',          NULL),
 (144, @f, 'Français — Examen régional 2024 (Tanger-Tétouan-Al Hoceïma)', 2024, 'NORMALE', '/annales/francais-2024-tanger-tetouan-al-hoceima-sujet.pdf', NULL),
 (145, @f, 'Français — Examen régional 2024 (Souss-Massa)',             2024, 'NORMALE', '/annales/francais-2024-souss-massa-sujet.pdf',             NULL);
