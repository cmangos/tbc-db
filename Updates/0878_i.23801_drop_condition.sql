-- Correct loot condition for i.23801 Bristlelimb Key
-- https://tbc.wowhead.com/quest=9544/the-prophecy-of-akida
DELETE FROM `conditions` WHERE `condition_entry` = 9013;
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`, `comments`) VALUES
(9013, 9, 9544, 1, 0, 0, 0, 'Quest ID 9544 Taken AND NOT Completed');

-- https://tbc.wowhead.com/item=23801/bristlelimb-key#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 60, `condition_id` = 9013 WHERE `item` = 23801 AND `entry` IN (
17183, -- Bristlelimb Furbolg (44.2839)
17184, -- Bristlelimb Windcaller (44.4561)
17185 -- Bristlelimb Ursa (45.107)
);


