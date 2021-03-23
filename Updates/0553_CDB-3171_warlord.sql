
UPDATE `creature` SET `position_x` = '-918.927978515625', `position_y` = '-4494.03173828125', `position_z` = '29.67312431335449218', `orientation` = '3.019419670104980468' WHERE (`guid` = '12260');

REPLACE INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
('12268', '5808', '1', '0', '0', '-976.3066406250000', '-4417.45800781250', '29.34746742248535156', '3.124139308929443359', '3600', '7200', '0', '0', '176', '0', '0', '0'),
('12269', '5808', '1', '0', '0', '-1032.831787109375', '-4600.00146484375', '25.62066650390625000', '6.248278617858886718', '3600', '7200', '0', '0', '176', '0', '0', '0');

REPLACE INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES
('1253', '1', 'Warlord Kolkanis (5808)');

REPLACE INTO `pool_creature_template` (`id`, `pool_entry`, `chance`, `description`) VALUES
('5808', '1253', '0', 'Warlord Kolkanis (5808)');

DELETE FROM `creature` WHERE `guid` BETWEEN 12268 AND 12271 AND `id` IN (24437,24369,24370);
DELETE FROM `creature` WHERE `guid` BETWEEN 191357 AND 191360 AND `id` IN (24437,24369,24370);
DELETE FROM `npc_gossip` WHERE `npc_guid` = 12270; -- redundant
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(191357, 24437, 530, 1, 0, 0, -1803.88, 5140.38, -40.2092, 1.50098, 120, 120, 0, 0, 0, 0, 0, 2),
(191358, 24437, 530, 1, 0, 0, -1788.74, 5149.57, -40.2092, 2.33874, 120, 120, 0, 0, 0, 0, 0, 2),
(191359, 24369, 530, 1, 0, 0, -1793.1, 5153.81, -40.1258, 2.87979, 120, 120, 0, 0, 0, 0, 0, 0),
(191360, 24370, 530, 1, 0, 0, -1798.24, 5149.04, -40.1258, 1.74533, 120, 120, 0, 0, 0, 0, 0, 0);

DELETE FROM `creature_movement` WHERE `id` IN  (12268,12269,191357,191358);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `script_id`, `comment`) VALUES
(191357, 1, -1803.88, 5140.38, -40.2092, 1.50098, 1000, 2443712, NULL),
(191358, 1, -1788.74, 5149.57, -40.2092, 2.33874, 1000, 2443701, NULL);