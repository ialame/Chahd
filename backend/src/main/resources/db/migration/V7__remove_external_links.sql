-- Suppression des liens vers des sites externes (ex. AlloSchool).
-- On annule toute URL absolue (http...) ; les PDF locaux (/annales/...) sont conservés.
UPDATE annale SET sujet_url   = NULL WHERE sujet_url   LIKE 'http%';
UPDATE annale SET corrige_url = NULL WHERE corrige_url LIKE 'http%';
