-- QCM du chapitre Anglais « Citizenship and Human Rights ». ids 2321/2322.
SET SESSION sql_mode = CONCAT(@@sql_mode, ',NO_BACKSLASH_ESCAPES');
SET @l := (SELECT id FROM lecon WHERE slug = 'citizenship-human-rights'
           AND matiere_id = (SELECT id FROM matiere WHERE slug = 'anglais'));

-- ===== vocabulary (2321) =====
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
 (2321, NULL, @l, 'QCM — Citizenship: vocabulary', 'Meanings of key words about citizenship and human rights.', 1);

INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES
 (232101,2321,'A "citizen" is a person who:','belongs to a country and has its rights and duties.',1),
 (232102,2321,'"Human rights" are:','the basic freedoms every person has because they are human.',2),
 (232103,2321,'"Discrimination" means:','unfair treatment because of race, gender or religion.',3),
 (232104,2321,'"Equality" means everyone has:','the same status and opportunities.',4),
 (232105,2321,'"Tolerance" is:','acceptance of people who are different.',5),
 (232106,2321,'"Freedom of speech" is the right to:','express one''s opinions freely.',6),
 (232107,2321,'An "NGO" is:','a non-governmental organization working for a cause.',7),
 (232108,2321,'"Solidarity" means:','mutual support among members of a community.',8);

INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
 (2321011,232101,'belongs to a country with rights and duties',TRUE,1),(2321012,232101,'visits a country as a tourist',FALSE,2),(2321013,232101,'works for the government',FALSE,3),(2321014,232101,'owns a business',FALSE,4),
 (2321021,232102,'basic freedoms every person has',TRUE,1),(2321022,232102,'laws only for citizens',FALSE,2),(2321023,232102,'rules for companies',FALSE,3),(2321024,232102,'rights given by parents',FALSE,4),
 (2321031,232103,'unfair treatment because of race or gender',TRUE,1),(2321032,232103,'fair treatment of everyone',FALSE,2),(2321033,232103,'respect for the law',FALSE,3),(2321034,232103,'help given to the poor',FALSE,4),
 (2321041,232104,'the same status and opportunities',TRUE,1),(2321042,232104,'more rights than others',FALSE,2),(2321043,232104,'the right to vote only',FALSE,3),(2321044,232104,'a higher salary',FALSE,4),
 (2321051,232105,'acceptance of people who are different',TRUE,1),(2321052,232105,'hatred of foreigners',FALSE,2),(2321053,232105,'love of money',FALSE,3),(2321054,232105,'fear of change',FALSE,4),
 (2321061,232106,'express one''s opinions freely',TRUE,1),(2321062,232106,'travel anywhere',FALSE,2),(2321063,232106,'choose a job',FALSE,3),(2321064,232106,'own property',FALSE,4),
 (2321071,232107,'a non-governmental organization',TRUE,1),(2321072,232107,'a government ministry',FALSE,2),(2321073,232107,'a private company',FALSE,3),(2321074,232107,'a political party',FALSE,4),
 (2321081,232108,'mutual support in a community',TRUE,1),(2321082,232108,'competition between people',FALSE,2),(2321083,232108,'respect for the law',FALSE,3),(2321084,232108,'freedom of the press',FALSE,4);

-- ===== use in context (2322) =====
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
 (2322, NULL, @l, 'QCM — Citizenship: use in context', 'Choose the correct word in context.', 2);

INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES
 (232201,2322,'A good citizen must ___ the law.','obey (respect the rules of society).',1),
 (232202,2322,'Education and health are basic ___.','rights (things everyone is entitled to).',2),
 (232203,2322,'We must fight against ___.','discrimination (unfair treatment of people).',3),
 (232204,2322,'She does ___ at a local charity.','volunteering (unpaid useful work).',4),
 (232205,2322,'Everyone is equal ___ of race or religion.','regardless (no matter their background).',5),
 (232206,2322,'Paying taxes is one of our ___.','duties (what we owe to society).',6),
 (232207,2322,'The campaign aims to raise ___ about pollution.','awareness (knowledge of a problem).',7),
 (232208,2322,'Every human being deserves ___.','dignity (the quality of being worthy of respect).',8);

INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
 (2322011,232201,'obey',TRUE,1),(2322012,232201,'break',FALSE,2),(2322013,232201,'sell',FALSE,3),(2322014,232201,'forget',FALSE,4),
 (2322021,232202,'rights',TRUE,1),(2322022,232202,'duties',FALSE,2),(2322023,232202,'taxes',FALSE,3),(2322024,232202,'crimes',FALSE,4),
 (2322031,232203,'discrimination',TRUE,1),(2322032,232203,'equality',FALSE,2),(2322033,232203,'tolerance',FALSE,3),(2322034,232203,'solidarity',FALSE,4),
 (2322041,232204,'volunteering',TRUE,1),(2322042,232204,'shopping',FALSE,2),(2322043,232204,'voting',FALSE,3),(2322044,232204,'travelling',FALSE,4),
 (2322051,232205,'regardless',TRUE,1),(2322052,232205,'because',FALSE,2),(2322053,232205,'instead',FALSE,3),(2322054,232205,'thanks',FALSE,4),
 (2322061,232206,'duties',TRUE,1),(2322062,232206,'rights',FALSE,2),(2322063,232206,'freedoms',FALSE,3),(2322064,232206,'hobbies',FALSE,4),
 (2322071,232207,'awareness',TRUE,1),(2322072,232207,'money',FALSE,2),(2322073,232207,'silence',FALSE,3),(2322074,232207,'doubt',FALSE,4),
 (2322081,232208,'dignity',TRUE,1),(2322082,232208,'money',FALSE,2),(2322083,232208,'fame',FALSE,3),(2322084,232208,'power',FALSE,4);
