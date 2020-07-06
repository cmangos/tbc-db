-- Improve NPCs in Plaguewood Zigurrats
-- Add alternate NPC 8555 (Crypt Fiend) and NPC 8551 (Dark Summoner) spawns to NPC 8553 (Necromancer) in the Plaguewood Zigurrats
UPDATE `creature` SET `position_x` = 2814.52, `position_y` = -3757.79, `position_z` = 122.507, `orientation` = 3.35103 WHERE `guid` = 91940 AND `id` = 8553;
UPDATE `creature` SET `position_x` = 2855.31, `position_y` = -3232.34, `position_z` = 134.27, `orientation` = 6.26573 WHERE `guid` = 91946 AND `id` = 8553;
UPDATE `creature` SET `position_x` = 3135.96, `position_y` = -3867.93, `position_z` = 135.447, `orientation` = 3.33358 WHERE `guid` = 92235 AND `id` = 8553;
UPDATE `creature` SET `position_x` = 3185.53, `position_y` = -3456.8, `position_z` = 165.529, `orientation` = 4.13643 WHERE `guid` = 92264 AND `id` = 8553;

REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid` AS `guid`, 8551 FROM `creature` WHERE `creature`.`id` = 8553;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid` AS `guid`, 8553 FROM `creature` WHERE `creature`.`id` = 8553;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid` AS `guid`, 8555 FROM `creature` WHERE `creature`.`id` = 8553;
UPDATE `creature` SET `id` = 0 WHERE `id` = 8553 AND `guid` IN (91940,91946,92235,92264); -- 4 spawns total

DELETE FROM dbscripts_on_creature_movement WHERE id=855301;
INSERT INTO dbscripts_on_creature_movement VALUES
(855301, 5000, 0, 15, 8734, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cast Aura Blackfathom Channeling');

-- Keep correct orientation even when using static WP to trigger script
UPDATE creature_movement SET orientation=3.35103 WHERE id=91940;
UPDATE creature_movement SET orientation=6.26573 WHERE id=91946;
UPDATE creature_movement SET orientation=3.33358 WHERE id=92235;
UPDATE creature_movement SET orientation=4.13643 WHERE id=92264;

-- Add visual channeling aura through addon
DELETE FROM creature_addon WHERE guid IN (91940, 91946, 92235, 92264);
INSERT INTO creature_addon VALUES
(91940, 0, 0, 1, 16, 0, 0, '8734'),
(91946, 0, 0, 1, 16, 0, 0, '8734'),
(92235, 0, 0, 1, 16, 0, 0, '8734'),
(92264, 0, 0, 1, 16, 0, 0, '8734');

