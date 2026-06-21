-- Ossature des chapitres de Physique-Chimie (2 Bac PC). Contenu rempli ensuite.
SET @m := (SELECT id FROM matiere WHERE slug = 'physique-chimie');

INSERT INTO lecon (matiere_id, slug, titre, ordre) VALUES
 -- Physique
 (@m, 'ondes-mecaniques-progressives', 'Les ondes mécaniques progressives', 1),
 (@m, 'onde-lumineuse',                'Propagation d''une onde lumineuse', 2),
 (@m, 'decroissance-radioactive',      'La décroissance radioactive', 3),
 (@m, 'noyaux-masse-energie',          'Noyaux, masse et énergie', 4),
 (@m, 'dipole-rc',                     'Le dipôle RC', 5),
 (@m, 'dipole-rl',                     'Le dipôle RL', 6),
 (@m, 'oscillations-libres-rlc',       'Oscillations libres dans un circuit RLC', 7),
 (@m, 'oscillations-forcees-rlc',      'Oscillations forcées — résonance', 8),
 (@m, 'modulation-amplitude',          'Modulation d''amplitude', 9),
 (@m, 'lois-newton',                   'Les lois de Newton', 10),
 (@m, 'chute-verticale',               'Chute verticale dans un fluide', 11),
 (@m, 'mouvements-plans',              'Mouvements plans dans des champs uniformes', 12),
 (@m, 'satellites-planetes',           'Mouvement des satellites et des planètes', 13),
 (@m, 'systemes-oscillants',           'Les systèmes mécaniques oscillants', 14),
 -- Chimie
 (@m, 'transformations-rapides-lentes', 'Transformations rapides et lentes', 15),
 (@m, 'equilibres-chimiques',           'Les équilibres chimiques', 16),
 (@m, 'acide-base',                     'Réactions acide-base', 17),
 (@m, 'piles-electrolyse',              'Piles et électrolyse', 18),
 (@m, 'esterification-hydrolyse',       'Estérification et hydrolyse', 19);
