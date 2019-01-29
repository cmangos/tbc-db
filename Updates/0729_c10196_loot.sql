-- Correct Green Item Loot for General Colbatann 10196 (Level 56-57)
-- https://web.archive.org/web/20060831112703/http://wow.allakhazam.com:80/db/mob.html?wmob=10201
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 100 WHERE `item` = 60197 AND `entry` = 10196; -- NPC LOOT (Green World Drop) - (Item Levels: 55-60) - (NPC Levels: 56-57)

