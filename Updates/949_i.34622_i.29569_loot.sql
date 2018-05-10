-- Add Spinesever 34622 to Strong Junkbox Loot 29569 - Patch 2.3
DELETE FROM `item_loot_template` WHERE `entry` = 29569 AND `item` = 34622;
INSERT INTO `item_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `mincountOrRef`, `maxcount`) VALUES (29569, 34622, 0.1, 1, 1);

