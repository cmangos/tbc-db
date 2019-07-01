UPDATE `quest_template` SET `PrevQuestID`=0, `ExclusiveGroup`=0 WHERE `entry` IN (9927, 9928, 9931, 9932);
UPDATE `quest_template` SET `PrevQuestID`=0 WHERE `entry`=9934;
UPDATE `quest_template` SET `NextQuestID`=0 WHERE `entry` IN (10107, 10108);

DELETE FROM `conditions` WHERE `condition_entry` IN (1629,1630,1631,1632,1633,1634,1635,1636,1637);
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `comments`) VALUES
(1629, 8, 10108, 0, 'Quest ID 10108 Rewarded'),
(1630, 8, 10107, 0, 'Quest ID 10107 Rewarded'),
(1631, -2, 1630, 1629, '(Quest ID 10107 Rewarded OR Quest ID 10108 Rewarded)'),
(1632, 8, 9927, 0, 'Quest ID 9927 Rewarded'),
(1633, 8, 9928, 0, 'Quest ID 9928 Rewarded'),
(1634, -1, 1632, 1633, '(Quest ID 9927 Rewarded AND Quest ID 9928 Rewarded)'),
(1635, 8, 9931, 0, 'Quest ID 9931 Rewarded'),
(1636, 8, 9932, 0, 'Quest ID 9932 Rewarded'),
(1637, -1, 1635, 1636, '(Quest ID 9931 Rewarded AND Quest ID 9932 Rewarded)');

UPDATE `quest_template` SET `RequiredCondition`=1631 WHERE `entry` IN (9927,9928);
-- "Ruthless Cunning" 9927 and "Armaments for Deception" 9928 require either "Diplomatic Measures" (Horde) 10107 OR "Diplomatic Measures" (Alliance) 10108 rewarded

UPDATE `quest_template` SET `RequiredCondition`=1634 WHERE `entry` IN (9931,9932);
-- "Returning the Favor" 9931 and "Body of Evidence" 9932 require "Ruthless Cunning" 9927 AND "Armaments for Deception" 9928 rewarded

UPDATE `quest_template` SET `RequiredCondition`=1637 WHERE `entry` IN (9933,9934);
-- "Message to Telaar" 9933 and "Message to Garadar" 9934 require "Returning the Favor" 9931 AND "Body of Evidence" 9932 rewarded


