-- QCM du chapitre SVT « La méiose et le brassage génétique ». ids 2209/2210.
SET SESSION sql_mode = CONCAT(@@sql_mode, ',NO_BACKSLASH_ESCAPES');
SET @l := (SELECT id FROM lecon WHERE slug = 'meiose-brassage'
           AND matiere_id = (SELECT id FROM matiere WHERE slug = 'svt'));

-- ===== notions (2209) =====
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
 (2209, NULL, @l, 'QCM — Méiose et brassage : notions', 'Divisions, réduction, brassages.', 1);

INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES
 (220901,2209,'La méiose transforme une cellule diploïde (2n) en :','4 cellules haploïdes (n).',1),
 (220902,2209,'La méiose comporte :','Deux divisions cellulaires.',2),
 (220903,2209,'La première division (réductionnelle) sépare :','Les chromosomes homologues.',3),
 (220904,2209,'La deuxième division (équationnelle) sépare :','Les chromatides sœurs.',4),
 (220905,2209,'La réduction chromatique (2n → n) a lieu lors de :','La première division.',5),
 (220906,2209,'Le crossing-over se déroule en :','Prophase I.',6),
 (220907,2209,'Le brassage interchromosomique a lieu à :','L''anaphase I.',7),
 (220908,2209,'La diversité génétique des individus résulte de :','La méiose (brassages) et la fécondation.',8);

INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
 (2209011,220901,'4 cellules haploïdes (n)',TRUE,1),(2209012,220901,'2 cellules diploïdes (2n)',FALSE,2),(2209013,220901,'4 cellules diploïdes',FALSE,3),(2209014,220901,'1 cellule haploïde',FALSE,4),
 (2209021,220902,'deux divisions',TRUE,1),(2209022,220902,'une division',FALSE,2),(2209023,220902,'trois divisions',FALSE,3),(2209024,220902,'aucune division',FALSE,4),
 (2209031,220903,'les chromosomes homologues',TRUE,1),(2209032,220903,'les chromatides sœurs',FALSE,2),(2209033,220903,'les nucléotides',FALSE,3),(2209034,220903,'les acides aminés',FALSE,4),
 (2209041,220904,'les chromatides sœurs',TRUE,1),(2209042,220904,'les chromosomes homologues',FALSE,2),(2209043,220904,'les deux brins de l''ADN',FALSE,3),(2209044,220904,'les cellules filles',FALSE,4),
 (2209051,220905,'la première division',TRUE,1),(2209052,220905,'la deuxième division',FALSE,2),(2209053,220905,'la fécondation',FALSE,3),(2209054,220905,'la mitose',FALSE,4),
 (2209061,220906,'prophase I',TRUE,1),(2209062,220906,'anaphase II',FALSE,2),(2209063,220906,'télophase II',FALSE,3),(2209064,220906,'l''interphase',FALSE,4),
 (2209071,220907,'l''anaphase I',TRUE,1),(2209072,220907,'la prophase II',FALSE,2),(2209073,220907,'la fécondation',FALSE,3),(2209074,220907,'la phase S',FALSE,4),
 (2209081,220908,'la méiose et la fécondation',TRUE,1),(2209082,220908,'la réplication seule',FALSE,2),(2209083,220908,'la mitose seule',FALSE,3),(2209084,220908,'la respiration',FALSE,4);

-- ===== applications (2210) =====
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
 (2210, NULL, @l, 'QCM — Méiose et brassage : applications', 'Nombres de chromosomes, combinaisons.', 2);

INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES
 (221001,2210,'À la fin de la méiose, on obtient :','4 gamètes haploïdes (n).',1),
 (221002,2210,'Une cellule à 2n = 4 chromosomes donne des gamètes à :','n = 2 chromosomes.',2),
 (221003,2210,'Le crossing-over produit des chromosomes :','Recombinés.',3),
 (221004,2210,'Pour n paires de chromosomes, le brassage interchromosomique donne :','$2^n$ types de gamètes.',4),
 (221005,2210,'Chez l''Homme (2n = 46), le brassage interchromosomique donne :','$2^{23}$ types de gamètes.',5),
 (221006,2210,'Les gamètes recombinés proviennent du brassage :','Intrachromosomique (crossing-over).',6),
 (221007,2210,'Les chromosomes homologues s''apparient en :','Prophase I.',7),
 (221008,2210,'Après la première division, les cellules ont :','n chromosomes à 2 chromatides.',8);

INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
 (2210011,221001,'4 gamètes haploïdes (n)',TRUE,1),(2210012,221001,'2 gamètes diploïdes',FALSE,2),(2210013,221001,'1 cellule 2n',FALSE,3),(2210014,221001,'8 gamètes',FALSE,4),
 (2210021,221002,'n = 2 chromosomes',TRUE,1),(2210022,221002,'n = 4 chromosomes',FALSE,2),(2210023,221002,'2n = 8 chromosomes',FALSE,3),(2210024,221002,'n = 1 chromosome',FALSE,4),
 (2210031,221003,'recombinés',TRUE,1),(2210032,221003,'identiques aux parentaux',FALSE,2),(2210033,221003,'diploïdes',FALSE,3),(2210034,221003,'sans allèles',FALSE,4),
 (2210041,221004,'$2^n$ types de gamètes',TRUE,1),(2210042,221004,'$n$ types',FALSE,2),(2210043,221004,'$2n$ types',FALSE,3),(2210044,221004,'$n^2$ types',FALSE,4),
 (2210051,221005,'$2^{23}$',TRUE,1),(2210052,221005,'$2^{46}$',FALSE,2),(2210053,221005,'$46$',FALSE,3),(2210054,221005,'$23$',FALSE,4),
 (2210061,221006,'intrachromosomique (crossing-over)',TRUE,1),(2210062,221006,'interchromosomique',FALSE,2),(2210063,221006,'de la fécondation',FALSE,3),(2210064,221006,'de la réplication',FALSE,4),
 (2210071,221007,'prophase I',TRUE,1),(2210072,221007,'métaphase II',FALSE,2),(2210073,221007,'anaphase II',FALSE,3),(2210074,221007,'télophase I',FALSE,4),
 (2210081,221008,'n chromosomes à 2 chromatides',TRUE,1),(2210082,221008,'2n chromosomes à 1 chromatide',FALSE,2),(2210083,221008,'n chromosomes à 1 chromatide',FALSE,3),(2210084,221008,'2n chromosomes à 2 chromatides',FALSE,4);
