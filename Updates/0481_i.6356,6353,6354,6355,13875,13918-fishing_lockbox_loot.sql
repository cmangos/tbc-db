-- Generalise Fishing (locked) chests 6356,6353,6354,6355,13875,13918 loot tables

-- Battered Chest 6356
-- https://www.wowhead.com/item=6356/battered-chest#contains
DELETE FROM `item_loot_template` WHERE `entry` = 6356;
INSERT INTO `item_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(6356, 2996, 37.9, 0, 1, 2, 0, 'Bolt of Linen Cloth'),
(6356, 2318, 34.4, 0, 2, 3, 0, 'Light Leather'),
(6356, 60441, 0.5, 0, -60441, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 5 (6 Slot Bag)) - (NPC Levels: 6-10)'),
(6356, 60000, 20, 0, -60000, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 1-5) - (NPC Levels: 1-5)'),
(6356, 60001, 70, 0, -60001, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 6-10) - (NPC Levels: 6-10)');

-- Small Chest 6353
-- https://www.wowhead.com/item=6353/small-chest#contains
DELETE FROM `item_loot_template` WHERE `entry` = 6353;
INSERT INTO `item_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(6353, 2318, 30.7, 0, 1, 2, 0, 'Light Leather'),
(6353, 2996, 18.2, 0, 1, 2, 0, 'Bolt of Linen Cloth'),
(6353, 2319, 14.8, 0, 1, 2, 0, 'Medium Leather'),
(6353, 2997, 8, 0, 1, 2, 0, 'Bolt of Woolen Cloth'),
(6353, 6358, 5, 0, 1, 1, 0, 'Oily Blackmouth'),
(6353, 4408, 1, 0, 1, 1, 0, 'Schematic: Mechanical Squirrel Box'),
(6353, 6271, 0.9, 0, 1, 1, 0, 'Pattern: Red Linen Vest'),
(6353, 60442, 0.5, 0, -60442, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 15 (8 Slot Bag)) - (NPC Levels: 11-20)'),
(6353, 60002, 70, 0, -60002, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 11-15) - (NPC Levels: 11-15)'),
(6353, 60003, 20, 0, -60003, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 16-20) - (NPC Levels: 16-20)');

-- Small Locked Chest 6354
-- https://www.wowhead.com/item=6354/small-locked-chest#contains:0-18+1
DELETE FROM `item_loot_template` WHERE `entry` = 6354;
INSERT INTO `item_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(6354, 2319, 38.2, 0, 1, 2, 0, 'Medium Leather'),
(6354, 2997, 27.6, 0, 1, 1, 0, 'Bolt of Woolen Cloth'),
(6354, 4234, 9.2, 0, 1, 2, 0, 'Heavy Leather'),
(6354, 4305, 2.6, 0, 1, 1, 0, 'Bolt of Silk Cloth'),
(6354, 5504, 1.9, 0, 1, 1, 0, 'Tangy Clam Meat'),
(6354, 7974, 0.3, 0, 1, 1, 0, 'Zesty Clam Meat'),
(6354, 3611, 0.1, 0, 1, 1, 0, 'Plans: Green Iron Boots'),
(6354, 6344, 0.1, 0, 1, 1, 0, 'Formula: Enchant Bracer - Minor Spirit'),
(6354, 9295, 0.1, 0, 1, 1, 0, 'Recipe: Invisibility Potion'),
(6354, 60138, 2, 0, -60138, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 26-30) - (NPC Levels: 27)'),
(6354, 60443, 0.5, 0, -60443, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 25 (10 Slot Bag)) - (NPC Levels: 21-30)'),
(6354, 50600, 1, 0, -50600, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 20 (Scrolls I)) - (NPC Levels 10-25)'),
(6354, 60004, 70, 0, -60004, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 21-25) - (NPC Levels: 21-25)'),
(6354, 60005, 20, 0, -60005, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 26-30) - (NPC Levels: 26-30)');

-- Sturdy Locked Chest 6355
-- https://www.wowhead.com/item=6355/sturdy-locked-chest#contains
DELETE FROM `item_loot_template` WHERE `entry` = 6355;
INSERT INTO `item_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(6355, 2319, 29.5, 0, 1, 2, 0, 'Medium Leather'),
(6355, 2997, 26.8, 0, 1, 1, 0, 'Bolt of Woolen Cloth'),
(6355, 4234, 16.4, 0, 1, 2, 0, 'Heavy Leather'),
(6355, 4305, 16.4, 0, 1, 1, 0, 'Bolt of Silk Cloth'),
(6355, 4377, 0.9, 0, 1, 1, 0, 'Heavy Blasting Powder'),
(6355, 3866, 0.1, 0, 1, 1, 0, 'Plans: Jade Serpentblade'),
(6355, 60152, 2, 0, -60152, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 33-37) - (NPC Levels: 34)'),
(6355, 60444, 0.5, 0, -60444, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 35 (12 Slot Bag)) - (NPC Levels: 31-40)'),
(6355, 50601, 1, 0, -50601, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 35 (Scrolls II)) - (NPC Levels 25-40)'),
(6355, 60006, 90, 0, -60006, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 31-40) - (NPC Levels: 31-40)');

-- Ironbound Locked Chest 13875
-- https://www.wowhead.com/item=13875/ironbound-locked-chest#contains
DELETE FROM `item_loot_template` WHERE `entry` = 13875;
INSERT INTO `item_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(13875, 4234, 33.3, 0, 1, 2, 0, 'Heavy Leather'),
(13875, 4305, 31.4, 0, 1, 1, 0, 'Bolt of Silk Cloth'),
(13875, 4304, 13.2, 0, 1, 2, 0, 'Thick Leather'),
(13875, 4339, 13.2, 0, 1, 1, 0, 'Bolt of Mageweave'),
(13875, 5503, 1.7, 0, 1, 1, 0, 'Clam Meat'),
(13875, 2997, 1.2, 0, 1, 1, 0, 'Bolt of Woolen Cloth'),
(13875, 2319, 0.6, 0, 1, 1, 0, 'Medium Leather'),
(13875, 60168, 2, 0, -60168, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 41-45) - (NPC Levels: 42)'),
(13875, 60445, 0.5, 0, -60445, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 45 (14 Slot Bag)) - (NPC Levels: 41-60)'),
(13875, 50602, 1, 0, -50602, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 50 (Scrolls III)) - (NPC Levels 40-55)'),
(13875, 60007, 90, 0, -60007, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 41-50) - (NPC Levels: 41-50)');

-- Reinforced Locked Chest 13918
-- https://www.wowhead.com/item=13918/reinforced-locked-chest#contains
DELETE FROM `item_loot_template` WHERE `entry` = 13918;
INSERT INTO `item_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(13918, 4339, 52.3, 0, 1, 1, 0, 'Bolt of Mageweave'),
(13918, 4304, 28.4, 0, 1, 2, 0, 'Thick Leather'),
(13918, 8170, 13.8, 0, 1, 2, 0, 'Rugged Leather'),
(13918, 4234, 4.8, 0, 1, 1, 0, 'Heavy Leather'),
(13918, 4414, 4.8, 0, 1, 1, 0, 'Schematic: Portable Bronze Mortar'),
(13918, 60184, 2, 0, -60184, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 49-53) - (NPC Levels: 50)'),
(13918, 60445, 0.5, 0, -60445, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 45 (14 Slot Bag)) - (NPC Levels: 41-60)'),
(13918, 50603, 1, 0, -50603, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 65 (Scrolls IV)) - (NPC Levels 55-62)'),
(13918, 60008, 90, 0, -60008, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 51-60) - (NPC Levels: 51-60) - VANILLA NPC ONLY');

