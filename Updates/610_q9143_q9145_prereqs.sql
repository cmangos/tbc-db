DELETE FROM `conditions` WHERE `condition_entry`=10009;
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`) VALUES 
(10009, 22, 9143, 0);

UPDATE quest_template SET PrevQuestId=0 WHERE entry=9143; -- Dealing with Zeb'Sora has no prequest
UPDATE quest_template SET RequiredCondition=10009 WHERE entry=9145; -- Help Ranger Valanna! is just a lead-in quest. If Dealing with Zeb'Sora is taken or rewarded this quest becomes unavailable.
