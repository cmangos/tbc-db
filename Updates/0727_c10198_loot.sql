-- Correct Green Item Loot for Kashoch the Reaver 10198 (Level 60)
-- https://web.archive.org/web/20050216032525/http://wow.allakhazam.com/db/mob.html?wmob=10198
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 100 WHERE `item` = 60294 AND `entry` = 10198; -- NPC LOOT (Green World Drop) - (Item Levels: 59-63) - (NPC Levels: 60) - VANILLA NPC ONLY

