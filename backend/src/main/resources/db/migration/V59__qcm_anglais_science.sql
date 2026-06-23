-- QCM du chapitre Anglais « Science, Technology and Sustainable Development ». ids 2319/2320.
SET SESSION sql_mode = CONCAT(@@sql_mode, ',NO_BACKSLASH_ESCAPES');
SET @l := (SELECT id FROM lecon WHERE slug = 'science-technology'
           AND matiere_id = (SELECT id FROM matiere WHERE slug = 'anglais'));

-- ===== vocabulary (2319) =====
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
 (2319, NULL, @l, 'QCM — Science: vocabulary', 'Key vocabulary of science, technology and the environment.', 1);

INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES
 (231901,2319,'"Renewable energy" comes from:','Sources that never run out, like the sun and wind.',1),
 (231902,2319,'"Fossil fuels" are:','Coal, oil and gas.',2),
 (231903,2319,'Your "carbon footprint" is:','The amount of CO2 you produce.',3),
 (231904,2319,'"Biodiversity" refers to:','The variety of plants and animals.',4),
 (231905,2319,'"Artificial intelligence" means:','Machines that learn and make decisions.',5),
 (231906,2319,'A "breakthrough" is:','An important discovery or sudden progress.',6),
 (231907,2319,'"Recycling" means:','Turning used materials into new products.',7),
 (231908,2319,'"Deforestation" is:','The cutting down of forests.',8);

INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
 (2319011,231901,'sources that never run out',TRUE,1),(2319012,231901,'coal and oil',FALSE,2),(2319013,231901,'nuclear waste',FALSE,3),(2319014,231901,'burning gas',FALSE,4),
 (2319021,231902,'coal, oil and gas',TRUE,1),(2319022,231902,'sun and wind',FALSE,2),(2319023,231902,'recycled metal',FALSE,3),(2319024,231902,'rivers and dams',FALSE,4),
 (2319031,231903,'the amount of CO2 you produce',TRUE,1),(2319032,231903,'the size of your shoe',FALSE,2),(2319033,231903,'the number of trees you plant',FALSE,3),(2319034,231903,'the water you drink',FALSE,4),
 (2319041,231904,'the variety of plants and animals',TRUE,1),(2319042,231904,'a type of pollution',FALSE,2),(2319043,231904,'a renewable energy',FALSE,3),(2319044,231904,'a computer program',FALSE,4),
 (2319051,231905,'machines that learn and decide',TRUE,1),(2319052,231905,'a type of fossil fuel',FALSE,2),(2319053,231905,'a recycling method',FALSE,3),(2319054,231905,'a greenhouse gas',FALSE,4),
 (2319061,231906,'an important discovery',TRUE,1),(2319062,231906,'a broken device',FALSE,2),(2319063,231906,'a power cut',FALSE,3),(2319064,231906,'a kind of pollution',FALSE,4),
 (2319071,231907,'turning used materials into new products',TRUE,1),(2319072,231907,'cutting down forests',FALSE,2),(2319073,231907,'burning waste',FALSE,3),(2319074,231907,'storing data',FALSE,4),
 (2319081,231908,'the cutting down of forests',TRUE,1),(2319082,231908,'planting new trees',FALSE,2),(2319083,231908,'cleaning rivers',FALSE,3),(2319084,231908,'saving energy',FALSE,4);

-- ===== use in context (2320) =====
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
 (2320, NULL, @l, 'QCM — Science: use in context', 'Choose the correct word in context.', 2);

INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES
 (232001,2320,'Burning coal causes air ___.','pollution.',1),
 (232002,2320,'Solar and wind power are forms of ___ energy.','renewable energy.',2),
 (232003,2320,'We sort our waste so it can be sent for ___.','recycling.',3),
 (232004,2320,'___ is the rise in the Earth''s temperature.','Global warming.',4),
 (232005,2320,'A smartphone is a useful ___.','device.',5),
 (232006,2320,'Many animals are ___ and may disappear.','endangered.',6),
 (232007,2320,'Scientists collect and study ___ on computers.','data.',7),
 (232008,2320,'Meeting today''s needs without harming the future is ___.','sustainability.',8);

INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
 (2320011,232001,'pollution',TRUE,1),(2320012,232001,'recycling',FALSE,2),(2320013,232001,'innovation',FALSE,3),(2320014,232001,'data',FALSE,4),
 (2320021,232002,'renewable',TRUE,1),(2320022,232002,'fossil',FALSE,2),(2320023,232002,'endangered',FALSE,3),(2320024,232002,'artificial',FALSE,4),
 (2320031,232003,'recycling',TRUE,1),(2320032,232003,'warming',FALSE,2),(2320033,232003,'pollution',FALSE,3),(2320034,232003,'deforestation',FALSE,4),
 (2320041,232004,'Global warming',TRUE,1),(2320042,232004,'Biodiversity',FALSE,2),(2320043,232004,'Recycling',FALSE,3),(2320044,232004,'Innovation',FALSE,4),
 (2320051,232005,'device',TRUE,1),(2320052,232005,'fuel',FALSE,2),(2320053,232005,'species',FALSE,3),(2320054,232005,'footprint',FALSE,4),
 (2320061,232006,'endangered',TRUE,1),(2320062,232006,'renewable',FALSE,2),(2320063,232006,'sustainable',FALSE,3),(2320064,232006,'artificial',FALSE,4),
 (2320071,232007,'data',TRUE,1),(2320072,232007,'fuels',FALSE,2),(2320073,232007,'forests',FALSE,3),(2320074,232007,'gases',FALSE,4),
 (2320081,232008,'sustainability',TRUE,1),(2320082,232008,'pollution',FALSE,2),(2320083,232008,'deforestation',FALSE,3),(2320084,232008,'warming',FALSE,4);
