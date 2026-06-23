-- QCM du chapitre Anglais « Conditionals and Wishes ». ids 2309/2310.
SET SESSION sql_mode = CONCAT(@@sql_mode, ',NO_BACKSLASH_ESCAPES');
SET @l := (SELECT id FROM lecon WHERE slug = 'conditionals-wishes'
           AND matiere_id = (SELECT id FROM matiere WHERE slug = 'anglais'));

-- ===== notions (2309) =====
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
 (2309, NULL, @l, 'QCM — Conditionals: notions', 'Forms and uses of the conditionals and wishes.', 1);

INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES
 (230901,2309,'The Zero Conditional uses:','if + present, present (general truths).',1),
 (230902,2309,'The First Conditional is formed with:','if + present simple, will + base verb.',2),
 (230903,2309,'The Second Conditional uses:','if + past simple, would + base verb.',3),
 (230904,2309,'The Third Conditional is formed with:','if + past perfect, would have + past participle.',4),
 (230905,2309,'"Unless" means:','if not / except if.',5),
 (230906,2309,'After "if" in the Second Conditional, "be" becomes:','were (for all persons).',6),
 (230907,2309,'"Wish + past perfect" expresses:','A regret about the past.',7),
 (230908,2309,'"Wish + would" is used to:','Complain about an annoying habit.',8);

INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
 (2309011,230901,'if + present, present',TRUE,1),(2309012,230901,'if + present, will',FALSE,2),(2309013,230901,'if + past, would',FALSE,3),(2309014,230901,'if + past perfect, would have',FALSE,4),
 (2309021,230902,'if + present simple, will + verb',TRUE,1),(2309022,230902,'if + past simple, would + verb',FALSE,2),(2309023,230902,'if + present, present',FALSE,3),(2309024,230902,'if + past perfect, would have + verb',FALSE,4),
 (2309031,230903,'if + past simple, would + verb',TRUE,1),(2309032,230903,'if + present, will + verb',FALSE,2),(2309033,230903,'if + past perfect, would have + verb',FALSE,3),(2309034,230903,'if + present, present',FALSE,4),
 (2309041,230904,'if + past perfect, would have + past participle',TRUE,1),(2309042,230904,'if + past simple, would + verb',FALSE,2),(2309043,230904,'if + present, will + verb',FALSE,3),(2309044,230904,'if + present, present',FALSE,4),
 (2309051,230905,'if not / except if',TRUE,1),(2309052,230905,'as soon as',FALSE,2),(2309053,230905,'even though',FALSE,3),(2309054,230905,'in order to',FALSE,4),
 (2309061,230906,'were',TRUE,1),(2309062,230906,'was',FALSE,2),(2309063,230906,'is',FALSE,3),(2309064,230906,'been',FALSE,4),
 (2309071,230907,'a regret about the past',TRUE,1),(2309072,230907,'a regret about the present',FALSE,2),(2309073,230907,'a real future plan',FALSE,3),(2309074,230907,'a general truth',FALSE,4),
 (2309081,230908,'complain about an annoying habit',TRUE,1),(2309082,230908,'describe a past regret',FALSE,2),(2309083,230908,'state a scientific fact',FALSE,3),(2309084,230908,'give a real future condition',FALSE,4);

-- ===== applications (2310) =====
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
 (2310, NULL, @l, 'QCM — Conditionals: applications', 'Choose the correct form in context.', 2);

INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES
 (231001,2310,'If you heat ice, it ___.','melts (Zero Conditional — general truth).',1),
 (231002,2310,'If it rains tomorrow, we ___ at home.','will stay (First Conditional).',2),
 (231003,2310,'If I ___ the lottery, I would travel the world.','won (Second Conditional — unreal).',3),
 (231004,2310,'If I had studied, I ___ the exam.','would have passed (Third Conditional).',4),
 (231005,2310,'If I ___ you, I would accept the job.','were (Second Conditional, advice).',5),
 (231006,2310,'You won''t pass ___ you work hard.','unless (= if you don''t work hard).',6),
 (231007,2310,'I wish I ___ more free time.','had (wish + past simple — present regret).',7),
 (231008,2310,'I wish you ___ making noise!','would stop (wish + would — complaint).',8);

INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
 (2310011,231001,'melts',TRUE,1),(2310012,231001,'will melt',FALSE,2),(2310013,231001,'would melt',FALSE,3),(2310014,231001,'melted',FALSE,4),
 (2310021,231002,'will stay',TRUE,1),(2310022,231002,'stay',FALSE,2),(2310023,231002,'would stay',FALSE,3),(2310024,231002,'stayed',FALSE,4),
 (2310031,231003,'won',TRUE,1),(2310032,231003,'win',FALSE,2),(2310033,231003,'will win',FALSE,3),(2310034,231003,'had won',FALSE,4),
 (2310041,231004,'would have passed',TRUE,1),(2310042,231004,'would pass',FALSE,2),(2310043,231004,'will pass',FALSE,3),(2310044,231004,'passed',FALSE,4),
 (2310051,231005,'were',TRUE,1),(2310052,231005,'was',FALSE,2),(2310053,231005,'am',FALSE,3),(2310054,231005,'would be',FALSE,4),
 (2310061,231006,'unless',TRUE,1),(2310062,231006,'if',FALSE,2),(2310063,231006,'when',FALSE,3),(2310064,231006,'because',FALSE,4),
 (2310071,231007,'had',TRUE,1),(2310072,231007,'have',FALSE,2),(2310073,231007,'would have',FALSE,3),(2310074,231007,'will have',FALSE,4),
 (2310081,231008,'would stop',TRUE,1),(2310082,231008,'stopped',FALSE,2),(2310083,231008,'stop',FALSE,3),(2310084,231008,'will stop',FALSE,4);
