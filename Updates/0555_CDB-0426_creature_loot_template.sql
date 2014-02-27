-- Fixed drop rate of item 4527 (Azure Agate) involved in quest Trelane's Defense
-- Source: http://www.wowhead.com/item=4527#comments
-- Value is guessed from comments and adjusted by the fact that quest drop rates were increased in patch 2.3
-- But this value is still way better than the 100% previous one
-- https://web.archive.org/web/20050830020038/http://wow.allakhazam.com:80/db/item.html?witem=4527 -> https://web.archive.org/web/20131023043257/http://www.wowhead.com:80/item=4527 x2
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -40 WHERE `item` = 4527; -- classic-db -20

-- Fixed drop chance of quest item 3923 (Water Elemental Bracer) in Stranglethorn Cape
-- Source: http://www.wowhead.com/item=3923#dropped-by
-- https://web.archive.org/web/20130612043859/http://www.wowhead.com:80/item=3923
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -70 WHERE `item` = 3923; -- classic-db -38

-- Fixed drop chance for item 1357 (Captain Sanders' Treasure Map) in Westfall because it previously was a 100% drop chance
-- Thanks Shubu for pointing. This closes #237 
-- Source: http://www.wowhead.com/item=1357#dropped-by
-- https://web.archive.org/web/20110629233505/http://www.wowhead.com:80/item=1357
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 15 WHERE `item` = 1357 AND `entry` IN (515, 126);
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 11 WHERE `item` = 1357 AND `entry` IN (456);
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 3 WHERE `item` = 1357 AND `entry` IN (391, 127, 517, 458, 171, 513);
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 4.5 WHERE `item` = 1357 AND `entry` IN (519, 520);

-- Fixed drop chance for item 5884 (Unpopped Darkmist Eye) in Dustwallow Marsh because it previously was a 100% drop chance
-- Source: http://wowhead.com/item=5884#dropped-by
-- https://web.archive.org/web/20141105084436/http://www.wowhead.com:80/item=5884
-- https://web.archive.org/web/20050108143744/http://wow.allakhazam.com:80/db/item.html?witem=5884
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -45 WHERE `item` = 5884 AND `entry` IN (4376, 4378); -- classic-db 4376, 4379
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -35 WHERE `item` = 5884 AND `entry` IN (4377, 4380, 4379); -- classic-db 4380, 4378

-- Fixed drop chance for item 6245 (Karnitol's Satchel) in Desolace because it previously was a 100% drop chance
-- Source: http://wowhead.com/item=6245#dropped-by
-- https://web.archive.org/web/20050116055551/http://wow.allakhazam.com:80/db/item.html?witem=6245
-- https://web.archive.org/web/20110804011033/http://www.wowhead.com:80/item=6245
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -40 WHERE `item` = 6245; -- classic-db -20

