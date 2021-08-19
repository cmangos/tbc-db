-- Marsh Lurker 18136 & Marsh Dredger 18137 in Funggor Cavern in Zangarmarsh Share Spawn Node
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid` AS `guid`, 18136 FROM `creature` WHERE `creature`.`id` = 18136;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid` AS `guid`, 18137 FROM `creature` WHERE `creature`.`id` = 18136;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid` AS `guid`, 18136 FROM `creature` WHERE `creature`.`id` = 18137;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid` AS `guid`, 18137 FROM `creature` WHERE `creature`.`id` = 18137;
UPDATE `creature` SET `id` = 0 WHERE `id` IN (18136,18137);

