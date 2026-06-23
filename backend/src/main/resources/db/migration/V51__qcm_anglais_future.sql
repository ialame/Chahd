-- QCM du chapitre Anglais « Talking about the Future ». ids 2303/2304.
SET SESSION sql_mode = CONCAT(@@sql_mode, ',NO_BACKSLASH_ESCAPES');
SET @l := (SELECT id FROM lecon WHERE slug = 'future-forms'
           AND matiere_id = (SELECT id FROM matiere WHERE slug = 'anglais'));

-- ===== notions (2303) =====
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
 (2303, NULL, @l, 'QCM — Future forms: notions', 'Forms and uses of the future forms.', 1);

INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES
 (230301,2303,'We use "will" for:','Predictions, spontaneous decisions, promises and offers.',1),
 (230302,2303,'"Be going to" is formed with:','am/is/are + going to + base verb.',2),
 (230303,2303,'A fixed future arrangement is best expressed with:','The Present Continuous.',3),
 (230304,2303,'For a timetable (a train, an exam) we use:','The Present Simple.',4),
 (230305,2303,'The Future Continuous is formed with:','will be + verb-ing.',5),
 (230306,2303,'The Future Perfect is formed with:','will have + past participle.',6),
 (230307,2303,'A prediction based on present evidence uses:','be going to.',7),
 (230308,2303,'The time marker "by" (by Monday) signals:','The Future Perfect.',8);

INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
 (2303011,230301,'predictions and spontaneous decisions',TRUE,1),(2303012,230301,'fixed arrangements',FALSE,2),(2303013,230301,'past habits',FALSE,3),(2303014,230301,'timetables',FALSE,4),
 (2303021,230302,'am/is/are + going to + base verb',TRUE,1),(2303022,230302,'will + base verb',FALSE,2),(2303023,230302,'will have + past participle',FALSE,3),(2303024,230302,'am/is/are + verb-ing',FALSE,4),
 (2303031,230303,'the Present Continuous',TRUE,1),(2303032,230303,'the Present Simple',FALSE,2),(2303033,230303,'the Future Perfect',FALSE,3),(2303034,230303,'the Past Simple',FALSE,4),
 (2303041,230304,'the Present Simple',TRUE,1),(2303042,230304,'the Present Continuous',FALSE,2),(2303043,230304,'will + base verb',FALSE,3),(2303044,230304,'be going to',FALSE,4),
 (2303051,230305,'will be + verb-ing',TRUE,1),(2303052,230305,'will have + past participle',FALSE,2),(2303053,230305,'am/is/are + verb-ing',FALSE,3),(2303054,230305,'going to + verb-ing',FALSE,4),
 (2303061,230306,'will have + past participle',TRUE,1),(2303062,230306,'will be + verb-ing',FALSE,2),(2303063,230306,'have/has + past participle',FALSE,3),(2303064,230306,'will + base verb',FALSE,4),
 (2303071,230307,'be going to',TRUE,1),(2303072,230307,'will',FALSE,2),(2303073,230307,'the Present Simple',FALSE,3),(2303074,230307,'the Future Perfect',FALSE,4),
 (2303081,230308,'the Future Perfect',TRUE,1),(2303082,230308,'the Future Continuous',FALSE,2),(2303083,230308,'the Present Simple',FALSE,3),(2303084,230308,'the Past Simple',FALSE,4);

-- ===== applications (2304) =====
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
 (2304, NULL, @l, 'QCM — Future forms: applications', 'Choose the correct future form in context.', 2);

INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES
 (230401,2304,'The phone is ringing. I ___ it.','''ll answer (will — spontaneous decision).',1),
 (230402,2304,'Look at those clouds! It ___.','is going to rain (prediction from evidence).',2),
 (230403,2304,'I ___ the dentist at 4 p.m. tomorrow.','am meeting (Present Continuous — fixed arrangement).',3),
 (230404,2304,'The train ___ at 7:15 tomorrow.','leaves (Present Simple — timetable).',4),
 (230405,2304,'This time tomorrow I ___ in the exam.','will be sitting (Future Continuous).',5),
 (230406,2304,'By next June I ___ school.','will have finished (Future Perfect with by).',6),
 (230407,2304,'I think our team ___ the match.','will win (will — prediction, no proof).',7),
 (230408,2304,'We ___ my grandparents this weekend; we planned it.','are going to visit (intention decided before).',8);

INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
 (2304011,230401,'''ll answer',TRUE,1),(2304012,230401,'am answering',FALSE,2),(2304013,230401,'answer',FALSE,3),(2304014,230401,'will have answered',FALSE,4),
 (2304021,230402,'is going to rain',TRUE,1),(2304022,230402,'rains',FALSE,2),(2304023,230402,'will be raining',FALSE,3),(2304024,230402,'rained',FALSE,4),
 (2304031,230403,'am meeting',TRUE,1),(2304032,230403,'meet',FALSE,2),(2304033,230403,'will have met',FALSE,3),(2304034,230403,'met',FALSE,4),
 (2304041,230404,'leaves',TRUE,1),(2304042,230404,'is leaving',FALSE,2),(2304043,230404,'will have left',FALSE,3),(2304044,230404,'is going to leave',FALSE,4),
 (2304051,230405,'will be sitting',TRUE,1),(2304052,230405,'will sit',FALSE,2),(2304053,230405,'sit',FALSE,3),(2304054,230405,'will have sat',FALSE,4),
 (2304061,230406,'will have finished',TRUE,1),(2304062,230406,'will finish',FALSE,2),(2304063,230406,'will be finishing',FALSE,3),(2304064,230406,'finish',FALSE,4),
 (2304071,230407,'will win',TRUE,1),(2304072,230407,'is going to win',FALSE,2),(2304073,230407,'wins',FALSE,3),(2304074,230407,'will have won',FALSE,4),
 (2304081,230408,'are going to visit',TRUE,1),(2304082,230408,'will visit',FALSE,2),(2304083,230408,'visit',FALSE,3),(2304084,230408,'will have visited',FALSE,4);
