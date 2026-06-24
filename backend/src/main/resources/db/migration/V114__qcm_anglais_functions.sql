-- QCM du chapitre Anglais « Language Functions ». ids 2329/2330.
SET SESSION sql_mode = CONCAT(@@sql_mode, ',NO_BACKSLASH_ESCAPES');
SET @l := (SELECT id FROM lecon WHERE slug = 'language-functions'
           AND matiere_id = (SELECT id FROM matiere WHERE slug = 'anglais'));

-- ===== notions (2329) =====
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
 (2329, NULL, @l, 'QCM — Language functions: notions', 'Recognise the language function behind each expression.', 1);

INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES
 (232901,2329,'"Can I help you?" is used to:','Offer help.',1),
 (232902,2329,'Which expression makes a suggestion?','How about going to the cinema?',2),
 (232903,2329,'A complaint is usually answered with:','An apology and a solution.',3),
 (232904,2329,'"Never mind, it doesn''t matter" is a way of:','Responding to an apology.',4),
 (232905,2329,'Which expression gives the strongest advice?','You''d better (had better).',5),
 (232906,2329,'"As far as I''m concerned" introduces:','An opinion.',6),
 (232907,2329,'"Congratulations! Well done!" reacts to:','Good news.',7),
 (232908,2329,'To agree to "Do you mind if I sit here?" you say:','No, not at all.',8);

INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
 (2329011,232901,'offer help',TRUE,1),(2329012,232901,'ask for permission',FALSE,2),(2329013,232901,'complain',FALSE,3),(2329014,232901,'apologise',FALSE,4),
 (2329021,232902,'How about going to the cinema?',TRUE,1),(2329022,232902,'I''m so sorry.',FALSE,2),(2329023,232902,'You''re absolutely right.',FALSE,3),(2329024,232902,'Congratulations!',FALSE,4),
 (2329031,232903,'an apology and a solution',TRUE,1),(2329032,232903,'a suggestion',FALSE,2),(2329033,232903,'a congratulation',FALSE,3),(2329034,232903,'an invitation',FALSE,4),
 (2329041,232904,'responding to an apology',TRUE,1),(2329042,232904,'making an offer',FALSE,2),(2329043,232904,'asking permission',FALSE,3),(2329044,232904,'giving an opinion',FALSE,4),
 (2329051,232905,'You''d better',TRUE,1),(2329052,232905,'You could',FALSE,2),(2329053,232905,'Why don''t you',FALSE,3),(2329054,232905,'It might be a good idea to',FALSE,4),
 (2329061,232906,'an opinion',TRUE,1),(2329062,232906,'a complaint',FALSE,2),(2329063,232906,'an apology',FALSE,3),(2329064,232906,'a permission',FALSE,4),
 (2329071,232907,'good news',TRUE,1),(2329072,232907,'bad news',FALSE,2),(2329073,232907,'a complaint',FALSE,3),(2329074,232907,'a refusal',FALSE,4),
 (2329081,232908,'No, not at all.',TRUE,1),(2329082,232908,'Yes, I do.',FALSE,2),(2329083,232908,'I''m afraid I disagree.',FALSE,3),(2329084,232908,'What a pity!',FALSE,4);

-- ===== applications (2330) =====
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
 (2330, NULL, @l, 'QCM — Language functions: complete the exchange', 'Choose the missing line in each exchange.', 2);

INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES
 (233001,2330,'A: I''ve just passed my driving test! — B: ___','Congratulations! (reacting to good news).',1),
 (233002,2330,'A: Excuse me, my coffee is cold. — B: ___','I''m so sorry, I''ll bring you a hot one. (apology to a complaint).',2),
 (233003,2330,'A: ___ — B: Yes, please. That''s very kind of you.','Can I help you with your bags? (offering help).',3),
 (233004,2330,'A: I feel stressed before exams. — B: ___','If I were you, I''d get more sleep. (giving advice).',4),
 (233005,2330,'A: Would you like to come to my party? — B: ___','I''d love to! (accepting an invitation).',5),
 (233006,2330,'A: ___ — B: Sure, go ahead.','May I open the window? (asking permission).',6),
 (233007,2330,'A: I think we should protect the environment. — B: ___','You''re absolutely right. (agreeing).',7),
 (233008,2330,'A: How about studying together? — B: ___','Good idea! (accepting a suggestion).',8);

INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
 (2330011,233001,'Congratulations! Well done!',TRUE,1),(2330012,233001,'I''m so sorry to hear that.',FALSE,2),(2330013,233001,'Never mind.',FALSE,3),(2330014,233001,'No, not at all.',FALSE,4),
 (2330021,233002,'I''m so sorry, I''ll bring you a hot one.',TRUE,1),(2330022,233002,'Congratulations!',FALSE,2),(2330023,233002,'Yes, please.',FALSE,3),(2330024,233002,'That''s a good idea.',FALSE,4),
 (2330031,233003,'Can I help you with your bags?',TRUE,1),(2330032,233003,'I''d like to complain.',FALSE,2),(2330033,233003,'I''m afraid I disagree.',FALSE,3),(2330034,233003,'What a pity!',FALSE,4),
 (2330041,233004,'If I were you, I''d get more sleep.',TRUE,1),(2330042,233004,'Congratulations!',FALSE,2),(2330043,233004,'No, thank you.',FALSE,3),(2330044,233004,'That''s all right.',FALSE,4),
 (2330051,233005,'I''d love to!',TRUE,1),(2330052,233005,'I''m so sorry.',FALSE,2),(2330053,233005,'You''re right.',FALSE,3),(2330054,233005,'It doesn''t matter.',FALSE,4),
 (2330061,233006,'May I open the window?',TRUE,1),(2330062,233006,'Congratulations!',FALSE,2),(2330063,233006,'What do you think?',FALSE,3),(2330064,233006,'I''m afraid you can''t.',FALSE,4),
 (2330071,233007,'You''re absolutely right.',TRUE,1),(2330072,233007,'I''m afraid you can''t.',FALSE,2),(2330073,233007,'What a pity!',FALSE,3),(2330074,233007,'No, not at all.',FALSE,4),
 (2330081,233008,'Good idea!',TRUE,1),(2330082,233008,'I''m so sorry.',FALSE,2),(2330083,233008,'Congratulations!',FALSE,3),(2330084,233008,'That''s not allowed.',FALSE,4);
