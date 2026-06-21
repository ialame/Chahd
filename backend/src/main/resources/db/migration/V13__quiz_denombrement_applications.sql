-- 2ᵉ QCM pour Dénombrement : « applications » (compter dans des situations).
-- Le 1ᵉ (1009) est renommé « notions ». Plusieurs QCM par chapitre désormais.
SET SESSION sql_mode = CONCAT(@@sql_mode, ',NO_BACKSLASH_ESCAPES');
SET @lde := (SELECT id FROM lecon WHERE slug = 'denombrement'
             AND matiere_id = (SELECT id FROM matiere WHERE slug = 'maths'));

UPDATE quiz SET titre = 'QCM — Dénombrement : notions',
                description = 'Permutations, arrangements et combinaisons.'
 WHERE id = 1009;

INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
 (1011, NULL, @lde, 'QCM — Dénombrement : applications', 'Compter dans des situations concrètes.', 2);

INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES
 (101101,1011,'Combien d''anagrammes peut-on former avec le mot « MATHS » (5 lettres distinctes) ?','On ordonne 5 lettres distinctes : $5!=120$.',1),
 (101102,1011,'De combien de façons peut-on choisir 3 délégués parmi 30 élèves ?','Sans ordre : $\dbinom{30}{3}=4060$.',2),
 (101103,1011,'Combien de codes confidentiels à 4 chiffres (de 0 à 9, répétition permise) existe-t-il ?','$10$ choix par position, soit $10^4=10000$.',3),
 (101104,1011,'Combien de mains de 5 cartes peut-on tirer d''un jeu de 52 cartes ?','Sans ordre : $\dbinom{52}{5}=2\,598\,960$.',4),
 (101105,1011,'Sur un podium (or, argent, bronze), combien de classements des 3 premiers parmi 8 athlètes ?','Avec ordre : $A_8^3 = 8\times 7\times 6 = 336$.',5),
 (101106,1011,'On tire simultanément 2 boules parmi 6. Combien de tirages possibles ?','Tirage simultané = sans ordre : $\dbinom{6}{2}=15$.',6),
 (101107,1011,'De combien de façons peut-on ranger 4 livres distincts côte à côte sur une étagère ?','Permutation de 4 objets : $4!=24$.',7),
 (101108,1011,'On tire successivement et sans remise 3 boules parmi 10. Combien de résultats (l''ordre compte) ?','Avec ordre, sans répétition : $A_{10}^3 = 10\times 9\times 8 = 720$.',8);

INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
 (1011011,101101,'$120$',TRUE,1),(1011012,101101,'$25$',FALSE,2),(1011013,101101,'$60$',FALSE,3),(1011014,101101,'$720$',FALSE,4),
 (1011021,101102,'$\dbinom{30}{3}=4060$',TRUE,1),(1011022,101102,'$A_{30}^3=24360$',FALSE,2),(1011023,101102,'$30^3$',FALSE,3),(1011024,101102,'$90$',FALSE,4),
 (1011031,101103,'$10^4=10000$',TRUE,1),(1011032,101103,'$A_{10}^4=5040$',FALSE,2),(1011033,101103,'$4!=24$',FALSE,3),(1011034,101103,'$10\times 4=40$',FALSE,4),
 (1011041,101104,'$\dbinom{52}{5}$',TRUE,1),(1011042,101104,'$A_{52}^5$',FALSE,2),(1011043,101104,'$52^5$',FALSE,3),(1011044,101104,'$5!$',FALSE,4),
 (1011051,101105,'$A_8^3=336$',TRUE,1),(1011052,101105,'$\dbinom{8}{3}=56$',FALSE,2),(1011053,101105,'$8^3=512$',FALSE,3),(1011054,101105,'$3!=6$',FALSE,4),
 (1011061,101106,'$\dbinom{6}{2}=15$',TRUE,1),(1011062,101106,'$A_6^2=30$',FALSE,2),(1011063,101106,'$6^2=36$',FALSE,3),(1011064,101106,'$6\times 2=12$',FALSE,4),
 (1011071,101107,'$4!=24$',TRUE,1),(1011072,101107,'$\dbinom{4}{2}=6$',FALSE,2),(1011073,101107,'$4^2=16$',FALSE,3),(1011074,101107,'$2^4=16$',FALSE,4),
 (1011081,101108,'$A_{10}^3=720$',TRUE,1),(1011082,101108,'$\dbinom{10}{3}=120$',FALSE,2),(1011083,101108,'$10^3=1000$',FALSE,3),(1011084,101108,'$10\times 3=30$',FALSE,4);
