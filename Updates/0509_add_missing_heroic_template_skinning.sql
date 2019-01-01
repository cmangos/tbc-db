-- Add missing skinning/herbalism loot for heroic templates
UPDATE `creature_template` SET `SkinningLootId` = 70063 WHERE `entry` = 20168; -- 18105	Ghaz'an
UPDATE `creature_template` SET `SkinningLootId` = 80001 WHERE `entry` = 20169; -- 17770	Hungarfen
UPDATE `creature_template` SET `SkinningLootId` = 70066 WHERE `entry` = 20737; -- 17881	Aeonus
UPDATE `creature_template` SET `SkinningLootId` = 70066 WHERE `entry` = 20738; -- 17879	Chrono Lord Deja
UPDATE `creature_template` SET `SkinningLootId` = 70066 WHERE `entry` = 20745; -- 17880	Temporus
UPDATE `creature_template` SET `SkinningLootId` = 80002 WHERE `entry` = 21582; -- 17977	Warp Splinter
UPDATE `creature_template` SET `SkinningLootId` = 70065 WHERE `entry` = 22170; -- 21104	Rift Keeper
UPDATE `creature_template` SET `SkinningLootId` = 70065 WHERE `entry` = 22171; -- 21148	Rift Keeper

