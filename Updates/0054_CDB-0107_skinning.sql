-- Makes creatures 3939 (Razormane Wolf), 5766 (Savannah Cub) and 14865 (Felinni) unskinnable
UPDATE `creature_template` SET `SkinningLootId` = 0 WHERE `entry` IN (3939, 5766, 14865);
DELETE FROM `skinning_loot_template` WHERE `entry` = 10105;

