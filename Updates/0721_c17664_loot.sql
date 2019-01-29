-- Correct Green Item Loot for Matis the Cruel 17664 (Level 18)
-- https://web.archive.org/web/20071222075011/http://wow.allakhazam.com:80/db/mob.html?wmob=17664
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 10 WHERE `item` = 60120 AND `entry` = 17664; -- NPC LOOT (Green World Drop) - (Item Levels: 17-21) - (NPC Levels: 18)

