-- QCM du chapitre Anglais « Education and the Gifts of Youth ». ids 2317/2318.
SET SESSION sql_mode = CONCAT(@@sql_mode, ',NO_BACKSLASH_ESCAPES');
SET @l := (SELECT id FROM lecon WHERE slug = 'education-youth'
           AND matiere_id = (SELECT id FROM matiere WHERE slug = 'anglais'));

-- ===== Vocabulary (2317) =====
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
 (2317, NULL, @l, 'QCM — Education: vocabulary', 'Meanings and synonyms of key words.', 1);

INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES
 (231701,2317,'A "dropout" is a student who:','leaves school before finishing.',1),
 (231702,2317,'"Literacy" means the ability to:','read and write.',2),
 (231703,2317,'The "curriculum" is:','the set of subjects taught.',3),
 (231704,2317,'A "scholarship" is:','money given to a talented student.',4),
 (231705,2317,'"Vocational training" prepares you for:','a specific trade or job.',5),
 (231706,2317,'A "mentor" is someone who:','guides and advises a younger person.',6),
 (231707,2317,'"Volunteering" means:','helping others for free.',7),
 (231708,2317,'"Lifelong learning" means learning:','throughout your whole life.',8);

INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
 (2317011,231701,'leaves school before finishing',TRUE,1),(2317012,231701,'gets the highest marks',FALSE,2),(2317013,231701,'teaches a class',FALSE,3),(2317014,231701,'wins a scholarship',FALSE,4),
 (2317021,231702,'read and write',TRUE,1),(2317022,231702,'count and calculate',FALSE,2),(2317023,231702,'speak in public',FALSE,3),(2317024,231702,'use a computer',FALSE,4),
 (2317031,231703,'the set of subjects taught',TRUE,1),(2317032,231703,'the school building',FALSE,2),(2317033,231703,'a final exam',FALSE,3),(2317034,231703,'a list of teachers',FALSE,4),
 (2317041,231704,'money given to a talented student',TRUE,1),(2317042,231704,'a school report',FALSE,2),(2317043,231704,'a type of exam',FALSE,3),(2317044,231704,'a school uniform',FALSE,4),
 (2317051,231705,'a specific trade or job',TRUE,1),(2317052,231705,'a university degree only',FALSE,2),(2317053,231705,'a foreign language',FALSE,3),(2317054,231705,'a sports competition',FALSE,4),
 (2317061,231706,'guides and advises a younger person',TRUE,1),(2317062,231706,'pays the tuition fees',FALSE,2),(2317063,231706,'marks the exams',FALSE,3),(2317064,231706,'cleans the school',FALSE,4),
 (2317071,231707,'helping others for free',TRUE,1),(2317072,231707,'studying for money',FALSE,2),(2317073,231707,'leaving school early',FALSE,3),(2317074,231707,'failing an exam',FALSE,4),
 (2317081,231708,'throughout your whole life',TRUE,1),(2317082,231708,'only in primary school',FALSE,2),(2317083,231708,'only before exams',FALSE,3),(2317084,231708,'during the holidays',FALSE,4);

-- ===== Use in context (2318) =====
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
 (2318, NULL, @l, 'QCM — Education: use in context', 'Choose the right word for each sentence.', 2);

INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES
 (231801,2318,'Adult ___ programmes teach people to read and write.','literacy.',1),
 (231802,2318,'She won a ___ to study abroad for free.','scholarship.',2),
 (231803,2318,'Clear goals boost a learner''s ___.','motivation.',3),
 (231804,2318,'He chose ___ training to become an electrician.','vocational.',4),
 (231805,2318,'A good ___ can guide a teenager and change his path.','mentor.',5),
 (231806,2318,'Many students gain confidence through ___.','volunteering.',6),
 (231807,2318,'School ___ often struggle to find good jobs.','dropouts.',7),
 (231808,2318,'Art classes help nurture a child''s ___.','creativity.',8);

INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
 (2318011,231801,'literacy',TRUE,1),(2318012,231801,'curriculum',FALSE,2),(2318013,231801,'discipline',FALSE,3),(2318014,231801,'enrolment',FALSE,4),
 (2318021,231802,'scholarship',TRUE,1),(2318022,231802,'dropout',FALSE,2),(2318023,231802,'curriculum',FALSE,3),(2318024,231802,'mentor',FALSE,4),
 (2318031,231803,'motivation',TRUE,1),(2318032,231803,'illiteracy',FALSE,2),(2318033,231803,'tuition',FALSE,3),(2318034,231803,'dropout',FALSE,4),
 (2318041,231804,'vocational',TRUE,1),(2318042,231804,'lifelong',FALSE,2),(2318043,231804,'illiterate',FALSE,3),(2318044,231804,'creative',FALSE,4),
 (2318051,231805,'mentor',TRUE,1),(2318052,231805,'dropout',FALSE,2),(2318053,231805,'graduate',FALSE,3),(2318054,231805,'curriculum',FALSE,4),
 (2318061,231806,'volunteering',TRUE,1),(2318062,231806,'illiteracy',FALSE,2),(2318063,231806,'tuition fees',FALSE,3),(2318064,231806,'enrolment',FALSE,4),
 (2318071,231807,'dropouts',TRUE,1),(2318072,231807,'scholarships',FALSE,2),(2318073,231807,'mentors',FALSE,3),(2318074,231807,'graduates',FALSE,4),
 (2318081,231808,'creativity',TRUE,1),(2318082,231808,'illiteracy',FALSE,2),(2318083,231808,'discipline',FALSE,3),(2318084,231808,'enrolment',FALSE,4);
