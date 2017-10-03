-- q.9152 Tomber's Supplies should only be available after the player has completed q.9329 or q.9327
-- http://www.wowhead.com/quest=9152/tombers-supplies

DELETE FROM `conditions` WHERE `condition_entry` BETWEEN 10000 AND 10002;
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`) VALUES 
(10000, 8, 9329, 0),
(10001, 8, 9327, 0),
(10002, -2, 10000, 10001); -- Quest 9329 OR Quest 9327 Rewarded

UPDATE quest_template SET RequiredCondition=10002 WHERE entry=9152;

