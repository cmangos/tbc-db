-- Correct Stats for Large Solid Chest 153464 & Large Mithril Bound Chest 153469
UPDATE `gameobject_template` SET `Faction` = 94, `mingold` = 2100, `maxgold` = 2300 WHERE `entry` = 153464 OR 153469; -- Gold: 2273 in sniff

-- also Add "Locked" Flag for "Bound", which require lockpicking skill
UPDATE `gameobject_template` SET `flags` = `flags`|2 WHERE `entry` IN (
75296, -- Large Iron Bound Chest		- lock 	24
75297, -- Large Iron Bound Chest		- 		60
153469, -- Large Mithril Bound Chest	- 		600
184932, -- Bound Fel Iron Chest			- 		1665
184938 -- Bound Adamantite Chest		- 		1666
);

-- Add missing Heavy Leather 4234 Dropchance for Large Solid Chest 153464 & Large Mithril Bound Chest 153469
DELETE FROM `gameobject_loot_template` WHERE `entry` = 9936 AND `item` = 4234;
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `comments`) VALUES
(9936, 4234, 0, 2, 1, 2, 'Heavy Leather');

