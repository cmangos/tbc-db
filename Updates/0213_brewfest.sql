-- Brewfest

-- Dark Iron Herald 24536
-- -5151.64, -605.771, 398.586, 1.91986, 0
-- -5151.44, -606.334, 398.6, 2.28638, 0
-- 1198.18, -4295.07, 21.318, 2.28638, 1
-- 1200.25, -4294.45, 21.2866, 1.91986, 1
UPDATE `creature_template` SET `UnitFlags` = 33587456 WHERE `entry` = 24536;
DELETE FROM `creature` WHERE `id` = 24536 AND `guid` IN (101496,101497);
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
(101496, 24536, 0, 1, -5151.44, -606.334, 398.6, 2.28638, 120, 120, 0, 0),
(101497, 24536, 1, 1, 1198.18, -4295.07, 21.318, 2.28638, 120, 120, 0, 0);
DELETE FROM `game_event_creature` WHERE `guid` IN (101496,101497);
INSERT INTO `game_event_creature` (`guid`, `event`) VALUES (101496, 26),(101497, 26);

