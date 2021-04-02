-- Mature Black Dragon Sinew 18705 - also drops without quest
-- Lootable by anyone, even though it's a quest item.
-- "This item also drops from every black dragon in the Burning Steppes. (Added in ~3.3.5)" wow comment suggests even in 2.4.1
-- https://web.archive.org/web/20080114231954/http://wow.allakhazam.com:80/db/item.html?witem=18705
-- https://tbc.wowhead.com/item=18705/mature-black-dragon-sinew#comments:id=318500
-- https://web.archive.org/web/20080504014334/http://wow.allakhazam.com/db/item.html?witem=18705

-- This item also dropped from every black dragon in the Burning Steppes. (Added in around Patch 3.3.5.)
-- All Black Dragons in Burning Steppes - Our drop = 0.02... might be correct for tbc
DELETE FROM `creature_loot_template` WHERE `item` = 18705;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
-- tbc+ only for trash?
(7040, 18705, 0.02, 0, 1, 1, 0, 'Mature Black Dragon Sinew'), -- Black Dragonspawn
(7041, 18705, 0.02, 0, 1, 1, 0, 'Mature Black Dragon Sinew'), -- Black Wyrmkin
(7042, 18705, 0.02, 0, 1, 1, 0, 'Mature Black Dragon Sinew'), -- Flamescale Dragonspawn
(7043, 18705, 0.02, 0, 1, 1, 0, 'Mature Black Dragon Sinew'), -- Flamescale Wyrmkin
(7044, 18705, 0.02, 0, 1, 1, 0, 'Mature Black Dragon Sinew'), -- Black Drake
(7045, 18705, 0.02, 0, 1, 1, 0, 'Mature Black Dragon Sinew'), -- Scalding Drake
(7046, 18705, 0.02, 0, 1, 1, 0, 'Mature Black Dragon Sinew'), -- Searscale Drake
(7047, 18705, 0.02, 0, 1, 1, 0, 'Mature Black Dragon Sinew'), -- Black Broodling
(7048, 18705, 0.02, 0, 1, 1, 0, 'Mature Black Dragon Sinew'), -- Scalding Broodling
(7049, 18705, 0.02, 0, 1, 1, 0, 'Mature Black Dragon Sinew'), -- Flamescale Broodling
(8976, 18705, 0.02, 0, 1, 1, 0, 'Mature Black Dragon Sinew'), -- Hematos
(10184, 18705, 40, 0, 1, 1, 0, 'Mature Black Dragon Sinew'); -- 20-40% - https://tbc.wowhead.com/item=18705/mature-black-dragon-sinew#comments:id=6316

-- https://classic.wowhead.com/item=18704/mature-blue-dragon-sinew
-- vmangos
DELETE FROM `creature_loot_template` WHERE `item` = 18704;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
-- seemingly classic+
(6109, 18704, 100, 0, 1, 1, 0, 'Mature Blue Dragon Sinew'), -- Azuregos
(7435, 18704, 0.5, 0, 1, 1, 0, 'Mature Blue Dragon Sinew'), -- Cobalt Wyrmkin
(7436, 18704, 0.5, 0, 1, 1, 0, 'Mature Blue Dragon Sinew'), -- Cobalt Scalebane
(7437, 18704, 0.5, 0, 1, 1, 0, 'Mature Blue Dragon Sinew'), -- Cobalt Mageweaver
(10196, 18704, 0.3, 0, 1, 1, 0, 'Mature Blue Dragon Sinew'), -- General Colbatann
(10663, 18704, 1, 0, 1, 1, 0, 'Mature Blue Dragon Sinew'), -- Manaclaw
(10664, 18704, 0.1, 0, 1, 1, 0, 'Mature Blue Dragon Sinew'); -- Scryer

-- https://tbc.wowhead.com/item=18703/ancient-petrified-leaf#contained-in-object
-- solves mistake made
DELETE FROM `creature_loot_template` WHERE `item` = 18703; -- classic-db has this in creature loot still
-- should only be in .gobject 179703 50%

