-- Creature Pooling For The Rustmaul Dig Site | Devildog4355

DELETE FROM creature WHERE guid BETWEEN 160487 AND 301690 AND id=4131;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(160487,4131,1,1,0,0,-6472.31,-3243.75,-112.858,5.96223,300,2,0,1279,0,0,1),
(160488,4131,1,1,0,0,-6484.09,-3229.87,-112.36,3.42467,300,2,0,1279,0,0,1),
(160489,4131,1,1,0,0,-6491.48,-3245.93,-111.926,6.10384,300,2,0,1279,0,0,1),
(160490,4131,1,1,0,0,-6485.84,-3254.02,-113.549,0.814107,300,2,0,1279,0,0,1),
(160491,4131,1,1,0,0,-6488.36,-3323.74,-94.1832,3.46016,300,2,0,1279,0,0,1),
(160492,4131,1,1,0,0,-6462.86,-3297.58,-104.92,1.41244,300,2,0,1279,0,0,1),
(160493,4131,1,1,0,0,-6509.77,-3305.15,-93.6946,1.12336,300,2,0,1279,0,0,1),
(160494,4131,1,1,0,0,-6496.03,-3325.49,-95.3003,2.63545,300,2,0,1279,0,0,1);

DELETE FROM pool_template WHERE entry BETWEEN 21317 AND 21325;
INSERT INTO `pool_template` (entry, max_limit, Description) VALUES
(21317, 1, "The Rustmaul Dig Site 1"),
(21318, 1, "The Rustmaul Dig Site 2"),
(21319, 1, "The Rustmaul Dig Site 3"),
(21320, 1, "The Rustmaul Dig Site 4"),
(21321, 1, "The Rustmaul Dig Site 5"),
(21322, 1, "The Rustmaul Dig Site 6"),
(21323, 1, "The Rustmaul Dig Site 7"),
(21324, 1, "The Rustmaul Dig Site 8"),
(21325, 1, "The Rustmaul Dig Site 9");

DELETE FROM pool_creature WHERE pool_entry BETWEEN 21317 AND 21325;
INSERT INTO `pool_creature` (guid, pool_entry, chance, description) VALUES
(21329, 21317, 0, "Silithid Drone 1"),
(21301, 21317, 0, "Silithid Invader 1"),
(21317, 21318, 0, "Silithid Drone 2"),
(160487, 21318, 0, "Silithid Invader 2"),
(21314, 21319, 0, "Silithid Drone 3"),
(160488, 21319, 0, "Silithid Invader 3"),
(21318, 21320, 0, "Silithid Drone 4"),
(160489, 21320, 0, "Silithid Invader 4"),
(21324, 21321, 0, "Silithid Drone 5"),
(160490, 21321, 0, "Silithid Invader 5"),
(21325, 21322, 0, "Silithid Drone 6"),
(160491, 21322, 0, "Silithid Invader 6"),
(21323, 21323, 0, "Silithid Drone 7"),
(160492, 21323, 0, "Silithid Invader 7"),
(21330, 21324, 0, "Silithid Drone 8"),
(160493, 21324, 0, "Silithid Invader 8"),
(21327, 21325, 0, "Silithid Drone 9"),
(160494, 21325, 0, "Silithid Invader 9");


