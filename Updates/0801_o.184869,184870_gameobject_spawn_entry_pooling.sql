-- Add gameobject_spawn_entry pooling for Baa''ri Tablet Fragment (184869,184870) *_spawn_entry pooling only works with direct guid pooling into pool_gameobject / pool_creature tables
UPDATE `gameobject_template` SET `ExtraFlags` = `ExtraFlags`|2 WHERE `entry` IN (184869,184870); -- GAMEOBJECT_EXTRA_FLAG_DYNGUID

-- Example Case for pool_gameobject + gameobject_spawn_entry
REPLACE INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (13993, 15, 'Shadowmoon Valley - Baa''ri Tablet Fragment (184869,184870)');
REPLACE INTO `pool_gameobject` (`guid`, `pool_entry`, `description`) SELECT `guid` AS `guid`, 13993, 'Shadowmoon Valley - Baa''ri Tablet Fragment (184869,184870)' FROM `gameobject_spawn_entry` WHERE `gameobject_spawn_entry`.`entry` IN (184869,184870);

