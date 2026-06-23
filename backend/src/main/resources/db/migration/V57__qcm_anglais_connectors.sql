-- QCM du chapitre Anglais « Connectors and Linking Words ». ids 2315/2316.
SET SESSION sql_mode = CONCAT(@@sql_mode, ',NO_BACKSLASH_ESCAPES');
SET @l := (SELECT id FROM lecon WHERE slug = 'connectors'
           AND matiere_id = (SELECT id FROM matiere WHERE slug = 'anglais'));

-- ===== notions (2315) =====
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
 (2315, NULL, @l, 'QCM — Connectors: notions', 'Categories and constructions of linking words.', 1);

INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES
 (231501,2315,'Which connector expresses addition?','moreover adds an idea of the same kind.',1),
 (231502,2315,'"Although" is followed by:','A clause (subject + verb).',2),
 (231503,2315,'"Despite" and "in spite of" are followed by:','A noun or an -ing form.',3),
 (231504,2315,'"Because of" is followed by:','A noun.',4),
 (231505,2315,'Which connector introduces a result?','therefore introduces a consequence.',5),
 (231506,2315,'Which connector compares two facts (contrast)?','whereas contrasts two facts.',6),
 (231507,2315,'"In order to" is followed by:','An infinitive (purpose).',7),
 (231508,2315,'Which words order a paragraph in sequence?','first, then, finally.',8);

INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
 (2315011,231501,'moreover',TRUE,1),(2315012,231501,'however',FALSE,2),(2315013,231501,'because',FALSE,3),(2315014,231501,'therefore',FALSE,4),
 (2315021,231502,'a clause (subject + verb)',TRUE,1),(2315022,231502,'a noun',FALSE,2),(2315023,231502,'an -ing form',FALSE,3),(2315024,231502,'an infinitive',FALSE,4),
 (2315031,231503,'a noun or an -ing form',TRUE,1),(2315032,231503,'a clause',FALSE,2),(2315033,231503,'an infinitive',FALSE,3),(2315034,231503,'a question',FALSE,4),
 (2315041,231504,'a noun',TRUE,1),(2315042,231504,'a clause',FALSE,2),(2315043,231504,'an infinitive',FALSE,3),(2315044,231504,'an -ing form',FALSE,4),
 (2315051,231505,'therefore',TRUE,1),(2315052,231505,'although',FALSE,2),(2315053,231505,'besides',FALSE,3),(2315054,231505,'whereas',FALSE,4),
 (2315061,231506,'whereas',TRUE,1),(2315062,231506,'moreover',FALSE,2),(2315063,231506,'so',FALSE,3),(2315064,231506,'because',FALSE,4),
 (2315071,231507,'an infinitive',TRUE,1),(2315072,231507,'a noun',FALSE,2),(2315073,231507,'a clause',FALSE,3),(2315074,231507,'an -ing form',FALSE,4),
 (2315081,231508,'first, then, finally',TRUE,1),(2315082,231508,'and, but, so',FALSE,2),(2315083,231508,'because, since, as',FALSE,3),(2315084,231508,'despite, although, however',FALSE,4);

-- ===== applications (2316) =====
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
 (2316, NULL, @l, 'QCM — Connectors: applications', 'Choose the correct linking word in context.', 2);

INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES
 (231601,2316,'___ the rain, we went out.','Despite + noun.',1),
 (231602,2316,'The match was cancelled ___ it rained.','because + clause.',2),
 (231603,2316,'The match was cancelled ___ the rain.','because of + noun.',3),
 (231604,2316,'It was late, ___ we went home.','so introduces the result.',4),
 (231605,2316,'She studies hard ___ pass the Bac.','to + infinitive (purpose).',5),
 (231606,2316,'___ he was tired, he kept working.','Although + clause.',6),
 (231607,2316,'My brother likes sport, ___ I prefer reading.','whereas contrasts two facts.',7),
 (231608,2316,'The plan is cheap. ___, it is safe.','Moreover adds a stronger point.',8);

INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
 (2316011,231601,'Despite',TRUE,1),(2316012,231601,'Although',FALSE,2),(2316013,231601,'Because',FALSE,3),(2316014,231601,'Whereas',FALSE,4),
 (2316021,231602,'because',TRUE,1),(2316022,231602,'because of',FALSE,2),(2316023,231602,'despite',FALSE,3),(2316024,231602,'due to',FALSE,4),
 (2316031,231603,'because of',TRUE,1),(2316032,231603,'because',FALSE,2),(2316033,231603,'although',FALSE,3),(2316034,231603,'since',FALSE,4),
 (2316041,231604,'so',TRUE,1),(2316042,231604,'because',FALSE,2),(2316043,231604,'although',FALSE,3),(2316044,231604,'despite',FALSE,4),
 (2316051,231605,'to',TRUE,1),(2316052,231605,'so that',FALSE,2),(2316053,231605,'for',FALSE,3),(2316054,231605,'because of',FALSE,4),
 (2316061,231606,'Although',TRUE,1),(2316062,231606,'Despite',FALSE,2),(2316063,231606,'In spite of',FALSE,3),(2316064,231606,'Because of',FALSE,4),
 (2316071,231607,'whereas',TRUE,1),(2316072,231607,'moreover',FALSE,2),(2316073,231607,'therefore',FALSE,3),(2316074,231607,'because',FALSE,4),
 (2316081,231608,'Moreover',TRUE,1),(2316082,231608,'However',FALSE,2),(2316083,231608,'Despite',FALSE,3),(2316084,231608,'Whereas',FALSE,4);
