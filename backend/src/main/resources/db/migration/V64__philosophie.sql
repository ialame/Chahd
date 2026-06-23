-- Philosophie (الفلسفة) : matière déjà seedée (V2, id 6) mais sans contenu.
-- Programme du 2 Bac en arabe, organisé en 4 modules (مجزوءات) + méthodologie.
UPDATE matiere
   SET couleur = '#0891b2',
       icone = 'ف',
       description = 'Les quatre modules du programme (en arabe) : la condition humaine, la connaissance, la politique et la morale, plus la méthodologie de la dissertation.'
 WHERE slug = 'philosophie';

SET @m := (SELECT id FROM matiere WHERE slug = 'philosophie');

INSERT INTO lecon (matiere_id, slug, titre, ordre) VALUES
 -- مجزوءة الوضع البشري
 (@m, 'la-personne',         'الشخص', 1),
 (@m, 'autrui',              'الغير', 2),
 (@m, 'l-histoire',          'التاريخ', 3),
 -- مجزوءة المعرفة
 (@m, 'theorie-experience',  'النظرية والتجربة', 4),
 (@m, 'la-verite',           'الحقيقة', 5),
 -- مجزوءة السياسة
 (@m, 'l-etat',              'الدولة', 6),
 (@m, 'droit-justice',       'الحق والعدالة', 7),
 (@m, 'la-violence',         'العنف', 8),
 -- مجزوءة الأخلاق
 (@m, 'le-devoir',           'الواجب', 9),
 (@m, 'la-liberte',          'الحرية', 10),
 (@m, 'le-bonheur',          'السعادة', 11),
 -- منهجية
 (@m, 'methodologie',        'منهجية الكتابة الفلسفية', 12);
