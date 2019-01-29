-- Correct Green Item Loot for Lady Hederine 10201 (Level 61)
-- https://web.archive.org/web/20060831112703/http://wow.allakhazam.com:80/db/mob.html?wmob=10201
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 100 WHERE `item` = 60296 AND `entry` = 10201; -- NPC LOOT (Green World Drop) - (Item Levels: 60-64) - (NPC Levels: 61) - VANILLA NPC ONLY

