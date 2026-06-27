-- STE : QCM des 22 chapitres SI (quiz 6701-6722).
SET SESSION sql_mode = CONCAT(@@sql_mode, ',NO_BACKSLASH_ESCAPES');

-- systeme-monophase
SET @l := (SELECT id FROM lecon WHERE slug = 'systeme-monophase' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'si-ste'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (6701, NULL, @l, 'QCM — Le systeme monophase', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (670101, 6701, 'Un voltmetre en mode alternatif indique $230\ \text{V}$ aux bornes du reseau. Quelle est la valeur maximale $U_{max}$ de cette tension sinusoidale ?', 'Un appareil de mesure indique la valeur efficace $U$. Pour une sinusoide, $U = \dfrac{U_{max}}{\sqrt{2}}$, donc $U_{max} = U\sqrt{2} = 230\sqrt{2} \approx 325\ \text{V}$.', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6701011, 670101, '$U_{max} = 230\sqrt{2} \approx 325\ \text{V}$', TRUE, 1),
  (6701012, 670101, '$U_{max} = 230\ \text{V}$', FALSE, 2),
  (6701013, 670101, '$U_{max} = \dfrac{230}{\sqrt{2}} \approx 163\ \text{V}$', FALSE, 3),
  (6701014, 670101, '$U_{max} = 2 \times 230 = 460\ \text{V}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (670102, 6701, 'Le dephasage est defini par $\varphi = \varphi_u - \varphi_i$. Que peut-on dire d''un circuit pour lequel $\varphi > 0$ ?', '$\varphi = \varphi_u - \varphi_i > 0$ signifie que la phase de la tension est superieure a celle du courant : la tension est en avance, comportement caracteristique d''un circuit inductif (bobine).', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6701021, 670102, 'Le circuit est inductif : la tension est en avance sur le courant', TRUE, 1),
  (6701022, 670102, 'Le circuit est capacitif : la tension est en retard sur le courant', FALSE, 2),
  (6701023, 670102, 'Le circuit est purement resistif : tension et courant sont en phase', FALSE, 3),
  (6701024, 670102, 'Le courant est en avance sur la tension', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (670103, 6701, 'Une bobine parfaite d''inductance $L$ est soumise a une pulsation $\omega$. Quelle est son impedance $Z$ ?', 'L''impedance d''une bobine parfaite vaut $Z = L\omega$ et croit avec la frequence. Le dephasage associe est $\varphi = +\dfrac{\pi}{2}$ (tension en avance de quart de periode sur le courant).', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6701031, 670103, '$Z = L\omega$', TRUE, 1),
  (6701032, 670103, '$Z = \dfrac{1}{L\omega}$', FALSE, 2),
  (6701033, 670103, '$Z = \dfrac{L}{\omega}$', FALSE, 3),
  (6701034, 670103, '$Z = L\omega^2$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (670104, 6701, 'Quelle relation donne la puissance active $P$ reellement consommee par un dipole en monophase ?', 'La puissance active (en watts) est $P = U\,I\cos\varphi$. Le terme $U\,I\sin\varphi$ donne la puissance reactive $Q$ (en VAR) et $U\,I$ la puissance apparente $S$ (en VA).', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6701041, 670104, '$P = U\,I\cos\varphi$', TRUE, 1),
  (6701042, 670104, '$P = U\,I\sin\varphi$', FALSE, 2),
  (6701043, 670104, '$P = U\,I$', FALSE, 3),
  (6701044, 670104, '$P = \dfrac{U\,I}{\cos\varphi}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (670105, 6701, 'Comment les trois puissances $P$, $Q$ et $S$ sont-elles reliees dans le triangle des puissances ?', 'Les puissances forment un triangle rectangle : la puissance apparente $S$ est l''hypotenuse, d''ou $S^2 = P^2 + Q^2$, soit $S = \sqrt{P^2 + Q^2}$. On a aussi $\tan\varphi = \dfrac{Q}{P}$.', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6701051, 670105, '$S^2 = P^2 + Q^2$', TRUE, 1),
  (6701052, 670105, '$S = P + Q$', FALSE, 2),
  (6701053, 670105, '$P^2 = S^2 + Q^2$', FALSE, 3),
  (6701054, 670105, '$S = P \times Q$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (670106, 6701, 'Le facteur de puissance d''une installation est defini par :', 'Le facteur de puissance est $k = \dfrac{P}{S} = \cos\varphi$, compris entre $0$ et $1$. Plus il est proche de $1$, mieux l''energie est exploitee et plus le courant en ligne est faible pour une meme puissance active.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6701061, 670106, '$k = \dfrac{P}{S} = \cos\varphi$', TRUE, 1),
  (6701062, 670106, '$k = \dfrac{S}{P} = \sin\varphi$', FALSE, 2),
  (6701063, 670106, '$k = \dfrac{Q}{P} = \tan\varphi$', FALSE, 3),
  (6701064, 670106, '$k = \dfrac{Q}{S} = \cos\varphi$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (670107, 6701, 'Pour relever le facteur de puissance d''une charge inductive (un moteur), que branche-t-on et comment ?', 'Une charge inductive impose $Q > 0$. On branche un condensateur en parallele : il fournit une puissance reactive negative qui compense en partie $Q$, sans modifier $P$. La capacite vaut $C = \dfrac{P\,(\tan\varphi_1 - \tan\varphi_2)}{U^2\,\omega}$.', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6701071, 670107, 'Un condensateur en parallele sur la charge, qui fournit une puissance reactive negative', TRUE, 1),
  (6701072, 670107, 'Une bobine en serie avec la charge, qui augmente la puissance reactive', FALSE, 2),
  (6701073, 670107, 'Une resistance en parallele, qui augmente la puissance active', FALSE, 3),
  (6701074, 670107, 'Un condensateur en serie, qui augmente la tension d''alimentation', FALSE, 4);

-- systeme-triphase
SET @l := (SELECT id FROM lecon WHERE slug = 'systeme-triphase' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'si-ste'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (6702, NULL, @l, 'QCM — Le systeme triphase', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (670201, 6702, 'Dans un système triphasé équilibré, de quel angle les trois tensions simples sont-elles déphasées les unes par rapport aux autres ?', 'Les trois tensions $v_1$, $v_2$, $v_3$ ont même fréquence et même valeur efficace, et sont décalées de $\dfrac{2\pi}{3} = 120^\circ$, ce qui assure l''équilibre du système.', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6702011, 670201, '$\dfrac{\pi}{2}$ (soit $90^\circ$)', FALSE, 1),
  (6702012, 670201, '$\dfrac{2\pi}{3}$ (soit $120^\circ$)', TRUE, 2),
  (6702013, 670201, '$\pi$ (soit $180^\circ$)', FALSE, 3),
  (6702014, 670201, '$\dfrac{\pi}{3}$ (soit $60^\circ$)', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (670202, 6702, 'Quelle relation lie la tension composée $U$ (entre phases) à la tension simple $V$ (entre phase et neutre) ?', 'La tension composée vaut $U = \sqrt{3}\,V$. Pour le réseau marocain, $V = 230~\text{V}$ donne $U = \sqrt{3}\times 230 \approx 400~\text{V}$.', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6702021, 670202, '$U = 3\,V$', FALSE, 1),
  (6702022, 670202, '$U = \dfrac{V}{\sqrt{3}}$', FALSE, 2),
  (6702023, 670202, '$U = \sqrt{3}\,V$', TRUE, 3),
  (6702024, 670202, '$U = V$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (670203, 6702, 'Dans un récepteur triphasé couplé en étoile, quelle relation existe entre le courant de ligne $I$ et le courant de phase $J$ ?', 'En couplage étoile, le courant de ligne traverse directement chaque élément : $I = J$. C''est la tension qui change, chaque élément étant soumis à la tension simple $V = \dfrac{U}{\sqrt{3}}$.', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6702031, 670203, '$I = J$', TRUE, 1),
  (6702032, 670203, '$I = \sqrt{3}\,J$', FALSE, 2),
  (6702033, 670203, '$I = 3\,J$', FALSE, 3),
  (6702034, 670203, '$I = \dfrac{J}{\sqrt{3}}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (670204, 6702, 'Dans un récepteur triphasé couplé en triangle, quelle relation lie le courant de ligne $I$ au courant de phase $J$ ?', 'En couplage triangle, chaque élément est soumis à la tension composée $U$, et le courant de ligne vaut $I = \sqrt{3}\,J$. Il n''y a pas de fil neutre.', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6702041, 670204, '$I = J$', FALSE, 1),
  (6702042, 670204, '$I = \sqrt{3}\,J$', TRUE, 2),
  (6702043, 670204, '$I = \dfrac{J}{\sqrt{3}}$', FALSE, 3),
  (6702044, 670204, '$J = \sqrt{3}\,I$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (670205, 6702, 'Quelle est l''expression de la puissance active $P$ consommée par un récepteur triphasé équilibré, en fonction des grandeurs de ligne ?', 'Quel que soit le couplage, $P = \sqrt{3}\,U I \cos\varphi$ où $U$ est la tension composée et $I$ le courant de ligne. La puissance réactive est $Q = \sqrt{3}\,U I \sin\varphi$ et l''apparente $S = \sqrt{3}\,U I$.', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6702051, 670205, '$P = U I \cos\varphi$', FALSE, 1),
  (6702052, 670205, '$P = \sqrt{3}\,U I \sin\varphi$', FALSE, 2),
  (6702053, 670205, '$P = 3\,U I \cos\varphi$', FALSE, 3),
  (6702054, 670205, '$P = \sqrt{3}\,U I \cos\varphi$', TRUE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (670206, 6702, 'Un moteur triphasé est alimenté sous $U = 400~\text{V}$ et absorbe un courant de ligne $I = 10~\text{A}$ avec $\cos\varphi = 0{,}8$. Quelle est sa puissance active ?', '$P = \sqrt{3}\,U I \cos\varphi = \sqrt{3}\times 400 \times 10 \times 0{,}8 \approx 5542~\text{W} \approx 5{,}5~\text{kW}$.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6702061, 670206, '$P \approx 5{,}5~\text{kW}$', TRUE, 1),
  (6702062, 670206, '$P \approx 3{,}2~\text{kW}$', FALSE, 2),
  (6702063, 670206, '$P \approx 6{,}9~\text{kW}$', FALSE, 3),
  (6702064, 670206, '$P \approx 8{,}0~\text{kW}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (670207, 6702, 'Sur le réseau triphasé marocain, la tension composée vaut $U = 400~\text{V}$. Quelle est la valeur efficace de la tension simple $V$ ?', 'On a $V = \dfrac{U}{\sqrt{3}} = \dfrac{400}{\sqrt{3}} \approx 230~\text{V}$, valeur efficace de la tension entre phase et neutre utilisée pour l''éclairage domestique.', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6702071, 670207, '$V \approx 400~\text{V}$', FALSE, 1),
  (6702072, 670207, '$V \approx 692~\text{V}$', FALSE, 2),
  (6702073, 670207, '$V \approx 230~\text{V}$', TRUE, 3),
  (6702074, 670207, '$V \approx 133~\text{V}$', FALSE, 4);

-- reseau-electrique
SET @l := (SELECT id FROM lecon WHERE slug = 'reseau-electrique' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'si-ste'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (6703, NULL, @l, 'QCM — Le reseau electrique national', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (670301, 6703, 'Dans quel ordre l''energie electrique parcourt-elle le reseau national ?', 'La chaine de l''energie comporte trois maillons : la production dans les centrales, le transport sur de longues distances en tres haute tension (THT), puis la distribution qui abaisse la tension pour la livrer aux abonnes.', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6703011, 670301, 'Production $\rightarrow$ transport $\rightarrow$ distribution', TRUE, 1),
  (6703012, 670301, 'Distribution $\rightarrow$ transport $\rightarrow$ production', FALSE, 2),
  (6703013, 670301, 'Transport $\rightarrow$ production $\rightarrow$ distribution', FALSE, 3),
  (6703014, 670301, 'Production $\rightarrow$ distribution $\rightarrow$ transport', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (670302, 6703, 'Pourquoi transporte-t-on l''energie electrique sous une tres haute tension ?', 'Pour une puissance $P$ donnee, augmenter la tension $U$ diminue l''intensite $I=P/U$. Comme les pertes Joule s''ecrivent $P_J=R\,I^2$, reduire $I$ reduit fortement les pertes, ce qui justifie le transport en THT.', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6703021, 670302, 'Pour reduire l''intensite du courant et donc les pertes par effet Joule dans les lignes', TRUE, 1),
  (6703022, 670302, 'Pour augmenter la puissance produite par les centrales', FALSE, 2),
  (6703023, 670302, 'Pour pouvoir utiliser des cables de plus grande section', FALSE, 3),
  (6703024, 670302, 'Parce que les appareils domestiques fonctionnent en THT', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (670303, 6703, 'Quelle est l''expression des pertes par effet Joule dans un conducteur de resistance $R$ parcouru par un courant d''intensite $I$ ?', 'Les pertes Joule dans un conducteur valent $P_J=R\,I^2$. En remplacant $I=P/U$, on obtient aussi $P_J=R\dfrac{P^2}{U^2}$, qui montre l''interet d''une tension elevee.', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6703031, 670303, '$P_J = R\,I^2$', TRUE, 1),
  (6703032, 670303, '$P_J = R\,I$', FALSE, 2),
  (6703033, 670303, '$P_J = R^2\,I$', FALSE, 3),
  (6703034, 670303, '$P_J = I^2/R$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (670304, 6703, 'Quel est le role d''un poste elevateur place a la sortie d''une centrale ?', 'L''alternateur produit une tension de quelques kV. Le poste elevateur, equipe de transformateurs, eleve cette tension au niveau THT (225 ou 400 kV) pour le transport a longue distance avec un minimum de pertes.', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6703041, 670304, 'Elever la tension produite jusqu''au niveau THT du reseau de transport', TRUE, 1),
  (6703042, 670304, 'Abaisser la tension jusqu''a 230 V pour les abonnes', FALSE, 2),
  (6703043, 670304, 'Transformer le courant alternatif en courant continu', FALSE, 3),
  (6703044, 670304, 'Stocker l''energie produite par la centrale', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (670305, 6703, 'Quelles sont les valeurs de tension du reseau de transport THT au Maroc (ONEE) ?', 'Le reseau de transport (THT, categorie HTB) du Maroc utilise principalement les tensions de $400\ \text{kV}$ et $225\ \text{kV}$. Le $60\ \text{kV}$ correspond a la repartition (HT) et le $20\ \text{kV}$ a la distribution moyenne tension (HTA).', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6703051, 670305, '$400\ \text{kV}$ et $225\ \text{kV}$', TRUE, 1),
  (6703052, 670305, '$230\ \text{V}$ et $400\ \text{V}$', FALSE, 2),
  (6703053, 670305, '$20\ \text{kV}$ et $60\ \text{kV}$', FALSE, 3),
  (6703054, 670305, '$5\ \text{kV}$ et $11\ \text{kV}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (670306, 6703, 'Sous quelle tension l''energie est-elle finalement livree aux abonnes domestiques en basse tension (BT) ?', 'La distribution basse tension (BTA) livre $230\ \text{V}$ entre une phase et le neutre et $400\ \text{V}$ entre deux phases ($U=\sqrt{3}\times 230\approx 400\ \text{V}$), valeurs des installations domestiques.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6703061, 670306, '$230\ \text{V}$ entre phase et neutre, $400\ \text{V}$ entre phases', TRUE, 1),
  (6703062, 670306, '$20\ \text{kV}$ entre phases', FALSE, 2),
  (6703063, 670306, '$225\ \text{kV}$ entre phases', FALSE, 3),
  (6703064, 670306, '$1000\ \text{V}$ entre phase et neutre', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (670307, 6703, 'Pour une puissance transportee constante, par combien sont divisees les pertes Joule en ligne si l''on multiplie la tension de transport par $10$ ?', 'Les pertes en ligne valent $P_J=R\dfrac{P^2}{U^2}$. A puissance $P$ et resistance $R$ constantes, $P_J$ varie en $1/U^2$ : multiplier $U$ par $10$ divise $U^2$ par $100$, donc les pertes par $100$.', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6703071, 670307, 'Par $100$', TRUE, 1),
  (6703072, 670307, 'Par $10$', FALSE, 2),
  (6703073, 670307, 'Par $20$', FALSE, 3),
  (6703074, 670307, 'Par $1000$', FALSE, 4);

-- transformateurs
SET @l := (SELECT id FROM lecon WHERE slug = 'transformateurs' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'si-ste'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (6704, NULL, @l, 'QCM — Les transformateurs', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (670401, 6704, 'Le rapport de transformation $m$ d''un transformateur monophasé s''exprime par :', 'Par définition $m = \dfrac{N_2}{N_1}$, et ce rapport relie aussi les tensions ($\dfrac{U_2}{U_1}$) et, en sens inverse, les courants ($\dfrac{I_1}{I_2}$).', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6704011, 670401, '$m = \dfrac{N_2}{N_1} = \dfrac{U_2}{U_1} = \dfrac{I_1}{I_2}$', TRUE, 1),
  (6704012, 670401, '$m = \dfrac{N_1}{N_2} = \dfrac{U_2}{U_1} = \dfrac{I_2}{I_1}$', FALSE, 2),
  (6704013, 670401, '$m = \dfrac{N_2}{N_1} = \dfrac{U_1}{U_2} = \dfrac{I_2}{I_1}$', FALSE, 3),
  (6704014, 670401, '$m = N_1 \times N_2 = U_1 \times U_2$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (670402, 6704, 'Un transformateur de rapport $m > 1$ est un transformateur :', 'Comme $U_2 = m\,U_1$, si $m > 1$ alors $U_2 > U_1$ : la tension est élevée, le transformateur est élévateur.', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6704021, 670402, 'élévateur de tension ($U_2 > U_1$)', TRUE, 1),
  (6704022, 670402, 'abaisseur de tension ($U_2 < U_1$)', FALSE, 2),
  (6704023, 670402, 'd''isolement ($U_2 = U_1$)', FALSE, 3),
  (6704024, 670402, 'qui ne fonctionne qu''en courant continu', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (670403, 6704, 'Pour un transformateur abaisseur ($m < 1$), comment varie le courant secondaire $I_2$ par rapport au courant primaire $I_1$ ?', 'On a $\dfrac{I_1}{I_2} = m$, donc $I_2 = \dfrac{I_1}{m}$. Pour $m < 1$, $I_2 > I_1$ : abaisser la tension augmente le courant disponible (la puissance étant conservée).', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6704031, 670403, '$I_2 > I_1$ : le courant disponible augmente', TRUE, 1),
  (6704032, 670403, '$I_2 < I_1$ : le courant disponible diminue', FALSE, 2),
  (6704033, 670403, '$I_2 = I_1$ : le courant est inchangé', FALSE, 3),
  (6704034, 670403, '$I_2 = 0$ : il n''y a pas de courant au secondaire', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (670404, 6704, 'Les pertes fer d''un transformateur :', 'Les pertes fer (hystérésis et courants de Foucault) ne dépendent que de la tension et de la fréquence ; à tension nominale fixée, elles sont constantes. Ce sont les pertes cuivre $p_{cu} = R_1 I_1^2 + R_2 I_2^2$ qui varient avec la charge.', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6704041, 670404, 'sont pratiquement constantes quelle que soit la charge', TRUE, 1),
  (6704042, 670404, 'augmentent comme le carré du courant de charge', FALSE, 2),
  (6704043, 670404, 'sont nulles à vide et maximales en charge', FALSE, 3),
  (6704044, 670404, 'ne dépendent que de la résistance des enroulements', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (670405, 6704, 'L''essai à vide d''un transformateur (secondaire ouvert, $I_2 = 0$) sous tension nominale permet de mesurer :', 'À vide, le courant primaire est très faible donc les pertes cuivre sont négligeables : la puissance mesurée $P_{1v}$ correspond aux pertes fer. L''essai donne aussi $m = \dfrac{U_{2v}}{U_1}$.', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6704051, 670405, 'les pertes fer $p_{fer}$', TRUE, 1),
  (6704052, 670405, 'les pertes cuivre $p_{cu}$', FALSE, 2),
  (6704053, 670405, 'la puissance utile $P_2$ délivrée à la charge', FALSE, 3),
  (6704054, 670405, 'la résistance $R_2$ de l''enroulement secondaire', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (670406, 6704, 'L''essai en court-circuit (secondaire court-circuité, sous tension primaire réduite réglée pour obtenir le courant nominal) permet de mesurer :', 'La tension primaire étant très réduite, les pertes fer sont négligeables : la puissance mesurée $P_{1cc}$ correspond aux pertes cuivre nominales.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6704061, 670406, 'les pertes cuivre $p_{cu}$', TRUE, 1),
  (6704062, 670406, 'les pertes fer $p_{fer}$', FALSE, 2),
  (6704063, 670406, 'le rapport de transformation $m$', FALSE, 3),
  (6704064, 670406, 'le rendement maximal $\eta_{max}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (670407, 6704, 'Un transformateur fournit $P_2 = 1500\ \text{W}$ à sa charge. Les essais donnent $p_{fer} = 30\ \text{W}$ et $p_{cu} = 45\ \text{W}$. Son rendement vaut :', '$\eta = \dfrac{P_2}{P_2 + p_{fer} + p_{cu}} = \dfrac{1500}{1500 + 30 + 45} = \dfrac{1500}{1575} \approx 0{,}952$, soit $95{,}2\ \%$. Le rendement est toujours inférieur à $1$.', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6704071, 670407, '$\eta \approx 95{,}2\ \%$', TRUE, 1),
  (6704072, 670407, '$\eta \approx 105\ \%$', FALSE, 2),
  (6704073, 670407, '$\eta \approx 50\ \%$', FALSE, 3),
  (6704074, 670407, '$\eta \approx 75\ \%$', FALSE, 4);

-- protection-electrique
SET @l := (SELECT id FROM lecon WHERE slug = 'protection-electrique' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'si-ste'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (6705, NULL, @l, 'QCM — Protection des personnes et des biens', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (670501, 6705, 'Pour le corps humain, quel paramètre est réellement responsable de la gravité d''un choc électrique ?', 'Ce ne sont pas les volts qui tuent, mais le couple intensité–temps $(I, t)$. Le courant qui traverse le corps vaut $I = \dfrac{U_c}{R_h}$ ; sa valeur et la durée pendant laquelle il circule déterminent la gravité des lésions.', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6705011, 670501, 'L''intensité du courant qui traverse le corps et sa durée', TRUE, 1),
  (6705012, 670501, 'La tension du réseau exprimée en volts uniquement', FALSE, 2),
  (6705013, 670501, 'La fréquence du courant exprimée en hertz', FALSE, 3),
  (6705014, 670501, 'La puissance apparente de l''installation en $\text{VA}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (670502, 6705, 'À partir de quelle intensité (courant alternatif $50\ \text{Hz}$) atteint-on le seuil de non-lâcher, où la personne ne peut plus lâcher le conducteur ?', 'Le seuil de perception est à $0{,}5\ \text{mA}$. À $10\ \text{mA}$, les muscles se tétanisent : c''est le seuil de non-lâcher. La paralysie respiratoire apparaît vers $30\ \text{mA}$ et la fibrillation ventriculaire vers $75\ \text{mA}$.', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6705021, 670502, '$0{,}5\ \text{mA}$', FALSE, 1),
  (6705022, 670502, '$10\ \text{mA}$', TRUE, 2),
  (6705023, 670502, '$75\ \text{mA}$', FALSE, 3),
  (6705024, 670502, '$1\ \text{A}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (670503, 6705, 'Quelle sensibilité $I_{\Delta n}$ doit avoir un dispositif différentiel (DDR) destiné à la protection des personnes ?', 'La haute sensibilité $I_{\Delta n} = 30\ \text{mA}$ est retenue comme seuil de sécurité pour protéger les personnes (prises, salles d''eau). Les sensibilités de $300\ \text{mA}$ ou plus servent surtout à la protection contre les risques d''incendie.', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6705031, 670503, '$300\ \text{mA}$', FALSE, 1),
  (6705032, 670503, '$30\ \text{mA}$', TRUE, 2),
  (6705033, 670503, '$3\ \text{A}$', FALSE, 3),
  (6705034, 670503, '$500\ \text{mA}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (670504, 6705, 'Un disjoncteur différentiel surveille la somme des courants : en l''absence de défaut, quelle relation lie le courant de phase $I_{ph}$ et le courant de neutre $I_n$ ?', 'En fonctionnement normal, tout le courant qui part par la phase revient par le neutre : $I_{ph} = I_n$ et le courant différentiel $I_\Delta = I_{ph} - I_n$ est nul. En cas de fuite vers la terre, $I_{ph} \neq I_n$ : le flux résiduel actionne le relais et ouvre les contacts.', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6705041, 670504, '$I_{ph} = I_n$, le courant qui part revient intégralement', TRUE, 1),
  (6705042, 670504, '$I_{ph} = 2\,I_n$', FALSE, 2),
  (6705043, 670504, '$I_{ph} + I_n = 30\ \text{mA}$ en permanence', FALSE, 3),
  (6705044, 670504, '$I_{ph} = 0$ tant qu''il n''y a pas de défaut', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (670505, 6705, 'Quel régime de neutre est utilisé dans les installations domestiques, avec protection assurée par le DDR ?', 'En régime TT, le neutre est relié à la Terre et les masses à la Terre par une prise distincte ; la protection est assurée par le DDR. Le TN traite le défaut comme un court-circuit (disjoncteur/fusible) et l''IT, à neutre isolé, assure la continuité de service (hôpitaux, industrie) avec un contrôleur permanent d''isolement.', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6705051, 670505, 'Le régime IT', FALSE, 1),
  (6705052, 670505, 'Le régime TN', FALSE, 2),
  (6705053, 670505, 'Le régime TT', TRUE, 3),
  (6705054, 670505, 'Le régime TBTS', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (670506, 6705, 'Que caractérise un appareil de classe II (double isolation, symbole d''un carré dans un carré) ?', 'La classe II possède une double isolation (ou isolation renforcée) : aucune liaison à la terre n''est nécessaire. C''est la solution courante pour l''outillage portatif. La classe I exige une borne de terre, la classe III utilise la TBTS ($\leq 50\ \text{V}$) et la classe 0 (sans terre) est interdite dans les installations modernes.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6705061, 670506, 'Une isolation principale renforcée ne nécessitant aucune liaison à la terre', TRUE, 1),
  (6705062, 670506, 'Une alimentation obligatoire en très basse tension de sécurité', FALSE, 2),
  (6705063, 670506, 'Une isolation principale seule, sans borne de terre, autorisée partout', FALSE, 3),
  (6705064, 670506, 'Une masse métallique obligatoirement reliée au conducteur PE', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (670507, 6705, 'Une personne touche une masse portée à la tension de contact $U_c = 230\ \text{V}$ ; la résistance de son corps vaut $R_h = 2000\ \Omega$. Quelle est l''intensité qui la traverse, et est-elle dangereuse ?', 'La loi d''Ohm donne $I = \dfrac{U_c}{R_h} = \dfrac{230}{2000} = 0{,}115\ \text{A} = 115\ \text{mA}$. Cette valeur dépasse le seuil de fibrillation ventriculaire ($75\ \text{mA}$) : le contact est mortel s''il n''est pas coupé en quelques dizaines de millisecondes par un différentiel.', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6705071, 670507, '$I = 115\ \text{mA}$, largement au-dessus du seuil de fibrillation : danger mortel', TRUE, 1),
  (6705072, 670507, '$I = 11{,}5\ \text{mA}$, sous le seuil de paralysie : sans danger', FALSE, 2),
  (6705073, 670507, '$I = 1{,}15\ \text{A}$, mais sans danger car bref', FALSE, 3),
  (6705074, 670507, '$I = 460\ \text{kA}$, valeur d''un court-circuit', FALSE, 4);

-- convertisseurs-statiques
SET @l := (SELECT id FROM lecon WHERE slug = 'convertisseurs-statiques' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'si-ste'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (6706, NULL, @l, 'QCM — Les convertisseurs statiques', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (670601, 6706, 'Quel convertisseur statique transforme une tension alternative en une tension continue ($AC \rightarrow DC$) ?', 'Le redresseur réalise la conversion $AC \rightarrow DC$. L''onduleur fait l''inverse ($DC \rightarrow AC$), le hacheur convertit $DC \rightarrow DC$ et le gradateur $AC \rightarrow AC$.', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6706011, 670601, 'Le redresseur', TRUE, 1),
  (6706012, 670601, 'L''onduleur', FALSE, 2),
  (6706013, 670601, 'Le gradateur', FALSE, 3),
  (6706014, 670601, 'Le hacheur', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (670602, 6706, 'Pour un pont de Graetz (redressement double alternance), la valeur moyenne de la tension redressée vaut :', 'Le pont de Graetz redresse les deux alternances : $U_{moy} = \dfrac{2\,U_{max}}{\pi} \approx 0{,}637\,U_{max}$, soit le double du redressement simple alternance $\dfrac{U_{max}}{\pi}$.', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6706021, 670602, '$U_{moy} = \dfrac{2\,U_{max}}{\pi}$', TRUE, 1),
  (6706022, 670602, '$U_{moy} = \dfrac{U_{max}}{\pi}$', FALSE, 2),
  (6706023, 670602, '$U_{moy} = \dfrac{U_{max}}{2}$', FALSE, 3),
  (6706024, 670602, '$U_{moy} = U_{max}\sqrt{2}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (670603, 6706, 'Un pont de Graetz est alimenté par le réseau $u(t) = 311\sin(\omega t)$ (donc $U_{max} \approx 311$ V). La valeur moyenne de la tension redressée est environ :', '$U_{moy} = \dfrac{2\,U_{max}}{\pi} = \dfrac{2 \times 311}{\pi} \approx 198$ V.', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6706031, 670603, '$198$ V', TRUE, 1),
  (6706032, 670603, '$99$ V', FALSE, 2),
  (6706033, 670603, '$311$ V', FALSE, 3),
  (6706034, 670603, '$220$ V', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (670604, 6706, 'Pour un hacheur série, la tension moyenne de sortie en fonction de la tension d''entrée $U$ et du rapport cyclique $\alpha$ est :', 'Pendant $t_{on} = \alpha T$ la charge reçoit $U$, puis $0$ le reste de la période : la valeur moyenne est $U_{moy} = \alpha\,U$, réglable de $0$ à $U$ quand $\alpha$ varie de $0$ à $1$.', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6706041, 670604, '$U_{moy} = \alpha\, U$', TRUE, 1),
  (6706042, 670604, '$U_{moy} = \dfrac{U}{\alpha}$', FALSE, 2),
  (6706043, 670604, '$U_{moy} = (1-\alpha)\, U$', FALSE, 3),
  (6706044, 670604, '$U_{moy} = \alpha^2\, U$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (670605, 6706, 'Un hacheur série alimenté sous $U = 60$ V fonctionne avec un rapport cyclique $\alpha = 0{,}4$. La tension moyenne aux bornes de la charge vaut :', '$U_{moy} = \alpha\,U = 0{,}4 \times 60 = 24$ V.', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6706051, 670605, '$24$ V', TRUE, 1),
  (6706052, 670605, '$36$ V', FALSE, 2),
  (6706053, 670605, '$150$ V', FALSE, 3),
  (6706054, 670605, '$60$ V', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (670606, 6706, 'Quel convertisseur transforme une tension continue en une tension alternative de fréquence réglable ($DC \rightarrow AC$) ?', 'L''onduleur réalise la conversion $DC \rightarrow AC$ : à partir d''une source continue il crée une tension alternative dont on fixe librement la fréquence (commande en créneaux ou MLI pour s''approcher d''une sinusoïde).', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6706061, 670606, 'L''onduleur', TRUE, 1),
  (6706062, 670606, 'Le redresseur', FALSE, 2),
  (6706063, 670606, 'Le hacheur série', FALSE, 3),
  (6706064, 670606, 'Le gradateur', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (670607, 6706, 'À propos du gradateur, quelle affirmation est correcte ?', 'Le gradateur ($AC \rightarrow AC$) garde la même fréquence que le réseau et n''agit que sur la valeur efficace, en retardant l''amorçage des thyristors d''un angle de retard $\theta$. C''est l''onduleur, lui, qui fixe la fréquence.', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6706071, 670607, 'Il conserve la fréquence du réseau et règle la valeur efficace par l''angle de retard $\theta$', TRUE, 1),
  (6706072, 670607, 'Il convertit le continu en alternatif', FALSE, 2),
  (6706073, 670607, 'Il fournit une tension de sortie continue', FALSE, 3),
  (6706074, 670607, 'Il modifie la fréquence de la tension de sortie', FALSE, 4);

-- variateurs-vitesse
SET @l := (SELECT id FROM lecon WHERE slug = 'variateurs-vitesse' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'si-ste'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (6707, NULL, @l, 'QCM — Les variateurs de vitesse', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (670701, 6707, 'Quel est le rôle d''un variateur de vitesse industriel ?', 'Un variateur de vitesse est un convertisseur électronique de puissance qui règle de façon continue la vitesse de rotation en agissant sur la tension (MCC) ou la fréquence (asynchrone) d''alimentation du moteur.', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6707011, 670701, 'Régler de façon continue la vitesse d''un moteur en agissant sur ses grandeurs électriques d''entrée', TRUE, 1),
  (6707012, 670701, 'Transformer une énergie mécanique de rotation en énergie électrique', FALSE, 2),
  (6707013, 670701, 'Protéger uniquement le moteur contre les courts-circuits', FALSE, 3),
  (6707014, 670701, 'Augmenter la puissance nominale du moteur au-delà de sa valeur de plaque', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (670702, 6707, 'Un hacheur série alimente un moteur à courant continu sous une tension d''entrée $U_0 = 240\ \text{V}$ avec un rapport cyclique $\alpha = 0{,}75$. La tension moyenne d''induit vaut :', 'Pour un hacheur série, $U_{moy} = \alpha\,U_0 = 0{,}75 \times 240 = 180\ \text{V}$.', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6707021, 670702, '$U_{moy} = 180\ \text{V}$', TRUE, 1),
  (6707022, 670702, '$U_{moy} = 320\ \text{V}$', FALSE, 2),
  (6707023, 670702, '$U_{moy} = 240\ \text{V}$', FALSE, 3),
  (6707024, 670702, '$U_{moy} = 60\ \text{V}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (670703, 6707, 'Pour faire varier la vitesse d''un moteur asynchrone triphasé dont $n = \dfrac{60\,f}{p}\,(1-g)$, on agit principalement sur :', 'Le nombre de paires de pôles $p$ est fixé par construction et le glissement $g$ reste faible. Le seul moyen pratique d''agir sur la vitesse est de faire varier la fréquence $f$, rôle de l''onduleur du variateur.', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6707031, 670703, 'La fréquence $f$ des tensions d''alimentation', TRUE, 1),
  (6707032, 670703, 'Le nombre de paires de pôles $p$, modifié en marche', FALSE, 2),
  (6707033, 670703, 'Le glissement $g$, en bloquant le rotor', FALSE, 3),
  (6707034, 670703, 'La résistance des balais du collecteur', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (670704, 6707, 'Lorsqu''on diminue la fréquence d''alimentation d''un moteur asynchrone, pourquoi maintient-on le rapport $\dfrac{U}{f}$ constant ?', 'La commande en $U/f$ constant maintient le flux constant : si l''on baissait $f$ sans baisser $U$, le flux augmenterait et saturerait le circuit magnétique. Elle assure aussi un couple disponible quasi constant.', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6707041, 670704, 'Pour conserver un flux magnétique constant et éviter de saturer le circuit magnétique', TRUE, 1),
  (6707042, 670704, 'Pour augmenter le glissement et donc la vitesse', FALSE, 2),
  (6707043, 670704, 'Pour supprimer totalement le courant dans le stator', FALSE, 3),
  (6707044, 670704, 'Pour transformer le moteur asynchrone en moteur à courant continu', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (670705, 6707, 'Quelle est la structure correcte d''un variateur de fréquence, du réseau vers le moteur ?', 'Le redresseur transforme l''alternatif du réseau en continu, le filtre lisse cette tension (bus continu), puis l''onduleur MLI recrée un système triphasé d''amplitude et de fréquence réglables alimentant le moteur.', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6707051, 670705, 'Réseau → Redresseur → Filtre (bus continu) → Onduleur MLI → Moteur', TRUE, 1),
  (6707052, 670705, 'Réseau → Onduleur → Filtre → Redresseur → Moteur', FALSE, 2),
  (6707053, 670705, 'Réseau → Hacheur → Transformateur → Moteur', FALSE, 3),
  (6707054, 670705, 'Réseau → Onduleur MLI → Redresseur → Moteur', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (670706, 6707, 'Dans un variateur de fréquence, l''onduleur est un convertisseur :', 'L''onduleur transforme la tension continue du bus en un système de tensions alternatives triphasées dont on règle l''amplitude et la fréquence ; la commande MLI permet d''obtenir des courants quasi sinusoïdaux.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6707061, 670706, 'Continu → alternatif, à amplitude et fréquence réglables', TRUE, 1),
  (6707062, 670706, 'Alternatif → continu fixe', FALSE, 2),
  (6707063, 670706, 'Continu → continu (hacheur)', FALSE, 3),
  (6707064, 670706, 'Alternatif → alternatif à fréquence imposée par le réseau', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (670707, 6707, 'Un ascenseur doit entraîner et freiner sa charge dans les deux sens de rotation. Quel type de variateur faut-il choisir ?', 'Dans les quadrants 2 et 4, le couple s''oppose à la vitesse : la machine freine et fonctionne en génératrice. Un palan ou ascenseur, qui doit freiner et descendre des charges dans les deux sens, exige un variateur quatre quadrants.', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6707071, 670707, 'Un variateur quatre quadrants (réversible)', TRUE, 1),
  (6707072, 670707, 'Un variateur un seul quadrant', FALSE, 2),
  (6707073, 670707, 'Un simple hacheur série sans freinage', FALSE, 3),
  (6707074, 670707, 'Un transformateur abaisseur de tension', FALSE, 4);

-- machine-synchrone
SET @l := (SELECT id FROM lecon WHERE slug = 'machine-synchrone' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'si-ste'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (6708, NULL, @l, 'QCM — La machine synchrone triphasee', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (670801, 6708, 'Dans une machine synchrone triphasée, comment appelle-t-on la partie tournante qui crée le champ magnétique ?', 'Le rotor est la partie tournante : il porte les $p$ paires de pôles et crée le champ magnétique, on l''appelle l''inducteur. Le stator fixe, siège des f.é.m. induites, est l''induit.', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6708011, 670801, 'Le stator, appelé induit', FALSE, 1),
  (6708012, 670801, 'Le rotor, appelé inducteur', TRUE, 2),
  (6708013, 670801, 'L''entrefer', FALSE, 3),
  (6708014, 670801, 'Le collecteur', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (670802, 6708, 'Un alternateur possède $p = 4$ paires de pôles et tourne à $n = 25\ \text{tr/s}$. Quelle est la fréquence des f.é.m. produites ?', 'La fréquence vaut $f = p \cdot n = 4 \times 25 = 100\ \text{Hz}$, avec $n$ exprimée en tours par seconde.', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6708021, 670802, '$f = 100\ \text{Hz}$', TRUE, 1),
  (6708022, 670802, '$f = 50\ \text{Hz}$', FALSE, 2),
  (6708023, 670802, '$f = 25\ \text{Hz}$', FALSE, 3),
  (6708024, 670802, '$f = 6{,}25\ \text{Hz}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (670803, 6708, 'Un moteur synchrone à $p = 2$ paires de pôles est alimenté par le réseau de fréquence $f = 50\ \text{Hz}$. Quelle est sa vitesse de synchronisme en tr/min ?', 'La vitesse de synchronisme en tr/s vaut $n_s = \dfrac{f}{p} = \dfrac{50}{2} = 25\ \text{tr/s}$, soit $N_s = 60\,n_s = 1500\ \text{tr/min}$.', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6708031, 670803, '$N_s = 3000\ \text{tr/min}$', FALSE, 1),
  (6708032, 670803, '$N_s = 1500\ \text{tr/min}$', TRUE, 2),
  (6708033, 670803, '$N_s = 1000\ \text{tr/min}$', FALSE, 3),
  (6708034, 670803, '$N_s = 750\ \text{tr/min}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (670804, 6708, 'Les trois f.é.m. délivrées par les enroulements du stator d''un alternateur sont :', 'Les trois enroulements étant décalés de $120°$ dans l''espace, les trois f.é.m. induites forment un système triphasé équilibré, décalé de $120°$ dans le temps.', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6708041, 670804, 'en phase (décalées de $0°$)', FALSE, 1),
  (6708042, 670804, 'décalées de $90°$ dans le temps', FALSE, 2),
  (6708043, 670804, 'décalées de $120°$ dans le temps', TRUE, 3),
  (6708044, 670804, 'décalées de $180°$ dans le temps', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (670805, 6708, 'Pour un moteur synchrone en charge, laquelle de ces affirmations est correcte ?', 'Contrairement au moteur asynchrone, le moteur synchrone ne présente pas de glissement : sa vitesse est imposée par $n_s = f/p$. Il ne démarre cependant pas seul et nécessite un dispositif de lancement.', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6708051, 670805, 'Sa vitesse diminue quand la charge augmente (glissement)', FALSE, 1),
  (6708052, 670805, 'Sa vitesse reste rigoureusement égale à $n_s$ tant qu''il n''y a pas décrochage', TRUE, 2),
  (6708053, 670805, 'Sa vitesse dépend uniquement du couple résistant', FALSE, 3),
  (6708054, 670805, 'Il démarre toujours seul sur le réseau', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (670806, 6708, 'Dans le modèle équivalent d''une phase de la machine synchrone, la f.é.m. à vide $\underline{E}$, la tension $\underline{V}$ et le courant $\underline{I}$ sont liés par :', 'Le modèle d''une phase est une f.é.m. $\underline{E}$ en série avec la résistance $R$ et la réactance synchrone $X_s$ : $\underline{E} = \underline{V} + (R + jX_s)\,\underline{I}$. Comme $R \ll X_s$, on écrit souvent $\underline{E} \approx \underline{V} + jX_s\,\underline{I}$.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6708061, 670806, '$\underline{E} = \underline{V} + (R + jX_s)\,\underline{I}$', TRUE, 1),
  (6708062, 670806, '$\underline{E} = \underline{V} \times (R + jX_s)\,\underline{I}$', FALSE, 2),
  (6708063, 670806, '$\underline{V} = \underline{E} + (R + jX_s)\,\underline{I}$', FALSE, 3),
  (6708064, 670806, '$\underline{E} = \underline{V} - R\,\underline{I}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (670807, 6708, 'La puissance électrique absorbée par un moteur synchrone alimenté en triphasé sous la tension composée $U$ et le courant en ligne $I$ s''écrit :', 'En triphasé équilibré, la puissance active absorbée vaut $P_a = \sqrt{3}\,U\,I\cos\varphi$, où $U$ est la tension entre phases et $I$ le courant en ligne.', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6708071, 670807, '$P_a = U\,I\cos\varphi$', FALSE, 1),
  (6708072, 670807, '$P_a = 3\,U\,I\cos\varphi$', FALSE, 2),
  (6708073, 670807, '$P_a = \sqrt{3}\,U\,I\cos\varphi$', TRUE, 3),
  (6708074, 670807, '$P_a = \sqrt{3}\,U\,I$', FALSE, 4);

-- moteur-asynchrone
SET @l := (SELECT id FROM lecon WHERE slug = 'moteur-asynchrone' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'si-ste'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (6709, NULL, @l, 'QCM — Le moteur asynchrone triphase', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (670901, 6709, 'Quelle est la vitesse de synchronisme $n_s$ d''un moteur asynchrone à $p = 2$ paires de pôles alimenté à $f = 50\ \text{Hz}$ ?', 'On applique $n_s = \dfrac{60f}{p} = \dfrac{60 \times 50}{2} = 1500\ \text{tr/min}$. Avec $p = 1$ on obtiendrait $3000\ \text{tr/min}$.', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6709011, 670901, '$1500\ \text{tr/min}$', TRUE, 1),
  (6709012, 670901, '$3000\ \text{tr/min}$', FALSE, 2),
  (6709013, 670901, '$1000\ \text{tr/min}$', FALSE, 3),
  (6709014, 670901, '$750\ \text{tr/min}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (670902, 6709, 'Le glissement $g$ d''un moteur asynchrone est défini par :', 'Le glissement mesure l''écart relatif entre la vitesse du champ tournant $n_s$ et celle du rotor $n$ : $g = \dfrac{n_s - n}{n_s}$. C''est un nombre sans dimension, souvent exprimé en pourcentage.', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6709021, 670902, '$g = \dfrac{n_s - n}{n_s}$', TRUE, 1),
  (6709022, 670902, '$g = \dfrac{n}{n_s}$', FALSE, 2),
  (6709023, 670902, '$g = \dfrac{n - n_s}{n}$', FALSE, 3),
  (6709024, 670902, '$g = n_s - n$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (670903, 6709, 'Pourquoi la vitesse du rotor reste-t-elle toujours inférieure à la vitesse de synchronisme ?', 'Le couple naît des courants induits dans le rotor. Ces courants n''existent que s''il y a un glissement : si $n = n_s$, le flux vu par le rotor est constant, aucun courant n''est induit et le couple s''annule. Le rotor doit donc glisser sous $n_s$.', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6709031, 670903, 'Si $n = n_s$, il n''y a plus de variation de flux, donc plus de courants induits ni de couple', TRUE, 1),
  (6709032, 670903, 'Parce que le rotor est freiné en permanence par les balais', FALSE, 2),
  (6709033, 670903, 'Parce que la fréquence du réseau diminue en charge', FALSE, 3),
  (6709034, 670903, 'Parce que le stator tourne plus vite que le rotor mécaniquement', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (670904, 6709, 'La puissance électrique absorbée par un moteur asynchrone sur le réseau triphasé s''écrit :', 'Pour un récepteur triphasé équilibré, $P_a = \sqrt{3}\,U\,I\,\cos\varphi$ où $U$ est la tension composée, $I$ le courant de ligne et $\cos\varphi$ le facteur de puissance. Avec $\sin\varphi$ on obtiendrait la puissance réactive.', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6709041, 670904, '$P_a = \sqrt{3}\,U\,I\,\cos\varphi$', TRUE, 1),
  (6709042, 670904, '$P_a = U\,I\,\cos\varphi$', FALSE, 2),
  (6709043, 670904, '$P_a = 3\,U\,I$', FALSE, 3),
  (6709044, 670904, '$P_a = \sqrt{3}\,U\,I\,\sin\varphi$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (670905, 6709, 'Les pertes Joule au rotor $p_{jr}$ d''un moteur asynchrone sont liées au glissement par la relation :', 'La puissance transmise au rotor se partage en puissance mécanique $P_m = (1-g)P_{tr}$ et en pertes Joule rotor $p_{jr} = g\,P_{tr}$. Plus le glissement est grand, plus les pertes rotor sont importantes.', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6709051, 670905, '$p_{jr} = g\,P_{tr}$', TRUE, 1),
  (6709052, 670905, '$p_{jr} = (1-g)\,P_{tr}$', FALSE, 2),
  (6709053, 670905, '$p_{jr} = g\,P_a$', FALSE, 3),
  (6709054, 670905, '$p_{jr} = \dfrac{P_{tr}}{g}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (670906, 6709, 'Lors d''un démarrage étoile-triangle, le passage en couplage étoile (Y) :', 'En étoile, chaque enroulement reçoit la tension réduite $U/\sqrt{3}$ : le courant de démarrage est divisé par 3, mais le couple de démarrage est lui aussi divisé par 3. Ce procédé convient donc aux démarrages à vide ou à faible couple résistant.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6709061, 670906, 'divise le courant de démarrage par 3 (et aussi le couple par 3)', TRUE, 1),
  (6709062, 670906, 'multiplie le courant de démarrage par $\sqrt{3}$', FALSE, 2),
  (6709063, 670906, 'augmente le couple de démarrage sans changer le courant', FALSE, 3),
  (6709064, 670906, 'ne modifie ni le courant ni le couple', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (670907, 6709, 'Un moteur porte la plaque $230\ \text{V}\ \triangle / 400\ \text{V}\ Y$. Sur un réseau triphasé $400\ \text{V}$ entre phases, quel couplage faut-il adopter ?', 'La plaque indique la tension supportée par enroulement : $230\ \text{V}$ en triangle, $400\ \text{V}$ en étoile. Sur un réseau $400\ \text{V}$, on choisit le couplage étoile pour que chaque enroulement reçoive $400/\sqrt{3} \approx 230\ \text{V}$, sa tension nominale.', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6709071, 670907, 'Couplage étoile (Y)', TRUE, 1),
  (6709072, 670907, 'Couplage triangle (Δ)', FALSE, 2),
  (6709073, 670907, 'Indifféremment l''un ou l''autre', FALSE, 3),
  (6709074, 670907, 'Aucun des deux : la tension est trop élevée', FALSE, 4);

-- moteur-pas-a-pas
SET @l := (SELECT id FROM lecon WHERE slug = 'moteur-pas-a-pas' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'si-ste'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (6710, NULL, @l, 'QCM — Le moteur pas a pas', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (671001, 6710, 'Quelle est la fonction d''un moteur pas à pas ?', 'Le moteur pas à pas transforme une suite d''impulsions électriques en rotation discrète : à chaque impulsion, l''axe avance d''un angle fixe appelé le pas.', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6710011, 671001, 'Convertir chaque impulsion électrique en un déplacement angulaire élémentaire appelé pas', TRUE, 1),
  (6710012, 671001, 'Convertir une rotation continue en une suite d''impulsions électriques', FALSE, 2),
  (6710013, 671001, 'Fournir une rotation continue proportionnelle à la tension d''alimentation', FALSE, 3),
  (6710014, 671001, 'Mesurer en permanence la position angulaire d''un axe', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (671002, 6710, 'Un moteur pas à pas effectue $N$ pas pour réaliser un tour complet. Quel est son angle de pas $\alpha$ ?', 'Le tour complet ($360^\circ$) est divisé en $N$ pas égaux, donc $\alpha = \dfrac{360^\circ}{N}$.', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6710021, 671002, '$\alpha = \dfrac{360^\circ}{N}$', TRUE, 1),
  (6710022, 671002, '$\alpha = \dfrac{N}{360^\circ}$', FALSE, 2),
  (6710023, 671002, '$\alpha = 360^\circ \times N$', FALSE, 3),
  (6710024, 671002, '$\alpha = \dfrac{180^\circ}{N}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (671003, 6710, 'Un moteur possède $N = 200$ pas par tour. Que vaut son angle de pas ?', '$\alpha = \dfrac{360^\circ}{200} = 1{,}8^\circ$. C''est la valeur la plus courante des moteurs hybrides.', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6710031, 671003, '$1{,}8^\circ$', TRUE, 1),
  (6710032, 671003, '$0{,}9^\circ$', FALSE, 2),
  (6710033, 671003, '$2{,}5^\circ$', FALSE, 3),
  (6710034, 671003, '$5^\circ$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (671004, 6710, 'Un moteur d''angle de pas $\alpha = 1{,}8^\circ$ doit faire tourner son axe de $90^\circ$. Combien d''impulsions faut-il lui envoyer ?', 'Le nombre d''impulsions vaut $n = \dfrac{\theta}{\alpha} = \dfrac{90}{1{,}8} = 50$.', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6710041, 671004, '$50$ impulsions', TRUE, 1),
  (6710042, 671004, '$25$ impulsions', FALSE, 2),
  (6710043, 671004, '$90$ impulsions', FALSE, 3),
  (6710044, 671004, '$180$ impulsions', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (671005, 6710, 'Quel type de moteur pas à pas associe un rotor à aimant permanent muni de dents, offrant à la fois un petit angle de pas et un couple élevé ?', 'Le moteur hybride combine l''aimant permanent (couple) et la denture du moteur à réluctance variable (petit pas). C''est le type le plus répandu.', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6710051, 671005, 'Le moteur hybride', TRUE, 1),
  (6710052, 671005, 'Le moteur à aimant permanent', FALSE, 2),
  (6710053, 671005, 'Le moteur à réluctance variable', FALSE, 3),
  (6710054, 671005, 'Le moteur asynchrone', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (671006, 6710, 'Dans un moteur à réluctance variable, comment est constitué le rotor ?', 'Le rotor en fer doux denté se place pour offrir le chemin de réluctance minimale au flux ; il ne possède pas de couple de maintien à l''arrêt (pas d''aimant).', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6710061, 671006, 'Une pièce en fer doux dentée, sans aimant', TRUE, 1),
  (6710062, 671006, 'Un aimant permanent à pôles Nord et Sud', FALSE, 2),
  (6710063, 671006, 'Un bobinage alimenté en courant continu', FALSE, 3),
  (6710064, 671006, 'Une cage d''écureuil en aluminium', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (671007, 6710, 'En commande demi-pas, par rapport à la commande pas entier, le nombre de positions par tour est :', 'En demi-pas, le rotor avance de $\dfrac{\alpha}{2}$ par impulsion : le nombre de positions par tour est doublé, ce qui améliore la résolution.', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6710071, 671007, 'Doublé', TRUE, 1),
  (6710072, 671007, 'Divisé par deux', FALSE, 2),
  (6710073, 671007, 'Inchangé', FALSE, 3),
  (6710074, 671007, 'Multiplié par quatre', FALSE, 4);

-- verins-hydrauliques
SET @l := (SELECT id FROM lecon WHERE slug = 'verins-hydrauliques' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'si-ste'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (6711, NULL, @l, 'QCM — Les verins hydrauliques', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (671101, 6711, 'Dans un vérin simple effet (VSE), le retour de la tige est assuré par :', 'Le VSE ne possède qu''un seul orifice : le fluide ne commande que la sortie. Le retour est obtenu par un ressort de rappel ou par la charge.', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6711011, 671101, 'le fluide sous pression agissant sur la face avant', FALSE, 1),
  (6711012, 671101, 'un ressort de rappel (ou la charge)', TRUE, 2),
  (6711013, 671101, 'un second distributeur 5/2', FALSE, 3),
  (6711014, 671101, 'l''inertie du piston seule', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (671102, 6711, 'L''effort théorique développé par un vérin de section $S$ alimenté à la pression $p$ vaut :', 'La pression est une force par unité de surface : $p = F/S$, donc $F = p \times S$, avec $F$ en N, $p$ en Pa et $S$ en m$^2$.', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6711021, 671102, '$F = \dfrac{p}{S}$', FALSE, 1),
  (6711022, 671102, '$F = p \times S$', TRUE, 2),
  (6711023, 671102, '$F = \dfrac{S}{p}$', FALSE, 3),
  (6711024, 671102, '$F = p + S$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (671103, 6711, 'Un vérin pneumatique de section $S = 2 \times 10^{-3}\ \text{m}^2$ est alimenté à $p = 6\ \text{bar}$. L''effort de sortie vaut environ :', '$p = 6\ \text{bar} = 6 \times 10^5\ \text{Pa}$, donc $F = p \times S = 6 \times 10^5 \times 2 \times 10^{-3} = 1200\ \text{N} = 1{,}2\ \text{kN}$.', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6711031, 671103, '$12\ \text{N}$', FALSE, 1),
  (6711032, 671103, '$120\ \text{N}$', FALSE, 2),
  (6711033, 671103, '$1{,}2\ \text{kN}$', TRUE, 3),
  (6711034, 671103, '$12\ \text{kN}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (671104, 6711, 'La relation liant le débit $Q$, la section $S$ et la vitesse $v$ de la tige est :', 'Le volume balayé par seconde est $Q = S \times v$, d''où la vitesse $v = Q/S$. Plus le débit est grand, plus la tige est rapide.', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6711041, 671104, '$Q = S \times v$', TRUE, 1),
  (6711042, 671104, '$v = S \times Q$', FALSE, 2),
  (6711043, 671104, '$Q = \dfrac{v}{S}$', FALSE, 3),
  (6711044, 671104, '$S = Q \times v$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (671105, 6711, 'Un distributeur noté $\text{4/2}$ possède :', 'Dans la notation $n/m$, le premier chiffre $n$ est le nombre d''orifices et le second $m$ le nombre de positions. Un 4/2 a donc 4 orifices et 2 positions ; il commande un vérin double effet.', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6711051, 671105, '4 positions et 2 orifices', FALSE, 1),
  (6711052, 671105, '4 orifices et 2 positions', TRUE, 2),
  (6711053, 671105, '4 bar et 2 vérins', FALSE, 3),
  (6711054, 671105, '4 ressorts et 2 pistons', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (671106, 6711, 'Pour commander un vérin simple effet, le distributeur le mieux adapté est un :', 'Le VSE a un seul orifice d''alimentation : il faut alimenter, utiliser et mettre à l''échappement, soit 3 orifices et 2 positions, c''est-à-dire un distributeur 3/2.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6711061, 671106, '$\text{2/2}$', FALSE, 1),
  (6711062, 671106, '$\text{3/2}$', TRUE, 2),
  (6711063, 671106, '$\text{5/2}$', FALSE, 3),
  (6711064, 671106, '$\text{5/3}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (671107, 6711, 'Lors de la rentrée de la tige (diamètre $d$, piston $D$), la surface utile devient $S'' = \dfrac{\pi(D^2 - d^2)}{4}$. L''effort de rentrée $F''$ est alors :', 'La tige réduit la surface utile : $S'' < S$, donc à pression égale $F'' = p\,S'' < F = p\,S$. Un vérin double effet pousse plus fort qu''il ne tire.', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6711071, 671107, 'supérieur à l''effort de sortie $F$', FALSE, 1),
  (6711072, 671107, 'inférieur à l''effort de sortie $F$', TRUE, 2),
  (6711073, 671107, 'égal à l''effort de sortie $F$', FALSE, 3),
  (6711074, 671107, 'nul', FALSE, 4);

-- capteurs
SET @l := (SELECT id FROM lecon WHERE slug = 'capteurs' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'si-ste'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (6712, NULL, @l, 'QCM — Les capteurs', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (671201, 6712, 'Quel type de capteur délivre une information de type Tout Ou Rien (deux états logiques 0 ou 1) ?', 'Un capteur logique, ou TOR, ne possède que deux états (présence/absence, 0/1). Les détecteurs de proximité (inductif, capacitif, optique) et les fins de course en sont les exemples typiques. La Pt100, la LDR et la jauge sont des capteurs analogiques.', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6712011, 671201, 'Un capteur logique (TOR), comme un détecteur de proximité', TRUE, 1),
  (6712012, 671201, 'Une sonde Pt100', FALSE, 2),
  (6712013, 671201, 'Une photorésistance (LDR)', FALSE, 3),
  (6712014, 671201, 'Une jauge de déformation', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (671202, 6712, 'Un détecteur de proximité ne réagit qu''à l''approche d''objets métalliques. De quel type de détecteur s''agit-il ?', 'Le détecteur inductif crée un champ magnétique alternatif et détecte les courants de Foucault induits dans tout objet métallique. Il ne détecte que les métaux. Le capacitif détecte aussi les isolants, l''optique tout matériau opaque.', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6712021, 671202, 'Détecteur inductif', TRUE, 1),
  (6712022, 671202, 'Détecteur capacitif', FALSE, 2),
  (6712023, 671202, 'Détecteur photoélectrique (optique)', FALSE, 3),
  (6712024, 671202, 'Interrupteur de fin de course', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (671203, 6712, 'Pour contrôler le niveau d''un liquide non conducteur (huile) à travers une paroi en verre, quel détecteur sans contact est le mieux adapté ?', 'Le détecteur capacitif réagit à la variation de capacité provoquée par l''approche d''un corps conducteur ou isolant (liquide, verre, plastique). Il est donc idéal pour le contrôle de niveau. L''inductif ne détecterait pas l''huile ni le verre.', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6712031, 671203, 'Le détecteur capacitif', TRUE, 1),
  (6712032, 671203, 'Le détecteur inductif', FALSE, 2),
  (6712033, 671203, 'L''interrupteur de fin de course', FALSE, 3),
  (6712034, 671203, 'La sonde Pt100', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (671204, 6712, 'La sensibilité $S$ d''un capteur est définie par la relation :', 'La sensibilité est le rapport entre la variation du signal de sortie $\Delta s$ et la variation de la grandeur mesurée $\Delta m$ : $S = \dfrac{\Delta s}{\Delta m}$. Une sensibilité élevée signifie qu''une petite variation de la grandeur produit une grande variation du signal.', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6712041, 671204, '$S = \dfrac{\Delta s}{\Delta m}$', TRUE, 1),
  (6712042, 671204, '$S = \dfrac{\Delta m}{\Delta s}$', FALSE, 2),
  (6712043, 671204, '$S = \Delta s \times \Delta m$', FALSE, 3),
  (6712044, 671204, '$S = s_{max} - s_{min}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (671205, 6712, 'Un capteur est dit linéaire lorsque :', 'Un capteur linéaire a une courbe de réponse en forme de droite : le signal de sortie est proportionnel à la grandeur mesurée et la sensibilité $S$ est constante sur toute l''étendue de mesure. C''est le cas de la sonde Pt100, contrairement à la thermistance CTN qui est non linéaire.', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6712051, 671205, 'son signal de sortie est proportionnel à la grandeur mesurée et sa sensibilité est constante', TRUE, 1),
  (6712052, 671205, 'sa résistance reste constante quelle que soit la grandeur mesurée', FALSE, 2),
  (6712053, 671205, 'sa sensibilité augmente avec la grandeur mesurée', FALSE, 3),
  (6712054, 671205, 'il ne délivre que deux états logiques', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (671206, 6712, 'Le pont de Wheatstone, constitué de quatre résistances $R_1$, $R_2$, $R_3$ et $R_x$, est équilibré ($V_m = 0$) lorsque :', 'Le pont est équilibré lorsque la tension de mesure est nulle, ce qui s''écrit $R_1 \cdot R_x = R_2 \cdot R_3$. Toute variation de la résistance du capteur ($R_x \to R_x + \Delta R$) déséquilibre le pont et fait apparaître une tension $V_m \neq 0$, image de la grandeur mesurée.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6712061, 671206, '$R_1 \cdot R_x = R_2 \cdot R_3$', TRUE, 1),
  (6712062, 671206, '$R_1 + R_x = R_2 + R_3$', FALSE, 2),
  (6712063, 671206, '$R_1 \cdot R_2 = R_3 \cdot R_x$', FALSE, 3),
  (6712064, 671206, '$R_1 = R_2 = R_3 = R_x$ obligatoirement', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (671207, 6712, 'Pourquoi utilise-t-on un pont de Wheatstone pour conditionner une jauge de déformation ?', 'La variation $\Delta R$ d''une jauge est trop faible pour être mesurée directement. Le pont de Wheatstone convertit cette petite variation de résistance en une tension $V_m$, ensuite amplifiée par le conditionneur avant d''être transmise à la partie commande.', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6712071, 671207, 'Parce qu''il convertit la très faible variation de résistance $\Delta R$ en une tension mesurable', TRUE, 1),
  (6712072, 671207, 'Parce qu''il transforme la jauge en capteur logique TOR', FALSE, 2),
  (6712073, 671207, 'Parce qu''il alimente la partie commande en énergie', FALSE, 3),
  (6712074, 671207, 'Parce qu''il augmente la résistance interne de la jauge', FALSE, 4);

-- amplification
SET @l := (SELECT id FROM lecon WHERE slug = 'amplification' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'si-ste'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (6713, NULL, @l, 'QCM — L''amplification (AOP)', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (671301, 6713, 'Pour un amplificateur opérationnel idéal, que valent les courants d''entrée $i^+$ et $i^-$ ?', 'Le modèle de l''AOP idéal suppose que les entrées ne consomment aucun courant : $i^+ = i^- = 0$. Cette propriété est valable dans tous les régimes.', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6713011, 671301, '$i^+ = i^- = 0$', TRUE, 1),
  (6713012, 671301, '$i^+ = i^- = V_{cc}$', FALSE, 2),
  (6713013, 671301, '$i^+ = -i^-$ et tous deux non nuls', FALSE, 3),
  (6713014, 671301, '$i^+ = i^- = \dfrac{V_s}{R_1}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (671302, 6713, 'Lorsqu''un AOP idéal fonctionne en régime linéaire (contre-réaction sur l''entrée $-$), quelle relation lie ses deux entrées ?', 'En régime linéaire, le gain infini de l''AOP impose une tension différentielle nulle entre les entrées : $V^+ = V^-$. C''est la relation fondamentale qui permet d''étudier tous les montages.', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6713021, 671302, '$V^+ = V^-$', TRUE, 1),
  (6713022, 671302, '$V^+ = -V^-$', FALSE, 2),
  (6713023, 671302, '$V^+ - V^- = V_{cc}$', FALSE, 3),
  (6713024, 671302, '$V^+ = 0$ et $V^- = V_s$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (671303, 6713, 'Un montage inverseur utilise $R_1 = 2\ \text{k}\Omega$ et $R_2 = 10\ \text{k}\Omega$. Quel est son gain $A_v = \dfrac{V_s}{V_e}$ ?', 'Pour le montage inverseur, $A_v = -\dfrac{R_2}{R_1} = -\dfrac{10}{2} = -5$. Le signe négatif traduit l''opposition de phase entre la sortie et l''entrée.', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6713031, 671303, '$A_v = -5$', TRUE, 1),
  (6713032, 671303, '$A_v = +5$', FALSE, 2),
  (6713033, 671303, '$A_v = +6$', FALSE, 3),
  (6713034, 671303, '$A_v = -0{,}2$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (671304, 6713, 'Quelle est l''expression du gain en tension du montage amplificateur non inverseur ?', 'Le pont diviseur impose $V^- = \dfrac{R_1}{R_1+R_2}V_s$ et, comme $V^+ = V_e = V^-$, on obtient $V_s = \left(1 + \dfrac{R_2}{R_1}\right)V_e$. Le gain est toujours supérieur à $1$ et positif.', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6713041, 671304, '$A_v = 1 + \dfrac{R_2}{R_1}$', TRUE, 1),
  (6713042, 671304, '$A_v = -\dfrac{R_2}{R_1}$', FALSE, 2),
  (6713043, 671304, '$A_v = \dfrac{R_1}{R_1 + R_2}$', FALSE, 3),
  (6713044, 671304, '$A_v = \dfrac{R_2}{R_1} - 1$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (671305, 6713, 'Quel est le principal intérêt du montage suiveur ($V_s = V_e$) ?', 'Le suiveur n''amplifie pas ($A_v = 1$) mais sert d''adaptateur d''impédance : il prélève la tension d''un capteur sans le perturber ($i^+ = 0$) et la transmet à la charge.', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6713051, 671305, 'Adapter les impédances : très grande résistance d''entrée et très faible résistance de sortie', TRUE, 1),
  (6713052, 671305, 'Amplifier fortement la tension d''un capteur', FALSE, 2),
  (6713053, 671305, 'Inverser le signe du signal d''entrée', FALSE, 3),
  (6713054, 671305, 'Réaliser la somme de plusieurs tensions', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (671306, 6713, 'Un montage sommateur de résistance de contre-réaction $R$ reçoit $V_1$ et $V_2$ par les résistances $R_1$ et $R_2$. Quelle est sa tension de sortie ?', 'Le sommateur est un montage inverseur à plusieurs entrées. La masse virtuelle ($V^- = 0$) impose $\dfrac{V_1}{R_1} + \dfrac{V_2}{R_2} = -\dfrac{V_s}{R}$, d''où $V_s = -\left(\dfrac{R}{R_1}V_1 + \dfrac{R}{R_2}V_2\right)$.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6713061, 671306, '$V_s = -\left(\dfrac{R}{R_1}V_1 + \dfrac{R}{R_2}V_2\right)$', TRUE, 1),
  (6713062, 671306, '$V_s = \dfrac{R}{R_1}V_1 + \dfrac{R}{R_2}V_2$', FALSE, 2),
  (6713063, 671306, '$V_s = -\dfrac{R}{R_1}(V_1 - V_2)$', FALSE, 3),
  (6713064, 671306, '$V_s = \dfrac{R_1}{R}V_1 + \dfrac{R_2}{R}V_2$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (671307, 6713, 'Un thermocouple délivre $V_e = 5\ \text{mV}$ que l''on veut amplifier jusqu''à $V_s = 1\ \text{V}$. Quel gain $A_v$ doit fournir l''étage d''amplification ?', 'Le gain nécessaire est $A_v = \dfrac{V_s}{V_e} = \dfrac{1}{5\times 10^{-3}} = 200$. Avec un montage non inverseur, il faut alors $1 + \dfrac{R_2}{R_1} = 200$, soit $\dfrac{R_2}{R_1} = 199$.', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6713071, 671307, '$A_v = 200$', TRUE, 1),
  (6713072, 671307, '$A_v = 20$', FALSE, 2),
  (6713073, 671307, '$A_v = 5 \times 10^{-3}$', FALSE, 3),
  (6713074, 671307, '$A_v = 2000$', FALSE, 4);

-- filtrage
SET @l := (SELECT id FROM lecon WHERE slug = 'filtrage' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'si-ste'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (6714, NULL, @l, 'QCM — Le filtrage', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (671401, 6714, 'Un filtre qui transmet les basses fréquences (inférieures à $f_c$) et atténue les hautes fréquences est un filtre :', 'Le filtre passe-bas laisse passer les fréquences inférieures à la fréquence de coupure $f_c$ et atténue les fréquences supérieures.', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6714011, 671401, 'passe-bas', TRUE, 1),
  (6714012, 671401, 'passe-haut', FALSE, 2),
  (6714013, 671401, 'passe-bande', FALSE, 3),
  (6714014, 671401, 'coupe-bande', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (671402, 6714, 'Le gain en décibels d''un filtre se calcule, à partir du module $|T|$ de la fonction de transfert, par la relation :', 'Le gain en tension s''exprime en décibels par $G_{dB} = 20\log|T|$, où $\log$ est le logarithme décimal.', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6714021, 671402, '$G_{dB} = 20\log|T|$', TRUE, 1),
  (6714022, 671402, '$G_{dB} = 10\log|T|$', FALSE, 2),
  (6714023, 671402, '$G_{dB} = 20\,|T|$', FALSE, 3),
  (6714024, 671402, '$G_{dB} = \log(20\,|T|)$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (671403, 6714, 'À la fréquence de coupure d''un filtre, le gain a chuté de $3\ \text{dB}$ par rapport à sa valeur maximale. Le module de la fonction de transfert vaut alors :', 'Une chute de $3\ \text{dB}$ correspond à une division du gain par $\sqrt{2}$, soit $|T| = |T|_{max}/\sqrt{2} \approx 0{,}707\,|T|_{max}$ (moitié de la puissance transmise).', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6714031, 671403, '$|T| = \dfrac{|T|_{max}}{\sqrt{2}}$', TRUE, 1),
  (6714032, 671403, '$|T| = \dfrac{|T|_{max}}{2}$', FALSE, 2),
  (6714033, 671403, '$|T| = 2\,|T|_{max}$', FALSE, 3),
  (6714034, 671403, '$|T| = |T|_{max}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (671404, 6714, 'Pour un filtre RC passe-bas avec $R = 1\ \text{k}\Omega$ et $C = 1{,}6\ \mu\text{F}$, la fréquence de coupure $f_c = \dfrac{1}{2\pi RC}$ vaut environ :', '$f_c = \dfrac{1}{2\pi \times 10^{3} \times 1{,}6\times10^{-6}} \approx 100\ \text{Hz}$.', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6714041, 671404, '$100\ \text{Hz}$', TRUE, 1),
  (6714042, 671404, '$1\ \text{kHz}$', FALSE, 2),
  (6714043, 671404, '$10\ \text{Hz}$', FALSE, 3),
  (6714044, 671404, '$1{,}6\ \text{Hz}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (671405, 6714, 'Quelle affirmation distingue correctement un filtre actif d''un filtre passif ?', 'Le filtre passif (R, L, C) ne possède pas de source d''énergie et vérifie $|T| \le 1$. Le filtre actif intègre un AOP alimenté et peut présenter un gain supérieur à $1$.', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6714051, 671405, 'Le filtre actif utilise un composant amplificateur (AOP) alimenté et peut amplifier le signal ($|T| > 1$).', TRUE, 1),
  (6714052, 671405, 'Le filtre actif n''utilise que des résistances et des condensateurs.', FALSE, 2),
  (6714053, 671405, 'Le filtre passif possède une source d''énergie propre.', FALSE, 3),
  (6714054, 671405, 'Le filtre passif peut amplifier le signal dans la bande passante.', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (671406, 6714, 'Sur le diagramme de Bode en gain d''un filtre passe-bas du premier ordre, l''asymptote oblique de la bande atténuée a une pente de :', 'Pour un filtre du premier ordre, l''asymptote dans la bande atténuée descend de $20\ \text{dB}$ chaque fois que la fréquence est multipliée par $10$ (une décade).', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6714061, 671406, '$-20\ \text{dB}$ par décade', TRUE, 1),
  (6714062, 671406, '$-3\ \text{dB}$ par décade', FALSE, 2),
  (6714063, 671406, '$+20\ \text{dB}$ par décade', FALSE, 3),
  (6714064, 671406, '$-10\ \text{dB}$ par octave', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (671407, 6714, 'Un filtre atténue un signal d''un facteur $10$, c''est-à-dire $|T| = 0{,}1$. Le gain correspondant en décibels est :', '$G_{dB} = 20\log(0{,}1) = 20 \times (-1) = -20\ \text{dB}$.', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6714071, 671407, '$-20\ \text{dB}$', TRUE, 1),
  (6714072, 671407, '$-10\ \text{dB}$', FALSE, 2),
  (6714073, 671407, '$-3\ \text{dB}$', FALSE, 3),
  (6714074, 671407, '$+20\ \text{dB}$', FALSE, 4);

-- mise-en-forme
SET @l := (SELECT id FROM lecon WHERE slug = 'mise-en-forme' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'si-ste'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (6715, NULL, @l, 'QCM — La mise en forme du signal', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (671501, 6715, 'La fonction « mettre en forme le signal » a pour rôle principal de :', 'Mettre en forme le signal, c''est le rendre exploitable par la partie commande : pour un capteur, il s''agit de le convertir en signal logique (deux états) selon un ou plusieurs seuils de référence.', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6715011, 671501, 'convertir un signal analogique délivré par un capteur en un signal logique exploitable par la partie commande', TRUE, 1),
  (6715012, 671501, 'amplifier la puissance d''un signal pour alimenter un actionneur', FALSE, 2),
  (6715013, 671501, 'transformer une tension continue en tension alternative', FALSE, 3),
  (6715014, 671501, 'mesurer la fréquence d''un signal périodique', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (671502, 6715, 'Un comparateur réalisé avec un AOP en boucle ouverte compare $v_e$ à une référence $V_{ref}$. Sa sortie vaut :', 'En boucle ouverte, l''AOP sature : la sortie bascule à $+V_{sat}$ dès que l''entrée dépasse le seuil $V_{ref}$ et à $-V_{sat}$ lorsqu''elle passe en dessous.', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6715021, 671502, '$+V_{sat}$ si $v_e > V_{ref}$ et $-V_{sat}$ si $v_e < V_{ref}$', TRUE, 1),
  (6715022, 671502, '$+V_{sat}$ si $v_e < V_{ref}$ et $0$ sinon', FALSE, 2),
  (6715023, 671502, 'toujours égale à $V_{ref}$', FALSE, 3),
  (6715024, 671502, 'proportionnelle à la différence $v_e - V_{ref}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (671503, 6715, 'Par rapport à un comparateur simple, le principal avantage du trigger de Schmitt est :', 'Le trigger de Schmitt possède deux seuils $V_{BH}$ et $V_{BB}$. Entre les deux, la sortie reste inchangée : un signal bruité au voisinage d''un seuil ne provoque plus de basculements multiples.', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6715031, 671503, 'ses deux seuils distincts (hystérésis) évitent les basculements parasites quand l''entrée est bruitée autour du seuil', TRUE, 1),
  (6715032, 671503, 'il fournit une sortie analogique proportionnelle à l''entrée', FALSE, 2),
  (6715033, 671503, 'il n''a besoin d''aucune alimentation', FALSE, 3),
  (6715034, 671503, 'il possède un seuil unique et bascule plus souvent', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (671504, 6715, 'Pour un trigger de Schmitt, la largeur du cycle d''hystérésis est donnée par :', 'La largeur d''hystérésis est l''écart entre le seuil haut et le seuil bas : $\Delta V = V_{BH} - V_{BB}$. Plus elle est grande, plus le montage est insensible au bruit.', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6715041, 671504, '$\Delta V = V_{BH} - V_{BB}$', TRUE, 1),
  (6715042, 671504, '$\Delta V = V_{BH} + V_{BB}$', FALSE, 2),
  (6715043, 671504, '$\Delta V = \dfrac{V_{BH}}{V_{BB}}$', FALSE, 3),
  (6715044, 671504, '$\Delta V = 2\,V_{ref}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (671505, 6715, 'Dans un multivibrateur astable à NE555 (résistances $R_A$, $R_B$, condensateur $C$), la période des oscillations vaut :', 'Le condensateur se charge par $R_A + R_B$ pendant $t_H = 0{,}69(R_A+R_B)C$ puis se décharge par $R_B$ pendant $t_B = 0{,}69\,R_B C$, d''où $T = t_H + t_B = 0{,}69(R_A + 2R_B)C$.', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6715051, 671505, '$T = 0{,}69\,(R_A + 2R_B)\,C$', TRUE, 1),
  (6715052, 671505, '$T = 1{,}1\,(R_A + R_B)\,C$', FALSE, 2),
  (6715053, 671505, '$T = 0{,}69\,R_A R_B\,C$', FALSE, 3),
  (6715054, 671505, '$T = \dfrac{1}{2\pi (R_A + R_B) C}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (671506, 6715, 'Dans l''astable à NE555, le condensateur oscille en charge et décharge entre deux seuils internes fixés à :', 'Les comparateurs internes du NE555 imposent une charge de $\frac{1}{3}V_{cc}$ à $\frac{2}{3}V_{cc}$ puis une décharge de $\frac{2}{3}V_{cc}$ à $\frac{1}{3}V_{cc}$, ce qui entretient l''oscillation.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6715061, 671506, '$\dfrac{1}{3}V_{cc}$ et $\dfrac{2}{3}V_{cc}$', TRUE, 1),
  (6715062, 671506, '$0$ et $V_{cc}$', FALSE, 2),
  (6715063, 671506, '$\dfrac{1}{4}V_{cc}$ et $\dfrac{3}{4}V_{cc}$', FALSE, 3),
  (6715064, 671506, '$-V_{cc}$ et $+V_{cc}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (671507, 6715, 'Un monostable à NE555 ($R$, $C$) délivre, à chaque déclenchement, une impulsion de durée :', 'Le monostable possède un seul état stable : une impulsion de déclenchement fait passer la sortie à l''état haut pendant une durée calibrée $t = 1{,}1\,R\,C$, indépendante de la durée du déclenchement, puis elle revient seule à l''état bas.', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6715071, 671507, '$t = 1{,}1\,R\,C$', TRUE, 1),
  (6715072, 671507, '$t = 0{,}69\,R\,C$', FALSE, 2),
  (6715073, 671507, '$t = 2\pi R C$', FALSE, 3),
  (6715074, 671507, '$t = 0{,}69\,(R_A + 2R_B)C$', FALSE, 4);

-- conversion-can-cna
SET @l := (SELECT id FROM lecon WHERE slug = 'conversion-can-cna' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'si-ste'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (6716, NULL, @l, 'QCM — La conversion CAN et CNA', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (671601, 6716, 'Un CAN de résolution $n = 8$ bits travaille avec une tension de référence $V_{ref} = 5\,\text{V}$. Quelle est la valeur du quantum $q$ ?', 'Le quantum vaut $q = \dfrac{V_{ref}}{2^n} = \dfrac{5}{2^8} = \dfrac{5}{256} \approx 0{,}0195\,\text{V} = 19{,}5\,\text{mV}$. On divise toujours la pleine échelle par le nombre de niveaux $2^n$, et non par $2^n-1$.', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6716011, 671601, '$q = \dfrac{5}{256} \approx 19{,}5\,\text{mV}$', TRUE, 1),
  (6716012, 671601, '$q = \dfrac{5}{8} = 0{,}625\,\text{V}$', FALSE, 2),
  (6716013, 671601, '$q = \dfrac{5}{255} \approx 19{,}6\,\text{mV}$ puis arrondi à $5\,\text{V}$', FALSE, 3),
  (6716014, 671601, '$q = 5 \times 256 = 1280\,\text{V}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (671602, 6716, 'Combien de valeurs binaires différentes un convertisseur de résolution $n$ bits peut-il coder ?', 'Un mot de $n$ bits possède $2^n$ combinaisons possibles, numérotées de $0$ à $2^n - 1$. C''est ce nombre de niveaux qui fixe la finesse de la conversion.', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6716021, 671602, '$2^n$ valeurs, de $0$ à $2^n - 1$', TRUE, 1),
  (6716022, 671602, '$2n$ valeurs', FALSE, 2),
  (6716023, 671602, '$n^2$ valeurs', FALSE, 3),
  (6716024, 671602, '$2^n - 1$ valeurs au maximum', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (671603, 6716, 'Un CNA possède un quantum $q = 0{,}5\,\text{V}$. On lui applique le mot binaire $1010_2$ (le bit de poids fort est à gauche). Quelle tension $V_s$ délivre-t-il ?', 'On convertit le mot en décimal : $N = 1\times 2^3 + 0\times 2^2 + 1\times 2^1 + 0\times 2^0 = 8 + 2 = 10$. Puis $V_s = q \cdot N = 0{,}5 \times 10 = 5\,\text{V}$.', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6716031, 671603, '$V_s = 5\,\text{V}$', TRUE, 1),
  (6716032, 671603, '$V_s = 2{,}5\,\text{V}$', FALSE, 2),
  (6716033, 671603, '$V_s = 0{,}5\,\text{V}$', FALSE, 3),
  (6716034, 671603, '$V_s = 7{,}5\,\text{V}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (671604, 6716, 'Quelle est la particularité caractéristique du réseau R-2R utilisé dans un CNA ?', 'Le réseau R-2R est une échelle de résistances n''utilisant que deux valeurs, $R$ et $2R$. Cette régularité facilite la fabrication et le réglage : c''est pourquoi cette architecture est la plus répandue pour les CNA.', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6716041, 671604, 'Il n''utilise que deux valeurs de résistances, $R$ et $2R$', TRUE, 1),
  (6716042, 671604, 'Il utilise $n$ résistances toutes différentes pondérées en puissances de $2$', FALSE, 2),
  (6716043, 671604, 'Il n''emploie aucune résistance, seulement des condensateurs', FALSE, 3),
  (6716044, 671604, 'Il nécessite une résistance par niveau de quantification, soit $2^n$ résistances', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (671605, 6716, 'Un signal analogique contient des fréquences allant jusqu''à $f_{max} = 4\,\text{kHz}$. D''après le théorème de Shannon, quelle est la fréquence d''échantillonnage minimale $f_e$ permettant de le reconstituer fidèlement ?', 'Le théorème de Shannon impose $f_e \geq 2\,f_{max}$. Ici $f_e \geq 2 \times 4 = 8\,\text{kHz}$. La fréquence d''échantillonnage minimale est donc $8\,\text{kHz}$.', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6716051, 671605, '$f_e = 8\,\text{kHz}$', TRUE, 1),
  (6716052, 671605, '$f_e = 4\,\text{kHz}$', FALSE, 2),
  (6716053, 671605, '$f_e = 2\,\text{kHz}$', FALSE, 3),
  (6716054, 671605, '$f_e = 1\,\text{kHz}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (671606, 6716, 'Un CAN de $n = 4$ bits a pour référence $V_{ref} = 16\,\text{V}$. On lui applique $V_e = 7\,\text{V}$. Quel code $N$ délivre-t-il ?', 'Le quantum vaut $q = \dfrac{V_{ref}}{2^n} = \dfrac{16}{16} = 1\,\text{V}$. Le code est la partie entière : $N = E\!\left(\dfrac{V_e}{q}\right) = E\!\left(\dfrac{7}{1}\right) = 7$, soit $0111_2$ sur 4 bits.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6716061, 671606, '$N = 7$, soit $0111_2$', TRUE, 1),
  (6716062, 671606, '$N = 8$, soit $1000_2$', FALSE, 2),
  (6716063, 671606, '$N = 4$, soit $0100_2$', FALSE, 3),
  (6716064, 671606, '$N = 16$, soit $10000_2$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (671607, 6716, 'Quelle est la valeur maximale de l''erreur de quantification commise par un convertisseur de quantum $q$ ?', 'Un intervalle continu de largeur $q$ est représenté par une seule valeur ; l''écart maximal entre la tension réelle et celle du code est donc d''un demi-quantum : $|\varepsilon| \leq \dfrac{q}{2}$. Augmenter $n$ diminue $q$, donc l''erreur.', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6716071, 671607, '$\dfrac{q}{2}$ en valeur absolue', TRUE, 1),
  (6716072, 671607, '$q$ en valeur absolue', FALSE, 2),
  (6716073, 671607, '$2q$ en valeur absolue', FALSE, 3),
  (6716074, 671607, 'Elle est nulle, la quantification n''introduit aucune erreur', FALSE, 4);

-- grafcet
SET @l := (SELECT id FROM lecon WHERE slug = 'grafcet' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'si-ste'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (6717, NULL, @l, 'QCM — Le GRAFCET', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (671701, 6717, 'Dans un GRAFCET, l''étape initiale (celle qui est active à la mise sous tension) se représente par :', 'L''étape initiale est dessinée par un double carré ; un GRAFCET comporte au moins une étape initiale, active dès la mise sous tension. Le simple carré désigne une étape ordinaire.', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6717011, 671701, 'un double carré', TRUE, 1),
  (6717012, 671701, 'un simple carré numéroté', FALSE, 2),
  (6717013, 671701, 'un trait horizontal épais', FALSE, 3),
  (6717014, 671701, 'un losange', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (671702, 6717, 'Une réceptivité associée à une transition est :', 'La réceptivité est la condition logique, écrite à droite du trait de transition, qui doit être vraie pour permettre le franchissement. L''ordre donné à la partie opérative est une action, associée à une étape.', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6717021, 671702, 'la condition logique (capteurs, boutons, temporisation...) qui autorise le franchissement de la transition', TRUE, 1),
  (6717022, 671702, 'l''ordre donné à la partie opérative lorsqu''une étape est active', FALSE, 2),
  (6717023, 671702, 'le numéro de l''étape qui suit la transition', FALSE, 3),
  (6717024, 671702, 'la liaison orientée reliant deux étapes', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (671703, 6717, 'Une action inscrite dans un rectangle relié à une étape :', 'Une action n''est effective que pendant que l''étape qui la commande est active. Dès que l''étape est désactivée, l''ordre cesse (pour une action non mémorisée).', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6717031, 671703, 'n''est exécutée que si l''étape qui la commande est active', TRUE, 1),
  (6717032, 671703, 'est exécutée en permanence, quel que soit l''état de l''étape', FALSE, 2),
  (6717033, 671703, 'n''est exécutée que lorsque l''étape est désactivée', FALSE, 3),
  (6717034, 671703, 'conditionne le franchissement de la transition amont', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (671704, 6717, 'D''après la règle 2 (franchissement d''une transition), une transition est franchie si et seulement si :', 'Une transition n''est franchissable que si elle est validée — c''est-à-dire toutes ses étapes immédiatement précédentes actives — ET que sa réceptivité est vraie. Les deux conditions sont nécessaires simultanément.', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6717041, 671704, 'elle est validée (toutes ses étapes amont actives) ET sa réceptivité est vraie', TRUE, 1),
  (6717042, 671704, 'sa réceptivité est vraie, même si aucune étape amont n''est active', FALSE, 2),
  (6717043, 671704, 'au moins une de ses étapes amont est active, sa réceptivité étant indifférente', FALSE, 3),
  (6717044, 671704, 'l''étape aval est déjà active', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (671705, 6717, 'Le franchissement d''une transition (règle 3) entraîne :', 'Le franchissement d''une transition provoque simultanément l''activation de toutes les étapes immédiatement suivantes et la désactivation de toutes les étapes immédiatement précédentes (règle 3).', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6717051, 671705, 'la désactivation des étapes amont ET l''activation simultanée des étapes aval', TRUE, 1),
  (6717052, 671705, 'uniquement l''activation des étapes aval, les étapes amont restant actives', FALSE, 2),
  (6717053, 671705, 'uniquement la désactivation des étapes amont', FALSE, 3),
  (6717054, 671705, 'le retour systématique à l''étape initiale', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (671706, 6717, 'Dans une structure de séquences simultanées (parallélisme), la double barre horizontale de convergence en ET assure :', 'La convergence en ET (double barre) réalise une synchronisation : conformément à la règle 2, la transition placée sous la double barre n''est validée que lorsque toutes les étapes amont des branches sont actives. Le système attend la fin de la séquence la plus lente.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6717061, 671706, 'une synchronisation : la transition n''est validée que lorsque toutes les étapes amont des branches parallèles sont actives', TRUE, 1),
  (6717062, 671706, 'un aiguillage vers une seule des branches selon une condition', FALSE, 2),
  (6717063, 671706, 'le franchissement dès qu''une seule des branches est terminée', FALSE, 3),
  (6717064, 671706, 'la suppression de l''étape initiale', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (671707, 6717, 'Quelle est la différence entre un GRAFCET de niveau 1 et un GRAFCET de niveau 2 ?', 'Le GRAFCET de niveau 1 (fonctionnel) décrit le comportement sans préjuger des solutions technologiques, en langage courant. Le niveau 2 (technologique) intègre les repères des capteurs et préactionneurs ($a$, $l_0$, $KM1$, $14M+$...). On part du niveau 1 pour aboutir au niveau 2.', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6717071, 671707, 'Le niveau 1 décrit le fonctionnement en langage courant (« que fait le système ? ») ; le niveau 2 utilise les repères des capteurs et préactionneurs (« comment ? »)', TRUE, 1),
  (6717072, 671707, 'Le niveau 1 est plus détaillé technologiquement que le niveau 2', FALSE, 2),
  (6717073, 671707, 'Le niveau 1 ne comporte pas d''étape initiale, contrairement au niveau 2', FALSE, 3),
  (6717074, 671707, 'Le niveau 1 concerne la partie opérative, le niveau 2 la partie puissance', FALSE, 4);

-- microcontroleur-pic
SET @l := (SELECT id FROM lecon WHERE slug = 'microcontroleur-pic' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'si-ste'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (6718, NULL, @l, 'QCM — Le microcontroleur PIC 16F84', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (671801, 6718, 'Qu''est-ce qui distingue un microcontrôleur d''un simple microprocesseur ?', 'Le microprocesseur ne contient que le CPU et nécessite des circuits externes (mémoires, interfaces). Le microcontrôleur, lui, intègre tout l''ensemble (CPU, mémoires, ports d''E/S, périphériques) : il est autonome et adapté à la commande d''un système embarqué.', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6718011, 671801, 'Le microcontrôleur réunit sur une seule puce le CPU, les mémoires et les ports d''E/S : il est autonome.', TRUE, 1),
  (6718012, 671801, 'Le microcontrôleur ne contient que l''unité de calcul et a besoin de circuits extérieurs.', FALSE, 2),
  (6718013, 671801, 'Le microcontrôleur ne possède aucune mémoire interne.', FALSE, 3),
  (6718014, 671801, 'Le microcontrôleur ne peut pas être programmé.', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (671802, 6718, 'Le PIC 16F84 dispose de combien de broches d''entrée-sortie, et comment sont-elles réparties ?', 'Le 16F84 (boîtier 18 broches) possède $13$ broches d''E/S : le PORTA en compte $5$ (RA0 à RA4) et le PORTB en compte $8$ (RB0 à RB7). Les autres broches servent à l''alimentation, à l''oscillateur et au reset.', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6718021, 671802, '$13$ broches : $5$ sur le PORTA (RA0 à RA4) et $8$ sur le PORTB (RB0 à RB7).', TRUE, 1),
  (6718022, 671802, '$18$ broches : $9$ sur le PORTA et $9$ sur le PORTB.', FALSE, 2),
  (6718023, 671802, '$8$ broches : toutes sur le PORTB.', FALSE, 3),
  (6718024, 671802, '$16$ broches : $8$ sur le PORTA et $8$ sur le PORTB.', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (671803, 6718, 'Dans un registre de direction TRIS, que signifie un bit mis à $1$ ?', 'Pour chaque bit d''un registre TRIS : un $1$ donne une entrée (le « 1 » ressemble à un I d''Input) et un $0$ donne une sortie (le « 0 » ressemble à un O d''Output). Le registre TRIS fixe seulement le sens ; l''état logique se lit ou s''écrit dans PORTA/PORTB.', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6718031, 671803, 'La broche correspondante est configurée en entrée (Input).', TRUE, 1),
  (6718032, 671803, 'La broche correspondante est configurée en sortie (Output).', FALSE, 2),
  (6718033, 671803, 'La broche correspondante est désactivée.', FALSE, 3),
  (6718034, 671803, 'La broche correspondante est mise à l''état logique haut.', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (671804, 6718, 'On veut utiliser RB0 en sortie (commande d''une LED) et toutes les autres broches du PORTB en entrée. Quelle valeur faut-il charger dans TRISB ?', 'RB0 en sortie impose le bit $0$ à $0$ ; les sept autres broches en entrée imposent leurs bits à $1$. On obtient donc $11111110$, c''est-à-dire $\text{0xFE}$.', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6718041, 671804, '$11111110$ (soit $\text{0xFE}$)', TRUE, 1),
  (6718042, 671804, '$00000001$ (soit $\text{0x01}$)', FALSE, 2),
  (6718043, 671804, '$11111111$ (soit $\text{0xFF}$)', FALSE, 3),
  (6718044, 671804, '$00000000$ (soit $\text{0x00}$)', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (671805, 6718, 'Le PIC est cadencé par un quartz de fréquence $f = 4\ \text{MHz}$. Quelle est la période du signal d''horloge ?', 'La période est l''inverse de la fréquence : $T = \dfrac{1}{4\times 10^{6}} = 0{,}25\ \mu\text{s}$. Une instruction simple dure $4$ périodes, soit $1\ \mu\text{s}$ : le PIC exécute environ un million d''instructions par seconde.', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6718051, 671805, '$T = \dfrac{1}{f} = 0{,}25\ \mu\text{s}$', TRUE, 1),
  (6718052, 671805, '$T = \dfrac{1}{f} = 4\ \mu\text{s}$', FALSE, 2),
  (6718053, 671805, '$T = f = 4\ \text{MHz}$', FALSE, 3),
  (6718054, 671805, '$T = \dfrac{1}{f} = 1\ \mu\text{s}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (671806, 6718, 'Dans un organigramme, quel symbole représente un test (question à réponse oui/non) qui oriente le déroulement du programme ?', 'Le losange représente un test (condition à réponse oui/non). Le rectangle représente une action, l''ovale le début ou la fin du programme, et les flèches l''enchaînement des opérations.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6718061, 671806, 'Le losange', TRUE, 1),
  (6718062, 671806, 'Le rectangle', FALSE, 2),
  (6718063, 671806, 'L''ovale', FALSE, 3),
  (6718064, 671806, 'La flèche', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (671807, 6718, 'À la mise sous tension du PIC, dans quel état sont configurées les broches d''entrée-sortie par défaut ?', 'Au démarrage, tous les bits des registres TRIS valent $1$ : les broches sont en entrée. C''est pourquoi il faut toujours configurer les directions dans la phase d''initialisation, avant d''utiliser un port en sortie.', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6718071, 671807, 'En entrée (registres TRIS à $1$) : il faut donc configurer les directions au début du programme.', TRUE, 1),
  (6718072, 671807, 'En sortie (registres TRIS à $0$).', FALSE, 2),
  (6718073, 671807, 'À l''état logique haut.', FALSE, 3),
  (6718074, 671807, 'Désactivées tant qu''aucun quartz n''est branché.', FALSE, 4);

-- systemes-asservis
SET @l := (SELECT id FROM lecon WHERE slug = 'systemes-asservis' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'si-ste'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (6719, NULL, @l, 'QCM — Les systemes asservis', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (671901, 6719, 'Quelle est la caractéristique fondamentale d''un système en boucle fermée par rapport à un système en boucle ouverte ?', 'En boucle fermée, la sortie est mesurée par un capteur puis renvoyée vers l''entrée. Le comparateur calcule l''écart entre la consigne et la mesure, ce qui permet de corriger automatiquement les effets des perturbations : c''est le principe du retour d''information (rétroaction).', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6719011, 671901, 'La sortie est mesurée puis comparée à la consigne pour corriger automatiquement l''écart.', TRUE, 1),
  (6719012, 671901, 'La commande est élaborée sans jamais tenir compte de la valeur réelle de la sortie.', FALSE, 2),
  (6719013, 671901, 'Le signal circule en un seul sens, de l''entrée vers la sortie, sans retour.', FALSE, 3),
  (6719014, 671901, 'Le système ne comporte ni capteur ni comparateur.', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (671902, 6719, 'Dans un système asservi, le comparateur élabore le signal d''écart $\varepsilon$. Quelle relation le définit ?', 'L''écart est la différence entre la consigne $E$ et le signal de mesure $M$ renvoyé par le capteur : $\varepsilon = E - M$. Sur le schéma-blocs, le comparateur est un cercle sommateur où la consigne porte le signe $+$ et le retour le signe $-$.', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6719021, 671902, '$\varepsilon = E - M$', TRUE, 1),
  (6719022, 671902, '$\varepsilon = E + M$', FALSE, 2),
  (6719023, 671902, '$\varepsilon = E \times M$', FALSE, 3),
  (6719024, 671902, '$\varepsilon = M - E$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (671903, 6719, 'La fonction de transfert $H(p)$ d''un bloc linéaire est définie par :', 'La fonction de transfert est le rapport entre la grandeur de sortie $S$ et la grandeur d''entrée $E$ (exprimées avec la variable de Laplace $p$) : $H(p)=\dfrac{S(p)}{E(p)}$. Elle permet de calculer la sortie par $S(p)=H(p)\,E(p)$.', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6719031, 671903, '$H(p) = \dfrac{S(p)}{E(p)}$', TRUE, 1),
  (6719032, 671903, '$H(p) = \dfrac{E(p)}{S(p)}$', FALSE, 2),
  (6719033, 671903, '$H(p) = S(p) \times E(p)$', FALSE, 3),
  (6719034, 671903, '$H(p) = S(p) - E(p)$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (671904, 6719, 'Deux blocs de fonctions de transfert $H_1$ et $H_2$ placés en série (cascade) sont équivalents à un bloc unique de fonction de transfert :', 'Pour deux blocs en cascade, la sortie du premier est l''entrée du second, donc les fonctions de transfert se multiplient : $H = H_1 \times H_2$.', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6719041, 671904, '$H = H_1 \times H_2$', TRUE, 1),
  (6719042, 671904, '$H = H_1 + H_2$', FALSE, 2),
  (6719043, 671904, '$H = \dfrac{H_1}{H_2}$', FALSE, 3),
  (6719044, 671904, '$H = \dfrac{1}{H_1\,H_2}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (671905, 6719, 'Pour une boucle fermée de chaîne directe $A$ et de chaîne de retour $B$, la fonction de transfert globale $H = \dfrac{S}{E}$ s''écrit :', 'C''est la formule fondamentale de la boucle fermée à retour négatif : $H = \dfrac{A}{1 + AB}$, où $A$ est la fonction de transfert de la chaîne directe et $B$ celle de la chaîne de retour. Si le retour est unitaire ($B = 1$), $H = \dfrac{A}{1 + A}$.', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6719051, 671905, '$H = \dfrac{A}{1 + AB}$', TRUE, 1),
  (6719052, 671905, '$H = \dfrac{A}{1 - AB}$', FALSE, 2),
  (6719053, 671905, '$H = \dfrac{B}{1 + AB}$', FALSE, 3),
  (6719054, 671905, '$H = \dfrac{1 + AB}{A}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (671906, 6719, 'L''erreur statique $\varepsilon_s$ d''un système asservi caractérise principalement sa :', 'L''erreur statique $\varepsilon_s = \lim_{t\to\infty}(E - M)$ est l''écart qui subsiste en régime permanent. Plus elle est faible, plus le système est précis. La stabilité et la rapidité sont d''autres performances distinctes.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6719061, 671906, 'précision (écart résiduel entre la sortie et la consigne en régime permanent)', TRUE, 1),
  (6719062, 671906, 'stabilité (aptitude de la sortie à revenir vers une valeur finie)', FALSE, 2),
  (6719063, 671906, 'rapidité (vitesse à laquelle la sortie atteint sa valeur finale)', FALSE, 3),
  (6719064, 671906, 'consommation d''énergie de l''actionneur', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (671907, 6719, 'Quelle action d''un correcteur permet d''annuler l''erreur statique en régime permanent ?', 'L''action intégrale, qui dépend de l''intégrale de l''écart dans le temps, annule l''erreur statique (précision parfaite en régime permanent) mais ralentit le système. L''action P réduit l''erreur sans l''annuler ; l''action D améliore la stabilité sans agir sur l''erreur statique.', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6719071, 671907, 'l''action intégrale (I)', TRUE, 1),
  (6719072, 671907, 'l''action proportionnelle (P)', FALSE, 2),
  (6719073, 671907, 'l''action dérivée (D)', FALSE, 3),
  (6719074, 671907, 'aucune action ne peut annuler l''erreur statique', FALSE, 4);

-- transmettre-energie
SET @l := (SELECT id FROM lecon WHERE slug = 'transmettre-energie' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'si-ste'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (6720, NULL, @l, 'QCM — Transmission de l''energie mecanique', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (672001, 6720, 'La puissance mécanique transmise par un arbre en rotation est donnée par :', 'La puissance d''un arbre en rotation est le produit du couple par la vitesse angulaire : $P = C\cdot\omega$, avec $P$ en W, $C$ en N·m et $\omega$ en rad/s.', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6720011, 672001, '$P = C \cdot \omega$ (avec $C$ en N·m et $\omega$ en rad/s)', TRUE, 1),
  (6720012, 672001, '$P = \dfrac{C}{\omega}$', FALSE, 2),
  (6720013, 672001, '$P = C \cdot N$ (avec $N$ en tr/min)', FALSE, 3),
  (6720014, 672001, '$P = \dfrac{\omega}{C}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (672002, 6720, 'La vitesse de rotation $\omega$ (en rad/s) se déduit de la fréquence de rotation $N$ (en tr/min) par :', 'Un tour correspond à $2\pi$ rad et une minute à 60 s, d''où $\omega = \dfrac{2\pi N}{60}$. Pour $N = 1500$ tr/min, $\omega \approx 157$ rad/s.', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6720021, 672002, '$\omega = \dfrac{2\pi N}{60}$', TRUE, 1),
  (6720022, 672002, '$\omega = \dfrac{60 N}{2\pi}$', FALSE, 2),
  (6720023, 672002, '$\omega = 2\pi N$', FALSE, 3),
  (6720024, 672002, '$\omega = \dfrac{N}{60}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (672003, 6720, 'Un accouplement assurant une liaison permanente entre deux arbres et tolérant de légers défauts d''alignement tout en amortissant les à-coups est :', 'L''accouplement élastique comporte un élément déformable (caoutchouc, ressort) qui tolère de légers désalignements et amortit chocs et vibrations. L''accouplement rigide, lui, exige un alignement précis.', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6720031, 672003, 'un accouplement élastique', TRUE, 1),
  (6720032, 672003, 'un accouplement rigide', FALSE, 2),
  (6720033, 672003, 'un embrayage à friction', FALSE, 3),
  (6720034, 672003, 'un joint de Cardan', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (672004, 6720, 'Quelle est la principale différence entre un embrayage et un accouplement ?', 'L''embrayage est un accouplement débrayable : on peut coupler ou découpler les arbres à volonté en marche. L''accouplement, lui, rend la liaison permanente.', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6720041, 672004, 'l''embrayage permet de lier ou séparer les arbres pendant le fonctionnement, l''accouplement réalise une liaison permanente', TRUE, 1),
  (6720042, 672004, 'l''embrayage modifie la vitesse de rotation, l''accouplement non', FALSE, 2),
  (6720043, 672004, 'l''accouplement transmet un couple, l''embrayage non', FALSE, 3),
  (6720044, 672004, 'l''embrayage ne fonctionne qu''avec des arbres désalignés', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (672005, 6720, 'Dans un embrayage à friction, le couple transmissible dépend principalement :', 'Le couple transmis par adhérence vaut $C = n\,\mu\,F\,R_m$ : il croît avec le nombre de surfaces $n$, le coefficient de frottement $\mu$, l''effort presseur $F$ et le rayon moyen $R_m$.', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6720051, 672005, 'de l''effort presseur, du coefficient de frottement et du rayon moyen des surfaces', TRUE, 1),
  (6720052, 672005, 'uniquement de la vitesse de rotation du moteur', FALSE, 2),
  (6720053, 672005, 'uniquement de la tension d''alimentation', FALSE, 3),
  (6720054, 672005, 'du nombre de dents des roues en contact', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (672006, 6720, 'Le joint de Cardan est utilisé pour :', 'Le joint de Cardan relie deux arbres concourants faisant un angle, grâce à un croisillon articulé. Un seul joint introduit une irrégularité de vitesse ; on en associe deux (montage en Z ou W) pour l''homocinétie.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6720061, 672006, 'transmettre la rotation entre deux arbres dont les axes se coupent en faisant un angle', TRUE, 1),
  (6720062, 672006, 'modifier la vitesse de rotation entre l''entrée et la sortie', FALSE, 2),
  (6720063, 672006, 'débrayer le moteur de sa charge', FALSE, 3),
  (6720064, 672006, 'transformer une rotation en translation', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (672007, 6720, 'Un accouplement reçoit $P_e = 2000$ W et restitue $P_s = 1960$ W. Son rendement vaut :', '$\eta = \dfrac{P_s}{P_e} = \dfrac{1960}{2000} = 0{,}98 = 98\,\%$. Le rendement est sans unité et toujours inférieur à 1 ; les 40 W manquants sont dissipés en chaleur.', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6720071, 672007, '$\eta = 0{,}98$ soit $98\,\%$', TRUE, 1),
  (6720072, 672007, '$\eta = 1{,}02$ soit $102\,\%$', FALSE, 2),
  (6720073, 672007, '$\eta = 0{,}40$ soit $40\,\%$', FALSE, 3),
  (6720074, 672007, '$\eta = 40$ W', FALSE, 4);

-- modification-vitesse
SET @l := (SELECT id FROM lecon WHERE slug = 'modification-vitesse' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'si-ste'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (6721, NULL, @l, 'QCM — Transmission avec modification de vitesse', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (672101, 6721, 'Le rapport de transmission $r$ d''un mécanisme est défini par :', 'Par définition $r = \dfrac{n_s}{n_e} = \dfrac{\omega_s}{\omega_e}$ : c''est le rapport de la vitesse de l''arbre de sortie à celle de l''arbre d''entrée. Le facteur $\dfrac{2\pi}{60}$ se simplifie, donc $r$ a la même valeur en $\text{tr/min}$ ou en $\text{rad/s}$.', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6721011, 672101, '$r = \dfrac{n_s}{n_e} = \dfrac{\omega_s}{\omega_e}$ (vitesse de sortie sur vitesse d''entrée)', TRUE, 1),
  (6721012, 672101, '$r = \dfrac{n_e}{n_s}$ (vitesse d''entrée sur vitesse de sortie)', FALSE, 2),
  (6721013, 672101, '$r = n_e \times n_s$ (produit des deux vitesses)', FALSE, 3),
  (6721014, 672101, '$r = n_s - n_e$ (différence des vitesses)', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (672102, 6721, 'Un mécanisme de transmission tel que $r < 1$ est appelé :', 'Si $r < 1$ alors $n_s < n_e$ : la vitesse diminue, le mécanisme est un \textbf{réducteur} (cas le plus fréquent). Pour $r > 1$ c''est un multiplicateur, et pour $r = 1$ un simple accouplement.', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6721021, 672102, 'un réducteur (la vitesse de sortie est plus faible que celle d''entrée)', TRUE, 1),
  (6721022, 672102, 'un multiplicateur (la vitesse de sortie augmente)', FALSE, 2),
  (6721023, 672102, 'un accouplement (la vitesse est inchangée)', FALSE, 3),
  (6721024, 672102, 'un embrayage (il interrompt la transmission)', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (672103, 6721, 'Dans une transmission par poulies et courroie (poulie menante de diamètre $D_1$, poulie menée de diamètre $D_2$), le rapport de transmission vaut :', 'La courroie a la même vitesse linéaire sur les deux poulies, donc $\pi D_1 n_1 = \pi D_2 n_2$. On en tire $r = \dfrac{n_2}{n_1} = \dfrac{D_1}{D_2}$ : la vitesse est inversement proportionnelle au diamètre.', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6721031, 672103, '$r = \dfrac{n_2}{n_1} = \dfrac{D_1}{D_2}$', TRUE, 1),
  (6721032, 672103, '$r = \dfrac{n_2}{n_1} = \dfrac{D_2}{D_1}$', FALSE, 2),
  (6721033, 672103, '$r = \dfrac{n_2}{n_1} = D_1 \times D_2$', FALSE, 3),
  (6721034, 672103, '$r = \dfrac{n_2}{n_1} = \dfrac{D_1 + D_2}{2}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (672104, 6721, 'Pour un engrenage formé d''un pignon menant à $Z_1$ dents et d''une roue menée à $Z_2$ dents, le rapport de transmission est :', 'Deux roues qui engrènent ont le même module, donc le rapport des diamètres primitifs est égal au rapport des nombres de dents. Ainsi $r = \dfrac{n_2}{n_1} = \dfrac{Z_1}{Z_2}$ : c''est le rapport du nombre de dents de la roue menante à celui de la roue menée.', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6721041, 672104, '$r = \dfrac{Z_1}{Z_2}$', TRUE, 1),
  (6721042, 672104, '$r = \dfrac{Z_2}{Z_1}$', FALSE, 2),
  (6721043, 672104, '$r = Z_1 \times Z_2$', FALSE, 3),
  (6721044, 672104, '$r = Z_2 - Z_1$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (672105, 6721, 'Pour un train d''engrenages, le rapport de transmission global se calcule par :', 'Le rapport global d''un train est le produit des rapports de chaque étage : $r = \dfrac{Z_1 \, Z_3 \cdots}{Z_2 \, Z_4 \cdots}$, soit le produit des dents menantes divisé par le produit des dents menées.', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6721051, 672105, '$r = \dfrac{\text{produit des nombres de dents des roues menantes}}{\text{produit des nombres de dents des roues menées}}$', TRUE, 1),
  (6721052, 672105, '$r = \dfrac{\text{produit des dents des roues menées}}{\text{produit des dents des roues menantes}}$', FALSE, 2),
  (6721053, 672105, '$r = $ somme de tous les nombres de dents du train', FALSE, 3),
  (6721054, 672105, '$r = $ rapport du premier étage uniquement', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (672106, 6721, 'Dans un système roue et vis sans fin, la vis (entrée) possède $n_f$ filets et la roue (sortie) compte $Z$ dents. Le rapport de transmission vaut :', 'À chaque tour de vis, la roue avance de $n_f$ dents, donc $r = \dfrac{n_f}{Z}$. Comme $n_f$ (1 ou 2 filets) est très petit devant $Z$, le rapport est très faible : le système roue-vis assure une grande réduction et est souvent irréversible.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6721061, 672106, '$r = \dfrac{n_f}{Z}$, ce qui donne une forte réduction', TRUE, 1),
  (6721062, 672106, '$r = \dfrac{Z}{n_f}$, ce qui donne une multiplication', FALSE, 2),
  (6721063, 672106, '$r = n_f \times Z$', FALSE, 3),
  (6721064, 672106, '$r = 1$ quel que soit le nombre de filets', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (672107, 6721, 'Pour un réducteur de rendement $\eta$ transmettant une puissance, la relation entre couples d''entrée $C_e$ et de sortie $C_s$ (avec $P = C\,\omega$) s''écrit :', 'La puissance utile vaut $P_s = \eta\,P_e$, soit $C_s\,\omega_s = \eta\, C_e\,\omega_e$. Comme un réducteur diminue $\omega_s$, le couple de sortie $C_s$ est augmenté : c''est l''intérêt principal des réducteurs.', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6721071, 672107, '$C_s\,\omega_s = \eta\, C_e\,\omega_e$ : un réducteur diminue la vitesse mais augmente le couple', TRUE, 1),
  (6721072, 672107, '$C_s\,\omega_s = C_e\,\omega_e + \eta$', FALSE, 2),
  (6721073, 672107, '$C_s = C_e$ quelle que soit la réduction', FALSE, 3),
  (6721074, 672107, '$\omega_s = \omega_e$ car la puissance se conserve', FALSE, 4);

-- transformation-mouvement
SET @l := (SELECT id FROM lecon WHERE slug = 'transformation-mouvement' AND matiere_id = (SELECT id FROM matiere WHERE slug = 'si-ste'));
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
  (6722, NULL, @l, 'QCM — La transformation de mouvement', 'Vérifiez vos connaissances sur ce chapitre.', 1);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (672201, 6722, 'Qu''est-ce qui distingue un système de transformation d''un système de transmission de mouvement ?', 'Un système de transmission (engrenage, courroie, chaîne) conserve la nature du mouvement (rotation $\rightarrow$ rotation). Un système de transformation en change la nature (rotation $\rightarrow$ translation, ou translation alternative).', 1);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6722011, 672201, 'Le système de transformation change la nature du mouvement (rotation $\rightarrow$ translation), alors que la transmission la conserve', TRUE, 1),
  (6722012, 672201, 'Le système de transformation conserve la nature du mouvement, la transmission la change', FALSE, 2),
  (6722013, 672201, 'Les deux conservent toujours la nature du mouvement', FALSE, 3),
  (6722014, 672201, 'Le système de transformation ne sert qu''à augmenter la vitesse de rotation', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (672202, 6722, 'Dans un système vis-écrou de pas $p = 5\ \text{mm}$, l''écrou guidé en translation se déplace lorsque la vis effectue $n = 8$ tours. Le déplacement vaut :', 'Le déplacement de l''écrou est $x = n \cdot p = 8 \times 5 = 40\ \text{mm}$. À chaque tour, l''écrou avance d''un pas.', 2);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6722021, 672202, '$x = 40\ \text{mm}$', TRUE, 1),
  (6722022, 672202, '$x = 1{,}6\ \text{mm}$', FALSE, 2),
  (6722023, 672202, '$x = 13\ \text{mm}$', FALSE, 3),
  (6722024, 672202, '$x = 0{,}625\ \text{mm}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (672203, 6722, 'Dans un système bielle-manivelle, le maneton est à un rayon $R = 40\ \text{mm}$ de l''axe de rotation. La course du piston entre ses deux points morts est :', 'La course est égale au double du rayon de la manivelle : $C = 2R = 2 \times 40 = 80\ \text{mm}$.', 3);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6722031, 672203, '$C = 80\ \text{mm}$', TRUE, 1),
  (6722032, 672203, '$C = 40\ \text{mm}$', FALSE, 2),
  (6722033, 672203, '$C = 20\ \text{mm}$', FALSE, 3),
  (6722034, 672203, '$C = 160\ \text{mm}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (672204, 6722, 'Un pignon de diamètre primitif $d = 50\ \text{mm}$ engrène sur une crémaillère. Pour un tour complet du pignon, la crémaillère se déplace de (on prend $\pi \approx 3{,}14$) :', 'Pour un tour, la crémaillère avance du périmètre primitif du pignon : $x = \pi \cdot d = 3{,}14 \times 50 \approx 157\ \text{mm}$.', 4);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6722041, 672204, '$x \approx 157\ \text{mm}$', TRUE, 1),
  (6722042, 672204, '$x \approx 50\ \text{mm}$', FALSE, 2),
  (6722043, 672204, '$x \approx 100\ \text{mm}$', FALSE, 3),
  (6722044, 672204, '$x \approx 314\ \text{mm}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (672205, 6722, 'Un excentrique a une excentricité $e = 6\ \text{mm}$. La course du suiveur qu''il entraîne vaut :', 'La course du suiveur d''un excentrique est le double de l''excentricité : $C = 2e = 2 \times 6 = 12\ \text{mm}$.', 5);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6722051, 672205, '$C = 12\ \text{mm}$', TRUE, 1),
  (6722052, 672205, '$C = 6\ \text{mm}$', FALSE, 2),
  (6722053, 672205, '$C = 3\ \text{mm}$', FALSE, 3),
  (6722054, 672205, '$C = 36\ \text{mm}$', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (672206, 6722, 'Parmi les systèmes suivants, lequel est en général irréversible (utile pour maintenir une position sans énergie) ?', 'Le système vis-écrou est généralement irréversible : la rotation de la vis fait avancer l''écrou, mais une poussée sur l''écrou ne fait pas tourner la vis (blocage par frottement). La bielle-manivelle et le pignon-crémaillère sont réversibles.', 6);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6722061, 672206, 'Le système vis-écrou', TRUE, 1),
  (6722062, 672206, 'Le système bielle-manivelle', FALSE, 2),
  (6722063, 672206, 'Le système pignon-crémaillère', FALSE, 3),
  (6722064, 672206, 'Un engrenage cylindrique droit', FALSE, 4);
INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES (672207, 6722, 'Pour un système came-suiveur, la course (ou levée) du suiveur se calcule par :', 'La levée du suiveur est la différence entre le rayon maximal et le rayon minimal du profil de la came : $C = R_{max} - R_{min}$. Le profil permet de programmer mécaniquement la loi de mouvement.', 7);
INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
  (6722071, 672207, '$C = R_{max} - R_{min}$, différence des rayons extrêmes du profil de la came', TRUE, 1),
  (6722072, 672207, '$C = R_{max} + R_{min}$', FALSE, 2),
  (6722073, 672207, '$C = 2 \pi R_{max}$', FALSE, 3),
  (6722074, 672207, '$C = \dfrac{R_{max}}{R_{min}}$', FALSE, 4);

