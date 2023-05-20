-- Assign correct classquests, restricted by previous quest and also breadcrumb quest to next quest 8330 to correct class trainers in b11 starting area
-- yet unknown if the prevquestid value is correct, as the quests do not have a class requirement, so maybe it should be obtainable at multiple trainers.
UPDATE `creature_questrelation` SET `id` = 15280 WHERE `quest` = 10069; -- 15279	10069	9676 -- https://www.wowhead.com/tbc/quest=9676/paladin-training
UPDATE `creature_questrelation` SET `id` = 15279 WHERE `quest` = 10068; -- 15280	10068	8328 -- https://www.wowhead.com/tbc/quest=8328/mage-training
UPDATE `creature_questrelation` SET `id` = 15283 WHERE `quest` = 10073; -- 15283	10073	8563 -- https://www.wowhead.com/tbc/quest=8563/warlock-training
UPDATE `creature_questrelation` SET `id` = 15513 WHERE `quest` = 10070; -- 15284	10070	9393 -- https://www.wowhead.com/tbc/quest=9393/hunter-training
UPDATE `creature_questrelation` SET `id` = 15285 WHERE `quest` = 10071; -- 15285	10071	9392 -- https://www.wowhead.com/tbc/quest=9392/rogue-training
UPDATE `creature_questrelation` SET `id` = 15284 WHERE `quest` = 10072; -- 15513	10072	8564 -- https://www.wowhead.com/tbc/quest=8564/priest-training

