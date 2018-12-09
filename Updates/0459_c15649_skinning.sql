-- Add missing Skinning Loot for Feral Dragonhawk Hatchling 15649
UPDATE `creature_template` SET `SkinningLootId` = 15649 WHERE `entry` = 15649;
DELETE FROM `skinning_loot_template` WHERE `entry` = 15649;
INSERT INTO `skinning_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(15649, 2318, 37, 1, 1, 1, 0, 'Light Leather'),
(15649, 2934, 63, 1, 1, 1, 0, 'Ruined Leather Scraps');

