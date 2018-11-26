-- Add missing Feathered Cape 5971 for NPC LOOT (Rare NPC Loot) - Vultros - Special Items 65004, resolves https://github.com/cmangos/issues/issues/1780
-- Remove Feathered Cape from general RefLoots
DELETE FROM `reference_loot_template` WHERE `item` = 5971;
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `comments`) VALUES
(65004, 5971, 60, 1, 1, 1, 'Feathered Cape');
UPDATE `reference_loot_template` SET `ChanceOrQuestChance` = 25 WHERE `item` = 4454; -- not 100% drop for Vultros - Special Items

