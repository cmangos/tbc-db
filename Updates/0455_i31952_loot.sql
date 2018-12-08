-- Khorium Lockbox 31952
DELETE FROM `item_loot_template` WHERE `entry` = 31952;
INSERT INTO `item_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(31952, 61120, 100,   0, -61120, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 105-111) - (NPC Levels: 68) - TBC NPC ONLY'),
(31952, 	2, 20, 	  1, -61120, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 105-111) - (NPC Levels: 68) - TBC NPC ONLY'),
(31952, 61220, 5, 	  1, -61220, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 106-112) - (NPC Levels: 68) - TBC NPC ONLY'),
(31952, 60345, 0.001, 0, -60345, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY');

