-- QCM du chapitre Anglais « Modal Verbs ». ids 2305/2306.
SET SESSION sql_mode = CONCAT(@@sql_mode, ',NO_BACKSLASH_ESCAPES');
SET @l := (SELECT id FROM lecon WHERE slug = 'modals'
           AND matiere_id = (SELECT id FROM matiere WHERE slug = 'anglais'));

-- ===== notions (2305) =====
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
 (2305, NULL, @l, 'QCM — Modals: notions', 'Meanings and uses of the modal verbs.', 1);

INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES
 (230501,2305,'A modal verb is always followed by:','The base verb, with no -s and no -ed.',1),
 (230502,2305,'Which modal expresses ability in the present?','can.',2),
 (230503,2305,'Which modal is the most polite for asking permission?','may.',3),
 (230504,2305,'"have to" expresses an obligation that comes from:','An external authority (a rule or law).',4),
 (230505,2305,'"don''t have to" means:','It is not necessary (optional).',5),
 (230506,2305,'"mustn''t" means:','It is forbidden (prohibition).',6),
 (230507,2305,'Which is the strongest way to give advice?','had better.',7),
 (230508,2305,'For a logical certainty (deduction) we use:','must.',8);

INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
 (2305011,230501,'the base verb',TRUE,1),(2305012,230501,'verb + to',FALSE,2),(2305013,230501,'verb + -ing',FALSE,3),(2305014,230501,'verb + -ed',FALSE,4),
 (2305021,230502,'can',TRUE,1),(2305022,230502,'should',FALSE,2),(2305023,230502,'must',FALSE,3),(2305024,230502,'may',FALSE,4),
 (2305031,230503,'may',TRUE,1),(2305032,230503,'can',FALSE,2),(2305033,230503,'must',FALSE,3),(2305034,230503,'will',FALSE,4),
 (2305041,230504,'an external authority',TRUE,1),(2305042,230504,'the speaker''s own feeling',FALSE,2),(2305043,230504,'a future plan',FALSE,3),(2305044,230504,'a possibility',FALSE,4),
 (2305051,230505,'it is not necessary',TRUE,1),(2305052,230505,'it is forbidden',FALSE,2),(2305053,230505,'it is certain',FALSE,3),(2305054,230505,'it is advisable',FALSE,4),
 (2305061,230506,'it is forbidden',TRUE,1),(2305062,230506,'it is optional',FALSE,2),(2305063,230506,'it is possible',FALSE,3),(2305064,230506,'it is necessary',FALSE,4),
 (2305071,230507,'had better',TRUE,1),(2305072,230507,'should',FALSE,2),(2305073,230507,'ought to',FALSE,3),(2305074,230507,'may',FALSE,4),
 (2305081,230508,'must',TRUE,1),(2305082,230508,'can',FALSE,2),(2305083,230508,'should',FALSE,3),(2305084,230508,'may',FALSE,4);

-- ===== applications (2306) =====
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
 (2306, NULL, @l, 'QCM — Modals: applications', 'Choose the correct modal in context.', 2);

INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES
 (230601,2306,'After the course, you ___ speak fluently.','will be able to (future ability — can has no future).',1),
 (230602,2306,'It is optional. You ___ come if you don''t want to.','don''t have to (no obligation).',2),
 (230603,2306,'Danger! You ___ touch those wires.','mustn''t (prohibition).',3),
 (230604,2306,'The lights are on; someone ___ be at home.','must (logical certainty).',4),
 (230605,2306,'He just ate, so he ___ be hungry.','can''t (impossibility — deduction).',5),
 (230606,2306,'You look tired. You ___ go to bed early.','should (advice).',6),
 (230607,2306,'Take an umbrella; it ___ rain later.','might (possibility).',7),
 (230608,2306,'Yesterday I ___ wait an hour for the bus.','had to (past obligation — must has no past).',8);

INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
 (2306011,230601,'will be able to',TRUE,1),(2306012,230601,'will can',FALSE,2),(2306013,230601,'can to',FALSE,3),(2306014,230601,'must',FALSE,4),
 (2306021,230602,'don''t have to',TRUE,1),(2306022,230602,'mustn''t',FALSE,2),(2306023,230602,'can''t',FALSE,3),(2306024,230602,'shouldn''t',FALSE,4),
 (2306031,230603,'mustn''t',TRUE,1),(2306032,230603,'don''t have to',FALSE,2),(2306033,230603,'may',FALSE,3),(2306034,230603,'could',FALSE,4),
 (2306041,230604,'must',TRUE,1),(2306042,230604,'can''t',FALSE,2),(2306043,230604,'might not',FALSE,3),(2306044,230604,'shouldn''t',FALSE,4),
 (2306051,230605,'can''t',TRUE,1),(2306052,230605,'must',FALSE,2),(2306053,230605,'mustn''t',FALSE,3),(2306054,230605,'has to',FALSE,4),
 (2306061,230606,'should',TRUE,1),(2306062,230606,'mustn''t',FALSE,2),(2306063,230606,'can''t',FALSE,3),(2306064,230606,'don''t have to',FALSE,4),
 (2306071,230607,'might',TRUE,1),(2306072,230607,'must',FALSE,2),(2306073,230607,'can''t',FALSE,3),(2306074,230607,'had better',FALSE,4),
 (2306081,230608,'had to',TRUE,1),(2306082,230608,'must',FALSE,2),(2306083,230608,'musted',FALSE,3),(2306084,230608,'can',FALSE,4);
