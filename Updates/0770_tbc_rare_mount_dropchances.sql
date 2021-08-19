-- Improve Dropchance for TBC rare drop mounts

-- Ashes of Al'ar
-- maybe still needs adjustments
-- https://tbc.wowhead.com/item=32458/ashes-of-alar#dropped-by - 3%
-- https://www.wowhead.com/item=32458/ashes-of-alar#dropped-by - 1.7%
-- https://web.archive.org/web/20110703081358/http://www.wowhead.com/item=32458 - 1.46%
-- https://web.archive.org/web/20081003053223/http://wow.allakhazam.com/db/item.html?witem=32458 - 2.74%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 2 WHERE `item` = 32458 AND `entry` = 19622; -- 0.2

-- Swift White Hawkstrider
-- maybe still needs adjustments
-- https://tbc.wowhead.com/item=35513/swift-white-hawkstrider#dropped-by - 1.1%
-- https://www.wowhead.com/item=35513/swift-white-hawkstrider#dropped-by - 4%
-- https://web.archive.org/web/20110705081302/http://www.wowhead.com/item=35513 - 4%
-- https://web.archive.org/web/20080803144604/http://wow.allakhazam.com/db/item.html?witem=35513 - 3.09%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 4 WHERE `item` = 35513 AND `entry` = 24857; -- 4

-- Reins of the Raven Lord
-- https://tbc.wowhead.com/item=32768/reins-of-the-raven-lord#dropped-by - 1%
-- https://www.wowhead.com/item=32768/reins-of-the-raven-lord#dropped-by - 1.6%
-- https://web.archive.org/web/20110630175532/http://www.wowhead.com/item=32768 - 1.8%
-- https://web.archive.org/web/20100111183809/http://wow.allakhazam.com:80/db/item.html?witem=32768 - 1.76%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 1 WHERE `item` = 32768 AND `entry` = 23035; -- 1

-- Fiery Warhorse's Reins
-- https://tbc.wowhead.com/item=30480/fiery-warhorses-reins#dropped-by - 1%
-- https://www.wowhead.com/item=30480/fiery-warhorses-reins#dropped-by - 1.1%
-- https://web.archive.org/web/20111002185027/http://www.wowhead.com/item=30480 - 0.9%
-- https://web.archive.org/web/20080703103511/http://wow.allakhazam.com/db/item.html?witem=30480 - (0.46% + 0.17%)
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 1 WHERE `item` = 30480 AND `entry` = 16152; -- 0.2

