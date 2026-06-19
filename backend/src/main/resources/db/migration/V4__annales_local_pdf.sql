-- Bascule les annales sciences vers les PDF hébergés localement (servis sur /annales/**).
-- Les chemins sont relatifs : le frontend les préfixe avec l'origine du backend.
-- Français (9) et Philosophie (10) conservent leur lien d'archive externe AlloSchool.

UPDATE annale SET sujet_url = '/annales/maths-2024-rattrapage-sujet.pdf',  corrige_url = '/annales/maths-2024-rattrapage-corrige.pdf'  WHERE id = 1;
UPDATE annale SET sujet_url = '/annales/maths-2024-normale-sujet.pdf',     corrige_url = '/annales/maths-2024-normale-corrige.pdf'     WHERE id = 2;
UPDATE annale SET sujet_url = '/annales/maths-2023-rattrapage-sujet.pdf',  corrige_url = '/annales/maths-2023-rattrapage-corrige.pdf'  WHERE id = 3;

UPDATE annale SET sujet_url = '/annales/pc-2024-rattrapage-sujet.pdf',     corrige_url = '/annales/pc-2024-rattrapage-corrige.pdf'     WHERE id = 4;
UPDATE annale SET sujet_url = '/annales/pc-2024-normale-sujet.pdf',        corrige_url = '/annales/pc-2024-normale-corrige.pdf'        WHERE id = 5;
UPDATE annale SET sujet_url = '/annales/pc-2023-rattrapage-sujet.pdf',     corrige_url = '/annales/pc-2023-rattrapage-corrige.pdf'     WHERE id = 6;

UPDATE annale SET sujet_url = '/annales/svt-2024-rattrapage-sujet.pdf',    corrige_url = '/annales/svt-2024-rattrapage-corrige.pdf'    WHERE id = 7;
UPDATE annale SET sujet_url = '/annales/svt-2024-normale-sujet.pdf',       corrige_url = '/annales/svt-2024-normale-corrige.pdf'       WHERE id = 8;

UPDATE annale SET sujet_url = '/annales/maths-2023-normale-sujet.pdf',     corrige_url = '/annales/maths-2023-normale-corrige.pdf'     WHERE id = 11;
UPDATE annale SET sujet_url = '/annales/pc-2023-normale-sujet.pdf',        corrige_url = '/annales/pc-2023-normale-corrige.pdf'        WHERE id = 12;
UPDATE annale SET sujet_url = '/annales/svt-2023-normale-sujet.pdf',       corrige_url = '/annales/svt-2023-normale-corrige.pdf'       WHERE id = 13;
UPDATE annale SET sujet_url = '/annales/svt-2023-rattrapage-sujet.pdf',    corrige_url = '/annales/svt-2023-rattrapage-corrige.pdf'    WHERE id = 14;
