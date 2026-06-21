-- QCM du chapitre « Piles et électrolyse » (notions + applications).
SET SESSION sql_mode = CONCAT(@@sql_mode, ',NO_BACKSLASH_ESCAPES');
SET @l := (SELECT id FROM lecon WHERE slug = 'piles-electrolyse'
           AND matiere_id = (SELECT id FROM matiere WHERE slug = 'physique-chimie'));

-- ===== notions (2135) =====
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
 (2135, NULL, @l, 'QCM — Piles et électrolyse : notions', 'Oxydoréduction, pile, électrolyse.', 1);

INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES
 (213501,2135,'Un oxydant est une espèce qui :','Capte des électrons.',1),
 (213502,2135,'Un réducteur est une espèce qui :','Cède des électrons.',2),
 (213503,2135,'Une demi-équation d''oxydoréduction s''écrit :','$Ox + n\,e^{-} \rightleftharpoons Red$.',3),
 (213504,2135,'Dans une pile, l''anode est le siège de :','L''oxydation (pôle négatif).',4),
 (213505,2135,'Dans une pile, la cathode est le siège de :','La réduction (pôle positif).',5),
 (213506,2135,'Une pile met en jeu une transformation :','Spontanée.',6),
 (213507,2135,'La quantité d''électricité vaut :','$Q = I\,t = n(e^{-})\,F$.',7),
 (213508,2135,'La constante de Faraday vaut :','$F = 96\,500~\mathrm{C\cdot mol^{-1}}$.',8);

INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
 (2135011,213501,'capte des électrons',TRUE,1),(2135012,213501,'cède des électrons',FALSE,2),(2135013,213501,'capte des protons',FALSE,3),(2135014,213501,'cède des protons',FALSE,4),
 (2135021,213502,'cède des électrons',TRUE,1),(2135022,213502,'capte des électrons',FALSE,2),(2135023,213502,'cède des protons',FALSE,3),(2135024,213502,'ne réagit pas',FALSE,4),
 (2135031,213503,'$Ox + n\,e^{-} \rightleftharpoons Red$',TRUE,1),(2135032,213503,'$Red + n\,e^{-} \rightleftharpoons Ox$',FALSE,2),(2135033,213503,'$Ox \rightleftharpoons Red + n\,H^{+}$',FALSE,3),(2135034,213503,'$Ox + Red = 0$',FALSE,4),
 (2135041,213504,'l''oxydation (pôle −)',TRUE,1),(2135042,213504,'la réduction (pôle +)',FALSE,2),(2135043,213504,'l''oxydation (pôle +)',FALSE,3),(2135044,213504,'rien',FALSE,4),
 (2135051,213505,'la réduction (pôle +)',TRUE,1),(2135052,213505,'l''oxydation (pôle −)',FALSE,2),(2135053,213505,'la réduction (pôle −)',FALSE,3),(2135054,213505,'l''oxydation (pôle +)',FALSE,4),
 (2135061,213506,'spontanée',TRUE,1),(2135062,213506,'forcée',FALSE,2),(2135063,213506,'impossible',FALSE,3),(2135064,213506,'nucléaire',FALSE,4),
 (2135071,213507,'$I\,t = n(e^{-})\,F$',TRUE,1),(2135072,213507,'$\dfrac{I}{t}$',FALSE,2),(2135073,213507,'$\dfrac{n(e^{-})}{F}$',FALSE,3),(2135074,213507,'$I + t$',FALSE,4),
 (2135081,213508,'$96\,500~\mathrm{C\cdot mol^{-1}}$',TRUE,1),(2135082,213508,'$6{,}02\times10^{23}$',FALSE,2),(2135083,213508,'$9{,}81~\mathrm{N/kg}$',FALSE,3),(2135084,213508,'$8{,}31~\mathrm{J/K/mol}$',FALSE,4);

-- ===== applications (2136) =====
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
 (2136, NULL, @l, 'QCM — Piles et électrolyse : applications', 'Quantité d''électricité, sens du courant.', 2);

INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES
 (213601,2136,'Pour $I = 0{,}5~\mathrm{A}$ pendant $t = 200~\mathrm{s}$, la quantité d''électricité vaut :','$Q = I\,t = 0{,}5\times200 = 100~\mathrm{C}$.',1),
 (213602,2136,'Une charge $Q = 96\,500~\mathrm{C}$ correspond à une quantité d''électrons de :','$n(e^{-}) = \dfrac{Q}{F} = \dfrac{96\,500}{96\,500} = 1~\mathrm{mol}$.',2),
 (213603,2136,'Une électrolyse est une transformation :','Forcée.',3),
 (213604,2136,'Dans le circuit extérieur d''une pile, les électrons circulent :','Du pôle − vers le pôle +.',4),
 (213605,2136,'Une pile cesse de débiter lorsque :','$Q_r = K$ (équilibre atteint).',5),
 (213606,2136,'Une charge $Q = 48\,250~\mathrm{C}$ correspond à une quantité d''électrons de :','$n(e^{-}) = \dfrac{48\,250}{96\,500} = 0{,}5~\mathrm{mol}$.',6),
 (213607,2136,'Lors d''une électrolyse, l''oxydation a lieu :','À l''anode (borne + du générateur).',7),
 (213608,2136,'Pour $I = 2~\mathrm{A}$ pendant $t = 100~\mathrm{s}$, la quantité d''électricité vaut :','$Q = I\,t = 2\times100 = 200~\mathrm{C}$.',8);

INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
 (2136011,213601,'$100~\mathrm{C}$',TRUE,1),(2136012,213601,'$400~\mathrm{C}$',FALSE,2),(2136013,213601,'$0{,}0025~\mathrm{C}$',FALSE,3),(2136014,213601,'$200{,}5~\mathrm{C}$',FALSE,4),
 (2136021,213602,'$1~\mathrm{mol}$',TRUE,1),(2136022,213602,'$96\,500~\mathrm{mol}$',FALSE,2),(2136023,213602,'$0{,}5~\mathrm{mol}$',FALSE,3),(2136024,213602,'$2~\mathrm{mol}$',FALSE,4),
 (2136031,213603,'forcée',TRUE,1),(2136032,213603,'spontanée',FALSE,2),(2136033,213603,'nucléaire',FALSE,3),(2136034,213603,'acide-base',FALSE,4),
 (2136041,213604,'du pôle − vers le pôle +',TRUE,1),(2136042,213604,'du pôle + vers le pôle −',FALSE,2),(2136043,213604,'ils ne circulent pas',FALSE,3),(2136044,213604,'dans les deux sens',FALSE,4),
 (2136051,213605,'$Q_r = K$',TRUE,1),(2136052,213605,'$Q_r = 0$',FALSE,2),(2136053,213605,'$I = 0$ par construction',FALSE,3),(2136054,213605,'jamais',FALSE,4),
 (2136061,213606,'$0{,}5~\mathrm{mol}$',TRUE,1),(2136062,213606,'$1~\mathrm{mol}$',FALSE,2),(2136063,213606,'$2~\mathrm{mol}$',FALSE,3),(2136064,213606,'$0{,}25~\mathrm{mol}$',FALSE,4),
 (2136071,213607,'à l''anode',TRUE,1),(2136072,213607,'à la cathode',FALSE,2),(2136073,213607,'dans la solution',FALSE,3),(2136074,213607,'au générateur',FALSE,4),
 (2136081,213608,'$200~\mathrm{C}$',TRUE,1),(2136082,213608,'$50~\mathrm{C}$',FALSE,2),(2136083,213608,'$0{,}02~\mathrm{C}$',FALSE,3),(2136084,213608,'$102~\mathrm{C}$',FALSE,4);
