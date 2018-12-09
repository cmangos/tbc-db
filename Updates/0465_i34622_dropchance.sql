-- Add Spinesever 34622 to Strong Junkbox 29569
DELETE FROM `item_loot_template` WHERE `entry` = 29569 AND `item` = 34622;
INSERT INTO `item_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(29569, 34622, 0.1, 0, 1, 1, 0, 'Spinesever');

