-- Align Rare Mob Entry Pooling with classic-db
DELETE FROM `pool_creature_template` WHERE `id` IN (599,2038,2186,2453,3056,7017,14222,14344,16854,16855,22062);
INSERT INTO `pool_creature_template` (`id`, `pool_entry`, `chance`, `description`) VALUES
(599, 1202, 0, 'Marisa du''Paige (599)'),
(2038, 1201, 0, 'Lord Melenas (2038)'),
(2186, 1214, 0, 'Carnivous the Breaker - 2186'),
(2453, 1003, 0, 'Lo''Grosh (2453)'),
(3056, 1200, 0, 'Ghost Howl (3056)'),
(7017, 1215, 0, 'Lord Sinslayer - 7017'),
(14222, 1005, 0, 'Araga (14222)'),
(14344, 1212, 0, 'Mongress (14344)'),

(16854, 1196, 0, 'Eldinarcus (16854)'),
(16855, 1197, 0, 'Tregla (16855)'),
(22062, 1198, 0, 'Dr. Whitherlimb (22062)');

DELETE FROM `pool_template` WHERE `entry` IN (1003,1005,1196,1197,1198,1200,1201,1202,1212,1214,1215,25521,25522,1075,1076,1077);
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES
(1003, 1, 'Lo''Grosh (2453)'),
(1005, 1, 'Araga (14222)'),
(1200, 1, 'Ghost Howl (3056)'),
(1201, 1, 'Lord Melenas (2038)'),
(1202, 1, 'Marisa du''Paige (599)'),
(1212, 1, 'Mongress (14344)'),
(1214, 1, 'Carnivous the Breaker - 2186'),
(1215, 1, 'Lord Sinslayer - 7017'),

(1196, 1, 'Eldinarcus (16854)'),
(1197, 1, 'Tregla (16855)'),
(1198, 1, 'Dr. Whitherlimb (22062)');

