-- Add OOC channel for Deathholme Necromancer in right zigurat
-- https://github.com/cmangos/tbc-db/issues/1013
UPDATE `creature` SET `MovementType` = 2 WHERE `guid` IN (84495, 84494, 82827);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime` ,`script_id`) VALUES
(82827, 1, 6301.09, -6257.49, 77.897, 0.715585, 2000, 0),
(82827, 2, 6301.09, -6257.49, 77.897, 0.715585, 30000, 1631701),
(84494, 1, 6300.62, -6239.95, 77.8968, 5.5676, 2000, 0),
(84494, 2, 6300.62, -6239.95, 77.8968, 5.5676, 30000, 1631701),
(84495, 1, 6318.3, -6239.6, 77.814, 3.9632, 2000, 0),
(84495, 2, 6318.3, -6239.6, 77.814, 3.9632, 30000, 1631701);

