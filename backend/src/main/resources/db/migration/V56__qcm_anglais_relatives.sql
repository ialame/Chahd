-- QCM du chapitre Anglais « Relative Clauses ». ids 2313/2314.
SET SESSION sql_mode = CONCAT(@@sql_mode, ',NO_BACKSLASH_ESCAPES');
SET @l := (SELECT id FROM lecon WHERE slug = 'relative-clauses'
           AND matiere_id = (SELECT id FROM matiere WHERE slug = 'anglais'));

-- ===== notions (2313) =====
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
 (2313, NULL, @l, 'QCM — Relative clauses: notions', 'Relative pronouns and types of relative clauses.', 1);

INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES
 (231301,2313,'Which relative pronoun is used for people?','who refers to people.',1),
 (231302,2313,'Which relative pronoun expresses possession?','whose shows possession.',2),
 (231303,2313,'A defining relative clause is:','Essential and written without commas.',3),
 (231304,2313,'A non-defining relative clause is:','Extra information written between commas.',4),
 (231305,2313,'In a non-defining clause, "that" is:','Impossible — use who/which instead.',5),
 (231306,2313,'We can omit the relative pronoun when it is the:','Object of a defining clause.',6),
 (231307,2313,'Which pronoun is used for places?','where refers to places.',7),
 (231308,2313,'After a preposition, the formal pronoun for people is:','whom (to whom I spoke).',8);

INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
 (2313011,231301,'who',TRUE,1),(2313012,231301,'which',FALSE,2),(2313013,231301,'where',FALSE,3),(2313014,231301,'whose',FALSE,4),
 (2313021,231302,'whose',TRUE,1),(2313022,231302,'who',FALSE,2),(2313023,231302,'which',FALSE,3),(2313024,231302,'when',FALSE,4),
 (2313031,231303,'essential, with no commas',TRUE,1),(2313032,231303,'extra, between commas',FALSE,2),(2313033,231303,'always introduced by which',FALSE,3),(2313034,231303,'never used in English',FALSE,4),
 (2313041,231304,'extra information, between commas',TRUE,1),(2313042,231304,'essential, with no commas',FALSE,2),(2313043,231304,'introduced only by that',FALSE,3),(2313044,231304,'a type of question',FALSE,4),
 (2313051,231305,'impossible',TRUE,1),(2313052,231305,'obligatory',FALSE,2),(2313053,231305,'the only choice',FALSE,3),(2313054,231305,'used for people only',FALSE,4),
 (2313061,231306,'object of a defining clause',TRUE,1),(2313062,231306,'subject of the clause',FALSE,2),(2313063,231306,'in a non-defining clause',FALSE,3),(2313064,231306,'after a preposition',FALSE,4),
 (2313071,231307,'where',TRUE,1),(2313072,231307,'when',FALSE,2),(2313073,231307,'who',FALSE,3),(2313074,231307,'whose',FALSE,4),
 (2313081,231308,'whom',TRUE,1),(2313082,231308,'that',FALSE,2),(2313083,231308,'which',FALSE,3),(2313084,231308,'whose',FALSE,4);

-- ===== applications (2314) =====
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
 (2314, NULL, @l, 'QCM — Relative clauses: applications', 'Choose the correct relative pronoun in context.', 2);

INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES
 (231401,2314,'The woman ___ lives next door is a doctor.','who (subject, person).',1),
 (231402,2314,'This is the book ___ I bought yesterday.','which/that (object, thing).',2),
 (231403,2314,'That is the boy ___ bag was stolen.','whose (possession).',3),
 (231404,2314,'Marrakech, ___ is a famous city, is in the south.','which (non-defining, thing).',4),
 (231405,2314,'The day ___ we met was sunny.','when (time).',5),
 (231406,2314,'In which sentence can the pronoun be omitted?','The man (who) I met — object pronoun.',6),
 (231407,2314,'Choose the correct non-defining clause:','My father, who is a teacher, works hard.',7),
 (231408,2314,'The friend ___ I rely is honest. (formal)','on whom (preposition + whom).',8);

INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
 (2314011,231401,'who',TRUE,1),(2314012,231401,'which',FALSE,2),(2314013,231401,'whose',FALSE,3),(2314014,231401,'where',FALSE,4),
 (2314021,231402,'which',TRUE,1),(2314022,231402,'who',FALSE,2),(2314023,231402,'whose',FALSE,3),(2314024,231402,'where',FALSE,4),
 (2314031,231403,'whose',TRUE,1),(2314032,231403,'who',FALSE,2),(2314033,231403,'which',FALSE,3),(2314034,231403,'whom',FALSE,4),
 (2314041,231404,'which',TRUE,1),(2314042,231404,'that',FALSE,2),(2314043,231404,'who',FALSE,3),(2314044,231404,'where',FALSE,4),
 (2314051,231405,'when',TRUE,1),(2314052,231405,'where',FALSE,2),(2314053,231405,'which',FALSE,3),(2314054,231405,'who',FALSE,4),
 (2314061,231406,'The man I met is a journalist.',TRUE,1),(2314062,231406,'The man who called is here.',FALSE,2),(2314063,231406,'Tom, who is kind, helped.',FALSE,3),(2314064,231406,'The city where I live is big.',FALSE,4),
 (2314071,231407,'My father, who is a teacher, works hard.',TRUE,1),(2314072,231407,'My father that is a teacher works hard.',FALSE,2),(2314073,231407,'My father who is a teacher works hard.',FALSE,3),(2314074,231407,'My father which is a teacher works hard.',FALSE,4),
 (2314081,231408,'on whom',TRUE,1),(2314082,231408,'on that',FALSE,2),(2314083,231408,'whom on',FALSE,3),(2314084,231408,'on who',FALSE,4);
