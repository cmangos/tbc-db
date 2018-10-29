-- Add Condition for Quest Starting Item: Healthy Dragon Scale 13920 and Reduce Dropchance more match to classic-db, resolves TBC-2012
-- https://www.wowhead.com/quest=5582/healthy-dragon-scale#comments:id=6196 - 12 looted 22 spawns
DELETE FROM `conditions` WHERE `condition_entry` = 949; -- classic 325, wotlk nonexistant
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `comments`) VALUES
(949, 8, 5529, 0, 'Quest ID 5529 Rewarded');

UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 20, `condition_id` = 949 WHERE `item` = 13920; -- classic 6 chance

