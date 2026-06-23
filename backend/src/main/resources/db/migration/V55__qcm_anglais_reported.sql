-- QCM du chapitre Anglais « Reported Speech ». ids 2311/2312.
SET SESSION sql_mode = CONCAT(@@sql_mode, ',NO_BACKSLASH_ESCAPES');
SET @l := (SELECT id FROM lecon WHERE slug = 'reported-speech'
           AND matiere_id = (SELECT id FROM matiere WHERE slug = 'anglais'));

-- ===== notions (2311) =====
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
 (2311, NULL, @l, 'QCM — Reported Speech: notions', 'Rules of reported statements, questions and commands.', 1);

INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES
 (231101,2311,'In the backshift, the Present Simple becomes:','Present Simple changes to the Past Simple.',1),
 (231102,2311,'In reported speech, "will" changes to:','will becomes would.',2),
 (231103,2311,'In reported speech, "can" changes to:','can becomes could.',3),
 (231104,2311,'In reported speech, "tomorrow" changes to:','tomorrow becomes the next day.',4),
 (231105,2311,'In reported speech, "here" changes to:','here becomes there.',5),
 (231106,2311,'A reported yes/no question begins with:','if or whether.',6),
 (231107,2311,'Reported commands are formed with:','tell/ask + (not) to + infinitive.',7),
 (231108,2311,'Which verb needs a listener (an object)?','tell (told me), unlike say.',8);

INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
 (2311011,231101,'the Past Simple',TRUE,1),(2311012,231101,'the Present Perfect',FALSE,2),(2311013,231101,'the Past Continuous',FALSE,3),(2311014,231101,'the Future',FALSE,4),
 (2311021,231102,'would',TRUE,1),(2311022,231102,'will',FALSE,2),(2311023,231102,'could',FALSE,3),(2311024,231102,'shall',FALSE,4),
 (2311031,231103,'could',TRUE,1),(2311032,231103,'can',FALSE,2),(2311033,231103,'would',FALSE,3),(2311034,231103,'might',FALSE,4),
 (2311041,231104,'the next day',TRUE,1),(2311042,231104,'that day',FALSE,2),(2311043,231104,'the day before',FALSE,3),(2311044,231104,'then',FALSE,4),
 (2311051,231105,'there',TRUE,1),(2311052,231105,'here',FALSE,2),(2311053,231105,'that',FALSE,3),(2311054,231105,'then',FALSE,4),
 (2311061,231106,'if or whether',TRUE,1),(2311062,231106,'that',FALSE,2),(2311063,231106,'what',FALSE,3),(2311064,231106,'to',FALSE,4),
 (2311071,231107,'tell/ask + (not) to + infinitive',TRUE,1),(2311072,231107,'say + that + clause',FALSE,2),(2311073,231107,'ask + if + clause',FALSE,3),(2311074,231107,'tell + verb-ing',FALSE,4),
 (2311081,231108,'tell',TRUE,1),(2311082,231108,'say',FALSE,2),(2311083,231108,'suggest',FALSE,3),(2311084,231108,'speak',FALSE,4);

-- ===== applications (2312) =====
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
 (2312, NULL, @l, 'QCM — Reported Speech: applications', 'Turn direct speech into reported speech in context.', 2);

INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES
 (231201,2312,'"I am tired." -> She said she ___ tired.','was (Present Simple backshifts to Past Simple).',1),
 (231202,2312,'"We will come." -> They said they ___ come.','would (will becomes would).',2),
 (231203,2312,'"I have finished." -> He said he ___ finished.','had (Present Perfect becomes Past Perfect).',3),
 (231204,2312,'"Where do you live?" -> She asked where I ___.','lived (normal order, no do/did).',4),
 (231205,2312,'"Do you speak French?" -> He asked ___ I spoke French.','if/whether (yes/no question).',5),
 (231206,2312,'"Open the door." -> She told me ___ the door.','to open (tell + to + infinitive).',6),
 (231207,2312,'"Don''t be late." -> He told us ___ late.','not to be (negative command).',7),
 (231208,2312,'"I''ll call you tomorrow." -> She said she would call me ___.','the next day (time word change).',8);

INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
 (2312011,231201,'was',TRUE,1),(2312012,231201,'is',FALSE,2),(2312013,231201,'has been',FALSE,3),(2312014,231201,'were',FALSE,4),
 (2312021,231202,'would',TRUE,1),(2312022,231202,'will',FALSE,2),(2312023,231202,'could',FALSE,3),(2312024,231202,'shall',FALSE,4),
 (2312031,231203,'had',TRUE,1),(2312032,231203,'has',FALSE,2),(2312033,231203,'have',FALSE,3),(2312034,231203,'was',FALSE,4),
 (2312041,231204,'lived',TRUE,1),(2312042,231204,'did live',FALSE,2),(2312043,231204,'do live',FALSE,3),(2312044,231204,'was living',FALSE,4),
 (2312051,231205,'if',TRUE,1),(2312052,231205,'that',FALSE,2),(2312053,231205,'what',FALSE,3),(2312054,231205,'do',FALSE,4),
 (2312061,231206,'to open',TRUE,1),(2312062,231206,'open',FALSE,2),(2312063,231206,'opening',FALSE,3),(2312064,231206,'opened',FALSE,4),
 (2312071,231207,'not to be',TRUE,1),(2312072,231207,'to not be',FALSE,2),(2312073,231207,'to be not',FALSE,3),(2312074,231207,'don''t be',FALSE,4),
 (2312081,231208,'the next day',TRUE,1),(2312082,231208,'tomorrow',FALSE,2),(2312083,231208,'that day',FALSE,3),(2312084,231208,'the day before',FALSE,4);
