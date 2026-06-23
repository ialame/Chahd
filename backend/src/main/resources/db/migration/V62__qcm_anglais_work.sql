-- QCM du chapitre Anglais « Work, Brain Drain and International Cooperation ». ids 2325/2326.
SET SESSION sql_mode = CONCAT(@@sql_mode, ',NO_BACKSLASH_ESCAPES');
SET @l := (SELECT id FROM lecon WHERE slug = 'work-brain-drain'
           AND matiere_id = (SELECT id FROM matiere WHERE slug = 'anglais'));

-- ===== Vocabulary (2325) =====
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
 (2325, NULL, @l, 'QCM — Work: vocabulary', 'Key vocabulary about work, brain drain and cooperation.', 1);

INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES
 (232501,2325,'"Unemployment" means:','The situation of having no job.',1),
 (232502,2325,'The "brain drain" refers to:','The loss of skilled people who leave their country.',2),
 (232503,2325,'To "emigrate" means to:','Leave your own country to live abroad.',3),
 (232504,2325,'"Expertise" means:','Special, expert knowledge or skill.',4),
 (232505,2325,'An "NGO" is:','A Non-Governmental Organisation.',5),
 (232506,2325,'The "labour market" is:','The supply of and demand for workers.',6),
 (232507,2325,'A "salary" is:','Regular pay for a job.',7),
 (232508,2325,'"Aid" means:','Help, especially money or supplies, given to others.',8);

INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
 (2325011,232501,'the situation of having no job',TRUE,1),(2325012,232501,'a well-paid position',FALSE,2),(2325013,232501,'a long professional career',FALSE,3),(2325014,232501,'a type of qualification',FALSE,4),
 (2325021,232502,'the loss of skilled people who leave the country',TRUE,1),(2325022,232502,'a clever new idea',FALSE,2),(2325023,232502,'a serious illness of the brain',FALSE,3),(2325024,232502,'the arrival of new workers',FALSE,4),
 (2325031,232503,'leave your own country to live abroad',TRUE,1),(2325032,232503,'come back to your home country',FALSE,2),(2325033,232503,'look for a job at home',FALSE,3),(2325034,232503,'travel abroad on holiday',FALSE,4),
 (2325041,232504,'special, expert knowledge or skill',TRUE,1),(2325042,232504,'a monthly salary',FALSE,2),(2325043,232504,'a lack of experience',FALSE,3),(2325044,232504,'a job interview',FALSE,4),
 (2325051,232505,'a Non-Governmental Organisation',TRUE,1),(2325052,232505,'a government ministry',FALSE,2),(2325053,232505,'a private company',FALSE,3),(2325054,232505,'a school subject',FALSE,4),
 (2325061,232506,'the supply of and demand for workers',TRUE,1),(2325062,232506,'a place to buy food',FALSE,2),(2325063,232506,'a list of diplomas',FALSE,3),(2325064,232506,'a foreign country',FALSE,4),
 (2325071,232507,'regular pay for a job',TRUE,1),(2325072,232507,'a paid holiday',FALSE,2),(2325073,232507,'a job application',FALSE,3),(2325074,232507,'a work contract',FALSE,4),
 (2325081,232508,'help, especially money or supplies',TRUE,1),(2325082,232508,'a tax on workers',FALSE,2),(2325083,232508,'a kind of salary',FALSE,3),(2325084,232508,'a travel document',FALSE,4);

-- ===== Use in context (2326) =====
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
 (2326, NULL, @l, 'QCM — Work: use in context', 'Choose the correct word in context.', 2);

INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES
 (232601,2326,'After graduation, she ___ for a job as an engineer.','applied (to apply for a job).',1),
 (232602,2326,'Many doctors ___ to Europe because of low salaries at home.','emigrate (leave their country).',2),
 (232603,2326,'It is hard to ___ a living in some rural regions.','make (to make a living).',3),
 (232604,2326,'The ___ lost much of its expertise when its scientists left.','developing country (a poorer country).',4),
 (232605,2326,'Rich nations often ___ aid to poorer ones.','provide (to provide aid).',5),
 (232606,2326,'Cooperation helps to ___ the gap between rich and poor.','bridge (to bridge the gap).',6),
 (232607,2326,'Young people seek better ___ abroad.','opportunities (chances to succeed).',7),
 (232608,2326,'An ___ trains its staff and offers fair salaries.','employer (a company that hires workers).',8);

INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
 (2326011,232601,'applied',TRUE,1),(2326012,232601,'arrived',FALSE,2),(2326013,232601,'refused',FALSE,3),(2326014,232601,'returned',FALSE,4),
 (2326021,232602,'emigrate',TRUE,1),(2326022,232602,'cooperate',FALSE,2),(2326023,232602,'develop',FALSE,3),(2326024,232602,'qualify',FALSE,4),
 (2326031,232603,'make',TRUE,1),(2326032,232603,'do',FALSE,2),(2326033,232603,'take',FALSE,3),(2326034,232603,'have',FALSE,4),
 (2326041,232604,'developing country',TRUE,1),(2326042,232604,'labour market',FALSE,2),(2326043,232604,'United Nations',FALSE,3),(2326044,232604,'employer',FALSE,4),
 (2326051,232605,'provide',TRUE,1),(2326052,232605,'receive',FALSE,2),(2326053,232605,'emigrate',FALSE,3),(2326054,232605,'apply',FALSE,4),
 (2326061,232606,'bridge',TRUE,1),(2326062,232606,'build',FALSE,2),(2326063,232606,'open',FALSE,3),(2326064,232606,'leave',FALSE,4),
 (2326071,232607,'opportunities',TRUE,1),(2326072,232607,'qualifications',FALSE,2),(2326073,232607,'salaries',FALSE,3),(2326074,232607,'employers',FALSE,4),
 (2326081,232608,'employer',TRUE,1),(2326082,232608,'employee',FALSE,2),(2326083,232608,'unemployment',FALSE,3),(2326084,232608,'NGO',FALSE,4);
