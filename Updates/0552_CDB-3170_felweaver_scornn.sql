-- Felweaver Scornn 5822
UPDATE `creature` SET `position_x` = '1492.4405517578125', `position_y` = '-4753.36767578125', `position_z` = '21.102783203125', `orientation` = '4.049163818359375' WHERE (`guid` = '12209');

REPLACE INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
('12234', '5822', '1', '0', '0', '1470.1867675781250', '-4695.2880859375', '6.530092716217041015', '4.153883457183837890', '5400', '9000', '0', '0'),
('12235', '5822', '1', '0', '0', '1552.7408447265625', '-4767.2910156250', '12.93703556060791015', '3.752457857131958007', '5400', '9000', '0', '0');

REPLACE INTO `pool_creature_template` (`id`, `pool_entry`, `chance`, `description`) VALUES
('5822', '1250', '0', 'Felweaver Scornn (5822)');

REPLACE INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES
('1250', '1', 'Felweaver Scornn (5822)'); -- reuse

DELETE FROM `creature` WHERE `guid` IN (12236,191356) AND `id` = 23433;
DELETE FROM `creature` WHERE `guid` IN (2126,12234,2115,12235,8313,12177) AND `id` BETWEEN 23461 AND 23466;
DELETE FROM `creature` WHERE (`guid` BETWEEN 191350 AND 191355) AND (`id` BETWEEN 23461 AND 23466);
DELETE FROM `npc_gossip` WHERE npc_guid IN (2126,12234,2115,12235,8313,12177); -- redundant gossip menu
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(191350, 23461, 530, 1, 0, 0, -1639.09, 5262.76, -41.0123, 0.139626, 120, 120, 0, 0, 0, 0, 0, 0),
(191351, 23462, 530, 1, 0, 0, -1622.21, 5248.13, -40.7233, 2.25148, 120, 120, 0, 0, 0, 0, 0, 0),
(191352, 23463, 530, 1, 0, 0, -1638.03, 5254.09, -40.8515, 0.645772, 120, 120, 0, 0, 0, 0, 0, 0),
(191353, 23464, 530, 1, 0, 0, -1631.83, 5246.3, -40.7707, 1.16937, 120, 120, 0, 0, 0, 0, 0, 0),
(191354, 23465, 530, 1, 0, 0, -1640.65, 5274.59, -41.0834, 5.86431, 120, 120, 0, 0, 0, 0, 0, 0),
(191355, 23466, 530, 1, 0, 0, -1624.76, 5272.5, -40.8384, 3.83972, 120, 120, 0, 0, 0, 0, 0, 0),
(191356, 23433, 530, 1, 0, 0, -1617.01, 5264.89, -40.6982, 3.21141, 120, 120, 0, 0, 0, 0, 0, 0);

