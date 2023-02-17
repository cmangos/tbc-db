-- Align Bindings of the Windseeker Dropchances with classicmangos
-- https://www.wowhead.com/classic/item=18563/bindings-of-the-windseeker (4.23% - 4.26%) - https://web.archive.org/web/20080614071608/http://wow.allakhazam.com/db/item.html?witem=18563 (3.41%) / 3 = 3.9666% = 4%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 4 WHERE `entry` = 12056 AND `item` = 18563;
-- https://www.wowhead.com/classic/item=18564/bindings-of-the-windseeker (4.07% - 4.1%) - https://web.archive.org/web/20080701033546/http://wow.allakhazam.com/db/item.html?witem=18564 (3.09%) / 3 = 3.75333% = 4%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 4 WHERE `entry` = 12057 AND `item` = 18564;

