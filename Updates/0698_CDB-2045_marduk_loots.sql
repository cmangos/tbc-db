-- Updated loot table of NPC 10433 (Marduk Blackpool)
UPDATE creature_loot_template SET ChanceOrQuestChance=30 WHERE entry=10433 AND item IN (14576, 18692); -- Ebon Hilt of Marduk / Death Knight Sabatons
DELETE FROM creature_loot_template WHERE entry=10433 AND item=24087;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES (10433, 24087, 0.1, 1, -24087, 1, 0, '');

-- Add related refloot
DELETE FROM `reference_loot_template` WHERE `entry` = 24087;
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(24087, 647, 0, 1, 1, 1, 0, 'Destiny'),
(24087, 811, 0, 1, 1, 1, 0, 'Axe of the Deep Woods'),
(24087, 833, 0, 1, 1, 1, 0, 'Lifestone'),
(24087, 2244, 0, 1, 1, 1, 0, 'Krol Blade');

