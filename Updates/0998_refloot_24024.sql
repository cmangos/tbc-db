-- Remove RefLoot 24024 for tbc-db entries which still use it and substitute it with 60008 (NPC LOOT (Grey World Drop) - (Item Levels: 51-60) - (NPC Levels: 51-60) - VANILLA NPC ONLY)
-- which is the same except for having i.13824 Recurve Long Bow (Gray ilvl 55), which is probably missing from 24024
-- classic-db has more creatures using 24024
DELETE FROM `reference_loot_template` WHERE `entry` = 24024; -- Substituted by 60008
DELETE FROM `reference_loot_template_names` WHERE `entry` = 24024; -- Doesnt have one
DELETE FROM `creature_loot_template` WHERE `mincountOrRef` IN (-24024,-60008) AND `entry` IN (10502,10503,10504,10505,10506,10507,10508,10901,11261,11622,14861);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(10502, 60008, 10, 0, -60008, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 51-60) - (NPC Levels: 51-60)'),
(10503, 60008, 10, 0, -60008, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 51-60) - (NPC Levels: 51-60)'),
(10504, 60008, 10, 0, -60008, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 51-60) - (NPC Levels: 51-60)'),
(10505, 60008, 10, 0, -60008, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 51-60) - (NPC Levels: 51-60)'),
(10506, 60008, 10, 0, -60008, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 51-60) - (NPC Levels: 51-60)'),
(10507, 60008, 10, 0, -60008, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 51-60) - (NPC Levels: 51-60)'),
(10508, 60008, 10, 0, -60008, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 51-60) - (NPC Levels: 51-60)'),
(10901, 60008, 10, 0, -60008, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 51-60) - (NPC Levels: 51-60)'),
(11261, 60008, 10, 0, -60008, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 51-60) - (NPC Levels: 51-60)'),
(11622, 60008, 10, 0, -60008, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 51-60) - (NPC Levels: 51-60)'),
(14861, 60008, 10, 0, -60008, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 51-60) - (NPC Levels: 51-60)');

