-- Correct Green Item Loot for Putridius 1850 (Level 58)
-- https://web.archive.org/web/20050223093117/http://wow.allakhazam.com/db/mob.html?wmob=1850
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 100 WHERE `item` = 60290 AND `entry` = 1850; -- NPC LOOT (Green World Drop) - (Item Levels: 57-61) - (NPC Levels: 58) - VANILLA NPC ONLY

