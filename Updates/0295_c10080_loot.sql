-- Add missing rare loot for Sandarr Dunereaver 10080 - https://www.wowhead.com/npc=10080/sandarr-dunereaver#drops
DELETE FROM `creature_loot_template` WHERE `entry` = 10080 AND `item` IN (862,2040,5616,6440,9480,9481,9482,9483,9484,9511,9512);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(10080, 862, 7, 1, 1, 1),
(10080, 2040, 7, 1, 1, 1),
(10080, 5616, 11, 1, 1, 1),
(10080, 6440, 10, 1, 1, 1),
(10080, 9480, 7, 1, 1, 1),
(10080, 9481, 9, 1, 1, 1),
(10080, 9482, 10, 1, 1, 1),
(10080, 9483, 10, 1, 1, 1),
(10080, 9484, 9, 1, 1, 1),
(10080, 9511, 9, 1, 1, 1),
(10080, 9512, 11, 1, 1, 1);

