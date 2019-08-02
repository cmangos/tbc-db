DELETE FROM `pool_creature` WHERE `guid` IN (26081,99461);
DELETE FROM `pool_template` WHERE `entry` IN (272);
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES
(1251, 1, 'Snagglespear (5786)');

REPLACE INTO `pool_creature_template` (`id`, `pool_entry`, `chance`, `description`) VALUES
(5786, 1251, 0, 'Snagglespear (5786)');

