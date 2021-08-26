-- Add gameobject_spawn_entry pooling for Bogblosom (185497,185500) *_spawn_entry pooling only works with direct guid pooling into pool_gameobject / pool_creature tables
UPDATE `gameobject_template` SET `ExtraFlags` = `ExtraFlags`|2 WHERE `entry` IN (185497,185500); -- GAMEOBJECT_EXTRA_FLAG_DYNGUID
DELETE FROM `gameobject` WHERE `id` = 185500;

REPLACE INTO `gameobject_spawn_entry` (`guid`, `entry`) SELECT `guid` AS `guid`, 185497 FROM `gameobject` WHERE `gameobject`.`id` = 185497;
REPLACE INTO `gameobject_spawn_entry` (`guid`, `entry`) SELECT `guid` AS `guid`, 185500 FROM `gameobject` WHERE `gameobject`.`id` = 185497;
UPDATE `gameobject` SET `id` = 0 WHERE `id` IN (185497);

-- (14000, 82, 'Zangarmarsh - Bogblossom (185497)'); -- 246 max
UPDATE `pool_template` SET `max_limit` = 123, `description` = 'Zangarmarsh - Bogblossom (185497,185500)' WHERE `entry` = 14000;
DELETE FROM `pool_gameobject_template` WHERE `id` = 185497;
REPLACE INTO `pool_gameobject` (`guid`, `pool_entry`, `description`) SELECT `guid` AS `guid`, 14000, 'Zangarmarsh - Bogblossom (185497,185500)' FROM `gameobject_spawn_entry` WHERE `gameobject_spawn_entry`.`entry` IN (185497,185500);

