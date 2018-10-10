-- Fix Drop Condition for Item 33009 needed for Quest 11129 - TBC-1326
DELETE FROM `conditions` WHERE `condition_entry` = 10089;
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `comments`) VALUES
(10089, 9, 11129, 0, 'Quest ID 11129 Taken');

UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 10, `condition_id` = 10089 WHERE `entry` IN (2957,2956,3068) AND `item` = 33009;

