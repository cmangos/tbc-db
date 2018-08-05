-- quest 10850 parent quest 10855
DELETE FROM `conditions`WHERE `condition_entry` = 10038;
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `comments`) VALUES
(10038, 9, 10855, 0, 'Quest ID 10855 Taken');

UPDATE `creature_loot_template` SET `condition_id` = 10038 WHERE `item` = 31653 AND `entry` = 16949;

