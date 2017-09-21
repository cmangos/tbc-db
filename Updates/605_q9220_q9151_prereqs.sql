DELETE FROM `conditions` WHERE `condition_entry`=10004;
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`) VALUES 
(10004, 22, 9220, 0);

UPDATE quest_template SET PrevQuestId=0 WHERE entry=9220; -- War on Deatholme has no prequest
UPDATE quest_template SET RequiredCondition=10004 WHERE entry=9151; -- The Sanctum of the Sun is just a lead-in quest. If War on Deatholme is taken or rewarded this quest becomes unavailable.
