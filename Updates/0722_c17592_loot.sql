-- Correct Green Item Loot for Razormaw 17592 (Level 20)
-- https://web.archive.org/web/20071222075011/http://wow.allakhazam.com:80/db/mob.html?wmob=17664
DELETE FROM `creature_loot_template` WHERE `item` = 60124 AND `entry` = 17592;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(17592, 60124, 10, 1, -60124, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 19-23) - (NPC Levels: 20)');

