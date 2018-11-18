-- Bound Adamantite Chest 184940 & Solid Adamantite Chest 184941
UPDATE `gameobject_template` SET `mingold` = 60331, `maxgold` = 68866 WHERE `entry` IN (184940,184941);
DELETE FROM `reference_loot_template` WHERE `entry` = 42006;
DELETE FROM `reference_loot_template_names` WHERE `entry` = 42006;
DELETE FROM `gameobject_loot_template` WHERE `entry` = 21261 AND `item` IN (22829,22832,42006,50604);
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(21261, 22829, 40, 1, 2, 3, 0, 'Super Healing Potion'),
(21261, 22832, 20, 1, 2, 3, 0, 'Super Mana Potion'),
(21261, 50604, 75, 1, -50604, 1, 0, 'Scrolls V - (NPC Levels 58-72) - TBC');

-- Remove Ref 42006 from Npcs using it - No longer useable due to change above,  use 42009+50604 instead as 42006 was designed as chest refloot anyways
DELETE FROM `creature_loot_template` WHERE `item` IN (42006,42009,50604) AND `entry` IN (22873,22874,22875,22876,22877,22884);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(22873, 42009, 2, 0, -42009, 1, 0, 'Super Healing/Mana Potion (75%)(25%) - TBC'),
(22873, 50604, 0.5, 0, -50604, 1, 0, 'Scrolls V - (NPC Levels 58-72) - TBC'),
(22874, 42009, 2, 0, -42009, 1, 0, 'Super Healing/Mana Potion (75%)(25%) - TBC'),
(22874, 50604, 0.5, 0, -50604, 1, 0, 'Scrolls V - (NPC Levels 58-72) - TBC'),
(22875, 42009, 2, 0, -42009, 1, 0, 'Super Healing/Mana Potion (75%)(25%) - TBC'),
(22875, 50604, 0.5, 0, -50604, 1, 0, 'Scrolls V - (NPC Levels 58-72) - TBC'),
(22876, 42009, 2, 0, -42009, 1, 0, 'Super Healing/Mana Potion (75%)(25%) - TBC'),
(22876, 50604, 0.5, 0, -50604, 1, 0, 'Scrolls V - (NPC Levels 58-72) - TBC'),
(22877, 42009, 2, 0, -42009, 1, 0, 'Super Healing/Mana Potion (75%)(25%) - TBC'),
(22877, 50604, 0.5, 0, -50604, 1, 0, 'Scrolls V - (NPC Levels 58-72) - TBC'),
(22884, 42009, 2, 0, -42009, 1, 0, 'Super Healing/Mana Potion (75%)(25%) - TBC'),
(22884, 50604, 0.5, 0, -50604, 1, 0, 'Scrolls V - (NPC Levels 58-72) - TBC');

