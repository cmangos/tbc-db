-- Revamp Prospecting for Thorium Ore (Remove TBC GEMs and Adjust %) - TBC-1018
DELETE FROM `prospecting_loot_template` WHERE `entry` = 10620;
INSERT INTO `prospecting_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(10620, 7910, 12, 1, 1, 2, 0, 'Star Ruby'),
(10620, 12361, 22, 1, 1, 2, 0, 'Blue Sapphire'),
(10620, 12364, 22, 1, 1, 2, 0, 'Huge Emerald'),
(10620, 12799, 22, 1, 1, 2, 0, 'Large Opal'),
(10620, 12800, 22, 1, 1, 2, 0, 'Azerothian Diamond'),
(10620, 24235, 100, 0, 1, 1, 0, 'Thorium Powder');

