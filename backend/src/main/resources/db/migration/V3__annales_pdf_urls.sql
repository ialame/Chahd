-- Renseigne les liens réels des annales (sujets + corrigés) hébergés sur AlloSchool.
-- Filière retenue : Sciences Physiques (PC). Tous les liens ont été vérifiés (HTTP 200).
-- Référentiel : pages "element/NNNN" d'AlloSchool (sujet et corrigé séparés).

-- ===== Mathématiques (épreuve commune Sciences Physiques / Sciences et Technologies) =====
UPDATE annale SET sujet_url   = 'https://www.alloschool.com/element/145811',
                  corrige_url = 'https://www.alloschool.com/element/145816' WHERE id = 1; -- 2024 Rattrapage
UPDATE annale SET sujet_url   = 'https://www.alloschool.com/element/144505',
                  corrige_url = 'https://www.alloschool.com/element/144510' WHERE id = 2; -- 2024 Normale
UPDATE annale SET sujet_url   = 'https://www.alloschool.com/element/142250',
                  corrige_url = 'https://www.alloschool.com/element/142255' WHERE id = 3; -- 2023 Rattrapage

-- ===== Physique-Chimie (Sciences Physiques / SPC) =====
UPDATE annale SET sujet_url   = 'https://www.alloschool.com/element/145769',
                  corrige_url = 'https://www.alloschool.com/element/145772' WHERE id = 4; -- 2024 Rattrapage
UPDATE annale SET sujet_url   = 'https://www.alloschool.com/element/145763',
                  corrige_url = 'https://www.alloschool.com/element/145766' WHERE id = 5; -- 2024 Normale
UPDATE annale SET sujet_url   = 'https://www.alloschool.com/element/142484',
                  corrige_url = 'https://www.alloschool.com/element/142487' WHERE id = 6; -- 2023 Rattrapage

-- ===== SVT (Sciences Physiques) =====
UPDATE annale SET sujet_url   = 'https://www.alloschool.com/element/145839',
                  corrige_url = 'https://www.alloschool.com/element/145840' WHERE id = 7; -- 2024 Rattrapage
UPDATE annale SET sujet_url   = 'https://www.alloschool.com/element/145837',
                  corrige_url = 'https://www.alloschool.com/element/145838' WHERE id = 8; -- 2024 Normale

-- ===== Français : examen régional (1er Bac) — variable selon la région : on pointe vers l'archive =====
UPDATE annale SET titre     = 'Français — Examens régionaux corrigés (1er Bac Sciences)',
                  sujet_url = 'https://www.alloschool.com/course/francais-1er-bac-sciences-experimentales',
                  corrige_url = NULL
 WHERE id = 9;

-- ===== Philosophie : épreuve nationale (2e Bac Sciences, en arabe) — archive complète =====
UPDATE annale SET titre     = 'Philosophie — Examens nationaux corrigés (2e Bac Sciences)',
                  sujet_url = 'https://www.alloschool.com/course/alflsfa-althania-bak-alom-fiziaiia',
                  corrige_url = NULL
 WHERE id = 10;

-- ===== Annales supplémentaires (2023) =====
INSERT INTO annale (id, matiere_id, titre, annee, session, sujet_url, corrige_url) VALUES
 (11, 1, 'Bac Maths — Session normale 2023',            2023, 'NORMALE',
   'https://www.alloschool.com/element/137482', 'https://www.alloschool.com/element/137472'),
 (12, 2, 'Bac Physique-Chimie — Session normale 2023',  2023, 'NORMALE',
   'https://www.alloschool.com/element/142476', 'https://www.alloschool.com/element/142479'),
 (13, 3, 'Bac SVT — Session normale 2023',              2023, 'NORMALE',
   'https://www.alloschool.com/element/142310', 'https://www.alloschool.com/element/142311'),
 (14, 3, 'Bac SVT — Session de rattrapage 2023',        2023, 'RATTRAPAGE',
   'https://www.alloschool.com/element/142313', 'https://www.alloschool.com/element/142314');
