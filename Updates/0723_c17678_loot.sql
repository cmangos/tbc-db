-- Correct Green Item Loot for Sironas 17678 (Level 20)
-- https://web.archive.org/web/20080103063515/http://wow.allakhazam.com/db/mob.html?wmob=17678
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 10 WHERE `item` = 60124 AND `entry` = 17678; -- NPC LOOT (Green World Drop) - (Item Levels: 19-23) - (NPC Levels: 20)

