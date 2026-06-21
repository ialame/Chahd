-- QCM du chapitre « Mouvement des satellites et des planètes » (notions + applications).
SET SESSION sql_mode = CONCAT(@@sql_mode, ',NO_BACKSLASH_ESCAPES');
SET @l := (SELECT id FROM lecon WHERE slug = 'satellites-planetes'
           AND matiere_id = (SELECT id FROM matiere WHERE slug = 'physique-chimie'));

-- ===== notions (2125) =====
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
 (2125, NULL, @l, 'QCM — Satellites et planètes : notions', 'Gravitation, orbite, lois de Kepler.', 1);

INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES
 (212501,2125,'La force de gravitation entre deux corps vaut :','$F = G\,\dfrac{m_A\,m_B}{d^{2}}$.',1),
 (212502,2125,'La force de gravitation est :','Attractive.',2),
 (212503,2125,'Pour un satellite en orbite circulaire, la gravitation joue le rôle de :','Force centripète.',3),
 (212504,2125,'La vitesse d''un satellite en orbite circulaire est :','$v = \sqrt{\dfrac{GM}{r}}$.',4),
 (212505,2125,'D''après la 1ʳᵉ loi de Kepler, les planètes décrivent :','Des ellipses dont le Soleil est un foyer.',5),
 (212506,2125,'La 2ᵈᵉ loi de Kepler est :','La loi des aires.',6),
 (212507,2125,'La 3ᵉ loi de Kepler s''écrit :','$\dfrac{T^{2}}{a^{3}} = \text{constante}$.',7),
 (212508,2125,'Un satellite géostationnaire a une période de :','24 heures.',8);

INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
 (2125011,212501,'$G\,\dfrac{m_A\,m_B}{d^{2}}$',TRUE,1),(2125012,212501,'$G\,\dfrac{m_A\,m_B}{d}$',FALSE,2),(2125013,212501,'$G\,m_A\,m_B\,d^{2}$',FALSE,3),(2125014,212501,'$\dfrac{d^{2}}{G\,m_A\,m_B}$',FALSE,4),
 (2125021,212502,'attractive',TRUE,1),(2125022,212502,'répulsive',FALSE,2),(2125023,212502,'nulle',FALSE,3),(2125024,212502,'tantôt attractive tantôt répulsive',FALSE,4),
 (2125031,212503,'force centripète',TRUE,1),(2125032,212503,'force centrifuge',FALSE,2),(2125033,212503,'force motrice',FALSE,3),(2125034,212503,'force de frottement',FALSE,4),
 (2125041,212504,'$\sqrt{\dfrac{GM}{r}}$',TRUE,1),(2125042,212504,'$\dfrac{GM}{r}$',FALSE,2),(2125043,212504,'$\sqrt{\dfrac{r}{GM}}$',FALSE,3),(2125044,212504,'$\sqrt{GMr}$',FALSE,4),
 (2125051,212505,'des ellipses dont le Soleil est un foyer',TRUE,1),(2125052,212505,'des cercles centrés sur le Soleil',FALSE,2),(2125053,212505,'des droites',FALSE,3),(2125054,212505,'des paraboles',FALSE,4),
 (2125061,212506,'la loi des aires',TRUE,1),(2125062,212506,'la loi des orbites',FALSE,2),(2125063,212506,'la loi des périodes',FALSE,3),(2125064,212506,'la loi de la gravitation',FALSE,4),
 (2125071,212507,'$\dfrac{T^{2}}{a^{3}} = \text{cste}$',TRUE,1),(2125072,212507,'$\dfrac{T}{a^{2}} = \text{cste}$',FALSE,2),(2125073,212507,'$T^{2} = a^{2}$',FALSE,3),(2125074,212507,'$\dfrac{a^{2}}{T^{3}} = \text{cste}$',FALSE,4),
 (2125081,212508,'24 heures',TRUE,1),(2125082,212508,'1 heure',FALSE,2),(2125083,212508,'1 an',FALSE,3),(2125084,212508,'12 heures',FALSE,4);

-- ===== applications (2126) =====
INSERT INTO quiz (id, chapitre_id, lecon_id, titre, description, ordre) VALUES
 (2126, NULL, @l, 'QCM — Satellites et planètes : applications', 'Gravitation, vitesse, 3ᵉ loi de Kepler.', 2);

INSERT INTO question (id, quiz_id, enonce, explication, ordre) VALUES
 (212601,2126,'Si la distance entre deux corps double, la force de gravitation est :','$F \propto \dfrac{1}{d^{2}}$ : divisée par $4$.',1),
 (212602,2126,'D''après $v = \sqrt{GM/r}$, si le rayon de l''orbite augmente, la vitesse :','Diminue.',2),
 (212603,2126,'D''après la 3ᵉ loi, si le rayon $r$ est multiplié par $4$, la période $T$ est multipliée par :','$T^{2} \propto r^{3}$ : $T^{2}\times64$, donc $T\times8$.',3),
 (212604,2126,'La vitesse d''un satellite en orbite circulaire dépend-elle de sa masse ?','Non, $v = \sqrt{GM/r}$ ne dépend pas de $m$.',4),
 (212605,2126,'Un satellite géostationnaire orbite dans le plan :','Équatorial.',5),
 (212606,2126,'L''unité de la constante de gravitation $G$ est :','$\mathrm{N\cdot m^{2}\cdot kg^{-2}}$.',6),
 (212607,2126,'Deux satellites de rayons $r$ et $4r$ : le rapport de leurs périodes $T_2/T_1$ vaut :','$\left(\dfrac{4r}{r}\right)^{3/2} = 4^{1{,}5} = 8$.',7),
 (212608,2126,'La force gravitationnelle est dirigée :','Selon la droite joignant les deux corps.',8);

INSERT INTO choix (id, question_id, texte, correct, ordre) VALUES
 (2126011,212601,'divisée par 4',TRUE,1),(2126012,212601,'divisée par 2',FALSE,2),(2126013,212601,'multipliée par 4',FALSE,3),(2126014,212601,'inchangée',FALSE,4),
 (2126021,212602,'diminue',TRUE,1),(2126022,212602,'augmente',FALSE,2),(2126023,212602,'ne change pas',FALSE,3),(2126024,212602,'s''annule',FALSE,4),
 (2126031,212603,'8',TRUE,1),(2126032,212603,'4',FALSE,2),(2126033,212603,'64',FALSE,3),(2126034,212603,'16',FALSE,4),
 (2126041,212604,'non',TRUE,1),(2126042,212604,'oui',FALSE,2),(2126043,212604,'seulement si m est grande',FALSE,3),(2126044,212604,'seulement en orbite haute',FALSE,4),
 (2126051,212605,'équatorial',TRUE,1),(2126052,212605,'polaire',FALSE,2),(2126053,212605,'quelconque',FALSE,3),(2126054,212605,'vertical',FALSE,4),
 (2126061,212606,'$\mathrm{N\cdot m^{2}\cdot kg^{-2}}$',TRUE,1),(2126062,212606,'$\mathrm{N\cdot kg}$',FALSE,2),(2126063,212606,'$\mathrm{m/s^{2}}$',FALSE,3),(2126064,212606,'$\mathrm{kg\cdot m^{2}}$',FALSE,4),
 (2126071,212607,'8',TRUE,1),(2126072,212607,'4',FALSE,2),(2126073,212607,'2',FALSE,3),(2126074,212607,'16',FALSE,4),
 (2126081,212608,'selon la droite joignant les deux corps',TRUE,1),(2126082,212608,'perpendiculairement à cette droite',FALSE,2),(2126083,212608,'tangente à l''orbite',FALSE,3),(2126084,212608,'vers l''extérieur',FALSE,4);
