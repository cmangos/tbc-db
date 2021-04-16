-- confirmed to drop square root of 0
UPDATE `creature_template` SET `LootId` = 0 WHERE `entry` = 9453;
DELETE FROM creature_loot_template WHERE entry IN(9453);

