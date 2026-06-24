-- QCM du chapitre Anglais « Word Formation ». ids 2327/2328.
SET SESSION sql_mode = CONCAT(@@sql_mode, ',NO_BACKSLASH_ESCAPES');
SET @l := (SELECT id FROM lecon WHERE slug = 'word-formation'
           AND matiere_id = (SELECT id FROM matiere WHERE slug = 'anglais'));

-- ===== notions (2327) =====
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
 (2327, NULL, @l, 'QCM — Word Formation: notions', 'Suffixes, prefixes and parts of speech.', 1);

INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES
 (232701,2327,'The suffix "-ment" usually forms a:','A noun (develop → development).',1),
 (232702,2327,'Which suffix forms an adjective?','-ful, as in useful.',2),
 (232703,2327,'The suffix "-ly" usually forms an:','An adverb (quick → quickly).',3),
 (232704,2327,'Which suffix turns a word into a verb?','-en, as in widen / strengthen.',4),
 (232705,2327,'The negative prefix used before "possible" is:','im- (impossible).',5),
 (232706,2327,'"-er / -or" added to a verb often names:','The person who does the action (teacher, actor).',6),
 (232707,2327,'Which prefix means "wrongly"?','mis- (misunderstand).',7),
 (232708,2327,'To choose the right form, you first decide:','Which part of speech the gap needs.',8);

INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
 (2327011,232701,'noun',TRUE,1),(2327012,232701,'verb',FALSE,2),(2327013,232701,'adjective',FALSE,3),(2327014,232701,'adverb',FALSE,4),
 (2327021,232702,'-ful',TRUE,1),(2327022,232702,'-tion',FALSE,2),(2327023,232702,'-ment',FALSE,3),(2327024,232702,'-ly',FALSE,4),
 (2327031,232703,'adverb',TRUE,1),(2327032,232703,'adjective',FALSE,2),(2327033,232703,'noun',FALSE,3),(2327034,232703,'verb',FALSE,4),
 (2327041,232704,'-en',TRUE,1),(2327042,232704,'-ness',FALSE,2),(2327043,232704,'-ous',FALSE,3),(2327044,232704,'-ity',FALSE,4),
 (2327051,232705,'im-',TRUE,1),(2327052,232705,'ir-',FALSE,2),(2327053,232705,'il-',FALSE,3),(2327054,232705,'dis-',FALSE,4),
 (2327061,232706,'the person who does the action',TRUE,1),(2327062,232706,'a place',FALSE,2),(2327063,232706,'an adjective',FALSE,3),(2327064,232706,'an adverb',FALSE,4),
 (2327071,232707,'mis-',TRUE,1),(2327072,232707,'un-',FALSE,2),(2327073,232707,'-less',FALSE,3),(2327074,232707,'-ity',FALSE,4),
 (2327081,232708,'which part of speech the gap needs',TRUE,1),(2327082,232708,'the spelling of the root',FALSE,2),(2327083,232708,'the length of the sentence',FALSE,3),(2327084,232708,'the verb tense',FALSE,4);

-- ===== applications (2328) =====
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
 (2328, NULL, @l, 'QCM — Word Formation: applications', 'Put the word in the correct form.', 2);

INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES
 (232801,2328,'The government improved ___ (educate).','education — a noun after "improved".',1),
 (232802,2328,'This tool is very ___ (use).','useful — an adjective after "very".',2),
 (232803,2328,'She answered the question ___ (careful).','carefully — an adverb describing "answered".',3),
 (232804,2328,'They want to ___ (modern) the school.','modernise — a verb after "to".',4),
 (232805,2328,'It is ___ (possible) to finish in one hour.','impossible — negative adjective with im-.',5),
 (232806,2328,'He is a famous ___ (act).','actor — a noun (person) with -or.',6),
 (232807,2328,'Reading will ___ (wide) your knowledge.','widen — a verb with -en.',7),
 (232808,2328,'They reached an ___ (agree).','agreement — a noun after "an".',8);

INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
 (2328011,232801,'education',TRUE,1),(2328012,232801,'educate',FALSE,2),(2328013,232801,'educational',FALSE,3),(2328014,232801,'educator',FALSE,4),
 (2328021,232802,'useful',TRUE,1),(2328022,232802,'use',FALSE,2),(2328023,232802,'useless',FALSE,3),(2328024,232802,'user',FALSE,4),
 (2328031,232803,'carefully',TRUE,1),(2328032,232803,'careful',FALSE,2),(2328033,232803,'careless',FALSE,3),(2328034,232803,'care',FALSE,4),
 (2328041,232804,'modernise',TRUE,1),(2328042,232804,'modern',FALSE,2),(2328043,232804,'modernity',FALSE,3),(2328044,232804,'modernly',FALSE,4),
 (2328051,232805,'impossible',TRUE,1),(2328052,232805,'possible',FALSE,2),(2328053,232805,'unpossible',FALSE,3),(2328054,232805,'dispossible',FALSE,4),
 (2328061,232806,'actor',TRUE,1),(2328062,232806,'act',FALSE,2),(2328063,232806,'action',FALSE,3),(2328064,232806,'active',FALSE,4),
 (2328071,232807,'widen',TRUE,1),(2328072,232807,'wide',FALSE,2),(2328073,232807,'width',FALSE,3),(2328074,232807,'widely',FALSE,4),
 (2328081,232808,'agreement',TRUE,1),(2328082,232808,'agree',FALSE,2),(2328083,232808,'agreeable',FALSE,3),(2328084,232808,'agreeably',FALSE,4);
