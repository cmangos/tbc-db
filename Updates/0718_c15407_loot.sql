-- Correct Green Item Loot for Chieftain Zul'Marosh 15407 (Level 11)
-- https://web.archive.org/web/20071103052625/http://wow.allakhazam.com/db/mob.html?wmob=15407
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 50 WHERE `item` = 60106 AND `entry` = 15407; -- NPC LOOT (Green World Drop) - (Item Levels: 10-14) - (NPC Levels: 11)

