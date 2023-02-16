-- Add Quest 11531: Strange Engine Part
-- https://www.wowhead.com/wotlk/item=34469/strange-engine-part - https://www.wowhead.com/wotlk/item=34474/strange-engine-part
UPDATE `quest_template` SET `RequiredRaces` = 1101, `SpecialFlags` = 1 WHERE `entry` = 11531; -- seemingly repeatable
REPLACE INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(19605, 34469, 0.5, 1, 1, 1, 0, 'Strange Engine Part'); -- Steam Pump Flotsam 182952

