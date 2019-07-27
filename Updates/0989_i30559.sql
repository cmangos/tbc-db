-- Add missing Etched Fire Opal 30559 to Auchindoun: Shadow Labyrinth Heroic Epic Gems 40145
DELETE FROM `reference_loot_template` WHERE `entry` = 40145 AND `item` = 30559;
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(40145, 30559, 0, 1, 1, 1, 0, 'Etched Fire Opal');

