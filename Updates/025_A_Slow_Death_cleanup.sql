-- A slow death quest cleanup
UPDATE `quest_template` SET `ReqSourceId1`=32502, `ReqSourceCount1`=12 WHERE  `entry`=11020; -- make item drop during quest
UPDATE `creature_loot_template` SET `condition_id` = 0 WHERE `condition_id` = 234;
DELETE FROM `conditions` WHERE  `condition_entry`=234; -- remove redundant condition