-- Correct Green Item Loot for Vile Sting 5937 (Level 35)
-- https://web.archive.org/web/20060305052427/http://wow.allakhazam.com:80/db/mob.html?wmob=5937
-- (5937, 24052, 1, 1, -24052, 1, 0, '');
-- (5937, 24054, 1, 1, -24054, 1, 0, '');
-- (5937, 24056, 1, 1, -24056, 1, 0, ''); -- classic-db
DELETE FROM `creature_loot_template` WHERE `item` = 60154 AND `entry` = 5937;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(5937, 60154, 75, 1, -60154, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 34-38) - (NPC Levels: 35)');

