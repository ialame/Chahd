-- QCM du chapitre Anglais « Cultural Values and Globalization ». ids 2323/2324.
SET SESSION sql_mode = CONCAT(@@sql_mode, ',NO_BACKSLASH_ESCAPES');
SET @l := (SELECT id FROM lecon WHERE slug = 'cultural-values'
           AND matiere_id = (SELECT id FROM matiere WHERE slug = 'anglais'));

-- ===== vocabulary (2323) =====
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
 (2323, NULL, @l, 'QCM — Cultural values: vocabulary', 'Key words about culture and globalization.', 1);

INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES
 (232301,2323,'"Heritage" refers to:','What is passed down from the past.',1),
 (232302,2323,'"Globalization" is the process by which countries become:','Economically and culturally connected.',2),
 (232303,2323,'A "stereotype" is:','A fixed, oversimplified idea about a group.',3),
 (232304,2323,'To "preserve" a tradition means to:','Keep it safe and unchanged for the future.',4),
 (232305,2323,'An "ancestor" is:','A person from earlier generations of your family.',5),
 (232306,2323,'"Multiculturalism" means:','The acceptance of many cultures in one society.',6),
 (232307,2323,'To "gain new ground" means to:','Spread and become more widely accepted.',7),
 (232308,2323,'"Diversity" refers to:','Having many different people and cultures together.',8);

INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
 (2323011,232301,'what is passed down from the past',TRUE,1),(2323012,232301,'a foreign language',FALSE,2),(2323013,232301,'a modern invention',FALSE,3),(2323014,232301,'an unfair idea',FALSE,4),
 (2323021,232302,'economically and culturally connected',TRUE,1),(2323022,232302,'completely isolated',FALSE,2),(2323023,232302,'less developed',FALSE,3),(2323024,232302,'smaller in size',FALSE,4),
 (2323031,232303,'a fixed, oversimplified idea about a group',TRUE,1),(2323032,232303,'a shared tradition',FALSE,2),(2323033,232303,'a national monument',FALSE,3),(2323034,232303,'a type of exchange',FALSE,4),
 (2323041,232304,'keep it safe and unchanged',TRUE,1),(2323042,232304,'forget it completely',FALSE,2),(2323043,232304,'replace it',FALSE,3),(2323044,232304,'sell it abroad',FALSE,4),
 (2323051,232305,'a person from earlier generations',TRUE,1),(2323052,232305,'a young child',FALSE,2),(2323053,232305,'a foreign tourist',FALSE,3),(2323054,232305,'a new neighbour',FALSE,4),
 (2323061,232306,'the acceptance of many cultures',TRUE,1),(2323062,232306,'the rule of one culture',FALSE,2),(2323063,232306,'a single language',FALSE,3),(2323064,232306,'a closed society',FALSE,4),
 (2323071,232307,'spread and become more accepted',TRUE,1),(2323072,232307,'disappear slowly',FALSE,2),(2323073,232307,'stay the same',FALSE,3),(2323074,232307,'buy new land',FALSE,4),
 (2323081,232308,'having many different cultures together',TRUE,1),(2323082,232308,'having only one culture',FALSE,2),(2323083,232308,'a fixed idea',FALSE,3),(2323084,232308,'a finished date',FALSE,4);

-- ===== use in context (2324) =====
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
 (2324, NULL, @l, 'QCM — Cultural values: use in context', 'Choose the right word in context.', 2);

INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES
 (232401,2324,'Travelling abroad helps you ___ your horizons.','broaden (to open your mind).',1),
 (232402,2324,'We should be proud of our cultural ___.','heritage (what we inherit from the past).',2),
 (232403,2324,'An open-minded person is ready to ___ diversity.','embrace (to accept warmly).',3),
 (232404,2324,'Recipes are ___ from mother to daughter.','handed down (passed across generations).',4),
 (232405,2324,'Living abroad, he feared losing touch with his ___.','roots (his origins and background).',5),
 (232406,2324,'We must avoid judging people through a ___.','stereotype (an unfair fixed idea).',6),
 (232407,2324,'Music can ___ the gap between different cultures.','bridge (to bring closer).',7),
 (232408,2324,'English is ___ new ground all over the world.','gaining (spreading and growing).',8);

INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
 (2324011,232401,'broaden',TRUE,1),(2324012,232401,'lose',FALSE,2),(2324013,232401,'close',FALSE,3),(2324014,232401,'forget',FALSE,4),
 (2324021,232402,'heritage',TRUE,1),(2324022,232402,'stereotype',FALSE,2),(2324023,232402,'border',FALSE,3),(2324024,232402,'machine',FALSE,4),
 (2324031,232403,'embrace',TRUE,1),(2324032,232403,'reject',FALSE,2),(2324033,232403,'ignore',FALSE,3),(2324034,232403,'fear',FALSE,4),
 (2324041,232404,'handed down',TRUE,1),(2324042,232404,'thrown away',FALSE,2),(2324043,232404,'made up',FALSE,3),(2324044,232404,'paid back',FALSE,4),
 (2324051,232405,'roots',TRUE,1),(2324052,232405,'shoes',FALSE,2),(2324053,232405,'plans',FALSE,3),(2324054,232405,'keys',FALSE,4),
 (2324061,232406,'stereotype',TRUE,1),(2324062,232406,'tradition',FALSE,2),(2324063,232406,'value',FALSE,3),(2324064,232406,'custom',FALSE,4),
 (2324071,232407,'bridge',TRUE,1),(2324072,232407,'break',FALSE,2),(2324073,232407,'build',FALSE,3),(2324074,232407,'widen',FALSE,4),
 (2324081,232408,'gaining',TRUE,1),(2324082,232408,'losing',FALSE,2),(2324083,232408,'leaving',FALSE,3),(2324084,232408,'wasting',FALSE,4);
