-- Correct Loot for A Crazy Grab Bag 15902 - based on diff with classicmangos!
-- https://github.com/cmangos/tbc-db/blob/a42bd13849fa6944cc1f4a109e6bf31c1307b20f/Updates/0414_techbot_random_texts.sql#L294
-- https://github.com/cmangos/tbc-db/commit/bd2a90a8c362cb3d4f2f663b8d7b2e623e2b5ac6
-- 44000	Item Loot - A Crazy Grab Bag (15902) - (Green World Drop) - (Item Levels: 45-49) Incorrect! - Table reference_loot_template_names for entry 44000 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 44000; -- Item Loot - A Crazy Grab Bag (15902) - (Green World Drop) - (Item Levels: 45-49)
DELETE FROM `reference_loot_template` WHERE `entry` = 44000;
-- https://www.wowhead.com/classic/item=15902/a-crazy-grab-bag#contains;50-2+16-19+1 - ItemLevel 56-61 Classic Items! as is set in classicmangos
-- 60199	NPC LOOT (Green World Drop) - (Item Levels: 56-61) - (NPC Levels: 57-58) - VANILLA NPC ONLY
DELETE FROM `item_loot_template` WHERE `entry` = 15902;
INSERT INTO `item_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
-- (15902, 10121, 9.5, 0, 1, 1, 0, 'Ornate Gauntlets');
-- (15902, 10154, 4.8, 0, 1, 1, 0, 'Mercurial Girdle');
-- (15902, 10169, 4.8, 0, 1, 1, 0, 'Templar Legplates');
-- (15902, 10216, 4.8, 0, 1, 1, 0, 'Elegant Belt');
-- (15902, 10217, 4.8, 0, 1, 1, 0, 'Elegant Leggings');
-- (15902, 10225, 4.8, 0, 1, 1, 0, 'Nightshade Gloves');
-- (15902, 10236, 4.8, 0, 1, 1, 0, 'Engraved Leggings');
-- (15902, 10267, 4.8, 0, 1, 1, 0, 'Masterwork Cape');
-- (15902, 10275, 4.8, 0, 1, 1, 0, 'Emerald Breastplate');
-- (15902, 10276, 4.8, 0, 1, 1, 0, 'Emerald Sabatons');
-- (15902, 10281, 4.8, 0, 1, 1, 0, 'Emerald Pauldrons');
-- (15902, 10282, 4.8, 0, 1, 1, 0, 'Emerald Vambraces');
(15902, 60199, 100, 1, -60199, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 56-61) - (NPC Levels: 57-58) - VANILLA NPC ONLY');

