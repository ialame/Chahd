-- QCM du chapitre Anglais « The Passive Voice ». ids 2307/2308.
SET SESSION sql_mode = CONCAT(@@sql_mode, ',NO_BACKSLASH_ESCAPES');
SET @l := (SELECT id FROM lecon WHERE slug = 'passive-voice'
           AND matiere_id = (SELECT id FROM matiere WHERE slug = 'anglais'));

-- ===== notions (2307) =====
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
 (2307, NULL, @l, 'QCM — Passive Voice: notions', 'Form and uses of the passive voice.', 1);

INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES
 (230701,2307,'The passive voice is formed with:','be (in the right tense) + past participle.',1),
 (230702,2307,'Which verbs can be made passive?','Only transitive verbs (verbs with an object).',2),
 (230703,2307,'The Past Simple passive of "build" is:','was/were built.',3),
 (230704,2307,'The Present Perfect passive uses:','has/have been + past participle.',4),
 (230705,2307,'The modal passive is formed with:','modal + be + past participle (can be done).',5),
 (230706,2307,'We mention the doer of the action with:','by + agent.',6),
 (230707,2307,'We usually omit the agent when it is:','unknown, obvious or unimportant.',7),
 (230708,2307,'"It is said that..." is the passive of:','reporting verbs (say, believe, think).',8);

INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
 (2307011,230701,'be + past participle',TRUE,1),(2307012,230701,'have + past participle',FALSE,2),(2307013,230701,'do + base verb',FALSE,3),(2307014,230701,'be + verb-ing',FALSE,4),
 (2307021,230702,'transitive verbs',TRUE,1),(2307022,230702,'intransitive verbs',FALSE,2),(2307023,230702,'modal verbs',FALSE,3),(2307024,230702,'stative verbs',FALSE,4),
 (2307031,230703,'was/were built',TRUE,1),(2307032,230703,'is/are built',FALSE,2),(2307033,230703,'has been built',FALSE,3),(2307034,230703,'will be built',FALSE,4),
 (2307041,230704,'has/have been + past participle',TRUE,1),(2307042,230704,'is/are + past participle',FALSE,2),(2307043,230704,'was/were + past participle',FALSE,3),(2307044,230704,'have + past participle',FALSE,4),
 (2307051,230705,'modal + be + past participle',TRUE,1),(2307052,230705,'modal + past participle',FALSE,2),(2307053,230705,'modal + being + past participle',FALSE,3),(2307054,230705,'modal + have + past participle',FALSE,4),
 (2307061,230706,'by + agent',TRUE,1),(2307062,230706,'with + agent',FALSE,2),(2307063,230706,'for + agent',FALSE,3),(2307064,230706,'to + agent',FALSE,4),
 (2307071,230707,'unknown or unimportant',TRUE,1),(2307072,230707,'important and new',FALSE,2),(2307073,230707,'a famous person',FALSE,3),(2307074,230707,'the main subject',FALSE,4),
 (2307081,230708,'reporting verbs',TRUE,1),(2307082,230708,'modal verbs',FALSE,2),(2307083,230708,'phrasal verbs',FALSE,3),(2307084,230708,'irregular verbs',FALSE,4);

-- ===== applications (2308) =====
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
 (2308, NULL, @l, 'QCM — Passive Voice: applications', 'Transform and complete passive sentences.', 2);

INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES
 (230801,2308,'Passive: "They make cars here." → Cars ___ here.','are made (Present Simple passive).',1),
 (230802,2308,'Passive: "Picasso painted this picture." → This picture ___ by Picasso.','was painted (Past Simple passive).',2),
 (230803,2308,'The letter ___ already.','has been sent (Present Perfect passive).',3),
 (230804,2308,'The work ___ before Friday.','can be done (modal passive).',4),
 (230805,2308,'My phone ___ last night. (we don''t know who)','was stolen (agent unknown, dropped).',5),
 (230806,2308,'The results ___ tomorrow.','will be announced (future passive).',6),
 (230807,2308,'Reporting: "People say he is rich." → He ___ rich.','is said to be (reporting verb passive).',7),
 (230808,2308,'The road ___ at the moment.','is being repaired (Present Continuous passive).',8);

INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
 (2308011,230801,'are made',TRUE,1),(2308012,230801,'make',FALSE,2),(2308013,230801,'is made',FALSE,3),(2308014,230801,'are making',FALSE,4),
 (2308021,230802,'was painted',TRUE,1),(2308022,230802,'is painted',FALSE,2),(2308023,230802,'has painted',FALSE,3),(2308024,230802,'painted',FALSE,4),
 (2308031,230803,'has been sent',TRUE,1),(2308032,230803,'was sent',FALSE,2),(2308033,230803,'is sent',FALSE,3),(2308034,230803,'has sent',FALSE,4),
 (2308041,230804,'can be done',TRUE,1),(2308042,230804,'can do',FALSE,2),(2308043,230804,'can be did',FALSE,3),(2308044,230804,'is can done',FALSE,4),
 (2308051,230805,'was stolen',TRUE,1),(2308052,230805,'stole',FALSE,2),(2308053,230805,'is stolen',FALSE,3),(2308054,230805,'has stolen',FALSE,4),
 (2308061,230806,'will be announced',TRUE,1),(2308062,230806,'will announce',FALSE,2),(2308063,230806,'are announced',FALSE,3),(2308064,230806,'will be announcing',FALSE,4),
 (2308071,230807,'is said to be',TRUE,1),(2308072,230807,'is said be',FALSE,2),(2308073,230807,'says to be',FALSE,3),(2308074,230807,'is saying to be',FALSE,4),
 (2308081,230808,'is being repaired',TRUE,1),(2308082,230808,'is repaired',FALSE,2),(2308083,230808,'repairs',FALSE,3),(2308084,230808,'has been repaired',FALSE,4);
