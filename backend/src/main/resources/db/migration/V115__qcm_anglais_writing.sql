-- QCM du chapitre Anglais « Writing Skills ». ids 2331/2332.
SET SESSION sql_mode = CONCAT(@@sql_mode, ',NO_BACKSLASH_ESCAPES');
SET @l := (SELECT id FROM lecon WHERE slug = 'writing-skills'
           AND matiere_id = (SELECT id FROM matiere WHERE slug = 'anglais'));

-- ===== notions (2331) =====
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
 (2331, NULL, @l, 'QCM — Writing: notions', 'Paragraph structure, genres and connectors.', 1);

INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES
 (233101,2331,'The sentence that announces the main idea of a paragraph is the:','The topic sentence.',1),
 (233102,2331,'A good paragraph should contain:','One main idea only.',2),
 (233103,2331,'A blog post is written in a tone that is:','Personal and conversational.',3),
 (233104,2331,'A formal email usually ends with:','Yours sincerely.',4),
 (233105,2331,'Which connector is used to ADD an idea?','moreover.',5),
 (233106,2331,'Which connector shows CONTRAST?','however.',6),
 (233107,2331,'In an opinion paragraph you should first:','State your opinion.',7),
 (233108,2331,'The best habit after finishing your text is to:','Re-read it to check mistakes.',8);

INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
 (2331011,233101,'topic sentence',TRUE,1),(2331012,233101,'concluding sentence',FALSE,2),(2331013,233101,'supporting idea',FALSE,3),(2331014,233101,'example',FALSE,4),
 (2331021,233102,'one main idea only',TRUE,1),(2331022,233102,'several unrelated ideas',FALSE,2),(2331023,233102,'no main idea',FALSE,3),(2331024,233102,'only examples',FALSE,4),
 (2331031,233103,'personal and conversational',TRUE,1),(2331032,233103,'strictly formal',FALSE,2),(2331033,233103,'scientific',FALSE,3),(2331034,233103,'legal',FALSE,4),
 (2331041,233104,'Yours sincerely',TRUE,1),(2331042,233104,'Take care',FALSE,2),(2331043,233104,'Bye!',FALSE,3),(2331044,233104,'Cheers',FALSE,4),
 (2331051,233105,'moreover',TRUE,1),(2331052,233105,'however',FALSE,2),(2331053,233105,'therefore',FALSE,3),(2331054,233105,'for example',FALSE,4),
 (2331061,233106,'however',TRUE,1),(2331062,233106,'firstly',FALSE,2),(2331063,233106,'in addition',FALSE,3),(2331064,233106,'as a result',FALSE,4),
 (2331071,233107,'state your opinion',TRUE,1),(2331072,233107,'write the conclusion',FALSE,2),(2331073,233107,'give a title',FALSE,3),(2331074,233107,'apologise to the reader',FALSE,4),
 (2331081,233108,'re-read it to check mistakes',TRUE,1),(2331082,233108,'add more connectors',FALSE,2),(2331083,233108,'erase the conclusion',FALSE,3),(2331084,233108,'change the topic',FALSE,4);

-- ===== applications (2332) =====
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
 (2332, NULL, @l, 'QCM — Writing: applications', 'Choose the right form for each context.', 2);

INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES
 (233201,2332,'You write to a friend. The best greeting is:','Hi Sara, (informal).',1),
 (233202,2332,'Which closing matches "Dear Sir or Madam"?','Yours faithfully (no name known).',2),
 (233203,2332,'To give an example, you write:','For instance, ...',3),
 (233204,2332,'To conclude an opinion paragraph, you write:','In conclusion, ...',4),
 (233205,2332,'An article should begin with a title that is:','Short and catchy.',5),
 (233206,2332,'"Although some people think..." is used to:','Mention the opposite view.',6),
 (233207,2332,'A formal email should NOT contain:','Slang or contractions.',7),
 (233208,2332,'Before writing, the first useful step is to:','Plan your main ideas.',8);

INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
 (2332011,233201,'Hi Sara,',TRUE,1),(2332012,233201,'Dear Madam,',FALSE,2),(2332013,233201,'To whom it may concern,',FALSE,3),(2332014,233201,'Yours faithfully,',FALSE,4),
 (2332021,233202,'Yours faithfully',TRUE,1),(2332022,233202,'Yours sincerely',FALSE,2),(2332023,233202,'Take care',FALSE,3),(2332024,233202,'See you soon',FALSE,4),
 (2332031,233203,'For instance,',TRUE,1),(2332032,233203,'However,',FALSE,2),(2332033,233203,'Therefore,',FALSE,3),(2332034,233203,'In conclusion,',FALSE,4),
 (2332041,233204,'In conclusion,',TRUE,1),(2332042,233204,'For example,',FALSE,2),(2332043,233204,'Firstly,',FALSE,3),(2332044,233204,'On the other hand,',FALSE,4),
 (2332051,233205,'short and catchy',TRUE,1),(2332052,233205,'very long and detailed',FALSE,2),(2332053,233205,'a full paragraph',FALSE,3),(2332054,233205,'a list of dates',FALSE,4),
 (2332061,233206,'mention the opposite view',TRUE,1),(2332062,233206,'give an example',FALSE,2),(2332063,233206,'end the email',FALSE,3),(2332064,233206,'add a title',FALSE,4),
 (2332071,233207,'slang or contractions',TRUE,1),(2332072,233207,'a clear purpose',FALSE,2),(2332073,233207,'a polite greeting',FALSE,3),(2332074,233207,'a sign-off',FALSE,4),
 (2332081,233208,'plan your main ideas',TRUE,1),(2332082,233208,'count the marks',FALSE,2),(2332083,233208,'copy a memorised text',FALSE,3),(2332084,233208,'choose a font',FALSE,4);
