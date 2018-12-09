-- Add The Night Blade 31331 & Rare Gem Chance to Strong Junkbox 29569
DELETE FROM `item_loot_template` WHERE `entry` = 29569 AND `item` IN (12004,31331);
INSERT INTO `item_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(29569, 31331, 0.01, 0, 1, 1, 0, 'The Night Blade'),
(29569, 12004, 0.1, 1, -12004, 1, 0, 'Rare Gem - TBC'); 

