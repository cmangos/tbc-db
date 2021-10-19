-- CCSDB - classic-combined-sniff-database
-- Add Arena Spoils 181074 with corrected data1 and loot from CCSDB
DELETE FROM `gameobject_template` WHERE `entry` = 181074;
INSERT INTO `gameobject_template` (`entry`, `type`, `displayid`, `name`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`) VALUES
(181074, 3, 10, 'Arena Spoils', 1, 57, 17918, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

DELETE FROM `gameobject_loot_template` WHERE `entry` = 17918;
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(17918, 22305, 34.5, 1, 1, 1, 0, 'Ironweave Mantle'), -- (31 - 38) / 2
(17918, 22317, 18, 1, 1, 1, 0, 'Lefty\'s Brass Knuckle'), -- (17 - 19) / 2
(17918, 22318, 25, 1, 1, 1, 0, 'Malgen\'s Long Bow'), -- (24 - 26) / 2
(17918, 22330, 22.5, 1, 1, 1, 0, 'Shroud of Arcane Mastery'); -- (19 - 26) / 2

