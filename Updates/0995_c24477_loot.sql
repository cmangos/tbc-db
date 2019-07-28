-- Add unique Loot Table for Syndicate Thief 24477 & Improve i.4440 & 4506 Dropchance
-- https://web.archive.org/web/20080621055730/http://wow.allakhazam.com:80/db/mob.html?wmob=24477#Global
UPDATE `creature_template` SET `LootId` = 24477, `PickpocketLootId` = 24477 WHERE `entry` = 24477;
DELETE FROM `creature_loot_template` WHERE `entry` = 24477;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(24477, 4440, -10, 0, 1, 1, 0, 'Sigil of Strom'),
(24477, 4506, -60, 0, 1, 2, 0, 'Stromgarde Badge'),
(24477, 60231, 0.05, 0, -60231, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 33-38) - (NPC Levels: 35-36)'),
(24477, 50601, 0.75, 0, -50601, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 35 (Scrolls II)) - (NPC Levels 25-40)'),
(24477, 60444, 1, 0, -60444, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 35 (12 Slot Bag)) - (NPC Levels: 31-40)'),
(24477, 60155, 2, 0, -60155, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 34-39) - (NPC Levels: 35-36)'),
(24477, 60006, 9, 0, -60006, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 31-40) - (NPC Levels: 31-40)'),
(24477, 5113, 14.9, 0, 1, 1, 0, 'Mark of the Syndicate'),
(24477, 2592, 0.65, 1, 1, 4, 0, 'Wool Cloth'),
(24477, 4338, 4.2, 1, 1, 3, 0, 'Mageweave Cloth'),
(24477, 4306, 28.6, 1, 1, 4, 0, 'Silk Cloth'),
(24477, 1708, 2.2, 2, 1, 1, 0, 'Sweet Nectar'),
(24477, 1707, 4.7, 2, 1, 1, 0, 'Stormwind Brie'),
(24477, 3827, 0.6337, 3, 1, 2, 0, 'Mana Potion'),
(24477, 1710, 1.4, 3, 1, 1, 0, 'Greater Healing Potion'),
(24477, 1529, 0.0777, 4, 1, 1, 0, 'Jade'),
(24477, 3864, 0.15, 4, 1, 1, 0, 'Citrine'),
(24477, 7909, 0.01, 4, 1, 1, 0, 'Aquamarine'),
(24477, 6986, 3.9, 4, 1, 1, 0, 'Crimson Lotus'),
(24477, 4636, 0.02, 5, 1, 1, 0, 'Strong Iron Lockbox'),
(24477, 4634, 0.05, 5, 1, 1, 0, 'Iron Lockbox'),
(24477, 3831, 0.01, 6, 1, 1, 0, 'Recipe: Mighty Troll''s Blood Elixir'),
(24477, 4300, 0.01, 6, 1, 1, 0, 'Pattern: Guardian Leather Bracers'),
(24477, 4353, 0.01, 6, 1, 1, 0, 'Pattern: Spider Belt'),
(24477, 4416, 0.01, 6, 1, 1, 0, 'Schematic: Goblin Land Mine'),
(24477, 7086, 0.01, 6, 1, 1, 0, 'Pattern: Earthen Silk Belt'),
(24477, 7450, 0.01, 6, 1, 1, 0, 'Pattern: Green Whelp Armor'),
(24477, 7453, 0.01, 6, 1, 1, 0, 'Pattern: Swift Boots'),
(24477, 10302, 0.01, 6, 1, 1, 0, 'Pattern: Red Mageweave Pants'),
(24477, 10604, 0.01, 6, 1, 1, 0, 'Schematic: Mithril Heavy-bore Rifle'),
(24477, 21940, 0.01, 6, 1, 1, 0, 'Design: Golden Hare'),
(24477, 20974, 0.01, 6, 1, 1, 0, 'Design: Jade Pendant of Blasting'),
(24477, 20976, 0.01, 6, 1, 1, 204, 'Design: Citrine Pendant of Golden Healing');

DELETE FROM `pickpocketing_loot_template` WHERE `entry` = 24477; -- Copy of 2588
INSERT INTO `pickpocketing_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(24477, 17124, 79.6666, 0, 1, 1, 0, 'Syndicate Emblem'),
(24477, 16883, 13.0973, 0, 1, 1, 0, 'Worn Junkbox'),
(24477, 5431, 9.7345, 0, 1, 1, 0, 'Empty Hip Flask'),
(24477, 1707, 4.0708, 0, 1, 1, 0, 'Stormwind Brie'),
(24477, 4539, 2.6549, 0, 1, 1, 0, 'Goldenbark Apple'),
(24477, 4544, 2.6549, 0, 1, 1, 0, 'Mulgore Spice Bread'),
(24477, 1710, 2.1239, 0, 1, 1, 0, 'Greater Healing Potion'),
(24477, 1529, 0.177, 0, 1, 1, 0, 'Jade'),
(24477, 3864, 0.177, 0, 1, 1, 0, 'Citrine');

-- Adjust Item 4440 & 4506 Dropchance according to wowhead comments that the chance was "slightly" improved in 2.4 over classic rates
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -10 WHERE `item` = 4440 AND `entry` IN (2588,2590,2591); -- -2 - -3 for classic-db as it is in https://github.com/cmangos/classic-db/commit/740b85b8e665b1183be0de8c8f032009cc43e628
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -60 WHERE `item` = 4506 AND `entry` IN (2588,2590,2591); -- Reduce from 80%, classic-db might be lower

