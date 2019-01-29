-- Correct Green Item Loot for Siege Golem 2749 (Level 40)
-- https://web.archive.org/web/20071102063305/http://wow.allakhazam.com:80/db/mob.html?wmob=2749
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 100 WHERE `item` = 60164 AND `entry` = 2749; -- NPC LOOT (Green World Drop) - (Item Levels: 39-43) - (NPC Levels: 40)

