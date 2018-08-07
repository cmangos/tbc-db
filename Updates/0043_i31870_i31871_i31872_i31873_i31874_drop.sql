-- ~Patch 2.2 - wotlk-db + adjustments to chance and adding 23333
DELETE FROM `reference_loot_template` WHERE `entry` = 25030;
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(25030, 31870, 0, 1, 1, 1, 0, 'Design: Great Golden Draenite'),
(25030, 31871, 0, 1, 1, 1, 0, 'Design: Balanced Shadow Draenite'),
(25030, 31872, 0, 1, 1, 1, 0, 'Design: Infused Shadow Draenite'),
(25030, 31873, 0, 1, 1, 1, 0, 'Design: Veiled Flame Spessarite'),
(25030, 31874, 0, 1, 1, 1, 0, 'Design: Wicked Flame Spessarite');

DELETE FROM `reference_loot_template_names` WHERE `entry` = 25030;
INSERT INTO `reference_loot_template_names` (`entry`, `name`) VALUES (25030, 'Blade\'s Edge Mountains (Boss Loot) - Jewelcrafting Design');

-- Blade\'s Edge Mountains (Boss Loot) - Jewelcrafting Design
DELETE FROM `creature_loot_template` WHERE `mincountOrRef` = -25030;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(23333, 25030, 15, 1, -25030, 1, 0, 'Blade\'s Edge Mountains (Boss Loot) - Jewelcrafting Design'),
(23390, 25030, 10, 1, -25030, 1, 0, 'Blade\'s Edge Mountains (Boss Loot) - Jewelcrafting Design'),
(22275, 25030, 5, 1, -25030, 1, 0, 'Blade\'s Edge Mountains (Boss Loot) - Jewelcrafting Design'),
(22281, 25030, 5, 1, -25030, 1, 0, 'Blade\'s Edge Mountains (Boss Loot) - Jewelcrafting Design'),
(23061, 25030, 5, 1, -25030, 1, 0, 'Blade\'s Edge Mountains (Boss Loot) - Jewelcrafting Design'),
(23261, 25030, 5, 1, -25030, 1, 0, 'Blade\'s Edge Mountains (Boss Loot) - Jewelcrafting Design'),
(23281, 25030, 5, 1, -25030, 1, 0, 'Blade\'s Edge Mountains (Boss Loot) - Jewelcrafting Design'),
(23282, 25030, 5, 1, -25030, 1, 0, 'Blade\'s Edge Mountains (Boss Loot) - Jewelcrafting Design'),
(23353, 25030, 5, 1, -25030, 1, 0, 'Blade\'s Edge Mountains (Boss Loot) - Jewelcrafting Design'),
(23354, 25030, 5, 1, -25030, 1, 0, 'Blade\'s Edge Mountains (Boss Loot) - Jewelcrafting Design'),
(23355, 25030, 5, 1, -25030, 1, 0, 'Blade\'s Edge Mountains (Boss Loot) - Jewelcrafting Design');

