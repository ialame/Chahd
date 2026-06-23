-- QCM du chapitre Anglais « Tenses: Present and Past ». ids 2301/2302.
SET SESSION sql_mode = CONCAT(@@sql_mode, ',NO_BACKSLASH_ESCAPES');
SET @l := (SELECT id FROM lecon WHERE slug = 'tenses-review'
           AND matiere_id = (SELECT id FROM matiere WHERE slug = 'anglais'));

-- ===== notions (2301) =====
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
 (2301, NULL, @l, 'QCM — Tenses: notions', 'Forms and uses of the present and past tenses.', 1);

INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES
 (230101,2301,'We use the Present Simple for:','Habits, routines and general facts.',1),
 (230102,2301,'The Present Continuous is formed with:','am/is/are + verb-ing.',2),
 (230103,2301,'The Past Simple of "go" is:','went (irregular verb).',3),
 (230104,2301,'The Present Perfect is formed with:','have/has + past participle.',4),
 (230105,2301,'Which verb is NOT normally used in the continuous?','know (a stative verb).',5),
 (230106,2301,'The word "for" is followed by:','A period of time (for ten years).',6),
 (230107,2301,'The Past Continuous expresses:','An action in progress in the past.',7),
 (230108,2301,'A finished time word like "yesterday" requires:','The Past Simple.',8);

INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
 (2301011,230101,'habits and general facts',TRUE,1),(2301012,230101,'an action happening now',FALSE,2),(2301013,230101,'a finished past action',FALSE,3),(2301014,230101,'a future arrangement',FALSE,4),
 (2301021,230102,'am/is/are + verb-ing',TRUE,1),(2301022,230102,'have + past participle',FALSE,2),(2301023,230102,'do/does + verb',FALSE,3),(2301024,230102,'was/were + verb-ing',FALSE,4),
 (2301031,230103,'went',TRUE,1),(2301032,230103,'goed',FALSE,2),(2301033,230103,'gone',FALSE,3),(2301034,230103,'going',FALSE,4),
 (2301041,230104,'have/has + past participle',TRUE,1),(2301042,230104,'am/is/are + verb-ing',FALSE,2),(2301043,230104,'will + verb',FALSE,3),(2301044,230104,'did + verb',FALSE,4),
 (2301051,230105,'know',TRUE,1),(2301052,230105,'play',FALSE,2),(2301053,230105,'work',FALSE,3),(2301054,230105,'study',FALSE,4),
 (2301061,230106,'a period of time',TRUE,1),(2301062,230106,'a starting point',FALSE,2),(2301063,230106,'a finished date',FALSE,3),(2301064,230106,'a place',FALSE,4),
 (2301071,230107,'an action in progress in the past',TRUE,1),(2301072,230107,'a habit in the present',FALSE,2),(2301073,230107,'a future plan',FALSE,3),(2301074,230107,'a general truth',FALSE,4),
 (2301081,230108,'the Past Simple',TRUE,1),(2301082,230108,'the Present Perfect',FALSE,2),(2301083,230108,'the Present Continuous',FALSE,3),(2301084,230108,'the Past Continuous',FALSE,4);

-- ===== applications (2302) =====
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
 (2302, NULL, @l, 'QCM — Tenses: applications', 'Choose the correct tense in context.', 2);

INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES
 (230201,2302,'Look! It ___ outside.','is raining (Present Continuous — happening now).',1),
 (230202,2302,'She ___ to Spain last year.','went (Past Simple — finished time).',2),
 (230203,2302,'I can''t find my keys. I ___ them.','have lost (Present Perfect — result now).',3),
 (230204,2302,'While I ___, the phone rang.','was sleeping (Past Continuous interrupted).',4),
 (230205,2302,'They ___ here since 2010.','have lived (Present Perfect with since).',5),
 (230206,2302,'Water ___ at 100 degrees.','boils (Present Simple — general truth).',6),
 (230207,2302,'___ you ever ___ sushi?','Have / eaten (Present Perfect — experience).',7),
 (230208,2302,'He ___ TV when the lights went out.','was watching (Past Continuous).',8);

INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
 (2302011,230201,'is raining',TRUE,1),(2302012,230201,'rains',FALSE,2),(2302013,230201,'rained',FALSE,3),(2302014,230201,'has rained',FALSE,4),
 (2302021,230202,'went',TRUE,1),(2302022,230202,'has gone',FALSE,2),(2302023,230202,'goes',FALSE,3),(2302024,230202,'was going',FALSE,4),
 (2302031,230203,'have lost',TRUE,1),(2302032,230203,'lost',FALSE,2),(2302033,230203,'am losing',FALSE,3),(2302034,230203,'was losing',FALSE,4),
 (2302041,230204,'was sleeping',TRUE,1),(2302042,230204,'slept',FALSE,2),(2302043,230204,'have slept',FALSE,3),(2302044,230204,'sleep',FALSE,4),
 (2302051,230205,'have lived',TRUE,1),(2302052,230205,'live',FALSE,2),(2302053,230205,'lived',FALSE,3),(2302054,230205,'are living',FALSE,4),
 (2302061,230206,'boils',TRUE,1),(2302062,230206,'is boiling',FALSE,2),(2302063,230206,'boiled',FALSE,3),(2302064,230206,'has boiled',FALSE,4),
 (2302071,230207,'Have / eaten',TRUE,1),(2302072,230207,'Did / eaten',FALSE,2),(2302073,230207,'Have / ate',FALSE,3),(2302074,230207,'Are / eating',FALSE,4),
 (2302081,230208,'was watching',TRUE,1),(2302082,230208,'watched',FALSE,2),(2302083,230208,'has watched',FALSE,3),(2302084,230208,'watches',FALSE,4);
