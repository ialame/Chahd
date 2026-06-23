-- QCM du chapitre SVT « L'expression de l'information génétique ». ids 2207/2208.
SET SESSION sql_mode = CONCAT(@@sql_mode, ',NO_BACKSLASH_ESCAPES');
SET @l := (SELECT id FROM lecon WHERE slug = 'expression-genetique'
           AND matiere_id = (SELECT id FROM matiere WHERE slug = 'svt'));

-- ===== notions (2207) =====
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
 (2207, NULL, @l, 'QCM — Expression génétique : notions', 'Transcription, traduction, code génétique.', 1);

INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES
 (220701,2207,'La transcription se déroule dans :','Le noyau.',1),
 (220702,2207,'La transcription produit :','Une molécule d''ARN messager (ARNm).',2),
 (220703,2207,'Dans l''ARNm, la thymine est remplacée par :','L''uracile (U).',3),
 (220704,2207,'La traduction se déroule dans :','Le cytoplasme (au niveau des ribosomes).',4),
 (220705,2207,'Un codon est constitué de :','3 nucléotides.',5),
 (220706,2207,'Le codon initiateur est :','AUG (Méthionine).',6),
 (220707,2207,'Les codons stop sont :','UAA, UAG et UGA.',7),
 (220708,2207,'Le code génétique est :','Universel et dégénéré.',8);

INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
 (2207011,220701,'le noyau',TRUE,1),(2207012,220701,'le ribosome',FALSE,2),(2207013,220701,'la mitochondrie',FALSE,3),(2207014,220701,'la membrane',FALSE,4),
 (2207021,220702,'l''ARN messager (ARNm)',TRUE,1),(2207022,220702,'une protéine',FALSE,2),(2207023,220702,'de l''ATP',FALSE,3),(2207024,220702,'un lipide',FALSE,4),
 (2207031,220703,'l''uracile (U)',TRUE,1),(2207032,220703,'la guanine (G)',FALSE,2),(2207033,220703,'l''adénine (A)',FALSE,3),(2207034,220703,'la cytosine (C)',FALSE,4),
 (2207041,220704,'le cytoplasme (ribosomes)',TRUE,1),(2207042,220704,'le noyau',FALSE,2),(2207043,220704,'la matrice mitochondriale',FALSE,3),(2207044,220704,'la strie Z',FALSE,4),
 (2207051,220705,'3 nucléotides',TRUE,1),(2207052,220705,'1 nucléotide',FALSE,2),(2207053,220705,'2 nucléotides',FALSE,3),(2207054,220705,'20 nucléotides',FALSE,4),
 (2207061,220706,'AUG',TRUE,1),(2207062,220706,'UAA',FALSE,2),(2207063,220706,'UGA',FALSE,3),(2207064,220706,'GGG',FALSE,4),
 (2207071,220707,'UAA, UAG, UGA',TRUE,1),(2207072,220707,'AUG, GUG, UUG',FALSE,2),(2207073,220707,'AAA, CCC, GGG',FALSE,3),(2207074,220707,'UUU, CCC, AAA',FALSE,4),
 (2207081,220708,'universel et dégénéré',TRUE,1),(2207082,220708,'propre à chaque espèce',FALSE,2),(2207083,220708,'chevauchant',FALSE,3),(2207084,220708,'sans codon stop',FALSE,4);

-- ===== applications (2208) =====
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
 (2208, NULL, @l, 'QCM — Expression génétique : applications', 'Codons, traduction, mutations.', 2);

INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES
 (220801,2208,'Au triplet « TAC » du brin transcrit d''ADN correspond le codon ARNm :','AUG (T→A, A→U, C→G).',1),
 (220802,2208,'Le codon AUG code l''acide aminé :','La méthionine (Met).',2),
 (220803,2208,'À l''adénine (A) de l''ADN correspond, dans l''ARNm :','L''uracile (U).',3),
 (220804,2208,'Une substitution modifie au plus :','Un acide aminé.',4),
 (220805,2208,'Une addition de nucléotide provoque :','Un décalage du cadre de lecture.',5),
 (220806,2208,'L''acide aminé est apporté au ribosome par :','L''ARN de transfert (ARNt).',6),
 (220807,2208,'Un ARNm de 9 nucléotides (sans codon stop) code :','3 acides aminés.',7),
 (220808,2208,'« Code dégénéré » signifie qu''un acide aminé peut être codé par :','Plusieurs codons.',8);

INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
 (2208011,220801,'AUG',TRUE,1),(2208012,220801,'TAC',FALSE,2),(2208013,220801,'ATG',FALSE,3),(2208014,220801,'UAC',FALSE,4),
 (2208021,220802,'la méthionine (Met)',TRUE,1),(2208022,220802,'la leucine (Leu)',FALSE,2),(2208023,220802,'STOP',FALSE,3),(2208024,220802,'la glycine (Gly)',FALSE,4),
 (2208031,220803,'l''uracile (U)',TRUE,1),(2208032,220803,'la thymine (T)',FALSE,2),(2208033,220803,'l''adénine (A)',FALSE,3),(2208034,220803,'la guanine (G)',FALSE,4),
 (2208041,220804,'un acide aminé',TRUE,1),(2208042,220804,'toute la protéine',FALSE,2),(2208043,220804,'le cadre de lecture',FALSE,3),(2208044,220804,'tous les codons',FALSE,4),
 (2208051,220805,'un décalage du cadre de lecture',TRUE,1),(2208052,220805,'aucun effet',FALSE,2),(2208053,220805,'le remplacement d''un seul acide aminé',FALSE,3),(2208054,220805,'la duplication du gène',FALSE,4),
 (2208061,220806,'l''ARN de transfert (ARNt)',TRUE,1),(2208062,220806,'l''ADN polymérase',FALSE,2),(2208063,220806,'le ribosome seul',FALSE,3),(2208064,220806,'l''ATP',FALSE,4),
 (2208071,220807,'3 acides aminés',TRUE,1),(2208072,220807,'9 acides aminés',FALSE,2),(2208073,220807,'1 acide aminé',FALSE,3),(2208074,220807,'27 acides aminés',FALSE,4),
 (2208081,220808,'plusieurs codons',TRUE,1),(2208082,220808,'un seul codon',FALSE,2),(2208083,220808,'aucun codon',FALSE,3),(2208084,220808,'trois bases différentes',FALSE,4);
