-- Correct Loottables for Bound Adamantite Chest 184936,184938 & Solid Adamantite Chest 184937,184939
-- Remove 42003 which is not correct, same as 42006
DELETE FROM `reference_loot_template` WHERE `entry` = 42003;
DELETE FROM `reference_loot_template_names` WHERE `entry` = 42003;
DELETE FROM `gameobject_loot_template` WHERE `entry` = 21280;
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(21280, 22829, 30, 1, 2, 3, 0, 'Super Healing Potion'),
(21280, 22832, 15, 1, 2, 3, 0, 'Super Mana Potion'),
(21280, 42004, 15, 0, -42004, 1, 0, 'Solid Adamantite Chest and Bound Adamantite Chests - Gems'),
(21280, 42005, 100, 0, -42005, 1, 0, 'Solid Adamantite Chest and Bound Adamantite Chests - Green and Blue Items'),
(21280, 50604, 75, 1, -50604, 1, 0, 'Scrolls V - (NPC Levels 58-72) - TBC');

-- Solid Fel Iron Chest 184930,184933,184935 & Bound Fel Iron Chest 184931,184932,184934
DELETE FROM `reference_loot_template` WHERE `entry` = 42000;
DELETE FROM `reference_loot_template_names` WHERE `entry` = 42000;
DELETE FROM `gameobject_loot_template` WHERE `entry` = 21260;
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(21260, 13444, 35, 1, 2, 3, 0, 'Major Mana Potion'),
(21260, 13446, 15, 1, 2, 3, 0, 'Major Healing Potion'),
(21260, 42001, 10, 0, -42001, 1, 0, 'Solid Fel Iron and Bound Fel Iron Chests - Gems'),
(21260, 42002, 100, 0, -42002, 1, 0, 'Solid Fel Iron and Bound Fel Iron Chests - Green and Blue Items'),
(21260, 50604, 75, 1, -50604, 1, 0, 'Scrolls V - (NPC Levels 58-72) - TBC');

