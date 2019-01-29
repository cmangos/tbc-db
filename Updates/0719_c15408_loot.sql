-- Correct Green Item Loot for Spearcrafter Otembe 15408 (Level 10)
-- https://web.archive.org/web/20071102213244/http://wow.allakhazam.com/db/mob.html?wmob=15408
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 40 WHERE `item` = 60104 AND `entry` = 15408; -- NPC LOOT (Green World Drop) - (Item Levels: 10-14) - (NPC Levels: 11)

