-- Annales de philosophie (examen national, filières scientifiques) — PDF sujet hébergé.
-- Corrigés = dissertations-modèles originales (transcriptions annale-{id}-sujet.md).
DELETE FROM annale WHERE id = 10;

SET @p := (SELECT id FROM matiere WHERE slug = 'philosophie');

INSERT INTO annale (id, matiere_id, titre, annee, session, sujet_url, corrige_url) VALUES
 (120, @p, 'Bac Philosophie — Session normale 2025',       2025, 'NORMALE',    '/annales/philo-2025-normale-sujet.pdf',     NULL),
 (121, @p, 'Bac Philosophie — Session normale 2024',       2024, 'NORMALE',    '/annales/philo-2024-normale-sujet.pdf',     NULL),
 (122, @p, 'Bac Philosophie — Session de rattrapage 2024', 2024, 'RATTRAPAGE', '/annales/philo-2024-rattrapage-sujet.pdf',  NULL),
 (123, @p, 'Bac Philosophie — Session normale 2023',       2023, 'NORMALE',    '/annales/philo-2023-normale-sujet.pdf',     NULL),
 (124, @p, 'Bac Philosophie — Session de rattrapage 2023', 2023, 'RATTRAPAGE', '/annales/philo-2023-rattrapage-sujet.pdf',  NULL),
 (125, @p, 'Bac Philosophie — Session normale 2022',       2022, 'NORMALE',    '/annales/philo-2022-normale-sujet.pdf',     NULL),
 (126, @p, 'Bac Philosophie — Session de rattrapage 2022', 2022, 'RATTRAPAGE', '/annales/philo-2022-rattrapage-sujet.pdf',  NULL),
 (127, @p, 'Bac Philosophie — Session normale 2021',       2021, 'NORMALE',    '/annales/philo-2021-normale-sujet.pdf',     NULL),
 (128, @p, 'Bac Philosophie — Session normale 2020',       2020, 'NORMALE',    '/annales/philo-2020-normale-sujet.pdf',     NULL),
 (129, @p, 'Bac Philosophie — Session de rattrapage 2020', 2020, 'RATTRAPAGE', '/annales/philo-2020-rattrapage-sujet.pdf',  NULL),
 (130, @p, 'Bac Philosophie — Session normale 2019',       2019, 'NORMALE',    '/annales/philo-2019-normale-sujet.pdf',     NULL);
