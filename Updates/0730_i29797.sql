-- Improve Dropchance for Orders From Kael'thas 29797 q.10432
-- mobs were farmed alot, dropchance is not as bad as portrait at the moment, even if comments suggest the chance was "bad"
-- https://www.wowhead.com/quest=10432/damning-evidence ranges between 30% and 100% chance
-- https://web.archive.org/web/20080401113027/http://wow.allakhazam.com:80/db/item.html?witem=29797
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -20 WHERE `item` = 29797 AND `entry` = 18860; -- Daughter of Destiny
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -30 WHERE `item` = 29797 AND `entry` = 20285; -- Gan'arg Warp-Tinker
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -35 WHERE `item` = 29797 AND `entry` = 20326; -- Mo'arg Warp-Master

